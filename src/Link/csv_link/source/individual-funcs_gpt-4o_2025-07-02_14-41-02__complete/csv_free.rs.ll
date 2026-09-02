; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_free.rs.bc'
source_filename = "csv_free.bdf1de14-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>

@alloc5 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Option::unwrap()` on a `None` value" }>, align 1
@alloc6 = private unnamed_addr constant <{ [138 x i8] }> <{ [138 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_free.rs" }>, align 1
@alloc7 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [138 x i8] }>, <{ [138 x i8] }>* @alloc6, i32 0, i32 0, i32 0), [16 x i8] c"\8A\00\00\00\00\00\00\00\18\00\00\00,\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h72e6874214da9b5eE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hc09cda7a62329199E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast { i8*, i64 }* %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %4 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 8, i1 false)
  %5 = bitcast i64** %0 to {}**
  store {}* null, {}** %5, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %x = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %6 = bitcast i64** %0 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %x, { [0 x i8]*, i64 }** %6, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i64*, i64** %0, align 8, !align !1
  ret i64* %7
}

; Function Attrs: inlinehint uwtable
define align 8 { [0 x i8]*, i64 }* @"_ZN4core6option15Option$LT$T$GT$6unwrap17h6ec60677035be53fE"(i64* align 8 %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 {
start:
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [43 x i8] }>* @alloc5 to [0 x i8]*), i64 43, %"core::panic::location::Location"* align 8 %1) #4
  unreachable

bb3:                                              ; preds = %start
  %5 = bitcast i64** %self to { [0 x i8]*, i64 }**
  %val = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %5, align 8, !nonnull !2, !align !1, !noundef !2
  ret { [0 x i8]*, i64 }* %val
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17he633fe8c23f3e7afE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast { i8*, i64 }* %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 1
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: uwtable
define void @csv_free(%CsvParser* align 1 %p) unnamed_addr #1 {
start:
  %_15 = alloca { i8*, i64 }, align 8
  %_2 = alloca i8, align 1
  %_4 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %_3 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17he633fe8c23f3e7afE"({ i8*, i64 }* align 8 %_4)
  br label %bb4

bb4:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %bb4
  store i8 0, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %0 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 15
  %_7 = load void (i8*)*, void (i8*)** %0, align 1, !nonnull !2, !noundef !2
  %_6 = ptrtoint void (i8*)* %_7 to i64
  %_5 = icmp ne i64 %_6, 0
  %1 = zext i1 %_5 to i8
  store i8 %1, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %_2, align 1, !range !3, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb5, label %bb9

bb9:                                              ; preds = %bb8, %bb3
  %4 = bitcast { i8*, i64 }* %_15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i8*, i64 }* %_15 to {}**
  store {}* null, {}** %5, align 8
  %6 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_15, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !align !4
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_15, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0
  store i8* %8, i8** %11, align 1
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1
  store i64 %10, i64* %12, align 1
  %13 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  store i64 0, i64* %13, align 1
  ret void

bb5:                                              ; preds = %bb3
  %14 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 15
  %_9 = load void (i8*)*, void (i8*)** %14, align 1, !nonnull !2, !noundef !2
  %_14 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %_13 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hc09cda7a62329199E"({ i8*, i64 }* align 8 %_14)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_12 = call align 8 { [0 x i8]*, i64 }* @"_ZN4core6option15Option$LT$T$GT$6unwrap17h6ec60677035be53fE"(i64* align 8 %_13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc7 to %"core::panic::location::Location"*))
  br label %bb7

bb7:                                              ; preds = %bb6
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_12, i32 0, i32 0
  %_16.0 = load [0 x i8]*, [0 x i8]** %15, align 8, !nonnull !2, !align !4, !noundef !2
  %16 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_12, i32 0, i32 1
  %_16.1 = load i64, i64* %16, align 8
  %_10 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h72e6874214da9b5eE"([0 x i8]* align 1 %_16.0, i64 %_16.1)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void %_9(i8* %_10)
  br label %bb9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i64 8}
!2 = !{}
!3 = !{i8 0, i8 2}
!4 = !{i64 1}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_free.rs.bc", hash: (2578129683, 795977900, 2363406007, 2916667398, 3021048332))
^1 = gv: (name: "_ZN4core6option15Option$LT$T$GT$6as_mut17hc09cda7a62329199E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18))) ; guid = 4833660180374640628
^2 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h72e6874214da9b5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5990988985577755412
^3 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^4 = gv: (name: "_ZN4core6option15Option$LT$T$GT$6unwrap17h6ec60677035be53fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^5)), refs: (^6)))) ; guid = 7173641495103249848
^5 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^6 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10889853680206024410
^7 = gv: (name: "csv_free", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 49, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^9), (callee: ^1), (callee: ^4), (callee: ^2)), refs: (^8)))) ; guid = 14281732152626972314
^8 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^10)))) ; guid = 16285794916545378155
^9 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17he633fe8c23f3e7afE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 17354898231736701811
^10 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18249517303129699648
^11 = blockcount: 24
