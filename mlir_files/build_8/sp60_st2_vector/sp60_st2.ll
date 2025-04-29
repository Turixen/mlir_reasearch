; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_10x10xf64 = private constant [10 x [10 x double]] [[10 x double] [double 0x40105AF80B75478A, double 0x4015F363D9E312D1, double 0x400C28EB7C753DC0, double 0x3FE8C82A69F12E98, double 0x3FEC713C67A93FFE, double 0x401263253EED8C86, double 0x3FCC4EF63D0B4E58, double 0x401EC08288D6EE4B, double 0x400F067A95FD2B6F, double 0x4017AF74C3608F5B], [10 x double] [double 0x401C7BFDC4782E94, double 0x4022F6E7FE1764B4, double 0x40090B004934C686, double 0x400818640B990484, double 0x3FE87EAE2E05FD5C, double 0x401577FE5002C9D9, double 0x4016CAF7C0222C13, double 0x400DC3A82C4CCD6C, double 0x3FF5EF9E91C83C2F, double 0x3FF2ACB1FA677F53], [10 x double] [double 0x401A16325C172E55, double 0x400F80207816A8EC, double 0x3FFCA11B1F349895, double 0x4015A62B4BE052A6, double 0x4019DA8C03FF4D8E, double 0x4013732FED322303, double 0x4019D6E123230F70, double 0x40134886C07688CA, double 0x402354DFCE0AC32B, double 0x3FEA9577750C302C], [10 x double] [double 0x400CC7B8842032E6, double 0x4015C387F581D219, double 0x4005124295B6197C, double 0x3FD156722C3AB528, double 0x3FF9BB6107639641, double 0x4023D5E10EEE39A8, double 0x4018760AAC87A75D, double 0x40225BB642FBF63E, double 0x400F7B10DA478056, double 0x4022016B7392828E], [10 x double] [double 0x40228C65C3BE69D0, double 0x40177908CA212F25, double 0x40173103E38F0C3E, double 0x400381A4E903B01A, double 0x402203AB9BF298F2, double 0x40168BB3503EFEE0, double 0x40147D97C991034E, double 0x3FD7D2B5AC23C9BC, double 0x401A0B4A6BFB1E78, double 0x40159719A5D858C6], [10 x double] [double 0x3FD362D6BF0A5044, double 0x400BB1FC5E2AE52E, double 0x401E737A5A584602, double 0x4011CE87DCAF9CE4, double 0x3FFA679A12250DB8, double 0x3FFD3C69768977C5, double 0x401E84F86D6C63FE, double 0x3FDB0664921E6CF8, double 0x401692457EC7C3A9, double 0x40203F0141424ECF], [10 x double] [double 0x401235E8B8174631, double 0x400EE95712619B1E, double 0x4010DA122EC0F24E, double 0x4020F9B45A34CF32, double 0x40209FF9E76A49D2, double 0x4021727BFB67F312, double 0x401184DA983EC411, double 0x40212427F9649A24, double 0x4020188468D1C0A7, double 0x401C1E967658CF44], [10 x double] [double 0x401858FF97804D2F, double 0x4023DF75EC2AD846, double 0x3FEF47F40FCFA890, double 0x40139FB7B53F0CE8, double 0x4020DB13A7ED9F84, double 0x3FCE244CDBF04320, double 0x400C89E5E86ADC38, double 0x3FF2B6A0F03981EF, double 0x4023E73F3A821964, double 0x3FEACB7A4D8C4F94], [10 x double] [double 0x400B212C39C37D18, double 0x4012C3CFCFD625BF, double 0x401EC19D65FA4F9E, double 0x4022BA946F5A2D78, double 0x3FF16F040BC95AF6, double 0x4020F3554A6BEE00, double 0x402238491025294C, double 0x3FF51A5D30E76DBB, double 0x4003A3BA3EEB955B, double 0x401FC3E1D576945F], [10 x double] [double 0x400113B4C316DDC4, double 0x40131302A683134E, double 0x3FE1972EB76D9B4A, double 0x4021CE17816699FC, double 0x4023EF14EBDC03CD, double 0x3FF4A60A046B6CAF, double 0x40220FFFA8260799, double 0x401B431C0FEAA868, double 0x401D4474D9E1F56E, double 0x3FFD6A0DC6AC66AF]], align 64
@__constant_40xindex = private constant [40 x i64] [i64 0, i64 2, i64 4, i64 6, i64 8, i64 5, i64 9, i64 0, i64 2, i64 3, i64 4, i64 6, i64 8, i64 9, i64 0, i64 8, i64 9, i64 0, i64 2, i64 4, i64 6, i64 8, i64 9, i64 0, i64 7, i64 8, i64 9, i64 0, i64 2, i64 4, i64 6, i64 8, i64 2, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8, i64 5], align 64
@__constant_11xindex = private constant [11 x i64] [i64 0, i64 5, i64 7, i64 14, i64 17, i64 23, i64 27, i64 32, i64 33, i64 39, i64 40], align 64
@__constant_40xf64 = private constant [40 x double] [double 0x4001E8094E5D5B25, double 5.183510e+00, double 0x40096383AD9F0A1C, double 0x401C38D36B4C7F35, double 0x40122A372606FAC6, double 8.643330e-01, double 0x4023166256366D7A, double 0x40193F06705C896E, double 0x40128DA48B652370, double 0x401D15985AD538AC, double 0x400F914C22EE4192, double 4.927750e-01, double 7.063280e-01, double 0x4010C098D477BBF9, double 0x4023C185271BCDBC, double 0x4020ACCF8D716D2B, double 4.707070e-01, double 0x3FF7B45AE5FFA3BA, double 2.374290e-01, double 0x4023C6AAD1D041CC, double 8.427610e+00, double 0x4010DB4528283D36, double 0x3FFCFDD00F776C48, double 0x401C417C5EF62F9D, double 0x401F66D698FE6927, double 0x400FEA92E62131A9, double 0x401D5BAC2DF0D413, double 4.801600e-02, double 0x4020BE60A2014728, double 0x4004E8E820E62995, double 0x4019A2CA148BA83F, double 0x4023CAC493426784, double 0x4013C96CC5FBF834, double 8.853390e-01, double 0x40097F865D7CB2D9, double 0x40126C2B0EA18373, double 0x3FFB02BD7F51EFB7, double 0x4022C5549731098D, double 0x40227F2ECF206424, double 0x400B9E1C15097C81], align 64

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
  %6 = insertvalue { { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { ptr, ptr, i64, [1 x i64], [1 x i64] }, { [2 x i64], [3 x i64] } } { { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_11xindex, i64 0, [1 x i64] [i64 11], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_40xindex, i64 0, [1 x i64] [i64 40], [1 x i64] [i64 1] }, { ptr, ptr, i64, [1 x i64], [1 x i64] } { ptr inttoptr (i64 3735928559 to ptr), ptr @__constant_40xf64, i64 0, [1 x i64] [i64 40], [1 x i64] [i64 1] }, { [2 x i64], [3 x i64] } undef }, { [2 x i64], [3 x i64] } %5, 3
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
