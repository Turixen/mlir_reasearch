module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_10x10xf64(dense<[[1.6866859263344025, 5.575168033422254, 1.0265871459838749, 2.8537270966775905, 2.2067920667033913, 6.5259885222826739, 7.7680499197971908, 1.734623730132161, 0.13057775498670821, 7.1673458141725446], [3.1159780081281796, 9.4459928883304637, 3.3799052274991404, 3.8332404881538307, 1.3607522308671338, 3.6573199726127315, 4.374085235399626, 8.2935455490068755, 7.5934989109932172, 0.11360995897642723], [5.384562983962847, 3.516932589520787, 2.5142844260639508, 6.8620064794699678, 2.9522922319220135, 1.1072947963827384, 2.9220454392901365, 2.5369747530304423, 2.4302100060927891, 9.4281661935862199], [0.92230064129667499, 7.3134815372922954, 6.6478220968412334, 7.497181831400642, 9.1182498440288455, 1.1274683272579866, 7.4035195656817807, 3.2394704188979739, 5.6187829517292016, 5.5219894489216168], [5.377588533915465, 6.7605524855433208, 8.8124762382551509, 7.9890479742661169, 2.5829296044675853, 5.6154295892594321, 6.1277508744543141, 6.4820482174367768, 8.6516283910077139, 9.7937174576362462], [1.5114809206300039, 9.4592834727204095, 7.1894250472897152, 9.1030551669613722, 2.1125686257840526, 7.207095397939316, 1.0358158706465814, 5.9369025473628358, 8.748625110228458, 5.3679457483213442], [7.1457887095234671, 1.1547790554285819, 2.8309172717959541, 7.4782896668351224, 8.743589931412485, 2.5550367942727368, 5.8303035794031466, 7.9337215929244777, 3.2940852143091481, 1.6830303213469233], [4.9795494377305873, 7.2216807787501907, 4.5488244170520176, 0.18557289450501058, 5.4490733770794506, 6.1276429929435103, 6.3393899204126285, 4.5923358392449574, 3.7084177073162028, 6.0467725075054091], [3.1030134595037739, 1.2599615609138159, 3.6980066228891206, 5.2958238213759827, 5.7061640265422149, 4.8833170280791833, 0.87986085142163217, 2.9818265831740245, 8.5889663931957809, 2.5200472101586913], [4.5982686827365749, 5.001075016851618, 4.9609968884901123, 0.080007250858002976, 5.6104704737115814, 3.4620143703606585, 4.2535618388965748, 3.4761130993189813, 4.6656860243146445, 6.9124485221576037]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
  llvm.mlir.global private constant @__constant_15xindex(dense<[2, 6, 0, 2, 4, 8, 0, 2, 6, 8, 0, 2, 4, 2, 6]> : tensor<15xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<15 x i64>
  llvm.mlir.global private constant @__constant_11xindex(dense<[0, 2, 2, 6, 6, 10, 10, 13, 13, 15, 15]> : tensor<11xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<11 x i64>
  llvm.mlir.global private constant @__constant_15xf64(dense<[1.2106779999999999, 2.2489189999999999, 4.5761750000000001, 5.4251959999999997, 3.168730e-01, 7.773640e-01, 4.3226110000000002, 8.8263590000000001, 6.9860160000000002, 9.1633289999999992, 6.1819139999999999, 6.9388529999999999, 6.0468080000000004, 1.577040e+00, 5.3989120000000002]> : tensor<15xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<15 x f64>
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
    %34 = llvm.mlir.undef : vector<[8]xf64>
    %35 = llvm.mlir.constant(10 : index) : i64
    %36 = llvm.mlir.constant(0 : i32) : i32
    %37 = llvm.mlir.undef : vector<[8]xi32>
    %38 = llvm.mlir.constant(10 : index) : i64
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(8 : index) : i64
    %42 = llvm.mlir.constant(dense<0.000000e+00> : vector<[8]xf64>) : vector<[8]xf64>
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
    %69 = llvm.intr.stepvector : vector<[8]xi32>
    %70 = llvm.trunc %68 : i64 to i32
    %71 = llvm.insertelement %70, %37[%36 : i32] : vector<[8]xi32>
    %72 = llvm.shufflevector %71, %37 [0, 0, 0, 0, 0, 0, 0, 0] : vector<[8]xi32> 
    %73 = llvm.icmp "slt" %69, %72 : vector<[8]xi32>
    %74 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mul %54, %35 : i64
    %76 = llvm.add %75, %63 : i64
    %77 = llvm.getelementptr %74[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %78 = llvm.intr.masked.load %77, %73, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[8]xi1>, vector<[8]xf64>) -> vector<[8]xf64>
    %79 = llvm.insertelement %60, %34[%36 : i32] : vector<[8]xf64>
    %80 = llvm.shufflevector %79, %34 [0, 0, 0, 0, 0, 0, 0, 0] : vector<[8]xf64> 
    %81 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mul %56, %35 : i64
    %83 = llvm.add %82, %63 : i64
    %84 = llvm.getelementptr %81[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %85 = llvm.intr.masked.load %84, %73, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[8]xi1>, vector<[8]xf64>) -> vector<[8]xf64>
    %86 = llvm.fmul %80, %85 : vector<[8]xf64>
    %87 = llvm.fadd %78, %86 : vector<[8]xf64>
    %88 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.mul %54, %35 : i64
    %90 = llvm.add %89, %63 : i64
    %91 = llvm.getelementptr %88[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.intr.masked.store %87, %91, %73 {alignment = 8 : i32} : vector<[8]xf64>, vector<[8]xi1> into !llvm.ptr
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
    %0 = llvm.mlir.addressof @__constant_15xindex : !llvm.ptr
    %1 = llvm.mlir.addressof @__constant_11xindex : !llvm.ptr
    %2 = llvm.mlir.constant(11 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.mlir.constant(3735928559 : index) : i64
    %6 = llvm.mlir.addressof @__constant_15xf64 : !llvm.ptr
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(15 : index) : i64
    %9 = llvm.mlir.constant(2 : i64) : i64
    %10 = llvm.mlir.constant(10 : i64) : i64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.undef : !llvm.struct<(array<2 x i64>, array<3 x i64>)>
    %13 = llvm.mlir.constant(10 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<15 x f64>
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
    %29 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<15 x i64>
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

