; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_10x10xf64 = private constant [10 x [10 x double]] [[10 x double] [double 0x401108DB32C8709A, double 0x3FF245DCB08215AB, double 0x4023067F57B7DEC2, double 0x4012164AC8EFC2F8, double 0x4016A3873BF75D0B, double 0x3FE1376B2B3D0D9A, double 0x400F8942BC46043B, double 0x401E015BB46CC3C0, double 0x40230A431948B67E, double 0x4022BE4B47BFC086], [10 x double] [double 0x4001527CFE75AC27, double 0x400E6FE64925CB15, double 0x4002018ACE3A5F18, double 0x4011421696B422E8, double 0x400E03B3FA4DB002, double 0x3FCED6F319DD3DB0, double 0x4016DE4491646322, double 0x40190D3BBFF4BDB4, double 0x40094DA0D1B2DD96, double 0x4006BFA42BDC5C50], [10 x double] [double 0x401FC3D6D292F6A3, double 0x4021BD968DAD5AFC, double 0x400770091822ADF0, double 0x40231D7BBCD698F0, double 0x401F751AE7C9BA0E, double 0x400B08B995FD5387, double 0x40106A543BB67374, double 0x4020574F59D51998, double 0x401718E1C23BCE85, double 0x4023959992849974], [10 x double] [double 0x401D9F8F3DBD1B0E, double 0x4003EDCECA141794, double 0x3FE6A49B3920672A, double 0x4006C44FBFF2A124, double 0x401BA1386218C5C1, double 0x401D5764CBF3C22B, double 0x4017F491BE6235F3, double 0x401C85C94EA124C7, double 0x3FD6C7E08F9F9CD4, double 0x401C631C82911E5F], [10 x double] [double 0x3FF702B8FD24BEDE, double 0x400780980890081B, double 0x401F5E36F0418320, double 0x400E248155805EB2, double 0x40156E4AB5C80B8A, double 0x402161256F505B36, double 0x401038E049397292, double 0x4013B691AD844961, double 0x4005E049B1F91F73, double 0x3FEE481331DFC0B4], [10 x double] [double 0x401B3E07148C37E5, double 0x400ED89F6922DFD5, double 0x4017BAA0CC3D6C68, double 0x400A571A4442D144, double 0x40068D2AD216F085, double 0x401824B8BEAD8A5C, double 0x401678E686585763, double 0x400521E02545BA80, double 0x4002D037E21CAF8C, double 0x4022674139B66722], [10 x double] [double 0x3FBC97949DA0E9D0, double 0x401D1DDD093D2682, double 0x40123E1088E7BD10, double 0x3FB76DFFE38D86B0, double 0x4020B4FB591BD610, double 0x401865E82FFE26B3, double 0x3FDF7FD05AC1DDC8, double 0x4020F0D71A6F443A, double 0x401E42846B0A0437, double 0x4001B131C45438D6], [10 x double] [double 0x3FDCC1233A75DBF0, double 0x401FA37272846CCC, double 0x401629ABAFDF2440, double 0x4020316EE1966595, double 0x3FD9F188387D96FC, double 0x3FC4F68C6C527BD8, double 0x4017747ED2095522, double 0x40226ADB1839F3AC, double 0x400D56D5E17BFBD2, double 0x40221A260A134BB0], [10 x double] [double 0x4021142449104386, double 0x401D176962FD96E9, double 0x3FF30F5DE74B897D, double 0x3FE13C43726D1FDE, double 0x4019F16C56D20083, double 0x400C1EE05EEB7EAA, double 0x3FFDA80993BC0AD6, double 0x401D4A72FC084AA5, double 0x4020ADF290C329E2, double 0x4016B67A579F23F9], [10 x double] [double 0x4000AEBC132BB2C0, double 0x3FEE544C30B8DCC6, double 0x40080226F294C9D4, double 0x4020CD1CC3D96095, double 0x401F542BB69BF9D4, double 0x40160C625ED1EF65, double 0x400D34D2A70DA114, double 0x400BA295F16FCA80, double 0x40192E36EEC7E4FC, double 0x401B151E21083294]], align 64
@__constant_50xindex = private constant [50 x i64] [i64 0, i64 1, i64 3, i64 6, i64 7, i64 8, i64 9, i64 4, i64 5, i64 2, i64 5, i64 0, i64 3, i64 5, i64 6, i64 9, i64 5, i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8, i64 9, i64 0, i64 1, i64 3, i64 6, i64 8, i64 9, i64 0, i64 1, i64 2, i64 4, i64 5, i64 7, i64 9, i64 1, i64 2, i64 7, i64 8, i64 9, i64 0, i64 2, i64 3, i64 6, i64 8, i64 9], align 64
@__constant_11xindex = private constant [11 x i64] [i64 0, i64 7, i64 9, i64 11, i64 16, i64 19, i64 26, i64 32, i64 39, i64 44, i64 50], align 64
@__constant_50xf64 = private constant [50 x double] [double 0x400F682ADC4C9C91, double 8.944720e+00, double 0x401B8C347E8CCDD9, double 0x40171D0E12E83A11, double 0x4014DF993D5347A6, double 0x401E09F51697F1FA, double 0x40052B05B7CFE586, double 2.588540e-01, double 8.491940e+00, double 0x40200FF993D5347A, double 5.630430e-01, double 0x40148623D0BFA094, double 0x400C55A31A4BDBA1, double 0x401CD42D8C2A454E, double 0x4021AE0C7C0F4517, double 5.523330e+00, double 0x4023B78012DFD695, double 0x40031B1422CCB3A2, double 0x401AF73083558A76, double 0x4003D606B7AA25D9, double 0x401C32B8C75C4A84, double 0x3FF6C50268900C52, double 0x3FF1CAA326E11559, double 0x400E29C3CE2089E3, double 0x400CABB4D48882F1, double 0x401997E308787486, double 0x401240229A5EBB77, double 0x402179E40C8472C1, double 5.834930e-01, double 0x3FF8AD3A604E1E71, double 0x400078A6DACABC51, double 0x402308FCD67FD3F6, double 0x3FF728AE74F2F124, double 0x40072904F6DFC5CE, double 0x4012B917D6B65A9B, double 0x40124E7B3D8E0008, double 0x402126ADB402D16C, double 0x401E69999999999A, double 1.179790e+00, double 0x40183CB039EF0F17, double 0x3FF234DDF86E3B47, double 0x4011E927D45A5FC8, double 0x401D77064ECE9A2C, double 5.176320e-01, double 0x40063B30728E92D5, double 0x401721E8E6080735, double 0x4023F752FC2656AC, double 0x400287DF5CF2495E, double 0x401FE8ED1BF7AD4B, double 0x4005C1C0CA600B03], align 64

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
  %82 = mul i64 %81, 8
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
  %91 = call <vscale x 8 x i32> @llvm.stepvector.nxv8i32()
  %92 = trunc i64 %90 to i32
  %93 = insertelement <vscale x 8 x i32> undef, i32 %92, i32 0
  %94 = shufflevector <vscale x 8 x i32> %93, <vscale x 8 x i32> undef, <vscale x 8 x i32> zeroinitializer
  %95 = icmp slt <vscale x 8 x i32> %91, %94
  %96 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %97 = mul i64 %72, 10
  %98 = add i64 %97, %84
  %99 = getelementptr double, ptr %96, i64 %98
  %100 = call <vscale x 8 x double> @llvm.masked.load.nxv8f64.p0(ptr %99, i32 8, <vscale x 8 x i1> %95, <vscale x 8 x double> zeroinitializer)
  %101 = insertelement <vscale x 8 x double> undef, double %80, i32 0
  %102 = shufflevector <vscale x 8 x double> %101, <vscale x 8 x double> undef, <vscale x 8 x i32> zeroinitializer
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, 1
  %104 = mul i64 %75, 10
  %105 = add i64 %104, %84
  %106 = getelementptr double, ptr %103, i64 %105
  %107 = call <vscale x 8 x double> @llvm.masked.load.nxv8f64.p0(ptr %106, i32 8, <vscale x 8 x i1> %95, <vscale x 8 x double> zeroinitializer)
  %108 = fmul <vscale x 8 x double> %102, %107
  %109 = fadd <vscale x 8 x double> %100, %108
  %110 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, 1
  %111 = mul i64 %72, 10
  %112 = add i64 %111, %84
  %113 = getelementptr double, ptr %110, i64 %112
  call void @llvm.masked.store.nxv8f64.p0(<vscale x 8 x double> %109, ptr %113, i32 8, <vscale x 8 x i1> %95)
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
  %6 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } { { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_11xindex, i64 0, [1 x i64] [i64 11], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_50xindex, i64 0, [1 x i64] [i64 50], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_50xf64, i64 0, [1 x i64] [i64 50], [1 x i64] [i64 1] }, { [2 x i64], [3 x i64] } undef }, { [2 x i64], [3 x i64] } %5, 3
  ret { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vscale.i64() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i32> @llvm.stepvector.nxv8i32() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 8 x double> @llvm.masked.load.nxv8f64.p0(ptr nocapture, i32 immarg, <vscale x 8 x i1>, <vscale x 8 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.nxv8f64.p0(<vscale x 8 x double>, ptr nocapture, i32 immarg, <vscale x 8 x i1>) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
