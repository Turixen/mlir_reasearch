module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_10x10xf64(dense<[[9.5551754395075665, 7.9518521620452196, 3.9531983730711784, 1.8733979623984909, 4.8993158413482245, 8.0631661963132757, 1.4688465653149718, 8.9966440495261963, 5.5962648943140847, 7.2331381157528662], [8.3717178311311304, 0.74281707014644649, 5.4948966595294664, 4.0205775871178195, 2.0034837435971542, 0.14465173207704907, 4.2210645960025142, 9.6270387041943088, 0.62553096960134114, 5.5247195073478004], [3.5631867954861294, 8.9645240830753803, 7.893678762335603, 5.0359424684343725, 4.0144445249441834, 1.1372030625366625, 5.8941746695638839, 6.2432260205642116, 3.8056261941944944, 4.1097579162741846], [8.2957686997989502, 1.8970744485955338, 5.0707570578401873, 3.1244747472695567, 4.9436130268726606, 8.6297431342423199, 7.1129952388603703, 4.6896810164211384, 4.8447305986008748, 2.1975370080321555], [3.4213645550983731, 3.6071806734079939, 2.8183212568120752, 6.7781938888706907, 0.023384045227418104, 1.1902859375908292, 3.711526271247223, 3.5025736922384731, 6.449682784523656, 8.2550315200239268], [8.2759156706061567, 4.5502973573198791, 2.1350336731330968, 9.453305704210102E-4, 6.2453836044579383, 5.1137930625945573, 7.422205558936211, 8.4652653943332137, 8.7186018667407286, 8.4848536917077375], [9.9452694838069088, 2.72918870666647, 5.4499334959575565, 6.0660180319863164, 0.93219884624874738, 7.7328357761866737, 3.0646674917471026, 1.6653802583647004, 7.525380868066299, 6.8171135354428127], [8.3038590192877191, 6.3178521460442125, 4.0363619089240377, 5.1702862823417082, 6.7343010205953968, 6.9533358176532767, 9.2343985052210833, 2.143811092487681, 9.7456897189450302, 0.83570790617297552], [0.080821001023225758, 4.2603285761844711, 6.416801466979126, 9.9322487762573743, 6.8569467982684431, 2.8928954939492413, 8.6382951724959476, 2.8808688147564432, 5.501089435927967, 1.1062439434332716], [4.7823419499280799, 0.46694653908553874, 5.375699601366998, 6.5511677086743845, 8.9268950362999603, 2.5875110162073458, 4.9439167608025993, 7.469284529861099, 8.0700948243388009, 1.8511136704862219]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
  llvm.mlir.global private constant @__constant_45xindex(dense<[0, 2, 4, 6, 8, 4, 0, 2, 4, 5, 6, 7, 8, 0, 2, 4, 5, 6, 7, 8, 9, 7, 0, 2, 3, 4, 5, 6, 7, 8, 0, 1, 5, 0, 2, 3, 4, 5, 6, 8, 9, 1, 5, 6, 8]> : tensor<45xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<45 x i64>
  llvm.mlir.global private constant @__constant_11xindex(dense<[0, 5, 6, 13, 13, 21, 22, 30, 33, 41, 45]> : tensor<11xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<11 x i64>
  llvm.mlir.global private constant @__constant_45xf64(dense<[2.290130e-01, 2.543876, 9.060893, 2.497144, 5.8494780000000004, 3.312465, 0.099520999999999998, 9.374560e-01, 4.8032459999999997, 6.5789309999999999, 3.8288829999999998, 9.507660e-01, 3.7358720000000001, 9.114960e-01, 7.098700e-02, 5.938280e-01, 3.151010e-01, 3.5569950000000001, 2.728700e-01, 7.8139159999999998, 6.3196519999999996, 8.8678880000000006, 9.7199249999999999, 4.0288659999999998, 6.7523910000000003, 9.1222159999999999, 5.3179160000000003, 8.1413530000000005, 2.6085039999999999, 9.6432079999999995, 5.6494650000000002, 4.1353910000000003, 6.7526140000000003, 3.0397249999999998, 3.8008169999999999, 4.004990e+00, 7.3623529999999997, 0.94381899999999996, 6.4863689999999998, 1.8110569999999999, 1.157562, 5.1371270000000004, 3.446018, 4.1291520000000004, 8.9762559999999993]> : tensor<45xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<45 x f64>
  llvm.func @matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.struct<(array<2 x i64>, array<3 x i64>)>, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: !llvm.ptr, %arg24: !llvm.ptr, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg16, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg17, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg18, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg19, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg21, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg20, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg22, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.insertvalue %arg10, %8[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg11, %9[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg13, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg5, %14[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg6, %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg7, %16[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg8, %17[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg9, %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %arg0, %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %arg1, %21[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %arg2, %22[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %arg3, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %arg4, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %27 = llvm.insertvalue %arg23, %26[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %arg24, %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %arg25, %28[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %arg28, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %arg27, %31[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %arg29, %32[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.undef : vector<[32]xf64>
    %35 = llvm.mlir.constant(10 : index) : i64
    %36 = llvm.mlir.constant(0 : i32) : i32
    %37 = llvm.mlir.undef : vector<[32]xi32>
    %38 = llvm.mlir.constant(10 : index) : i64
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(32 : index) : i64
    %42 = llvm.mlir.constant(dense<0.000000e+00> : vector<[32]xf64>) : vector<[32]xf64>
    %43 = llvm.mlir.constant(-1 : index) : i64
    %44 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.getelementptr %45[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %48 = llvm.load %47 : !llvm.ptr -> i64
    %49 = llvm.getelementptr %45[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    llvm.br ^bb1(%48 : i64)
  ^bb1(%51: i64):  // 2 preds: ^bb0, ^bb8
    %52 = llvm.icmp "slt" %51, %50 : i64
    llvm.cond_br %52, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %53 = llvm.getelementptr %46[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %54 = llvm.load %53 : !llvm.ptr -> i64
    %55 = llvm.mul %51, %38 : i64
    llvm.br ^bb3(%39 : i64)
  ^bb3(%56: i64):  // 2 preds: ^bb2, ^bb7
    %57 = llvm.icmp "slt" %56, %38 : i64
    llvm.cond_br %57, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %58 = llvm.add %56, %55 : i64
    %59 = llvm.getelementptr %44[%58] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %60 = llvm.load %59 : !llvm.ptr -> f64
    %61 = "llvm.intr.vscale"() : () -> i64
    %62 = llvm.mul %61, %41 : i64
    llvm.br ^bb5(%39 : i64)
  ^bb5(%63: i64):  // 2 preds: ^bb4, ^bb6
    %64 = llvm.icmp "slt" %63, %38 : i64
    llvm.cond_br %64, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %65 = llvm.mul %63, %43 overflow<nsw> : i64
    %66 = llvm.add %65, %38 : i64
    %67 = llvm.icmp "slt" %66, %62 : i64
    %68 = llvm.select %67, %66, %62 : i1, i64
    %69 = llvm.intr.stepvector : vector<[32]xi32>
    %70 = llvm.trunc %68 : i64 to i32
    %71 = llvm.insertelement %70, %37[%36 : i32] : vector<[32]xi32>
    %72 = llvm.shufflevector %71, %37 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<[32]xi32> 
    %73 = llvm.icmp "slt" %69, %72 : vector<[32]xi32>
    %74 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mul %54, %35 : i64
    %76 = llvm.add %75, %63 : i64
    %77 = llvm.getelementptr %74[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %78 = llvm.intr.masked.load %77, %73, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[32]xi1>, vector<[32]xf64>) -> vector<[32]xf64>
    %79 = llvm.insertelement %60, %34[%36 : i32] : vector<[32]xf64>
    %80 = llvm.shufflevector %79, %34 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<[32]xf64> 
    %81 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mul %56, %35 : i64
    %83 = llvm.add %82, %63 : i64
    %84 = llvm.getelementptr %81[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %85 = llvm.intr.masked.load %84, %73, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[32]xi1>, vector<[32]xf64>) -> vector<[32]xf64>
    %86 = llvm.fmul %80, %85 : vector<[32]xf64>
    %87 = llvm.fadd %78, %86 : vector<[32]xf64>
    %88 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.mul %54, %35 : i64
    %90 = llvm.add %89, %63 : i64
    %91 = llvm.getelementptr %88[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.intr.masked.store %87, %91, %73 {alignment = 8 : i32} : vector<[32]xf64>, vector<[32]xi1> into !llvm.ptr
    %92 = llvm.add %63, %62 : i64
    llvm.br ^bb5(%92 : i64)
  ^bb7:  // pred: ^bb5
    %93 = llvm.add %56, %40 : i64
    llvm.br ^bb3(%93 : i64)
  ^bb8:  // pred: ^bb3
    %94 = llvm.add %51, %40 : i64
    llvm.br ^bb1(%94 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return %33 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @main() -> i64 {
    %0 = llvm.mlir.constant(64 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %3 = llvm.mlir.constant(3735928559 : index) : i64
    %4 = llvm.mlir.addressof @__constant_10x10xf64 : !llvm.ptr
    %5 = llvm.mlir.zero : !llvm.ptr
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(10 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.getelementptr %4[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x array<10 x f64>>
    %10 = llvm.inttoptr %3 : i64 to !llvm.ptr
    %11 = llvm.insertvalue %10, %2[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %1, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %7, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %7, %14[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %7, %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %6, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.getelementptr %5[100] : (!llvm.ptr) -> !llvm.ptr, f64
    %19 = llvm.ptrtoint %18 : !llvm.ptr to i64
    %20 = llvm.add %19, %0 : i64
    %21 = llvm.call @malloc(%20) : (i64) -> !llvm.ptr
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.sub %0, %6 : i64
    %24 = llvm.add %22, %23 : i64
    %25 = llvm.urem %24, %0 : i64
    %26 = llvm.sub %24, %25 : i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr
    %28 = llvm.insertvalue %21, %2[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %27, %28[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %1, %29[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %7, %30[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %7, %31[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %7, %32[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %6, %33[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.call @assemble_sparse() : () -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
    %36 = llvm.extractvalue %35[0] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %37 = llvm.extractvalue %35[1] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %38 = llvm.extractvalue %35[2] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %39 = llvm.extractvalue %35[3] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %40 = llvm.extractvalue %36[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.extractvalue %36[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.extractvalue %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.extractvalue %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.extractvalue %37[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.extractvalue %37[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.extractvalue %37[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.extractvalue %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.extractvalue %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.extractvalue %38[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.extractvalue %38[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.extractvalue %38[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.extractvalue %38[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.extractvalue %38[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.extractvalue %17[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.extractvalue %17[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.extractvalue %17[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.extractvalue %17[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.extractvalue %17[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.extractvalue %17[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.extractvalue %34[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.extractvalue %34[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.extractvalue %34[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.extractvalue %34[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.extractvalue %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.extractvalue %34[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.call @matmul(%40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %39, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %70 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mul %8, %7 : i64
    %72 = llvm.add %71, %8 : i64
    %73 = llvm.getelementptr %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %74 = llvm.load %73 : !llvm.ptr -> f64
    %75 = llvm.fptosi %74 : f64 to i64
    llvm.return %75 : i64
  }
  llvm.func @assemble_sparse() -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> {
    %0 = llvm.mlir.addressof @__constant_45xindex : !llvm.ptr
    %1 = llvm.mlir.addressof @__constant_11xindex : !llvm.ptr
    %2 = llvm.mlir.constant(11 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.mlir.constant(3735928559 : index) : i64
    %6 = llvm.mlir.addressof @__constant_45xf64 : !llvm.ptr
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(45 : index) : i64
    %9 = llvm.mlir.constant(2 : i64) : i64
    %10 = llvm.mlir.constant(10 : i64) : i64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %13 = llvm.mlir.constant(10 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<45 x f64>
    %16 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %17 = llvm.insertvalue %16, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %3, %18[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %8, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %7, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i64>
    %23 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %24 = llvm.insertvalue %23, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %3, %25[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %2, %26[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %7, %27[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<45 x i64>
    %30 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %31 = llvm.insertvalue %30, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %3, %32[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %8, %33[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %7, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %11, %12[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %11, %36[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %11, %37[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %10, %38[0, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %9, %39[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %41 = llvm.getelementptr %22[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = llvm.insertvalue %42, %40[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %44 = llvm.insertvalue %10, %43[0, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %45 = llvm.mul %42, %13 : i64
    %46 = llvm.insertvalue %45, %44[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %47 = llvm.mlir.undef : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
    %48 = llvm.insertvalue %28, %47[0] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %49 = llvm.insertvalue %35, %48[1] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %50 = llvm.insertvalue %21, %49[2] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %51 = llvm.insertvalue %46, %50[3] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    llvm.return %51 : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
  }
}

