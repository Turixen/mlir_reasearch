module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global private constant @__constant_40xindex(dense<[0, 2, 3, 4, 5, 6, 8, 3, 9, 0, 2, 4, 6, 8, 4, 0, 2, 3, 4, 6, 8, 2, 8, 0, 2, 4, 6, 8, 2, 4, 7, 9, 0, 2, 4, 5, 6, 8, 3, 9]> : tensor<40xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<40 x i64>
  llvm.mlir.global private constant @__constant_11xindex(dense<[0, 7, 9, 14, 15, 21, 23, 28, 32, 38, 40]> : tensor<11xindex>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<11 x i64>
  llvm.mlir.global private constant @__constant_40xf64(dense<[8.893210e-01, 1.8442559999999999, 3.625985, 2.4046370000000001, 6.4017860000000004, 4.5166950000000003, 7.0937159999999997, 2.763310e+00, 3.0093580000000002, 6.1577710000000003, 3.7839309999999999, 2.215950e+00, 1.3823510000000001, 1.866922, 5.643840e+00, 7.5576169999999995, 4.1586540000000003, 2.498122, 7.6300369999999997, 1.4790019999999999, 8.6635050000000007, 9.5738190000000003, 7.0823609999999997, 9.9564810000000001, 2.5627770000000001, 6.791440e+00, 6.7961780000000003, 7.260600e-02, 3.2449119999999998, 8.7835990000000006, 5.7633380000000001, 7.2378179999999999, 2.536360e+00, 8.9100239999999999, 6.8999550000000003, 7.7193449999999996, 2.196300e+00, 6.3776840000000004, 8.344940e-01, 6.5800710000000002]> : tensor<40xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<40 x f64>
  llvm.mlir.global private constant @__constant_10x10xf64(dense<[[9.563777422259534, 4.307000335317646, 2.6885832276976709, 3.5741816431189601, 5.1288404766660527, 8.4511888104615771, 3.6243260935987531, 9.3878759541945786, 0.91337841720267376, 5.5719708541549746], [8.5639725480857827, 5.3865263528336893, 3.4977553862843367, 2.7157486294105029, 4.1223333767250931, 7.9709262491409003, 1.0040541375727019, 7.3832160054751572, 0.53244218437562441, 8.5887938119703513], [7.2127880571711014, 1.6615070542310051, 7.0689311027512494, 7.5250424181898588, 4.8160846194266229, 1.8932878809981135, 0.97393439839912554, 9.2032216455495188, 8.1467800028294572, 4.3750891932739409], [2.1881657086337079, 5.2309296272205295, 6.3177798393489928, 1.6381640809770881, 2.7663723802501803, 0.40124365454911826, 6.5387309230957067, 9.1056538198371619, 1.8488831886234813, 2.1437373331649754], [9.3596744675368057, 7.3205059397757255, 7.8793400234740387, 5.7367974136551361, 6.0291562115006503, 3.2571625198043428, 0.46029375421758112, 1.600280710857892, 6.997737628338859, 5.5567185544181079], [5.0350322772368861, 4.7028591484630278, 4.8939582304821414, 1.0340604050336422, 2.6701652110475504, 8.0404540208414943, 4.9486132532264566, 3.3021753329363701, 2.4286916714078446, 0.15825703857012985], [8.6866992234294695, 6.4445628555099717, 2.5351119252800034, 6.5156066536389856, 8.3061806975391974, 1.5520479492117967, 6.4677792376634002, 1.7864432923728357, 9.1087943823363844, 0.37351766008015708], [2.6996783700741336, 5.8597887602809715, 8.8980594580800947, 8.1740090466335875, 0.040006669761081248, 0.58107165149671847, 9.8001753095057253, 1.6399740991529188, 3.0062482655253566, 5.2753049412600355], [5.9245097913306122, 9.0793030479070644, 9.4257466311639355, 2.048026094664368, 9.9652575987095577, 3.5208888497106883, 5.6920183201720498, 7.1029797554077003, 0.7444041265883905, 6.4571367121972321], [0.97401454065265569, 2.994367552384678, 5.858172402697182, 4.9108883740193052, 2.5949283602734194, 2.3550345770900751, 6.369637918764929, 7.7169304499127751, 4.8596956551228061, 5.9573062876326643]]> : tensor<10x10xf64>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<10 x array<10 x f64>>
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
    %69 = llvm.intr.stepvector : vector<[4]xi32>
    %70 = llvm.trunc %68 : i64 to i32
    %71 = llvm.insertelement %70, %37[%36 : i32] : vector<[4]xi32>
    %72 = llvm.shufflevector %71, %37 [0, 0, 0, 0] : vector<[4]xi32> 
    %73 = llvm.icmp "slt" %69, %72 : vector<[4]xi32>
    %74 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mul %54, %35 : i64
    %76 = llvm.add %75, %63 : i64
    %77 = llvm.getelementptr %74[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %78 = llvm.intr.masked.load %77, %73, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf64>) -> vector<[4]xf64>
    %79 = llvm.insertelement %60, %34[%36 : i32] : vector<[4]xf64>
    %80 = llvm.shufflevector %79, %34 [0, 0, 0, 0] : vector<[4]xf64> 
    %81 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mul %56, %35 : i64
    %83 = llvm.add %82, %63 : i64
    %84 = llvm.getelementptr %81[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %85 = llvm.intr.masked.load %84, %73, %42 {alignment = 8 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf64>) -> vector<[4]xf64>
    %86 = llvm.fmul %80, %85 : vector<[4]xf64>
    %87 = llvm.fadd %78, %86 : vector<[4]xf64>
    %88 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.mul %54, %35 : i64
    %90 = llvm.add %89, %63 : i64
    %91 = llvm.getelementptr %88[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.intr.masked.store %87, %91, %73 {alignment = 8 : i32} : vector<[4]xf64>, vector<[4]xi1> into !llvm.ptr
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

