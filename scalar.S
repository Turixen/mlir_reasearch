	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	matmul                          # -- Begin function matmul
	.p2align	1
	.type	matmul,@function
matmul:                                 # @matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	sd	s3, 48(sp)                      # 8-byte Folded Spill
	sd	s4, 40(sp)                      # 8-byte Folded Spill
	sd	s5, 32(sp)                      # 8-byte Folded Spill
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	sd	s8, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	li	s2, 0
	li	t5, 0
	ld	s8, 192(sp)
	ld	a6, 288(sp)
	ld	t0, 280(sp)
	ld	t1, 272(sp)
	ld	t2, 264(sp)
	ld	t3, 256(sp)
	ld	s0, 248(sp)
	ld	t4, 240(sp)
	ld	s3, 112(sp)
	li	t6, 2
	li	s7, 1
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	s2, s2, 16
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_7 Depth 3
	blt	t6, t5, .LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a1, t5, 3
	add	a1, a1, a2
	lwu	s4, 4(a1)
	lwu	s1, 0(a1)
	lwu	a4, 12(a1)
	lwu	a1, 8(a1)
	slli	s4, s4, 32
	or	s5, s4, s1
	slli	a4, a4, 32
	or	s4, a4, a1
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	a1, 0
	slli	a4, s5, 3
	add	s1, a7, a4
	lwu	s6, 0(s1)
	lwu	s1, 4(s1)
	add	a4, a4, s3
	fld	fa5, 0(a4)
	slli	s6, s6, 4
	slli	s1, s1, 36
	or	a4, s1, s6
	mv	s1, s2
	bltz	s7, .LBB0_4
.LBB0_7:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a3, s0, a4
	add	a5, s8, s1
	fld	fa4, 0(a5)
	fld	fa3, 0(a3)
	addi	a1, a1, 1
	addi	a4, a4, 8
	fmul.d	fa4, fa5, fa4
	fadd.d	fa4, fa3, fa4
	fsd	fa4, 0(a3)
	addi	s1, s1, 8
	bge	s7, a1, .LBB0_7
	j	.LBB0_4
.LBB0_8:
	sd	t4, 0(a0)
	sd	s0, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	ld	s3, 48(sp)                      # 8-byte Folded Reload
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	ld	s5, 32(sp)                      # 8-byte Folded Reload
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	ld	s8, 8(sp)                       # 8-byte Folded Reload
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	matmul, .Lfunc_end0-matmul
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -544
	.cfi_def_cfa_offset 544
	sd	ra, 536(sp)                     # 8-byte Folded Spill
	sd	s0, 528(sp)                     # 8-byte Folded Spill
	sd	s1, 520(sp)                     # 8-byte Folded Spill
	sd	s2, 512(sp)                     # 8-byte Folded Spill
	sd	s3, 504(sp)                     # 8-byte Folded Spill
	sd	s4, 496(sp)                     # 8-byte Folded Spill
	sd	s5, 488(sp)                     # 8-byte Folded Spill
	sd	s6, 480(sp)                     # 8-byte Folded Spill
	sd	s7, 472(sp)                     # 8-byte Folded Spill
	sd	s8, 464(sp)                     # 8-byte Folded Spill
	sd	s9, 456(sp)                     # 8-byte Folded Spill
	sd	s10, 448(sp)                    # 8-byte Folded Spill
	sd	s11, 440(sp)                    # 8-byte Folded Spill
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
	li	a0, 128
	call	malloc
	mv	s3, a0
	addi	a0, a0, 63
	andi	s2, a0, -64
	addi	a0, sp, 280
	call	test_assemble
	ld	a1, 280(sp)
	ld	a2, 288(sp)
	ld	a3, 296(sp)
	ld	a4, 304(sp)
	ld	a5, 312(sp)
	ld	a6, 320(sp)
	ld	a7, 328(sp)
	ld	t3, 336(sp)
	ld	t0, 344(sp)
	ld	t1, 352(sp)
	ld	t2, 360(sp)
	ld	t6, 368(sp)
	ld	s5, 376(sp)
	ld	s4, 384(sp)
	ld	t5, 392(sp)
	ld	a0, 400(sp)
	ld	s0, 408(sp)
	ld	s1, 416(sp)
	ld	s6, 424(sp)
	ld	t4, 432(sp)
	li	s7, 1
	li	s8, 2
	li	s9, 4
	li	s10, 3
	lui	s11, %hi(.L__constant_3x2xf64)
	addi	s11, s11, %lo(.L__constant_3x2xf64)
	lui	ra, 228023
	sd	a0, 64(sp)
	sd	s0, 72(sp)
	sd	s1, 80(sp)
	sd	s6, 88(sp)
	sd	t6, 32(sp)
	sd	s5, 40(sp)
	sd	s4, 48(sp)
	sd	t5, 56(sp)
	addi	a0, sp, 224
	sd	s8, 192(sp)
	sd	s8, 200(sp)
	sd	s7, 208(sp)
	sd	s3, 160(sp)
	sd	s2, 168(sp)
	sd	zero, 176(sp)
	sd	s9, 184(sp)
	sd	s10, 128(sp)
	sd	s8, 136(sp)
	sd	s8, 144(sp)
	sd	s7, 152(sp)
	slli	ra, ra, 2
	addi	s1, ra, -273
	sd	t4, 96(sp)
	sd	s1, 104(sp)
	sd	s11, 112(sp)
	sd	zero, 120(sp)
	sd	t3, 0(sp)
	sd	t0, 8(sp)
	sd	t1, 16(sp)
	sd	t2, 24(sp)
	call	matmul
	li	a0, 1
	ld	ra, 536(sp)                     # 8-byte Folded Reload
	ld	s0, 528(sp)                     # 8-byte Folded Reload
	ld	s1, 520(sp)                     # 8-byte Folded Reload
	ld	s2, 512(sp)                     # 8-byte Folded Reload
	ld	s3, 504(sp)                     # 8-byte Folded Reload
	ld	s4, 496(sp)                     # 8-byte Folded Reload
	ld	s5, 488(sp)                     # 8-byte Folded Reload
	ld	s6, 480(sp)                     # 8-byte Folded Reload
	ld	s7, 472(sp)                     # 8-byte Folded Reload
	ld	s8, 464(sp)                     # 8-byte Folded Reload
	ld	s9, 456(sp)                     # 8-byte Folded Reload
	ld	s10, 448(sp)                    # 8-byte Folded Reload
	ld	s11, 440(sp)                    # 8-byte Folded Reload
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
	addi	sp, sp, 544
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.globl	test_assemble                   # -- Begin function test_assemble
	.p2align	1
	.type	test_assemble,@function
test_assemble:                          # @test_assemble
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_4xindex_0)
	lui	a6, %hi(.L__constant_4xindex)
	addi	a6, a6, %lo(.L__constant_4xindex)
	lui	a3, %hi(.L__constant_4xf64)
	addi	a3, a3, %lo(.L__constant_4xf64)
	li	a4, 4
	li	a5, 3
	li	a2, 1
	sd	zero, 96(a0)
	sd	a4, 104(a0)
	sd	a2, 112(a0)
	sd	a5, 120(a0)
	lui	a5, 228023
	slli	a5, a5, 2
	addi	a5, a5, -273
	sd	a4, 64(a0)
	sd	a2, 72(a0)
	sd	a5, 80(a0)
	sd	a3, 88(a0)
	addi	a3, a1, %lo(.L__constant_4xindex_0)
	ld	a1, %lo(.L__constant_4xindex_0+24)(a1)
	sd	a2, 32(a0)
	sd	a5, 40(a0)
	sd	a6, 48(a0)
	sd	zero, 56(a0)
	sd	a4, 128(a0)
	sd	a4, 136(a0)
	sd	a1, 144(a0)
	sd	a1, 152(a0)
	sd	a5, 0(a0)
	sd	a3, 8(a0)
	sd	zero, 16(a0)
	sd	a4, 24(a0)
	ret
.Lfunc_end2:
	.size	test_assemble, .Lfunc_end2-test_assemble
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_4xindex_0,@object  # @__constant_4xindex_0
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_4xindex_0:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.size	.L__constant_4xindex_0, 32

	.type	.L__constant_4xindex,@object    # @__constant_4xindex
	.p2align	6, 0x0
.L__constant_4xindex:
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.size	.L__constant_4xindex, 32

	.type	.L__constant_4xf64,@object      # @__constant_4xf64
	.p2align	6, 0x0
.L__constant_4xf64:
	.quad	0x4008000000000000              # double 3
	.quad	0x4014000000000000              # double 5
	.quad	0x401c000000000000              # double 7
	.quad	0x4010000000000000              # double 4
	.size	.L__constant_4xf64, 32

	.type	.L__constant_3x2xf64,@object    # @__constant_3x2xf64
	.p2align	6, 0x0
.L__constant_3x2xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x4010000000000000              # double 4
	.zero	16
	.quad	0x0000000000000000              # double 0
	.quad	0x4018000000000000              # double 6
	.size	.L__constant_3x2xf64, 48

	.section	".note.GNU-stack","",@progbits
