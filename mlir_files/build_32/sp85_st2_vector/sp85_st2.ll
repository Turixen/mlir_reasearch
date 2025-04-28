; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_10x10xf64 = private constant [10 x [10 x double]] [[10 x double] [double 0x400572648DD5BAD4, double 0x4016E3ED46F4B870, double 0x40185DAB10124672, double 0x40165C6C86CC5725, double 0x40006A693211E5A2, double 0x40173B47797DFE90, double 0x40238F69C4845A18, double 0x401AB40954EC344A, double 0x40202AFF80EA2C03, double 0x400E82AA13A0C1BA], [10 x double] [double 0x401544283155398C, double 0x4021B9BBC0014087, double 0x3FF9551BCF61EBB8, double 0x4017C0370D65F43A, double 0x4023E3CB894E7DCD, double 0x4008496206BEFDD8, double 0x40124538A70C3CF8, double 0x4020B95052D0D7A2, double 0x401C90CA864A31CD, double 0x40078E82E5209AD4], [10 x double] [double 0x40223FA43B21295B, double 0x4010A573994E2362, double 0x4023C2A1237DCF6E, double 0x3FF7627C6CF9F792, double 0x4003ED699AC53EC6, double 0x400BD68F4EAF9042, double 0x3FF02CC3C8934B3A, double 0x401E174211DD02CE, double 0x4018D77899E1AC5B, double 0x4015A9065DE2795D], [10 x double] [double 0x4012BFFEA0B42622, double 0x40219210F8F3CE86, double 0x4014910EF0682A96, double 0x40234E677AD1DBC9, double 0x400E80ED1D1B4B02, double 0x3FDBB77CB3EFB480, double 0x3FF78365B55DF970, double 0x401410D81A1ED240, double 0x401C644BDA7B1835, double 0x3FAA8D0E1C178500], [10 x double] [double 0x401997108B71A3AE, double 0x4015E21DC88B8D7E, double 0x401AA0D05AD39900, double 0x4022A2FF27AB312B, double 0x40118B35B228CC99, double 0x3FF69D9CE5AE4210, double 0x401FADD28083FCBC, double 0x3FFA6C131459BAB1, double 0x4014F940CAFC4826, double 0x4014B4D8CA0B1ADD], [10 x double] [double 0x401287BE8E0BE520, double 0x401E1B4BD9F54277, double 0x402147F2469030E7, double 0x401EDA4DD25CB67A, double 0x4003EB9757B5B85D, double 0x401C2BBACE1E3AEE, double 0x4021A557D1FF0E4A, double 0x4004160D6483DF47, double 0x401F13F1A823D2D0, double 0x400D727D30731067], [10 x double] [double 0x401F64A8E6E30E9E, double 0x401FCF76C664B023, double 0x401C02105C602FD2, double 0x402281F59E62BDDE, double 0x4021E4CA96F25C6F, double 0x4011984678DE1DA2, double 0x4011370D0BC6C496, double 0x4022574EF21FB605, double 0x401C5C17CC7417C0, double 0x3FDDA909D148F110], [10 x double] [double 0x4022A3D7D8FB6A6C, double 0x401462669925B8DD, double 0x401FD5D4F0EC3E6F, double 0x3FF85C7C753F86D3, double 0x400E65E72296E436, double 0x4020353EA68A8A0E, double 0x3FED60FB7606150E, double 0x401C04AD83F83F6B, double 0x4002DAA6D7CC4D70, double 0x3FC0F24B6E5577A8], [10 x double] [double 0x40190781C5B51E78, double 0x40179B3EFDB5091C, double 0x4022719D36EB9D60, double 0x4018A0C61CC977B6, double 0x402262566EE43F16, double 0x400432B046704D6C, double 0x401B4F81E2025EC7, double 0x401C357C840161FC, double 0x400FF08AB134E378, double 0x3FEFB5B49708C6C4], [10 x double] [double 0x400B2B63C3B2EC66, double 0x4013784EF0E167A2, double 0x4023B6D9482FD8D8, double 0x4018D6E44E73EB58, double 0x3FF0E3AAC71FC53C, double 0x4023FFD1A9136C30, double 0x4016E965C2857B7E, double 0x400ADF281A8FB64E, double 0x401735C8D3BD0006, double 0x40234A0435605D44]], align 64
@__constant_15xindex = private constant [15 x i64] [i64 0, i64 8, i64 2, i64 6, i64 8, i64 0, i64 4, i64 6, i64 8, i64 0, i64 4, i64 6, i64 2, i64 6, i64 8], align 64
@__constant_11xindex = private constant [11 x i64] [i64 0, i64 2, i64 2, i64 5, i64 5, i64 9, i64 9, i64 12, i64 12, i64 15, i64 15], align 64
@__constant_15xf64 = private constant [15 x double] [double 0x4016546801711948, double 0x3FF7CE3476295209, double 0x4022023358F2E05D, double 0x401D1BA4D6E47DC3, double 0x400FB83621FAFC8B, double 0x401513B5BF6A0DBB, double 0x40129B8F14DB5958, double 0x401AB2541D8E8640, double 0x4023BA52EF911CF3, double 0x3FF84DB0574B4070, double 0x400672D55A3A083A, double 0x401DBC5A3E39F773, double 0x4011E6A6E32E3822, double 1.673260e+00, double 0x40222691C8EABFFD], align 64

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
  %6 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } { { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_11xindex, i64 0, [1 x i64] [i64 11], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_15xindex, i64 0, [1 x i64] [i64 15], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_15xf64, i64 0, [1 x i64] [i64 15], [1 x i64] [i64 1] }, { [2 x i64], [3 x i64] } undef }, { [2 x i64], [3 x i64] } %5, 3
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
