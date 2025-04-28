; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_9xindex = private constant [9 x i64] [i64 0, i64 3, i64 9, i64 0, i64 3, i64 9, i64 0, i64 3, i64 6], align 64
@__constant_11xindex = private constant [11 x i64] [i64 0, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 6, i64 6, i64 6, i64 9], align 64
@__constant_9xf64 = private constant [9 x double] [double 4.894980e-01, double 0x4022F0F14DB59579, double 0x401E746F587D6F97, double 8.103570e+00, double 0x40155202539756C9, double 0x40229997A24894C4, double 0x40171533F42352EB, double 5.022380e-01, double 0x3FFF71E9F2778141], align 64
@__constant_10x10xf64 = private constant [10 x [10 x double]] [[10 x double] [double 0x3FE1BC118378041C, double 0x401E582CA5DDE372, double 0x400744E32E6B27A5, double 0x4005976F231B02E9, double 0x3FEB851D33A80A5C, double 0x4012FFDAD73138D5, double 0x402092EE795C9DEA, double 0x3FF17B017984F894, double 0x401A2AB056C4C542, double 0x400E9D34BC14AE9A], [10 x double] [double 0x3FE82D39BCAF89EA, double 0x3FD0851B57CCC09C, double 0x4000C6A7F3FBE600, double 0x40222E2B147B4944, double 0x4016E1A91CF79068, double 0x401DD45513A62DF8, double 0x4019C2024EB16DD0, double 0x40062A05EB910E70, double 0x4020678055190151, double 0x401102F873CE8447], [10 x double] [double 0x3FC830228C946500, double 0x401EA29B7ABBC6BF, double 0x40204FE8009D0EA2, double 0x3FF3ED6EC9851928, double 0x4016F89B4898BD9E, double 0x402046F4C63B4285, double 0x400A097BDFE27BAF, double 0x401854E2933CF674, double 0x4017183E23BB08F2, double 0x3FF51E7C40F5D61B], [10 x double] [double 0x3FFA222C5BCBD7A2, double 0x40054D7D1027CD34, double 0x402194B61C691E37, double 0x3FFC7DB94B965034, double 0x3FEF02A98DBFABA0, double 0x4010F6E76FBDFDC3, double 0x4005D63DFE2019E4, double 0x400038447559AA90, double 0x4013EEB464E8A4E6, double 0x40199321C6F3BD4E], [10 x double] [double 0x3FE8746E64625020, double 0x4023DA7B4F909885, double 0x401BADC6EE8E0E49, double 0x3FF9D824D0C05382, double 0x401D44CFA0066460, double 0x4021551DC68E97C8, double 0x4012A41F9639ED96, double 0x400A730A27CB5B30, double 0x4015790D356CBDC7, double 0x402154674F250BCC], [10 x double] [double 0x4015D5C22BBC52A6, double 0x400B603B5CB44F22, double 0x4000C117BE244238, double 0x40232C0C239B2F93, double 0x3FFDB00766E413A4, double 0x4009BB6D783431BA, double 0x401A43B5FAF7C3D6, double 0x4004DD9054049EEC, double 0x3FF67B618D0CD165, double 0x401D6C8453150097], [10 x double] [double 0x401C96E52B727A7A, double 0x401D12A4DBA18EB7, double 0x40125956D6F6C3ED, double 0x40084FFBFB79657E, double 0x40029A74FED509EE, double 0x40224BC53E22FF19, double 0x3FFC562EE66A839E, double 0x40209ACEE2152709, double 0x401E2375B1CB6AAD, double 0x3FA60AF44507D280], [10 x double] [double 0x3FE2C5A37E0EAAA2, double 0x401EC5CC355DE512, double 0x4011CA20768F072E, double 0x401105AC10FC4BF3, double 0x401EEA6AD92B5DEA, double 0x4019B9B2E6BFFE9E, double 0x4018FF50192006FD, double 0x4023B5F32AB6C9AD, double 0x401F4BCB3C9A5D71, double 0x401E4867840BA11C], [10 x double] [double 0x402037EF79070B7E, double 0x40055A6C49F19A58, double 0x4012C85875E63874, double 0x401C97EE073AF704, double 0x401B4A793D0DAE58, double 0x400DBD3B945EA0CC, double 0x40104E779C52B62F, double 0x3FF6463E4A26BBF2, double 0x4005ACC6D881B948, double 0x40217863CF9293A2], [10 x double] [double 0x3FC3627635DF14E0, double 0x4010287D1F9EFF8B, double 0x4002840AADD9F56E, double 0x3FC76A0879863AF0, double 0x3FE359CEB421E806, double 0x400F90F2E1484400, double 0x40134676131DED06, double 0x401189E7216E5AF1, double 0x4021FCBBD7DAFD1A, double 0x400BBB456A6192B7]], align 64

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
  %82 = mul i64 %81, 32
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
  %91 = call <vscale x 32 x i32> @llvm.stepvector.nxv32i32()
  %92 = trunc i64 %90 to i32
  %93 = insertelement <vscale x 32 x i32> undef, i32 %92, i32 0
  %94 = shufflevector <vscale x 32 x i32> %93, <vscale x 32 x i32> undef, <vscale x 32 x i32> zeroinitializer
  %95 = icmp slt <vscale x 32 x i32> %91, %94
  %96 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %97 = mul i64 %72, 10
  %98 = add i64 %97, %84
  %99 = getelementptr double, ptr %96, i64 %98
  %100 = call <vscale x 32 x double> @llvm.masked.load.nxv32f64.p0(ptr %99, i32 8, <vscale x 32 x i1> %95, <vscale x 32 x double> zeroinitializer)
  %101 = insertelement <vscale x 32 x double> undef, double %80, i32 0
  %102 = shufflevector <vscale x 32 x double> %101, <vscale x 32 x double> undef, <vscale x 32 x i32> zeroinitializer
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, 1
  %104 = mul i64 %75, 10
  %105 = add i64 %104, %84
  %106 = getelementptr double, ptr %103, i64 %105
  %107 = call <vscale x 32 x double> @llvm.masked.load.nxv32f64.p0(ptr %106, i32 8, <vscale x 32 x i1> %95, <vscale x 32 x double> zeroinitializer)
  %108 = fmul <vscale x 32 x double> %102, %107
  %109 = fadd <vscale x 32 x double> %100, %108
  %110 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %111 = mul i64 %72, 10
  %112 = add i64 %111, %84
  %113 = getelementptr double, ptr %110, i64 %112
  call void @llvm.masked.store.nxv32f64.p0(<vscale x 32 x double> %109, ptr %113, i32 8, <vscale x 32 x i1> %95)
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
  %6 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } { { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_11xindex, i64 0, [1 x i64] [i64 11], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_9xindex, i64 0, [1 x i64] [i64 9], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_9xf64, i64 0, [1 x i64] [i64 9], [1 x i64] [i64 1] }, { [2 x i64], [3 x i64] } undef }, { [2 x i64], [3 x i64] } %5, 3
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vscale.i64() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 32 x i32> @llvm.stepvector.nxv32i32() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 32 x double> @llvm.masked.load.nxv32f64.p0(ptr nocapture, i32 immarg, <vscale x 32 x i1>, <vscale x 32 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.nxv32f64.p0(<vscale x 32 x double>, ptr nocapture, i32 immarg, <vscale x 32 x i1>) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
