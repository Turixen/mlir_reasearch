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
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
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
	ld	s10, 224(sp)
	ld	a6, 320(sp)
	ld	t0, 312(sp)
	ld	t1, 304(sp)
	ld	t2, 296(sp)
	ld	t3, 288(sp)
	ld	s11, 280(sp)
	ld	t4, 272(sp)
	ld	s4, 144(sp)
	lwu	a1, 0(a2)
	lwu	a3, 4(a2)
	lwu	a4, 8(a2)
	lwu	a2, 12(a2)
	csrr	a5, vlenb
	li	t5, 10
	li	t6, 80
	slli	a3, a3, 32
	or	s3, a3, a1
	li	s9, 9
	vsetvli	a1, zero, e32, m2, ta, ma
	vid.v	v8
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	ra, a5, 2
	srli	a2, a5, 1
	vsetvli	zero, zero, e64, m4, ta, ma
	vmv.v.i	v12, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s3, s3, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	bge	s3, s2, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	s7, 0
	li	s8, 0
	slli	a3, s3, 3
	add	a3, a3, a7
	lwu	a4, 4(a3)
	lwu	a3, 0(a3)
	slli	a4, a4, 32
	or	a3, a3, a4
	mul	s5, s3, t5
	mul	s6, a3, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s7, s7, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s0, 0
	add	a3, s8, s5
	slli	a3, a3, 3
	add	a3, a3, s4
	fld	fa5, 0(a3)
	li	a4, 10
	mv	a1, s7
	mv	a5, s6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m2, ta, ma
	vmslt.vx	v0, v8, a3
	add	a3, s11, a5
	vmv4r.v	v16, v12
	add	s1, s10, a1
	vmv4r.v	v20, v12
	vsetvli	zero, zero, e64, m4, ta, mu
	vle64.v	v16, (a3), v0.t
	vle64.v	v20, (s1), v0.t
	add	s0, s0, a2
	add	a5, a5, ra
	add	a1, a1, ra
	vfmul.vf	v20, v20, fa5
	vfadd.vv	v16, v16, v20
	vse64.v	v16, (a3), v0.t
	sub	a4, a4, a2
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, s0, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a3, a4
	blt	a4, a2, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a3, a2
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s11, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 112
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
	.quad	0x40097b58ea5aef2e              # double 3.1852281865120835
	.quad	0x400c45ef7dcd2fcf              # double 3.5341481998675373
	.quad	0x400229ea6f3c6b7c              # double 2.2704666796029738
	.quad	0x4020d3438d969acf              # double 8.4126247640937475
	.quad	0x3ff5cdfc83e502cd              # double 1.3627896453983113
	.quad	0x4023043a4c03f6a0              # double 9.508257270320712
	.quad	0x3ff6de93b1c32708              # double 1.4293400710907367
	.quad	0x40155041b2981bda              # double 5.3283756165828553
	.quad	0x401a6229d7ae3146              # double 6.5958627414768838
	.quad	0x402124a9fa39d001              # double 8.5716093249866407
	.quad	0x4021de6d673ba7a0              # double 8.9344284305878432
	.quad	0x401470847f56cae3              # double 5.1098804375385241
	.quad	0x40160c1bc45c8e3a              # double 5.5118246728412092
	.quad	0x401269b044224854              # double 4.6032114644932172
	.quad	0x40233216abda32b2              # double 9.5978292182784095
	.quad	0x4022a4c6b7f5f657              # double 9.3218286025759607
	.quad	0x4001b0f45baac606              # double 2.2114035760394044
	.quad	0x4005dc243fab8001              # double 2.7324910139286662
	.quad	0x4023e269482d1869              # double 9.9422094874427831
	.quad	0x4011dc268bedcdae              # double 4.4649907935994815
	.quad	0x40103315e78a2fe3              # double 4.0498882463543593
	.quad	0x4012cfc659275aaa              # double 4.7029050760526534
	.quad	0x401655dec6968d53              # double 5.5838576344861677
	.quad	0x400b8f7c663aeae8              # double 3.4450614916544176
	.quad	0x400c80282527d9d3              # double 3.5625765707766077
	.quad	0x401c84ee0b2d07cd              # double 7.1298143144831103
	.quad	0x402273dfc7152f65              # double 9.2263166631088982
	.quad	0x4000bf395f0dbe08              # double 2.0933711458271809
	.quad	0x4022103db429d2df              # double 9.0317207623533573
	.quad	0x401238690421fbc1              # double 4.5550881047956304
	.quad	0x40131d2018e202c4              # double 4.7784427535959288
	.quad	0x401a708592052b12              # double 6.6098845306066938
	.quad	0x3fa87ff2e6e55260              # double 0.047851172147294063
	.quad	0x4007cf36ca8abe65              # double 2.9761787246314264
	.quad	0x40228b999f6e898c              # double 9.2726564238007753
	.quad	0x4004035999e688a9              # double 2.5016357444265691
	.quad	0x3ff4eaf162c3f4d5              # double 1.3073591096902437
	.quad	0x4004af2f51a620a9              # double 2.5855394724677194
	.quad	0x4020e586ebeec01e              # double 8.44829499520716
	.quad	0x3fec6a5c8506bb6c              # double 0.88798356992434213
	.quad	0x40163a501fe87f05              # double 5.5569462762503052
	.quad	0x401f1e8870b020fe              # double 7.7798173530102286
	.quad	0x4013d9d744d24f1a              # double 4.962735247932665
	.quad	0x401891f2d288d663              # double 6.1425278564471197
	.quad	0x4012fd86d6613c2b              # double 4.747584676441913
	.quad	0x400c829d38cfea7e              # double 3.5637764395190166
	.quad	0x401d5d5af7e8745a              # double 7.3411673293713537
	.quad	0x3ff1ab748c7089e8              # double 1.1043591962739985
	.quad	0x4023655f22c270b9              # double 9.6979914533952626
	.quad	0x401148295d0045cf              # double 4.3204702884117543
	.quad	0x3ffa5116a0778af9              # double 1.6447969692459863
	.quad	0x401b59d04bd60fc2              # double 6.8377086495783619
	.quad	0x4012c055cecc0f59              # double 4.6878273307846365
	.quad	0x4005b352211410a2              # double 2.7125589927910179
	.quad	0x4011f27a3beb136b              # double 4.4867944109181321
	.quad	0x40173c68291623d6              # double 5.8089910907519506
	.quad	0x3ff9d4e9c04de278              # double 1.6144807350048307
	.quad	0x3fd4bda2426483e8              # double 0.32407433017402676
	.quad	0x3fe1d9447317e164              # double 0.55777189711720299
	.quad	0x40131c02c2ceb920              # double 4.7773542822526736
	.quad	0x4021ef362f9240c4              # double 8.9672102800399287
	.quad	0x3fcc97b4faeb49a8              # double 0.22337972881230184
	.quad	0x401e722492025848              # double 7.6114676298075849
	.quad	0x4019ade10c366fa6              # double 6.4198038013672996
	.quad	0x3fe4e2cf675833a0              # double 0.65268678841094996
	.quad	0x401300b387eb9a4e              # double 4.7506848561811932
	.quad	0x4012bcfb061b7640              # double 4.6845513300191328
	.quad	0x4020a438417a6fd1              # double 8.3207416974982227
	.quad	0x40038c09008309ae              # double 2.4433765449513976
	.quad	0x4008284ddd96fb46              # double 3.0196797668171795
	.quad	0x3febcc10cb102458              # double 0.86866035137894482
	.quad	0x4012ca291e759daf              # double 4.6974224814688759
	.quad	0x4011beaea35b2264              # double 4.43621306651821
	.quad	0x4020cf96f8b12a2a              # double 8.4054486957803256
	.quad	0x3fd9bd2a59e3aea4              # double 0.40217074182758439
	.quad	0x401b62535b8eb332              # double 6.8460211091849477
	.quad	0x3ff01a6e5c5429b5              # double 1.0064529043762438
	.quad	0x4011e15570e89338              # double 4.4700524942352828
	.quad	0x401e9f29cbb291bd              # double 7.6554328754177136
	.quad	0x401c1078c3a405f0              # double 7.0160856789457142
	.quad	0x40158a29db1ce285              # double 5.3849252926235112
	.quad	0x3ff2dfbc32bd7582              # double 1.1796228391679908
	.quad	0x4023b407cce768a0              # double 9.8516220123750031
	.quad	0x3fe1ad5d9fb1ed68              # double 0.55241280737338361
	.quad	0x4016a4bc5d0c545c              # double 5.6608747996116016
	.quad	0x3fd138fb18869a68              # double 0.26910283465477969
	.quad	0x4013032e7e0dfd84              # double 4.7531070419348715
	.quad	0x3fe889ec3e6c2272              # double 0.76683628265261761
	.quad	0x4012456b003ca608              # double 4.5677909886376327
	.quad	0x401cbd456ce59071              # double 7.1848351492991336
	.quad	0x402382a52c249b93              # double 9.7551664156615398
	.quad	0x401944b7ad8eb78a              # double 6.3171069258077157
	.quad	0x401b99b169cae1fb              # double 6.9000908403472705
	.quad	0x40208209fbe9fa1c              # double 8.2539824221722071
	.quad	0x4002b43819561e6c              # double 2.3379976252943404
	.quad	0x40220e67c11620a0              # double 9.0281353320609128
	.quad	0x401713d0c40b0e32              # double 5.7693510658023559
	.quad	0x400e167af647c192              # double 3.7609767189644083
	.quad	0x3ffd5a3a3d93a947              # double 1.8345281987518136
	.quad	0x3ff99217bc6e2bdc              # double 1.5981671677170572
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_25xindex,@object   # @__constant_25xindex
	.p2align	6, 0x0
.L__constant_25xindex:
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	5                               # 0x5
	.quad	3                               # 0x3
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.size	.L__constant_25xindex, 200

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.size	.L__constant_11xindex, 88

	.type	.L__constant_25xf64,@object     # @__constant_25xf64
	.p2align	6, 0x0
.L__constant_25xf64:
	.quad	0x401b2181e03f7058              # double 6.7827219999999997
	.quad	0x3fd437b4a2339c0f              # double 0.31590000000000001
	.quad	0x400a1ee5eedcc20d              # double 3.2650869999999999
	.quad	0x400c5cd91eeaa6d2              # double 3.5453359999999998
	.quad	0x4007b526d8b1dd5d              # double 2.9634529999999999
	.quad	0x3fe9f850df15a4ad              # double 0.81156200000000001
	.quad	0x401ed35f80991794              # double 7.7064190000000004
	.quad	0x3ff1f778dd616f87              # double 1.1229180000000001
	.quad	0x4018fa604e1e7104              # double 6.2445079999999997
	.quad	0x401f5ce8101f31f4              # double 7.8407289999999996
	.quad	0x4006d2e1ef73c0c2              # double 2.85297
	.quad	0x40221e138fffbce4              # double 9.0587429999999997
	.quad	0x4019bb5e529bae47              # double 6.4329770000000002
	.quad	0x3ff5ad31fcd24e16              # double 1.354784
	.quad	0x40086675147f1306              # double 3.0500280000000002
	.quad	0x4015e8c436fc1590              # double 5.4773110000000003
	.quad	0x40211d0d6b228dca              # double 8.5567430000000009
	.quad	0x402049d3458cd20b              # double 8.14419
	.quad	0x3ffd2fb6dca07f67              # double 1.824149
	.quad	0x4018fb4e54f7a919              # double 6.2454159999999996
	.quad	0x4011dd60a6330510              # double 4.466189
	.quad	0x4017934c1a8ac5c1              # double 5.8938449999999998
	.quad	0x401a467c6b8b6955              # double 6.5688339999999998
	.quad	0x4022f4195cc857f3              # double 9.4767559999999999
	.quad	0x3ff40b60f1b25f63              # double 1.2527779999999999
	.size	.L__constant_25xf64, 200

	.section	".note.GNU-stack","",@progbits
