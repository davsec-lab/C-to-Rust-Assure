; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_delim.rs.bc'
source_filename = "csv_get_delim.4033bea8-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"[closure@std::panicking::begin_panic<&str>::{closure#0}]" = type { { [0 x i8]*, i64 }, %"core::panic::location::Location"* }
%"alloc::alloc::Global" = type {}
%"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>" = type { [0 x i8] }
%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>
%"core::ptr::metadata::PtrComponents<CsvParser>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<CsvParser>" = type { [1 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8* }> <{ i8* bitcast (void ({ i8*, i64 }*)* @"_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17hba5e8cfea9469961E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast ({ {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3c72acb06318a4f7E" to i8*), i8* bitcast ({ {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hb6bf1a8295638028E" to i8*) }>, align 8
@alloc92 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc93 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc92, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc6 = private unnamed_addr constant <{}> zeroinitializer, align 1
@alloc94 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc95 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc94, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ [0 x i8]*, i64 }*)* @"_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17he7a22b5d3ebfd40eE" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i64 ({ [0 x i8]*, i64 }*)* @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbfe295dc919c5b3bE" to i8*) }>, align 8
@alloc99 = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c"received null csv_parser" }>, align 1
@alloc100 = private unnamed_addr constant <{ [143 x i8] }> <{ [143 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_delim.rs" }>, align 1
@alloc101 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [143 x i8] }>, <{ [143 x i8] }>* @alloc100, i32 0, i32 0, i32 0), [16 x i8] c"\8F\00\00\00\00\00\00\00\17\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hee91c40badec4f93E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2eba5c2ac1b478bfE"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf278f7bf5c4c018fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h1b879e89a0bfe1d6E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7944d28d0afd6585E"(i8* %pointer.0, i64* align 8 %pointer.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  store i8* %pointer.0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  store i64* %pointer.1, i64** %2, align 8
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = insertvalue { i8*, i64* } undef, i8* %4, 0
  %8 = insertvalue { i8*, i64* } %7, i64* %6, 1
  ret { i8*, i64* } %8
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h43080770c8ab9c00E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf99545e17eda2fbeE"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i64 }* %1 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"*
  %3 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"* %2 to %"core::alloc::AllocError"*
  %4 = bitcast { i8*, i64 }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i8*, i64 }* %1 to {}**
  store {}* null, {}** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i64 } %10, i64 %9, 1
  ret { i8*, i64 } %11
}

; Function Attrs: uwtable
define i64 @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbfe295dc919c5b3bE"({ [0 x i8]*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = call i64 @_ZN4core3any6TypeId2of17h15214f5f2cc5fb7aE()
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: noinline noreturn uwtable
define void @_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h2696b3186a523e14E(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %f) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_2 = alloca %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", align 8
  %1 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_2 to i8*
  %2 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17h8f3b049d92748fdbE"(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_2) #12
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17h237f6d1b6a64f9d9E()
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  call void @llvm.trap()
  unreachable

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13
}

; Function Attrs: cold noinline noreturn uwtable
define void @_ZN3std9panicking11begin_panic17h7f5b7057fc069faeE([0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #3 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_4 = alloca i8, align 1
  %_3 = alloca %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", align 8
  store i8 1, i8* %_4, align 1
  %loc = invoke align 8 %"core::panic::location::Location"* @_ZN4core5panic8location8Location6caller17hb2b0fcbff700e6c1E(%"core::panic::location::Location"* align 8 %0)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %2 = load i8, i8* %_4, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb3, label %bb2

cleanup:                                          ; preds = %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  store i8 0, i8* %_4, align 1
  %9 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  store [0 x i8]* %msg.0, [0 x i8]** %10, align 8
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  store i64 %msg.1, i64* %11, align 8
  %12 = getelementptr inbounds %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3, i32 0, i32 1
  store %"core::panic::location::Location"* %loc, %"core::panic::location::Location"** %12, align 8
  invoke void @_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h2696b3186a523e14E(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3) #12
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb3, %bb4
  %13 = bitcast { i8*, i32 }* %1 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb3:                                              ; preds = %bb4
  br label %bb2
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h179e9fc1fe8f6399E"([0 x i8]* align 1 %inner.0, i64 %inner.1) unnamed_addr #1 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %inner.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %inner.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !align !4
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  store i8* %5, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !align !4
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15
}

; Function Attrs: inlinehint noreturn uwtable
define void @"_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17h8f3b049d92748fdbE"(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca i64*, align 8
  %_6 = alloca { i8*, i64 }, align 8
  %1 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %_7.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !4, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %_7.1 = load i64, i64* %3, align 8
  %4 = call { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h179e9fc1fe8f6399E"([0 x i8]* align 1 %_7.0, i64 %_7.1)
  store { i8*, i64 } %4, { i8*, i64 }* %_6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_3.0 = bitcast { i8*, i64 }* %_6 to {}*
  %5 = bitcast i64** %_8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i64** %_8 to {}**
  store {}* null, {}** %6, align 8
  %7 = getelementptr inbounds %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1, i32 0, i32 1
  %_10 = load %"core::panic::location::Location"*, %"core::panic::location::Location"** %7, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = load i64*, i64** %_8, align 8, !align !2
  invoke void @_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE({}* align 1 %_3.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8* }>* @vtable.0 to [3 x i64]*), i64* align 8 %8, %"core::panic::location::Location"* align 8 %_10, i1 zeroext true) #12
          to label %unreachable unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb2

unreachable:                                      ; preds = %bb1
  unreachable

bb3:                                              ; preds = %bb2
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: uwtable
define i64 @_ZN4core3any6TypeId2of17h15214f5f2cc5fb7aE() unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  store i64 -5139102199292759541, i64* %0, align 8
  %_1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %_1, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h352d30aea0aa824dE(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !5, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h1767667766a4e9b1E(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h3f55f589bc37f2fdE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !5, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @_ZN4core3mem7replace17hf8b23f9ebb932317E({ i8*, i64 }* align 8 %dest, i8* align 1 %src.0, i64 %src.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %1 = invoke { i8*, i64 } @_ZN4core3ptr4read17h304506c441c6ef80E({ i8*, i64 }* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_7, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb6

bb1:                                              ; preds = %start
  %result.0 = extractvalue { i8*, i64 } %1, 0
  %result.1 = extractvalue { i8*, i64 } %1, 1
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17hada177a7c37a648eE({ i8*, i64 }* %dest, i8* align 1 %src.0, i64 %src.1)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %14 = insertvalue { i8*, i64 } undef, i8* %result.0, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %result.1, 1
  ret { i8*, i64 } %15

bb4:                                              ; preds = %bb5, %bb6
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h1767667766a4e9b1E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17he2222e3bbd540e26E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17he35da95f101c7923E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hac11c1022f49600bE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17he7a22b5d3ebfd40eE"({ [0 x i8]*, i64 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @_ZN4core3ptr4read17h304506c441c6ef80E({ i8*, i64 }* %src) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %tmp = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to {}*
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i64 } %6, i64 %5, 1
  store { i8*, i64 } %7, { i8*, i64 }* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = bitcast { i8*, i64 }* %tmp to i8*
  %9 = bitcast { i8*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 0
  %_6.0 = load i8*, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 1
  %_6.1 = load i64, i64* %11, align 8
  %12 = insertvalue { i8*, i64 } undef, i8* %_6.0, 0
  %13 = insertvalue { i8*, i64 } %12, i64 %_6.1, 1
  %14 = extractvalue { i8*, i64 } %13, 0
  %15 = extractvalue { i8*, i64 } %13, 1
  %16 = extractvalue { i8*, i64 } %13, 0
  %17 = extractvalue { i8*, i64 } %13, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %18 = insertvalue { i8*, i64 } undef, i8* %16, 0
  %19 = insertvalue { i8*, i64 } %18, i64 %17, 1
  ret { i8*, i64 } %19
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr4read17hc0d2e272d8a568f8E(%"alloc::alloc::Global"* %src) unnamed_addr #0 {
start:
  %0 = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>", align 1
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>", align 1
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>"* %0 to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>"* %tmp to %"alloc::alloc::Global"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"alloc::alloc::Global"* %2 to i8*
  %4 = bitcast %"alloc::alloc::Global"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 0, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hada177a7c37a648eE({ i8*, i64 }* %dst, i8* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %src = alloca { i8*, i64 }, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = bitcast { i8*, i64 }* %dst to i8*
  %5 = bitcast { i8*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17ha69a14452712aae5E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !1, !nonnull !1
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h92dc39a3a405593cE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hde1bbd5a71148ac7E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h1b879e89a0bfe1d6E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2eba5c2ac1b478bfE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2c9de9bd8ae65683E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd3cb3c20fa0e8087E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd09e1b92cb9e0cbfE"(i8* %self.0, i64* align 8 %self.1)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9196a7462ba1c383E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hdde84318f0996064E"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17hba5e8cfea9469961E"({ i8*, i64 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2640759d939c8a6aE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9618a52f2bbf7eadE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h1f441b80435d4ecbE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2640759d939c8a6aE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define %CsvParser* @_ZN4core3ptr8metadata14from_raw_parts17ha38ffd7bd62adb6aE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<CsvParser>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<CsvParser>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<CsvParser>", %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<CsvParser>"* %_3 to %"core::ptr::metadata::PtrComponents<CsvParser>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<CsvParser>"* %_3 to %CsvParser**
  %6 = load %CsvParser*, %CsvParser** %5, align 8
  ret %CsvParser* %6
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h1f441b80435d4ecbE({}* %data_address) unnamed_addr #0 {
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

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hac11c1022f49600bE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h4344c2da20099809E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %ptr.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i8*, i64 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf278f7bf5c4c018fE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hfce12c4753fed473E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9618a52f2bbf7eadE"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf278f7bf5c4c018fE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hde1bbd5a71148ac7E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd09e1b92cb9e0cbfE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf278f7bf5c4c018fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2c9de9bd8ae65683E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h866f21d68c9e0ad5E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd09e1b92cb9e0cbfE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hdde84318f0996064E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !2, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd09e1b92cb9e0cbfE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h631856ca4092425fE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17heaabafff20f1b96eE"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2c9de9bd8ae65683E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17heaabafff20f1b96eE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h866f21d68c9e0ad5E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf278f7bf5c4c018fE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h52292fbeb4cb681bE"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2c9de9bd8ae65683E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17he35da95f101c7923E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h4344c2da20099809E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hcbed05ea28789846E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = bitcast [3 x i64]* %6 to void ({}*)**
  %8 = getelementptr inbounds void ({}*)*, void ({}*)** %7, i64 0
  %9 = load void ({}*)*, void ({}*)** %8, align 8, !invariant.load !1, !nonnull !1
  invoke void %9({}* %4)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %10 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8, !nonnull !1, !align !2, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h4da4bbbe20edbd7cE(i8* %12, i64* align 8 %14) #13
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %20 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !nonnull !1, !noundef !1
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8, !nonnull !1, !align !2, !noundef !1
  call void @_ZN5alloc5alloc8box_free17h4da4bbbe20edbd7cE(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable

bb2:                                              ; preds = %bb4
  %26 = bitcast { i8*, i32 }* %0 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4hint9black_box17h237f6d1b6a64f9d9E() unnamed_addr #0 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !7
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h1a910d1416a5e34dE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h3f55f589bc37f2fdE(i64 %align), !range !5
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !5, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17ha34045d363f5f155E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h408e5a5ccc120b5cE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !5, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h352d30aea0aa824dE(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17he2222e3bbd540e26E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h082bea2dcae7398cE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h408e5a5ccc120b5cE({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf278f7bf5c4c018fE"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal align 8 %"core::panic::location::Location"* @_ZN4core5panic8location8Location6caller17hb2b0fcbff700e6c1E(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca %"core::panic::location::Location"*, align 8
  store %"core::panic::location::Location"* %0, %"core::panic::location::Location"** %1, align 8
  %2 = load %"core::panic::location::Location"*, %"core::panic::location::Location"** %1, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret %"core::panic::location::Location"* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17h31535c04d10b83ecE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %_3 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false)
  %1 = bitcast { i8*, i64 }* %_3 to {}**
  store {}* null, {}** %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8, !align !4
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call { i8*, i64 } @_ZN4core3mem7replace17hf8b23f9ebb932317E({ i8*, i64 }* align 8 %self, i8* align 1 %3, i64 %5)
  %7 = extractvalue { i8*, i64 } %6, 0
  %8 = extractvalue { i8*, i64 } %6, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %10 = insertvalue { i8*, i64 } %9, i64 %8, 1
  ret { i8*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1fa9f5dd3b304822E"(i8* %0) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  store i8 1, i8* %_7, align 1
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = bitcast i8** %1 to %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"*
  %6 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"* %5 to %"core::alloc::AllocError"*
  %7 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast i8** %1 to {}**
  store {}* null, {}** %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %9 = load i8, i8* %_7, align 1, !range !3, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf99545e17eda2fbeE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h2f09056dbfdecceaE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17ha34045d363f5f155E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h408e5a5ccc120b5cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #15
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc15exchange_malloc17hd425305b2bb4a0b8E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %_6 = alloca { i8*, i64 }, align 8
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h1a910d1416a5e34dE(i64 %size, i64 %align)
  %layout.0 = extractvalue { i64, i64 } %0, 0
  %layout.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9a28c7bbd8163745E"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc6 to %"alloc::alloc::Global"*), i64 %layout.0, i64 %layout.1)
  store { i8*, i64 } %1, { i8*, i64 }* %_6, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast { i8*, i64 }* %_6 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_9 = select i1 %4, i64 1, i64 0
  switch i64 %_9, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb5:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 0
  %ptr.0 = load i8*, i8** %5, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 1
  %ptr.1 = load i64, i64* %6, align 8
  %7 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h631856ca4092425fE"(i8* %ptr.0, i64 %ptr.1)
  br label %bb6

bb3:                                              ; preds = %bb2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #12
  unreachable

bb6:                                              ; preds = %bb5
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h838b5503c04f963bE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17ha34045d363f5f155E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h408e5a5ccc120b5cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #15
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hc0fc4789695c10edE(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha34045d363f5f155E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h082bea2dcae7398cE({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !5, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17h838b5503c04f963bE(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !5, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h2f09056dbfdecceaE(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hfce12c4753fed473E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1fa9f5dd3b304822E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7b29b795ef9686c0E"(i8* %_16)
  store i8* %12, i8** %_15, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  %13 = bitcast i8** %_15 to {}**
  %14 = load {}*, {}** %13, align 8
  %15 = icmp eq {}* %14, null
  %_20 = select i1 %15, i64 1, i64 0
  switch i64 %_20, label %bb15 [
    i64 0, label %bb14
    i64 1, label %bb16
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb14:                                             ; preds = %bb13
  %val = load i8*, i8** %_15, align 8, !nonnull !1, !noundef !1
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h52292fbeb4cb681bE"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h43080770c8ab9c00E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc95 to %"core::panic::location::Location"*))
  store { i8*, i64 } %17, { i8*, i64 }* %2, align 8
  br label %bb17

bb17:                                             ; preds = %bb16
  br label %bb20

bb20:                                             ; preds = %bb19, %bb17
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = insertvalue { i8*, i64 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i64 } %22, i64 %21, 1
  ret { i8*, i64 } %23

bb18:                                             ; preds = %bb14
  %24 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_24.0, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_24.1, i64* %25, align 8
  br label %bb19

bb19:                                             ; preds = %bb5, %bb18
  br label %bb20

bb4:                                              ; preds = %bb3
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h52292fbeb4cb681bE"(i8* %_7, i64 0)
  %_6.0 = extractvalue { i8*, i64 } %26, 0
  %_6.1 = extractvalue { i8*, i64 } %26, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_6.0, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_6.1, i64* %28, align 8
  br label %bb19
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h63f43bbb9d831698E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha34045d363f5f155E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h408e5a5ccc120b5cE({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #15
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h4da4bbbe20edbd7cE(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i8*, i64* }, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  store i64* %1, i64** %6, align 8
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9196a7462ba1c383E"({ i8*, i64* }* align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { {}*, [3 x i64]* } %7, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %7, 1
  %13 = bitcast [3 x i64]* %_5.1 to i64*
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8, !invariant.load !1
  %16 = bitcast [3 x i64]* %_5.1 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8, !range !6, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9196a7462ba1c383E"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !6, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h1a910d1416a5e34dE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !2, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h92dc39a3a405593cE"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hee91c40badec4f93E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5c9dfbf827eaac15E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %29 = bitcast { i8*, i32 }* %4 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17hab724733a19c6e29E"({}* align 1 %0, [3 x i64]* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %3 = alloca { i8*, i64* }, align 8
  %b = alloca { {}*, [3 x i64]* }, align 8
  %4 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 0
  store {}* %0, {}** %4, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  store [3 x i64]* %1, [3 x i64]** %5, align 8
  store i8 1, i8* %_9, align 1
  %_4 = bitcast { {}*, [3 x i64]* }* %b to %"alloc::alloc::Global"*
  invoke void @_ZN4core3ptr4read17hc0d2e272d8a568f8E(%"alloc::alloc::Global"* %_4)
          to label %bb1 unwind label %cleanup

bb7:                                              ; preds = %bb4, %cleanup
  %6 = load i8, i8* %_9, align 1, !range !3, !noundef !1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %13 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 0
  %_7.0 = load {}*, {}** %13, align 8, !nonnull !1, !align !4, !noundef !1
  %14 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  %_7.1 = load [3 x i64]*, [3 x i64]** %14, align 8, !nonnull !1, !align !2, !noundef !1
  %15 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he2a3e1db6d0e066dE"({}* align 1 %_7.0, [3 x i64]* align 8 %_7.1)
          to label %bb2 unwind label %cleanup1

bb4:                                              ; preds = %cleanup1
  br label %bb7

cleanup1:                                         ; preds = %bb2, %bb1
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { {}*, [3 x i64]* } %15, 0
  %_6.1 = extractvalue { {}*, [3 x i64]* } %15, 1
  %21 = invoke { i8*, i64* } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hef33a53c0a176650E"({}* align 1 %_6.0, [3 x i64]* align 8 %_6.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i8*, i64* } %21, 0
  %_5.1 = extractvalue { i8*, i64* } %21, 1
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_5.0, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_5.1, i64** %23, align 8
  %24 = bitcast { i8*, i64* }* %3 to i8*
  %25 = getelementptr i8, i8* %24, i64 16
  %26 = bitcast i8* %25 to %"alloc::alloc::Global"*
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %29 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8, !nonnull !1, !align !2, !noundef !1
  %31 = insertvalue { i8*, i64* } undef, i8* %28, 0
  %32 = insertvalue { i8*, i64* } %31, i64* %30, 1
  ret { i8*, i64* } %32

bb5:                                              ; preds = %bb6, %bb7
  %33 = bitcast { i8*, i32 }* %2 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = insertvalue { i8*, i32 } undef, i8* %34, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

bb6:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hcbed05ea28789846E"({ {}*, [3 x i64]* }* %b) #13
          to label %bb5 unwind label %abort

abort:                                            ; preds = %bb6
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17hed5947834f1944c4E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64* }, align 8
  %2 = call { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17hab724733a19c6e29E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1)
  %_4.0 = extractvalue { i8*, i64* } %2, 0
  %_4.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd3cb3c20fa0e8087E"(i8* %_4.0, i64* align 8 %_4.1)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { {}*, [3 x i64]* } %3, 0
  %_6.1 = extractvalue { {}*, [3 x i64]* } %3, 1
  %9 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %10 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %9, i32 0, i32 0
  store {}* %_6.0, {}** %10, align 8
  %11 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %9, i32 0, i32 1
  store [3 x i64]* %_6.1, [3 x i64]** %11, align 8
  %12 = bitcast { i8*, i64* }* %1 to i8*
  %13 = getelementptr i8, i8* %12, i64 16
  %14 = bitcast i8* %13 to %"alloc::alloc::Global"*
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8, !nonnull !1, !align !2, !noundef !1
  %19 = insertvalue { i8*, i64* } undef, i8* %16, 0
  %20 = insertvalue { i8*, i64* } %19, i64* %18, 1
  ret { i8*, i64* } %20

bb4:                                              ; preds = %bb3
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he2a3e1db6d0e066dE"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %_9 = alloca { i8*, i64* }, align 8
  %1 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 0
  store {}* %b.0, {}** %2, align 8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 1
  store [3 x i64]* %b.1, [3 x i64]** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !align !4, !noundef !1
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = insertvalue { i8*, i64* } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64* } %8, i64* %7, 1
  store { i8*, i64* } %9, { i8*, i64* }* %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %10 = bitcast { i8*, i64* }* %_9 to { {}*, [3 x i64]* }*
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = bitcast { {}*, [3 x i64]* }* %10 to { i8*, i64* }*
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 0
  %_6.0 = load i8*, i8** %12, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 1
  %_6.1 = load i64*, i64** %13, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd3cb3c20fa0e8087E"(i8* %_6.0, i64* align 8 %_6.1)
  %_5.0 = extractvalue { {}*, [3 x i64]* } %14, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %15 = insertvalue { {}*, [3 x i64]* } undef, {}* %_5.0, 0
  %16 = insertvalue { {}*, [3 x i64]* } %15, [3 x i64]* %_5.1, 1
  ret { {}*, [3 x i64]* } %16
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h8f6972f5776d1293E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17hed5947834f1944c4E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1)
  %_2.0 = extractvalue { i8*, i64* } %0, 0
  %_2.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8* %_2.0 to {}*
  %2 = bitcast i64* %_2.1 to [3 x i64]*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5c9dfbf827eaac15E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17ha34045d363f5f155E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2c9de9bd8ae65683E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !5, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h63f43bbb9d831698E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9a28c7bbd8163745E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hc0fc4789695c10edE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7b29b795ef9686c0E"(i8* %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %6 = bitcast i8** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"*
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"* %6 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %8 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast i8** %1 to {}**
  store {}* null, {}** %9, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8*, i8** %1, align 8
  ret i8* %10
}

; Function Attrs: uwtable
define { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hb6bf1a8295638028E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_6 = select i1 %2, i64 0, i64 1
  switch i64 %_6, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #12
  unreachable

bb3:                                              ; preds = %start
  %a = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %_5.0 = bitcast { [0 x i8]*, i64 }* %a to {}*
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_5.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: uwtable
define { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3c72acb06318a4f7E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_4 = alloca { i8*, i64 }, align 8
  %data = alloca { {}*, [3 x i64]* }, align 8
  %2 = call { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17h31535c04d10b83ecE"({ i8*, i64 }* align 8 %self)
  store { i8*, i64 } %2, { i8*, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast { i8*, i64 }* %_4 to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_6 = select i1 %5, i64 0, i64 1
  switch i64 %_6, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #12
  unreachable

bb4:                                              ; preds = %bb1
  %6 = bitcast { i8*, i64 }* %_4 to { [0 x i8]*, i64 }*
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 0
  %a.0 = load [0 x i8]*, [0 x i8]** %7, align 8, !nonnull !1, !align !4, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 1
  %a.1 = load i64, i64* %8, align 8
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17hd425305b2bb4a0b8E(i64 16, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h32eb0ffeb2d0cc70E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb4
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h32eb0ffeb2d0cc70E.exit": ; preds = %bb4
  %20 = bitcast i8* %_4.i to { [0 x i8]*, i64 }*
  %21 = bitcast { [0 x i8]*, i64 }* %20 to i64*
  %22 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 0
  store [0 x i8]* %a.0, [0 x i8]** %22, align 8
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 1
  store i64 %a.1, i64* %23, align 8
  br label %bb5

bb5:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h32eb0ffeb2d0cc70E.exit"
  %24 = bitcast { [0 x i8]*, i64 }* %20 to {}*
  %25 = bitcast {}* %24 to i8*
  %_8.0 = bitcast i8* %25 to {}*
  %26 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  store {}* %_8.0, {}** %26, align 8
  %27 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), [3 x i64]** %27, align 8
  %28 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  %_14.0 = load {}*, {}** %28, align 8, !nonnull !1, !align !4, !noundef !1
  %29 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  %_14.1 = load [3 x i64]*, [3 x i64]** %29, align 8, !nonnull !1, !align !2, !noundef !1
  %30 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h8f6972f5776d1293E"({}* align 1 %_14.0, [3 x i64]* align 8 %_14.1)
          to label %bb6 unwind label %cleanup

bb7:                                              ; preds = %cleanup
  br i1 false, label %bb9, label %bb8

cleanup:                                          ; preds = %bb5
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb7

bb6:                                              ; preds = %bb5
  %_12.0 = extractvalue { {}*, [3 x i64]* } %30, 0
  %_12.1 = extractvalue { {}*, [3 x i64]* } %30, 1
  %36 = insertvalue { {}*, [3 x i64]* } undef, {}* %_12.0, 0
  %37 = insertvalue { {}*, [3 x i64]* } %36, [3 x i64]* %_12.1, 1
  ret { {}*, [3 x i64]* } %37

bb8:                                              ; preds = %bb9, %bb7
  %38 = bitcast { i8*, i32 }* %1 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = insertvalue { i8*, i32 } undef, i8* %39, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

bb9:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hcbed05ea28789846E"({ {}*, [3 x i64]* }* %data) #13
          to label %bb8 unwind label %abort

abort:                                            ; preds = %bb9
  %44 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #14
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hef33a53c0a176650E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h9a88a217ff8a6785E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1)
  %_2.0 = extractvalue { i8*, i64* } %0, 0
  %_2.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7944d28d0afd6585E"(i8* %_2.0, i64* align 8 %_2.1)
  %2 = extractvalue { i8*, i64* } %1, 0
  %3 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i8*, i64* } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64* } %4, i64* %3, 1
  ret { i8*, i64* } %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h9a88a217ff8a6785E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %1 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 0
  store {}* %reference.0, {}** %2, align 8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 1
  store [3 x i64]* %reference.1, [3 x i64]** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = insertvalue { i8*, i64* } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64* } %8, i64* %7, 1
  ret { i8*, i64* } %9
}

; Function Attrs: uwtable
define i8 @csv_get_delim(%CsvParser* align 1 %p) unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call %CsvParser* @_ZN4core3ptr8metadata14from_raw_parts17ha38ffd7bd62adb6aE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp ne %CsvParser* %p, %3
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %4 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 9
  %5 = load i8, i8* %4, align 1
  ret i8 %5

bb2:                                              ; preds = %bb1
  call void @_ZN3std9panicking11begin_panic17h7f5b7057fc069faeE([0 x i8]* align 1 bitcast (<{ [24 x i8] }>* @alloc99 to [0 x i8]*), i64 24, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc101 to %"core::panic::location::Location"*)) #12
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #7

; Function Attrs: noreturn uwtable
declare void @_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE({}* align 1, [3 x i64]* align 8, i64* align 8, %"core::panic::location::Location"* align 8, i1 zeroext) unnamed_addr #8

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #9

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #10

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #11

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #10

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #10

; Function Attrs: cold noreturn uwtable
declare void @_ZN3std7process5abort17hbfbd791ff32f7241E() unnamed_addr #11

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #9 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #12 = { noreturn }
attributes #13 = { noinline }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 8}
!3 = !{i8 0, i8 2}
!4 = !{i64 1}
!5 = !{i64 1, i64 -9223372036854775807}
!6 = !{i64 1, i64 0}
!7 = !{i32 3274759}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_delim.rs.bc", hash: (151637360, 441381333, 3519017714, 4294742659, 1603583251))
^1 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hac11c1022f49600bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 70684535587049903
^2 = gv: (name: "_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17hba5e8cfea9469961E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 479102199083432489
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^2, ^22, ^55)))) ; guid = 702064196038439828
^5 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17he2222e3bbd540e26E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 795720214293568742
^6 = gv: (name: "_ZN4core5panic8location8Location6caller17hb2b0fcbff700e6c1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 1005217408487936185
^7 = gv: (name: "_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17h8f3b049d92748fdbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^67), (callee: ^56)), refs: (^72, ^4)))) ; guid = 1231573944571414500
^8 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h43080770c8ab9c00E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^30))))) ; guid = 1495279112678149463
^9 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^10 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17hc0fc4789695c10edE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^70), (callee: ^62), (callee: ^32), (callee: ^57), (callee: ^80), (callee: ^54), (callee: ^38), (callee: ^85), (callee: ^8)), refs: (^45)))) ; guid = 1543338214520585547
^11 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h7944d28d0afd6585E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 1632945204154725098
^12 = gv: (name: "alloc101", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^65)))) ; guid = 1880791411904209479
^13 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf278f7bf5c4c018fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1881096266679954518
^14 = gv: (name: "_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hef33a53c0a176650E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^48), (callee: ^11))))) ; guid = 1913921395040564640
^15 = gv: (name: "_ZN5alloc5alloc15exchange_malloc17hd425305b2bb4a0b8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, calls: ((callee: ^34), (callee: ^73), (callee: ^60), (callee: ^89)), refs: (^51)))) ; guid = 1979460336010226566
^16 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h4344c2da20099809E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 2023478964822271158
^17 = gv: (name: "_ZN4core3any6TypeId2of17h15214f5f2cc5fb7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 2026958725542197062
^18 = gv: (name: "_ZN4core3mem7replace17hf8b23f9ebb932317E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^27), (callee: ^33)), refs: (^72)))) ; guid = 2549615970036174374
^19 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h8f6972f5776d1293E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^76))))) ; guid = 2705847351993186755
^20 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17he35da95f101c7923E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^1))))) ; guid = 2795456786375041374
^21 = gv: (name: "_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hcbed05ea28789846E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^84), (callee: ^90)), refs: (^72)))) ; guid = 3352016660619626838
^22 = gv: (name: "_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hb6bf1a8295638028E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^25)), refs: (^31)))) ; guid = 3700301566291760462
^23 = gv: (name: "_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbfe295dc919c5b3bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^17))))) ; guid = 3822833164778929640
^24 = gv: (name: "_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17ha69a14452712aae5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 3962776867828844967
^25 = gv: (name: "_ZN3std7process5abort17hbfbd791ff32f7241E") ; guid = 4619386724051639732
^26 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^27 = gv: (name: "_ZN4core3ptr4read17h304506c441c6ef80E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29))) ; guid = 4646343501476168247
^28 = gv: (name: "_ZN3std9panicking11begin_panic17h7f5b7057fc069faeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^6), (callee: ^58)), refs: (^72)))) ; guid = 5104595397372729589
^29 = gv: (name: "alloc99", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5163837565411225217
^30 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf99545e17eda2fbeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 5201211474585809693
^31 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^23, ^46)))) ; guid = 5624204830603262386
^32 = gv: (name: "_ZN5alloc5alloc5alloc17h838b5503c04f963bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^70), (callee: ^40), (callee: ^53))))) ; guid = 5675199419280639891
^33 = gv: (name: "_ZN4core3ptr5write17hada177a7c37a648eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 5706635335420135673
^34 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h1a910d1416a5e34dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^78))))) ; guid = 6018591807359955268
^35 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd3cb3c20fa0e8087E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^86))))) ; guid = 6046836229602149443
^36 = gv: (name: "llvm.trap") ; guid = 6116349651215144041
^37 = gv: (name: "csv_get_delim", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14, calls: ((callee: ^75), (callee: ^28)), refs: (^12, ^29)))) ; guid = 6227521153979290893
^38 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7b29b795ef9686c0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 6263762021143246492
^39 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^40 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h408e5a5ccc120b5cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^61), (callee: ^5))))) ; guid = 6695412478619142235
^41 = gv: (name: "_ZN4core6option15Option$LT$T$GT$4take17h31535c04d10b83ecE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^18))))) ; guid = 6976597258531224069
^42 = gv: (name: "_ZN5alloc5alloc7dealloc17h63f43bbb9d831698E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^70), (callee: ^40), (callee: ^26))))) ; guid = 7711954567033746724
^43 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hde1bbd5a71148ac7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^86), (callee: ^13))))) ; guid = 7747550557888457189
^44 = gv: (name: "alloc93", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^59)))) ; guid = 7955536164803147174
^45 = gv: (name: "alloc95", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^47)))) ; guid = 8954540144430868858
^46 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17he7a22b5d3ebfd40eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 8981777601279702124
^47 = gv: (name: "alloc94", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9236601794062367736
^48 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h9a88a217ff8a6785E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 9256887023067786004
^49 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h2640759d939c8a6aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 9486183106549255662
^50 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hdde84318f0996064E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^86))))) ; guid = 9888771637851239785
^51 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10034262195518828272
^52 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9618a52f2bbf7eadE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^74), (callee: ^49))))) ; guid = 10053730953365540243
^53 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^54 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h1fa9f5dd3b304822E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 10305417479466229565
^55 = gv: (name: "_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3c72acb06318a4f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 79, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^41), (callee: ^25), (callee: ^15), (callee: ^19), (callee: ^21), (callee: ^90)), refs: (^72, ^31)))) ; guid = 10314133870573163758
^56 = gv: (name: "_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE") ; guid = 11379753628054763235
^57 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h2f09056dbfdecceaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^70), (callee: ^40), (callee: ^9))))) ; guid = 11430349597008476261
^58 = gv: (name: "_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h2696b3186a523e14E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^7), (callee: ^69)), refs: (^72)))) ; guid = 11518383407460273601
^59 = gv: (name: "alloc92", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12049371612115877541
^60 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h631856ca4092425fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^66), (callee: ^64))))) ; guid = 12948817818096459407
^61 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h352d30aea0aa824dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^68))))) ; guid = 13041512310626574378
^62 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h082bea2dcae7398cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^40), (callee: ^13))))) ; guid = 13076027473827503776
^63 = gv: (name: "_ZN4core3ptr4read17hc0d2e272d8a568f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11))) ; guid = 13238970635895684002
^64 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2c9de9bd8ae65683E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13357751092962941025
^65 = gv: (name: "alloc100", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13424315066712438516
^66 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17heaabafff20f1b96eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^82), (callee: ^13))))) ; guid = 13690431459773858487
^67 = gv: (name: "_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17h179e9fc1fe8f6399E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22))) ; guid = 13706945823594493424
^68 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h1767667766a4e9b1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 13718842283869671044
^69 = gv: (name: "_ZN4core4hint9black_box17h237f6d1b6a64f9d9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 13921321831940837439
^70 = gv: (name: "_ZN4core5alloc6layout6Layout4size17ha34045d363f5f155E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 14246852157828654057
^71 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hee91c40badec4f93E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^77), (callee: ^13))))) ; guid = 14360281138380892866
^72 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^73 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9a28c7bbd8163745E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^10))))) ; guid = 15020707070682552120
^74 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h1f441b80435d4ecbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 15231825920468502453
^75 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17ha38ffd7bd62adb6aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16220321630265140866
^76 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17hed5947834f1944c4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^81), (callee: ^35)), refs: (^72)))) ; guid = 16275275165162121421
^77 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h2eba5c2ac1b478bfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^64))))) ; guid = 16931221993698897770
^78 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h3f55f589bc37f2fdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 17042588267950033153
^79 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h1b879e89a0bfe1d6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 17045270870669617229
^80 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hfce12c4753fed473E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^52), (callee: ^13))))) ; guid = 17157289319396950864
^81 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17hab724733a19c6e29E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^63), (callee: ^91), (callee: ^14), (callee: ^21), (callee: ^90)), refs: (^72)))) ; guid = 17329446779059746085
^82 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h866f21d68c9e0ad5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 17390970380735420404
^83 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5c9dfbf827eaac15E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^70), (callee: ^64), (callee: ^42))))) ; guid = 17402292567798612189
^84 = gv: (name: "_ZN5alloc5alloc8box_free17h4da4bbbe20edbd7cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^87), (callee: ^34), (callee: ^88), (callee: ^71), (callee: ^83)), refs: (^72)))) ; guid = 17679310823142206768
^85 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h52292fbeb4cb681bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^64), (callee: ^20), (callee: ^16))))) ; guid = 17910443098364109511
^86 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd09e1b92cb9e0cbfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 18072832350610045852
^87 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9196a7462ba1c383E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^50))))) ; guid = 18209558428498321289
^88 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h92dc39a3a405593cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^43), (callee: ^79))))) ; guid = 18236807822576357842
^89 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^90 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^91 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he2a3e1db6d0e066dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^35))))) ; guid = 18411905083675475224
^92 = blockcount: 254
