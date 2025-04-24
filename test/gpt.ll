; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_4x3xf64 = private constant [4 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00]], align 64
@__constant_5xindex = private constant [5 x i64] [i64 0, i64 2, i64 3, i64 4, i64 6], align 64
@__constant_6xindex = private constant [6 x i64] [i64 0, i64 2, i64 1, i64 2, i64 0, i64 3], align 64
@__constant_6xf64 = private constant [6 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00], align 64

declare ptr @malloc(i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @sparse_dense_matmul(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12, i64 %13, i64 %14, { [2 x i64], [3 x i64] } %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29) {
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
  br label %63

63:                                               ; preds = %116, %30
  %64 = phi i64 [ %117, %116 ], [ 0, %30 ]
  %65 = icmp slt i64 %64, 4
  br i1 %65, label %66, label %118

66:                                               ; preds = %63
  %67 = getelementptr i64, ptr %61, i64 %64
  %68 = load i64, ptr %67, align 4
  %69 = add i64 %64, 1
  %70 = getelementptr i64, ptr %61, i64 %69
  %71 = load i64, ptr %70, align 4
  br label %72

72:                                               ; preds = %114, %66
  %73 = phi i64 [ %115, %114 ], [ %68, %66 ]
  %74 = icmp slt i64 %73, %71
  br i1 %74, label %75, label %116

75:                                               ; preds = %72
  %76 = getelementptr i64, ptr %62, i64 %73
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr double, ptr %60, i64 %73
  %79 = load double, ptr %78, align 8
  %80 = call i64 @llvm.vscale.i64()
  %81 = mul i64 %80, 4
  br label %82

82:                                               ; preds = %85, %75
  %83 = phi i64 [ %113, %85 ], [ 0, %75 ]
  %84 = icmp slt i64 %83, 3
  br i1 %84, label %85, label %114

85:                                               ; preds = %82
  %86 = mul nsw i64 %83, -1
  %87 = add i64 %86, 3
  %88 = icmp slt i64 %87, %81
  %89 = select i1 %88, i64 %87, i64 %81
  %90 = call <vscale x 4 x i32> @llvm.stepvector.nxv4i32()
  %91 = trunc i64 %89 to i32
  %92 = insertelement <vscale x 4 x i32> undef, i32 %91, i32 0
  %93 = shufflevector <vscale x 4 x i32> %92, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %94 = icmp slt <vscale x 4 x i32> %90, %93
  %95 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %96 = mul i64 %64, 3
  %97 = add i64 %96, %83
  %98 = getelementptr double, ptr %95, i64 %97
  %99 = call <vscale x 4 x double> @llvm.masked.load.nxv4f64.p0(ptr %98, i32 8, <vscale x 4 x i1> %94, <vscale x 4 x double> zeroinitializer)
  %100 = insertelement <vscale x 4 x double> undef, double %79, i32 0
  %101 = shufflevector <vscale x 4 x double> %100, <vscale x 4 x double> undef, <vscale x 4 x i32> zeroinitializer
  %102 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, 1
  %103 = mul i64 %77, 3
  %104 = add i64 %103, %83
  %105 = getelementptr double, ptr %102, i64 %104
  %106 = call <vscale x 4 x double> @llvm.masked.load.nxv4f64.p0(ptr %105, i32 8, <vscale x 4 x i1> %94, <vscale x 4 x double> zeroinitializer)
  %107 = fmul <vscale x 4 x double> %101, %106
  %108 = fadd <vscale x 4 x double> %99, %107
  %109 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %110 = mul i64 %64, 3
  %111 = add i64 %110, %83
  %112 = getelementptr double, ptr %109, i64 %111
  call void @llvm.masked.store.nxv4f64.p0(<vscale x 4 x double> %108, ptr %112, i32 8, <vscale x 4 x i1> %94)
  %113 = add i64 %83, %81
  br label %82

114:                                              ; preds = %82
  %115 = add i64 %73, 1
  br label %72

116:                                              ; preds = %72
  %117 = add i64 %64, 1
  br label %63

118:                                              ; preds = %63
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %59
}

define double @compute_sum(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) {
  %8 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %9 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, ptr %1, 1
  %10 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %9, i64 %2, 2
  %11 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %10, i64 %3, 3, 0
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %11, i64 %5, 4, 0
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, i64 %4, 3, 1
  %14 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, i64 %6, 4, 1
  br label %15

15:                                               ; preds = %32, %7
  %16 = phi i64 [ %33, %32 ], [ 0, %7 ]
  %17 = phi double [ %22, %32 ], [ 0.000000e+00, %7 ]
  %18 = icmp slt i64 %16, 4
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %24, %19
  %21 = phi i64 [ %31, %24 ], [ 0, %19 ]
  %22 = phi double [ %30, %24 ], [ %17, %19 ]
  %23 = icmp slt i64 %21, 3
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, 1
  %26 = mul i64 %16, 3
  %27 = add i64 %26, %21
  %28 = getelementptr double, ptr %25, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fadd double %22, %29
  %31 = add i64 %21, 1
  br label %20

32:                                               ; preds = %20
  %33 = add i64 %16, 1
  br label %15

34:                                               ; preds = %15
  ret double %17
}

define i32 @main() {
  %1 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (double, ptr null, i32 12) to i64), i64 64))
  %2 = ptrtoint ptr %1 to i64
  %3 = add i64 %2, 63
  %4 = urem i64 %3, 64
  %5 = sub i64 %3, %4
  %6 = inttoptr i64 %5 to ptr
  %7 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1, 0
  %8 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %7, ptr %6, 1
  %9 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, i64 0, 2
  %10 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %9, i64 4, 3, 0
  %11 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %10, i64 3, 3, 1
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %11, i64 3, 4, 0
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, i64 1, 4, 1
  %14 = call { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @assemble_sparse_tensor()
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
  %41 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @sparse_dense_matmul(ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, ptr %24, ptr %25, i64 %26, i64 %27, i64 %28, ptr %29, ptr %30, i64 %31, i64 %32, i64 %33, { [2 x i64], [3 x i64] } %18, ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_4x3xf64, i64 0, i64 4, i64 3, i64 3, i64 1, ptr %34, ptr %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40)
  %42 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 0
  %43 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 1
  %44 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 2
  %45 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 3, 0
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 3, 1
  %47 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 4, 0
  %48 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 4, 1
  %49 = call double @compute_sum(ptr %42, ptr %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48)
  %50 = fmul double %49, 1.000000e+01
  %51 = fptosi double %50 to i32
  ret i32 %51
}

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @assemble_sparse_tensor() {
  %1 = load i64, ptr getelementptr (i64, ptr @__constant_5xindex, i64 4), align 4
  %2 = insertvalue { [2 x i64], [3 x i64] } { [2 x i64] [i64 4, i64 4], [3 x i64] [i64 5, i64 0, i64 0] }, i64 %1, 1, 1
  %3 = insertvalue { [2 x i64], [3 x i64] } %2, i64 %1, 1, 2
  %4 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } { { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_5xindex, i64 0, [1 x i64] [i64 5], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_6xindex, i64 0, [1 x i64] [i64 6], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_6xf64, i64 0, [1 x i64] [i64 6], [1 x i64] [i64 1] }, { [2 x i64], [3 x i64] } undef }, { [2 x i64], [3 x i64] } %3, 3
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vscale.i64() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.stepvector.nxv4i32() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 4 x double> @llvm.masked.load.nxv4f64.p0(ptr nocapture, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.nxv4f64.p0(<vscale x 4 x double>, ptr nocapture, i32 immarg, <vscale x 4 x i1>) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
