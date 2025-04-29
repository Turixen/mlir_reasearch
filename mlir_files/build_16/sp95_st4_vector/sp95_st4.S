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
	.quad	5                               # 0x5
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
	lui	a6, %hi(.L__constant_5xindex)
	addi	a6, a6, %lo(.L__constant_5xindex)
	lui	a7, %hi(.L__constant_5xf64)
	addi	a7, a7, %lo(.L__constant_5xf64)
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
	lui	a1, 40976
	addi	a1, a1, 1280
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
	.quad	0x40143b8097aeac41              # double 5.0581077289926393
	.quad	0x4023291cbb1d9f23              # double 9.5802973245295728
	.quad	0x3fdd8f663fdbf43c              # double 0.4618774055123287
	.quad	0x40168f131966f9fa              # double 5.6397212952710962
	.quad	0x400d30f1bd3fc7e4              # double 3.6488985810365069
	.quad	0x3fedc45d5db39d58              # double 0.93022030163858016
	.quad	0x4004c640d9d9bf35              # double 2.5968033809257585
	.quad	0x3feaa5ffa86ae240              # double 0.83276350873990879
	.quad	0x401472fcc0d504c7              # double 5.1122923021332047
	.quad	0x3fec5bb900cae910              # double 0.88619661478813505
	.quad	0x3fd65fbecd14e248              # double 0.34959383037088232
	.quad	0x400e2ab511c2400a              # double 3.7708531749158327
	.quad	0x40170831207edc72              # double 5.7579999043874626
	.quad	0x4021125767d3f75b              # double 8.5358231016395418
	.quad	0x3fe66e078d8e90ea              # double 0.70093133590537815
	.quad	0x401c58de3aeb7634              # double 7.0867852407659946
	.quad	0x402144df169b7246              # double 8.6345145287279017
	.quad	0x400d866d811a394c              # double 3.6906385503890871
	.quad	0x402259af4281ada9              # double 9.1751652510927943
	.quad	0x4013c8a2ec964a60              # double 4.9459340063791331
	.quad	0x40072279dbc84cd4              # double 2.8918339891912215
	.quad	0x402076450fea989d              # double 8.2309956525680779
	.quad	0x3ff7d3b90b4a5fc4              # double 1.4891901436840138
	.quad	0x400daafdd396be22              # double 3.7084919481637977
	.quad	0x400757b7615229d2              # double 2.9178302386473911
	.quad	0x4020933b3d56e2dd              # double 8.2875613373338926
	.quad	0x3fe4e4de5e0f34c2              # double 0.65293806429840395
	.quad	0x401610ed4e4761a0              # double 5.5165302496974675
	.quad	0x4023d65c7b4584c5              # double 9.9186743280755624
	.quad	0x401a40378a630ce1              # double 6.5627118704753409
	.quad	0x4008044b8e694a8a              # double 3.002097237194282
	.quad	0x400e934e6d35fe54              # double 3.8219269306280612
	.quad	0x401ca394c1d1998c              # double 7.1597471508197366
	.quad	0x3ff728322051e91a              # double 1.4473134291170653
	.quad	0x400a0d1feb2d3730              # double 3.2564085362600039
	.quad	0x40170b75fae1e582              # double 5.7611922455192843
	.quad	0x40177474418eca20              # double 5.8637247317697359
	.quad	0x400779c5348e3302              # double 2.9344581704993979
	.quad	0x40102634030e564b              # double 4.0373077847958241
	.quad	0x401fa444851ea4e1              # double 7.9104176330522202
	.quad	0x402335ca557c053b              # double 9.6050593103305939
	.quad	0x40019041182642a1              # double 2.1954366575885875
	.quad	0x40238020e2a79196              # double 9.7502508954574232
	.quad	0x40003fdb753aaa22              # double 2.0311803015258798
	.quad	0x4006d646bfaa7e22              # double 2.8546271299271817
	.quad	0x3fd01e85ea046278              # double 0.25186298230395421
	.quad	0x3fd3c3d0f7c05cfc              # double 0.30882667726969237
	.quad	0x3fe19f25e89d2a92              # double 0.5506772559395634
	.quad	0x400749a63af7aad2              # double 2.9109615904647876
	.quad	0x4023412a013752f5              # double 9.627273595813202
	.quad	0x40234f5e7aadda28              # double 9.6550176942083254
	.quad	0x4000a3b4ba7671b3              # double 2.0799345557590754
	.quad	0x4022b0c2b19a113e              # double 9.3452353954859255
	.quad	0x4020d795a64eb126              # double 8.4210636111316255
	.quad	0x400419e7726628d0              # double 2.5126484811235983
	.quad	0x4015e3f00b326956              # double 5.4725953816908568
	.quad	0x40061ce222b75e8f              # double 2.764103194447507
	.quad	0x4014ed146c0f1d76              # double 5.231523216650535
	.quad	0x400ba0c38158af30              # double 3.453497896689349
	.quad	0x40227c9bfb626e7e              # double 9.2433775479942106
	.quad	0x4010eb9e04755c0e              # double 4.2300949761038407
	.quad	0x4020953f1df6ca54              # double 8.2914971698529953
	.quad	0x401f4e6151cca720              # double 7.826543119541185
	.quad	0x3fdb2773e0729304              # double 0.4242829982634222
	.quad	0x401ea973c8cc486e              # double 7.6654807448086171
	.quad	0x3f8b10d070499280              # double 0.01321566431688237
	.quad	0x402023b43e6093d2              # double 8.0697345250027048
	.quad	0x40176412ad5343bb              # double 5.8477274972983038
	.quad	0x3fdd3b3b22094f4c              # double 0.45674017261375321
	.quad	0x4020eaaa343e94ec              # double 8.4583298040765484
	.quad	0x3ff0fdbba7cfacbc              # double 1.0619465403677131
	.quad	0x3ff8fda5beb83b05              # double 1.561925644873271
	.quad	0x3ffa37f6aa36e118              # double 1.6386629723547852
	.quad	0x400d081d8b79e404              # double 3.6289626022885404
	.quad	0x3f9ad1d610f7b0c0              # double 0.026191086564651966
	.quad	0x400333aa40ee05be              # double 2.4002270767821008
	.quad	0x40217e371ecf06f9              # double 8.7465142848700328
	.quad	0x4017d4fe21ae4520              # double 5.9580006849876384
	.quad	0x4020e0a8b5ae86d7              # double 8.4387871528191862
	.quad	0x4001cb9e073247a2              # double 2.2244225084513838
	.quad	0x4020d891a94e669e              # double 8.4229863079265748
	.quad	0x4012c7b23f10c196              # double 4.6950158933617754
	.quad	0x40108f127ab4692f              # double 4.1397189304937418
	.quad	0x4022bcd6164eba71              # double 9.3688208552459588
	.quad	0x3ffbd1a1291bcb6b              # double 1.7386790853313083
	.quad	0x400f6ae25cf8fd18              # double 3.9271895659909539
	.quad	0x3fd350e2150e07e4              # double 0.30181171470769486
	.quad	0x4003fe8bc0c7fcc3              # double 2.4992899952918335
	.quad	0x400a569c682551aa              # double 3.2922905098332267
	.quad	0x40072e48ddf1850e              # double 2.8975999202090241
	.quad	0x40181bc79cdb266c              # double 6.0271286495932195
	.quad	0x402131dd02f3c84b              # double 8.5973893091760569
	.quad	0x3fe128d55c17e8d0              # double 0.53623455035201495
	.quad	0x4010ffa8719d474c              # double 4.2496659996266537
	.quad	0x4023621af2e6b66b              # double 9.6916118532783084
	.quad	0x40017c63c8fb5c54              # double 2.1857371999463258
	.quad	0x401ec51ce707565f              # double 7.6924930666187654
	.quad	0x401939de127df3f0              # double 6.3065112008452928
	.quad	0x4020d4abf7afcf70              # double 8.4153745081054865
	.quad	0x40213052b85e0496              # double 8.5943811049240075
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_5xindex,@object    # @__constant_5xindex
	.p2align	6, 0x0
.L__constant_5xindex:
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.size	.L__constant_5xindex, 40

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.size	.L__constant_11xindex, 88

	.type	.L__constant_5xf64,@object      # @__constant_5xf64
	.p2align	6, 0x0
.L__constant_5xf64:
	.quad	0x3fec3b14a90470a8              # double 0.882212
	.quad	0x4023a0ec31162281              # double 9.8143019999999996
	.quad	0x400a2d2674080f99              # double 3.272046
	.quad	0x4008226dce39b457              # double 3.0168110000000001
	.quad	0x401a2cc5b8dc5500              # double 6.543723
	.size	.L__constant_5xf64, 40

	.section	".note.GNU-stack","",@progbits
