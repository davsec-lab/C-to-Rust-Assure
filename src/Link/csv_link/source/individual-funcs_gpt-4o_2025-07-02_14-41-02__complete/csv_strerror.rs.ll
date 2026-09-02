; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_strerror.rs.bc'
source_filename = "csv_strerror.9742251e-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc2 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"success" }>, align 1
@alloc4 = private unnamed_addr constant <{ [48 x i8] }> <{ [48 x i8] c"error parsing data while strict checking enabled" }>, align 1
@alloc5 = private unnamed_addr constant <{ [45 x i8] }> <{ [45 x i8] c"memory exhausted while increasing buffer size" }>, align 1
@alloc6 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"data size too large" }>, align 1
@alloc7 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"invalid status code" }>, align 1
@anon.f8bcd83653f9a69e0cd72b06a074746f.0 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @alloc2, i32 0, i32 0, i32 0), [8 x i8] c"\07\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [48 x i8] }>, <{ [48 x i8] }>* @alloc4, i32 0, i32 0, i32 0), [8 x i8] c"0\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [45 x i8] }>, <{ [45 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"-\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc6, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ [142 x i8] }> <{ [142 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_strerror.rs" }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [142 x i8] }>, <{ [142 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [16 x i8] c"\8E\00\00\00\00\00\00\00\0F\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: uwtable
define { [0 x i8]*, i64 } @csv_strerror(i32 %status) unnamed_addr #0 {
start:
  %_9 = alloca [5 x { [0 x i8]*, i64 }], align 8
  %_7 = alloca [5 x { [0 x i8]*, i64 }], align 8
  %_2 = alloca i8, align 1
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %_3 = icmp sge i32 %status, 4
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = icmp slt i32 %status, 0
  %1 = zext i1 %_5 to i8
  store i8 %1, i8* %_2, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load i8, i8* %_2, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %4 = bitcast [5 x { [0 x i8]*, i64 }]* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @anon.f8bcd83653f9a69e0cd72b06a074746f.0 to i8*), i64 80, i1 false)
  %_10 = sext i32 %status to i64
  %_13 = icmp ult i64 %_10, 5
  %5 = call i1 @llvm.expect.i1(i1 %_13, i1 true)
  br i1 %5, label %bb6, label %panic

bb4:                                              ; preds = %bb3
  %6 = bitcast [5 x { [0 x i8]*, i64 }]* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @anon.f8bcd83653f9a69e0cd72b06a074746f.0 to i8*), i64 80, i1 false)
  %7 = getelementptr inbounds [5 x { [0 x i8]*, i64 }], [5 x { [0 x i8]*, i64 }]* %_7, i64 0, i64 4
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %7, i32 0, i32 0
  %9 = load [0 x i8]*, [0 x i8]** %8, align 8, !nonnull !2, !align !3, !noundef !2
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %7, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %9, [0 x i8]** %12, align 8
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb4
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %15 = load [0 x i8]*, [0 x i8]** %14, align 8, !nonnull !2, !align !3, !noundef !2
  %16 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %15, 0
  %19 = insertvalue { [0 x i8]*, i64 } %18, i64 %17, 1
  ret { [0 x i8]*, i64 } %19

bb6:                                              ; preds = %bb5
  %20 = getelementptr inbounds [5 x { [0 x i8]*, i64 }], [5 x { [0 x i8]*, i64 }]* %_9, i64 0, i64 %_10
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 0
  %22 = load [0 x i8]*, [0 x i8]** %21, align 8, !nonnull !2, !align !3, !noundef !2
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %22, [0 x i8]** %25, align 8
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %bb7

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_10, i64 5, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc15 to %"core::panic::location::Location"*)) #4
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 1}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_strerror.rs.bc", hash: (1871945811, 916225016, 3483007789, 781342133, 1651200189))
^1 = gv: (name: "anon.f8bcd83653f9a69e0cd72b06a074746f.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^7, ^8, ^10, ^11, ^3)))) ; guid = 536147663821510796
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1421304432867139759
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 9393535750855487507
^6 = gv: (name: "csv_strerror", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, calls: ((callee: ^12)), refs: (^1, ^5)))) ; guid = 11432098839924358392
^7 = gv: (name: "alloc2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12081182649601806538
^8 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13889940245409210036
^9 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14245483081836233950
^10 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15052146413144776378
^11 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18094036071414986969
^12 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^13 = blockcount: 9
