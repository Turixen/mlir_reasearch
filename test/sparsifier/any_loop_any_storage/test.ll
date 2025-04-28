; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_5xindex = private constant [5 x i64] [i64 0, i64 2, i64 3, i64 5, i64 6], align 64
@__constant_6xindex = private constant [6 x i64] [i64 0, i64 3, i64 1, i64 0, i64 2, i64 3], align 64
@__constant_6xf64 = private constant [6 x double] [double 1.000000e+00, double 5.000000e+00, double 3.000000e+00, double 2.000000e+00, double 4.000000e+00, double 6.000000e+00], align 64
@__constant_4x3xf64_0 = private constant [4 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00]], align 64
@__constant_4x3xf64 = private constant [4 x [3 x double]] [[3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00], [3 x double] [double 4.000000e+00, double 4.000000e+00, double 4.000000e+00], [3 x double] [double 1.100000e+01, double 1.100000e+01, double 1.100000e+01]], align 64

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

63:                                               ; preds = %103, %30
  %64 = phi i64 [ %104, %103 ], [ 0, %30 ]
  %65 = icmp slt i64 %64, 4
  br i1 %65, label %66, label %105

66:                                               ; preds = %63
  %67 = getelementptr i64, ptr %61, i64 %64
  %68 = load i64, ptr %67, align 4
  %69 = add i64 %64, 1
  %70 = getelementptr i64, ptr %61, i64 %69
  %71 = load i64, ptr %70, align 4
  br label %72

72:                                               ; preds = %101, %66
  %73 = phi i64 [ %102, %101 ], [ %68, %66 ]
  %74 = icmp slt i64 %73, %71
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = getelementptr i64, ptr %62, i64 %73
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr double, ptr %60, i64 %73
  %79 = load double, ptr %78, align 8
  br label %80

80:                                               ; preds = %83, %75
  %81 = phi i64 [ %100, %83 ], [ 0, %75 ]
  %82 = icmp slt i64 %81, 3
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %85 = mul i64 %77, 3
  %86 = add i64 %85, %81
  %87 = getelementptr double, ptr %84, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, 1
  %90 = mul i64 %64, 3
  %91 = add i64 %90, %81
  %92 = getelementptr double, ptr %89, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = fmul double %79, %93
  %95 = fadd double %88, %94
  %96 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %97 = mul i64 %77, 3
  %98 = add i64 %97, %81
  %99 = getelementptr double, ptr %96, i64 %98
  store double %95, ptr %99, align 8
  %100 = add i64 %81, 1
  br label %80

101:                                              ; preds = %80
  %102 = add i64 %73, 1
  br label %72

103:                                              ; preds = %72
  %104 = add i64 %64, 1
  br label %63

105:                                              ; preds = %63
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
  %41 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @sparse_dense_matmul(ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, ptr %24, ptr %25, i64 %26, i64 %27, i64 %28, ptr %29, ptr %30, i64 %31, i64 %32, i64 %33, { [2 x i64], [3 x i64] } %18, ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_4x3xf64_0, i64 0, i64 4, i64 3, i64 3, i64 1, ptr %34, ptr %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %64, %0
  %43 = phi i64 [ %65, %64 ], [ 0, %0 ]
  %44 = phi i1 [ %49, %64 ], [ true, %0 ]
  %45 = icmp slt i64 %43, 4
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %51, %46
  %48 = phi i64 [ %63, %51 ], [ 0, %46 ]
  %49 = phi i1 [ %62, %51 ], [ %44, %46 ]
  %50 = icmp slt i64 %48, 3
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 1
  %53 = mul i64 %43, 3
  %54 = add i64 %53, %48
  %55 = getelementptr double, ptr %52, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = mul i64 %43, 3
  %58 = add i64 %57, %48
  %59 = getelementptr double, ptr @__constant_4x3xf64, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = fcmp oeq double %56, %60
  %62 = and i1 %49, %61
  %63 = add i64 %48, 1
  br label %47

64:                                               ; preds = %47
  %65 = add i64 %43, 1
  br label %42

66:                                               ; preds = %42
  %67 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 0
  %68 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 1
  %69 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 2
  %70 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 3, 0
  %71 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 3, 1
  %72 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 4, 0
  %73 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 4, 1
  %74 = call double @compute_sum(ptr %67, ptr %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = fcmp oeq double %74, 6.300000e+01
  %76 = and i1 %44, %75
  %77 = select i1 %76, i32 1, i32 2
  ret i32 %77
}

define { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } @assemble_sparse_tensor() {
  %1 = load i64, ptr getelementptr (i64, ptr @__constant_5xindex, i64 4), align 4
  %2 = insertvalue { [2 x i64], [3 x i64] } { [2 x i64] [i64 4, i64 4], [3 x i64] [i64 5, i64 0, i64 0] }, i64 %1, 1, 1
  %3 = insertvalue { [2 x i64], [3 x i64] } %2, i64 %1, 1, 2
  %4 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } { { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_5xindex, i64 0, [1 x i64] [i64 5], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_6xindex, i64 0, [1 x i64] [i64 6], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_6xf64, i64 0, [1 x i64] [i64 6], [1 x i64] [i64 1] }, { [2 x i64], [3 x i64] } undef }, { [2 x i64], [3 x i64] } %3, 3
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %4
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
