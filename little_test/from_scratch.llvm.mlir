module {
  llvm.func @printNewline()
  llvm.func @printClose()
  llvm.func @printComma()
  llvm.func @printF64(f64)
  llvm.func @printOpen()
  llvm.mlir.global private constant @__constant_30xindex(dense<[8, 3, 4, 6, 9, 2, 4, 0, 1, 2, 3, 5, 7, 8, 3, 6, 2, 3, 4, 5, 8, 1, 5, 7, 8, 5, 9, 4, 7, 7]> : tensor<30xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<30 x i64>
  llvm.mlir.global private constant @__constant_11xindex(dense<[0, 1, 5, 7, 14, 16, 21, 25, 27, 29, 30]> : tensor<11xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<11 x i64>
  llvm.mlir.global private constant @__constant_30xf64(dense<[4.7563469999999999, 2.102859, 5.4238689999999998, 5.577680e+00, 3.001240e-01, 4.8357549999999998, 8.8596050000000002, 1.592490e+00, 7.372070e+00, 7.2462879999999998, 5.9191609999999999, 5.9593920000000002, 4.6956530000000001, 6.328630e-01, 3.1591619999999998, 4.7083050000000002, 8.4356449999999992, 5.4309390000000004, 2.1190630000000001, 1.545420e-01, 2.595040e+00, 1.4655819999999999, 1.321259, 3.702925, 3.542246, 6.831162, 1.723510e+00, 7.8729019999999998, 6.0081550000000004, 1.047045]> : tensor<30xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<30 x f64>
  llvm.mlir.global private constant @__constant_10x10xf64(dense<[[5.0072820879405331, 2.1420497309468542, 8.4364357946217474, 3.3512684114489364, 4.8578737173077684, 6.5026873298607608, 4.481183080848961, 1.6018142840321781, 1.6482067031075565, 2.7697353449463433], [8.2796435610104453, 9.7956308688691446, 5.066309369035312, 1.0691978274975567, 7.2754747197326219, 7.4679216752662611, 1.8460472498040226, 1.7245060332115747, 9.828847678500983, 5.8523888503628294], [4.735129046344202, 0.21389279999051047, 9.9823910553584571, 0.22751442405574696, 4.3063298537464378, 1.0300462704374436, 7.1885192597496097, 1.7297134743393461, 7.4494154821665912, 8.2180913094628564], [0.55370097211729696, 7.0871105126860554, 7.7450498540614178, 4.2448327660994876, 1.2746000519648371, 9.4391729894286023, 6.1902689198805465, 6.0312877871821424, 8.7890699247898425, 3.1611885774377635], [8.9903796016343396, 3.4471256572948263, 8.4932841564173884, 9.9373309006088171, 2.6191045587156303, 0.77351004199567641, 1.4024547359632467, 7.454551829233095, 2.6194195569905077, 4.0298520046877577], [4.7641019675563543, 3.8129279818642861, 9.0747728919768225, 6.4920816381757511, 6.7882405668469881, 7.0063465072165911, 5.7386637585592792, 7.5230234961300599, 0.91592641387099771, 8.6646639602141899], [5.6862365678538973, 4.8755032417073192, 9.5859588536709328, 8.1186668576209513, 5.3811119011589454, 3.8280043169558411, 9.9983397606134918, 6.1835824149566241, 3.4201107815517515, 0.84968218962971687], [2.791270331453247, 2.9735813587818685, 3.0654358664150494, 5.4929582569491755, 3.9238922832952996, 9.2657934977933269, 5.0681592194030571, 9.6910348814034712, 2.0972430846802959, 0.96789458347651514], [3.1989914495545624, 3.7607248895716507, 5.5182323136835318, 2.4724154287944913, 7.2920674615977124, 9.7009225179758473, 9.9421519655410044, 2.6109645810252315, 9.0484630420475316, 3.6771724535825703], [6.305746358135309, 7.6948754823713771, 3.6012681436537397, 1.263350310992416, 3.8581878444772943, 7.1047027925517909, 2.1904752468927735, 0.32914734762647391, 3.1668377278172235, 2.0518472657841924]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
  func.func @matmul(%arg0: memref<?xindex>, %arg1: memref<?xindex>, %arg2: memref<?xf64>, %arg3: !llvm.struct<(array<2 x i64>, array<3 x i64>)>, %arg4: tensor<10x10xf64>, %arg5: tensor<10x10xf64>) -> tensor<10x10xf64> {
    %0 = llvm.mlir.poison : vector<4xf64>
    %1 = llvm.mlir.constant(10 : index) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.poison : vector<4xi32>
    %4 = llvm.mlir.constant(10 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(4 : index) : i64
    %8 = llvm.mlir.constant(dense<0.000000e+00> : vector<4xf64>) : vector<4xf64>
    %9 = llvm.mlir.constant(-1 : index) : i64
    %10 = llvm.mlir.constant(dense<[0, 1, 2, 3]> : vector<4xi32>) : vector<4xi32>
    %11 = builtin.unrealized_conversion_cast %arg1 : memref<?xindex> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %12 = builtin.unrealized_conversion_cast %arg0 : memref<?xindex> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %13 = builtin.unrealized_conversion_cast %arg2 : memref<?xf64> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = bufferization.to_memref %arg4 : tensor<10x10xf64> to memref<10x10xf64>
    %16 = builtin.unrealized_conversion_cast %15 : memref<10x10xf64> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = bufferization.to_memref %arg5 : tensor<10x10xf64> to memref<10x10xf64>
    %18 = builtin.unrealized_conversion_cast %17 : memref<10x10xf64> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %19 = llvm.extractvalue %12[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%5 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %4 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %23 = llvm.getelementptr %19[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %24 = llvm.load %23 : !llvm.ptr -> i64
    %25 = llvm.add %21, %6 : i64
    %26 = llvm.getelementptr %19[%25] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %27 = llvm.load %26 : !llvm.ptr -> i64
    llvm.br ^bb3(%24 : i64)
  ^bb3(%28: i64):  // 2 preds: ^bb2, ^bb7
    %29 = llvm.icmp "slt" %28, %27 : i64
    llvm.cond_br %29, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %30 = llvm.getelementptr %20[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %31 = llvm.load %30 : !llvm.ptr -> i64
    %32 = llvm.getelementptr %14[%28] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %33 = llvm.load %32 : !llvm.ptr -> f64
    llvm.br ^bb5(%5 : i64)
  ^bb5(%34: i64):  // 2 preds: ^bb4, ^bb6
    %35 = llvm.icmp "slt" %34, %4 : i64
    llvm.cond_br %35, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %36 = llvm.mul %34, %9 overflow<nsw> : i64
    %37 = llvm.add %36, %4 : i64
    %38 = llvm.icmp "slt" %37, %7 : i64
    %39 = llvm.select %38, %37, %7 : i1, i64
    %40 = llvm.trunc %39 : i64 to i32
    %41 = llvm.insertelement %40, %3[%2 : i32] : vector<4xi32>
    %42 = llvm.shufflevector %41, %3 [0, 0, 0, 0] : vector<4xi32> 
    %43 = llvm.icmp "sgt" %42, %10 : vector<4xi32>
    %44 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.mul %21, %1 : i64
    %46 = llvm.add %45, %34 : i64
    %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %48 = llvm.intr.masked.load %47, %43, %8 {alignment = 8 : i32} : (!llvm.ptr, vector<4xi1>, vector<4xf64>) -> vector<4xf64>
    %49 = llvm.insertelement %33, %0[%2 : i32] : vector<4xf64>
    %50 = llvm.shufflevector %49, %0 [0, 0, 0, 0] : vector<4xf64> 
    %51 = llvm.extractvalue %16[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mul %31, %1 : i64
    %53 = llvm.add %52, %34 : i64
    %54 = llvm.getelementptr %51[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %55 = llvm.intr.masked.load %54, %43, %8 {alignment = 8 : i32} : (!llvm.ptr, vector<4xi1>, vector<4xf64>) -> vector<4xf64>
    %56 = llvm.fmul %50, %55 : vector<4xf64>
    %57 = llvm.fadd %48, %56 : vector<4xf64>
    %58 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.mul %21, %1 : i64
    %60 = llvm.add %59, %34 : i64
    %61 = llvm.getelementptr %58[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.intr.masked.store %57, %61, %43 {alignment = 8 : i32} : vector<4xf64>, vector<4xi1> into !llvm.ptr
    %62 = llvm.add %34, %7 : i64
    llvm.br ^bb5(%62 : i64)
  ^bb7:  // pred: ^bb5
    %63 = llvm.add %28, %6 : i64
    llvm.br ^bb3(%63 : i64)
  ^bb8:  // pred: ^bb3
    %64 = llvm.add %21, %6 : i64
    llvm.br ^bb1(%64 : i64)
  ^bb9:  // pred: ^bb1
    %65 = bufferization.to_tensor %17 : memref<10x10xf64> to tensor<10x10xf64>
    return %65 : tensor<10x10xf64>
  }
  llvm.func @main() -> i64 {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.poison : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %2 = llvm.mlir.constant(3735928559 : index) : i64
    %3 = llvm.mlir.addressof @__constant_10x10xf64 : !llvm.ptr
    %4 = llvm.mlir.constant(9 : index) : i64
    %5 = llvm.mlir.constant(8 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.mlir.constant(10 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = builtin.unrealized_conversion_cast %10 : i64 to index
    %12 = llvm.mlir.constant(10 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x array<10 x f64>>
    %15 = llvm.inttoptr %2 : i64 to !llvm.ptr
    %16 = llvm.insertvalue %15, %1[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %0, %17[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %12, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %12, %19[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %12, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %13, %21[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = builtin.unrealized_conversion_cast %22 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<10x10xf64>
    %24 = bufferization.to_tensor %23 : memref<10x10xf64> to tensor<10x10xf64>
    %25 = bufferization.alloc_tensor() : tensor<10x10xf64>
    %26 = llvm.call @assemble_sparse() : () -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
    %27 = llvm.extractvalue %26[0] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %28 = builtin.unrealized_conversion_cast %27 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xindex>
    %29 = llvm.extractvalue %26[1] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %30 = builtin.unrealized_conversion_cast %29 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xindex>
    %31 = llvm.extractvalue %26[2] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %32 = builtin.unrealized_conversion_cast %31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf64>
    %33 = llvm.extractvalue %26[3] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %34 = func.call @matmul(%28, %30, %32, %33, %24, %25) : (memref<?xindex>, memref<?xindex>, memref<?xf64>, !llvm.struct<(array<2 x i64>, array<3 x i64>)>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
    llvm.br ^bb1(%10 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb7
    %36 = builtin.unrealized_conversion_cast %35 : i64 to index
    %37 = llvm.icmp "slt" %35, %9 : i64
    llvm.cond_br %37, ^bb2, ^bb8
  ^bb2:  // pred: ^bb1
    %38 = vector.transfer_read %34[%36, %11], %7 {in_bounds = [true]} : tensor<10x10xf64>, vector<10xf64>
    llvm.call @printOpen() : () -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb6
    %40 = llvm.icmp "slt" %39, %9 : i64
    llvm.cond_br %40, ^bb4, ^bb7
  ^bb4:  // pred: ^bb3
    %41 = llvm.extractelement %38[%39 : i64] : vector<10xf64>
    llvm.call @printF64(%41) : (f64) -> ()
    %42 = llvm.icmp "ult" %39, %4 : i64
    llvm.cond_br %42, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.call @printComma() : () -> ()
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %43 = llvm.add %39, %8 : i64
    llvm.br ^bb3(%43 : i64)
  ^bb7:  // pred: ^bb3
    llvm.call @printClose() : () -> ()
    llvm.call @printNewline() : () -> ()
    %44 = llvm.add %35, %8 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb8:  // pred: ^bb1
    %extracted = tensor.extract %34[%6, %6] : tensor<10x10xf64>
    %45 = llvm.fptosi %extracted : f64 to i64
    llvm.return %45 : i64
  }
  llvm.func @assemble_sparse() -> !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> {
    %0 = llvm.mlir.addressof @__constant_30xindex : !llvm.ptr
    %1 = llvm.mlir.addressof @__constant_11xindex : !llvm.ptr
    %2 = llvm.mlir.constant(11 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.poison : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.mlir.constant(3735928559 : index) : i64
    %6 = llvm.mlir.addressof @__constant_30xf64 : !llvm.ptr
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(30 : index) : i64
    %9 = llvm.mlir.constant(11 : i64) : i64
    %10 = llvm.mlir.constant(10 : i64) : i64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.poison : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %13 = llvm.mlir.constant(10 : index) : i64
    %14 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x f64>
    %15 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %16 = llvm.insertvalue %15, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %8, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %7, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i64>
    %22 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %23 = llvm.insertvalue %22, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %3, %24[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %2, %25[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %7, %26[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i64>
    %29 = llvm.inttoptr %5 : i64 to !llvm.ptr
    %30 = llvm.insertvalue %29, %4[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %3, %31[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %8, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %7, %33[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %11, %12[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %11, %35[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %11, %36[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %10, %37[0, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %10, %38[0, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %9, %39[1, 0] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %41 = llvm.getelementptr %21[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = llvm.insertvalue %42, %40[1, 1] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %44 = llvm.insertvalue %42, %43[1, 2] : !llvm.struct<(array<2 x i64>, array<3 x i64>)> 
    %45 = llvm.mlir.poison : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
    %46 = llvm.insertvalue %27, %45[0] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %47 = llvm.insertvalue %34, %46[1] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %48 = llvm.insertvalue %20, %47[2] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    %49 = llvm.insertvalue %44, %48[3] : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)> 
    llvm.return %49 : !llvm.struct<(struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, struct<(array<2 x i64>, array<3 x i64>)>)>
  }
}

