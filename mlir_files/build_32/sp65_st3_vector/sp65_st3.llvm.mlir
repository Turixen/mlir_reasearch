module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_10x10xf64(dense<[[7.3997582628112557, 9.8806399384361061, 5.3925372276039427, 1.3421365977533983, 9.2566435314701891, 2.5771594116457353, 0.85939789224164675, 9.5799340759589349, 3.563295624230125, 5.6909306988275841], [3.2874338176990028, 7.1178407774417813, 3.4048219186045237, 0.89327792597602929, 8.50466686400482, 2.511899201415698, 6.439444151402788, 4.1393545231376594, 3.3283635085926111, 4.0599961657199755], [5.4066573202703339, 9.401539346368521, 5.7949787400370356, 4.7771511134063518, 6.7272165288462507, 8.2086799947433331, 9.5424505332109408, 2.274502624342766, 2.6209784383764347, 6.3568414019177979], [5.5258341773039499, 4.5972770751307488, 9.9232453186016371, 3.2910006290408034, 8.0022223093424554, 7.5677785848439969, 4.7277125726383762, 9.7147866404559337, 4.3890908184628072, 1.3632268665143299], [5.4653235428952396, 1.3287529092278005, 3.7654726121258131, 5.9152429849364694, 5.1933693354094377, 5.5350320076328678, 7.504901021883259, 5.835068342109353, 8.3028009634467388, 9.0096441858622853], [2.0252482885843137, 8.4149360545374812, 2.8205289057478566, 1.358435895662462, 6.0250293556683605, 5.0022639359560657, 8.6895172541615882, 7.672073914913895, 7.3901341182970679, 9.3987615247351783], [8.1738440742568592, 1.3388642789845917, 7.6053108399975899, 9.5637784475657988, 4.9092149475021518, 4.1074717470585034, 5.5492090694304084, 7.1839940289560182, 8.4442756537378649, 1.110314541607279], [2.8238727911437955, 7.5614214411271909, 1.2774637618595486, 2.5128812723827778, 8.8370486700137754, 7.1433602288035614, 9.5086014345825393, 1.2424621742548592, 1.0453679458937759, 7.9122759694049813], [5.0406492419291293, 7.8346587632871287, 6.9605467816677304, 2.6539472232010475, 2.4924768217867497, 4.0479081236600685, 7.745865181722257, 6.6164531692188788, 8.8665788968402204, 8.6427710040787673], [1.560888974666953, 1.5256489765841208, 8.1584962948994004, 8.7399509611035704, 9.0256676735052892, 5.9490299277874206, 7.7000661874219816, 0.88968009603511477, 2.8222365300346275, 5.1958063780012136]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
  llvm.mlir.global private constant @__constant_35xindex(dense<[0, 3, 4, 6, 9, 4, 1, 0, 2, 3, 4, 6, 9, 5, 2, 0, 3, 6, 7, 8, 9, 0, 2, 3, 5, 1, 4, 7, 0, 1, 3, 4, 6, 7, 9]> : tensor<35xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<35 x i64>
  llvm.mlir.global private constant @__constant_11xindex(dense<[0, 5, 6, 7, 13, 14, 15, 21, 25, 28, 35]> : tensor<11xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<11 x i64>
  llvm.mlir.global private constant @__constant_35xf64(dense<[5.8562010000000004, 4.2284319999999997, 5.7346810000000001, 1.3416269999999999, 8.2653909999999993, 3.2971620000000001, 6.071740e+00, 7.8776089999999996, 8.0164460000000002, 3.8920460000000001, 9.4119709999999994, 4.012079, 6.989480e-01, 9.7175329999999995, 4.4126729999999998, 4.8088509999999998, 5.3703219999999998, 2.2408329999999999, 9.4257159999999995, 3.090520e-01, 5.5210660000000003, 9.1641080000000006, 8.6396350000000002, 6.556184, 9.0257059999999996, 7.4974709999999999, 9.663700e+00, 3.342876, 3.0241030000000002, 7.4308779999999998, 3.8436669999999999, 6.361730e+00, 9.7007089999999998, 3.0477240000000001, 8.800224]> : tensor<35xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<35 x f64>
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
    %0 = llvm.mlir.addressof @__constant_35xindex : !llvm.ptr
    %1 = llvm.mlir.addressof @__constant_11xindex : !llvm.ptr
    %2 = llvm.mlir.constant(11 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.mlir.constant(3735928559 : index) : i64
    %6 = llvm.mlir.addressof @__constant_35xf64 : !llvm.ptr
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(35 : index) : i64
    %9 = llvm.mlir.constant(2 : i64) : i64
    %10 = llvm.mlir.constant(10 : i64) : i64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %13 = llvm.mlir.constant(10 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<35 x f64>
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
    %29 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<35 x i64>
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

