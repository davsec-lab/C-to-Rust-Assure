; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs.bc'
source_filename = "csv_get_opts.ffdb6fcc-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:45:19: 45:22]" = type {}
%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:46:18: 46:21]" = type {}
%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:49:23: 49:34]" = type {}
%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:48:22: 48:28]" = type {}
%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:50:20: 50:25]" = type {}
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc34 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc35 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc37 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc38 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc38, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc22 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"Options: " }>, align 1
@alloc24 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [9 x i8] }>, <{ [9 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [8 x i8] c"\09\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hbf8ffa24d7b30c2bE(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h0159b85716184034E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h0159b85716184034E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !2, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h6166bb95f6615372E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { i64*, i64 }, align 8
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load i8, i8* %_3, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i64*, i64 }* %_24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i64*, i64 }* %_24 to {}**
  store {}* null, {}** %5, align 8
  %6 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %6, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %7, align 8
  %8 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %6, i32 0, i32 1
  store i64 %pieces.1, i64* %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8, !align !4
  %12 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %9, i32 0, i32 0
  store i64* %11, i64** %14, align 8
  %15 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %9, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %17 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %16, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %17, align 8
  %18 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %16, i32 0, i32 1
  store i64 %args.1, i64* %18, align 8
  ret void

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments6new_v117h6166bb95f6615372E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc35 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc37 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #5
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h27a744313aea782cE(i8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i8, align 1
  %_1 = alloca %"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:45:19: 45:22]", align 1
  store i8 %0, i8* %_2, align 1
  %2 = load i8, i8* %_2, align 1
  %3 = invoke i32 @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17hf2c0b1adc48bcd3cE"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:45:19: 45:22]"* align 1 %_1, i8 %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %1 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb1
  ret i32 %3
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h28dc638d2a0c6543E(i8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i8, align 1
  %_1 = alloca %"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:46:18: 46:21]", align 1
  store i8 %0, i8* %_2, align 1
  %2 = load i8, i8* %_2, align 1
  %3 = invoke i32 @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17h27d9b3f92a4246afE"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:46:18: 46:21]"* align 1 %_1, i8 %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %1 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb1
  ret i32 %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core3ops8function6FnOnce9call_once17h3cccbd1b4535f63bE(i8* %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_2 = alloca { i8*, i64 }, align 8
  %_1 = alloca %"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:49:23: 49:34]", align 1
  %3 = bitcast { i8*, i64 }* %_2 to i8**
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = invoke i8* @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17h0e2dc940aa9e49c1E"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:49:23: 49:34]"* align 1 %_1, i8* %6, i64 %8)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %15 = bitcast { i8*, i32 }* %2 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb2:                                              ; preds = %bb1
  ret i8* %9
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core3ops8function6FnOnce9call_once17h9c1cdc43394cdd0bE(i64 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i64, align 8
  %_1 = alloca %"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:48:22: 48:28]", align 1
  store i64 %0, i64* %_2, align 8
  %2 = load i64, i64* %_2, align 8
  %3 = invoke i8* @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17ha019eeb06c516bd5E"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:48:22: 48:28]"* align 1 %_1, i64 %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %1 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb1
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hf1b8ce41606bd09aE(i8* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i8*, align 8
  %_1 = alloca %"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:50:20: 50:25]", align 1
  store i8* %0, i8** %_2, align 8
  %2 = load i8*, i8** %_2, align 8
  invoke void @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17hd2bea599f5b90cdeE"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:50:20: 50:25]"* align 1 %_1, i8* %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %1 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h76f4e376b54a6b19E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: uwtable
define i32 @csv_get_opts(i8* align 1 %0) unnamed_addr #1 {
start:
  %1 = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %0, i8** %p, align 8
  %2 = bitcast i8** %p to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i32 -1, i32* %1, align 4
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast i8** %p to %CsvParser**
  %parser = load %CsvParser*, %CsvParser** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 7
  %_4 = load i8, i8* %6, align 1
  %7 = zext i8 %_4 to i32
  store i32 %7, i32* %1, align 4
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %8 = load i32, i32* %1, align 4
  ret i32 %8
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_25 = alloca [1 x { i8*, i64* }], align 8
  %_18 = alloca %"core::fmt::Arguments", align 8
  %_14 = alloca i8*, align 8
  %options = alloca i32, align 4
  %_2 = alloca { i8*, i64 }, align 8
  %parser = alloca %CsvParser, align 1
  %0 = bitcast { i8*, i64 }* %_2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false)
  %1 = bitcast { i8*, i64 }* %_2 to {}**
  store {}* null, {}** %1, align 8
  %2 = bitcast %CsvParser* %parser to i32*
  store i32 0, i32* %2, align 1
  %3 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 1
  store i32 0, i32* %3, align 1
  %4 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 2
  store i64 0, i64* %4, align 1
  %5 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !align !2
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %7, i8** %10, align 1
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %9, i64* %11, align 1
  %12 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 4
  store i64 0, i64* %12, align 1
  %13 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 5
  store i64 0, i64* %13, align 1
  %14 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 6
  store i32 0, i32* %14, align 1
  %15 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 7
  store i8 42, i8* %15, align 1
  %16 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 8
  store i8 34, i8* %16, align 1
  %17 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 9
  store i8 44, i8* %17, align 1
  %18 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 10
  store i32 (i8)* @_ZN4core3ops8function6FnOnce9call_once17h27a744313aea782cE, i32 (i8)** %18, align 1
  %19 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 11
  store i32 (i8)* @_ZN4core3ops8function6FnOnce9call_once17h28dc638d2a0c6543E, i32 (i8)** %19, align 1
  %20 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 12
  store i64 1024, i64* %20, align 1
  %21 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 13
  store i8* (i64)* @_ZN4core3ops8function6FnOnce9call_once17h9c1cdc43394cdd0bE, i8* (i64)** %21, align 1
  %22 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 14
  store i8* (i8*, i64)* @_ZN4core3ops8function6FnOnce9call_once17h3cccbd1b4535f63bE, i8* (i8*, i64)** %22, align 1
  %23 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 15
  store void (i8*)* @_ZN4core3ops8function6FnOnce9call_once17hf1b8ce41606bd09aE, void (i8*)** %23, align 1
  %24 = bitcast i8** %_14 to %CsvParser**
  store %CsvParser* %parser, %CsvParser** %24, align 8
  %25 = load i8*, i8** %_14, align 8, !align !2
  %26 = call i32 @csv_get_opts(i8* align 1 %25)
  store i32 %26, i32* %options, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %27 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17hbf8ffa24d7b30c2bE(i32* align 4 %options)
  %_26.0 = extractvalue { i8*, i64* } %27, 0
  %_26.1 = extractvalue { i8*, i64* } %27, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %28 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_25, i64 0, i64 0
  %29 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %28, i32 0, i32 0
  store i8* %_26.0, i8** %29, align 8
  %30 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %28, i32 0, i32 1
  store i64* %_26.1, i64** %30, align 8
  %_22.0 = bitcast [1 x { i8*, i64* }]* %_25 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117h6166bb95f6615372E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_18, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc23 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_22.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_18)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17hf2c0b1adc48bcd3cE"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:45:19: 45:22]"* align 1 %_1, i8 %c) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = icmp eq i8 %c, 32
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i32 1, i32* %0, align 4
  br label %bb3

bb2:                                              ; preds = %start
  store i32 0, i32* %0, align 4
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i32, i32* %0, align 4
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17h27d9b3f92a4246afE"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:46:18: 46:21]"* align 1 %_1, i8 %c) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = icmp eq i8 %c, 10
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i32 1, i32* %0, align 4
  br label %bb3

bb2:                                              ; preds = %start
  store i32 0, i32* %0, align 4
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i32, i32* %0, align 4
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17ha019eeb06c516bd5E"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:48:22: 48:28]"* align 1 %_1, i64 %size) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h76f4e376b54a6b19E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17h0e2dc940aa9e49c1E"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:49:23: 49:34]"* align 1 %_1, i8* %ptr, i64 %size) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h76f4e376b54a6b19E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17hd2bea599f5b90cdeE"(%"[closure@/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs:50:20: 50:25]"* align 1 %_1, i8* %ptr) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E"(i32* align 4, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_opts.rs.bc", hash: (1416881782, 2188772939, 2437625990, 3726279379, 884844037))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 748100062091647844
^3 = gv: (name: "_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17h27d9b3f92a4246afE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 970038210410604296
^4 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^18, ^11)))) ; guid = 1292094352817549112
^5 = gv: (name: "_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17h0e2dc940aa9e49c1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^7))))) ; guid = 1815039029726803535
^6 = gv: (name: "alloc38", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2466507526274540210
^7 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h76f4e376b54a6b19E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 3306213591457773073
^8 = gv: (name: "_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17ha019eeb06c516bd5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^7))))) ; guid = 3643680448883066241
^9 = gv: (name: "csv_get_opts", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20))) ; guid = 5073074585535028091
^10 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^11 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6967035773666297351
^12 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h28dc638d2a0c6543E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^3)), refs: (^22)))) ; guid = 8364054898808099124
^13 = gv: (name: "_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17hd2bea599f5b90cdeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 9154331671356858233
^14 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h3cccbd1b4535f63bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 30, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^5)), refs: (^22)))) ; guid = 10512811466446414787
^15 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17hf1b8ce41606bd09aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^13)), refs: (^22)))) ; guid = 11080558910541673244
^16 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11822371075858384182
^17 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17hbf8ffa24d7b30c2bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^19)), refs: (^20)))) ; guid = 11922122567846891387
^18 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12301918865557955233
^19 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h0159b85716184034E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 12785342533207994243
^20 = gv: (name: "_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9b32c6f748704445E") ; guid = 13246685904087195564
^21 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h9c1cdc43394cdd0bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^8)), refs: (^22)))) ; guid = 14531739988639882898
^22 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^23 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 70, calls: ((callee: ^9), (callee: ^17), (callee: ^27), (callee: ^29)), refs: (^28, ^12, ^21, ^14, ^15, ^4)))) ; guid = 15822663052811949562
^24 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^25 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 16132406424096985026
^26 = gv: (name: "_ZN12csv_get_opts4main28_$u7b$$u7b$closure$u7d$$u7d$17hf2c0b1adc48bcd3cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9))) ; guid = 16298330834870153163
^27 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h6166bb95f6615372E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^27), (callee: ^24)), refs: (^2, ^30, ^25)))) ; guid = 17038508672264764640
^28 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h27a744313aea782cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^26)), refs: (^22)))) ; guid = 17525198589680660767
^29 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^30 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^16)))) ; guid = 18038526683584678496
^31 = blockcount: 66
