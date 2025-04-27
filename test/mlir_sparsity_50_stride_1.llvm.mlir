module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_11xindex(dense<[0, 4, 11, 16, 21, 24, 29, 34, 39, 45, 50]> : tensor<11xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<11 x i64>
  llvm.mlir.global private constant @__constant_50xindex(dense<[4, 5, 6, 9, 1, 2, 3, 4, 6, 8, 9, 2, 3, 7, 8, 9, 0, 2, 4, 8, 9, 1, 2, 7, 1, 2, 3, 5, 6, 0, 1, 2, 6, 8, 0, 3, 6, 7, 9, 3, 4, 5, 7, 8, 9, 2, 3, 6, 7, 9]> : tensor<50xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<50 x i64>
  llvm.mlir.global private constant @__constant_50xf64(dense<[15.964194000000001, 52.252813000000003, 97.717251000000004, 50.989651000000002, 79.042726000000001, 7.732790e+01, 38.476073999999997, 15.476520000000001, 13.881679999999999, 52.971620999999999, 14.049643, 83.639668, 71.966292999999993, 98.694581999999996, 45.108066999999998, 82.441211999999993, 24.646737000000002, 68.527085999999997, 60.772145999999999, 86.538796000000004, 39.025153000000003, 94.013474999999999, 83.234970000000004, 29.838823000000001, 32.412959999999998, 43.564304, 31.588127, 23.676286000000001, 4.0055870000000002, 5.1371089999999997, 80.072963000000001, 2.857590e+01, 91.547377999999994, 1.779679, 48.123514, 88.159368000000001, 57.072760000000002, 67.761212999999998, 91.826836999999997, 18.816371, 88.195898, 51.939704999999996, 69.457701, 81.486969000000001, 87.502043, 30.168015, 45.634830000000001, 81.751130000000003, 94.481582000000003, 10.730198]> : tensor<50xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<50 x f64>
  llvm.mlir.global private constant @__constant_10x10xf64_0(dense<[[13.351665000000001, 40.076962000000002, 69.499332999999993, 17.936831000000002, 65.356555, 94.028513000000003, 41.718296000000002, 20.607654, 7.150600e+01, 53.983105000000002], [24.619857, 38.390830999999999, 77.727586000000002, 93.355913999999998, 21.098583999999999, 23.411193999999998, 5.6819069999999998, 15.669148, 94.602311999999997, 1.429808], [78.997708000000002, 36.896157000000002, 69.061896000000004, 20.586251000000001, 66.523204000000007, 70.980637999999999, 20.334157999999999, 9.463840e-01, 68.728080000000006, 87.199934999999996], [69.877960000000002, 12.395894999999999, 53.204405000000001, 85.256338999999997, 9.5978949999999993, 63.153278, 7.7098709999999996, 10.453213999999999, 54.265093, 99.474064999999996], [50.194223999999998, 93.306050999999996, 74.702887000000004, 99.435165999999995, 50.940682000000002, 31.021908, 84.246194000000003, 60.717036999999998, 76.415396999999998, 95.352041999999997], [28.047288999999999, 42.276766000000002, 77.126542000000001, 33.728735999999998, 18.047398999999999, 50.867215000000002, 83.084641000000005, 31.258759999999999, 71.688400999999999, 97.459456000000002], [3.9374820000000001, 62.779541999999999, 19.957193, 34.771718999999997, 96.412153000000003, 56.907879000000001, 46.595903999999997, 12.480584, 7.6764869999999998, 49.083333000000003], [58.604906, 6.287150e-01, 18.227022000000002, 93.484391999999999, 11.009878, 67.032077000000001, 77.152826000000005, 77.491121000000006, 63.928711999999997, 71.904673000000003], [81.642808000000002, 53.546919000000003, 41.038460000000001, 58.006253999999998, 82.129322000000002, 32.054909000000002, 66.136536000000007, 59.669463, 86.104348999999999, 58.298879999999997], [2.6504310000000002, 90.402807999999993, 74.288290000000003, 27.891014999999999, 25.585208999999999, 3.3189639999999998, 83.243198000000007, 88.433484000000007, 52.232115, 48.974466999999997]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
  llvm.mlir.global private constant @__constant_10x10xf64(dense<[[4562.7650249999997, 658.27967799999999, 2290.9856089999998, 6778.7141389999997, 1261.6704950000001, 5074.6832990000003, 4142.2564920000004, 4050.896796, 4453.3667169999999, 6164.1631079999997], [7889.3355380000003, 18203.801099, 17264.809477999999, 20604.874315000001, 14761.776599999999, 10972.501587999999, 14793.48214, 8959.2981340000006, 17600.013981, 16166.590131000001], [18891.927627000001, 21033.458575000001, 27822.049618000001, 26364.114234000001, 16406.39126, 18599.268516, 17143.003068999999, 11447.199327, 28061.010949, 29283.046092], [14342.153806, 10656.354477999999, 16166.275073999999, 16744.706649, 9852.8788899999999, 14279.907217, 16151.462783999999, 13648.378747000001, 20490.222912000001, 19080.016499000001], [12041.372627000001, 6709.8966559999999, 9165.2231169999995, 12028.296066000001, 9196.651382, 8528.4849350000004, 7055.451712, 6469.3546130000004, 13497.506776, 12070.899697000001], [5602.2210219999997, 5876.3019750000003, 7589.1312630000002, 4748.6487820000002, 8108.1319569999996, 7782.5235439999997, 7582.1461829999998, 4916.1135219999996, 9905.9392050000006, 8156.2736880000002], [5680.6844330000004, 17792.19975, 17119.657182999999, 13982.572088000001, 18297.900730000001, 19023.749341999999, 19962.557354, 15151.181130999999, 17209.147639999999, 18286.277612999998], [19186.660628000001, 18728.842280000001, 20149.478612999999, 17997.563828999999, 16953.377435999999, 15013.277688, 22207.288361999999, 19655.859515, 24310.704754999999, 25000.193036000001], [17574.574611, 9245.7682550000009, 15216.467113999999, 18040.437299000001, 11813.001827, 12620.47205, 7357.6089869999996, 6661.8134209999998, 19837.508548999998, 17455.477231000001], [22820.21717, 11821.641170999999, 18467.455010999998, 21209.825014999999, 17959.768510000002, 22435.522885999999, 17949.279654999998, 15042.755628000001, 26724.063318, 26073.082501000001]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
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
    %35 = llvm.mlir.constant(10 : index) : i64
    %36 = llvm.mlir.constant(0 : i32) : i32
    %37 = llvm.mlir.undef : vector<[4]xi32>
    %38 = llvm.mlir.constant(10 : index) : i64
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf64>) : vector<[4]xf64>
    %43 = llvm.mlir.constant(-1 : index) : i64
    %44 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%39 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb8
    %48 = llvm.icmp "slt" %47, %38 : i64
    llvm.cond_br %48, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %49 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    %51 = llvm.add %47, %40 : i64
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
    %61 = llvm.mul %60, %41 : i64
    llvm.br ^bb5(%39 : i64)
  ^bb5(%62: i64):  // 2 preds: ^bb4, ^bb6
    %63 = llvm.icmp "slt" %62, %38 : i64
    llvm.cond_br %63, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %64 = llvm.mul %62, %43 overflow<nsw> : i64
    %65 = llvm.add %64, %38 : i64
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
    %92 = llvm.add %54, %40 : i64
    llvm.br ^bb3(%92 : i64)
  ^bb8:  // pred: ^bb3
    %93 = llvm.add %47, %40 : i64
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
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.constant(1.000000e-10 : f64) : f64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
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
    llvm.br ^bb1(%11, %8 : i64, f64)
  ^bb1(%77: i64, %78: f64):  // 2 preds: ^bb0, ^bb5
    %79 = llvm.icmp "slt" %77, %9 : i64
    llvm.cond_br %79, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%11, %78 : i64, f64)
  ^bb3(%80: i64, %81: f64):  // 2 preds: ^bb2, ^bb4
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
    %92 = llvm.fsub %87, %91 : f64
    %93 = llvm.intr.fabs(%92) : (f64) -> f64
    %94 = llvm.fadd %81, %93 : f64
    %95 = llvm.add %80, %10 : i64
    llvm.br ^bb3(%95, %94 : i64, f64)
  ^bb5:  // pred: ^bb3
    %96 = llvm.add %77, %10 : i64
    llvm.br ^bb1(%96, %81 : i64, f64)
  ^bb6:  // pred: ^bb1
    %97 = llvm.fcmp "olt" %78, %7 : f64
    %98 = llvm.xor %97, %6 : i1
    %99 = llvm.zext %98 : i1 to i32
    llvm.return %99 : i32
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

