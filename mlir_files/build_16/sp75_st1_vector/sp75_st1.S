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
	.quad	25                              # 0x19
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
	lui	a6, %hi(.L__constant_25xindex)
	addi	a6, a6, %lo(.L__constant_25xindex)
	lui	a7, %hi(.L__constant_25xf64)
	addi	a7, a7, %lo(.L__constant_25xf64)
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
	addi	a1, a1, -1792
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
	.quad	0x4002230b64beddd0              # double 2.2671115751979656
	.quad	0x4020d130a1078fee              # double 8.4085741349917633
	.quad	0x4011d3bf7c597250              # double 4.4567851476281959
	.quad	0x40200877cea8d51e              # double 8.0165390568823192
	.quad	0x401f7513cb7f9783              # double 7.8643333241105919
	.quad	0x40230dc8ba8db6a5              # double 9.5269220636358316
	.quad	0x4022969de66a83b7              # double 9.2941734318754765
	.quad	0x40226717474095df              # double 9.2013494745578424
	.quad	0x4014271e5d033afc              # double 5.0382017644139943
	.quad	0x4022e5974cf19642              # double 9.4484199566751421
	.quad	0x400fd367ed65f244              # double 3.9782255694138104
	.quad	0x40214dc754fc5ad0              # double 8.6519114072847572
	.quad	0x401661a48162a19f              # double 5.5953541008424557
	.quad	0x3fdbb535b3057a30              # double 0.43293516619260952
	.quad	0x401a39d71b2df440              # double 6.5564846274183424
	.quad	0x400fee677e127cb2              # double 3.9914083337203801
	.quad	0x3ffe6aff2fa67239              # double 1.9011222707114384
	.quad	0x3ff862c32a92fc26              # double 1.5241119063428044
	.quad	0x400fdaeaefd320aa              # double 3.9818934189134625
	.quad	0x401550a4dcaec94e              # double 5.3287538987809295
	.quad	0x401c9657cb0148c6              # double 7.1468192786725862
	.quad	0x400ec80337e73140              # double 3.8476623885564152
	.quad	0x401723d70cf02368              # double 5.7850000402039328
	.quad	0x401eefe1e0cfa2c1              # double 7.7342600943308648
	.quad	0x3ff7ab58341bfda1              # double 1.4793321643372581
	.quad	0x400daae4a4540244              # double 3.7084439123284785
	.quad	0x401469cad37e24be              # double 5.1033127828351876
	.quad	0x401d5adfbebdcf9e              # double 7.3387441447593158
	.quad	0x3fe14d48a31c06ca              # double 0.54068405015296972
	.quad	0x402223bfb8994fa9              # double 9.0698220908305576
	.quad	0x401557a93328c06d              # double 5.3356063836691705
	.quad	0x40210ad76b3b6ae5              # double 8.5211747655898282
	.quad	0x3ffae7b19360c934              # double 1.6815658337550987
	.quad	0x401a440eb6c4f0fc              # double 6.5664623792365511
	.quad	0x3feca58ee60d2cbc              # double 0.89520974094320804
	.quad	0x4014be14f772615d              # double 5.1856268561899386
	.quad	0x401bdc81e8498bfb              # double 6.9653393072976497
	.quad	0x402022c449c041ab              # double 8.0679038092792634
	.quad	0x4011f149d8e5b293              # double 4.4856332674213659
	.quad	0x40216eff6eb5dbc0              # double 8.7167925450320354
	.quad	0x400634e1acd40144              # double 2.7758210661124014
	.quad	0x3ffc720fd5d64048              # double 1.7778471329693435
	.quad	0x401e826711837f40              # double 7.6273462997922366
	.quad	0x40034fbc7c432bc6              # double 2.4139337261198959
	.quad	0x40114efd2610608f              # double 4.3271375606056059
	.quad	0x40210c3266c5bea1              # double 8.5238220325839524
	.quad	0x3ff4a36805be4bad              # double 1.2898941253995233
	.quad	0x4023711e8dba3d9a              # double 9.7209362306446572
	.quad	0x40224a1c71ec8f0e              # double 9.1447482682483745
	.quad	0x4010059af0fadc8c              # double 4.0054738667596546
	.quad	0x4023de50cbf93785              # double 9.9342101804466071
	.quad	0x4004df407e2496d6              # double 2.6090097289005412
	.quad	0x4022df38c71248fc              # double 9.4359800538845703
	.quad	0x401b7da9f148db78              # double 6.8727185917585913
	.quad	0x4011ea0f239d8243              # double 4.478573376167847
	.quad	0x4010f833450f35ec              # double 4.2423830786260446
	.quad	0x4022911f17abb3ef              # double 9.283440341672728
	.quad	0x40103b37d1e07264              # double 4.0578301232568244
	.quad	0x40070163cc128967              # double 2.87567862922258
	.quad	0x4020fd9d5b80b970              # double 8.4953411669382319
	.quad	0x40163f9760b3299f              # double 5.5621008977272188
	.quad	0x40210516c883bada              # double 8.5099394474795425
	.quad	0x401aecee11b7f3a8              # double 6.731376911976362
	.quad	0x40007ee353a20cb3              # double 2.0619570287541023
	.quad	0x4013a0d91876582c              # double 4.9070781538230612
	.quad	0x4021a66db77e9c01              # double 8.8250558225681761
	.quad	0x401a4d346ee97df4              # double 6.5753953294765672
	.quad	0x3ff1b915764de4d1              # double 1.1076864835034039
	.quad	0x3fe74caab86e37a2              # double 0.72810874959553851
	.quad	0x3fea879079e82eec              # double 0.82904838380770007
	.quad	0x4006d81023a7d06c              # double 2.8554995332324804
	.quad	0x401244ee32b5fdc5              # double 4.5673149036005656
	.quad	0x3fc8afa1050af140              # double 0.19285977121570319
	.quad	0x4008c37b3a0f89dc              # double 3.0954498802177408
	.quad	0x401a58e976a2f1d9              # double 6.5868280922845424
	.quad	0x400a6084a5419bb2              # double 3.2971280012747792
	.quad	0x4016c1db50bd5aea              # double 5.6893131843159868
	.quad	0x400c78ddfc31e73b              # double 3.5590171530465375
	.quad	0x402096f0d45fe7c2              # double 8.294806133944693
	.quad	0x4019ac9c9710636e              # double 6.418566093802708
	.quad	0x4015c8e1def6aca2              # double 5.4461741293008874
	.quad	0x401555020688c6c0              # double 5.3330155392629308
	.quad	0x4004664cd96c3458              # double 2.5499512659212478
	.quad	0x401798c18e972a90              # double 5.8991758613361895
	.quad	0x40237c1b7219dec6              # double 9.7423968941287846
	.quad	0x4012fc54eb2b6886              # double 4.7464176888698884
	.quad	0x3ff02bb6a3515532              # double 1.0106722240064525
	.quad	0x40016fc281db7c97              # double 2.1795702118975657
	.quad	0x3fe9e6f06f7185d0              # double 0.80944082037256671
	.quad	0x4014c44293daed3d              # double 5.1916602232334386
	.quad	0x40106c79959e51c1              # double 4.1059325578575576
	.quad	0x3ffabe31e8f3708f              # double 1.6714343166013668
	.quad	0x4002ae5e1b00db35              # double 2.3351404294620814
	.quad	0x401441531df9bbe7              # double 5.0637936290431531
	.quad	0x40116e8ba2736feb              # double 4.3579545386273635
	.quad	0x3fb7685d3a0aac50              # double 0.091436220808348567
	.quad	0x401e16472bed7d82              # double 7.5217558730795435
	.quad	0x40136207275c3838              # double 4.8457304143940334
	.quad	0x401e136527d3eccc              # double 7.5189405654047725
	.quad	0x40219775e84150b6              # double 8.7958214359026492
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_25xindex,@object   # @__constant_25xindex
	.p2align	6, 0x0
.L__constant_25xindex:
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	5                               # 0x5
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.size	.L__constant_25xindex, 200

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.size	.L__constant_11xindex, 88

	.type	.L__constant_25xf64,@object     # @__constant_25xf64
	.p2align	6, 0x0
.L__constant_25xf64:
	.quad	0x4009315df6555c53              # double 3.149105
	.quad	0x4021f95b1422ccb4              # double 8.9870230000000006
	.quad	0x3ff5583621fafc8b              # double 1.334036
	.quad	0x4001385f8d2e514c              # double 2.1525259999999999
	.quad	0x40003cfaacd9e83e              # double 2.0297749999999999
	.quad	0x3fb62b1704ff4342              # double 0.086595000000000005
	.quad	0x402313ac929aa1d7              # double 9.5384259999999994
	.quad	0x40176cf893faf428              # double 5.8564170000000004
	.quad	0x4015c05c4651f3e9              # double 5.4378520000000004
	.quad	0x4021425c3dee7818              # double 8.6296099999999996
	.quad	0x3ff3855fbb517a46              # double 1.220062
	.quad	0x401048a86d71f362              # double 4.0709549999999997
	.quad	0x400a0176577531db              # double 3.2507139999999999
	.quad	0x4002623e9ea14057              # double 2.297971
	.quad	0x400ce99a62ed3522              # double 3.6140639999999999
	.quad	0x401bf9e6256366d8              # double 6.9940420000000003
	.quad	0x40150ffc5479d4d8              # double 5.2656109999999998
	.quad	0x4012bf7d73c92578              # double 4.6870019999999997
	.quad	0x3fe98fb86f47b678              # double 0.798794
	.quad	0x401af47cfa26a22b              # double 6.7387579999999998
	.quad	0x4007eac53b0813cb              # double 2.9896340000000001
	.quad	0x3ff23cd035371972              # double 1.1398470000000001
	.quad	0x400fc231832fcac9              # double 3.969821
	.quad	0x402340cda6e75ff6              # double 9.6265689999999999
	.quad	0x4021638c32a8c9b8              # double 8.6944289999999995
	.size	.L__constant_25xf64, 200

	.section	".note.GNU-stack","",@progbits
