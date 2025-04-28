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
	.quad	35                              # 0x23
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
	lui	a6, %hi(.L__constant_35xindex)
	addi	a6, a6, %lo(.L__constant_35xindex)
	lui	a7, %hi(.L__constant_35xf64)
	addi	a7, a7, %lo(.L__constant_35xf64)
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
	lui	a1, 40978
	addi	a1, a1, 768
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
	.quad	0x401d995a3ae4520a              # double 7.3997582628112557
	.quad	0x4023c2e33cee44e1              # double 9.8806399384361061
	.quad	0x401591f5476c15f5              # double 5.3925372276039427
	.quad	0x3ff5796439a1d94e              # double 1.3421365977533983
	.quad	0x40228366c7ecc9f0              # double 9.2566435314701891
	.quad	0x40049e05c0ecc6ba              # double 2.5771594116457353
	.quad	0x3feb8030022dbc0c              # double 0.85939789224164675
	.quad	0x402328ed1e8428c2              # double 9.5799340759589349
	.quad	0x400c81a122e062e7              # double 3.563295624230125
	.quad	0x4016c383564d114e              # double 5.6909306988275841
	.quad	0x400a4caa19f640ce              # double 3.2874338176990028
	.quad	0x401c78ab40b4fd9c              # double 7.1178407774417813
	.quad	0x400b3d134628e21b              # double 3.4048219186045237
	.quad	0x3fec95bb96c9c8be              # double 0.89327792597602929
	.quad	0x40210263b1f88d19              # double 8.50466686400482
	.quad	0x4004185e9bc76e78              # double 2.511899201415698
	.quad	0x4019c1fda5cac617              # double 6.439444151402788
	.quad	0x40108eb2f3bdb425              # double 4.1393545231376594
	.quad	0x400aa07d0c14d734              # double 3.3283635085926111
	.quad	0x40103d6fa2869c5b              # double 4.0599961657199755
	.quad	0x4015a06ac6ccf5d8              # double 5.4066573202703339
	.quad	0x4022cd9690b16b87              # double 9.401539346368521
	.quad	0x40172e0ee825e5bd              # double 5.7949787400370356
	.quad	0x40131bcd80608565              # double 4.7771511134063518
	.quad	0x401ae8ab7322056a              # double 6.7272165288462507
	.quad	0x40206ad81ab1810f              # double 8.2086799947433331
	.quad	0x402315bc1387ad71              # double 9.5424505332109408
	.quad	0x4002322e6e91bf30              # double 2.274502624342766
	.quad	0x4004f7c38b22c894              # double 2.6209784383764347
	.quad	0x40196d67d51c6208              # double 6.3568414019177979
	.quad	0x40161a74464a8ee1              # double 5.5258341773039499
	.quad	0x4012639c9a015931              # double 4.5972770751307488
	.quad	0x4023d8b39c432884              # double 9.9232453186016371
	.quad	0x400a53f82346c3f3              # double 3.2910006290408034
	.quad	0x402001234853e517              # double 8.0022223093424554
	.quad	0x401e4567bfd518b5              # double 7.5677785848439969
	.quad	0x4012e92d7c117aba              # double 4.7277125726383762
	.quad	0x40236df883b8c07c              # double 9.7147866404559337
	.quad	0x40118e6dd2d1e2f3              # double 4.3890908184628072
	.quad	0x3ff5cfc6f98b5259              # double 1.3632268665143299
	.quad	0x4015dc7dc65b2cf6              # double 5.4653235428952396
	.quad	0x3ff5429269199279              # double 1.3287529092278005
	.quad	0x400e1fb01ad88332              # double 3.7654726121258131
	.quad	0x4017a9357500c840              # double 5.9152429849364694
	.quad	0x4014c6029c6e87fa              # double 5.1933693354094377
	.quad	0x401623df6e3c62b4              # double 5.5350320076328678
	.quad	0x401e0504c602d283              # double 7.504901021883259
	.quad	0x4017571c27cd2371              # double 5.835068342109353
	.quad	0x40209b08ba5666ee              # double 8.3028009634467388
	.quad	0x402204f0152dc008              # double 9.0096441858622853
	.quad	0x400033b55fedff2d              # double 2.0252482885843137
	.quad	0x4020d4727fa056ea              # double 8.4149360545374812
	.quad	0x40069071757ce0b0              # double 2.8205289057478566
	.quad	0x3ff5bc27471952ea              # double 1.358435895662462
	.quad	0x401819a14ba0246a              # double 6.0250293556683605
	.quad	0x401402517a2b90f0              # double 5.0022639359560657
	.quad	0x4021610867d14db1              # double 8.6895172541615882
	.quad	0x401eb03424f43310              # double 7.672073914913895
	.quad	0x401d8f7f517c8f0e              # double 7.3901341182970679
	.quad	0x4022cc2a78774808              # double 9.3987615247351783
	.quad	0x40205902172b12be              # double 8.1738440742568592
	.quad	0x3ff56bfcf34057d3              # double 1.3388642789845917
	.quad	0x401e6bd69ad6d0d5              # double 7.6053108399975899
	.quad	0x402320a79194f832              # double 9.5637784475657988
	.quad	0x4013a3093e423972              # double 4.9092149475021518
	.quad	0x40106e0d12db70e7              # double 4.1074717470585034
	.quad	0x40163263dcbf7b15              # double 5.5492090694304084
	.quad	0x401cbc68ee4419fc              # double 7.1839940289560182
	.quad	0x4020e37819366d22              # double 8.4442756537378649
	.quad	0x3ff1c3d92e479fb9              # double 1.110314541607279
	.quad	0x4006974a9e3036f8              # double 2.8238727911437955
	.quad	0x401e3ee54323a86c              # double 7.5614214411271909
	.quad	0x3ff4707dd77030b7              # double 1.2774637618595486
	.quad	0x40041a617f1ceb50              # double 2.5128812723827778
	.quad	0x4021ac91a4adbd2a              # double 8.8370486700137754
	.quad	0x401c92cd06190893              # double 7.1433602288035614
	.quad	0x402304676840761d              # double 9.5086014345825393
	.quad	0x3ff3e120044f1118              # double 1.2424621742548592
	.quad	0x3ff0b9d3bd3e684e              # double 1.0453679458937759
	.quad	0x401fa62babf61599              # double 7.9122759694049813
	.quad	0x4014299ff472c56e              # double 5.0406492419291293
	.quad	0x401f56b0c96e8d56              # double 7.8346587632871287
	.quad	0x401bd799935629f0              # double 6.9605467816677304
	.quad	0x40053b48ae87ab08              # double 2.6539472232010475
	.quad	0x4003f097b01ce59a              # double 2.4924768217867497
	.quad	0x4010310ed3c154b4              # double 4.0479081236600685
	.quad	0x401efbc4150ae386              # double 7.745865181722257
	.quad	0x401a773f7fe53e18              # double 6.6164531692188788
	.quad	0x4021bbb03aaaaa3e              # double 8.8665788968402204
	.quad	0x4021491947f2abb8              # double 8.6427710040787673
	.quad	0x3ff8f966b7ae1ac5              # double 1.560888974666953
	.quad	0x3ff8690ee6b9acb9              # double 1.5256489765841208
	.quad	0x402051266d26429c              # double 8.1584962948994004
	.quad	0x40217adada352ace              # double 8.7399509611035704
	.quad	0x40220d2450348a0c              # double 9.0256676735052892
	.quad	0x4017cbce805b16bf              # double 5.9490299277874206
	.quad	0x401eccde26900d20              # double 7.7000661874219816
	.quad	0x3fec7842648bef44              # double 0.88968009603511477
	.quad	0x400693f0bef09a1b              # double 2.8222365300346275
	.quad	0x4014c88177977426              # double 5.1958063780012136
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_35xindex,@object   # @__constant_35xindex
	.p2align	6, 0x0
.L__constant_35xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	5                               # 0x5
	.quad	2                               # 0x2
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.size	.L__constant_35xindex, 280

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.size	.L__constant_11xindex, 88

	.type	.L__constant_35xf64,@object     # @__constant_35xf64
	.p2align	6, 0x0
.L__constant_35xf64:
	.quad	0x40176cbff47735c2              # double 5.8562010000000004
	.quad	0x4010e9ea14057082              # double 4.2284319999999997
	.quad	0x4016f050374ff866              # double 5.7346810000000001
	.quad	0x3ff5774ddf86e3b4              # double 1.3416269999999999
	.quad	0x402087e154434e33              # double 8.2653909999999993
	.quad	0x400a6096787ce960              # double 3.2971620000000001
	.quad	0x4018497635e7429a              # double 6.0717400000000001
	.quad	0x401f82abef06b378              # double 7.8776089999999996
	.quad	0x4020086b9c304ccf              # double 8.0164460000000002
	.quad	0x400f22e90364388f              # double 3.8920460000000001
	.quad	0x4022d2eddce7cd03              # double 9.4119709999999994
	.quad	0x40100c5e6ff7dfa0              # double 4.012079
	.quad	0x3fe65dc8323358f3              # double 0.69894800000000001
	.quad	0x40236f607c4199fe              # double 9.7175329999999995
	.quad	0x4011a693c03bc4d2              # double 4.4126729999999998
	.quad	0x40133c436fc158fb              # double 4.8088509999999998
	.quad	0x40157b35b0bbf50e              # double 5.3703219999999998
	.quad	0x4001ed39da16616b              # double 2.2408329999999999
	.quad	0x4022d9f77292c493              # double 9.4257159999999995
	.quad	0x3fd3c7820a30db6a              # double 0.30905199999999999
	.quad	0x4016159253543aeb              # double 5.5210660000000003
	.quad	0x40225405f6ba0621              # double 9.1641080000000006
	.quad	0x4021477e3d1cc101              # double 8.6396350000000002
	.quad	0x401a39884c6a3bde              # double 6.556184
	.quad	0x40220d29563a9f38              # double 9.0257059999999996
	.quad	0x401dfd6909aed56b              # double 7.4974709999999999
	.quad	0x402353d07c84b5dd              # double 9.6637000000000004
	.quad	0x400abe35c5b4aa97              # double 3.342876
	.quad	0x4008315ce9e5e248              # double 3.0241030000000002
	.quad	0x401db938151a4378              # double 7.4308779999999998
	.quad	0x400ebfd47bedb728              # double 3.8436669999999999
	.quad	0x40197269595feda6              # double 6.3617299999999997
	.quad	0x402366c3547e0696              # double 9.7007089999999998
	.quad	0x400861bd1ed9dfdb              # double 3.0477240000000001
	.quad	0x402199b6f5caf2d8              # double 8.800224
	.size	.L__constant_35xf64, 280

	.section	".note.GNU-stack","",@progbits
