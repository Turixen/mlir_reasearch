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
	.quad	0x3ff61a71d3ffe7e8              # double 1.3814562112079276
	.quad	0x401f0c6867819287              # double 7.7621170208773326
	.quad	0x402196be7361418e              # double 8.7944217735501091
	.quad	0x400c8651c3ba8d4b              # double 3.5655856410318498
	.quad	0x400b059afaed57ff              # double 3.3777370074922142
	.quad	0x402119a493098bad              # double 8.5500837277557711
	.quad	0x401d8edf4f8f6ee2              # double 7.389523738030876
	.quad	0x400ed1c9ebaedf03              # double 3.8524359143010556
	.quad	0x40060b0c2c4b5184              # double 2.7553943119511946
	.quad	0x4023358e1cad7015              # double 9.604599853679284
	.quad	0x401b6633811ca6b2              # double 6.8498058484780575
	.quad	0x3f9761b337f6d840              # double 0.022833633700166667
	.quad	0x40235072609261bb              # double 9.6571226290405913
	.quad	0x402300c689fd7b9c              # double 9.501514732544642
	.quad	0x4005a019d2a19872              # double 2.7031742530407934
	.quad	0x4013aaffff209d4a              # double 4.9169921744972473
	.quad	0x401bd292582b16a2              # double 6.9556363846110418
	.quad	0x3ff623cba2df23c8              # double 1.3837391245053698
	.quad	0x401bc299e9d7f560              # double 6.9400402582226377
	.quad	0x401736e29b3b9333              # double 5.8035988097297375
	.quad	0x401458d276352f08              # double 5.0867403478585018
	.quad	0x3fe79b006d36aa72              # double 0.73767110186356732
	.quad	0x4014c4ff87ed0e58              # double 5.1923810232579726
	.quad	0x40236a3c6c2cc8d1              # double 9.7074922375362877
	.quad	0x4022dc226f3f5f9e              # double 9.4299502148494945
	.quad	0x401523899c91b652              # double 5.2847046340881025
	.quad	0x40185294a7d6a60e              # double 6.0806452011834278
	.quad	0x400c8ac535f9b73c              # double 3.5677589623291208
	.quad	0x4012d63abf119440              # double 4.7092084745864327
	.quad	0x3ffb376d5ba1a7f0              # double 1.7010320262293099
	.quad	0x400224085fb32474              # double 2.2675940968079491
	.quad	0x4023ca4a3bb5bd87              # double 9.8950976046896936
	.quad	0x3fe0efa10ec1a64c              # double 0.52925160295598905
	.quad	0x400efe33e5dfd20d              # double 3.8741224249772643
	.quad	0x4015c5ddb796f5f7              # double 5.4432285962952767
	.quad	0x4000280d6d999ded              # double 2.0195568621163518
	.quad	0x4010b60c9cd65875              # double 4.177782488424886
	.quad	0x4020ca8284f17f42              # double 8.3955270333095804
	.quad	0x4010489364693cf2              # double 4.070874756739828
	.quad	0x400009ef0826c384              # double 2.0048504483060601
	.quad	0x3ff505407944be79              # double 1.3137821900417335
	.quad	0x4013fa876d1ad0a7              # double 4.9946572349182707
	.quad	0x4008f599e272388e              # double 3.1199224177463014
	.quad	0x4023c49d413099f0              # double 9.8840122577502996
	.quad	0x4017be46bb381b83              # double 5.9358166935916215
	.quad	0x401ce624dc8ffbe0              # double 7.2247499907379904
	.quad	0x400be0bf1a6f461a              # double 3.4847395005424575
	.quad	0x400171b23a350e8c              # double 2.180515722984472
	.quad	0x401778af09f1a8c7              # double 5.8678552201983569
	.quad	0x40215a584911dd4c              # double 8.6764548143679789
	.quad	0x40167abb8178e3d5              # double 5.6198559026751882
	.quad	0x400093e16958e32a              # double 2.0722072820903081
	.quad	0x4001a55a7777dbcc              # double 2.205738957734388
	.quad	0x4012cb85f1fd3fff              # double 4.6987531481572651
	.quad	0x401b6da2c7370c84              # double 6.8570662619923759
	.quad	0x4018bcc13d82a68b              # double 6.1843309031479619
	.quad	0x400adfed80ea621d              # double 3.3593397208717435
	.quad	0x40071159670f547e              # double 2.8834713031342849
	.quad	0x3ffd7457de30f4a4              # double 1.8409041098923717
	.quad	0x3feb503d90b9bf3e              # double 0.85354498163903947
	.quad	0x40218df269e4c4df              # double 8.7772400943526332
	.quad	0x4005e743611be1e3              # double 2.7379214846262001
	.quad	0x3ffae08052a3d9aa              # double 1.6798098781706394
	.quad	0x4018ac10671cb548              # double 6.1680313216468861
	.quad	0x3fd1cc2bdcc54244              # double 0.2780866294824913
	.quad	0x4022e7a583321efb              # double 9.4524346350367434
	.quad	0x3fec1bc925690494              # double 0.87839181238827501
	.quad	0x40122b09b630cba7              # double 4.5420292346270008
	.quad	0x40155ade6cc3a816              # double 5.3387391085070899
	.quad	0x400a52e098740436              # double 3.2904674444585238
	.quad	0x4014e8ef09d3bfb4              # double 5.2274743590823398
	.quad	0x401e0085703aaf57              # double 7.5005090270822938
	.quad	0x401a9f9a5f478c64              # double 6.6558623206538847
	.quad	0x401181573ab370bd              # double 4.3763093158742636
	.quad	0x400de164576001ae              # double 3.7350546671079519
	.quad	0x4020406fbdb6007e              # double 8.1258525166197124
	.quad	0x400a1d638ba29c31              # double 3.2643500241279289
	.quad	0x40235dcf5deea106              # double 9.6832227090640224
	.quad	0x40230c3d4d46f9d5              # double 9.523905196107913
	.quad	0x400a9c6f1c7712ca              # double 3.3263838027799908
	.quad	0x40189bbb510026e0              # double 6.1520817428915677
	.quad	0x4007353b6da30b6e              # double 2.9009922566778448
	.quad	0x400123e1d005311f              # double 2.1425205470642505
	.quad	0x3fbbda999625aa50              # double 0.10880432048512856
	.quad	0x4016a205f37a8e5a              # double 5.6582258266021999
	.quad	0x4019d62f13f0fb30              # double 6.4591639629204991
	.quad	0x4016bc68950cc360              # double 5.6839926995315579
	.quad	0x4023c6a17e3259cd              # double 9.8879508434737548
	.quad	0x4013f52eb8b95042              # double 4.9894360411745442
	.quad	0x40205f677533c8e2              # double 8.1863361955369705
	.quad	0x3fef256ff1a3b33a              # double 0.97331998057561653
	.quad	0x3ff86709b4e79b6c              # double 1.5251557413664285
	.quad	0x4010a73461ae6171              # double 4.1632857573207369
	.quad	0x3fe7f3abcf7356e6              # double 0.74849501149830355
	.quad	0x3ff10e38809ee6b6              # double 1.065971853661194
	.quad	0x400dd35b8e564a9d              # double 3.7282019729694427
	.quad	0x3fc4785a62d468b0              # double 0.15992288423223533
	.quad	0x3ffa4512216a1ba1              # double 1.6418629937413487
	.quad	0x400a800c5be32b21              # double 3.3125235727979008
	.quad	0x4015694b21886945              # double 5.3528256644734187
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_5xindex,@object    # @__constant_5xindex
	.p2align	6, 0x0
.L__constant_5xindex:
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.size	.L__constant_5xindex, 40

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.size	.L__constant_11xindex, 88

	.type	.L__constant_5xf64,@object      # @__constant_5xf64
	.p2align	6, 0x0
.L__constant_5xf64:
	.quad	0x400eecbd987c6328              # double 3.865596
	.quad	0x3ffafd9018e75793              # double 1.6869050000000001
	.quad	0x400e13f961804d98              # double 3.7597529999999999
	.quad	0x40156c67168f8e7e              # double 5.3558620000000001
	.quad	0x401a51d4f9c1f85d              # double 6.5799139999999996
	.size	.L__constant_5xf64, 40

	.section	".note.GNU-stack","",@progbits
