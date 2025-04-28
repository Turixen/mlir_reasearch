; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_10x10xf64 = private constant [10 x [10 x double]] [[10 x double] [double 0x4017BA8A1C5C4B54, double 0x4022E580CA92EEF4, double 0x4002396E8FF87D34, double 0x3F410B6DB00BB000, double 0x40194358A6E08142, double 0x3FF7B6A4378C5D03, double 0x3FC1AE3A57F013F0, double 0x400FC7D380BADADE, double 0x400AE86008183E46, double 0x4015BA7AFAEDD078], [10 x double] [double 0x40210B01B6072303, double 0x401D8CBBE68E1057, double 0x401A37461D5EFD92, double 0x4023AF30588733E2, double 0x3FFE59567F7A5E66, double 0x402174A1930C24F4, double 0x3FF741D6DB55E9BF, double 0x3F969EFDAC7A4540, double 0x401C8959E2F2131D, double 0x3FFCADDC84799061], [10 x double] [double 0x401FAB33986D36FB, double 0x3FE96F766A7C515A, double 0x401D03DEF23CF896, double 0x4001176E3532D7C8, double 0x400E9FF5757FF8C0, double 0x3FF452AEAB5FB1F1, double 0x4014442755B1D986, double 0x3FD5821868D382DC, double 0x3FF6A74F7C623BBA, double 0x400BE1C11565BDDE], [10 x double] [double 0x400A716DB769A9CD, double 0x4010CF751B52AC73, double 0x401EC6AE9E3CEB62, double 0x3FF4E52B93AC401E, double 0x402011BC737C654C, double 0x400182D4A31B67A8, double 0x40222139637BBD4A, double 0x3FE7AA724110D8E2, double 0x3FE1DB5753677B44, double 0x401EF7F7A0929B63], [10 x double] [double 0x3FF814D2E26A81FF, double 0x401FAD3A4AC98817, double 0x402345DD522804C5, double 0x40211F74EC289EB7, double 0x40157698C2E216D6, double 0x40234F57D4449374, double 0x3FF5B491CC4D13AE, double 0x401F20F0F99962A0, double 0x400992E5B678538A, double 0x402086BA1D7AB411], [10 x double] [double 0x40164A4531F1DA38, double 0x401287A30BFA5A49, double 0x3FF90ACCC80A9967, double 0x3FD7FDC8EF2F7330, double 0x401EA046EB8C8124, double 0x3FD3AA972D6777E4, double 0x4023F8326084EC10, double 0x402007CDC20A6058, double 0x401A2DE9F87E14E7, double 0x4015F2F26677F31A], [10 x double] [double 0x3FF536D3A27E87EC, double 0x400BC6358EF22E3E, double 0x3FE7A6E41360BE30, double 0x4012B0EAEBF903C7, double 0x4023B774EE21FEAD, double 0x4023BDDD5AEF925A, double 0x40223F14830132C4, double 0x4003C5A9CA43ACC2, double 0x401DBEB25A985EE7, double 0x4020AD782EF76DE6], [10 x double] [double 0x3FE7D4538D4AC6B8, double 0x3FF1608C7A2DC3E6, double 0x3FED8649147BCE82, double 0x402283AEFE26EAE1, double 0x4019C637EFC46169, double 0x3FCC1B6769D47BC0, double 0x401920E1577015E3, double 0x401CC4FFB9696EC5, double 0x3FD570A3BD136DAC, double 0x4023F6C5726DC6B2], [10 x double] [double 0x3FE6D6ACA5D520E8, double 0x3FE5EF4B01900604, double 0x4008B693000DD0D6, double 0x40066E755F6AB3BA, double 0x40194F25F77DB5EE, double 0x3FFB7E1E513404FF, double 0x400A9EE8C382DFB0, double 0x400438E9311F7A5E, double 0x401E49EB39EB696F, double 0x4015406AA7E32CCA], [10 x double] [double 0x3FD1930CE1B8454C, double 0x40017B22D155FDCE, double 0x402194B9EC1F0428, double 0x3FD8C249C4761CAC, double 0x4014DE79267ED914, double 0x401A3A59A726D472, double 0x4017DA37650E65EE, double 0x401B6A7123A9568E, double 0x401A3AE2FC3EBB4F, double 0x4017A57E789F4A22]], align 64
@__constant_15xindex = private constant [15 x i64] [i64 0, i64 3, i64 6, i64 9, i64 0, i64 3, i64 6, i64 9, i64 0, i64 3, i64 6, i64 0, i64 3, i64 6, i64 9], align 64
@__constant_11xindex = private constant [11 x i64] [i64 0, i64 4, i64 4, i64 4, i64 8, i64 8, i64 8, i64 11, i64 11, i64 11, i64 15], align 64
@__constant_15xf64 = private constant [15 x double] [double 0x40190857AFEA3DF7, double 6.440390e-01, double 0x4014FF3A14CEC41E, double 0x401B2630A91537A0, double 2.190110e+00, double 0x400231C9F72F76E6, double 0x401E0B59146E4C0E, double 0x401F7409E55C0FCB, double 0x401B584A515CE9E6, double 0x401B0345CFEDE97D, double 0x4007B44AA53FC009, double 0x4019DAC2DF0D4131, double 0x400679D3CBC48F11, double 0x4020F666CB10342B, double 0x40029024F6598E11], align 64

declare ptr @malloc(i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29) {
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %16, 0
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, ptr %17, 1
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %18, 2
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, i64 %19, 3, 0
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %21, 4, 0
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, i64 %20, 3, 1
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, i64 %22, 4, 1
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, ptr %11, 1
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 %12, 2
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 %13, 3, 0
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 %14, 4, 0
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, ptr %6, 1
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 %7, 2
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 %8, 3, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 %9, 4, 0
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, ptr %1, 1
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, i64 %2, 2
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 %3, 3, 0
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %4, 4, 0
  %53 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %23, 0
  %54 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %53, ptr %24, 1
  %55 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, i64 %25, 2
  %56 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, i64 %26, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, i64 %28, 4, 0
  %58 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, i64 %27, 3, 1
  %59 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %58, i64 %29, 4, 1
  %60 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, 1
  %61 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 1
  %62 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, 1
  %63 = getelementptr i64, ptr %61, i64 0
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr i64, ptr %61, i64 1
  %66 = load i64, ptr %65, align 4
  br label %67

67:                                               ; preds = %117, %30
  %68 = phi i64 [ %118, %117 ], [ %64, %30 ]
  %69 = icmp slt i64 %68, %66
  br i1 %69, label %70, label %119

70:                                               ; preds = %67
  %71 = getelementptr i64, ptr %62, i64 %68
  %72 = load i64, ptr %71, align 4
  %73 = mul i64 %68, 10
  br label %74

74:                                               ; preds = %115, %70
  %75 = phi i64 [ %116, %115 ], [ 0, %70 ]
  %76 = icmp slt i64 %75, 10
  br i1 %76, label %77, label %117

77:                                               ; preds = %74
  %78 = add i64 %75, %73
  %79 = getelementptr double, ptr %60, i64 %78
  %80 = load double, ptr %79, align 8
  %81 = call i64 @llvm.vscale.i64()
  %82 = mul i64 %81, 16
  br label %83

83:                                               ; preds = %86, %77
  %84 = phi i64 [ %114, %86 ], [ 0, %77 ]
  %85 = icmp slt i64 %84, 10
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = mul nsw i64 %84, -1
  %88 = add i64 %87, 10
  %89 = icmp slt i64 %88, %82
  %90 = select i1 %89, i64 %88, i64 %82
  %91 = call <vscale x 16 x i32> @llvm.stepvector.nxv16i32()
  %92 = trunc i64 %90 to i32
  %93 = insertelement <vscale x 16 x i32> undef, i32 %92, i32 0
  %94 = shufflevector <vscale x 16 x i32> %93, <vscale x 16 x i32> undef, <vscale x 16 x i32> zeroinitializer
  %95 = icmp slt <vscale x 16 x i32> %91, %94
  %96 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %97 = mul i64 %72, 10
  %98 = add i64 %97, %84
  %99 = getelementptr double, ptr %96, i64 %98
  %100 = call <vscale x 16 x double> @llvm.masked.load.nxv16f64.p0(ptr %99, i32 8, <vscale x 16 x i1> %95, <vscale x 16 x double> zeroinitializer)
  %101 = insertelement <vscale x 16 x double> undef, double %80, i32 0
  %102 = shufflevector <vscale x 16 x double> %101, <vscale x 16 x double> undef, <vscale x 16 x i32> zeroinitializer
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, 1
  %104 = mul i64 %75, 10
  %105 = add i64 %104, %84
  %106 = getelementptr double, ptr %103, i64 %105
  %107 = call <vscale x 16 x double> @llvm.masked.load.nxv16f64.p0(ptr %106, i32 8, <vscale x 16 x i1> %95, <vscale x 16 x double> zeroinitializer)
  %108 = fmul <vscale x 16 x double> %102, %107
  %109 = fadd <vscale x 16 x double> %100, %108
  %110 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %111 = mul i64 %72, 10
  %112 = add i64 %111, %84
  %113 = getelementptr double, ptr %110, i64 %112
  call void @llvm.masked.store.nxv16f64.p0(<vscale x 16 x double> %109, ptr %113, i32 8, <vscale x 16 x i1> %95)
  %114 = add i64 %84, %82
  br label %83

115:                                              ; preds = %83
  %116 = add i64 %75, 1
  br label %74

117:                                              ; preds = %74
  %118 = add i64 %68, 1
  br label %67

119:                                              ; preds = %67
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %59
}

define i64 @main() {
  %1 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (double, ptr null, i32 100) to i64), i64 64))
  %2 = ptrtoint ptr %1 to i64
  %3 = add i64 %2, 63
  %4 = urem i64 %3, 64
  %5 = sub i64 %3, %4
  %6 = inttoptr i64 %5 to ptr
  %7 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1, 0
  %8 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %7, ptr %6, 1
  %9 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, i64 0, 2
  %10 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %9, i64 10, 3, 0
  %11 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %10, i64 10, 3, 1
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %11, i64 10, 4, 0
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, i64 1, 4, 1
  %14 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @assemble_sparse()
  %15 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %14, 0
  %16 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %14, 1
  %17 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %14, 2
  %18 = extractvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %14, 3
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, 0
  %20 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, 1
  %21 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, 2
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, 3, 0
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, 4, 0
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 0
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 1
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 2
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 3, 0
  %28 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, 4, 0
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 0
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 1
  %31 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 2
  %32 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 3, 0
  %33 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 4, 0
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 0
  %35 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 1
  %36 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 2
  %37 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 0
  %38 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 1
  %39 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 0
  %40 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 1
  %41 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, ptr %24, ptr %25, i64 %26, i64 %27, i64 %28, ptr %29, ptr %30, i64 %31, i64 %32, i64 %33, { [2 x i64], [3 x i64] } %18, ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_10x10xf64, i64 0, i64 10, i64 10, i64 10, i64 1, ptr %34, ptr %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40)
  %42 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 1
  %43 = getelementptr double, ptr %42, i64 11
  %44 = load double, ptr %43, align 8
  %45 = fptosi double %44 to i64
  ret i64 %45
}

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @assemble_sparse() {
  %1 = load i64, ptr getelementptr (i64, ptr @__constant_11xindex, i64 1), align 4
  %2 = insertvalue { [2 x i64], [3 x i64] } { [2 x i64] [i64 10, i64 undef], [3 x i64] [i64 2, i64 0, i64 0] }, i64 %1, 1, 1
  %3 = insertvalue { [2 x i64], [3 x i64] } %2, i64 10, 0, 1
  %4 = mul i64 %1, 10
  %5 = insertvalue { [2 x i64], [3 x i64] } %3, i64 %4, 1, 2
  %6 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } { { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_11xindex, i64 0, [1 x i64] [i64 11], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_15xindex, i64 0, [1 x i64] [i64 15], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_15xf64, i64 0, [1 x i64] [i64 15], [1 x i64] [i64 1] }, { [2 x i64], [3 x i64] } undef }, { [2 x i64], [3 x i64] } %5, 3
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vscale.i64() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 16 x i32> @llvm.stepvector.nxv16i32() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 16 x double> @llvm.masked.load.nxv16f64.p0(ptr nocapture, i32 immarg, <vscale x 16 x i1>, <vscale x 16 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.nxv16f64.p0(<vscale x 16 x double>, ptr nocapture, i32 immarg, <vscale x 16 x i1>) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
