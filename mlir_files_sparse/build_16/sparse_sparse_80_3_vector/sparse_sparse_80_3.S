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
	.quad	0x412ee19afe4ead0c              # double 1011917.496694
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
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
	lui	a7, %hi(.L__constant_1999xindex_0)
	addi	a7, a7, %lo(.L__constant_1999xindex_0)
	lui	t0, %hi(.L__constant_1999xf64_0)
	addi	t0, t0, %lo(.L__constant_1999xf64_0)
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
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	94                              # 0x5e
	.quad	106                             # 0x6a
	.quad	109                             # 0x6d
	.quad	148                             # 0x94
	.quad	166                             # 0xa6
	.quad	176                             # 0xb0
	.quad	216                             # 0xd8
	.quad	223                             # 0xdf
	.quad	231                             # 0xe7
	.quad	269                             # 0x10d
	.quad	275                             # 0x113
	.quad	291                             # 0x123
	.quad	325                             # 0x145
	.quad	333                             # 0x14d
	.quad	341                             # 0x155
	.quad	379                             # 0x17b
	.quad	393                             # 0x189
	.quad	407                             # 0x197
	.quad	448                             # 0x1c0
	.quad	462                             # 0x1ce
	.quad	470                             # 0x1d6
	.quad	507                             # 0x1fb
	.quad	517                             # 0x205
	.quad	533                             # 0x215
	.quad	574                             # 0x23e
	.quad	586                             # 0x24a
	.quad	599                             # 0x257
	.quad	642                             # 0x282
	.quad	657                             # 0x291
	.quad	669                             # 0x29d
	.quad	712                             # 0x2c8
	.quad	722                             # 0x2d2
	.quad	734                             # 0x2de
	.quad	772                             # 0x304
	.quad	780                             # 0x30c
	.quad	794                             # 0x31a
	.quad	833                             # 0x341
	.quad	842                             # 0x34a
	.quad	850                             # 0x352
	.quad	888                             # 0x378
	.quad	898                             # 0x382
	.quad	904                             # 0x388
	.quad	943                             # 0x3af
	.quad	951                             # 0x3b7
	.quad	961                             # 0x3c1
	.quad	1001                            # 0x3e9
	.quad	1011                            # 0x3f3
	.quad	1026                            # 0x402
	.quad	1069                            # 0x42d
	.quad	1080                            # 0x438
	.quad	1089                            # 0x441
	.quad	1126                            # 0x466
	.quad	1133                            # 0x46d
	.quad	1146                            # 0x47a
	.quad	1189                            # 0x4a5
	.quad	1195                            # 0x4ab
	.quad	1211                            # 0x4bb
	.quad	1253                            # 0x4e5
	.quad	1257                            # 0x4e9
	.quad	1268                            # 0x4f4
	.quad	1304                            # 0x518
	.quad	1315                            # 0x523
	.quad	1323                            # 0x52b
	.quad	1360                            # 0x550
	.quad	1368                            # 0x558
	.quad	1377                            # 0x561
	.quad	1419                            # 0x58b
	.quad	1427                            # 0x593
	.quad	1445                            # 0x5a5
	.quad	1483                            # 0x5cb
	.quad	1489                            # 0x5d1
	.quad	1497                            # 0x5d9
	.quad	1536                            # 0x600
	.quad	1547                            # 0x60b
	.quad	1559                            # 0x617
	.quad	1596                            # 0x63c
	.quad	1608                            # 0x648
	.quad	1621                            # 0x655
	.quad	1663                            # 0x67f
	.quad	1675                            # 0x68b
	.quad	1681                            # 0x691
	.quad	1719                            # 0x6b7
	.quad	1726                            # 0x6be
	.quad	1736                            # 0x6c8
	.quad	1779                            # 0x6f3
	.quad	1788                            # 0x6fc
	.quad	1801                            # 0x709
	.quad	1841                            # 0x731
	.quad	1849                            # 0x739
	.quad	1855                            # 0x73f
	.quad	1894                            # 0x766
	.quad	1897                            # 0x769
	.quad	1902                            # 0x76e
	.quad	1944                            # 0x798
	.quad	1946                            # 0x79a
	.quad	1958                            # 0x7a6
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex_0,@object # @__constant_1999xindex_0
	.p2align	6, 0x0
.L__constant_1999xindex_0:
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
	.quad	27                              # 0x1b
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	35                              # 0x23
	.quad	57                              # 0x39
	.quad	75                              # 0x4b
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
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
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	39                              # 0x27
	.quad	62                              # 0x3e
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	99                              # 0x63
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
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	25                              # 0x19
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
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
	.quad	38                              # 0x26
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	52                              # 0x34
	.quad	87                              # 0x57
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	72                              # 0x48
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	97                              # 0x61
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
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
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	97                              # 0x61
	.quad	0                               # 0x0
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	2                               # 0x2
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	38                              # 0x26
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
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
	.quad	13                              # 0xd
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	72                              # 0x48
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	56                              # 0x38
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
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
	.quad	20                              # 0x14
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
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	84                              # 0x54
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	85                              # 0x55
	.quad	0                               # 0x0
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	52                              # 0x34
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	66                              # 0x42
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	99                              # 0x63
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	98                              # 0x62
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	67                              # 0x43
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
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
	.quad	63                              # 0x3f
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	37                              # 0x25
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	96                              # 0x60
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	34                              # 0x22
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	76                              # 0x4c
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
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
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
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
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
	.quad	32                              # 0x20
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
	.quad	69                              # 0x45
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	35                              # 0x23
	.quad	54                              # 0x36
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	64                              # 0x40
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	27                              # 0x1b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	32                              # 0x20
	.quad	71                              # 0x47
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	68                              # 0x44
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
	.quad	99                              # 0x63
	.quad	36                              # 0x24
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	26                              # 0x1a
	.quad	45                              # 0x2d
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	37                              # 0x25
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
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
	.quad	55                              # 0x37
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.size	.L__constant_1999xindex_0, 15992

	.type	.L__constant_1999xf64_0,@object # @__constant_1999xf64_0
	.p2align	6, 0x0
.L__constant_1999xf64_0:
	.quad	0x40236ad2999567dc              # double 9.7086380000000005
	.quad	0x3fada6e75ff609dd              # double 0.057914
	.quad	0x4023534395810625              # double 9.6626250000000002
	.quad	0x3ff0a38759253544              # double 1.0399240000000001
	.quad	0x400d2ecd07852f7f              # double 3.6478519999999999
	.quad	0x3fd050b524399b2c              # double 0.25492599999999999
	.quad	0x4017c6ab14ec204f              # double 5.9440119999999999
	.quad	0x401f02bae03b3e9a              # double 7.7526659999999996
	.quad	0x4004b53cddd6e04c              # double 2.588495
	.quad	0x40126183b60285ec              # double 4.5952289999999998
	.quad	0x40171dc054ef459e              # double 5.7790540000000004
	.quad	0x4003694680171194              # double 2.4264039999999998
	.quad	0x4010295e17e34b94              # double 4.0403979999999997
	.quad	0x3fa0b3d4ae429e0a              # double 0.032621999999999998
	.quad	0x4023ac2eba27ae9b              # double 9.8362940000000005
	.quad	0x401c2107b784662c              # double 7.0322560000000003
	.quad	0x40158cd24e160d88              # double 5.3875209999999996
	.quad	0x400b8215336deb96              # double 3.438517
	.quad	0x4002636fc158fb44              # double 2.2985530000000001
	.quad	0x401ab5bf6a0dbad4              # double 6.6774880000000003
	.quad	0x3ff71e9c0229a5ec              # double 1.4449730000000001
	.quad	0x400b5b3aeee95747              # double 3.419546
	.quad	0x4001b43f1c75818c              # double 2.2130109999999998
	.quad	0x3fcac0724b76f6d7              # double 0.20899799999999999
	.quad	0x4012eaf6c69b5a64              # double 4.729457
	.quad	0x40221406c00da1a9              # double 9.0391139999999996
	.quad	0x40099d7342edbb5a              # double 3.2018800000000001
	.quad	0x3fe38ee6b8305d96              # double 0.61119400000000002
	.quad	0x4012423897204296              # double 4.5646690000000003
	.quad	0x4022119e0e73604a              # double 9.0344090000000001
	.quad	0x3ff2c867ad8e4324              # double 1.1739269999999999
	.quad	0x3fba02107b784663              # double 0.101594
	.quad	0x4007ace5f7403dde              # double 2.9594230000000001
	.quad	0x4017f25b317efe0d              # double 5.9866760000000001
	.quad	0x402039aa821f2991              # double 8.1126290000000001
	.quad	0x4023aa12d77318fc              # double 9.8321749999999994
	.quad	0x4022d85ad538ac19              # double 9.422568
	.quad	0x40207f09741d084f              # double 8.2481190000000009
	.quad	0x3fa557bc7f77af64              # double 0.041685
	.quad	0x401e6653868fd19a              # double 7.5999280000000002
	.quad	0x4020a7c9de050375              # double 8.327712
	.quad	0x401dd54da4ce8102              # double 7.458304
	.quad	0x401f16defc7a3982              # double 7.772335
	.quad	0x401b58433d6c7219              # double 6.8361939999999999
	.quad	0x3ff01fefbf401c50              # double 1.0077970000000001
	.quad	0x3ffa8c804102ff8f              # double 1.6593020000000001
	.quad	0x4021984e618ce2d2              # double 8.7974730000000001
	.quad	0x401f398e53eb399f              # double 7.8062069999999996
	.quad	0x4000792ea52ef912              # double 2.0591710000000001
	.quad	0x4021a896dd26b724              # double 8.8292760000000001
	.quad	0x4007ef81626b2f23              # double 2.991946
	.quad	0x401a51ab0856e697              # double 6.5797540000000003
	.quad	0x3fcb02ff8ec0f883              # double 0.21102899999999999
	.quad	0x40212cf227d028a2              # double 8.5877850000000002
	.quad	0x401aae8101f31f47              # double 6.6704140000000001
	.quad	0x40226af6a50d6b23              # double 9.2089130000000008
	.quad	0x401b9a6ca03c4b0a              # double 6.9008050000000001
	.quad	0x401f120535c9e668              # double 7.7675979999999995
	.quad	0x3fdb074213a0c6b5              # double 0.42231800000000003
	.quad	0x400528c26138fffc              # double 2.6449020000000001
	.quad	0x401e8ea7ce0fc2ec              # double 7.6393120000000003
	.quad	0x3fe7278d0cc35ce2              # double 0.72357800000000005
	.quad	0x401ab0a4a05dd8f9              # double 6.6725029999999999
	.quad	0x401581fcd24e160e              # double 5.3769410000000004
	.quad	0x402079567dbb16c2              # double 8.2369880000000002
	.quad	0x40213524bfd2e947              # double 8.6037960000000009
	.quad	0x4008d1c193b3a68b              # double 3.10242
	.quad	0x401b0b93037d6302              # double 6.7613029999999998
	.quad	0x4012d1fd9ba1b196              # double 4.7050689999999999
	.quad	0x4016a205bc01a36e              # double 5.6582249999999998
	.quad	0x3fe60b2c83ec892b              # double 0.68886400000000003
	.quad	0x3fec0787485e3da3              # double 0.875919
	.quad	0x3fc680303c07ee0b              # double 0.175787
	.quad	0x400668bb906466b2              # double 2.801139
	.quad	0x402061691a75cd0c              # double 8.1902550000000005
	.quad	0x4012a1da7b0b3919              # double 4.6580599999999999
	.quad	0x4020996feb4a6656              # double 8.2996820000000007
	.quad	0x400b4708ede54b49              # double 3.4096850000000001
	.quad	0x3fd1bea91d9b1b7a              # double 0.27726200000000001
	.quad	0x4004c40746455eaf              # double 2.5957170000000001
	.quad	0x4022dacf0f9d2bf5              # double 9.4273609999999994
	.quad	0x4008849235f80991              # double 3.0647319999999998
	.quad	0x401b68f25a250f84              # double 6.852487
	.quad	0x4023018eb8950764              # double 9.5030420000000006
	.quad	0x3fe035371971c10d              # double 0.50649599999999995
	.quad	0x3ff0bcc9ea9a3d2e              # double 1.0460910000000001
	.quad	0x3ff262ab25b317f0              # double 1.149089
	.quad	0x4009f81f969e3c97              # double 3.2461540000000002
	.quad	0x40207f292c493426              # double 8.2483609999999992
	.quad	0x40201ab302f72b45              # double 8.0521469999999997
	.quad	0x402244254a3c6434              # double 9.1330969999999993
	.quad	0x4019d9752977c88e              # double 6.4623609999999996
	.quad	0x40095dcbddb9841b              # double 3.1707990000000001
	.quad	0x3fe7ad9ad85dfa87              # double 0.73994199999999999
	.quad	0x4014ecb9ecf63800              # double 5.2311779999999999
	.quad	0x3fe6bb4916ca46e1              # double 0.71036200000000005
	.quad	0x4018778d4fdf3b64              # double 6.1167499999999997
	.quad	0x40048d3b6cbd987c              # double 2.5689609999999998
	.quad	0x4005b80e496ededb              # double 2.714871
	.quad	0x4006f93037d63023              # double 2.8716740000000001
	.quad	0x401d6cffa7eb6bf4              # double 7.3564439999999998
	.quad	0x40224f9e7b80a9df              # double 9.1555060000000008
	.quad	0x3ff90728e92d55a4              # double 1.5642480000000001
	.quad	0x401f7165d3996fa8              # double 7.8607399999999998
	.quad	0x400b32e1693c03bc              # double 3.3998439999999999
	.quad	0x40181758e219652c              # double 6.0228000000000002
	.quad	0x400b719a415f45e1              # double 3.4304700000000001
	.quad	0x401f4bddfc9ff92f              # double 7.8240889999999998
	.quad	0x400e20ffda4052d6              # double 3.7661129999999998
	.quad	0x402316b5b2d4d402              # double 9.5443549999999995
	.quad	0x4018ad9ec7000432              # double 6.1695510000000002
	.quad	0x400199a2834d26fa              # double 2.2000169999999999
	.quad	0x3fdf98d8a979e16d              # double 0.49370399999999998
	.quad	0x4018101b866e43aa              # double 6.0157299999999996
	.quad	0x4023d0563ed0f627              # double 9.9069079999999996
	.quad	0x401e4bc126a65cf6              # double 7.5739789999999996
	.quad	0x400d32428d434a02              # double 3.6495410000000001
	.quad	0x401e0931ca7d6734              # double 7.5089790000000001
	.quad	0x4021d8cfe154434e              # double 8.9234609999999996
	.quad	0x4015407bbb62413e              # double 5.3129720000000002
	.quad	0x401ea8eef1bac2df              # double 7.6649739999999999
	.quad	0x4008ef166e008e9b              # double 3.1167419999999999
	.quad	0x4011a60d0247021d              # double 4.4121589999999999
	.quad	0x401e443aeab7995f              # double 7.5666310000000001
	.quad	0x4023c65cd4ed2cbf              # double 9.8874270000000006
	.quad	0x3fa6a033e78e1933              # double 0.044191000000000001
	.quad	0x4013f6277c45cbbc              # double 4.9903849999999998
	.quad	0x4014dfff36ac6477              # double 5.2187469999999996
	.quad	0x400efbd1676640a7              # double 3.8729580000000001
	.quad	0x400ff2d2bb23571d              # double 3.9935659999999999
	.quad	0x4021dc7bedb72820              # double 8.9306330000000003
	.quad	0x40118d4bf0995aaf              # double 4.3879849999999996
	.quad	0x40190aeb80ecfa6a              # double 6.2606640000000002
	.quad	0x40228d0635a426bb              # double 9.2754379999999994
	.quad	0x4021fe60c38f3669              # double 8.9968319999999995
	.quad	0x40055ce075f6fd22              # double 2.67035
	.quad	0x4020aa7a63736cdf              # double 8.3329649999999997
	.quad	0x4000b10667f90d9d              # double 2.0864379999999998
	.quad	0x40125b84db9c7369              # double 4.5893740000000003
	.quad	0x401e327c7c5260f6              # double 7.5493030000000001
	.quad	0x3ff4d65a14488c61              # double 1.302332
	.quad	0x40156b4a2339c0ec              # double 5.3547750000000001
	.quad	0x4020115054ac29bf              # double 8.0338159999999998
	.quad	0x40206dfb2edfe75c              # double 8.2148070000000004
	.quad	0x3fe0ce5710880d80              # double 0.52518799999999999
	.quad	0x400a62fc69728a61              # double 3.298333
	.quad	0x400cf84ba0e84274              # double 3.621238
	.quad	0x3fdace5f7403dddb              # double 0.418846
	.quad	0x40188881a1554fbe              # double 6.1333070000000003
	.quad	0x3ff768e1d6494d51              # double 1.463106
	.quad	0x40133adf71eafee7              # double 4.807493
	.quad	0x3feab8433d6c7219              # double 0.83499299999999999
	.quad	0x40177c6822ff0889              # double 5.8714909999999998
	.quad	0x4008a6e5cd4ed2cc              # double 3.081493
	.quad	0x400a90fe8ab4fa48              # double 3.3207979999999999
	.quad	0x401d311a543f1c76              # double 7.2979520000000004
	.quad	0x4000d3b5bf6a0dbb              # double 2.1033740000000001
	.quad	0x4019d719b4dcebff              # double 6.4600590000000002
	.quad	0x40185cff64cf8d71              # double 6.0908179999999996
	.quad	0x3fe2f4eebf65dbfd              # double 0.59239900000000001
	.quad	0x40150272c94b380d              # double 5.2523910000000003
	.quad	0x4009e72f33ca31e8              # double 3.2378830000000001
	.quad	0x401db0578e5c4eb5              # double 7.4222089999999996
	.quad	0x3ffe6174c4cdfaca              # double 1.898793
	.quad	0x401b5ea4a8c154ca              # double 6.8424250000000004
	.quad	0x401a07bb73083559              # double 6.5075510000000003
	.quad	0x401da14df8b15726              # double 7.4075240000000004
	.quad	0x4015256e696a26e5              # double 5.2865539999999998
	.quad	0x3fd6ae7924af0bf2              # double 0.35439900000000002
	.quad	0x401b8044f1a1986c              # double 6.8752630000000003
	.quad	0x401a8950763a1901              # double 6.6340960000000004
	.quad	0x4017412f4cf4a559              # double 5.8136570000000001
	.quad	0x4004c11a11233df3              # double 2.5942880000000001
	.quad	0x401a5de0d66f0cfe              # double 6.5916779999999999
	.quad	0x3fc3a71151611ba4              # double 0.15353600000000001
	.quad	0x3ffc7ccd0fe8ab50              # double 1.7804690000000001
	.quad	0x3f9c4eb56fb8f57f              # double 0.027643999999999998
	.quad	0x4016d32617c1bda5              # double 5.7061999999999999
	.quad	0x401738244e93e1ca              # double 5.8048260000000003
	.quad	0x401c7c2d2780778a              # double 7.1212660000000003
	.quad	0x402274b6e935b91f              # double 9.2279579999999992
	.quad	0x40113754b05b7cfe              # double 4.3040339999999997
	.quad	0x401398198f1d3ed5              # double 4.8985349999999999
	.quad	0x401ea3c3e74afd54              # double 7.6599269999999997
	.quad	0x3ffc492ab68cef67              # double 1.767863
	.quad	0x400c7fd5885d3133              # double 3.5624189999999998
	.quad	0x4012d779e9d0e992              # double 4.710426
	.quad	0x401265f7403dddb1              # double 4.5995759999999999
	.quad	0x4021e5510d38cda7              # double 8.9478840000000002
	.quad	0x4009930f062d40ab              # double 3.196806
	.quad	0x402053e8576cce5f              # double 8.1638819999999992
	.quad	0x4022330e5e679464              # double 9.0997190000000003
	.quad	0x4019713ad5bee3d6              # double 6.360576
	.quad	0x40188e215336deb9              # double 6.1387989999999997
	.quad	0x3fe6ef5a964e8b7e              # double 0.71671799999999997
	.quad	0x4020f986338b47c7              # double 8.4873519999999996
	.quad	0x3ffde0d23d4f15e8              # double 1.867388
	.quad	0x3ff064638c975297              # double 1.0245089999999999
	.quad	0x4003386a098915be              # double 2.4025460000000001
	.quad	0x400e649a133c1ce7              # double 3.7991220000000001
	.quad	0x401dd33a8a3f8983              # double 7.4562780000000002
	.quad	0x3ff3f40d4dc65c70              # double 1.2470829999999999
	.quad	0x4021a3ca1059ea57              # double 8.8199009999999998
	.quad	0x3fe15eaab042528b              # double 0.54280600000000001
	.quad	0x4019479fec99f1ae              # double 6.3199459999999998
	.quad	0x4023117507e9d94d              # double 9.5340959999999999
	.quad	0x400f85ecc3e3193f              # double 3.9403929999999998
	.quad	0x3fc31e53a81dc0db              # double 0.149363
	.quad	0x3ff9dca29845dc83              # double 1.616366
	.quad	0x401cda91d9b1b79e              # double 7.2134470000000004
	.quad	0x4004f1db445ed4a2              # double 2.6180940000000001
	.quad	0x3ffca17c1bda511a              # double 1.789425
	.quad	0x4007a11cb039ef0f              # double 2.953668
	.quad	0x40080bfa0945f9df              # double 3.0058479999999999
	.quad	0x400aeded288ce704              # double 3.3661750000000001
	.quad	0x3ff5df138bcdfefc              # double 1.366962
	.quad	0x400971e0828c36db              # double 3.1806040000000002
	.quad	0x400fa56de33269e0              # double 3.9557760000000002
	.quad	0x40117c1ce6c093d9              # double 4.3712039999999996
	.quad	0x4002961cbccf28c8              # double 2.3232970000000002
	.quad	0x401ee5a57646ae3a              # double 7.7242639999999998
	.quad	0x402134e032db1e9f              # double 8.6032729999999997
	.quad	0x4020c7e49b1fab97              # double 8.3904160000000001
	.quad	0x40149290eed02cd4              # double 5.1431310000000003
	.quad	0x4023461f18c9fb61              # double 9.6369559999999996
	.quad	0x4000500abf76a2f5              # double 2.0390830000000002
	.quad	0x4010e5989df1172f              # double 4.2242150000000001
	.quad	0x3feecc70867ad8e4              # double 0.96245599999999997
	.quad	0x4014946801711948              # double 5.1449280000000002
	.quad	0x400270470a808c82              # double 2.3048229999999998
	.quad	0x4017721d96e9bbf1              # double 5.8614410000000001
	.quad	0x4018bb8cfbfc6541              # double 6.1831550000000002
	.quad	0x40239ecc3e3193f7              # double 9.8101520000000004
	.quad	0x3fdb801b43526528              # double 0.42969400000000002
	.quad	0x4013f5b91f70de8f              # double 4.9899639999999996
	.quad	0x402358a915379fa9              # double 9.6731649999999991
	.quad	0x40124280ae104923              # double 4.5649439999999997
	.quad	0x4010fa58b3f63c32              # double 4.2444790000000001
	.quad	0x3ffa2b7aa25d8d7a              # double 1.635615
	.quad	0x402174d26fa3fcca              # double 8.7281680000000001
	.quad	0x3fe7d5f138bcdff0              # double 0.74486600000000003
	.quad	0x4017815c209246bf              # double 5.876328
	.quad	0x400559e492bc2fc7              # double 2.6688930000000002
	.quad	0x400f3244a6223e18              # double 3.8995449999999998
	.quad	0x402290e3cd9a5226              # double 9.2829879999999996
	.quad	0x4003a78f25a250f8              # double 2.4568159999999999
	.quad	0x40201f3b85e80bed              # double 8.0610009999999992
	.quad	0x400bad3e0bd44999              # double 3.4595910000000001
	.quad	0x400862b628459967              # double 3.0481989999999999
	.quad	0x40120bf61aa3f035              # double 4.5116810000000003
	.quad	0x401dcdb6e503fb37              # double 7.4508929999999998
	.quad	0x4001ad938151a438              # double 2.2097540000000002
	.quad	0x3ff7994d0dcfcc5c              # double 1.4749270000000001
	.quad	0x3ff85ed5ae1cde5d              # double 1.523153
	.quad	0x40009f6a93f290ac              # double 2.0778400000000001
	.quad	0x400e5a7008a697af              # double 3.7941590000000001
	.quad	0x401e7d15f02c4d66              # double 7.6221540000000001
	.quad	0x4015a4af0bf1a5ca              # double 5.4108239999999999
	.quad	0x400389af5ba2be06              # double 2.4422290000000002
	.quad	0x401d13d20f2becee              # double 7.2693560000000002
	.quad	0x3ffade54b48d3ae7              # double 1.6792800000000001
	.quad	0x401ec483cafb3b75              # double 7.6919089999999998
	.quad	0x40170ac4b4d056c5              # double 5.760516
	.quad	0x3ff33036c9c0a8d2              # double 1.199271
	.quad	0x401ce2f9873ffac2              # double 7.2216550000000002
	.quad	0x402095566cf41f21              # double 8.2916749999999997
	.quad	0x3fe0d4a1ad6451b9              # double 0.52595599999999998
	.quad	0x3fccab7132724313              # double 0.22398199999999999
	.quad	0x3ffe990afe60c38f              # double 1.912364
	.quad	0x401fecc35ce18266              # double 7.9812139999999996
	.quad	0x4020800f98fa3769              # double 8.2501189999999998
	.quad	0x4022abb9ae0c1765              # double 9.3354009999999992
	.quad	0x4007e52f7f498c3b              # double 2.986907
	.quad	0x4002723cc8de2ac3              # double 2.3057799999999999
	.quad	0x4013327807789a46              # double 4.7992860000000004
	.quad	0x3fb06f1561911490              # double 0.064195000000000002
	.quad	0x4022a256de33269e              # double 9.317069
	.quad	0x401d98372e6a7696              # double 7.3986479999999997
	.quad	0x401b649f51697f20              # double 6.8482640000000004
	.quad	0x4003d38b47c73eee              # double 2.4782929999999999
	.quad	0x40150794a6eb91b4              # double 5.257403
	.quad	0x3fd4ea6c1a048e04              # double 0.32680799999999999
	.quad	0x4023e32ce89656ef              # double 9.943702
	.quad	0x4013d51ce28ed5f1              # double 4.9581179999999998
	.quad	0x402363588e368f08              # double 9.6940349999999995
	.quad	0x40216b76f6d76252              # double 8.709892
	.quad	0x401d73e20ccff21b              # double 7.3631669999999998
	.quad	0x3ffe572ffd1dcd70              # double 1.8962859999999999
	.quad	0x3febbadc0980b242              # double 0.86656
	.quad	0x40204ab7564302b4              # double 8.1459299999999998
	.quad	0x401aee9899bf5947              # double 6.7330040000000002
	.quad	0x40158d12cadddf44              # double 5.3877670000000002
	.quad	0x401561272c94b381              # double 5.3448760000000002
	.quad	0x401a662cfd8f0c78              # double 6.5997810000000001
	.quad	0x40040a8b8f14db59              # double 2.5051489999999998
	.quad	0x401a2a8fc0d2c387              # double 6.5415640000000002
	.quad	0x401585f138bcdff0              # double 5.3808030000000002
	.quad	0x4020260cbf2b239a              # double 8.0743159999999996
	.quad	0x402017ad2999567e              # double 8.0462430000000005
	.quad	0x400f6ed6777079e6              # double 3.9291200000000002
	.quad	0x400dc7a17f4128bf              # double 3.7224759999999999
	.quad	0x40118de97d06bbdc              # double 4.3885860000000001
	.quad	0x4017af837b4a233a              # double 5.9214000000000002
	.quad	0x40025f8ec0f88334              # double 2.296659
	.quad	0x40055cf1c3265ade              # double 2.6703830000000002
	.quad	0x402130a19c9d5a18              # double 8.5949829999999992
	.quad	0x4008c650e779207d              # double 3.0968339999999999
	.quad	0x4012ae86c6583e85              # double 4.6704359999999996
	.quad	0x40229d9e40c8472c              # double 9.3078479999999998
	.quad	0x4021556798958d9b              # double 8.6668059999999993
	.quad	0x4007d1183b60285f              # double 2.9770970000000001
	.quad	0x3ffac2f2f9873ffb              # double 1.6725950000000001
	.quad	0x400d16e935b91f71              # double 3.6361870000000001
	.quad	0x3ff1c45132f87ad1              # double 1.1104290000000001
	.quad	0x3febfe308787485e              # double 0.87477899999999997
	.quad	0x401ee04816f0068e              # double 7.7190250000000002
	.quad	0x4000e9a3d2d87f88              # double 2.1140819999999998
	.quad	0x40123dcf0307f23d              # double 4.5603600000000002
	.quad	0x4013ba9b06812381              # double 4.9322319999999999
	.quad	0x4013e9f5dfeb8d82              # double 4.9784769999999998
	.quad	0x4022aa8c79f66623              # double 9.3331029999999995
	.quad	0x4023d4c2b51bd61f              # double 9.9155479999999993
	.quad	0x40225e8f08461f9f              # double 9.184685
	.quad	0x3ffbf83be6601bca              # double 1.7481040000000001
	.quad	0x3feb2a7589efd86b              # double 0.84893300000000005
	.quad	0x401465eaee2003ac              # double 5.0995290000000004
	.quad	0x4010a2a0663c74fb              # double 4.1588149999999997
	.quad	0x400df038e29f9ce9              # double 3.7422960000000001
	.quad	0x401b6824d4cb9ecf              # double 6.8517029999999997
	.quad	0x3ff543dccea28fe2              # double 1.3290679999999999
	.quad	0x400e9f18c9fb6135              # double 3.8276840000000001
	.quad	0x4018134699418506              # double 6.0188240000000004
	.quad	0x402360e410b630a9              # double 9.6892399999999998
	.quad	0x3ff75a34ca0c282c              # double 1.4595229999999999
	.quad	0x401bd4573a797892              # double 6.9573640000000001
	.quad	0x401175629d8409e5              # double 4.3646339999999997
	.quad	0x400770257c914b16              # double 2.9297589999999998
	.quad	0x401a9c26138fffbd              # double 6.6524890000000001
	.quad	0x4022ac6950fc71d6              # double 9.336741
	.quad	0x4002417ca2120e1f              # double 2.2819759999999998
	.quad	0x402286fbd273d5bb              # double 9.2636400000000005
	.quad	0x401b451d68c692f7              # double 6.8174950000000001
	.quad	0x401498882f0e0a85              # double 5.1489570000000002
	.quad	0x401abd413122b7bb              # double 6.6848190000000001
	.quad	0x401e2ca6ca03c4b1              # double 7.5436050000000003
	.quad	0x401e5976bc1effa0              # double 7.5873670000000004
	.quad	0x40004d8127b2cc71              # double 2.0378440000000002
	.quad	0x4020b1bcdbbe0158              # double 8.3471440000000001
	.quad	0x40091987c6327ed8              # double 3.1374659999999999
	.quad	0x3ff36ed99cbee808              # double 1.2145630000000001
	.quad	0x40207056e696a26e              # double 8.2194129999999994
	.quad	0x4019cb7281fd9ba2              # double 6.4486790000000003
	.quad	0x402091e364bec67a              # double 8.2849380000000004
	.quad	0x400ed1fab96f21f7              # double 3.8525290000000001
	.quad	0x3ffee5cc426351df              # double 1.931103
	.quad	0x3fe4d4e09784ec63              # double 0.65098599999999995
	.quad	0x4012761ed5ae1cde              # double 4.6153519999999997
	.quad	0x4023662f7b17ce53              # double 9.6995810000000002
	.quad	0x400ede61cffeb075              # double 3.8585850000000002
	.quad	0x401a924fa8b4bf90              # double 6.6428820000000002
	.quad	0x401462de43ed959a              # double 5.0965509999999998
	.quad	0x40047c243dccea29              # double 2.560616
	.quad	0x3fd39e6eeb702603              # double 0.30654500000000001
	.quad	0x401d8fa43fe5c91d              # double 7.3902749999999999
	.quad	0x401b7461309c7ffe              # double 6.8636520000000001
	.quad	0x401986f3f52fc265              # double 6.3817899999999996
	.quad	0x3fe014d940789614              # double 0.50254500000000002
	.quad	0x4020ee9ee45c358b              # double 8.466056
	.quad	0x4004a52157689ca2              # double 2.5806300000000002
	.quad	0x40227d6798958d9b              # double 9.2449309999999993
	.quad	0x4023beb09635610b              # double 9.8724410000000002
	.quad	0x4013cca07f66e86c              # double 4.9498309999999996
	.quad	0x4022ef405f6ba062              # double 9.4672879999999999
	.quad	0x401617036c9c0a8d              # double 5.5224739999999999
	.quad	0x4012a62d40aaeafb              # double 4.6622820000000003
	.quad	0x401e3e736049ecb3              # double 7.5609869999999999
	.quad	0x40098ae642bf9831              # double 3.192822
	.quad	0x401f5151a437824d              # double 7.8294129999999997
	.quad	0x3fb84fd2a62aa194              # double 0.094967999999999997
	.quad	0x401c31600f34506a              # double 7.0482180000000003
	.quad	0x4011f3f24d8fd5cb              # double 4.4882289999999996
	.quad	0x4023fa9e0a41a262              # double 9.9894870000000004
	.quad	0x400992b3cc4ac6ce              # double 3.1966320000000001
	.quad	0x4021618f605ab3ab              # double 8.6905470000000005
	.quad	0x401a5cd24e160d88              # double 6.5906459999999996
	.quad	0x4020149eecbfb15b              # double 8.0402749999999994
	.quad	0x401a18ce703afb7f              # double 6.5242250000000004
	.quad	0x4022880b242070b9              # double 9.2657100000000003
	.quad	0x4012dc504816f007              # double 4.7151500000000004
	.quad	0x40018aed1394317b              # double 2.1928350000000001
	.quad	0x401c38fb43d89ce5              # double 7.0556460000000003
	.quad	0x402362df9378ee28              # double 9.6931119999999992
	.quad	0x4023379591cd1c7e              # double 9.6085630000000002
	.quad	0x401d2c0df58c08b7              # double 7.2930219999999997
	.quad	0x4022cf76c4827b70              # double 9.4052030000000002
	.quad	0x4018d721d53cddd7              # double 6.2100900000000001
	.quad	0x3ff5eac8605681ed              # double 1.36982
	.quad	0x401ce2602c9081c3              # double 7.2210700000000001
	.quad	0x40224c4bd33d2956              # double 9.1490159999999996
	.quad	0x3fe596aceaaf35e3              # double 0.67464299999999999
	.quad	0x3fe5739f340d4dc6              # double 0.67036399999999996
	.quad	0x401d77325918a00a              # double 7.366403
	.quad	0x4022412b7fe08af0              # double 9.1272850000000005
	.quad	0x4021680841ede11a              # double 8.7031880000000008
	.quad	0x4006a968943e1006              # double 2.832719
	.quad	0x4010d851654d61b3              # double 4.2112480000000003
	.quad	0x401460e0eb67c287              # double 5.094608
	.quad	0x40017226c3b927d4              # double 2.1807379999999998
	.quad	0x3fe60995aaf78fef              # double 0.68867
	.quad	0x3fd3242d05f28848              # double 0.29908299999999999
	.quad	0x400a4995aaf78fef              # double 3.28593
	.quad	0x4012ec45cbbc2b95              # double 4.7307350000000001
	.quad	0x4004218ce2d1f1d0              # double 2.5163820000000001
	.quad	0x40203e94467381d8              # double 8.1222250000000003
	.quad	0x402212708ede54b5              # double 9.0360150000000008
	.quad	0x3ffe9dabe27179c0              # double 1.913494
	.quad	0x3fee9f40a2877ee5              # double 0.95694000000000001
	.quad	0x401c84e7ab756430              # double 7.1297899999999998
	.quad	0x400a15e17e34b945              # double 3.2606839999999999
	.quad	0x4007c67f0aa21a72              # double 2.9719220000000002
	.quad	0x3ffd21a1db877ab3              # double 1.820711
	.quad	0x401ed6de33269df9              # double 7.7098319999999995
	.quad	0x4014c6bfca85cab0              # double 5.1940910000000002
	.quad	0x4022ee43675ddd2b              # double 9.4653580000000001
	.quad	0x40220b6805a2d730              # double 9.022278
	.quad	0x4009e57c0b135979              # double 3.237053
	.quad	0x40017c0e38a7e73a              # double 2.1855739999999999
	.quad	0x4022fc73cd573648              # double 9.4930710000000004
	.quad	0x40229833c60029f1              # double 9.2972699999999993
	.quad	0x4023af20a73f748a              # double 9.8420459999999999
	.quad	0x40138a9b8cb8e087              # double 4.8853590000000002
	.quad	0x401889cf56eac860              # double 6.1345799999999997
	.quad	0x40235ab92c061848              # double 9.677194
	.quad	0x401e54845132f87b              # double 7.5825360000000001
	.quad	0x3fd00029f16b11c7              # double 0.25001000000000001
	.quad	0x402001fc4c165908              # double 8.0038780000000003
	.quad	0x3fe16d740c4156e2              # double 0.54461099999999996
	.quad	0x4000d6dc1a47a9e3              # double 2.1049120000000001
	.quad	0x40006ea39c51dabe              # double 2.0540229999999999
	.quad	0x4005c5f17bd8be73              # double 2.7216520000000002
	.quad	0x401841a4bdba0a52              # double 6.0641049999999996
	.quad	0x4022f164840e171a              # double 9.4714700000000001
	.quad	0x4004e5a038194c01              # double 2.6121219999999998
	.quad	0x4012e2146a1a500d              # double 4.7207809999999997
	.quad	0x3fed3ed959a30985              # double 0.91392200000000001
	.quad	0x4001f5d5f56a7ac8              # double 2.2450369999999999
	.quad	0x401b2647778dd617              # double 6.787382
	.quad	0x4001f2d4d4024b34              # double 2.2435700000000001
	.quad	0x401a068be2f7b17d              # double 6.5063930000000001
	.quad	0x3ff58a372606fac6              # double 1.346244
	.quad	0x40155248d7e02646              # double 5.3303560000000001
	.quad	0x402281873ffac1d3              # double 9.2529850000000007
	.quad	0x401b0f78359bc340              # double 6.7651070000000004
	.quad	0x400d5984a0e410b6              # double 3.6687099999999999
	.quad	0x401173f6c2699c7c              # double 4.3632460000000002
	.quad	0x4023bb2074ea8da8              # double 9.865482
	.quad	0x4023f2b3cc4ac6ce              # double 9.9740280000000006
	.quad	0x401b6a797891e215              # double 6.8539789999999998
	.quad	0x4016b5892684cf07              # double 5.6772809999999998
	.quad	0x401cf640e9d51b50              # double 7.2404820000000001
	.quad	0x40231f5e6362a5e8              # double 9.5612670000000008
	.quad	0x3fe10cac4b4d056c              # double 0.53279699999999997
	.quad	0x4020ac60cbf2b23a              # double 8.3366760000000006
	.quad	0x3fd5bf0563ed0f62              # double 0.33978399999999997
	.quad	0x401d56965f5275ef              # double 7.3345580000000004
	.quad	0x401d296d0917d6b6              # double 7.2904549999999997
	.quad	0x4021286a4ca4f441              # double 8.5789360000000006
	.quad	0x401145c4eb56fb8f              # double 4.3181339999999997
	.quad	0x4015c3e8576cce5f              # double 5.4413159999999996
	.quad	0x401b02602c9081c3              # double 6.7523200000000001
	.quad	0x3fe03a109d0635a4              # double 0.50708799999999998
	.quad	0x4022dd57ff9b5632              # double 9.4323119999999996
	.quad	0x4020bad18d25edd0              # double 8.3648799999999994
	.quad	0x3fe07c1376d54973              # double 0.51514599999999999
	.quad	0x402231bb05faebc4              # double 9.0971299999999999
	.quad	0x400e662aa19439de              # double 3.7998859999999999
	.quad	0x4019c420f6f08cc5              # double 6.4415319999999996
	.quad	0x40239b009b30728f              # double 9.8027390000000007
	.quad	0x40220fd1dcd7060c              # double 9.0308980000000005
	.quad	0x40181273929ed395              # double 6.0180189999999998
	.quad	0x401803e425aee632              # double 6.0038
	.quad	0x401242b239a38fbd              # double 4.5651330000000003
	.quad	0x4001f70d62bf11f9              # double 2.2456309999999999
	.quad	0x3ffa0068db8bac71              # double 1.6251
	.quad	0x400b366b6177ea1c              # double 3.4015719999999998
	.quad	0x401aab81f969e3c9              # double 6.6674879999999996
	.quad	0x4019463497b7414a              # double 6.3185599999999997
	.quad	0x3fe75b76b3bb83cf              # double 0.72991499999999998
	.quad	0x401bf6aca7935760              # double 6.9908929999999998
	.quad	0x401c3d1ed9dfdac7              # double 7.0596880000000004
	.quad	0x40164c78a6dacabc              # double 5.5746789999999997
	.quad	0x40230a81dc0db270              # double 9.5205219999999997
	.quad	0x4020d8984e3ffef4              # double 8.4230370000000007
	.quad	0x3fd094185058dde8              # double 0.25903900000000002
	.quad	0x4017e7807789a459              # double 5.9760759999999999
	.quad	0x40222f737da61e0c              # double 9.0926779999999993
	.quad	0x3ff0ffde7210be94              # double 1.062468
	.quad	0x40143f0f9d2bf551              # double 5.0615829999999997
	.quad	0x4020087a6bd6e8b0              # double 8.0165590000000009
	.quad	0x40066b72c5197a25              # double 2.8024650000000002
	.quad	0x4017b8ef77f27fe5              # double 5.9306010000000002
	.quad	0x400bdb7cfe586013              # double 3.4821719999999998
	.quad	0x40026cb966be7afa              # double 2.3030879999999998
	.quad	0x401157a8d64d7f0f              # double 4.3356050000000002
	.quad	0x4023d1d30270f388              # double 9.9098129999999997
	.quad	0x401dd8c4bd33d295              # double 7.4616879999999997
	.quad	0x3fb01de26916440f              # double 0.062955999999999998
	.quad	0x4022b1b0ab2e1694              # double 9.3470510000000004
	.quad	0x401d07a0b5ed8d37              # double 7.2574490000000003
	.quad	0x401089c27e953155              # double 4.134531
	.quad	0x401270de093532e8              # double 4.6102220000000003
	.quad	0x400bb8b26394face              # double 3.4651839999999998
	.quad	0x4019d1422ccb3a26              # double 6.4543540000000004
	.quad	0x401c4292817763e5              # double 7.0650120000000003
	.quad	0x401b8b10fd7e4580              # double 6.8858069999999998
	.quad	0x4010ee6d9be4cd75              # double 4.2328400000000004
	.quad	0x3ff5bf52fc2656ac              # double 1.35921
	.quad	0x3fce5e892253111f              # double 0.23726
	.quad	0x40224abf5515054b              # double 9.1459910000000004
	.quad	0x40224784230fcf81              # double 9.1396800000000002
	.quad	0x3f64c016052502ef              # double 0.0025330000000000001
	.quad	0x40237fc71d606317              # double 9.7495659999999997
	.quad	0x40204d1b4fe79ee0              # double 8.1505989999999997
	.quad	0x401cfd5a9eb2074f              # double 7.2474160000000003
	.quad	0x4003ae45c358afc4              # double 2.4600939999999998
	.quad	0x4020cfb58d1526d9              # double 8.4056820000000005
	.quad	0x401e6e1da7b0b392              # double 7.6075350000000004
	.quad	0x4021c78f25a250f8              # double 8.8897639999999996
	.quad	0x40158040bfe3b03e              # double 5.3752469999999999
	.quad	0x40222958537e2c56              # double 9.0807520000000004
	.quad	0x3fc19042d8c2a455              # double 0.137215
	.quad	0x4014a7b4a2339c0f              # double 5.1637750000000002
	.quad	0x3fee43aa79bbadc1              # double 0.94576000000000005
	.quad	0x40093614df8b1572              # double 3.1514069999999998
	.quad	0x4014a08398a65493              # double 5.156752
	.quad	0x4005653198288052              # double 2.6744110000000001
	.quad	0x401fb8bb0a2ca9ac              # double 7.9304009999999998
	.quad	0x40086a76965f5276              # double 3.051984
	.quad	0x4021bebedfa43fe6              # double 8.8725500000000004
	.quad	0x401874d6a161e4f7              # double 6.1140999999999996
	.quad	0x4003ef99806f2629              # double 2.4919920000000002
	.quad	0x40170281ba7fc32f              # double 5.7524480000000002
	.quad	0x4019bdfb506dd69d              # double 6.4355289999999998
	.quad	0x401695c03361565c              # double 5.6462409999999998
	.quad	0x4005f269df97aaac              # double 2.743366
	.quad	0x4022c68d759ee88e              # double 9.3877980000000001
	.quad	0x40172b96af038e2a              # double 5.792567
	.quad	0x401b5f5019f3c70d              # double 6.8430790000000004
	.quad	0x40120759253543af              # double 4.5071760000000003
	.quad	0x401e32378ab0c88a              # double 7.5490399999999998
	.quad	0x3fe272580c308feb              # double 0.57645800000000003
	.quad	0x4011c203e63e8dda              # double 4.4394679999999997
	.quad	0x400e691fb3fa6df0              # double 3.8013300000000001
	.quad	0x401da9f4d37c1377              # double 7.4159730000000001
	.quad	0x40201ebdf4c2b51c              # double 8.0600430000000002
	.quad	0x3ff995a187a4a490              # double 1.5990310000000001
	.quad	0x4022abf37b8d3f18              # double 9.3358419999999995
	.quad	0x400487a072d1aeb4              # double 2.5662240000000001
	.quad	0x401cbaa5c5f7c676              # double 7.1822730000000004
	.quad	0x401c0c7fbacb4289              # double 7.0122059999999999
	.quad	0x3fe85b163baba7b9              # double 0.76111899999999999
	.quad	0x4013179a6b50b0f2              # double 4.7730499999999996
	.quad	0x401a8bb05faebc41              # double 6.6364150000000004
	.quad	0x400df49e01de2691              # double 3.7444419999999998
	.quad	0x4021a7963992c8c5              # double 8.827318
	.quad	0x401d43dfb0d51f82              # double 7.3162830000000003
	.quad	0x402137e86833c600              # double 8.6091949999999997
	.quad	0x3fdfbf26f1dc50ce              # double 0.49604199999999998
	.quad	0x400be5a0be510907              # double 3.487123
	.quad	0x3ff7683b1d0c8041              # double 1.462947
	.quad	0x3fe9d7f0ed3d859d              # double 0.80761000000000005
	.quad	0x3ff0b41bfbdf090f              # double 1.0439719999999999
	.quad	0x3ffe3ccc03793144              # double 1.8898429999999999
	.quad	0x4006476ea4228998              # double 2.7848790000000001
	.quad	0x40198944ed6fda83              # double 6.3840519999999996
	.quad	0x4023649a77e5eaab              # double 9.6964909999999999
	.quad	0x400bb7a7008a697b              # double 3.464674
	.quad	0x40190616f86a0989              # double 6.2559469999999999
	.quad	0x4019dc2acb85a4f0              # double 6.4650069999999999
	.quad	0x402116fd651b0ccc              # double 8.5449020000000004
	.quad	0x401e8ae18ac9f2fe              # double 7.6356260000000002
	.quad	0x40165305532617c2              # double 5.5810750000000002
	.quad	0x40022c7da1ec4e72              # double 2.2717239999999999
	.quad	0x4014923d0bfa0946              # double 5.142811
	.quad	0x3ff94f5c28f5c28f              # double 1.5818749999999999
	.quad	0x3ffa3eb8d8234224              # double 1.6403129999999999
	.quad	0x4021085985ad538b              # double 8.5163080000000004
	.quad	0x400376b228dc981c              # double 2.432957
	.quad	0x4014a5104d551d69              # double 5.1611950000000002
	.quad	0x4017d649906cca2e              # double 5.9592650000000003
	.quad	0x402053ebbfd71b04              # double 8.1639079999999992
	.quad	0x4019ae35c5b4aa97              # double 6.4201269999999999
	.quad	0x401dfab96f21f6cb              # double 7.4948480000000001
	.quad	0x400cfa2ad3e920c0              # double 3.6221519999999998
	.quad	0x40101502ababead5              # double 4.020518
	.quad	0x4003347a5b0ff10f              # double 2.4006240000000001
	.quad	0x400e1bf401c4fc1e              # double 3.763649
	.quad	0x3ff063a4b5568e82              # double 1.024327
	.quad	0x40171c31df761cbd              # double 5.7775340000000002
	.quad	0x3ffc29d627bf61aa              # double 1.7602139999999999
	.quad	0x3ffba8bb0a2ca9ac              # double 1.728694
	.quad	0x401a5c422036006d              # double 6.590096
	.quad	0x401fcc2a8869c66d              # double 7.9493809999999998
	.quad	0x401ccb8f14db5958              # double 7.1987880000000004
	.quad	0x400bd6e04c059210              # double 3.4799199999999999
	.quad	0x401a4b37c99ae925              # double 6.573455
	.quad	0x4021f225fa658c4c              # double 8.9729460000000003
	.quad	0x3ff556b873797460              # double 1.333672
	.quad	0x40219275cd0bb6ed              # double 8.7860549999999993
	.quad	0x4023dd1f81a5870e              # double 9.9318810000000006
	.quad	0x3fdd791819d2391d              # double 0.46051599999999998
	.quad	0x40157a13c254a3c6              # double 5.3692159999999998
	.quad	0x4017a22856605ee5              # double 5.9083569999999996
	.quad	0x401eb9389b52007e              # double 7.6808800000000002
	.quad	0x401a2ef7c243dccf              # double 6.5458670000000003
	.quad	0x3ffd2bf5515054ac              # double 1.823232
	.quad	0x40106ed45e9185cf              # double 4.1082320000000001
	.quad	0x40170a0b5ed8d36b              # double 5.7598089999999997
	.quad	0x3fef6d41b75a74c1              # double 0.98208700000000004
	.quad	0x4020da4c61d8622c              # double 8.4263639999999995
	.quad	0x3ff04319c5a3e39f              # double 1.0163819999999999
	.quad	0x4021c94d2f5dbb9d              # double 8.893167
	.quad	0x40192b341e14bdfd              # double 6.2921909999999999
	.quad	0x40131359ff4fd6d8              # double 4.7688980000000001
	.quad	0x401e0a5332acfb76              # double 7.5100829999999998
	.quad	0x3ffa9803cd141a69              # double 1.662113
	.quad	0x401bb45069a4df48              # double 6.926088
	.quad	0x401a06f3b213e3e3              # double 6.5067890000000004
	.quad	0x401278d5842b734b              # double 4.6180019999999997
	.quad	0x401ffb09a671ef31              # double 7.9951540000000003
	.quad	0x3fda7c80841ede12              # double 0.41384900000000002
	.quad	0x4019247b677f6b1a              # double 6.2856269999999999
	.quad	0x4021933a0407cc7d              # double 8.7875519999999998
	.quad	0x4012a9a1b9f98b72              # double 4.6656560000000002
	.quad	0x3fe1123a29c779a7              # double 0.53347500000000003
	.quad	0x40042c929aa1d756              # double 2.5217640000000001
	.quad	0x4021f76102795704              # double 8.983162
	.quad	0x3fac7b677f6b1a2a              # double 0.055628999999999998
	.quad	0x402128b08dd1e53b              # double 8.5794720000000009
	.quad	0x40109b9991361dc9              # double 4.1519529999999998
	.quad	0x3fd0a98eda22f6a5              # double 0.260349
	.quad	0x3fedaf9a8cdea034              # double 0.92768600000000001
	.quad	0x401d85093964a59c              # double 7.379918
	.quad	0x40069e8ab4fa4830              # double 2.827413
	.quad	0x400d1b5a63f9a49c              # double 3.6383559999999999
	.quad	0x3ffc8ff64cf8d717              # double 1.785147
	.quad	0x40218ee0b0af5fd4              # double 8.7790579999999991
	.quad	0x401d95653c9abb02              # double 7.3958940000000002
	.quad	0x4012b7296f6512a9              # double 4.6788689999999997
	.quad	0x401b020c069e7fb2              # double 6.7519989999999996
	.quad	0x4013613f4a98aa86              # double 4.8449679999999997
	.quad	0x3ff149efd86a8fc1              # double 1.080551
	.quad	0x3fe5947f13059642              # double 0.674377
	.quad	0x401e6366d7a56de3              # double 7.5970719999999998
	.quad	0x40041c886162f167              # double 2.5139320000000001
	.quad	0x40209dabc0e38a7e              # double 8.3079509999999992
	.quad	0x40125f123c42a66e              # double 4.5928430000000002
	.quad	0x40017e1650a45d42              # double 2.186566
	.quad	0x40175eaa2a0a9585              # double 5.8424459999999998
	.quad	0x4002fd4bf0995aaf              # double 2.3736799999999998
	.quad	0x40209b2d905c0336              # double 8.3030819999999999
	.quad	0x401cb2d905c03361              # double 7.1746559999999997
	.quad	0x3ffa18383ad9f0a2              # double 1.6309130000000001
	.quad	0x40155df00abf76a3              # double 5.341736
	.quad	0x401ea3929ed3953e              # double 7.6597390000000001
	.quad	0x401d47789a459104              # double 7.3197960000000002
	.quad	0x40097212513b5bf7              # double 3.1806990000000002
	.quad	0x40183087442c7fbb              # double 6.0473910000000002
	.quad	0x4013999cbee807bc              # double 4.9000120000000003
	.quad	0x401792b12d3415b1              # double 5.8932539999999998
	.quad	0x400d3ede97d06bbe              # double 3.6556980000000001
	.quad	0x4015afa05143bf72              # double 5.4215099999999996
	.quad	0x4023408d6d3b6cbe              # double 9.6260790000000007
	.quad	0x40214e35610adcd3              # double 8.6527510000000003
	.quad	0x3ff197a67a52ac75              # double 1.0995239999999999
	.quad	0x3fb434f3fd933e36              # double 0.078933000000000003
	.quad	0x40220d058dde7a74              # double 9.0254329999999995
	.quad	0x401fa10c6f7a0b5f              # double 7.9072740000000001
	.quad	0x400f20663c74fb55              # double 3.8908200000000002
	.quad	0x4018540e9d51b4fe              # double 6.0820869999999996
	.quad	0x4012c864883fd502              # double 4.6956959999999999
	.quad	0x401efb48d3ae685e              # double 7.7453950000000003
	.quad	0x3fdec408d8ec95c0              # double 0.480715
	.quad	0x3fc31cb89d6adf72              # double 0.149314
	.quad	0x4010c4fdf3b645a2              # double 4.1923750000000002
	.quad	0x4021c0ba1f4b1ee2              # double 8.8764199999999995
	.quad	0x40062dbd72bcb5fe              # double 2.7723339999999999
	.quad	0x40214ee43aa79bbb              # double 8.6540850000000002
	.quad	0x4009785729b280f1              # double 3.1837599999999999
	.quad	0x4021716ce789e775              # double 8.7215340000000001
	.quad	0x400c878c868b9fdc              # double 3.5661860000000001
	.quad	0x401b640fecdd0d8d              # double 6.8477170000000003
	.quad	0x4020b2e2fbe33acd              # double 8.3493879999999994
	.quad	0x401d2ce89656eefa              # double 7.2938559999999999
	.quad	0x40048cbd1244a622              # double 2.5687199999999999
	.quad	0x3ffc410624dd2f1b              # double 1.7658750000000001
	.quad	0x3fd02d0a24463066              # double 0.252749
	.quad	0x4015958d5842b735              # double 5.3960470000000003
	.quad	0x400ea2ec28b2a6b1              # double 3.8295520000000001
	.quad	0x3ff77ce8533b1077              # double 1.4679949999999999
	.quad	0x4022c2ababead4f6              # double 9.3802160000000008
	.quad	0x4016ce41919ac797              # double 5.701422
	.quad	0x401e4dfeb8d82342              # double 7.5761669999999999
	.quad	0x401b0a03c4b09e99              # double 6.7597800000000001
	.quad	0x3f886d2ed783dff4              # double 0.011927
	.quad	0x401f608bfc2224ee              # double 7.844284
	.quad	0x3fbe18372e6a7696              # double 0.11755699999999999
	.quad	0x401b64003254e6e2              # double 6.8476569999999999
	.quad	0x401e98522ea0fd3b              # double 7.6487509999999998
	.quad	0x401a331db445ed4a              # double 6.5499179999999999
	.quad	0x402123dc26dce39b              # double 8.5700389999999995
	.quad	0x402043a0c6b484d7              # double 8.1320859999999993
	.quad	0x400501c714fce747              # double 2.6258680000000001
	.quad	0x4020c4cc03793144              # double 8.3843689999999995
	.quad	0x4020ee136e71cda3              # double 8.4649920000000005
	.quad	0x3fe7c851a8694035              # double 0.74320299999999995
	.quad	0x402121a8262456f7              # double 8.5657359999999994
	.quad	0x3ff8a596c82e019b              # double 1.540427
	.quad	0x4020c785510d38ce              # double 8.3896890000000006
	.quad	0x3fea89fe86833c60              # double 0.82934499999999999
	.quad	0x401b114727dcbddc              # double 6.7668730000000004
	.quad	0x40043e06961c3697              # double 2.5302859999999998
	.quad	0x3fd29ab6d00b45ae              # double 0.29069299999999998
	.quad	0x402035ffa3b9ae0c              # double 8.1054659999999998
	.quad	0x401e10e30446b69e              # double 7.5164910000000003
	.quad	0x401e495b78cc9a78              # double 7.571638
	.quad	0x4020b17acc4ef88c              # double 8.3466400000000007
	.quad	0x4010eb8dc55000c9              # double 4.2300329999999997
	.quad	0x4020cd5c52e72da1              # double 8.4010949999999998
	.quad	0x401a37daa4fca42b              # double 6.5545450000000001
	.quad	0x40196069a4df47fa              # double 6.3441530000000004
	.quad	0x3fe8da2d72ffd1dd              # double 0.77663300000000002
	.quad	0x401bd50a45d41fa7              # double 6.9580469999999996
	.quad	0x4004acc2d6a9c561              # double 2.5843560000000001
	.quad	0x401add4067cf1c32              # double 6.7160659999999996
	.quad	0x3ff2bd3c36113405              # double 1.1712
	.quad	0x40152a936c58eeaf              # double 5.2915780000000003
	.quad	0x4003792ea52ef912              # double 2.4341710000000001
	.quad	0x40114d4f9c1f85d7              # double 4.3254989999999998
	.quad	0x400bf23897204296              # double 3.4932720000000002
	.quad	0x3ff7eafff36ac647              # double 1.4948729999999999
	.quad	0x3ff3414727dcbddc              # double 1.2034370000000001
	.quad	0x4012780a17b0f6ad              # double 4.6172259999999996
	.quad	0x3ff91a1554fbdad7              # double 1.5688679999999999
	.quad	0x402010014f8b588e              # double 8.0312599999999996
	.quad	0x4002949adc8fb86f              # double 2.3225609999999999
	.quad	0x401b8e40852b4d8c              # double 6.8889180000000003
	.quad	0x401ffacd9e83e426              # double 7.9949250000000003
	.quad	0x4010576a7264a16a              # double 4.0853669999999997
	.quad	0x401cb8301a79feca              # double 7.1798710000000003
	.quad	0x401d237e6f71a7e3              # double 7.284662
	.quad	0x40182fe586013661              # double 6.0467740000000001
	.quad	0x3fffab4b72c5197a              # double 1.97932
	.quad	0x40124f2dc2b0ea18              # double 4.5773229999999998
	.quad	0x40178704ff43419e              # double 5.8818549999999998
	.quad	0x4000563fdd65a145              # double 2.0421140000000002
	.quad	0x4010d4b407032980              # double 4.2077179999999998
	.quad	0x3ff03bcd35a85879              # double 1.0145999999999999
	.quad	0x401e9fc32ebe596d              # double 7.6560180000000004
	.quad	0x40115052934acaff              # double 4.3284399999999996
	.quad	0x401a040dd3fe1976              # double 6.503959
	.quad	0x4023be820e629952              # double 9.8720859999999995
	.quad	0x40207f0281ba7fc3              # double 8.2480659999999997
	.quad	0x401c333ca31e7d9a              # double 7.0500360000000004
	.quad	0x4022ee61f18c9fb6              # double 9.4655909999999999
	.quad	0x3ff215054ac29bf1              # double 1.1301319999999999
	.quad	0x4023a192c8c50050              # double 9.8155730000000005
	.quad	0x40203bc9cd3e0bd4              # double 8.1167739999999994
	.quad	0x40102ec5f394b7b3              # double 4.0456770000000004
	.quad	0x3ff23964a59c065b              # double 1.1390119999999999
	.quad	0x3fe4ab92c061847f              # double 0.64594399999999996
	.quad	0x40131eeed8904f6e              # double 4.780208
	.quad	0x401f03c31df761cc              # double 7.7536740000000002
	.quad	0x400575714b9cb685              # double 2.6823450000000002
	.quad	0x401e47036c9c0a8d              # double 7.5693489999999998
	.quad	0x3feb060bb2bba98f              # double 0.84448800000000002
	.quad	0x400800157eed45e9              # double 3.000041
	.quad	0x4011993c03bc4d23              # double 4.3996430000000002
	.quad	0x4023f4430b178b37              # double 9.9770739999999999
	.quad	0x40027d20f2becedd              # double 2.3110979999999999
	.quad	0x4006c6f5019f3c71              # double 2.8471470000000001
	.quad	0x3fff440f23897204              # double 1.954116
	.quad	0x3fe1da1ec4e7253e              # double 0.55787600000000004
	.quad	0x4022ba2ec28b2a6b              # double 9.3636379999999999
	.quad	0x4010ea843808850a              # double 4.2290200000000002
	.quad	0x400ac16aceaaf35e              # double 3.3444419999999999
	.quad	0x401aab0813cab820              # double 6.6670230000000004
	.quad	0x4019206d0d49949f              # double 6.2816660000000004
	.quad	0x400fefe260b2c83f              # double 3.9921310000000001
	.quad	0x3fd3703afb7e9100              # double 0.30372500000000002
	.quad	0x402153a2df9378ee              # double 8.6633519999999997
	.quad	0x401e7a95421c0443              # double 7.6197100000000004
	.quad	0x3ffaabf444e0daa1              # double 1.666981
	.quad	0x401613c254a3c643              # double 5.5192959999999998
	.quad	0x3fdb308bb906466b              # double 0.42483799999999999
	.quad	0x4021e7f6f4be835e              # double 8.9530560000000001
	.quad	0x3fe9e4fdb09a671f              # double 0.80920300000000001
	.quad	0x4023463d3e4ef028              # double 9.6371859999999998
	.quad	0x3feab3700474d9c7              # double 0.83440400000000003
	.quad	0x4021c9355475a31a              # double 8.8929849999999995
	.quad	0x4010657e23f24d90              # double 4.0991140000000001
	.quad	0x4020779e59f2ba9d              # double 8.2336299999999998
	.quad	0x400251bef49cf56f              # double 2.2899150000000001
	.quad	0x401a3aad601ffb48              # double 6.557302
	.quad	0x4023ec432ca57a78              # double 9.9614499999999992
	.quad	0x401ecae81882adc5              # double 7.6981510000000001
	.quad	0x4018e27631b584b2              # double 6.2211540000000003
	.quad	0x4021472b020c49ba              # double 8.6389999999999993
	.quad	0x4022031a08bfc222              # double 9.0060579999999995
	.quad	0x3ff25b573eab367a              # double 1.1473
	.quad	0x4022388bb906466b              # double 9.1104409999999998
	.quad	0x3fe73463497b7415              # double 0.72514500000000004
	.quad	0x400822478854cdb8              # double 3.0167380000000001
	.quad	0x401330eb24a6a876              # double 4.7977720000000001
	.quad	0x40140b1ee2435697              # double 5.0108600000000001
	.quad	0x4006fc504816f007              # double 2.8732000000000002
	.quad	0x4022dfac1d29dc72              # double 9.4368599999999994
	.quad	0x4019e8d5c74751ce              # double 6.4773779999999999
	.quad	0x400c7a322af57710              # double 3.559666
	.quad	0x3febe1e92923e5b8              # double 0.87132699999999996
	.quad	0x4013c1d92b7fe08b              # double 4.9393050000000001
	.quad	0x4019e2f661f18ca0              # double 6.4716430000000003
	.quad	0x4023d36b2af14552              # double 9.9129269999999998
	.quad	0x401dac7b890d5a5c              # double 7.4184400000000004
	.quad	0x4008b8ee28672757              # double 3.0902980000000002
	.quad	0x40068523704790b8              # double 2.8150089999999999
	.quad	0x401d1dfefbf401c5              # double 7.279293
	.quad	0x401967d6733ebbfd              # double 6.3514039999999996
	.quad	0x402074857f3061c8              # double 8.2275810000000007
	.quad	0x4013d6c54bcf0b6b              # double 4.9597369999999996
	.quad	0x4023662b8c75c4a8              # double 9.6995509999999995
	.quad	0x40119f0e90bc7b46              # double 4.4053290000000001
	.quad	0x401415aea3161a1e              # double 5.0211740000000002
	.quad	0x400b3b0b39192642              # double 3.4038300000000001
	.quad	0x401cd86a098915be              # double 7.2113420000000001
	.quad	0x40122ed17c5ef630              # double 4.5457210000000003
	.quad	0x4008e4873365881a              # double 3.111586
	.quad	0x401ac7a52ac753e7              # double 6.694966
	.quad	0x401a39d3cbc48f11              # double 6.5564720000000003
	.quad	0x402396f3d3a1d324              # double 9.794829
	.quad	0x40229d8127b2cc71              # double 9.3076260000000008
	.quad	0x400393aeee957471              # double 2.447111
	.quad	0x4003a1c714fce747              # double 2.4539930000000001
	.quad	0x40176f12c27a6373              # double 5.8584699999999996
	.quad	0x3ffb5771001d5c31              # double 1.7088479999999999
	.quad	0x401cf735c182ecaf              # double 7.2414160000000001
	.quad	0x400db675ddd2ae8e              # double 3.7140919999999999
	.quad	0x401b8ee84ad794a7              # double 6.8895580000000001
	.quad	0x4017c839042d8c2a              # double 5.9455299999999998
	.quad	0x401e8bb9cf9a06a7              # double 7.636451
	.quad	0x4017a23076c050be              # double 5.9083880000000004
	.quad	0x4023051372a38b8b              # double 9.5099140000000002
	.quad	0x4023d883558a7610              # double 9.9228769999999997
	.quad	0x3feaa73f748a1598              # double 0.83291599999999999
	.quad	0x40169605681ecd4b              # double 5.6465050000000003
	.quad	0x3feadcbbc2b94d94              # double 0.83944499999999999
	.quad	0x3fa94573a797891e              # double 0.049357999999999999
	.quad	0x401cbdc8323358f3              # double 7.1853340000000001
	.quad	0x3fe477e5eaab0425              # double 0.63963599999999998
	.quad	0x402172856605ee57              # double 8.7236740000000008
	.quad	0x400636c9c0a8d21c              # double 2.7767520000000001
	.quad	0x40221dd2d01c0ca6              # double 9.058249
	.quad	0x4020718244e93e1d              # double 8.2216970000000007
	.quad	0x4021bb9ecf638002              # double 8.8664459999999998
	.quad	0x401b74b1ab0856e7              # double 6.8639590000000004
	.quad	0x4015b100a393ee5f              # double 5.4228540000000001
	.quad	0x400bb803cd141a69              # double 3.4648509999999999
	.quad	0x3fe5e6299524bfd3              # double 0.68434600000000001
	.quad	0x400dc0fa9c12f09e              # double 3.7192280000000002
	.quad	0x40045314ca925fe9              # double 2.5405669999999998
	.quad	0x4023aa7221858bc6              # double 9.8329020000000007
	.quad	0x40001e0d66f0cfe1              # double 2.0146739999999999
	.quad	0x400a8a9a3d2d87f9              # double 3.3176770000000002
	.quad	0x3feaf533f42352eb              # double 0.84243199999999996
	.quad	0x401d889acbc8c0cf              # double 7.3834030000000004
	.quad	0x3fff0a1059ea5721              # double 1.9399569999999999
	.quad	0x4020ffa311e85fd0              # double 8.4992909999999995
	.quad	0x401a5dafd113836b              # double 6.5914910000000004
	.quad	0x401265421c044285              # double 4.5988850000000001
	.quad	0x40221919ce075f70              # double 9.0490250000000003
	.quad	0x4017d6366d7a56de              # double 5.9591919999999998
	.quad	0x3fd29f16b11c6d1e              # double 0.29096
	.quad	0x3ff47d2b6f19934f              # double 1.280559
	.quad	0x400290fe047d3d43              # double 2.3207970000000002
	.quad	0x40203617e34b9453              # double 8.1056509999999999
	.quad	0x3ffd930f062d40ab              # double 1.848403
	.quad	0x4001778b3700474e              # double 2.1833710000000002
	.quad	0x401ce27631b584b2              # double 7.2211540000000003
	.quad	0x3fffd81cf7878b7a              # double 1.990262
	.quad	0x4023273cb3e5753a              # double 9.5766349999999996
	.quad	0x401f2ea28fe260b3              # double 7.7955420000000001
	.quad	0x402273393ab430f5              # double 9.2250460000000007
	.quad	0x402058d349be8ff3              # double 8.1734869999999997
	.quad	0x40170a0be5109071              # double 5.759811
	.quad	0x401ac02de00d1b71              # double 6.6876749999999996
	.quad	0x3ff8b49f0e4da09d              # double 1.5440970000000001
	.quad	0x4014bf0f16f4384c              # double 5.1865810000000003
	.quad	0x40203aff08893b7e              # double 8.1152270000000009
	.quad	0x4003efa615a8deb1              # double 2.492016
	.quad	0x40204c2c1b10fd7e              # double 8.1487739999999995
	.quad	0x4014a24af0bf1a5d              # double 5.1584890000000003
	.quad	0x3ff604da9003eea2              # double 1.376185
	.quad	0x4013f00a7c5ac472              # double 4.9844150000000003
	.quad	0x401956e371540032              # double 6.3348519999999997
	.quad	0x40014e4da09cc31a              # double 2.1632340000000001
	.quad	0x3fa530ad46f587d7              # double 0.041387
	.quad	0x4021242b0ea18373              # double 8.5706410000000002
	.quad	0x40080e1a3f4666ed              # double 3.0068860000000002
	.quad	0x40204e10060780fe              # double 8.1524660000000004
	.quad	0x4013ea87e38eb032              # double 4.9790340000000004
	.quad	0x3fd666d373affb05              # double 0.350026
	.quad	0x400e493d102bc72e              # double 3.7857609999999999
	.quad	0x400f2a7935760392              # double 3.8957389999999998
	.quad	0x3fff87fbacb42891              # double 1.970699
	.quad	0x4012b4128bf3bea9              # double 4.6758519999999999
	.quad	0x4019b5ffa3b9ae0c              # double 6.4277329999999999
	.quad	0x402017ab10ba6267              # double 8.046227
	.quad	0x401a21886df82b1f              # double 6.5327469999999996
	.quad	0x3fcfa08398a65493              # double 0.247086
	.quad	0x40036a2fcefaa476              # double 2.4268489999999998
	.quad	0x401c90f4d7add15f              # double 7.141559
	.quad	0x3ffcb5dbb9cf9a07              # double 1.7943990000000001
	.quad	0x400f6b9f559b3d08              # double 3.9275500000000001
	.quad	0x3ff1bb3743632c1f              # double 1.1082069999999999
	.quad	0x401c3d19dece5711              # double 7.0596690000000004
	.quad	0x4017efd60e94ee39              # double 5.9842149999999998
	.quad	0x401c39b66f9335d2              # double 7.0563599999999997
	.quad	0x40127080f98fa377              # double 4.6098670000000004
	.quad	0x401c900713f077cd              # double 7.1406520000000002
	.quad	0x3ff3fb9389b52008              # double 1.24892
	.quad	0x4020f7227d028a1e              # double 8.482685
	.quad	0x400f23bcd35a8588              # double 3.8924500000000002
	.quad	0x402169a1554fbdad              # double 8.7063089999999992
	.quad	0x4018834e3369b9d8              # double 6.128228
	.quad	0x401834d940789614              # double 6.0516100000000002
	.quad	0x40115c4651f3e89b              # double 4.3401120000000004
	.quad	0x401af4388ebcc6c5              # double 6.7384969999999997
	.quad	0x40137fa7a85015c2              # double 4.874663
	.quad	0x40138a159817b95a              # double 4.8848479999999999
	.quad	0x4003aab606b7aa26              # double 2.4583550000000001
	.quad	0x400e5f705857afea              # double 3.7966009999999999
	.quad	0x400ea02d9cf13cef              # double 3.8282120000000002
	.quad	0x400edd6a593a2df9              # double 3.8581129999999999
	.quad	0x3ffa66f3f52fc265              # double 1.6501349999999999
	.quad	0x3fe87dcdf6987831              # double 0.76535699999999995
	.quad	0x3fc94ccab3edd8b6              # double 0.197656
	.quad	0x4003577531db445f              # double 2.4177040000000001
	.quad	0x400c377d955714ba              # double 3.5270950000000001
	.quad	0x3ffbe5edd052934b              # double 1.743635
	.quad	0x3fe236e0d23d4f16              # double 0.56919900000000001
	.quad	0x40135faf85942917              # double 4.8434429999999997
	.quad	0x3ff299bc33f85511              # double 1.162533
	.quad	0x4012cd9f4d37c137              # double 4.7008029999999996
	.quad	0x4002f0121682f944              # double 2.3672219999999999
	.quad	0x40237f46455eaee2              # double 9.748583
	.quad	0x400f348fd9fd36f8              # double 3.900665
	.quad	0x40138ecd8dbcec85              # double 4.889456
	.quad	0x3fc08027d88c1db0              # double 0.128911
	.quad	0x40239c26fe718a87              # double 9.8049850000000002
	.quad	0x40049d1351159c49              # double 2.5766969999999998
	.quad	0x401fb0789613d31c              # double 7.9223350000000003
	.quad	0x3ff6eac42e9899bf              # double 1.4323159999999999
	.quad	0x3f58116ebd4cfd09              # double 0.001469
	.quad	0x40073d50a88effe3              # double 2.9049390000000002
	.quad	0x3fd87c06e19b90eb              # double 0.38257000000000002
	.quad	0x4019f205bc01a36e              # double 6.4863499999999998
	.quad	0x3fe407faa044ae86              # double 0.62597400000000003
	.quad	0x400eb8ff75968512              # double 3.8403309999999999
	.quad	0x400bae136e71cda3              # double 3.4599980000000001
	.quad	0x400ecd9dfdac68a9              # double 3.8503989999999999
	.quad	0x402186994185058e              # double 8.7628880000000002
	.quad	0x4008af345069a4df              # double 3.0855489999999999
	.quad	0x401dd4463065f959              # double 7.4572989999999999
	.quad	0x40116533f42352eb              # double 4.3488309999999997
	.quad	0x401b49b0ab2e1694              # double 6.8219630000000002
	.quad	0x40199e40852b4d8c              # double 6.4045430000000003
	.quad	0x400e18a222d5171e              # double 3.7620279999999999
	.quad	0x4022bf633ce63a5c              # double 9.3738039999999998
	.quad	0x402387d1351159c5              # double 9.7652680000000007
	.quad	0x4009b877ab324852              # double 3.2150720000000002
	.quad	0x40211d000c9539b9              # double 8.5566410000000008
	.quad	0x4014cae2da554b8c              # double 5.1981310000000001
	.quad	0x401056a8fc0d2c38              # double 4.0846289999999996
	.quad	0x3fc432fcac8e68e4              # double 0.157806
	.quad	0x402130c1fc8f3238              # double 8.5952300000000008
	.quad	0x402281c714fce747              # double 9.2534720000000004
	.quad	0x401c0df37329c348              # double 7.0136240000000001
	.quad	0x40111804534bd76f              # double 4.2734540000000001
	.quad	0x3ffda7eb6bf444e1              # double 1.853496
	.quad	0x3f9e586013660e52              # double 0.029634000000000001
	.quad	0x401bd699c7bcc294              # double 6.9595710000000004
	.quad	0x3fe540bfe3b03e21              # double 0.66415400000000002
	.quad	0x401f1943e1006078              # double 7.7746729999999999
	.quad	0x40186b9bed30f063              # double 6.1050870000000002
	.quad	0x3ff784199fe43676              # double 1.469751
	.quad	0x3fe4c4d87724fa8b              # double 0.64902899999999997
	.quad	0x4019d79702e6644e              # double 6.4605370000000004
	.quad	0x40161cb252ce032e              # double 5.5280240000000003
	.quad	0x401aec2eba27ae9b              # double 6.7306470000000003
	.quad	0x40071a4a48f96e16              # double 2.8878370000000002
	.quad	0x4020ae1b4bb5e0f8              # double 8.340052
	.quad	0x3ffb9ce4a7b4e54f              # double 1.7258039999999999
	.quad	0x3fe85bee3d5fdcdf              # double 0.76122199999999995
	.quad	0x4013560fe47991bc              # double 4.8340449999999997
	.quad	0x401e72b90a782907              # double 7.6120340000000004
	.quad	0x400b64bf4cb1897a              # double 3.4241929999999998
	.quad	0x40200c399b2c40d1              # double 8.0238770000000006
	.quad	0x400b437cdcca70d2              # double 3.407953
	.quad	0x400cd395c4220360              # double 3.603313
	.quad	0x402374c8de2ac322              # double 9.7280949999999997
	.quad	0x40234a67a52ac754              # double 9.6453220000000001
	.quad	0x400c37518b0d0edc              # double 3.5270109999999999
	.quad	0x4018b3a797891e21              # double 6.1754439999999997
	.quad	0x3fe752ef911cf356              # double 0.72887400000000002
	.quad	0x4023e34d48882f0e              # double 9.9439489999999999
	.quad	0x3ff7e8ae74f2f124              # double 1.4943070000000001
	.quad	0x4023e0d6d3b6cbda              # double 9.9391390000000008
	.quad	0x401894da4ce8101f              # double 6.1453639999999998
	.quad	0x3ff776db940fecdd              # double 1.466518
	.quad	0x40017f6cacd184c2              # double 2.1872189999999998
	.quad	0x401f8f5f91600f34              # double 7.8900129999999997
	.quad	0x4022d6a8b8f14db6              # double 9.4192560000000007
	.quad	0x40204c5cfede97d0              # double 8.1491469999999993
	.quad	0x3fe47b762d83c6c9              # double 0.64007099999999995
	.quad	0x401cd08a265f0f5a              # double 7.2036519999999999
	.quad	0x4003ef0a5efe9318              # double 2.4917189999999998
	.quad	0x3ff1aef0ae536502              # double 1.10521
	.quad	0x3ffdb457c0b13598              # double 1.8565290000000001
	.quad	0x401610780fdc1616              # double 5.5160830000000001
	.quad	0x401e2df86e3b46fe              # double 7.5448930000000001
	.quad	0x4011a79af1886df8              # double 4.4136769999999999
	.quad	0x4014890b417ca212              # double 5.133832
	.quad	0x4009ff97aaac1095              # double 3.2498010000000002
	.quad	0x3fd9ae429e0a41a2              # double 0.40126099999999998
	.quad	0x40239e6afcce1c58              # double 9.8094099999999997
	.quad	0x4020969d7342edbb              # double 8.2941699999999994
	.quad	0x4021e8811b1d92b8              # double 8.95411
	.quad	0x402126fb8f57f738              # double 8.5761380000000003
	.quad	0x4021ff0068db8bac              # double 8.9980499999999992
	.quad	0x4004e44523f67f4e              # double 2.6114600000000001
	.quad	0x4015f4c0df58c08b              # double 5.4890169999999996
	.quad	0x401de29dc725c3df              # double 7.4713050000000001
	.quad	0x401db371971c10d8              # double 7.4252380000000002
	.quad	0x40037cac083126e9              # double 2.4358749999999998
	.quad	0x4020dc399b2c40d1              # double 8.4301270000000006
	.quad	0x3ff4b2b239a38fbd              # double 1.2936270000000001
	.quad	0x4010f264a16a4873              # double 4.2367119999999998
	.quad	0x40018d80a17b0f6b              # double 2.1940930000000001
	.quad	0x40004107b784662c              # double 2.0317530000000001
	.quad	0x4006a2856605ee57              # double 2.8293560000000002
	.quad	0x400487e6b3fe9fae              # double 2.5663580000000001
	.quad	0x400c277dd872f33d              # double 3.5192830000000002
	.quad	0x402074dd72367e41              # double 8.2282519999999995
	.quad	0x40229700ef1348b2              # double 9.2949289999999998
	.quad	0x4023a208e1501190              # double 9.8164739999999995
	.quad	0x4014e28d434a01ac              # double 5.2212420000000002
	.quad	0x4017671b0468448d              # double 5.850689
	.quad	0x40206cb1897a67a5              # double 8.2122919999999997
	.quad	0x4007565dbfceb789              # double 2.9171710000000002
	.quad	0x4021975126634118              # double 8.7955410000000001
	.quad	0x3ffe26c6de76427c              # double 1.8844669999999999
	.quad	0x3fdb2da98676a726              # double 0.42466199999999998
	.quad	0x400c90b630a91538              # double 3.5706600000000002
	.quad	0x401814e11dbca969              # double 6.0203899999999999
	.quad	0x402111357603925c              # double 8.5336110000000005
	.quad	0x3fee2a087ca643cc              # double 0.94263099999999999
	.quad	0x401f8959e6256367              # double 7.8841320000000001
	.quad	0x401bd48ecd8dbced              # double 6.9575760000000004
	.quad	0x402085a07b352a84              # double 8.2609899999999996
	.quad	0x4021402f0e0a84be              # double 8.6253589999999996
	.quad	0x4021529de8b3b320              # double 8.6613609999999994
	.quad	0x401d1848387df5cf              # double 7.2737129999999999
	.quad	0x40144b43d89ce4a8              # double 5.0735010000000003
	.quad	0x4015e9374bc6a7f0              # double 5.4777500000000003
	.quad	0x400c5dd5d3dc8b87              # double 3.5458180000000001
	.quad	0x3fd56c0d6f544bb2              # double 0.33472000000000002
	.quad	0x40187dd65a14488c              # double 6.1228879999999997
	.quad	0x4014344c37e6f71a              # double 5.0510719999999996
	.quad	0x4006036da87a072d              # double 2.751674
	.quad	0x4012bb2d4d4024b3              # double 4.6827899999999998
	.quad	0x401208ef77f27fe5              # double 4.5087260000000002
	.quad	0x402173b6672fba02              # double 8.7260010000000001
	.quad	0x40086013660e51d2              # double 3.0469119999999998
	.quad	0x4016ac7c0f451761              # double 5.6684419999999998
	.quad	0x4014f7fc7607c41a              # double 5.2421740000000003
	.quad	0x402216640a6b93cd              # double 9.0437320000000003
	.quad	0x401f656da0168b5d              # double 7.8490510000000002
	.quad	0x40145252ce032db2              # double 5.0803940000000001
	.quad	0x4018673d9ec70004              # double 6.1008209999999998
	.quad	0x40157cfc3f811f4f              # double 5.3720559999999997
	.quad	0x40013f2c3009b307              # double 2.1558459999999999
	.quad	0x4013293964a59c06              # double 4.7902579999999997
	.quad	0x3fe2b504c48adeec              # double 0.58459700000000003
	.quad	0x401512a843808851              # double 5.2682200000000003
	.quad	0x400fb868fd199bb2              # double 3.9650439999999998
	.quad	0x402136d5cfaacd9f              # double 8.6071000000000009
	.quad	0x402289183b60285f              # double 9.2677630000000004
	.quad	0x4022f1a79fec99f2              # double 9.4719820000000006
	.quad	0x401d23111f0c34c2              # double 7.2842450000000003
	.quad	0x401b1d330941c821              # double 6.7785149999999996
	.quad	0x400f8abe6a337a81              # double 3.9427460000000001
	.quad	0x3ffa1f6db940fece              # double 1.632673
	.quad	0x40212c00da1a9329              # double 8.5859439999999996
	.quad	0x40073d1f601797cc              # double 2.9048449999999999
	.quad	0x4020ccb72c5197a2              # double 8.3998349999999995
	.quad	0x3ff2cac083126e98              # double 1.1745000000000001
	.quad	0x4001738de6ddf00b              # double 2.1814230000000001
	.quad	0x40209bd4cfd08d4c              # double 8.3043580000000005
	.quad	0x40104e1b089a0275              # double 4.0762749999999999
	.quad	0x401c340852b4d8ba              # double 7.0508129999999998
	.quad	0x3ffd5e17e34b9453              # double 1.835472
	.quad	0x400ad763e4abe6a3              # double 3.3551709999999999
	.quad	0x402207d75e2046c7              # double 9.0153149999999993
	.quad	0x401b43f5b5fa2270              # double 6.8163669999999996
	.quad	0x4015d715c63ae254              # double 5.4600439999999999
	.quad	0x400b0702a3486f05              # double 3.3784230000000002
	.quad	0x3ff8cc0df58c08b7              # double 1.5498179999999999
	.quad	0x40167f71eafee6fb              # double 5.6244579999999997
	.quad	0x3ff9f75a74c09c3d              # double 1.622889
	.quad	0x400577e77d523b36              # double 2.6835469999999999
	.quad	0x400901f644955b46              # double 3.1259579999999998
	.quad	0x4023fb7f1737542a              # double 9.9912039999999998
	.quad	0x402057c1376d5497              # double 8.1713959999999997
	.quad	0x401d615a8deb0fae              # double 7.345072
	.quad	0x4017519fc2a8869c              # double 5.8297109999999996
	.quad	0x4015ef43c7d5ed07              # double 5.483657
	.quad	0x3fc0d61b2a27f1b7              # double 0.13153400000000001
	.quad	0x4010d64dc22ab25b              # double 4.2092809999999998
	.quad	0x40211c48adeebb34              # double 8.5552419999999997
	.quad	0x3fffb65cb35f3d7d              # double 1.982022
	.quad	0x4018ee4c51116a8c              # double 6.2327130000000004
	.quad	0x401e45d78811b1d9              # double 7.5682049999999998
	.quad	0x4006918fc504816f              # double 2.821075
	.quad	0x3ffb51c2a0232096              # double 1.7074609999999999
	.quad	0x40137d3f1843c3a4              # double 4.8723109999999998
	.quad	0x400e80218def416c              # double 3.8125640000000001
	.quad	0x3ff52ed56b00ffda              # double 1.3239339999999999
	.quad	0x40211aed99cbee80              # double 8.5525939999999991
	.quad	0x400d7f28848387df              # double 3.6870889999999998
	.quad	0x4023e2bf9830e3ce              # double 9.9428680000000007
	.quad	0x3fdaead0c3d25248              # double 0.42058200000000001
	.quad	0x3fb3124d099e0e73              # double 0.074497999999999995
	.quad	0x3fb9b845564b6630              # double 0.100468
	.quad	0x401ce6188b11409a              # double 7.2247029999999999
	.quad	0x40113c87980f55de              # double 4.3091109999999997
	.quad	0x401076bc621b7e0b              # double 4.1159530000000002
	.quad	0x3ff192f1a9fbe76d              # double 1.0983750000000001
	.quad	0x4007784449dbec25              # double 2.9337240000000002
	.quad	0x40205602645e4e6a              # double 8.1679870000000001
	.quad	0x40234937f38c5437              # double 9.6430050000000004
	.quad	0x40203c3c7d5ed070              # double 8.1176490000000001
	.quad	0x4022d1c3ce2089e3              # double 9.4096969999999995
	.quad	0x3ffb93d102bc72e2              # double 1.7235879999999999
	.quad	0x4018ad5e071c53f4              # double 6.1693040000000003
	.quad	0x40149877ab324852              # double 5.1488940000000003
	.quad	0x401fe6d8b1dd5d3e              # double 7.9754360000000002
	.quad	0x401f10abf76a2f49              # double 7.7662810000000002
	.quad	0x3feaca8c154c985f              # double 0.837225
	.quad	0x3ff73df3b645a1cb              # double 1.4526250000000001
	.quad	0x4018094812be48a6              # double 6.0090640000000004
	.quad	0x401b7dd616f86a0a              # double 6.8728870000000004
	.quad	0x401434998d045fe1              # double 5.0513669999999999
	.quad	0x3ff60f49491f2dc3              # double 1.3787320000000001
	.quad	0x4019a0ea9e6eeb70              # double 6.4071449999999999
	.quad	0x401ea51ac9afe1da              # double 7.6612349999999996
	.quad	0x4021c49abb01c92e              # double 8.8839930000000003
	.quad	0x3ff6e8f190d173fb              # double 1.4318709999999999
	.quad	0x4017f05c4651f3e9              # double 5.9847270000000004
	.quad	0x4014fabe6a337a81              # double 5.2448670000000002
	.quad	0x401228409e55c0fd              # double 4.5393090000000003
	.quad	0x3ffb213c254a3c64              # double 1.695614
	.quad	0x401b15197a24894c              # double 6.7706049999999998
	.quad	0x4023f43b0c4588a0              # double 9.9770129999999995
	.quad	0x40048bf0995aaf79              # double 2.56833
	.quad	0x4000e7dbb16c1e36              # double 2.1132119999999999
	.quad	0x3fe51d6adf71eaff              # double 0.65984100000000001
	.quad	0x3ff01a469d7342ee              # double 1.0064150000000001
	.quad	0x4013234acaff6d33              # double 4.784465
	.quad	0x4017a69c66d373b0              # double 5.912706
	.quad	0x4011a8943e100608              # double 4.4146280000000004
	.quad	0x4015d62281344806              # double 5.4591159999999999
	.quad	0x40130bdb5d894813              # double 4.7615790000000002
	.quad	0x401a6256ffc115df              # double 6.5960349999999996
	.quad	0x4011d4538ef34d6a              # double 4.4573499999999999
	.quad	0x400064178705425f              # double 2.0488729999999999
	.quad	0x400aafdb8fde2ef5              # double 3.3358680000000001
	.quad	0x400b3cd4ed2cbea5              # double 3.404703
	.quad	0x3ff7e4de3b8a19ca              # double 1.493376
	.quad	0x40234d44fe36d224              # double 9.6509169999999997
	.quad	0x4000b69d30270f39              # double 2.0891670000000002
	.quad	0x3fc0a3d70a3d70a4              # double 0.13
	.quad	0x3ff1b8b8ae31d713              # double 1.1075980000000001
	.quad	0x3fe5c7c30d306a2b              # double 0.68063499999999999
	.quad	0x400af05e1c15097d              # double 3.3673670000000002
	.quad	0x401367a13c254a3c              # double 4.8512009999999997
	.quad	0x4016d1c970f7b9e0              # double 5.7048699999999997
	.quad	0x401d06dbd72bcb60              # double 7.2566980000000001
	.quad	0x40231f4107314ca9              # double 9.5610429999999997
	.quad	0x40179dbc664d3bf3              # double 5.904039
	.quad	0x402153b8a19c9d5a              # double 8.6635179999999998
	.quad	0x40021ab862b27cbf              # double 2.2630469999999998
	.quad	0x402242fc8b0079a3              # double 9.1308330000000009
	.quad	0x40204671044f1a1a              # double 8.1375810000000008
	.quad	0x401c8e5eaab04253              # double 7.1390330000000004
	.quad	0x3fb0e7ddca4b124d              # double 0.066037999999999999
	.quad	0x4016fe06d938151a              # double 5.7480729999999998
	.quad	0x4010c66e008e9b39              # double 4.1937790000000001
	.quad	0x3ffa1ffa3b9ae0c1              # double 1.6328069999999999
	.quad	0x401cb21bc126a65d              # double 7.173934
	.quad	0x3fff7240fa9c12f1              # double 1.9653940000000001
	.quad	0x3ff5ae536501e258              # double 1.3550599999999999
	.quad	0x40109111276fb092              # double 4.141667
	.quad	0x40104d3cbc48f10b              # double 4.0754270000000004
	.quad	0x401750cbf2b239a4              # double 5.8289030000000004
	.quad	0x3fe11bfbdf090f73              # double 0.53466599999999997
	.quad	0x402385e74299d884              # double 9.7615300000000004
	.quad	0x401f7244e93e1c9b              # double 7.8615909999999997
	.quad	0x4017bb92c061847f              # double 5.9331769999999997
	.quad	0x4020b236e2eb1c43              # double 8.3480749999999997
	.quad	0x400432f1a9fbe76d              # double 2.5248750000000002
	.quad	0x3fe79700cd855971              # double 0.73718300000000003
	.quad	0x4005d9fb1e18efbb              # double 2.731436
	.quad	0x40130a6698bb4d49              # double 4.7601570000000004
	.quad	0x4012a6b9c304ccee              # double 4.6628179999999997
	.quad	0x40214af01754b05b              # double 8.6463629999999991
	.quad	0x4019b0af5fd47bee              # double 6.4225440000000003
	.quad	0x401f2119ce075f70              # double 7.7823250000000002
	.quad	0x40206318548a9bd0              # double 8.1935450000000003
	.quad	0x4010a49e8815e397              # double 4.1607609999999999
	.quad	0x4015b862b27cbf6e              # double 5.4300639999999998
	.quad	0x401cc21c044284e0              # double 7.1895600000000002
	.quad	0x4021608f861a60d4              # double 8.6885949999999994
	.quad	0x40238a938de6ddf0              # double 9.7706569999999999
	.quad	0x4014c90752da9867              # double 5.1963169999999996
	.quad	0x40235d347a5b0ff1              # double 9.6820409999999998
	.quad	0x4009775a74c09c3d              # double 3.1832780000000001
	.quad	0x400968198f1d3ed5              # double 3.1758299999999999
	.quad	0x3f8cac083126e979              # double 0.014
	.quad	0x3fb06ab14ec204f3              # double 0.064128000000000004
	.quad	0x401103bea91d9b1b              # double 4.2536569999999996
	.quad	0x3ffc68533b107747              # double 1.7754700000000001
	.quad	0x4016d65e89225311              # double 5.7093449999999999
	.quad	0x4021436262cba733              # double 8.6316100000000002
	.quad	0x4009fb8023a6ce36              # double 3.2478030000000002
	.quad	0x3ffc5f2239e6ab9b              # double 1.773226
	.quad	0x401ea63497b7414a              # double 7.6623099999999997
	.quad	0x40205383cf2cf95d              # double 8.1631149999999995
	.quad	0x401ece0a84be4042              # double 7.7012119999999999
	.quad	0x400629dcf893faf4              # double 2.7704409999999999
	.quad	0x400360f2becedd48              # double 2.4223379999999999
	.quad	0x3ff24a7b4e54f7a9              # double 1.143184
	.quad	0x4017f202107b7846              # double 5.9863359999999997
	.quad	0x3fe918c7e28240b8              # double 0.78427500000000006
	.quad	0x40116ff1d81f1066              # double 4.3593209999999996
	.quad	0x3fe853cff64cf8d7              # double 0.76023099999999999
	.quad	0x4014933ca31e7d9a              # double 5.1437860000000004
	.quad	0x401754ccab3edd8b              # double 5.8328119999999997
	.quad	0x40203e33482be8bc              # double 8.1214849999999998
	.quad	0x4012fcc4ac6cdaf5              # double 4.7468440000000003
	.quad	0x401bbc5436b8f9b1              # double 6.9339149999999998
	.quad	0x4012a986338b47c7              # double 4.6655509999999998
	.quad	0x4021da1858bc59b8              # double 8.925967
	.quad	0x40228714db59578a              # double 9.2638309999999997
	.quad	0x400ec9f8c21e1d21              # double 3.8486189999999998
	.quad	0x4001419f3c70c997              # double 2.1570420000000001
	.quad	0x4016e9f87f023e9f              # double 5.7284870000000003
	.quad	0x400e76bf444e0daa              # double 3.807982
	.quad	0x4009b563a9f383f1              # double 3.2135690000000001
	.quad	0x4005de48a58b3f64              # double 2.7335370000000001
	.quad	0x3fee0cf1800a7c5b              # double 0.93908000000000003
	.quad	0x3ff19d8a54823854              # double 1.100962
	.quad	0x3ff45f4906034f40              # double 1.273263
	.quad	0x402284e54f7a9197              # double 9.2595620000000007
	.quad	0x4020d6f240fa9c13              # double 8.4198170000000001
	.quad	0x4009483b1d0c8041              # double 3.160269
	.quad	0x40176f7a4e7ab756              # double 5.8588649999999998
	.quad	0x4000d270b06c43f6              # double 2.102754
	.quad	0x401c7653868fd19a              # double 7.1155530000000002
	.quad	0x401e2ff08893b7d8              # double 7.5468159999999997
	.quad	0x40229f993d5347a6              # double 9.3117160000000005
	.quad	0x40203c929aa1d756              # double 8.1183060000000005
	.quad	0x401e959a73b42cc3              # double 7.6460970000000001
	.quad	0x3fbbcb1cc9646280              # double 0.108568
	.quad	0x3fe902d7b634dad3              # double 0.78159699999999999
	.quad	0x4003f6e0d23d4f16              # double 2.495546
	.quad	0x401ad2bd3c361134              # double 6.7058
	.quad	0x400b19b8887229e9              # double 3.387559
	.quad	0x4000890f733a8a40              # double 2.0669240000000002
	.quad	0x400621e0c5a8155d              # double 2.7665419999999998
	.quad	0x4009bb0468448cf8              # double 3.2163170000000001
	.quad	0x401803ee5eedcc21              # double 6.0038390000000001
	.quad	0x40028a6d26740810              # double 2.3175910000000002
	.quad	0x400e28feac42e98a              # double 3.7700170000000002
	.quad	0x400d4935b91f70df              # double 3.6607470000000002
	.quad	0x4022d0b8f14db595              # double 9.4076609999999991
	.quad	0x3ff2f66d7a56de33              # double 1.185163
	.quad	0x401db613d31b9b67              # double 7.42781
	.quad	0x3ffd199dcb5781c7              # double 1.818754
	.quad	0x4002939eadd590c1              # double 2.3220800000000001
	.quad	0x4022e7f1d81f1066              # double 9.4530169999999991
	.quad	0x3fd16defc7a39820              # double 0.27233499999999999
	.quad	0x40035e4bcad9ad86              # double 2.4210430000000001
	.quad	0x3fe3e48a58b3f63c              # double 0.62164799999999998
	.quad	0x4014acb3e5753a3f              # double 5.1686550000000002
	.quad	0x400c2ba732df505d              # double 3.521315
	.quad	0x40193754f3775b81              # double 6.3040349999999998
	.quad	0x4008b1b152f3c2db              # double 3.0867640000000001
	.quad	0x3fd9c6b484d76ab6              # double 0.40275300000000003
	.quad	0x40177a832b990afe              # double 5.8696409999999997
	.quad	0x400b9abd1aa821f3              # double 3.4505560000000002
	.quad	0x40153d3ed527e521              # double 5.3098099999999997
	.quad	0x4013c9f40a2877ee              # double 4.9472199999999997
	.quad	0x400897110e453d21              # double 3.073763
	.quad	0x3ffe7d1aa821f299              # double 1.905543
	.quad	0x4015ff42784a9479              # double 5.4992770000000002
	.quad	0x3ff988387df5cf25              # double 1.5957570000000001
	.quad	0x4013dac258d5842b              # double 4.9636319999999996
	.quad	0x401807125dd095af              # double 6.0069059999999999
	.quad	0x4017a875d56f32be              # double 5.9145120000000002
	.quad	0x3feda0642396073e              # double 0.92582900000000001
	.quad	0x4021a7924af0bf1a              # double 8.8272879999999994
	.quad	0x40201719b4dcebff              # double 8.0451180000000004
	.quad	0x4020c94cec41dd1a              # double 8.3931649999999998
	.quad	0x4014d44d87724fa9              # double 5.2073270000000003
	.quad	0x401378c8eef1bac3              # double 4.8679540000000001
	.quad	0x4023bf76e6106ab1              # double 9.8739539999999994
	.quad	0x401d2b2cc70867ae              # double 7.2921630000000004
	.quad	0x3fc9d88c1db0142f              # double 0.20192099999999999
	.quad	0x4019cfb65668c261              # double 6.4528439999999998
	.quad	0x40055cf67b1c0011              # double 2.6703920000000001
	.quad	0x401a21016ce789e7              # double 6.5322319999999996
	.quad	0x401db3c148344c38              # double 7.425542
	.quad	0x3fe6a6bd6e8af816              # double 0.70785399999999998
	.quad	0x3ffbf7f8ca8198f2              # double 1.74804
	.quad	0x4017b5c8d9f9053a              # double 5.927524
	.quad	0x4022e298aa8650e7              # double 9.4425709999999991
	.quad	0x401183929ed3953e              # double 4.3784890000000001
	.quad	0x4017f51761459536              # double 5.9893470000000004
	.quad	0x401e0e1a8262456f              # double 7.5137729999999995
	.quad	0x40006e9899bf5947              # double 2.0540020000000001
	.quad	0x400ae68fd199bb28              # double 3.3625790000000002
	.quad	0x3ff33a7546d3f9e8              # double 1.2017720000000001
	.quad	0x4023bbcc4ac6cdaf              # double 9.8667929999999994
	.quad	0x40065cd3e0bd449a              # double 2.7953260000000002
	.quad	0x3feeeeac8605681f              # double 0.96663500000000002
	.quad	0x4017061f9f01b867              # double 5.7559800000000001
	.quad	0x4023a987c6327ed8              # double 9.8311139999999994
	.quad	0x401d2d352220bc38              # double 7.2941479999999999
	.quad	0x4021e5b2f661f18d              # double 8.9486310000000007
	.quad	0x4014be10060780fe              # double 5.1856080000000002
	.quad	0x402106cc5fbf8338              # double 8.5132779999999997
	.quad	0x4002c74c09c3ce21              # double 2.3473130000000002
	.quad	0x3fe659dfdac68a93              # double 0.69847099999999995
	.quad	0x4011d1a543f1c758              # double 4.4547319999999999
	.quad	0x401d49aa60913a50              # double 7.3219390000000004
	.quad	0x3ff41883ba3443d4              # double 1.2559849999999999
	.quad	0x40096af89c5e6ff8              # double 3.1772320000000001
	.quad	0x40236e8533b10774              # double 9.7158599999999992
	.quad	0x401f2253da72a7bd              # double 7.7835229999999997
	.quad	0x40155681ecd4aa11              # double 5.3344800000000001
	.quad	0x400e8d80a17b0f6b              # double 3.8190930000000001
	.quad	0x401bdf90539fba45              # double 6.968324
	.quad	0x401d528a6117720d              # double 7.3306060000000004
	.quad	0x401971dcd7060bb3              # double 6.3611940000000002
	.quad	0x40005dc2f405f6ba              # double 2.045782
	.quad	0x400ce1c044284dfd              # double 3.6102300000000001
	.quad	0x40180b1290257c91              # double 6.0108129999999997
	.quad	0x401abc9363f572de              # double 6.6841559999999998
	.quad	0x3ff364883fd50225              # double 1.2120439999999999
	.quad	0x40154fa97e132b56              # double 5.3277950000000001
	.quad	0x40134c26dce39b45              # double 4.8243669999999996
	.quad	0x4011ada122fad6cb              # double 4.4195599999999997
	.quad	0x4023bd29bae46cfd              # double 9.8694590000000008
	.quad	0x400373dc054ef45a              # double 2.4315720000000001
	.quad	0x40212d25460aa64c              # double 8.5881749999999996
	.quad	0x400e72018a43bb41              # double 3.8056670000000001
	.quad	0x401c7cdc011d3672              # double 7.1219330000000003
	.quad	0x4022827daa4fca43              # double 9.2548650000000006
	.quad	0x4020c60b0af5fd48              # double 8.3868030000000005
	.quad	0x4021d36e71cda2b6              # double 8.9129520000000007
	.quad	0x400921d29dc725c4              # double 3.1415150000000001
	.quad	0x401cac111ada76d9              # double 7.1680339999999996
	.quad	0x401990342aa9f7b6              # double 6.3908240000000003
	.quad	0x4003a5da6a444178              # double 2.4559829999999998
	.quad	0x40202c6ed245b292              # double 8.0867830000000005
	.quad	0x4007009f623076c0              # double 2.8753039999999999
	.quad	0x4017c944ed6fda83              # double 5.9465519999999996
	.quad	0x3ff1ad6a9c560c7c              # double 1.104838
	.quad	0x3fec44c9c90c4dec              # double 0.88339699999999998
	.quad	0x4020f8f8a4c1ebc8              # double 8.4862719999999996
	.quad	0x40228482be8bc16a              # double 9.2588100000000004
	.quad	0x401c16177ea1c68f              # double 7.0215740000000002
	.quad	0x40139465a57646ae              # double 4.8949189999999998
	.quad	0x4012eb9c7368ad69              # double 4.7300890000000004
	.quad	0x400f6f5a1016ce79              # double 3.9293710000000002
	.quad	0x401d07c73eee5259              # double 7.2575960000000004
	.quad	0x4019c94ff0025bfb              # double 6.4465940000000002
	.quad	0x3fd646a1a500d5e9              # double 0.34806100000000001
	.quad	0x4020e04230fcf80e              # double 8.4380050000000004
	.quad	0x4023d0e92d55a3a1              # double 9.9080290000000008
	.quad	0x40205b56da0168b6              # double 8.1783970000000004
	.quad	0x4000c461f9f01b86              # double 2.0958899999999998
	.quad	0x4019d3e5b8561d43              # double 6.456931
	.quad	0x4021398b71b8aa00              # double 8.6123919999999998
	.quad	0x401292ea0fd3b29a              # double 4.6434709999999999
	.quad	0x40035e931876188b              # double 2.421179
	.quad	0x3ffb4029f16b11c7              # double 1.703165
	.quad	0x4006364840e1719f              # double 2.7765049999999998
	.quad	0x40208e1f9f01b867              # double 8.2775850000000002
	.quad	0x4003f252ce032db2              # double 2.493322
	.quad	0x401faf3ba775fb2f              # double 7.9211260000000001
	.quad	0x402156dca07f66e8              # double 8.6696519999999992
	.quad	0x3fd2ac6045baf534              # double 0.291771
	.quad	0x401fe19c17225b75              # double 7.9703220000000003
	.quad	0x400b3a9e2bcf91a3              # double 3.4036219999999999
	.quad	0x3ff43b2cc70867ae              # double 1.2644470000000001
	.quad	0x3fd9c6da4484944f              # double 0.40276200000000001
	.quad	0x40232d851654d61b              # double 9.5889059999999997
	.quad	0x3ff35c6f36ef8056              # double 1.210067
	.quad	0x40106f7b5aea3162              # double 4.1088690000000003
	.quad	0x4007958a76102795              # double 2.9480179999999998
	.quad	0x4020c54b2745bf27              # double 8.3853390000000001
	.quad	0x401242d6a9c560c8              # double 4.5652720000000002
	.quad	0x401c65b5fa22706d              # double 7.0993269999999997
	.quad	0x3feac3d03968d75a              # double 0.83640300000000001
	.quad	0x4000ebe835dedf1e              # double 2.115189
	.quad	0x3fee00ffda4052d6              # double 0.93762199999999996
	.quad	0x400cd542a23bff8b              # double 3.6041310000000002
	.quad	0x400b6fe60c38f367              # double 3.4296380000000002
	.quad	0x4021122d948dc11e              # double 8.5355039999999995
	.quad	0x4023ad21bc126a66              # double 9.8381480000000003
	.quad	0x401e7e9dd7ecbb80              # double 7.6236490000000003
	.quad	0x4020b39a38fbca10              # double 8.3507859999999994
	.quad	0x3ff913c254a3c643              # double 1.5673239999999999
	.quad	0x40163f3f0fe047d4              # double 5.5617640000000002
	.quad	0x3ffe0c70867ad8e4              # double 1.878037
	.quad	0x3fee638a7e73a366              # double 0.94965100000000002
	.quad	0x4011858d5842b735              # double 4.3804220000000003
	.quad	0x4017254434e3369c              # double 5.7863930000000003
	.quad	0x400bb40f66a55087              # double 3.46292
	.quad	0x3ffed0c3d25247cb              # double 1.9259679999999999
	.quad	0x4010b163779e9d0f              # double 4.1732310000000004
	.quad	0x40162375c8d9f905              # double 5.5346289999999998
	.quad	0x4020eafba01eeed9              # double 8.4589510000000008
	.quad	0x40235887ebf22c02              # double 9.6729120000000002
	.quad	0x3fe25043e5321e60              # double 0.57229799999999997
	.quad	0x401d5dda48b65237              # double 7.341653
	.quad	0x401c3b8bef8ceb35              # double 7.0581509999999996
	.quad	0x401baad31fcd24e1              # double 6.9168209999999997
	.quad	0x401e33b645a1cac1              # double 7.5505000000000004
	.quad	0x3ff0a086bdf4c2b5              # double 1.039191
	.quad	0x400159dba908a266              # double 2.168876
	.quad	0x3fcacfbfc6540cc8              # double 0.20946500000000001
	.quad	0x401e059578a2a90d              # double 7.5054530000000001
	.quad	0x40055486f049a997              # double 2.6662729999999999
	.quad	0x4014f4a01abd1aa8              # double 5.2388919999999999
	.quad	0x40181d2f1a9fbe77              # double 6.0285000000000002
	.quad	0x40048fd21ff2e48f              # double 2.5702250000000002
	.quad	0x40216d0acc0bdcad              # double 8.7129729999999999
	.quad	0x4006357928e0c9da              # double 2.7761100000000001
	.quad	0x40225d29dc725c3e              # double 9.1819600000000001
	.quad	0x4022ef0739b024f6              # double 9.4668519999999994
	.quad	0x3ffb7841248d7e02              # double 1.7168589999999999
	.quad	0x401b8b645a1cac08              # double 6.8861249999999998
	.quad	0x40172a60913a4f87              # double 5.7913839999999999
	.quad	0x400c0e30caa326e1              # double 3.506929
	.quad	0x40203a5aab474107              # double 8.1139729999999997
	.quad	0x401025e4a3832767              # double 4.0370049999999997
	.quad	0x40193d41743e963e              # double 6.3098200000000002
	.quad	0x401daf83382e44b7              # double 7.4213990000000001
	.quad	0x402125b39e279dd4              # double 8.5736360000000004
	.quad	0x400ef27dcbddb984              # double 3.868404
	.quad	0x401746266fd651b1              # double 5.8185060000000002
	.quad	0x400effe5c91d14e4              # double 3.8749500000000001
	.quad	0x3fde629d8409e55c              # double 0.474769
	.quad	0x400a5327243137b0              # double 3.2906019999999998
	.quad	0x401ad66cb10342ab              # double 6.7093990000000003
	.quad	0x400b5ecedd484513              # double 3.4212929999999999
	.quad	0x3ffc8dc8754f3776              # double 1.7846150000000001
	.quad	0x400f4f09528f190d              # double 3.913592
	.quad	0x401a09378ee28672              # double 6.5090009999999996
	.quad	0x4007a1fc8f32378b              # double 2.9540950000000001
	.quad	0x3feecdb7ae5796c0              # double 0.96261200000000002
	.quad	0x3ffc48d1958969a1              # double 1.7677780000000001
	.quad	0x401ab823422467be              # double 6.6798219999999997
	.quad	0x3ffbee4b018611fd              # double 1.7456769999999999
	.quad	0x401c1862f5989df1              # double 7.0238149999999999
	.quad	0x401f30a5accd5305              # double 7.7975070000000004
	.quad	0x401482cd39da1661              # double 5.1277359999999996
	.quad	0x401580ff10ecb74e              # double 5.3759730000000001
	.quad	0x401ab1f46ed245b3              # double 6.6737840000000004
	.quad	0x3ff5514d2f5dbb9d              # double 1.332349
	.quad	0x400bddadfb506dd7              # double 3.4832420000000002
	.quad	0x401f64e93e1c9b41              # double 7.8485459999999998
	.quad	0x40238bc5de9c022a              # double 9.7729940000000006
	.quad	0x4020f9f16b11c6d2              # double 8.4881700000000002
	.quad	0x40225290cd423d92              # double 9.1612609999999997
	.quad	0x401bbe02a77a2ced              # double 6.9355570000000002
	.quad	0x401752f661f18ca0              # double 5.8310180000000003
	.quad	0x3ffd0370cdc8754f              # double 1.81334
	.quad	0x401be37eb28d8666              # double 6.9721630000000001
	.quad	0x3ffcae2fbe33acd6              # double 1.7925260000000001
	.quad	0x3ff2059fb1e18efc              # double 1.1263730000000001
	.quad	0x401e507a28bb0a2d              # double 7.5785910000000002
	.quad	0x40220c99f1ae2da5              # double 9.0246119999999994
	.quad	0x4021fd86876e1deb              # double 8.9951670000000004
	.quad	0x4000eca70d1fa333              # double 2.1155529999999998
	.quad	0x4023b497d8cf398f              # double 9.8527210000000007
	.quad	0x401dfa08bfc2224f              # double 7.4941740000000001
	.quad	0x4013644567125dd1              # double 4.8479210000000004
	.quad	0x40100b7995ee136e              # double 4.0112059999999996
	.quad	0x3fa845dc8323358f              # double 0.047407999999999999
	.quad	0x40224c304ccee5ac              # double 9.1488060000000004
	.quad	0x4023bc3760bf5d79              # double 9.8676100000000008
	.quad	0x4019994ccab3edd9              # double 6.3997070000000003
	.quad	0x4021cc90c4dec1c2              # double 8.8995420000000003
	.quad	0x4007d46dc5d63886              # double 2.9787249999999998
	.quad	0x3fff83c5bd0e12e8              # double 1.9696709999999999
	.quad	0x4010b9c62a1b5c7d              # double 4.1814200000000001
	.quad	0x3fffef9ebe9c8861              # double 1.9960009999999999
	.quad	0x402381d5e4a38327              # double 9.7535849999999992
	.quad	0x3ff7fabead4f5904              # double 1.4987170000000001
	.quad	0x3ff3f49adc8fb86f              # double 1.2472179999999999
	.quad	0x4003ea98aa8650e7              # double 2.4895489999999998
	.quad	0x400f1ea465a57647              # double 3.8899620000000001
	.quad	0x400be255b035bd51              # double 3.4855149999999999
	.quad	0x4023cc4e93e1c9b4              # double 9.8990369999999998
	.quad	0x401f3b2cc70867ae              # double 7.8077880000000004
	.quad	0x401aa6256366d7a5              # double 6.6622519999999996
	.quad	0x4015b3743632c1f4              # double 5.4252479999999998
	.quad	0x3fd8ef0ae536501e              # double 0.38958999999999999
	.quad	0x4017be5b4245f5ae              # double 5.9358950000000004
	.quad	0x401511eb851eb852              # double 5.2675000000000001
	.quad	0x401960c6f7a0b5ee              # double 6.3445090000000004
	.quad	0x400af1aeb3dd11be              # double 3.3680089999999998
	.quad	0x4013d36deb95e5b0              # double 4.956474
	.quad	0x4003a2d2fe3f35a0              # double 2.454504
	.quad	0x401eecbbc2b94d94              # double 7.731185
	.quad	0x4021a938151a4378              # double 8.8305059999999997
	.quad	0x40184024b33daf8e              # double 6.06264
	.quad	0x401f5055757d5a9f              # double 7.8284510000000002
	.quad	0x400c6e935b91f70e              # double 3.553992
	.quad	0x3feeb571d1d4738a              # double 0.95964899999999997
	.quad	0x3feb1efd86a8fc0d              # double 0.84753299999999998
	.quad	0x40191304039abf34              # double 6.2685700000000004
	.quad	0x401b26798958d9b6              # double 6.7875730000000001
	.quad	0x400ccda5daf07bfe              # double 3.6004139999999998
	.quad	0x400cf0880d801b43              # double 3.6174469999999999
	.quad	0x40183c0a06e9ff0d              # double 6.0586320000000002
	.quad	0x4001ba6266fd651b              # double 2.216008
	.quad	0x3ff6733fc86cebbc              # double 1.4031370000000001
	.quad	0x4017c2f7f498c3b1              # double 5.9403990000000002
	.quad	0x3fda0ded288ce704              # double 0.40710000000000002
	.quad	0x401af5974e65bea1              # double 6.7398350000000002
	.quad	0x3fcafbe33acd5b68              # double 0.210812
	.quad	0x4000b89a459103c9              # double 2.0901380000000001
	.quad	0x40129a78af3e468d              # double 4.6508510000000003
	.quad	0x401ef671ac14c661              # double 7.7406680000000003
	.quad	0x40157b0b7c3504c5              # double 5.3701610000000004
	.quad	0x400eef5d35653c9b              # double 3.8668770000000001
	.quad	0x401039b845564b66              # double 4.0563669999999998
	.quad	0x4005adb1e9f27781              # double 2.7098119999999999
	.quad	0x4010aa9a3d2d87f9              # double 4.1666040000000004
	.quad	0x4018fced916872b0              # double 6.2469999999999999
	.quad	0x4022b1be4cd74928              # double 9.3471550000000007
	.quad	0x4022ab7ae5796bfd              # double 9.3349220000000006
	.quad	0x3fcd63779e9d0e99              # double 0.229598
	.quad	0x4021362174c4cdfb              # double 8.6057240000000004
	.quad	0x40235dd377e1b8ed              # double 9.6832539999999998
	.quad	0x4020fab4b72c5198              # double 8.4896600000000007
	.quad	0x3fee2f2f9873ffac              # double 0.94325999999999998
	.quad	0x40204be121ee6751              # double 8.1482019999999995
	.quad	0x4000dfc86cebbba5              # double 2.1092689999999998
	.quad	0x4013106ee30caa32              # double 4.7660479999999996
	.quad	0x4001213ec460ed81              # double 2.1412330000000002
	.quad	0x4012e0af1cb89d6b              # double 4.7194180000000001
	.quad	0x4000d0dae3e6c4c6              # double 2.1019800000000002
	.quad	0x3ff3d9d2391d5800              # double 1.2406790000000001
	.quad	0x4013b48cf7caa759              # double 4.9263190000000003
	.quad	0x401ad32c1f42bb66              # double 6.7062229999999996
	.quad	0x3fe5cde19fc2a887              # double 0.68138200000000004
	.quad	0x40237f9c4113c686              # double 9.7492389999999993
	.quad	0x3ff4287a072d1aeb              # double 1.2598819999999999
	.quad	0x3fd3e16d6dc1a47b              # double 0.31063400000000002
	.quad	0x400a5677f6b1a2a5              # double 3.2922210000000001
	.quad	0x40228ea57214f052              # double 9.2786059999999999
	.quad	0x401eca5870da5daf              # double 7.6976029999999999
	.quad	0x4006b8d716d2aa5c              # double 2.8402539999999998
	.quad	0x401c5f533f42352f              # double 7.0930910000000003
	.quad	0x4023d7a1a0cf1801              # double 9.9211550000000006
	.quad	0x4020fe56cd6c2efd              # double 8.4967559999999995
	.quad	0x4011270329802c0a              # double 4.2880979999999997
	.quad	0x4002f444e0daa0cb              # double 2.369272
	.quad	0x4007092ff4ba51a0              # double 2.879486
	.quad	0x4000736049ecb31c              # double 2.0563359999999999
	.quad	0x4023a342aa9f7b5b              # double 9.8188680000000001
	.quad	0x4010947cfa26a22b              # double 4.1450079999999998
	.quad	0x401d8fe0ce0b912e              # double 7.3905060000000002
	.quad	0x401e48bf3bea91da              # double 7.5710420000000003
	.quad	0x4023fca87e38eb03              # double 9.9934729999999998
	.quad	0x400511e9f2778141              # double 2.6337470000000001
	.quad	0x4020fff993d5347a              # double 8.4999509999999994
	.quad	0x401688c9752977c9              # double 5.6335810000000004
	.quad	0x401dd5f633ce63a6              # double 7.4589470000000002
	.quad	0x4014f2e1ef73c0c2              # double 5.23719
	.quad	0x40227801d5c31594              # double 9.2343890000000001
	.quad	0x40186b32ce89656f              # double 6.1046860000000001
	.quad	0x4006880b673c4f3c              # double 2.8164280000000002
	.quad	0x40206f9dd3bafd97              # double 8.2180009999999992
	.quad	0x4021ad29563a9f38              # double 8.8382059999999996
	.quad	0x3fde892684cf073a              # double 0.47712100000000002
	.quad	0x4013b5c2d2780779              # double 4.9275010000000004
	.quad	0x401f2d3415b1422d              # double 7.7941440000000001
	.quad	0x401bcf4fd6d7e88a              # double 6.9524530000000002
	.quad	0x3febd230b9dc2f40              # double 0.86940799999999996
	.quad	0x400be24463065f96              # double 3.4854820000000002
	.quad	0x401b6c9a77e5eaab              # double 6.856058
	.quad	0x3fda92684cf0739b              # double 0.415186
	.quad	0x3ff3918d25edd053              # double 1.2230350000000001
	.quad	0x40216d147f130596              # double 8.7130469999999995
	.quad	0x400886e9ff0cbaf9              # double 3.0658759999999998
	.quad	0x4004d2f4cf4a558f              # double 2.6030060000000002
	.quad	0x40209e086bdf4c2b              # double 8.3086579999999994
	.quad	0x401ad5ae1cde5d18              # double 6.708672
	.quad	0x40223dc70435efa6              # double 9.1206589999999998
	.quad	0x401c463d3e4ef028              # double 7.0685929999999999
	.quad	0x402316234a87e38f              # double 9.5432380000000005
	.quad	0x4020a7292c493426              # double 8.3264859999999992
	.quad	0x4010d783dff3f0fe              # double 4.210464
	.quad	0x40221322d0e56042              # double 9.0373750000000008
	.quad	0x3ff6bc6da4484945              # double 1.421003
	.quad	0x401d1862f5989df1              # double 7.2738149999999999
	.quad	0x4004b44bb1af3a15              # double 2.5880350000000001
	.quad	0x401507ce95faa8a8              # double 5.2576239999999999
	.quad	0x40016df2ecf20642              # double 2.1786859999999999
	.quad	0x4016a3a42f1ed17c              # double 5.6598059999999997
	.quad	0x40223ce4ead0c3d2              # double 9.1189339999999994
	.quad	0x3fd9fe9b7bf1e8e6              # double 0.406165
	.quad	0x3ff6a1ab4b72c519              # double 1.4144699999999999
	.quad	0x401b37357e670e2c              # double 6.8039149999999999
	.quad	0x400a8925785f8d2e              # double 3.3169659999999999
	.quad	0x3ff4740e5a35d67c              # double 1.2783340000000001
	.quad	0x40226f10a99b6f5d              # double 9.2169240000000006
	.quad	0x4001ba13c254a3c6              # double 2.2158579999999999
	.quad	0x401d8a875d56f32c              # double 7.3852820000000001
	.quad	0x40196583a53b8e4c              # double 6.3491350000000004
	.quad	0x401008bbd3804535              # double 4.0085290000000002
	.quad	0x401476638433d6c7              # double 5.1156139999999999
	.quad	0x401d027d028a1dfc              # double 7.2524300000000004
	.quad	0x401f1981beb18117              # double 7.774909
	.quad	0x4021356ece13f4aa              # double 8.6043610000000008
	.quad	0x3ffa4941c8216c61              # double 1.6428849999999999
	.quad	0x40208b7c5692b3cc              # double 8.2724329999999994
	.quad	0x4022a85186db50f4              # double 9.3287469999999999
	.quad	0x40115ccab3edd8b6              # double 4.3406169999999999
	.quad	0x3fe3ab4959e62563              # double 0.61465899999999996
	.quad	0x3fe7219220ff5409              # double 0.72284800000000005
	.quad	0x3fe51363f572de44              # double 0.65861700000000001
	.quad	0x401b280f12c27a63              # double 6.7891199999999996
	.quad	0x4009e42d8c2a454e              # double 3.236415
	.quad	0x4022c2a2e3c536d6              # double 9.3801489999999994
	.quad	0x40077a5ebb7739f3              # double 2.9347509999999999
	.quad	0x4010de2c12ad81ae              # double 4.2169650000000001
	.quad	0x4018ce3b03e20cd0              # double 6.201397
	.quad	0x4000cc4f7ec3547e              # double 2.099761
	.quad	0x40170a2d72ffd1dd              # double 5.7599390000000001
	.quad	0x40151e3a7daa4fca              # double 5.2795199999999998
	.quad	0x4017704790b84988              # double 5.859648
	.quad	0x4023de974a3400b9              # double 9.9347480000000008
	.quad	0x3ff52074ea8da7f4              # double 1.320424
	.quad	0x401c741bfbdf090f              # double 7.1133879999999996
	.quad	0x4017eb4fa48301a8              # double 5.9797960000000003
	.quad	0x4017c1797cc39ffd              # double 5.9389399999999997
	.quad	0x401231be6e653869              # double 4.548578
	.quad	0x3fe81a60d4562e0a              # double 0.75322
	.quad	0x400d35dcc63f1412              # double 3.6513
	.quad	0x40058cdb7ae5796c              # double 2.693778
	.quad	0x4000cbf7f06705c9              # double 2.0995940000000002
	.quad	0x3ff91a027525460b              # double 1.5688500000000001
	.quad	0x4010b37542a23c00              # double 4.1752520000000004
	.quad	0x400cc1333b96af04              # double 3.5943360000000002
	.quad	0x4015f43e10060781              # double 5.488518
	.quad	0x4013ddaf07bfe7e2              # double 4.966488
	.quad	0x4021b73affb04ee8              # double 8.8578720000000004
	.quad	0x401f99999999999a              # double 7.9000000000000004
	.quad	0x402092070b8cfbfc              # double 8.2852099999999992
	.quad	0x4017126c7eae5bc8              # double 5.7679919999999996
	.quad	0x3fe5127f5e84f095              # double 0.65850799999999998
	.quad	0x4011be5b4245f5ae              # double 4.4358950000000004
	.quad	0x400806162f166e01              # double 3.0029720000000002
	.quad	0x3fd34e48626f60e1              # double 0.301653
	.quad	0x40034d84d338f798              # double 2.4128509999999999
	.quad	0x401990f66a550870              # double 6.3915649999999999
	.quad	0x401811cfbb949625              # double 6.0173940000000004
	.quad	0x401950639d5e4a38              # double 6.3285049999999998
	.quad	0x401d48b60f1b25f6              # double 7.3210069999999998
	.quad	0x400e44c5974e65bf              # double 3.7835800000000002
	.quad	0x3ff05321e603d578              # double 1.0202960000000001
	.quad	0x4022156fda836eb5              # double 9.0418690000000002
	.quad	0x4012f12ec6bce853              # double 4.7355299999999998
	.quad	0x4022429131ec0b56              # double 9.1300139999999992
	.quad	0x4012e1d1d4738a3b              # double 4.7205269999999997
	.quad	0x3ffec81e4712e408              # double 1.9238569999999999
	.quad	0x3fd09146e4c0df59              # double 0.25886700000000001
	.quad	0x3fa36eb4e981387a              # double 0.037954000000000002
	.quad	0x4016df80dc33721d              # double 5.7182649999999997
	.quad	0x3ffc1bf5946c332f              # double 1.756826
	.quad	0x40002102ff8ec0f9              # double 2.0161190000000002
	.quad	0x401ae2af5771001d              # double 6.7213719999999997
	.quad	0x400fffeeb2d0a244              # double 3.9999669999999998
	.quad	0x4021a909d0635a42              # double 8.8301529999999993
	.quad	0x40002ff08893b7d8              # double 2.0234079999999999
	.quad	0x402023db3bfb58d1              # double 8.0700319999999994
	.quad	0x4010dbe7296f6513              # double 4.2147490000000003
	.quad	0x3ff30d4fdf3b645a              # double 1.19075
	.quad	0x3ff3d34efcbd5561              # double 1.2390890000000001
	.quad	0x4020823422467be5              # double 8.2543039999999994
	.quad	0x401f30fd7e45803d              # double 7.7978420000000001
	.quad	0x402152656abde3fc              # double 8.6609300000000004
	.quad	0x401cc8b0079a2835              # double 7.1959840000000002
	.quad	0x40138566490a350d              # double 4.8802729999999999
	.quad	0x401e702e2328f9f4              # double 7.6095509999999997
	.quad	0x401aa1db0142f61f              # double 6.6580620000000001
	.quad	0x40118fd976ff3ade              # double 4.3904779999999999
	.quad	0x401bf8a04d12018a              # double 6.9927989999999998
	.quad	0x3ff4fab7564302b4              # double 1.31121
	.quad	0x4009379e9d0e9920              # double 3.152158
	.quad	0x3fe87c02afdda8bd              # double 0.76513799999999998
	.quad	0x402308e5e679463d              # double 9.517379
	.quad	0x4005ebc169c23b79              # double 2.7401149999999999
	.quad	0x401afd7dbf487fcc              # double 6.7475500000000004
	.quad	0x401c6f85d744f5d3              # double 7.1089089999999997
	.quad	0x3ffa921bc126a65d              # double 1.660671
	.quad	0x4014ddd4c76d117b              # double 5.2166319999999997
	.quad	0x4015a2b063e07a29              # double 5.4088760000000002
	.quad	0x3fef549f94855da2              # double 0.97907999999999995
	.quad	0x4017653198288052              # double 5.8488220000000002
	.quad	0x400b068b9fdbd2fa              # double 3.378196
	.quad	0x400a3df97aaac109              # double 3.2802609999999999
	.quad	0x4020b50b73d188f4              # double 8.3536029999999996
	.quad	0x401e921101b00368              # double 7.6426429999999996
	.quad	0x401ecfc2eba27aea              # double 7.7028920000000003
	.quad	0x40227c0f23897204              # double 9.2423029999999997
	.quad	0x40125cc46950fc72              # double 4.5905930000000001
	.quad	0x3fe4860fe47991bc              # double 0.64136499999999996
	.quad	0x3ffc2a715831f03d              # double 1.760362
	.quad	0x3ffc0bb3c81908e6              # double 1.7528570000000001
	.quad	0x4015ca43bb40b34e              # double 5.4475239999999996
	.quad	0x40122f6f8f041462              # double 4.5463240000000003
	.quad	0x400cdb24e9c45458              # double 3.6070039999999999
	.quad	0x40148409a2403148              # double 5.1289429999999996
	.quad	0x3fe6c25f202107b8              # double 0.71122700000000005
	.quad	0x40210e787ce95fab              # double 8.5282630000000008
	.quad	0x4015ce1b8ed1bf7b              # double 5.4512770000000002
	.quad	0x401d83e39f77292c              # double 7.3787979999999997
	.quad	0x3ff30e3ef284167b              # double 1.1909780000000001
	.quad	0x400f51611ba3ca75              # double 3.914736
	.quad	0x4023eeb69db65ecc              # double 9.9662369999999995
	.quad	0x4019c7afea3df6dc              # double 6.4450070000000004
	.quad	0x401cd6f6512a94ff              # double 7.209924
	.quad	0x3ffb875b3e1437c5              # double 1.7205459999999999
	.quad	0x3ff9ba55d1c3ac93              # double 1.6079920000000001
	.quad	0x3fcbdde37585be1b              # double 0.21770900000000001
	.quad	0x3fec83e63e8dda49              # double 0.89110100000000003
	.quad	0x40227f6965f5275f              # double 9.2488510000000002
	.quad	0x40217e481f53825e              # double 8.7466439999999999
	.quad	0x400ba7820a30db6a              # double 3.4567909999999999
	.quad	0x401770b0f27bb2ff              # double 5.8600500000000002
	.quad	0x401e1238da3c2118              # double 7.5177949999999995
	.quad	0x40233289b951c5c5              # double 9.5987069999999992
	.quad	0x4020ea413db7f173              # double 8.4575289999999992
	.quad	0x401e366adb402d17              # double 7.5531420000000002
	.quad	0x4012c6f5019f3c71              # double 4.6942940000000002
	.quad	0x401cb4d4024b33db              # double 7.17659
	.quad	0x40206b736cdf266c              # double 8.2098650000000006
	.quad	0x401ab187a4a48f97              # double 6.6733690000000001
	.quad	0x4023c0385c67dfe3              # double 9.8754299999999997
	.quad	0x4019aa1272c94b38              # double 6.416086
	.quad	0x3ff5309741d084e8              # double 1.324363
	.quad	0x3fdb93250b52439a              # double 0.43085600000000002
	.quad	0x401de8bda9435ac9              # double 7.4772860000000003
	.quad	0x4021079bdc69f8c2              # double 8.5148609999999998
	.quad	0x40216a58b3f63c32              # double 8.7077080000000002
	.quad	0x4008f21144cbe1eb              # double 3.1181969999999999
	.quad	0x4009d24180d3cff6              # double 3.2276639999999999
	.quad	0x4002df6a0dbad3a6              # double 2.359089
	.quad	0x3ffcc23e9ea14057              # double 1.797423
	.quad	0x401fbcb1cc964628              # double 7.9342719999999999
	.quad	0x4021ef26aec0724b              # double 8.9670919999999992
	.quad	0x402083e3c105186e              # double 8.2575970000000005
	.quad	0x401a268a50507a6c              # double 6.5376370000000001
	.quad	0x400b4bb8800eae19              # double 3.4119730000000001
	.quad	0x3fa11e42e1262025              # double 0.033433999999999998
	.quad	0x402229f01b866e44              # double 9.0819100000000005
	.quad	0x4016c1cc532a4980              # double 5.6892560000000003
	.quad	0x401037c393682731              # double 4.0544570000000002
	.quad	0x401246659d12cade              # double 4.5687470000000001
	.quad	0x3fdef6e82949a565              # double 0.48381999999999997
	.quad	0x4017e450268900c5              # double 5.9729619999999999
	.quad	0x4022fd8e64b23140              # double 9.4952269999999998
	.quad	0x401d301e68a0d34a              # double 7.2969910000000002
	.quad	0x4009a96c3fc43b2e              # double 3.2077260000000001
	.quad	0x401e43a0407cc7d2              # double 7.5660410000000002
	.quad	0x3ff028e60807357e              # double 1.0099849999999999
	.quad	0x40176de8f6cefed6              # double 5.8573339999999998
	.quad	0x40123e1c15097c81              # double 4.5606540000000004
	.quad	0x4023539192641b33              # double 9.6632200000000008
	.quad	0x401af842fa509396              # double 6.7424429999999997
	.quad	0x4020ff5a31a4bdba              # double 8.4987349999999999
	.quad	0x4010a3882278d0cc              # double 4.1596989999999998
	.quad	0x4020d064ece9a2c6              # double 8.4070199999999993
	.quad	0x3ff43078d92fb19e              # double 1.2618339999999999
	.quad	0x40143b30b5aa7158              # double 5.0578029999999998
	.quad	0x402178cc144028e5              # double 8.735932
	.quad	0x4017a6c508b32ce9              # double 5.9128610000000004
	.quad	0x40194daf4adbc665              # double 6.3258640000000002
	.quad	0x402030a84be40421              # double 8.0950340000000001
	.quad	0x402382d688377186              # double 9.7555429999999994
	.quad	0x4002cb474107314d              # double 2.3492570000000002
	.quad	0x401168e2e2b8c75c              # double 4.3524279999999997
	.quad	0x401374af0bf1a5ca              # double 4.8639489999999999
	.quad	0x400684a83b1d0c80              # double 2.8147739999999999
	.quad	0x40171e7b80a9de8b              # double 5.7797679999999998
	.quad	0x3fdb45308bb90646              # double 0.42609799999999998
	.quad	0x4022d2411c2a0232              # double 9.4106529999999999
	.quad	0x4012afd2a62aa194              # double 4.6717019999999998
	.quad	0x4022594983d79075              # double 9.1743889999999997
	.quad	0x401a31e0828c36db              # double 6.5487080000000004
	.quad	0x3fde884c6a3bddfd              # double 0.47706900000000002
	.quad	0x3fe995011904b3c4              # double 0.79943900000000001
	.quad	0x40193965b20b8067              # double 6.3060520000000002
	.quad	0x3ff80217d2849cb2              # double 1.5005109999999999
	.quad	0x4019e70110a137f4              # double 6.4755900000000004
	.quad	0x401c4d27807789a4              # double 7.0753459999999997
	.quad	0x400bdbbf0dc768e0              # double 3.4822980000000001
	.quad	0x4018b3ad9f0a1be3              # double 6.1754670000000003
	.quad	0x40107b7457c0b136              # double 4.1205610000000004
	.quad	0x4000fe95b78cc9a7              # double 2.1243089999999998
	.quad	0x400729a34ca0c283              # double 2.8953310000000001
	.quad	0x401771af7d30ad47              # double 5.861021
	.quad	0x4005ccf95d4e8fb0              # double 2.725085
	.quad	0x40229c35ce182667              # double 9.3050979999999992
	.quad	0x401d56117720c8cd              # double 7.3340509999999997
	.quad	0x4010d0d62bf11f92              # double 4.2039419999999996
	.quad	0x40026dd93c46d82c              # double 2.3036370000000002
	.quad	0x4022d56f112fd32c              # double 9.4168629999999993
	.quad	0x401d4d2c386d2ed8              # double 7.3253640000000004
	.quad	0x4009d9e30014f8b6              # double 3.2313900000000002
	.quad	0x401ddaac53b0813d              # double 7.4635480000000003
	.quad	0x401630e410b630a9              # double 5.5477449999999999
	.quad	0x401d6e696a26e547              # double 7.3578239999999999
	.quad	0x4008f11409a24031              # double 3.1177139999999999
	.quad	0x401e269db65ecc3e              # double 7.5377109999999998
	.quad	0x3ff56d3b6cbd987c              # double 1.3391679999999999
	.quad	0x401a2901083dbc23              # double 6.5400429999999998
	.quad	0x4008f36a400fba88              # double 3.1188549999999999
	.quad	0x4021832031ceaf25              # double 8.7561049999999998
	.quad	0x4010b27c39368273              # double 4.174302
	.quad	0x400a105ea24cc682              # double 3.2579929999999999
	.quad	0x400b8284dfce3151              # double 3.4387300000000001
	.quad	0x401859f3c70c996b              # double 6.0878439999999996
	.quad	0x402174388ebcc6c5              # double 8.7269939999999995
	.quad	0x402144b72c5197a2              # double 8.6342099999999995
	.quad	0x400c2cc814d7279a              # double 3.5218660000000002
	.quad	0x3fe319ac79702e66              # double 0.59688399999999997
	.quad	0x402337807789a459              # double 9.6084019999999998
	.quad	0x401e2cacd184c272              # double 7.543628
	.quad	0x400bb0dcfcc5b8dc              # double 3.4613589999999999
	.quad	0x4010cfc08fa7a850              # double 4.2028829999999999
	.quad	0x400517cc39ffd60f              # double 2.6366200000000002
	.quad	0x3fc1e414e7ee9143              # double 0.13977300000000001
	.quad	0x401d9256bca5375d              # double 7.3929090000000004
	.quad	0x4010e8d6909aed57              # double 4.2273810000000003
	.quad	0x3feb1ad42c3c9eed              # double 0.84702500000000003
	.quad	0x3ff99b5d894812be              # double 1.6004309999999999
	.quad	0x401ce1ad6451b930              # double 7.2203879999999998
	.quad	0x3ff580e1719f7f8d              # double 1.3439650000000001
	.quad	0x4008fb6134ce3de6              # double 3.122744
	.quad	0x402102aa7ded6ba9              # double 8.5052070000000004
	.quad	0x40099d7cb2d905c0              # double 3.2018979999999999
	.quad	0x4020bfa93af74cd3              # double 8.3743379999999998
	.quad	0x40210557ff9b5632              # double 8.5104369999999996
	.quad	0x401dede6149c6f37              # double 7.4823230000000001
	.quad	0x402367722e1ac57e              # double 9.7020429999999998
	.quad	0x4022ecbf4cb1897a              # double 9.4623969999999993
	.quad	0x4023a208e1501190              # double 9.8164739999999995
	.quad	0x3fef76640a6b93cd              # double 0.98320200000000002
	.quad	0x402138b47c73eee5              # double 8.6107519999999997
	.quad	0x401c9cb07d0aed9a              # double 7.1530170000000002
	.quad	0x401734d6a161e4f7              # double 5.8015999999999996
	.quad	0x3fe5394face67d78              # double 0.663246
	.quad	0x401c3fbc1acde1a0              # double 7.0622410000000002
	.quad	0x401f439e6ab9b23e              # double 7.8160340000000001
	.quad	0x3fe5e63c74fb54a0              # double 0.68435500000000005
	.quad	0x401aaa0c6b484d77              # double 6.6660630000000003
	.quad	0x3fec2ade657b84dc              # double 0.88023300000000004
	.quad	0x401e69e2bcf91a33              # double 7.6034040000000002
	.quad	0x3ff6e00d1b71758e              # double 1.4297
	.quad	0x4012374794ea0770              # double 4.5539839999999998
	.quad	0x4017f68cef672b88              # double 5.9907719999999998
	.quad	0x3ff2b3ffac1d29dc              # double 1.1689449999999999
	.quad	0x400ffee9142b302f              # double 3.9994679999999998
	.quad	0x3fd72962cfd8f0c7              # double 0.36190099999999997
	.quad	0x4021c93e1c9b413a              # double 8.8930520000000008
	.quad	0x4017d3a53b8e4b88              # double 5.9566850000000002
	.quad	0x3fdb0ea18372e6a7              # double 0.42276799999999998
	.quad	0x40226cd9e83e425b              # double 9.2126000000000001
	.quad	0x401184f3ba775fb3              # double 4.3798360000000001
	.quad	0x4014cfdda8bd230c              # double 5.2029940000000003
	.quad	0x3fef5080b673c4f4              # double 0.97857700000000003
	.quad	0x40148331e3a7daa5              # double 5.12812
	.quad	0x3fdfd95dd4c76d11              # double 0.49764199999999997
	.quad	0x40236911f0c34c1b              # double 9.7052150000000008
	.quad	0x400290f51ac9afe2              # double 2.3207800000000001
	.quad	0x401cab2d0a244630              # double 7.1671639999999996
	.quad	0x3fff02b302f72b45              # double 1.938159
	.quad	0x4018d69b9d7fd827              # double 6.2095779999999996
	.quad	0x3fbac18f81e8a2ec              # double 0.104516
	.quad	0x40079b8887229e90              # double 2.9509439999999998
	.quad	0x4015c0ed80a17b0f              # double 5.4384059999999996
	.quad	0x3ffd27243137b070              # double 1.8220559999999999
	.quad	0x4021dc710cb295ea              # double 8.9305500000000002
	.quad	0x4002e727dcbddb98              # double 2.3628689999999999
	.quad	0x40055e7afa722186              # double 2.6711330000000002
	.quad	0x400cce3bcd35a858              # double 3.6006999999999998
	.quad	0x400f04bba12b5e53              # double 3.8773110000000002
	.quad	0x400ef22749f0e4da              # double 3.868239
	.quad	0x3ff0562bf11f926c              # double 1.0210379999999999
	.quad	0x40121c197e564734              # double 4.5274409999999996
	.quad	0x400db3a8a3f8982d              # double 3.7127240000000001
	.quad	0x401db96af038e2a0              # double 7.4310720000000003
	.quad	0x3fe89ad42c3c9eed              # double 0.76890000000000003
	.quad	0x401965fc3b4f6167              # double 6.3495949999999999
	.quad	0x401fddf6555c52e7              # double 7.9667599999999998
	.quad	0x40184bfe7e1fc090              # double 6.0742130000000003
	.quad	0x3ffb45e80bed740c              # double 1.7045669999999999
	.quad	0x401de34dad31fcd2              # double 7.4719759999999997
	.quad	0x3ff5382f51266341              # double 1.326217
	.quad	0x3ffc3b7f9d6f1130              # double 1.764526
	.quad	0x3ffe9e5d18090b41              # double 1.9136629999999999
	.quad	0x4023c12e1ef73c0c              # double 9.8773049999999997
	.quad	0x3ff174a66559f6ec              # double 1.0909789999999999
	.quad	0x400b9c896dd26b72              # double 3.4514339999999999
	.quad	0x400fe58ff7596851              # double 3.9870909999999999
	.quad	0x400418194c016052              # double 2.5117669999999999
	.quad	0x3fff06b59146e4c1              # double 1.939138
	.quad	0x3fd30c069e7fb268              # double 0.29760900000000001
	.quad	0x3faf0cbaf965b20c              # double 0.060644000000000003
	.quad	0x4023915aaf78feef              # double 9.7838949999999993
	.quad	0x40126de3fbbd7b20              # double 4.6073149999999998
	.quad	0x400c123d4f15e7c9              # double 3.5089060000000001
	.quad	0x4005f0614163779f              # double 2.7423730000000002
	.quad	0x4020ed6b00ffda40              # double 8.4637069999999994
	.quad	0x40220e779207d4e1              # double 9.0282560000000007
	.quad	0x401b21f9acffa7eb              # double 6.7831789999999996
	.quad	0x401748b2e9ccb7d4              # double 5.8209949999999999
	.quad	0x400c129b280f12c2              # double 3.5090849999999998
	.quad	0x4017cae3a3a8e714              # double 5.9481339999999996
	.quad	0x401043a7daa4fca4              # double 4.0660699999999999
	.quad	0x401d8c0b9991361e              # double 7.3867630000000002
	.quad	0x3ffea0f4d7add15f              # double 1.914296
	.quad	0x400569ca18bd6627              # double 2.6766549999999998
	.quad	0x401a7b96af038e2a              # double 6.620692
	.quad	0x4020c194e1a3f466              # double 8.3780889999999992
	.quad	0x3ffda9a91105e1c1              # double 1.8539209999999999
	.quad	0x40209f76e6106ab1              # double 8.3114539999999995
	.quad	0x4000347a5b0ff10f              # double 2.0256240000000001
	.quad	0x3ff7f8f47304039b              # double 1.4982800000000001
	.quad	0x40052087ca643cc0              # double 2.6408839999999998
	.quad	0x3ff8e5eedcc20d56              # double 1.556136
	.quad	0x4016d01711947cfa              # double 5.7032129999999999
	.quad	0x3fdf7e80389f83be              # double 0.49209599999999998
	.quad	0x3ffd611ba3ca7504              # double 1.8362080000000001
	.quad	0x402250c77dd872f3              # double 9.1577719999999996
	.quad	0x4021972fdb8fde2f              # double 8.7952870000000001
	.quad	0x3ffae49c2c1b10fd              # double 1.6808129999999999
	.quad	0x401f466ba493c89f              # double 7.8187699999999997
	.quad	0x4020647e6b3fe9fb              # double 8.1962770000000003
	.quad	0x400f2f3a9b068124              # double 3.8980610000000002
	.quad	0x401bed3e4ef0281c              # double 6.9816830000000003
	.quad	0x4016c1eabbcb1cc9              # double 5.6893719999999997
	.quad	0x401b587ebf22c01e              # double 6.8364209999999996
	.quad	0x401ea82278d0cc36              # double 7.6641940000000002
	.quad	0x402067705857afea              # double 8.2020289999999996
	.quad	0x400806516db0dd83              # double 3.003085
	.quad	0x402211426fe718a8              # double 9.0337099999999992
	.quad	0x4020a44e7253da73              # double 8.3209110000000006
	.quad	0x3ff202be8bc169c2              # double 1.1256699999999999
	.quad	0x4021aaa5a469d734              # double 8.8332949999999996
	.quad	0x401c6becedd48451              # double 7.1053959999999998
	.quad	0x3ffb93a604e1e710              # double 1.7235469999999999
	.quad	0x401bece28ed5f139              # double 6.9813330000000002
	.quad	0x4022787a4a48f96e              # double 9.2353079999999999
	.quad	0x402269ac9afe1da8              # double 9.2063950000000005
	.quad	0x401e6eda22f6a50d              # double 7.6082539999999996
	.quad	0x4009ce957470eb25              # double 3.2258710000000002
	.quad	0x401de6c8f7553693              # double 7.4753759999999998
	.quad	0x4021539a176ddacf              # double 8.6632850000000001
	.quad	0x40173a9435ac8a37              # double 5.8072059999999999
	.size	.L__constant_1999xf64_0, 15992

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
