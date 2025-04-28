	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	matmul                          # -- Begin function matmul
	.p2align	1
	.type	matmul,@function
matmul:                                 # @matmul
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
	slli	a1, a1, 4
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xa0, 0x01, 0x22, 0x11, 0x10, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 160 + 16 * vlenb
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s10, 272(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 368(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 360(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 352(a1)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t2, 344(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t3, 336(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s11, 328(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t4, 320(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s4, 192(a1)
	lwu	a1, 0(a2)
	lwu	a3, 4(a2)
	lwu	a4, 8(a2)
	lwu	a2, 12(a2)
	csrr	a5, vlenb
	li	t5, 10
	li	t6, 80
	li	s9, 9
	slli	a3, a3, 32
	or	s3, a3, a1
	slli	ra, a5, 4
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	t1, a5, 1
	slli	t0, a5, 3
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s3, s3, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	bge	s3, s2, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	s5, 0
	li	s8, 0
	slli	a1, s3, 3
	add	a1, a1, a7
	lwu	a2, 4(a1)
	lwu	a1, 0(a1)
	slli	a2, a2, 32
	or	a1, a1, a2
	mul	s6, s3, t5
	mul	s7, a1, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s5, s5, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s1, 0
	add	a1, s8, s6
	slli	a1, a1, 3
	add	a1, a1, s4
	fld	fa5, 0(a1)
	li	a2, 10
	mv	s0, s5
	mv	a4, s7
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	a6, zero, e32, m8, ta, ma
	vmv.v.x	v8, a1
	csrr	a1, vlenb
	slli	a1, a1, 3
	add	a1, a1, sp
	addi	a1, a1, 48
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	add	a1, s11, a4
	vsetvli	a5, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	addi	a3, sp, 48
	vs8r.v	v8, (a3)                        # Unknown-size Folded Spill
	add	a5, s10, s0
	vsetvli	a3, zero, e32, m8, ta, ma
	vid.v	v24
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 48
	vl8r.v	v0, (a3)                        # Unknown-size Folded Reload
	vsetvli	a3, zero, e32, m4, ta, ma
	vmslt.vv	v7, v24, v0
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 48
	vl8r.v	v16, (a3)                       # Unknown-size Folded Reload
	vmslt.vv	v6, v28, v20
	vsetvli	zero, zero, e64, m8, ta, mu
	vmv.v.i	v16, 0
	add	a3, a1, t0
	vmv1r.v	v0, v6
	vle64.v	v8, (a3), v0.t
	csrr	a6, vlenb
	slli	a6, a6, 3
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v8, (a6)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	addi	a6, sp, 48
	vl8r.v	v24, (a6)                       # Unknown-size Folded Reload
	vle64.v	v24, (a1), v0.t
	vle64.v	v16, (a5), v0.t
	add	a5, a5, t0
	vmv.v.i	v8, 0
	vmv1r.v	v0, v6
	vle64.v	v8, (a5), v0.t
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vfmul.vf	v8, v8, fa5
	csrr	a5, vlenb
	slli	a5, a5, 3
	add	a5, a5, sp
	addi	a5, a5, 48
	vl8r.v	v24, (a5)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	vse64.v	v8, (a3), v0.t
	vmv1r.v	v0, v7
	vse64.v	v16, (a1), v0.t
	add	s1, s1, t1
	add	a4, a4, ra
	add	s0, s0, ra
	sub	a2, a2, t1
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, s1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a1, a2
	blt	a2, t1, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a1, t1
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s11, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 48(a0)
	csrr	a0, vlenb
	slli	a0, a0, 4
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
	addi	sp, sp, -464
	.cfi_def_cfa_offset 464
	sd	ra, 456(sp)                     # 8-byte Folded Spill
	sd	s0, 448(sp)                     # 8-byte Folded Spill
	sd	s1, 440(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	li	a0, 864
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 280
	call	assemble_sparse
	addi	a0, sp, 400
	addi	t0, sp, 336
	ld	a5, 312(sp)
	ld	a6, 320(sp)
	ld	a7, 328(sp)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	ld	a1, 280(sp)
	ld	a2, 288(sp)
	ld	a3, 296(sp)
	ld	a4, 304(sp)
	vsetivli	zero, 8, e64, m4, ta, ma
	vle64.v	v12, (t0)
	ld	a0, 432(sp)
	sd	s0, 160(sp)
	sd	s1, 168(sp)
	sd	zero, 176(sp)
	li	t0, 1
	lui	t1, %hi(.L__constant_10x10xf64)
	addi	t1, t1, %lo(.L__constant_10x10xf64)
	lui	s1, 228023
	lui	t2, 4257
	addi	t3, sp, 184
	slli	s1, s1, 2
	addi	s1, s1, -273
	sd	a0, 96(sp)
	sd	s1, 104(sp)
	sd	t1, 112(sp)
	sd	t0, 152(sp)
	lui	a0, 41121
	addi	s1, t2, -1526
	vse64.v	v12, (sp)
	vmv.s.x	v10, s1
	addi	s1, sp, 120
	addi	a0, a0, -1536
	vmv.s.x	v11, a0
	addi	s0, sp, 64
	vsetivli	zero, 4, e64, m2, ta, ma
	vsext.vf8	v12, v10
	vse64.v	v12, (t3)
	addi	a0, sp, 224
	vsext.vf8	v12, v11
	vse64.v	v12, (s1)
	vse64.v	v8, (s0)
	call	matmul
	ld	a0, 232(sp)
	fld	fa5, 88(a0)
	fcvt.l.d	a0, fa5, rtz
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	ld	s0, 448(sp)                     # 8-byte Folded Reload
	ld	s1, 440(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	addi	sp, sp, 464
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	50                              # 0x32
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse
	.p2align	1
	.type	assemble_sparse,@function
assemble_sparse:                        # @assemble_sparse
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_11xindex)
	li	t3, 10
	lui	a6, %hi(.L__constant_50xindex)
	addi	a6, a6, %lo(.L__constant_50xindex)
	lui	a7, %hi(.L__constant_50xf64)
	addi	a7, a7, %lo(.L__constant_50xf64)
	li	t0, 2
	lui	t2, 228023
	lui	a4, %hi(.LCPI2_0)
	addi	a4, a4, %lo(.LCPI2_0)
	addi	a5, a0, 56
	lui	t1, %hi(.LCPI2_1)
	addi	t1, t1, %lo(.LCPI2_1)
	addi	a3, a0, 16
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a4)
	addi	a4, a1, %lo(.L__constant_11xindex)
	ld	a1, %lo(.L__constant_11xindex+8)(a1)
	slli	t2, t2, 2
	addi	a2, t2, -273
	sd	a2, 0(a0)
	sd	a4, 8(a0)
	sd	a6, 48(a0)
	sd	a7, 88(a0)
	mul	a2, a1, t3
	sd	t3, 128(a0)
	sd	t0, 136(a0)
	sd	a1, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a5)
	vle64.v	v8, (t1)
	addi	a0, a0, 96
	lui	a1, 40979
	addi	a1, a1, 512
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x401108db32c8709a              # double 4.2586486754263664
	.quad	0x3ff245dcb08215ab              # double 1.1420561690186826
	.quad	0x4023067f57b7dec2              # double 9.5126902973128189
	.quad	0x4012164ac8efc2f8              # double 4.5217696567858567
	.quad	0x4016a3873bf75d0b              # double 5.6596955651978176
	.quad	0x3fe1376b2b3d0d9a              # double 0.53801496930138915
	.quad	0x400f8942bc46043b              # double 3.9420218190066669
	.quad	0x401e015bb46cc3c0              # double 7.5013263884911225
	.quad	0x40230a431948b67e              # double 9.5200431729565445
	.quad	0x4022be4b47bfc086              # double 9.3716680928776093
	.quad	0x4001527cfe75ac27              # double 2.16527746960266
	.quad	0x400e6fe64925cb15              # double 3.8046384539278599
	.quad	0x4002018ace3a5f18              # double 2.2507530318797642
	.quad	0x4011421696b422e8              # double 4.3145392939993386
	.quad	0x400e03b3fa4db002              # double 3.7518081240614274
	.quad	0x3fced6f319dd3db0              # double 0.240934741620078
	.quad	0x4016de4491646322              # double 5.7170584409257419
	.quad	0x40190d3bbff4bdb4              # double 6.2629232400062627
	.quad	0x40094da0d1b2dd96              # double 3.162904394408268
	.quad	0x4006bfa42bdc5c50              # double 2.8435748507140843
	.quad	0x401fc3d6d292f6a3              # double 7.9412491705130916
	.quad	0x4021bd968dad5afc              # double 8.8702892564883697
	.quad	0x400770091822adf0              # double 2.9297048459609343
	.quad	0x40231d7bbcd698f0              # double 9.5575846683463794
	.quad	0x401f751ae7c9ba0e              # double 7.8643604485391858
	.quad	0x400b08b995fd5387              # double 3.3792602270063443
	.quad	0x40106a543bb67374              # double 4.1038369493588682
	.quad	0x4020574f59d51998              # double 8.1705272743827635
	.quad	0x401718e1c23bce85              # double 5.7742987011912463
	.quad	0x4023959992849974              # double 9.7921872889389547
	.quad	0x401d9f8f3dbd1b0e              # double 7.4058198591872166
	.quad	0x4003edceca141794              # double 2.4911170756703971
	.quad	0x3fe6a49b3920672a              # double 0.70759354741605773
	.quad	0x4006c44fbff2a124              # double 2.8458552356643327
	.quad	0x401ba1386218c5c1              # double 6.9074416473026199
	.quad	0x401d5764cbf3c22b              # double 7.3353454463508951
	.quad	0x4017f491be6235f3              # double 5.9888372180407599
	.quad	0x401c85c94ea124c7              # double 7.1306507383207594
	.quad	0x3fd6c7e08f9f9cd4              # double 0.35594953561526421
	.quad	0x401c631c82911e5f              # double 7.0967884446214091
	.quad	0x3ff702b8fd24bede              # double 1.4381647003573828
	.quad	0x400780980890081b              # double 2.9377899807887053
	.quad	0x401f5e36f0418320              # double 7.8420064487443426
	.quad	0x400e248155805eb2              # double 3.7678248100090395
	.quad	0x40156e4ab5c80b8a              # double 5.3577068713519882
	.quad	0x402161256f505b36              # double 8.689738730010145
	.quad	0x401038e049397292              # double 4.0555430833161541
	.quad	0x4013b691ad844961              # double 4.9282900917044978
	.quad	0x4005e049b1f91f73              # double 2.7345155624533901
	.quad	0x3fee481331dfc0b4              # double 0.94629821530363367
	.quad	0x401b3e07148c37e5              # double 6.8105738840658647
	.quad	0x400ed89f6922dfd5              # double 3.8557728017585569
	.quad	0x4017baa0cc3d6c68              # double 5.9322540199746996
	.quad	0x400a571a4442d144              # double 3.2925305683985773
	.quad	0x40068d2ad216f085              # double 2.8189293301821317
	.quad	0x401824b8bead8a5c              # double 6.0358609956188864
	.quad	0x401678e686585763              # double 5.6180668822688373
	.quad	0x400521e02545ba80              # double 2.641540805044599
	.quad	0x4002d037e21caf8c              # double 2.3516690888408842
	.quad	0x4022674139b66722              # double 9.2016695056113953
	.quad	0x3fbc97949da0e9d0              # double 0.11168793533662513
	.quad	0x401d1ddd093d2682              # double 7.2791634982655768
	.quad	0x40123e1088e7bd10              # double 4.5606099502031299
	.quad	0x3fb76dffe38d86b0              # double 0.091522210173503593
	.quad	0x4020b4fb591bd610              # double 8.3534801336745943
	.quad	0x401865e82ffe26b3              # double 6.0995185374137462
	.quad	0x3fdf7fd05ac1ddc8              # double 0.49217614043251645
	.quad	0x4020f0d71a6f443a              # double 8.4703911076377274
	.quad	0x401e42846b0a0437              # double 7.5649582600463451
	.quad	0x4001b131c45438d6              # double 2.2115207040979881
	.quad	0x3fdcc1233a75dbf0              # double 0.4492881842519969
	.quad	0x401fa37272846ccc              # double 7.9096162694288061
	.quad	0x401629abafdf2440              # double 5.5406939964241815
	.quad	0x4020316ee1966595              # double 8.0965490814294672
	.quad	0x3fd9f188387d96fc              # double 0.40536695019396496
	.quad	0x3fc4f68c6c527bd8              # double 0.16377406396074323
	.quad	0x4017747ed2095522              # double 5.8637650316425454
	.quad	0x40226adb1839f3ac              # double 9.2087028094045635
	.quad	0x400d56d5e17bfbd2              # double 3.6674001327478232
	.quad	0x40221a260a134bb0              # double 9.0510714672617212
	.quad	0x4021142449104386              # double 8.5393393356660106
	.quad	0x401d176962fd96e9              # double 7.2728629557875388
	.quad	0x3ff30f5de74b897d              # double 1.1912516627276937
	.quad	0x3fe13c43726d1fde              # double 0.53860637997513172
	.quad	0x4019f16c56d20083              # double 6.4857648435282753
	.quad	0x400c1ee05eeb7eaa              # double 3.5150763908021263
	.quad	0x3ffda80993bc0ad6              # double 1.8535247584228975
	.quad	0x401d4a72fc084aa5              # double 7.3227042560635356
	.quad	0x4020adf290c329e2              # double 8.3397412527310202
	.quad	0x4016b67a579f23f9              # double 5.6782010737306274
	.quad	0x4000aebc132bb2c0              # double 2.0853196618757863
	.quad	0x3fee544c30b8dcc6              # double 0.94779023662604156
	.quad	0x40080226f294c9d4              # double 3.0010508491188634
	.quad	0x4020cd1cc3d96095              # double 8.4006100848057859
	.quad	0x401f542bb69bf9d4              # double 7.8321980030727509
	.quad	0x40160c625ed1ef65              # double 5.5120940032610166
	.quad	0x400d34d2a70da114              # double 3.6507924128565126
	.quad	0x400ba295f16fca80              # double 3.4543875562897597
	.quad	0x40192e36eec7e4fc              # double 6.2951314267640974
	.quad	0x401b151e21083294              # double 6.7706227456334496
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.size	.L__constant_50xindex, 400

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x400f682adc4c9c91              # double 3.9258630000000001
	.quad	0x4021e3b256ffc116              # double 8.9447200000000002
	.quad	0x401b8c347e8ccdd9              # double 6.8869189999999998
	.quad	0x40171d0e12e83a11              # double 5.7783740000000003
	.quad	0x4014df993d5347a6              # double 5.2183580000000003
	.quad	0x401e09f51697f1fa              # double 7.5097240000000003
	.quad	0x40052b05b7cfe586              # double 2.646007
	.quad	0x3fd091105e1c1509              # double 0.25885399999999997
	.quad	0x4020fbdf8f473040              # double 8.4919399999999996
	.quad	0x40200ff993d5347a              # double 8.0312009999999994
	.quad	0x3fe20472c0e7bc3c              # double 0.56304299999999996
	.quad	0x40148623d0bfa094              # double 5.1309959999999997
	.quad	0x400c55a31a4bdba1              # double 3.5418150000000002
	.quad	0x401cd42d8c2a454e              # double 7.2072050000000001
	.quad	0x4021ae0c7c0f4517              # double 8.8399389999999993
	.quad	0x401617e3d1cc100e              # double 5.5233299999999996
	.quad	0x4023b78012dfd695              # double 9.8583990000000003
	.quad	0x40031b1422ccb3a2              # double 2.3882219999999998
	.quad	0x401af73083558a76              # double 6.7413959999999999
	.quad	0x4003d606b7aa25d9              # double 2.4795050000000001
	.quad	0x401c32b8c75c4a84              # double 7.0495330000000003
	.quad	0x3ff6c50268900c52              # double 1.423098
	.quad	0x3ff1caa326e11559              # double 1.111972
	.quad	0x400e29c3ce2089e3              # double 3.7703929999999999
	.quad	0x400cabb4d48882f1              # double 3.5838410000000001
	.quad	0x401997e308787486              # double 6.3983270000000001
	.quad	0x401240229a5ebb77              # double 4.5626319999999998
	.quad	0x402179e40c8472c1              # double 8.7380680000000002
	.quad	0x3fe2abf9830e3cda              # double 0.58349300000000004
	.quad	0x3ff8ad3a604e1e71              # double 1.542292
	.quad	0x400078a6dacabc51              # double 2.0589119999999999
	.quad	0x402308fcd67fd3f6              # double 9.5175540000000005
	.quad	0x3ff728ae74f2f124              # double 1.4474320000000001
	.quad	0x40072904f6dfc5ce              # double 2.8950290000000001
	.quad	0x4012b917d6b65a9b              # double 4.6807550000000004
	.quad	0x40124e7b3d8e0008              # double 4.5766419999999997
	.quad	0x402126adb402d16c              # double 8.5755440000000007
	.quad	0x401e69999999999a              # double 7.6031250000000004
	.quad	0x3ff2e06b7aa25d8d              # double 1.1797899999999999
	.quad	0x40183cb039ef0f17              # double 6.059266
	.quad	0x3ff234ddf86e3b47              # double 1.137907
	.quad	0x4011e927d45a5fc8              # double 4.4776910000000001
	.quad	0x401d77064ece9a2c              # double 7.3662349999999996
	.quad	0x3fe09070fbeb9e49              # double 0.51763199999999998
	.quad	0x40063b30728e92d5              # double 2.7789009999999998
	.quad	0x401721e8e6080735              # double 5.7831149999999996
	.quad	0x4023f752fc2656ac              # double 9.9830550000000002
	.quad	0x400287df5cf2495e              # double 2.316344
	.quad	0x401fe8ed1bf7ad4b              # double 7.9774669999999998
	.quad	0x4005c1c0ca600b03              # double 2.7196060000000002
	.size	.L__constant_50xf64, 400

	.section	".note.GNU-stack","",@progbits
