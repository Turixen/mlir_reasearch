module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_40xindex(dense<[4, 5, 6, 8, 0, 1, 2, 4, 5, 6, 8, 9, 4, 7, 1, 8, 9, 1, 5, 0, 2, 3, 4, 9, 0, 1, 3, 6, 8, 0, 4, 8, 0, 4, 9, 0, 1, 3, 5, 8]> : tensor<40xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<40 x i64>
  llvm.mlir.global private constant @__constant_11xindex(dense<[0, 4, 12, 14, 17, 19, 24, 29, 32, 35, 40]> : tensor<11xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<11 x i64>
  llvm.mlir.global private constant @__constant_40xf64(dense<[2.9975860000000001, 3.987650e-01, 5.3143640000000003, 3.9753189999999998, 7.1841249999999999, 5.831500e-02, 2.803910e-01, 7.7815529999999997, 5.8063650000000004, 4.9708839999999999, 9.6461950000000005, 1.6176029999999999, 9.9042189999999994, 9.6058939999999992, 1.981331, 6.681980e+00, 2.097836, 9.914250e-01, 3.2883580000000001, 8.174200e-01, 6.5665769999999997, 7.0756480000000002, 3.934470e+00, 9.1026589999999992, 1.2950889999999999, 5.8569290000000001, 4.4108869999999998, 7.034859, 4.1464379999999998, 7.9060509999999997, 3.9099560000000002, 8.5931820000000005, 5.5233379999999999, 9.1953969999999998, 1.547153, 8.6403009999999991, 6.8224840000000002, 9.2759540000000005, 3.2717239999999999, 8.7071749999999994]> : tensor<40xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<40 x f64>
  llvm.mlir.global private constant @__constant_10x10xf64(dense<[[0.65828960916555768, 3.9354051891416555, 3.7694299563155931, 8.7383574448405241, 6.4239365548798872, 8.3959997942670501, 8.9092726300464893, 6.6581987430566523, 9.1723977862048205, 1.2344009030161918], [2.9396018674441562, 3.5765733322830129, 9.2148920361868836, 5.2831492826362609, 7.9458791400169275, 0.83884983684497926, 2.7178320279979875, 7.3996160694265463, 0.050130854757460819, 5.6133409119450093], [0.095006982318923683, 5.1214610369075277, 8.1278839136815079, 8.0253096029008812, 8.788608925804013, 8.2153990949032174, 7.0933603174488358, 0.18648048455813249, 3.1455732557745808, 9.6806728925228036], [4.24476106369191, 8.645191312364501, 1.2872643234941727, 7.3166058743251856, 4.4924042060860128, 4.0193536552529405, 2.0671966458691271, 8.5532840546172206, 9.2902409113848491, 1.6625812495694658], [4.8436697191323441, 6.467789436522045, 8.4261442109811941, 2.1181239367918723, 2.3633190141214397, 4.8916826268875591, 3.4794747109804245, 2.186822635991442, 5.1103770176836871, 7.7770285441916167], [8.2518823251645745, 7.9639583288907802, 7.9318576080533418, 2.5698177399829669, 4.0863766207628593, 5.2982311059003333, 2.5177788003871471, 5.5323297576783945, 2.0666170701489395, 8.8748598051909173], [5.1424341405937497, 8.6153796906923947, 0.6871652899455627, 3.7679232741530866, 2.9435595929946956, 2.6325372807716088, 2.4473491026897918, 8.6459186529078185, 8.2351818780073405, 0.32946679447369509], [9.2605802648146564, 3.4762991924596842, 5.2764845992711349, 9.2180517882354795, 7.2342399347503239, 7.3803763232971686, 5.4646066679447847, 0.09735114550850521, 4.8339259378369501, 2.1627192072084824], [9.1170686398547289, 8.568127032478527, 8.5533916745669334, 5.7713427366915315, 5.8985729386301937, 7.7383289093753103, 7.0435404312396752, 3.1494656129016088, 1.5348115032731757, 7.6040981821265294], [5.2977224200001025, 4.6373107874718924, 8.2008664804436933, 4.23957677392539, 2.8806191238485681, 5.8286942947090292, 6.0344012484368381, 8.4609933423699744, 9.6718514632144589, 0.88668362583581239]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
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
    %34 = llvm.mlir.undef : vector<[16]xf64>
    %35 = llvm.mlir.constant(10 : index) : i64
    %36 = llvm.mlir.constant(0 : i32) : i32
    %37 = llvm.mlir.undef : vector<[16]xi32>
    %38 = llvm.mlir.constant(10 : index) : i64
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(16 : index) : i64
    %42 = llvm.mlir.constant(dense<0.000000e+00> : vector<[16]xf64>) : vector<[16]xf64>
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
    %69 = llvm.intr.stepvector : vector<[16]xi32>
    %70 = llvm.trunc %68 : i64 to i32
    %71 = llvm.insertelement %70, %37[%36 : i32] : vector<[16]xi32>
    %72 = llvm.shufflevector %71, %37 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<[16]xi32> 
    %73 = llvm.icmp "slt" %69, %72 : vector<[16]xi32>
    %74 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mul %54, %35 : i64
    %76 = llvm.add %75, %63 : i64
    %77 = llvm.getelementptr %74[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %78 = llvm.intr.masked.load %77, %73, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[16]xi1>, vector<[16]xf64>) -> vector<[16]xf64>
    %79 = llvm.insertelement %60, %34[%36 : i32] : vector<[16]xf64>
    %80 = llvm.shufflevector %79, %34 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<[16]xf64> 
    %81 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mul %56, %35 : i64
    %83 = llvm.add %82, %63 : i64
    %84 = llvm.getelementptr %81[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %85 = llvm.intr.masked.load %84, %73, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[16]xi1>, vector<[16]xf64>) -> vector<[16]xf64>
    %86 = llvm.fmul %80, %85 : vector<[16]xf64>
    %87 = llvm.fadd %78, %86 : vector<[16]xf64>
    %88 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.mul %54, %35 : i64
    %90 = llvm.add %89, %63 : i64
    %91 = llvm.getelementptr %88[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.intr.masked.store %87, %91, %73 {alignment = 8 : i32} : vector<[16]xf64>, vector<[16]xi1> into !llvm.ptr
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
    %0 = llvm.mlir.addressof @__constant_40xindex : !llvm.ptr
    %1 = llvm.mlir.addressof @__constant_11xindex : !llvm.ptr
    %2 = llvm.mlir.constant(11 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.mlir.constant(3735928559 : index) : i64
    %6 = llvm.mlir.addressof @__constant_40xf64 : !llvm.ptr
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(40 : index) : i64
    %9 = llvm.mlir.constant(2 : i64) : i64
    %10 = llvm.mlir.constant(10 : i64) : i64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %13 = llvm.mlir.constant(10 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<40 x f64>
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
    %29 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<40 x i64>
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

