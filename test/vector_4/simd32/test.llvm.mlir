module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_5xindex(dense<[0, 2, 3, 5, 6]> : tensor<5xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<5 x i64>
  llvm.mlir.global private constant @__constant_6xindex(dense<[0, 3, 1, 0, 2, 3]> : tensor<6xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<6 x i64>
  llvm.mlir.global private constant @__constant_6xf64(dense<[1.000000e+00, 5.000000e+00, 3.000000e+00, 2.000000e+00, 4.000000e+00, 6.000000e+00]> : tensor<6xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<6 x f64>
  llvm.mlir.global private constant @__constant_4x3xf64_0(dense<1.000000e+00> : tensor<4x3xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<4 x array<3 x f64>>
  llvm.mlir.global private constant @__constant_4x3xf64(dense<[[3.000000e+00, 3.000000e+00, 3.000000e+00], [3.000000e+00, 3.000000e+00, 3.000000e+00], [4.000000e+00, 4.000000e+00, 4.000000e+00], [1.100000e+01, 1.100000e+01, 1.100000e+01]]> : tensor<4x3xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<4 x array<3 x f64>>
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
    %34 = llvm.mlir.undef : vector<[4]xf64>
    %35 = llvm.mlir.constant(3 : index) : i64
    %36 = llvm.mlir.constant(0 : i32) : i32
    %37 = llvm.mlir.undef : vector<[4]xi32>
    %38 = llvm.mlir.constant(4 : index) : i64
    %39 = llvm.mlir.constant(3 : index) : i64
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf64>) : vector<[4]xf64>
    %43 = llvm.mlir.constant(-1 : index) : i64
    %44 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%40 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb8
    %48 = llvm.icmp "slt" %47, %38 : i64
    llvm.cond_br %48, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %49 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    %51 = llvm.add %47, %41 : i64
    %52 = llvm.getelementptr %45[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    llvm.br ^bb3(%50 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb7
    %55 = llvm.icmp "slt" %54, %53 : i64
    llvm.cond_br %55, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %56 = llvm.getelementptr %46[%54] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = llvm.getelementptr %44[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %59 = llvm.load %58 : !llvm.ptr -> f64
    %60 = "llvm.intr.vscale"() : () -> i64
    %61 = llvm.mul %60, %38 : i64
    llvm.br ^bb5(%40 : i64)
  ^bb5(%62: i64):  // 2 preds: ^bb4, ^bb6
    %63 = llvm.icmp "slt" %62, %39 : i64
    llvm.cond_br %63, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %64 = llvm.mul %62, %43 overflow<nsw> : i64
    %65 = llvm.add %64, %39 : i64
    %66 = llvm.icmp "slt" %65, %61 : i64
    %67 = llvm.select %66, %65, %61 : i1, i64
    %68 = llvm.intr.stepvector : vector<[4]xi32>
    %69 = llvm.trunc %67 : i64 to i32
    %70 = llvm.insertelement %69, %37[%36 : i32] : vector<[4]xi32>
    %71 = llvm.shufflevector %70, %37 [0, 0, 0, 0] : vector<[4]xi32> 
    %72 = llvm.icmp "slt" %68, %71 : vector<[4]xi32>
    %73 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.mul %57, %35 : i64
    %75 = llvm.add %74, %62 : i64
    %76 = llvm.getelementptr %73[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %77 = llvm.intr.masked.load %76, %72, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf64>) -> vector<[4]xf64>
    %78 = llvm.insertelement %59, %34[%36 : i32] : vector<[4]xf64>
    %79 = llvm.shufflevector %78, %34 [0, 0, 0, 0] : vector<[4]xf64> 
    %80 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.mul %47, %35 : i64
    %82 = llvm.add %81, %62 : i64
    %83 = llvm.getelementptr %80[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %84 = llvm.intr.masked.load %83, %72, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf64>) -> vector<[4]xf64>
    %85 = llvm.fmul %79, %84 : vector<[4]xf64>
    %86 = llvm.fadd %77, %85 : vector<[4]xf64>
    %87 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.mul %57, %35 : i64
    %89 = llvm.add %88, %62 : i64
    %90 = llvm.getelementptr %87[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.intr.masked.store %86, %90, %72 {alignment = 8 : i32} : vector<[4]xf64>, vector<[4]xi1> into !llvm.ptr
    %91 = llvm.add %62, %61 : i64
    llvm.br ^bb5(%91 : i64)
  ^bb7:  // pred: ^bb5
    %92 = llvm.add %54, %41 : i64
    llvm.br ^bb3(%92 : i64)
  ^bb8:  // pred: ^bb3
    %93 = llvm.add %47, %41 : i64
    llvm.br ^bb1(%93 : i64)
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
    %8 = llvm.mlir.constant(3 : index) : i64
    %9 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %10 = llvm.mlir.constant(3 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    llvm.br ^bb1(%13, %9 : i64, f64)
  ^bb1(%14: i64, %15: f64):  // 2 preds: ^bb0, ^bb5
    %16 = llvm.icmp "slt" %14, %11 : i64
    llvm.cond_br %16, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%13, %15 : i64, f64)
  ^bb3(%17: i64, %18: f64):  // 2 preds: ^bb2, ^bb4
    %19 = llvm.icmp "slt" %17, %10 : i64
    llvm.cond_br %19, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %20 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.mul %14, %8 : i64
    %22 = llvm.add %21, %17 : i64
    %23 = llvm.getelementptr %20[%22] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %24 = llvm.load %23 : !llvm.ptr -> f64
    %25 = llvm.fadd %18, %24 : f64
    %26 = llvm.add %17, %12 : i64
    llvm.br ^bb3(%26, %25 : i64, f64)
  ^bb5:  // pred: ^bb3
    %27 = llvm.add %14, %12 : i64
    llvm.br ^bb1(%27, %18 : i64, f64)
  ^bb6:  // pred: ^bb1
    llvm.return %15 : f64
  }
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(64 : index) : i64
    %1 = llvm.mlir.addressof @__constant_4x3xf64_0 : !llvm.ptr
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %4 = llvm.mlir.constant(3735928559 : index) : i64
    %5 = llvm.mlir.addressof @__constant_4x3xf64 : !llvm.ptr
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.mlir.constant(1 : i32) : i32
    %8 = llvm.mlir.constant(6.300000e+01 : f64) : f64
    %9 = llvm.mlir.constant(true) : i1
    %10 = llvm.mlir.constant(3 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(4 : index) : i64
    %15 = llvm.mlir.constant(3 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.zero : !llvm.ptr
    %18 = llvm.getelementptr %5[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x array<3 x f64>>
    %19 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x array<3 x f64>>
    %20 = llvm.inttoptr %4 : i64 to !llvm.ptr
    %21 = llvm.insertvalue %20, %3[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %2, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %14, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %15, %24[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %15, %25[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %16, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.getelementptr %17[12] : (!llvm.ptr) -> !llvm.ptr, f64
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.add %29, %0 : i64
    %31 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr
    %32 = llvm.ptrtoint %31 : !llvm.ptr to i64
    %33 = llvm.sub %0, %16 : i64
    %34 = llvm.add %32, %33 : i64
    %35 = llvm.urem %34, %0 : i64
    %36 = llvm.sub %34, %35 : i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr
    %38 = llvm.insertvalue %31, %3[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %37, %38[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %2, %39[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %14, %40[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %15, %41[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %15, %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %16, %43[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.call @assemble_sparse_tensor() : () -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
    %46 = llvm.extractvalue %45[0] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %45[1] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %48 = llvm.extractvalue %45[2] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %49 = llvm.extractvalue %45[3] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %50 = llvm.extractvalue %46[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.extractvalue %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.extractvalue %46[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.extractvalue %47[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.extractvalue %47[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.extractvalue %47[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %48[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.extractvalue %48[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.extractvalue %48[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.extractvalue %27[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.extractvalue %27[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.extractvalue %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.extractvalue %27[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.extractvalue %27[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.extractvalue %27[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.extractvalue %44[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.call @sparse_dense_matmul(%50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %49, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb1(%13, %9 : i64, i1)
  ^bb1(%80: i64, %81: i1):  // 2 preds: ^bb0, ^bb5
    %82 = llvm.icmp "slt" %80, %11 : i64
    llvm.cond_br %82, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%13, %81 : i64, i1)
  ^bb3(%83: i64, %84: i1):  // 2 preds: ^bb2, ^bb4
    %85 = llvm.icmp "slt" %83, %10 : i64
    llvm.cond_br %85, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %86 = llvm.extractvalue %79[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.mul %80, %15 : i64
    %88 = llvm.add %87, %83 : i64
    %89 = llvm.getelementptr %86[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %90 = llvm.load %89 : !llvm.ptr -> f64
    %91 = llvm.mul %80, %15 : i64
    %92 = llvm.add %91, %83 : i64
    %93 = llvm.getelementptr %18[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %94 = llvm.load %93 : !llvm.ptr -> f64
    %95 = llvm.fcmp "oeq" %90, %94 : f64
    %96 = llvm.and %84, %95 : i1
    %97 = llvm.add %83, %12 : i64
    llvm.br ^bb3(%97, %96 : i64, i1)
  ^bb5:  // pred: ^bb3
    %98 = llvm.add %80, %12 : i64
    llvm.br ^bb1(%98, %84 : i64, i1)
  ^bb6:  // pred: ^bb1
    %99 = llvm.extractvalue %79[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.extractvalue %79[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.extractvalue %79[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.call @compute_sum(%99, %100, %101, %102, %103, %104, %105) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> f64
    %107 = llvm.fcmp "oeq" %106, %8 : f64
    %108 = llvm.and %81, %107 : i1
    %109 = llvm.select %108, %7, %6 : i1, i32
    llvm.return %109 : i32
  }
  llvm.func @assemble_sparse_tensor() -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> {
    %0 = llvm.mlir.addressof @__constant_5xindex : !llvm.ptr
    %1 = llvm.mlir.constant(5 : index) : i64
    %2 = llvm.mlir.addressof @__constant_6xindex : !llvm.ptr
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.mlir.constant(3735928559 : index) : i64
    %6 = llvm.mlir.addressof @__constant_6xf64 : !llvm.ptr
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(6 : index) : i64
    %9 = llvm.mlir.constant(5 : i64) : i64
    %10 = llvm.mlir.constant(4 : i64) : i64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<6 x f64>
    %15 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %16 = llvm.insertvalue %15, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %8, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %7, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<6 x i64>
    %22 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %23 = llvm.insertvalue %22, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %3, %24[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %8, %25[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %7, %26[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<5 x i64>
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

