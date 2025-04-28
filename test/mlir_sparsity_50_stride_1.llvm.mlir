module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_10x10xf64_0(dense<[[2.4053840000000002, 8.9900839999999995, 1.7295480000000001, 5.805920e-01, 9.2336010000000001, 8.9212520000000008, 0.73004599999999997, 9.8329160000000009, 6.9929519999999998, 1.6613929999999999], [9.7778559999999998, 6.511690e-01, 3.631062, 4.3322409999999998, 2.7139440000000001, 5.1345270000000003, 3.6382409999999998, 8.430237, 4.5568090000000003, 9.6148849999999992], [2.450234, 9.0943249999999995, 6.0557090000000002, 8.6469570000000004, 5.9198009999999996, 7.9162869999999996, 5.3823610000000004, 1.7877460000000001, 1.129650e+00, 5.654390e-01], [5.868061, 4.454410e-01, 2.6941120000000001, 4.385262, 1.124584, 3.9465659999999998, 3.949080e+00, 1.863461, 5.263410e-01, 9.3417220000000007], [4.8487140000000002, 2.7561879999999999, 3.0854810000000001, 1.8004309999999999, 2.4050069999999999, 7.484360e-01, 6.0632869999999999, 5.5581449999999997, 2.084530e-01, 6.9536660000000001], [5.079205, 7.1319780000000002, 4.080440e-01, 4.5902789999999998, 3.1223169999999998, 7.8187350000000002, 8.9227690000000006, 3.579930e-01, 6.317910e+00, 8.7499760000000002], [5.3615849999999998, 6.8734320000000002, 7.8405480000000001, 1.9356359999999999, 4.0275569999999998, 2.4274239999999998, 9.2376210000000007, 4.5012290000000004, 8.9793219999999998, 9.682722], [3.558271, 5.7713989999999997, 5.2574240000000003, 8.631640e+00, 1.1328469999999999, 8.8021159999999998, 8.118000e+00, 6.520600e-01, 4.3446069999999999, 3.7407159999999999], [1.0150939999999999, 7.2206330000000003, 6.666201, 1.589008, 8.991047, 8.9858510000000003, 9.1848899999999993, 8.4863970000000002, 6.821358, 7.3673840000000004], [8.7938880000000008, 6.7079620000000002, 8.7950590000000002, 9.1789679999999993, 5.607300e+00, 8.7644859999999998, 5.1691520000000004, 4.7752150000000002, 5.1908789999999998, 4.0226860000000002]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
  llvm.mlir.global private constant @__constant_10x10xf64(dense<[[80.223924999999994, 180.621667, 114.47384099999999, 151.79077699999999, 113.597065, 203.89323200000001, 195.59229300000001, 67.176300999999995, 108.8579, 125.302426], [253.45867899999999, 131.71228099999999, 200.88425100000001, 172.72568899999999, 138.60012699999999, 203.251856, 198.74682899999999, 195.390863, 169.18276499999999, 289.48811499999999], [73.054856000000001, 91.268878000000001, 49.516995999999999, 63.836709999999997, 49.396582000000002, 85.27919, 114.358045, 27.107726, 80.238398000000003, 119.421353], [115.18605700000001, 78.467529999999996, 93.705258, 66.142792, 62.557547999999997, 73.856810999999993, 128.38577699999999, 88.303618999999998, 75.353774000000001, 181.86099300000001], [40.476260000000003, 59.154651000000001, 58.700766000000002, 31.293226000000001, 7.426640e+01, 85.090637, 80.447250999999994, 79.991427000000001, 55.504567999999999, 94.697153999999997], [169.035855, 185.09151900000001, 152.818365, 130.753838, 141.56212500000001, 189.229029, 246.69834800000001, 136.27916500000001, 163.16572099999999, 254.50363200000001], [184.90601100000001, 224.78269299999999, 186.47261499999999, 214.72361900000001, 143.63478900000001, 268.59827300000001, 265.26074199999999, 123.049898, 193.975101, 222.14412400000001], [12.654976, 12.443002999999999, 4.5604639999999996, 8.0433850000000007, 7.0226879999999996, 10.653130000000001, 19.004804, 7.7488640000000001, 8.0872770000000003, 19.961510000000001], [64.543324999999996, 57.267159999999997, 45.102575999999999, 29.265647999999999, 39.880924, 31.795798000000001, 90.550695000000004, 62.309562999999997, 37.675193999999998, 99.162037999999995], [85.446563999999995, 80.125302000000005, 92.028397999999995, 56.940871000000001, 95.996866999999994, 110.729754, 113.148117, 126.24197700000001, 89.423715000000001, 132.555879]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
  llvm.mlir.global private constant @__constant_11xindex(dense<[0, 3, 7, 11, 16, 23, 29, 36, 41, 47, 50]> : tensor<11xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<11 x i64>
  llvm.mlir.global private constant @__constant_50xindex(dense<[3, 4, 8, 1, 4, 6, 9, 0, 2, 6, 9, 1, 2, 3, 4, 5, 0, 3, 4, 5, 7, 8, 9, 0, 2, 5, 6, 7, 8, 1, 2, 3, 5, 6, 8, 9, 0, 1, 3, 5, 6, 0, 1, 4, 5, 6, 9, 1, 5, 6]> : tensor<50xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<50 x i64>
  llvm.mlir.global private constant @__constant_50xf64(dense<[1.6374709999999999, 1.0396540000000001, 4.496020e-01, 9.9000070000000004, 5.956870e-01, 3.771407, 6.3684079999999996, 6.6326650000000003, 1.724666, 3.297606, 1.624706, 8.3792380000000009, 2.381885, 8.8320070000000008, 3.8368669999999998, 3.403314, 1.022707, 4.956283, 6.564650e-01, 6.1425599999999996, 1.3144929999999999, 8.4999339999999997, 1.0654840000000001, 5.9648620000000001, 6.7749629999999996, 8.0868590000000005, 7.1804709999999998, 1.236686, 2.0565509999999998, 5.7748270000000002, 3.812408, 6.1703229999999998, 4.9268770000000002, 4.013693, 2.2013020000000001, 1.328433, 6.6187909999999999, 2.339800e-02, 6.481360e-01, 2.421360e-01, 8.4438469999999999, 5.088520e+00, 3.6292249999999999, 6.3570250000000001, 5.4076510000000004, 3.9101720000000002, 6.8048349999999997, 8.2737540000000003, 5.1672190000000002, 5.4520030000000004]> : tensor<50xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<50 x f64>
  llvm.func @sparse_dense_matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.struct<(array<2 x i64>, array<3 x i64>)>, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: !llvm.ptr, %arg24: !llvm.ptr, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> {
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
    %34 = llvm.mlir.undef : vector<4xf64>
    %35 = llvm.mlir.constant(10 : index) : i64
    %36 = llvm.mlir.constant(0 : i32) : i32
    %37 = llvm.mlir.undef : vector<4xi32>
    %38 = llvm.mlir.constant(10 : index) : i64
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mlir.constant(dense<0.000000e+00> : vector<4xf64>) : vector<4xf64>
    %43 = llvm.mlir.constant(-1 : index) : i64
    %44 = llvm.mlir.constant(dense<[0, 1, 2, 3]> : vector<4xi32>) : vector<4xi32>
    %45 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%39 : i64)
  ^bb1(%48: i64):  // 2 preds: ^bb0, ^bb8
    %49 = llvm.icmp "slt" %48, %38 : i64
    llvm.cond_br %49, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %50 = llvm.getelementptr %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = llvm.add %48, %40 : i64
    %53 = llvm.getelementptr %46[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %54 = llvm.load %53 : !llvm.ptr -> i64
    llvm.br ^bb3(%51 : i64)
  ^bb3(%55: i64):  // 2 preds: ^bb2, ^bb7
    %56 = llvm.icmp "slt" %55, %54 : i64
    llvm.cond_br %56, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %57 = llvm.getelementptr %47[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %58 = llvm.load %57 : !llvm.ptr -> i64
    %59 = llvm.getelementptr %45[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %60 = llvm.load %59 : !llvm.ptr -> f64
    llvm.br ^bb5(%39 : i64)
  ^bb5(%61: i64):  // 2 preds: ^bb4, ^bb6
    %62 = llvm.icmp "slt" %61, %38 : i64
    llvm.cond_br %62, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %63 = llvm.mul %61, %43 overflow<nsw> : i64
    %64 = llvm.add %63, %38 : i64
    %65 = llvm.icmp "slt" %64, %41 : i64
    %66 = llvm.select %65, %64, %41 : i1, i64
    %67 = llvm.trunc %66 : i64 to i32
    %68 = llvm.insertelement %67, %37[%36 : i32] : vector<4xi32>
    %69 = llvm.shufflevector %68, %37 [0, 0, 0, 0] : vector<4xi32> 
    %70 = llvm.icmp "sgt" %69, %44 : vector<4xi32>
    %71 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.mul %58, %35 : i64
    %73 = llvm.add %72, %61 : i64
    %74 = llvm.getelementptr %71[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %75 = llvm.intr.masked.load %74, %70, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<4xi1>, vector<4xf64>) -> vector<4xf64>
    %76 = llvm.insertelement %60, %34[%36 : i32] : vector<4xf64>
    %77 = llvm.shufflevector %76, %34 [0, 0, 0, 0] : vector<4xf64> 
    %78 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.mul %48, %35 : i64
    %80 = llvm.add %79, %61 : i64
    %81 = llvm.getelementptr %78[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %82 = llvm.intr.masked.load %81, %70, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<4xi1>, vector<4xf64>) -> vector<4xf64>
    %83 = llvm.fmul %77, %82 : vector<4xf64>
    %84 = llvm.fadd %75, %83 : vector<4xf64>
    %85 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.mul %58, %35 : i64
    %87 = llvm.add %86, %61 : i64
    %88 = llvm.getelementptr %85[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.intr.masked.store %84, %88, %70 {alignment = 8 : i32} : vector<4xf64>, vector<4xi1> into !llvm.ptr
    %89 = llvm.add %61, %41 : i64
    llvm.br ^bb5(%89 : i64)
  ^bb7:  // pred: ^bb5
    %90 = llvm.add %55, %40 : i64
    llvm.br ^bb3(%90 : i64)
  ^bb8:  // pred: ^bb3
    %91 = llvm.add %48, %40 : i64
    llvm.br ^bb1(%91 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return %33 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @compute_sum(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64) -> f64 {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(10 : index) : i64
    %9 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %10 = llvm.mlir.constant(10 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(0 : index) : i64
    llvm.br ^bb1(%12, %9 : i64, f64)
  ^bb1(%13: i64, %14: f64):  // 2 preds: ^bb0, ^bb5
    %15 = llvm.icmp "slt" %13, %10 : i64
    llvm.cond_br %15, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%12, %14 : i64, f64)
  ^bb3(%16: i64, %17: f64):  // 2 preds: ^bb2, ^bb4
    %18 = llvm.icmp "slt" %16, %10 : i64
    llvm.cond_br %18, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %19 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mul %13, %8 : i64
    %21 = llvm.add %20, %16 : i64
    %22 = llvm.getelementptr %19[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %23 = llvm.load %22 : !llvm.ptr -> f64
    %24 = llvm.fadd %17, %23 : f64
    %25 = llvm.add %16, %11 : i64
    llvm.br ^bb3(%25, %24 : i64, f64)
  ^bb5:  // pred: ^bb3
    %26 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%26, %17 : i64, f64)
  ^bb6:  // pred: ^bb1
    llvm.return %14 : f64
  }
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(64 : index) : i64
    %1 = llvm.mlir.addressof @__constant_10x10xf64_0 : !llvm.ptr
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %4 = llvm.mlir.constant(3735928559 : index) : i64
    %5 = llvm.mlir.addressof @__constant_10x10xf64 : !llvm.ptr
    %6 = llvm.mlir.constant(33 : i32) : i32
    %7 = llvm.mlir.constant(11 : i32) : i32
    %8 = llvm.mlir.constant(true) : i1
    %9 = llvm.mlir.constant(10 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(10 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %5[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x array<10 x f64>>
    %16 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x array<10 x f64>>
    %17 = llvm.inttoptr %4 : i64 to !llvm.ptr
    %18 = llvm.insertvalue %17, %3[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %2, %19[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %12, %20[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %12, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %12, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %13, %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.getelementptr %14[100] : (!llvm.ptr) -> !llvm.ptr, f64
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.add %26, %0 : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.sub %0, %13 : i64
    %31 = llvm.add %29, %30 : i64
    %32 = llvm.urem %31, %0 : i64
    %33 = llvm.sub %31, %32 : i64
    %34 = llvm.inttoptr %33 : i64 to !llvm.ptr
    %35 = llvm.insertvalue %28, %3[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %34, %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %2, %36[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %12, %38[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %12, %39[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %13, %40[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.call @assemble_sparse_tensor() : () -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
    %43 = llvm.extractvalue %42[0] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %44 = llvm.extractvalue %42[1] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %45 = llvm.extractvalue %42[2] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %42[3] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %43[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.extractvalue %43[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.extractvalue %43[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.extractvalue %43[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.extractvalue %45[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.extractvalue %45[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.extractvalue %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.extractvalue %24[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.extractvalue %41[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.extractvalue %41[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.extractvalue %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.extractvalue %41[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.extractvalue %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.extractvalue %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.call @sparse_dense_matmul(%47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %46, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb1(%11, %8 : i64, i1)
  ^bb1(%77: i64, %78: i1):  // 2 preds: ^bb0, ^bb5
    %79 = llvm.icmp "slt" %77, %9 : i64
    llvm.cond_br %79, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%11, %78 : i64, i1)
  ^bb3(%80: i64, %81: i1):  // 2 preds: ^bb2, ^bb4
    %82 = llvm.icmp "slt" %80, %9 : i64
    llvm.cond_br %82, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %83 = llvm.extractvalue %76[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.mul %77, %12 : i64
    %85 = llvm.add %84, %80 : i64
    %86 = llvm.getelementptr %83[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %87 = llvm.load %86 : !llvm.ptr -> f64
    %88 = llvm.mul %77, %12 : i64
    %89 = llvm.add %88, %80 : i64
    %90 = llvm.getelementptr %15[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %91 = llvm.load %90 : !llvm.ptr -> f64
    %92 = llvm.fcmp "oeq" %87, %91 : f64
    %93 = llvm.and %81, %92 : i1
    %94 = llvm.add %80, %10 : i64
    llvm.br ^bb3(%94, %93 : i64, i1)
  ^bb5:  // pred: ^bb3
    %95 = llvm.add %77, %10 : i64
    llvm.br ^bb1(%95, %81 : i64, i1)
  ^bb6:  // pred: ^bb1
    %96 = llvm.select %78, %7, %6 : i1, i32
    llvm.return %96 : i32
  }
  llvm.func @assemble_sparse_tensor() -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.addressof @__constant_11xindex : !llvm.ptr
    %1 = llvm.mlir.constant(11 : index) : i64
    %2 = llvm.mlir.addressof @__constant_50xindex : !llvm.ptr
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.mlir.constant(3735928559 : index) : i64
    %6 = llvm.mlir.addressof @__constant_50xf64 : !llvm.ptr
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(50 : index) : i64
    %9 = llvm.mlir.constant(11 : i64) : i64
    %10 = llvm.mlir.constant(10 : i64) : i64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %13 = llvm.mlir.constant(10 : index) : i64
    %14 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<50 x f64>
    %15 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %16 = llvm.insertvalue %15, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %8, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %7, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<50 x i64>
    %22 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %23 = llvm.insertvalue %22, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %3, %24[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %8, %25[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %7, %26[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i64>
    %29 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %30 = llvm.insertvalue %29, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %3, %31[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %1, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %7, %33[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %11, %12[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %11, %35[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %11, %36[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %10, %37[0, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %10, %38[0, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %9, %39[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %41 = llvm.getelementptr %28[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = llvm.insertvalue %42, %40[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %44 = llvm.insertvalue %42, %43[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %45 = llvm.mlir.undef : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
    %46 = llvm.insertvalue %34, %45[0] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %47 = llvm.insertvalue %27, %46[1] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %48 = llvm.insertvalue %20, %47[2] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %49 = llvm.insertvalue %44, %48[3] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    llvm.return %49 : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
  }
}

