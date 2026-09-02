; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fwrite2.rs.bc'
source_filename = "csv_fwrite2.bf6bdfd4-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os" = type { [1 x i32], i32 }
%"std::io::error::Custom" = type { { {}*, [3 x i64]* }, i8, [7 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom" = type { [1 x i64], %"std::io::error::Custom"* }
%"std::io::error::SimpleMessage" = type { { [0 x i8]*, i64 }, i8, [7 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage" = type { [1 x i64], %"std::io::error::SimpleMessage"* }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple" = type { [1 x i8], i8 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i64* }
%"core::fmt::Opaque" = type {}
%"alloc::borrow::Cow<str>" = type { i64, [3 x i64] }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::borrow::Cow<str>::Owned" = type { [1 x i64], %"alloc::string::String" }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok" = type { [1 x i64], { i8*, i64 } }
%"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok" = type { {} }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break" = type { [1 x i64], { i64, i64 } }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue" = type { [1 x i64], i64 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue" = type { [1 x i64], { i8*, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { [1 x i64], { i64, i64 } }
%"alloc::borrow::Cow<str>::Borrowed" = type { [1 x i64], { [0 x i8]*, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>>::Continue" = type { {} }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue" = type { {} }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc126 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"internal error: entered unreachable code" }>, align 1
@alloc127 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/error/repr_bitpacked.rs" }>, align 1
@alloc128 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc127, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\18\01\00\00\0D\00\00\00" }>, align 8
@alloc36 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc37 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc36, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc39 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc129 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc130 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc129, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc131 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc132 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc131, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@anon.2b8e671b5cf4c460f9377c3277e4b0b8.0 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@alloc137 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc134 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc137, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@alloc136 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc137, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\D2\00\00\00\1B\00\00\00" }>, align 8
@alloc138 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc137, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\DF\00\00\00\1F\00\00\00" }>, align 8
@alloc147 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc140 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc147, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\C9\01\00\00\16\00\00\00" }>, align 8
@alloc142 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc147, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\CB\01\00\00\05\00\00\00" }>, align 8
@alloc144 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc147, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc146 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc147, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\86\01\00\00\1C\00\00\00" }>, align 8
@alloc148 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc147, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\90\01\00\00\13\00\00\00" }>, align 8
@alloc155 = private unnamed_addr constant <{ [141 x i8] }> <{ [141 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fwrite2.rs" }>, align 1
@alloc150 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [141 x i8] }>, <{ [141 x i8] }>* @alloc155, i32 0, i32 0, i32 0), [16 x i8] c"\8D\00\00\00\00\00\00\00\10\00\00\00\05\00\00\00" }>, align 8
@alloc152 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [141 x i8] }>, <{ [141 x i8] }>* @alloc155, i32 0, i32 0, i32 0), [16 x i8] c"\8D\00\00\00\00\00\00\00\14\00\00\00\0D\00\00\00" }>, align 8
@alloc154 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [141 x i8] }>, <{ [141 x i8] }>* @alloc155, i32 0, i32 0, i32 0), [16 x i8] c"\8D\00\00\00\00\00\00\00\16\00\00\00\09\00\00\00" }>, align 8
@alloc156 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [141 x i8] }>, <{ [141 x i8] }>* @alloc155, i32 0, i32 0, i32 0), [16 x i8] c"\8D\00\00\00\00\00\00\00\19\00\00\00\05\00\00\00" }>, align 8
@alloc1 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Hello, \22world\22!" }>, align 1
@alloc18 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Output: " }>, align 1
@alloc16 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @alloc18, i32 0, i32 0, i32 0), [8 x i8] c"\08\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc16, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ [25 x i8] }> <{ [25 x i8] c"Error writing to output: " }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [25 x i8] }>, <{ [25 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\19\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc16, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9085f9c95570896cE"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hf1aa7f6fa21bfad1E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h2420d26cb4f33415E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he4c74c34b6f35f33E"(i64 %kind.0, i64 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %kind.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %kind.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h43d7b7fa853dcbf2E"(%"alloc::vec::Vec<u8>"* align 8 %self, i8* %0, i8* %1) unnamed_addr #1 {
start:
  %iterator = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iterator, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iterator, i32 0, i32 1
  store i8* %1, i8** %3, align 8
  %4 = call { [0 x i8]*, i64 } @"_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17he1b69331f0aac1dfE"({ i8*, i8* }* align 8 %iterator)
  %slice.0 = extractvalue { [0 x i8]*, i64 } %4, 0
  %slice.1 = extractvalue { [0 x i8]*, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h61669aee73b7bd62E"(%"alloc::vec::Vec<u8>"* align 8 %self, [0 x i8]* %slice.0, i64 %slice.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h026000552ff4cf51E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd0cbfc9d523bc761E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %1 to %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"*
  %3 = bitcast %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"* %2 to %"core::alloc::layout::LayoutError"*
  %4 = bitcast { i64, i64 }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !2, !noundef !1
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h407f572472ce60c8E"(i8* %0, %"core::panic::location::Location"* align 8 %1) unnamed_addr #0 {
start:
  %2 = alloca i8*, align 8
  %residual = alloca i8*, align 8
  store i8* %0, i8** %residual, align 8
  %e = load i8*, i8** %residual, align 8, !nonnull !1, !noundef !1
  %_3 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd350127b2fd1a9f5E"(i8* %e)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_3, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h7d6d2d1c4d663395E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
start:
  %3 = alloca { i64, i64 }, align 8
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h6f74f29871dfac7cE"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %_3.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_3.1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8, !range !3, !noundef !1
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8200bc3ce30a0e90E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf43de3278e0eec58E"()
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

; Function Attrs: inlinehint uwtable
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h85499de5778b56f2E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he4c74c34b6f35f33E"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd0853ba40aa08177E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 %3) unnamed_addr #0 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h6f74f29871dfac7cE"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd708cc7a1ed19eabE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 {
start:
  %3 = alloca { i64, i64 }, align 8
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he4c74c34b6f35f33E"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %_3.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_3.1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8, !range !3, !noundef !1
  %15 = insertvalue { i64, i64 } undef, i64 %12, 0
  %16 = insertvalue { i64, i64 } %15, i64 %14, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint uwtable
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17h5de20bc19e7d3032E(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h416585c394f7788dE"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !4, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb21, label %bb19

cleanup:                                          ; preds = %bb6, %bb9, %bb15, %bb13, %bb11, %bb8, %bb5, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb22

bb1:                                              ; preds = %start
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hed9215f621b702e2E"({}* %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i64 %9, i64* %bits, align 8
  %_7 = load i64, i64* %bits, align 8
  %_6 = and i64 %_7, 3
  switch i64 %_6, label %bb3 [
    i64 2, label %bb4
    i64 3, label %bb5
    i64 0, label %bb8
    i64 1, label %bb11
  ]

bb3:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc126 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc128 to %"core::panic::location::Location"*)) #15
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb2
  %_11 = load i64, i64* %bits, align 8
  %_9 = ashr i64 %_11, 32
  %code = trunc i64 %_9 to i32
  %10 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os"*
  %11 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os"* %10, i32 0, i32 1
  store i32 %code, i32* %11, align 4
  %12 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 0, i8* %12, align 8
  br label %bb17

bb5:                                              ; preds = %bb2
  %_15 = load i64, i64* %bits, align 8
  %_14 = lshr i64 %_15, 32
  %kind_bits = trunc i64 %_14 to i32
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hd409412999fcaeefE(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !5

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17he0f526303379bd09E"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h416585c394f7788dE"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h94433fc745ee3508E"(i8* %13, i64 1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %14 = bitcast i8* %_28 to %"std::io::error::Custom"*
  br label %bb15

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_37, align 1
  %15 = bitcast i64** %_34 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %14, %"std::io::error::Custom"** %15, align 8
  %16 = load i64*, i64** %_34, align 8
  %17 = bitcast i64* %16 to %"std::io::error::Custom"*
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hae781c1fdf35f3c8E"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !4, !noundef !1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h66490e5a613803fbE"(i64* %_25)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %23 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage"*
  %24 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage"* %23, i32 0, i32 1
  store %"std::io::error::SimpleMessage"* %_24, %"std::io::error::SimpleMessage"** %24, align 8
  %25 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 2, i8* %25, align 8
  br label %bb17

bb6:                                              ; preds = %bb5
  store i64* %bits, i64** %_19, align 8
  %26 = load i64*, i64** %_19, align 8, !nonnull !1, !align !6, !noundef !1
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h5382ebf363a0a69eE"(i8 %_17, i64* align 8 %26)
          to label %bb7 unwind label %cleanup, !range !7

bb7:                                              ; preds = %bb6
  %27 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple"*
  %28 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple"* %27, i32 0, i32 1
  store i8 %kind, i8* %28, align 1
  %29 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 1, i8* %29, align 8
  br label %bb17

bb19:                                             ; preds = %bb21, %bb22
  %30 = bitcast { i8*, i32 }* %1 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

bb21:                                             ; preds = %bb22
  br label %bb19

bb18:                                             ; preds = %bb20, %bb17
  ret void

bb20:                                             ; preds = %bb17
  br label %bb18
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h693dcdb65d037f65E"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17h54795016e42c780dE() #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hd409412999fcaeefE(i32 %0) unnamed_addr #0 {
start:
  %1 = alloca i8, align 1
  %ek = alloca i32, align 4
  store i32 %0, i32* %ek, align 4
  %_5 = load i32, i32* %ek, align 4
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = load i32, i32* %ek, align 4
  %_9 = icmp eq i32 %_10, 1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 0, i8* %1, align 1
  br label %bb83

bb83:                                             ; preds = %bb81, %bb82, %bb79, %bb77, %bb75, %bb73, %bb71, %bb69, %bb67, %bb65, %bb63, %bb61, %bb59, %bb57, %bb55, %bb53, %bb51, %bb49, %bb47, %bb45, %bb43, %bb41, %bb39, %bb37, %bb35, %bb33, %bb31, %bb29, %bb27, %bb25, %bb23, %bb21, %bb19, %bb17, %bb15, %bb13, %bb11, %bb9, %bb7, %bb5, %bb3, %bb1
  %2 = load i8, i8* %1, align 1, !range !5, !noundef !1
  ret i8 %2

bb4:                                              ; preds = %bb2
  %_15 = load i32, i32* %ek, align 4
  %_14 = icmp eq i32 %_15, 2
  br i1 %_14, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i8 1, i8* %1, align 1
  br label %bb83

bb6:                                              ; preds = %bb4
  %_20 = load i32, i32* %ek, align 4
  %_19 = icmp eq i32 %_20, 3
  br i1 %_19, label %bb7, label %bb8

bb5:                                              ; preds = %bb4
  store i8 2, i8* %1, align 1
  br label %bb83

bb8:                                              ; preds = %bb6
  %_25 = load i32, i32* %ek, align 4
  %_24 = icmp eq i32 %_25, 4
  br i1 %_24, label %bb9, label %bb10

bb7:                                              ; preds = %bb6
  store i8 3, i8* %1, align 1
  br label %bb83

bb10:                                             ; preds = %bb8
  %_30 = load i32, i32* %ek, align 4
  %_29 = icmp eq i32 %_30, 5
  br i1 %_29, label %bb11, label %bb12

bb9:                                              ; preds = %bb8
  store i8 4, i8* %1, align 1
  br label %bb83

bb12:                                             ; preds = %bb10
  %_35 = load i32, i32* %ek, align 4
  %_34 = icmp eq i32 %_35, 6
  br i1 %_34, label %bb13, label %bb14

bb11:                                             ; preds = %bb10
  store i8 5, i8* %1, align 1
  br label %bb83

bb14:                                             ; preds = %bb12
  %_40 = load i32, i32* %ek, align 4
  %_39 = icmp eq i32 %_40, 7
  br i1 %_39, label %bb15, label %bb16

bb13:                                             ; preds = %bb12
  store i8 6, i8* %1, align 1
  br label %bb83

bb16:                                             ; preds = %bb14
  %_45 = load i32, i32* %ek, align 4
  %_44 = icmp eq i32 %_45, 8
  br i1 %_44, label %bb17, label %bb18

bb15:                                             ; preds = %bb14
  store i8 7, i8* %1, align 1
  br label %bb83

bb18:                                             ; preds = %bb16
  %_50 = load i32, i32* %ek, align 4
  %_49 = icmp eq i32 %_50, 9
  br i1 %_49, label %bb19, label %bb20

bb17:                                             ; preds = %bb16
  store i8 8, i8* %1, align 1
  br label %bb83

bb20:                                             ; preds = %bb18
  %_55 = load i32, i32* %ek, align 4
  %_54 = icmp eq i32 %_55, 10
  br i1 %_54, label %bb21, label %bb22

bb19:                                             ; preds = %bb18
  store i8 9, i8* %1, align 1
  br label %bb83

bb22:                                             ; preds = %bb20
  %_60 = load i32, i32* %ek, align 4
  %_59 = icmp eq i32 %_60, 11
  br i1 %_59, label %bb23, label %bb24

bb21:                                             ; preds = %bb20
  store i8 10, i8* %1, align 1
  br label %bb83

bb24:                                             ; preds = %bb22
  %_65 = load i32, i32* %ek, align 4
  %_64 = icmp eq i32 %_65, 12
  br i1 %_64, label %bb25, label %bb26

bb23:                                             ; preds = %bb22
  store i8 11, i8* %1, align 1
  br label %bb83

bb26:                                             ; preds = %bb24
  %_70 = load i32, i32* %ek, align 4
  %_69 = icmp eq i32 %_70, 13
  br i1 %_69, label %bb27, label %bb28

bb25:                                             ; preds = %bb24
  store i8 12, i8* %1, align 1
  br label %bb83

bb28:                                             ; preds = %bb26
  %_75 = load i32, i32* %ek, align 4
  %_74 = icmp eq i32 %_75, 14
  br i1 %_74, label %bb29, label %bb30

bb27:                                             ; preds = %bb26
  store i8 13, i8* %1, align 1
  br label %bb83

bb30:                                             ; preds = %bb28
  %_80 = load i32, i32* %ek, align 4
  %_79 = icmp eq i32 %_80, 15
  br i1 %_79, label %bb31, label %bb32

bb29:                                             ; preds = %bb28
  store i8 14, i8* %1, align 1
  br label %bb83

bb32:                                             ; preds = %bb30
  %_85 = load i32, i32* %ek, align 4
  %_84 = icmp eq i32 %_85, 16
  br i1 %_84, label %bb33, label %bb34

bb31:                                             ; preds = %bb30
  store i8 15, i8* %1, align 1
  br label %bb83

bb34:                                             ; preds = %bb32
  %_90 = load i32, i32* %ek, align 4
  %_89 = icmp eq i32 %_90, 17
  br i1 %_89, label %bb35, label %bb36

bb33:                                             ; preds = %bb32
  store i8 16, i8* %1, align 1
  br label %bb83

bb36:                                             ; preds = %bb34
  %_95 = load i32, i32* %ek, align 4
  %_94 = icmp eq i32 %_95, 18
  br i1 %_94, label %bb37, label %bb38

bb35:                                             ; preds = %bb34
  store i8 17, i8* %1, align 1
  br label %bb83

bb38:                                             ; preds = %bb36
  %_100 = load i32, i32* %ek, align 4
  %_99 = icmp eq i32 %_100, 19
  br i1 %_99, label %bb39, label %bb40

bb37:                                             ; preds = %bb36
  store i8 18, i8* %1, align 1
  br label %bb83

bb40:                                             ; preds = %bb38
  %_105 = load i32, i32* %ek, align 4
  %_104 = icmp eq i32 %_105, 20
  br i1 %_104, label %bb41, label %bb42

bb39:                                             ; preds = %bb38
  store i8 19, i8* %1, align 1
  br label %bb83

bb42:                                             ; preds = %bb40
  %_110 = load i32, i32* %ek, align 4
  %_109 = icmp eq i32 %_110, 21
  br i1 %_109, label %bb43, label %bb44

bb41:                                             ; preds = %bb40
  store i8 20, i8* %1, align 1
  br label %bb83

bb44:                                             ; preds = %bb42
  %_115 = load i32, i32* %ek, align 4
  %_114 = icmp eq i32 %_115, 22
  br i1 %_114, label %bb45, label %bb46

bb43:                                             ; preds = %bb42
  store i8 21, i8* %1, align 1
  br label %bb83

bb46:                                             ; preds = %bb44
  %_120 = load i32, i32* %ek, align 4
  %_119 = icmp eq i32 %_120, 23
  br i1 %_119, label %bb47, label %bb48

bb45:                                             ; preds = %bb44
  store i8 22, i8* %1, align 1
  br label %bb83

bb48:                                             ; preds = %bb46
  %_125 = load i32, i32* %ek, align 4
  %_124 = icmp eq i32 %_125, 24
  br i1 %_124, label %bb49, label %bb50

bb47:                                             ; preds = %bb46
  store i8 23, i8* %1, align 1
  br label %bb83

bb50:                                             ; preds = %bb48
  %_130 = load i32, i32* %ek, align 4
  %_129 = icmp eq i32 %_130, 25
  br i1 %_129, label %bb51, label %bb52

bb49:                                             ; preds = %bb48
  store i8 24, i8* %1, align 1
  br label %bb83

bb52:                                             ; preds = %bb50
  %_135 = load i32, i32* %ek, align 4
  %_134 = icmp eq i32 %_135, 26
  br i1 %_134, label %bb53, label %bb54

bb51:                                             ; preds = %bb50
  store i8 25, i8* %1, align 1
  br label %bb83

bb54:                                             ; preds = %bb52
  %_140 = load i32, i32* %ek, align 4
  %_139 = icmp eq i32 %_140, 27
  br i1 %_139, label %bb55, label %bb56

bb53:                                             ; preds = %bb52
  store i8 26, i8* %1, align 1
  br label %bb83

bb56:                                             ; preds = %bb54
  %_145 = load i32, i32* %ek, align 4
  %_144 = icmp eq i32 %_145, 28
  br i1 %_144, label %bb57, label %bb58

bb55:                                             ; preds = %bb54
  store i8 27, i8* %1, align 1
  br label %bb83

bb58:                                             ; preds = %bb56
  %_150 = load i32, i32* %ek, align 4
  %_149 = icmp eq i32 %_150, 29
  br i1 %_149, label %bb59, label %bb60

bb57:                                             ; preds = %bb56
  store i8 28, i8* %1, align 1
  br label %bb83

bb60:                                             ; preds = %bb58
  %_155 = load i32, i32* %ek, align 4
  %_154 = icmp eq i32 %_155, 30
  br i1 %_154, label %bb61, label %bb62

bb59:                                             ; preds = %bb58
  store i8 29, i8* %1, align 1
  br label %bb83

bb62:                                             ; preds = %bb60
  %_160 = load i32, i32* %ek, align 4
  %_159 = icmp eq i32 %_160, 31
  br i1 %_159, label %bb63, label %bb64

bb61:                                             ; preds = %bb60
  store i8 30, i8* %1, align 1
  br label %bb83

bb64:                                             ; preds = %bb62
  %_165 = load i32, i32* %ek, align 4
  %_164 = icmp eq i32 %_165, 32
  br i1 %_164, label %bb65, label %bb66

bb63:                                             ; preds = %bb62
  store i8 31, i8* %1, align 1
  br label %bb83

bb66:                                             ; preds = %bb64
  %_170 = load i32, i32* %ek, align 4
  %_169 = icmp eq i32 %_170, 33
  br i1 %_169, label %bb67, label %bb68

bb65:                                             ; preds = %bb64
  store i8 32, i8* %1, align 1
  br label %bb83

bb68:                                             ; preds = %bb66
  %_175 = load i32, i32* %ek, align 4
  %_174 = icmp eq i32 %_175, 34
  br i1 %_174, label %bb69, label %bb70

bb67:                                             ; preds = %bb66
  store i8 33, i8* %1, align 1
  br label %bb83

bb70:                                             ; preds = %bb68
  %_180 = load i32, i32* %ek, align 4
  %_179 = icmp eq i32 %_180, 35
  br i1 %_179, label %bb71, label %bb72

bb69:                                             ; preds = %bb68
  store i8 34, i8* %1, align 1
  br label %bb83

bb72:                                             ; preds = %bb70
  %_185 = load i32, i32* %ek, align 4
  %_184 = icmp eq i32 %_185, 39
  br i1 %_184, label %bb73, label %bb74

bb71:                                             ; preds = %bb70
  store i8 35, i8* %1, align 1
  br label %bb83

bb74:                                             ; preds = %bb72
  %_190 = load i32, i32* %ek, align 4
  %_189 = icmp eq i32 %_190, 37
  br i1 %_189, label %bb75, label %bb76

bb73:                                             ; preds = %bb72
  store i8 39, i8* %1, align 1
  br label %bb83

bb76:                                             ; preds = %bb74
  %_195 = load i32, i32* %ek, align 4
  %_194 = icmp eq i32 %_195, 36
  br i1 %_194, label %bb77, label %bb78

bb75:                                             ; preds = %bb74
  store i8 37, i8* %1, align 1
  br label %bb83

bb78:                                             ; preds = %bb76
  %_200 = load i32, i32* %ek, align 4
  %_199 = icmp eq i32 %_200, 38
  br i1 %_199, label %bb79, label %bb80

bb77:                                             ; preds = %bb76
  store i8 36, i8* %1, align 1
  br label %bb83

bb80:                                             ; preds = %bb78
  %_205 = load i32, i32* %ek, align 4
  %_204 = icmp eq i32 %_205, 40
  br i1 %_204, label %bb81, label %bb82

bb79:                                             ; preds = %bb78
  store i8 38, i8* %1, align 1
  br label %bb83

bb82:                                             ; preds = %bb80
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false)
  store i8 41, i8* %1, align 1
  br label %bb83

bb81:                                             ; preds = %bb80
  store i8 40, i8* %1, align 1
  br label %bb83
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h19c55972a982364aE"(%"alloc::vec::Vec<u8>"* align 8 %self, [0 x i8]* align 1 %buf.0, i64 %buf.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h8e7d259007826484E"(%"alloc::vec::Vec<u8>"* align 8 %self, [0 x i8]* align 1 %buf.0, i64 %buf.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2a8df933ff48f08E"({ [0 x i8]*, i64 }* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !1, !align !8, !noundef !1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = call zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h6a2178a946c36754E"([0 x i8]* align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics11write_bytes17h985c8b4d5f00b128E(i8* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memset.p0i8.i64(i8* align 1 %dst, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core10intrinsics19copy_nonoverlapping17h451d151e92e808c2E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 8
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3Ord3max17hd7dbd95c12d586e8E(i64 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %3 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  %4 = invoke i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h2961062af85c711eE"(i64* align 8 %self, i64* align 8 %other)
          to label %bb1 unwind label %cleanup, !range !9

bb8:                                              ; preds = %cleanup
  br label %bb13

cleanup:                                          ; preds = %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb8

bb1:                                              ; preds = %start
  store i8 %4, i8* %_3, align 1
  %_7 = load i8, i8* %_3, align 1, !range !9, !noundef !1
  switch i8 %_7, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %10 = load i8, i8* %_9, align 1, !range !4, !noundef !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_8, align 1
  %12 = load i64, i64* %other, align 8
  store i64 %12, i64* %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_9, align 1
  %13 = load i64, i64* %self, align 8
  store i64 %13, i64* %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %14 = load i8, i8* %_8, align 1, !range !4, !noundef !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %16 = load i8, i8* %_9, align 1, !range !4, !noundef !1
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %18 = bitcast { i8*, i32 }* %2 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %24 = load i64, i64* %3, align 8
  ret i64 %24

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3max17h6b18973441d581deE(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3cmp3Ord3max17hd7dbd95c12d586e8E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h2961062af85c711eE"(i64* align 8 %self, i64* align 8 %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_4 = load i64, i64* %self, align 8
  %_5 = load i64, i64* %other, align 8
  %_3 = icmp ult i64 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i64, i64* %self, align 8
  %_8 = load i64, i64* %other, align 8
  %_6 = icmp eq i64 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, i8* %0, align 1, !range !9, !noundef !1
  ret i8 %1

bb4:                                              ; preds = %bb2
  store i8 1, i8* %0, align 1
  br label %bb5

bb3:                                              ; preds = %bb2
  store i8 0, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  br label %bb6
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h3c1ccd84e1e93e13E(i8** align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h4434d46cfa9168b1E(i8** align 8 %x, i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h67da3f470eea91efE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h4434d46cfa9168b1E(i8** align 8 %x, i1 (i8**, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i8**, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i8** %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !8, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !8, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h86af1f3616dae5e0E(%"alloc::borrow::Cow<str>"* align 8 %x, i1 (%"alloc::borrow::Cow<str>"*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"alloc::borrow::Cow<str>"*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::borrow::Cow<str>"* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !1, !align !8, !noundef !1
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !1, !align !8, !noundef !1
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !1, !noundef !1
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17hbd91b91e39b71a7aE(%"alloc::borrow::Cow<str>"* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h86af1f3616dae5e0E(%"alloc::borrow::Cow<str>"* align 8 %x, i1 (%"alloc::borrow::Cow<str>"*, %"core::fmt::Formatter"*)* @"_ZN64_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ec85ef2209a04f1E")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hc874d154740ce200E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  %2 = load i8, i8* %_3, align 1, !range !4, !noundef !1
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
  %11 = load i64*, i64** %10, align 8, !align !6
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
  call void @_ZN4core3fmt9Arguments6new_v117hc874d154740ce200E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc37 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc39 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc130 to %"core::panic::location::Location"*)) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h622517a85fe69151E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !10, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17ha6250fdce298c2b7E(i64 %_3), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h5feb6037bc28db9bE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !10, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h891317cbc7ec663cE"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !4, !noundef !1
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !4, !noundef !1
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !4, !noundef !1
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_5.0, i64* %28, align 8
  %29 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %29, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %30, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !range !12, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h15b6845e504a3539E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !4, !noundef !1
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !4, !noundef !1
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !4, !noundef !1
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_5.0, i64* %28, align 8
  %29 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %29, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %30, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !range !12, !noundef !1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17ha6250fdce298c2b7E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !11, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h72f024c53937a230E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17ha41a50c5109b27f5E"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to i8*
  %1 = load i8, i8* %0, align 8, !range !13, !noundef !1
  %_2 = zext i8 %1 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %2 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %3 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %2, i32 0, i32 1
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he340ca7c0ffcc9f7E"(%"std::io::error::Custom"** %3)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h69956bdd7e4e6571E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !1, !align !6, !noundef !1
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
  %14 = load i64*, i64** %13, align 8, !nonnull !1, !align !6, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17ha79c7a893f39bfccE(i8* %12, i64* align 8 %14) #16
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
  %24 = load i64*, i64** %23, align 8, !nonnull !1, !align !6, !noundef !1
  call void @_ZN5alloc5alloc8box_free17ha79c7a893f39bfccE(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
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
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hc5ed3eeba4a35043E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h658e7a1d3f7a2312E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h8eb4144e19d53948E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hb9750ef2e620a0b1E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h33aa6c1944ee61a0E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h49e77c9c2aa4b9a4E"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hdcff310dd0f31505E"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3e1c9c6fc9f101caE"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h54da48638abe6754E"(i8** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h65d30b28fe3ebe85E"(%"std::io::error::Custom"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::Custom"* %_1 to { {}*, [3 x i64]* }*
  call void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h69956bdd7e4e6571E"({ {}*, [3 x i64]* }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hdcff310dd0f31505E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5339fd0605886e00E"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h843b30b7760f933dE"({ i8*, i64 }* %1) #16
          to label %bb1 unwind label %abort

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb3

bb4:                                              ; preds = %start
  %7 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h843b30b7760f933dE"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb1:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb4
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd5baeea40641775eE"(%"alloc::borrow::Cow<str>"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::borrow::Cow<str>"* %_1 to i64*
  %_2 = load i64, i64* %0, align 8, !range !12, !noundef !1
  %1 = icmp eq i64 %_2, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %2 = bitcast %"alloc::borrow::Cow<str>"* %_1 to %"alloc::borrow::Cow<str>::Owned"*
  %3 = getelementptr inbounds %"alloc::borrow::Cow<str>::Owned", %"alloc::borrow::Cow<str>::Owned"* %2, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h49e77c9c2aa4b9a4E"(%"alloc::string::String"* %3)
  br label %bb1
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h843b30b7760f933dE"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h92f318f22d911695E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h54da48638abe6754E"(i8** %_1) unnamed_addr #1 {
start:
  call void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hadbc3b44729afb3cE"(i8** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he340ca7c0ffcc9f7E"(%"std::io::error::Custom"** %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %2 = bitcast i64** %1 to %"std::io::error::Custom"**
  %3 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %2, align 8
  invoke void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h65d30b28fe3ebe85E"(%"std::io::error::Custom"* %3)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %4 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !1, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h03c40c54fb8fd89aE(i64* %5) #16
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %11 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %12 = load i64*, i64** %11, align 8, !nonnull !1, !noundef !1
  call void @_ZN5alloc5alloc8box_free17h03c40c54fb8fd89aE(i64* %12)
  br label %bb1

abort:                                            ; preds = %bb4
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb2:                                              ; preds = %bb4
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h01cc3e82a1d563f8E"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h41ae5c68aa83fbbfE"(%"std::io::error::Custom"* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hc4a05181ec953f61E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hbbc040452191e90cE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5918c9a000da7c63E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h2420d26cb4f33415E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hd9b79df22cd9218dE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha7f9ef6a22c50177E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h2420d26cb4f33415E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf54202e4d71d0bcaE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h77aaf80b76c15f78E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h2420d26cb4f33415E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hf1aa7f6fa21bfad1E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h5b33ad1c6fb79294E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h56ba3637d53801b9E"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17heff535e61a2133a4E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h5eb0b3d3521c9a3cE"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h94433fc745ee3508E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = sub i64 0, %count
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr i8, i8* %self, i64 %1
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %_3.i
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17ha5f013e1525cf3a0E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h460f47252a5dbe55E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to i8**
  store i8* %self, i8** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hed9215f621b702e2E"({}* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to {}**
  store {}* %self, {}** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h72e02bf75b3a4b15E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h4531152ca9092eccE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17ha5f013e1525cf3a0E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h8eb4144e19d53948E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata14from_raw_parts17hcc616ee34ec93651E({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h33aa6c1944ee61a0E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h4531152ca9092eccE({}* %data_address) unnamed_addr #0 {
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
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h41ae5c68aa83fbbfE"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %ptr, %"std::io::error::Custom"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17ha1e94048a1859cccE"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
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
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he75958fdb6a0480aE"(%"std::io::error::SimpleMessage"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::SimpleMessage"**
  store %"std::io::error::SimpleMessage"* %ptr, %"std::io::error::SimpleMessage"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !1, !noundef !1
  ret i64* %2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hf10111a1bebd1e28E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h72e02bf75b3a4b15E"(i8* %ptr)
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
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h313678bf746ee41aE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfd37acba0719ac3eE"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5918c9a000da7c63E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h79b6d90ed8c6ff5eE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h77aaf80b76c15f78E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha7f9ef6a22c50177E"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h33cfea2c9a3d4109E"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"std::io::error::Custom"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17he0f526303379bd09E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h416585c394f7788dE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3 to %"std::io::error::SimpleMessage"*
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he75958fdb6a0480aE"(%"std::io::error::SimpleMessage"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h33cfea2c9a3d4109E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::Custom"*
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h416585c394f7788dE"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to {}*
  ret {}* %_2
}

; Function Attrs: inlinehint uwtable
define %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h66490e5a613803fbE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::SimpleMessage"*
  ret %"std::io::error::SimpleMessage"* %_2
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h79b6d90ed8c6ff5eE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfd37acba0719ac3eE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h56ba3637d53801b9E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !6, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h79b6d90ed8c6ff5eE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h5eb0b3d3521c9a3cE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !1, !noundef !1
  %_2 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h33cfea2c9a3d4109E"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h2aca89b95ebd485eE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h6f99f1fc4ad96f07E"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h6f99f1fc4ad96f07E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfd37acba0719ac3eE"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hd0b7469e25ed9d2dE"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hb9750ef2e620a0b1E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17ha1e94048a1859cccE"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17he0d2a10189b270f8E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
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
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h77e3fa65af59c4e2E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hc26c4f975bd6415dE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to i8**
  store i8* %self, i8** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h658e7a1d3f7a2312E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hcbb0654edbc23f04E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hcc616ee34ec93651E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h77e3fa65af59c4e2E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h250092145555e15aE([0 x i8]* align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !1, !align !8, !noundef !1
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: inlinehint noreturn uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h54795016e42c780dE() unnamed_addr #2 {
start:
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdb34677dffe52e7eE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h5feb6037bc28db9bE(i64 %align), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !10, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !10, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h622517a85fe69151E(i64 %_3), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h72f024c53937a230E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha5bb31eabd726342E(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h15b6845e504a3539E"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h5b33581288071e56E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hba85b6c74c9c067bE"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !12, !noundef !1
  switch i64 %_9, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %val = load i64, i64* %5, align 8
  br label %bb9

bb7:                                              ; preds = %bb4
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h026000552ff4cf51E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc132 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !2, !noundef !1
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdb34677dffe52e7eE(i64 %val, i64 1)
  %_13.0 = extractvalue { i64, i64 } %13, 0
  %_13.1 = extractvalue { i64, i64 } %13, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_13.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_13.1, i64* %15, align 8
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h8f629d9377dfaf5bE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h57b0ff011a113971E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h8b7db9297fe921afE"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hfbe74655f0869b38E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hcc701fec384603c9E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17hc5ed3eeba4a35043E(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h8b7db9297fe921afE"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hfbe74655f0869b38E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hcbb0654edbc23f04E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %4 = getelementptr i8, i8* %ptr, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds i8, i8* %ptr, i64 %slice.1
  store i8* %6, i8** %0, align 8
  %7 = load i8*, i8** %0, align 8
  store i8* %7, i8** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  store i8* %5, i8** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load i8*, i8** %end, align 8
  %8 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  store i8* %_21, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !1, !noundef !1
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = insertvalue { i8*, i8* } undef, i8* %11, 0
  %15 = insertvalue { i8*, i8* } %14, i8* %13, 1
  ret { i8*, i8* } %15
}

; Function Attrs: uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17he1b69331f0aac1dfE"({ i8*, i8* }* align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %_5.i = alloca i64, align 8
  %1 = bitcast { i8*, i8* }* %self to i8**
  %_4.i = load i8*, i8** %1, align 8, !nonnull !1, !noundef !1
  %_3.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %_4.i)
  %2 = bitcast { i8*, i8* }* %self to i8**
  %start1.i = load i8*, i8** %2, align 8, !nonnull !1, !noundef !1
  %_9.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %start1.i)
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb4.i, label %bb9.i

bb4.i:                                            ; preds = %start
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_13.i = load i8*, i8** %4, align 8
  %_12.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hc26c4f975bd6415dE"(i8* %_13.i)
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %start1.i)
  %_14.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h460f47252a5dbe55E"(i8* %_15.i)
  %5 = sub i64 %_12.i, %_14.i
  store i64 %5, i64* %_5.i, align 8
  br label %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17h63f5a66207ebc66cE.exit"

bb9.i:                                            ; preds = %start
  %6 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_19.i = load i8*, i8** %6, align 8
  %_18.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hc26c4f975bd6415dE"(i8* %_19.i)
  %_21.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %start1.i)
  %_20.i = call i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h460f47252a5dbe55E"(i8* %_21.i)
  %7 = sub nuw i64 %_18.i, %_20.i
  store i64 %7, i64* %0, align 8
  %diff.i = load i64, i64* %0, align 8
  %8 = udiv exact i64 %diff.i, 1
  store i64 %8, i64* %_5.i, align 8
  br label %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17h63f5a66207ebc66cE.exit"

"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17h63f5a66207ebc66cE.exit": ; preds = %bb9.i, %bb4.i
  %9 = load i64, i64* %_5.i, align 8
  %10 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hcc701fec384603c9E(i8* %_3.i, i64 %9)
  %11 = extractvalue { [0 x i8]*, i64 } %10, 0
  %12 = extractvalue { [0 x i8]*, i64 } %10, 1
  %13 = extractvalue { [0 x i8]*, i64 } %10, 0
  %14 = extractvalue { [0 x i8]*, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %"_ZN4core5slice4iter13Iter$LT$T$GT$10make_slice17h63f5a66207ebc66cE.exit"
  %15 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %16 = insertvalue { [0 x i8]*, i64 } %15, i64 %14, 1
  ret { [0 x i8]*, i64 } %16
}

; Function Attrs: uwtable
define { i8*, i8* } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h7e19cf5b7c7fc4e6E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h57b0ff011a113971E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h5382ebf363a0a69eE"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !5, !noundef !1
  %3 = sub i8 %2, 41
  %4 = icmp eq i8 %3, 0
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h693dcdb65d037f65E"(i64* align 8 %f), !range !7
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !7, !noundef !1
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

bb4:                                              ; preds = %bb1
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  %8 = load i8, i8* %1, align 1, !range !7, !noundef !1
  ret i8 %8

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h5b33581288071e56E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !12, !noundef !1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %7 = bitcast i64* %6 to %"core::alloc::layout::LayoutError"*
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %v, i64* %10, align 8
  %11 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %11, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %12 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !12, !noundef !1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h7474c94a718a8e0cE"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2, i64 %err.0, i64 %err.1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !12, !noundef !1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %err.0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %err.1, i64* %9, align 8
  %10 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %10, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %11, align 8
  %12 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"*
  %13 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"* %12, i32 0, i32 1
  store i64 %v, i64* %13, align 8
  %14 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %15 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h74b6db1e6cd783eaE"(i8* %0) unnamed_addr #0 {
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
  %9 = load i8, i8* %_7, align 1, !range !4, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h9d03ab47f0a63b93E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !2, !noundef !1
  %8 = icmp eq i64 %7, 0
  %_2 = select i1 %8, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %10, align 8, !range !10, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h54795016e42c780dE() #15
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !2, !noundef !1
  %17 = icmp eq i64 %16, 0
  %_7 = select i1 %17, i64 1, i64 0
  %18 = icmp eq i64 %_7, 0
  br i1 %18, label %bb7, label %bb9

cleanup:                                          ; preds = %bb1
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb10

unreachable:                                      ; preds = %bb1
  unreachable

bb7:                                              ; preds = %bb10
  br i1 true, label %bb8, label %bb4

bb9:                                              ; preds = %bb10
  br label %bb4

bb4:                                              ; preds = %bb8, %bb9, %bb7
  %24 = bitcast { i8*, i32 }* %3 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb8:                                              ; preds = %bb7
  br label %bb4

bb5:                                              ; preds = %bb6, %bb3
  %30 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %31 = insertvalue { i64, i64 } %30, i64 %t.1, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb3
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2789be4eb0c49d09E"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %0, i64 %1, i64 %2) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { %"core::alloc::layout::LayoutError" }, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = icmp eq i64 %6, 0
  %_3 = select i1 %7, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %9, align 8, !range !10, !noundef !1
  %10 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %t.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %t.1, i64* %13, align 8
  %14 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %15 = bitcast { %"core::alloc::layout::LayoutError" }* %_9 to %"core::alloc::layout::LayoutError"*
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hf8f2e00f498203dfE"()
  %_7.0 = extractvalue { i64, i64 } %16, 0
  %_7.1 = extractvalue { i64, i64 } %16, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  %21 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %22 = load i8, i8* %_11, align 1, !range !4, !noundef !1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4b79bf5b198906abE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %1, i64 %2, i64* align 8 %op) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { %"core::alloc::AllocError" }, align 1
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %1, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_3 = select i1 %7, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %t.0 = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %9, align 8
  %10 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 0
  store i8* %t.0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 1
  store i64 %t.1, i64* %13, align 8
  %14 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %15 = bitcast { %"core::alloc::AllocError" }* %_9 to %"core::alloc::AllocError"*
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hc1c52253728ad8ceE"(i64* align 8 %op)
  %_7.0 = extractvalue { i64, i64 } %16, 0
  %_7.1 = extractvalue { i64, i64 } %16, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  %21 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %22 = load i8, i8* %_11, align 1, !range !4, !noundef !1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hdab8eed512ade28bE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_11, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !1
  %7 = sub i64 %6, -9223372036854775807
  %8 = icmp eq i64 %7, 0
  %_3 = select i1 %8, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %2 to %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok"*
  %10 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok"* %9 to {}*
  %11 = bitcast { i64, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 -9223372036854775807, i64* %12, align 8
  br label %bb7

bb1:                                              ; preds = %start
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  store i8 0, i8* %_11, align 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !2, !noundef !1
  %21 = call { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17hffb80d4227513898E"(i64 %18, i64 %20)
  %_7.0 = extractvalue { i64, i64 } %21, 0
  %_7.1 = extractvalue { i64, i64 } %21, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %_7.0, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %_7.1, i64* %23, align 8
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %24 = load i8, i8* %_11, align 1, !range !4, !noundef !1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %29 = load i64, i64* %28, align 8, !range !3, !noundef !1
  %30 = insertvalue { i64, i64 } undef, i64 %27, 0
  %31 = insertvalue { i64, i64 } %30, i64 %29, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h6f74f29871dfac7cE"(i64 %t.0, i64 %t.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %t.1, 1
  ret { i64, i64 } %1
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd0cbfc9d523bc761E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd350127b2fd1a9f5E"(i8* %t) unnamed_addr #1 {
start:
  ret i8* %t
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf43de3278e0eec58E"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b1f3ed95570ef15E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he4c74c34b6f35f33E"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha51b128f845db7deE"(i8* %self) unnamed_addr #1 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9085f9c95570896cE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h699fa8273bd8ad7cE"(%"alloc::string::String"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0ea55e75f374a042E"(%"alloc::string::String"* align 8 %self)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h6a2178a946c36754E"([0 x i8]* align 1 %_5.0, i64 %_5.1, %"core::fmt::Formatter"* align 8 %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17habf7db5158c2e81dE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h3bfca422fdb3e277E"({ i64, i64 }* align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17ha932922b34fa8170E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0) unnamed_addr #0 {
start:
  %_1.0 = load i8*, i8** getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.2b8e671b5cf4c460f9377c3277e4b0b8.0 to { i8*, i64 }*), i32 0, i32 0), align 8, !nonnull !1, !noundef !1
  %_1.1 = load i64, i64* getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* bitcast (<{ [16 x i8] }>* @anon.2b8e671b5cf4c460f9377c3277e4b0b8.0 to { i8*, i64 }*), i32 0, i32 1), align 8
  %1 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i64 }*
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  store i8* %_1.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 %_1.1, i64* %3, align 8
  %4 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h52fe88c0c88f6980E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h7e30f3551917ee41E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h72e02bf75b3a4b15E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h61669aee73b7bd62E"(%"alloc::vec::Vec<u8>"* align 8 %self, [0 x i8]* %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hce708db40445921cE"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  %len = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hc3f0fa2ee17d1968E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_11 = bitcast [0 x i8]* %other.0 to i8*
  %_14 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h52fe88c0c88f6980E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds i8, i8* %_14, i64 %len
  store i8* %1, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h451d151e92e808c2E(i8* %_11, i8* %_3.i, i64 %other.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %2 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %3 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = add i64 %4, %other.1
  store i64 %5, i64* %2, align 8
  ret void
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h8e7d259007826484E"(%"alloc::vec::Vec<u8>"* align 8 %self, [0 x i8]* align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h57b0ff011a113971E"([0 x i8]* align 1 %other.0, i64 %other.1)
  %_4.0 = extractvalue { i8*, i8* } %0, 0
  %_4.1 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h43d7b7fa853dcbf2E"(%"alloc::vec::Vec<u8>"* align 8 %self, i8* %_4.0, i8* %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hc3f0fa2ee17d1968E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h5898380e2ea5514bE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h7e30f3551917ee41E"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h72e02bf75b3a4b15E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hce708db40445921cE"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %additional) unnamed_addr #1 {
start:
  %_4 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hebe413ed3db27416E"({ i8*, i64 }* align 8 %_4, i64 %_5, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17hc21898bca2c3a8d7E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17hbd2f57ee4c280d58E(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h3ba65dc592e44dd9E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h8f629d9377dfaf5bE({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !10, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17hbd2f57ee4c280d58E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !10, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17hc21898bca2c3a8d7E(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hf10111a1bebd1e28E"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h74b6db1e6cd783eaE"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h40769e2c757ef2a1E"(i8* %_16)
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
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hd0b7469e25ed9d2dE"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8200bc3ce30a0e90E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc134 to %"core::panic::location::Location"*))
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
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hd0b7469e25ed9d2dE"(i8* %_7, i64 0)
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
define internal { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h46ebfde9d6a74b52E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1, i64 %2, i64 %3, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %4 = alloca i8*, align 8
  %_53 = alloca { i8*, i64 }, align 8
  %_31 = alloca i8*, align 8
  %5 = alloca { i8*, i64 }, align 8
  %new_layout = alloca { i64, i64 }, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %2, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %3, i64* %9, align 8
  %_6 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %old_layout)
  br label %bb1

bb1:                                              ; preds = %start
  %10 = icmp eq i64 %_6, 0
  br i1 %10, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_9.0 = load i64, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_9.1 = load i64, i64* %12, align 8, !range !10, !noundef !1
  %13 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h3ba65dc592e44dd9E(%"alloc::alloc::Global"* align 1 %self, i64 %_9.0, i64 %_9.1, i1 zeroext %zeroed)
  store { i8*, i64 } %13, { i8*, i64 }* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb1
  %_14 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %old_layout)
  br label %bb5

bb5:                                              ; preds = %bb4
  %_16 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %new_layout)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_13 = icmp eq i64 %_14, %_16
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_56.0 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_56.1 = load i64, i64* %15, align 8, !range !10, !noundef !1
  %16 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h3ba65dc592e44dd9E(%"alloc::alloc::Global"* align 1 %self, i64 %_56.0, i64 %_56.1, i1 zeroext %zeroed)
  %_54.0 = extractvalue { i8*, i64 } %16, 0
  %_54.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb26

bb7:                                              ; preds = %bb6
  %new_size = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %new_layout)
  br label %bb9

bb9:                                              ; preds = %bb7
  %_23 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %old_layout)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_21 = icmp uge i64 %new_size, %_23
  call void @llvm.assume(i1 %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_26 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %ptr)
  br label %bb12

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_28.0 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_28.1 = load i64, i64* %18, align 8, !range !10, !noundef !1
  %raw_ptr = call i8* @_ZN5alloc5alloc7realloc17h36bd7b626f9e3771E(i8* %_26, i64 %_28.0, i64 %_28.1, i64 %new_size)
  br label %bb13

bb13:                                             ; preds = %bb12
  %_33 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hf10111a1bebd1e28E"(i8* %raw_ptr)
  br label %bb14

bb14:                                             ; preds = %bb13
  %_32 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h74b6db1e6cd783eaE"(i8* %_33)
  br label %bb15

bb15:                                             ; preds = %bb14
  %19 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h40769e2c757ef2a1E"(i8* %_32)
  store i8* %19, i8** %_31, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
  %20 = bitcast i8** %_31 to {}**
  %21 = load {}*, {}** %20, align 8
  %22 = icmp eq {}* %21, null
  %_36 = select i1 %22, i64 1, i64 0
  switch i64 %_36, label %bb18 [
    i64 0, label %bb17
    i64 1, label %bb19
  ]

bb18:                                             ; preds = %bb16
  unreachable

bb17:                                             ; preds = %bb16
  %val = load i8*, i8** %_31, align 8, !nonnull !1, !noundef !1
  br i1 %zeroed, label %bb21, label %bb24

bb19:                                             ; preds = %bb16
  %23 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8200bc3ce30a0e90E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc136 to %"core::panic::location::Location"*))
  store { i8*, i64 } %23, { i8*, i64 }* %5, align 8
  br label %bb20

bb20:                                             ; preds = %bb19
  br label %bb37

bb37:                                             ; preds = %bb31, %bb20
  br label %bb38

bb24:                                             ; preds = %bb23, %bb17
  %24 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hd0b7469e25ed9d2dE"(i8* %val, i64 %new_size)
  %_48.0 = extractvalue { i8*, i64 } %24, 0
  %_48.1 = extractvalue { i8*, i64 } %24, 1
  br label %bb25

bb21:                                             ; preds = %bb17
  %25 = getelementptr inbounds i8, i8* %raw_ptr, i64 %_6
  store i8* %25, i8** %4, align 8
  %_3.i = load i8*, i8** %4, align 8
  br label %bb22

bb22:                                             ; preds = %bb21
  %_45 = sub i64 %new_size, %_6
  call void @_ZN4core10intrinsics11write_bytes17h985c8b4d5f00b128E(i8* %_3.i, i8 0, i64 %_45)
  br label %bb23

bb23:                                             ; preds = %bb22
  br label %bb24

bb25:                                             ; preds = %bb24
  %26 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %_48.0, i8** %26, align 8
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %_48.1, i64* %27, align 8
  br label %bb36

bb36:                                             ; preds = %bb3, %bb35, %bb25
  br label %bb38

bb26:                                             ; preds = %bb8
  %28 = call { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdeea16356c6b46f1E"(i8* %_54.0, i64 %_54.1)
  store { i8*, i64 } %28, { i8*, i64 }* %_53, align 8
  br label %bb27

bb27:                                             ; preds = %bb26
  %29 = bitcast { i8*, i64 }* %_53 to {}**
  %30 = load {}*, {}** %29, align 8
  %31 = icmp eq {}* %30, null
  %_58 = select i1 %31, i64 1, i64 0
  switch i64 %_58, label %bb29 [
    i64 0, label %bb28
    i64 1, label %bb30
  ]

bb29:                                             ; preds = %bb27
  unreachable

bb28:                                             ; preds = %bb27
  %32 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 0
  %val.0 = load i8*, i8** %32, align 8, !nonnull !1, !noundef !1
  %33 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 1
  %val.1 = load i64, i64* %33, align 8
  %_64 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %ptr)
  br label %bb32

bb30:                                             ; preds = %bb27
  %34 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8200bc3ce30a0e90E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc138 to %"core::panic::location::Location"*))
  store { i8*, i64 } %34, { i8*, i64 }* %5, align 8
  br label %bb31

bb31:                                             ; preds = %bb30
  br label %bb37

bb38:                                             ; preds = %bb36, %bb37
  %35 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = insertvalue { i8*, i64 } undef, i8* %36, 0
  %40 = insertvalue { i8*, i64 } %39, i64 %38, 1
  ret { i8*, i64 } %40

bb32:                                             ; preds = %bb28
  %_66 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h2aca89b95ebd485eE"(i8* %val.0, i64 %val.1)
  br label %bb33

bb33:                                             ; preds = %bb32
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h451d151e92e808c2E(i8* %_64, i8* %_66, i64 %_6)
  br label %bb34

bb34:                                             ; preds = %bb33
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_72.0 = load i64, i64* %41, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_72.1 = load i64, i64* %42, align 8, !range !10, !noundef !1
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17heaf9a857fffaeddaE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %_72.0, i64 %_72.1)
  br label %bb35

bb35:                                             ; preds = %bb34
  %43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %val.0, i8** %43, align 8
  %44 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %val.1, i64* %44, align 8
  br label %bb36

bb3:                                              ; preds = %bb2
  br label %bb36
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h330372811f251086E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc7realloc17h36bd7b626f9e3771E(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h03c40c54fb8fd89aE(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i64*, align 8
  store i64* %0, i64** %ptr, align 8
  %_5 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17heff535e61a2133a4E"(i64** align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb1:                                              ; preds = %start
  store i64 24, i64* %2, align 8
  %size = load i64, i64* %2, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_9 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17heff535e61a2133a4E"(i64** align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 8, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdb34677dffe52e7eE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i64*, i64** %ptr, align 8, !nonnull !1, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hd9b79df22cd9218dE"(i64* %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9085f9c95570896cE"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17heaf9a857fffaeddaE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, i32 }* %3 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17ha79c7a893f39bfccE(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h5b33ad1c6fb79294E"({ i8*, i64* }* align 8 %ptr)
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
  %18 = load i64, i64* %17, align 8, !range !11, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h5b33ad1c6fb79294E"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !11, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdb34677dffe52e7eE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !6, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hbbc040452191e90cE"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9085f9c95570896cE"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17heaf9a857fffaeddaE"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
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
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h413191c9a8c61af9E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h78b46f2631c03f14E"(%"std::io::error::Custom"* %raw)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h78b46f2631c03f14E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca %"std::io::error::Custom"*, align 8
  %_3 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h01cc3e82a1d563f8E"(%"std::io::error::Custom"* %raw)
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  %7 = bitcast %"std::io::error::Custom"** %1 to i64**
  store i64* %_3, i64** %7, align 8
  %8 = bitcast %"std::io::error::Custom"** %1 to %"alloc::alloc::Global"*
  %9 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %1, align 8, !nonnull !1, !align !6, !noundef !1
  ret %"std::io::error::Custom"* %9

bb3:                                              ; preds = %bb2
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h14f66187028b1ed7E(i64 %alloc_size) unnamed_addr #0 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br i1 false, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 -9223372036854775807, i64* %2, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %3 = bitcast { i64, i64 }* %_4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8, !range !2, !noundef !1
  %9 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b1f3ed95570ef15E"(i64 %6, i64 %8)
  %_3.0 = extractvalue { i64, i64 } %9, 0
  %_3.1 = extractvalue { i64, i64 } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_3.0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_3.1, i64* %11, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !3, !noundef !1
  %16 = insertvalue { i64, i64 } undef, i64 %13, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: noinline uwtable
define void @_ZN5alloc7raw_vec11finish_grow17hec0d8c74c4e60caaE(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, %"alloc::alloc::Global"* align 1 %alloc) unnamed_addr #3 {
start:
  %_41 = alloca i64*, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %memory = alloca { i8*, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %_6 = alloca %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>", align 8
  %_5 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2789be4eb0c49d09E"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") %_6, i64 %new_layout.0, i64 %new_layout.1)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6e933f388cb30a05E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %_5, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to i64*
  %_9 = load i64, i64* %1, align 8, !range !12, !noundef !1
  switch i64 %_9, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %2 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"*
  %3 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %val.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %val.1 = load i64, i64* %5, align 8, !range !10, !noundef !1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %val.0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %val.1, i64* %7, align 8
  %_15 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %new_layout)
  br label %bb7

bb5:                                              ; preds = %bb2
  %8 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %9 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %residual.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %residual.1 = load i64, i64* %11, align 8, !range !2, !noundef !1
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h85499de5778b56f2E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc140 to %"core::panic::location::Location"*))
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb13, %bb6
  br label %bb24

bb7:                                              ; preds = %bb3
  %12 = call { i64, i64 } @_ZN5alloc7raw_vec11alloc_guard17h14f66187028b1ed7E(i64 %_15)
  %_14.0 = extractvalue { i64, i64 } %12, 0
  %_14.1 = extractvalue { i64, i64 } %12, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %13 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5150eaba714f98e0E"(i64 %_14.0, i64 %_14.1)
  store { i64, i64 } %13, { i64, i64 }* %_13, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !3, !noundef !1
  %16 = sub i64 %15, -9223372036854775807
  %17 = icmp eq i64 %16, 0
  %_17 = select i1 %17, i64 0, i64 1
  switch i64 %_17, label %bb11 [
    i64 0, label %bb10
    i64 1, label %bb12
  ]

bb11:                                             ; preds = %bb9
  unreachable

bb10:                                             ; preds = %bb9
  %18 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, i32 0, i32 1
  %19 = load i64, i64* %18, align 8, !range !2, !noundef !1
  %20 = icmp eq i64 %19, 0
  %_22 = select i1 %20, i64 0, i64 1
  %21 = icmp eq i64 %_22, 1
  br i1 %21, label %bb15, label %bb14

bb12:                                             ; preds = %bb9
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %residual.01 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %residual.12 = load i64, i64* %23, align 8, !range !2, !noundef !1
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd0853ba40aa08177E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i64 %residual.01, i64 %residual.12, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc142 to %"core::panic::location::Location"*))
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb23

bb24:                                             ; preds = %bb22, %bb23
  ret void

bb15:                                             ; preds = %bb10
  %24 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %25 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %24 to { i8*, { i64, i64 } }*
  %26 = bitcast { i8*, { i64, i64 } }* %25 to i8**
  %ptr = load i8*, i8** %26, align 8, !nonnull !1, !noundef !1
  %27 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %28 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %27 to { i8*, { i64, i64 } }*
  %29 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %28, i32 0, i32 1
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8, !range !10, !noundef !1
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %_30 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %old_layout)
  br label %bb16

bb14:                                             ; preds = %bb10
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_39.0 = load i64, i64* %36, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_39.1 = load i64, i64* %37, align 8, !range !10, !noundef !1
  %38 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hd6566746a6ba686aE"(%"alloc::alloc::Global"* align 1 %alloc, i64 %_39.0, i64 %_39.1)
  store { i8*, i64 } %38, { i8*, i64 }* %memory, align 8
  br label %bb20

bb20:                                             ; preds = %bb14
  br label %bb21

bb21:                                             ; preds = %bb19, %bb20
  %39 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %memory, i32 0, i32 0
  %_40.0 = load i8*, i8** %39, align 8
  %40 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %memory, i32 0, i32 1
  %_40.1 = load i64, i64* %40, align 8
  %41 = bitcast i64** %_41 to { i64, i64 }**
  store { i64, i64 }* %new_layout, { i64, i64 }** %41, align 8
  %42 = load i64*, i64** %_41, align 8, !nonnull !1, !align !6, !noundef !1
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4b79bf5b198906abE"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %0, i8* %_40.0, i64 %_40.1, i64* align 8 %42)
  br label %bb22

bb16:                                             ; preds = %bb15
  %_32 = call i64 @_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E({ i64, i64 }* align 8 %new_layout)
  br label %bb17

bb17:                                             ; preds = %bb16
  %_29 = icmp eq i64 %_30, %_32
  call void @llvm.assume(i1 %_29)
  br label %bb18

bb18:                                             ; preds = %bb17
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_36.0 = load i64, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_36.1 = load i64, i64* %44, align 8, !range !10, !noundef !1
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_37.0 = load i64, i64* %45, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_37.1 = load i64, i64* %46, align 8, !range !10, !noundef !1
  %47 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9240b9257a8ee493E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %ptr, i64 %_36.0, i64 %_36.1, i64 %_37.0, i64 %_37.1)
  store { i8*, i64 } %47, { i8*, i64 }* %memory, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb21

bb22:                                             ; preds = %bb21
  br label %bb24
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hc1c52253728ad8ceE"(i64* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %1 = bitcast i64** %_1 to { i64, i64 }**
  %_5 = load { i64, i64 }*, { i64, i64 }** %1, align 8, !nonnull !1, !align !6, !noundef !1
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %_4.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %_4.1 = load i64, i64* %3, align 8, !range !10, !noundef !1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  store i64 %_4.0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_4.1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !2, !noundef !1
  %10 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b1f3ed95570ef15E"(i64 %7, i64 %9)
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { i64, i64 } undef, i64 %11, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hf8f2e00f498203dfE"() unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc7raw_vec14handle_reserve17h6f83ddce10677111E(i64 %result.0, i64 %result.1) unnamed_addr #0 {
start:
  %_2 = alloca { i64, i64 }, align 8
  %0 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hdab8eed512ade28bE"(i64 %result.0, i64 %result.1)
  store { i64, i64 } %0, { i64, i64 }* %_2, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !3, !noundef !1
  %3 = sub i64 %2, -9223372036854775807
  %4 = icmp eq i64 %3, 0
  %_6 = select i1 %4, i64 0, i64 1
  switch i64 %_6, label %bb4 [
    i64 0, label %bb2
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb3, %bb1
  unreachable

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !2, !noundef !1
  %7 = icmp eq i64 %6, 0
  %_5 = select i1 %7, i64 0, i64 1
  switch i64 %_5, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  call void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() #15
  unreachable

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 0
  %layout.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_2, i32 0, i32 1
  %layout.1 = load i64, i64* %9, align 8, !range !10, !noundef !1
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #15
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17hffb80d4227513898E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %e = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = call { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17habf7db5158c2e81dE({ i64, i64 }* align 8 %e)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h290479ac11450c12E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %0, align 8
  %3 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %4 = sub i64 %3, %len
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = icmp ugt i64 %additional, %4
  ret i1 %5
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h8dc8947d133419c8E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 1, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, i8* %_2, align 1, !range !4, !noundef !1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha5bb31eabd726342E(i64 %_8)
  %_7.0 = extractvalue { i64, i64 } %7, 0
  %_7.1 = extractvalue { i64, i64 } %7, 1
  br label %bb7

bb5:                                              ; preds = %bb3
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0, i32 0, i32 1
  store i64 0, i64* %9, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb5
  ret void

bb7:                                              ; preds = %bb6
  %10 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h9d03ab47f0a63b93E"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc144 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %10, 0
  %layout.1 = extractvalue { i64, i64 } %10, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %11 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf54202e4d71d0bcaE"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha51b128f845db7deE"(i8* %_11)
  br label %bb10

bb10:                                             ; preds = %bb9
  %12 = bitcast { i8*, { i64, i64 } }* %_9 to i8**
  store i8* %_10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %_9, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %layout.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %layout.1, i64* %15, align 8
  %16 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %17 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %16 to { i8*, { i64, i64 } }*
  %18 = bitcast { i8*, { i64, i64 } }* %17 to i8*
  %19 = bitcast { i8*, { i64, i64 } }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  br label %bb11
}

; Function Attrs: uwtable
define { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h53e67d3dd1aabad5E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #1 {
start:
  %_30 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %_28 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", align 8
  %_27 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>", align 8
  %_13 = alloca { i64, i64 }, align 8
  %_9 = alloca %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>", align 8
  %_8 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>", align 8
  %_6 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 1, 0
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %2 = bitcast { i64, i64 }* %_6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !2, !noundef !1
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b1f3ed95570ef15E"(i64 %5, i64 %7)
  %_5.0 = extractvalue { i64, i64 } %8, 0
  %_5.1 = extractvalue { i64, i64 } %8, 1
  br label %bb3

bb4:                                              ; preds = %bb1
  %9 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h891317cbc7ec663cE"(i64 %len, i64 %additional)
  %_10.0 = extractvalue { i64, i64 } %9, 0
  %_10.1 = extractvalue { i64, i64 } %9, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %10 = bitcast { i64, i64 }* %_13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !range !2, !noundef !1
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h7474c94a718a8e0cE"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") %_9, i64 %_10.0, i64 %_10.1, i64 %13, i64 %15)
  br label %bb6

bb6:                                              ; preds = %bb5
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf63aa7a1dfebc61cE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %_8, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  %16 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to i64*
  %_14 = load i64, i64* %16, align 8, !range !12, !noundef !1
  switch i64 %_14, label %bb9 [
    i64 0, label %bb8
    i64 1, label %bb10
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb8:                                              ; preds = %bb7
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"* %17, i32 0, i32 1
  %val = load i64, i64* %18, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_20 = load i64, i64* %19, align 8
  %_19 = mul i64 %_20, 2
  %cap = call i64 @_ZN4core3cmp3max17h6b18973441d581deE(i64 %_19, i64 %val)
  br label %bb12

bb10:                                             ; preds = %bb7
  %20 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %21 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %20, i32 0, i32 1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %residual.0 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %residual.1 = load i64, i64* %23, align 8, !range !2, !noundef !1
  %24 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd708cc7a1ed19eabE"(i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc146 to %"core::panic::location::Location"*))
  store { i64, i64 } %24, { i64, i64 }* %0, align 8
  br label %bb11

bb11:                                             ; preds = %bb10
  br label %bb23

bb23:                                             ; preds = %bb21, %bb11
  br label %bb24

bb12:                                             ; preds = %bb8
  %cap1 = call i64 @_ZN4core3cmp3max17h6b18973441d581deE(i64 8, i64 %cap)
  br label %bb13

bb13:                                             ; preds = %bb12
  %25 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha5bb31eabd726342E(i64 %cap1)
  %new_layout.0 = extractvalue { i64, i64 } %25, 0
  %new_layout.1 = extractvalue { i64, i64 } %25, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h8dc8947d133419c8E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_30, { i8*, i64 }* align 8 %self)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_33 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @_ZN5alloc7raw_vec11finish_grow17hec0d8c74c4e60caaE(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") %_28, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30, %"alloc::alloc::Global"* align 1 %_33)
  br label %bb16

bb16:                                             ; preds = %bb15
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0f81ef5d6b6af4f4E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %_27, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %_28)
  br label %bb17

bb17:                                             ; preds = %bb16
  %26 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to i64*
  %_34 = load i64, i64* %26, align 8, !range !12, !noundef !1
  switch i64 %_34, label %bb19 [
    i64 0, label %bb18
    i64 1, label %bb20
  ]

bb19:                                             ; preds = %bb17
  unreachable

bb18:                                             ; preds = %bb17
  %27 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"*
  %28 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"* %27, i32 0, i32 1
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %28, i32 0, i32 0
  %val.0 = load i8*, i8** %29, align 8, !nonnull !1, !noundef !1
  %30 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %28, i32 0, i32 1
  %val.1 = load i64, i64* %30, align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h77b0c5d96c50cb3aE"({ i8*, i64 }* align 8 %self, i8* %val.0, i64 %val.1, i64 %cap1)
  br label %bb22

bb20:                                             ; preds = %bb17
  %31 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %32 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %31, i32 0, i32 1
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %residual.02 = load i64, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %residual.13 = load i64, i64* %34, align 8, !range !2, !noundef !1
  %35 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h7d6d2d1c4d663395E"(i64 %residual.02, i64 %residual.13, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc148 to %"core::panic::location::Location"*))
  store { i64, i64 } %35, { i64, i64 }* %0, align 8
  br label %bb21

bb21:                                             ; preds = %bb20
  br label %bb23

bb24:                                             ; preds = %bb3, %bb22, %bb23
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %39 = load i64, i64* %38, align 8, !range !3, !noundef !1
  %40 = insertvalue { i64, i64 } undef, i64 %37, 0
  %41 = insertvalue { i64, i64 } %40, i64 %39, 1
  ret { i64, i64 } %41

bb22:                                             ; preds = %bb18
  %42 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 16, i1 false)
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 -9223372036854775807, i64* %43, align 8
  br label %bb24

bb3:                                              ; preds = %bb2
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_5.0, i64* %44, align 8
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_5.1, i64* %45, align 8
  br label %bb24
}

; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h77b0c5d96c50cb3aE"({ i8*, i64 }* align 8 %self, i8* %ptr.0, i64 %ptr.1, i64 %cap) unnamed_addr #1 {
start:
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h313678bf746ee41aE"(i8* %ptr.0, i64 %ptr.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hc4a05181ec953f61E"(i8* %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  %0 = bitcast { i8*, i64 }* %self to i8**
  store i8* %_4, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %cap, i64* %1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h7e30f3551917ee41E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hf1aa7f6fa21bfad1E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hebe413ed3db27416E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional) unnamed_addr #0 {
start:
  %_4 = call zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h290479ac11450c12E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb2:                                              ; preds = %bb1
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h48aa3a0ffb052c33E"({ i8*, i64 }* align 8 %self, i64 %len, i64 %additional)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: cold uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h48aa3a0ffb052c33E"({ i8*, i64 }* align 8 %slf, i64 %len, i64 %additional) unnamed_addr #4 {
start:
  %0 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h53e67d3dd1aabad5E"({ i8*, i64 }* align 8 %slf, i64 %len, i64 %additional)
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc7raw_vec14handle_reserve17h6f83ddce10677111E(i64 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17heaf9a857fffaeddaE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !10, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h330372811f251086E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9240b9257a8ee493E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h46ebfde9d6a74b52E(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hd6566746a6ba686aE"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h3ba65dc592e44dd9E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: uwtable
define zeroext i1 @"_ZN64_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ec85ef2209a04f1E"(%"alloc::borrow::Cow<str>"* align 8 %self, %"core::fmt::Formatter"* align 8 %f) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast %"alloc::borrow::Cow<str>"* %self to i64*
  %_3 = load i64, i64* %1, align 8, !range !12, !noundef !1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"alloc::borrow::Cow<str>"* %self to %"alloc::borrow::Cow<str>::Borrowed"*
  %b = getelementptr inbounds %"alloc::borrow::Cow<str>::Borrowed", %"alloc::borrow::Cow<str>::Borrowed"* %2, i32 0, i32 1
  %3 = call zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2a8df933ff48f08E"({ [0 x i8]*, i64 }* align 8 %b, %"core::fmt::Formatter"* align 8 %f)
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %0, align 1
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"alloc::borrow::Cow<str>"* %self to %"alloc::borrow::Cow<str>::Owned"*
  %o = getelementptr inbounds %"alloc::borrow::Cow<str>::Owned", %"alloc::borrow::Cow<str>::Owned"* %5, i32 0, i32 1
  %6 = call zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h699fa8273bd8ad7cE"(%"alloc::string::String"* align 8 %o, %"core::fmt::Formatter"* align 8 %f)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %8 = load i8, i8* %0, align 1, !range !4, !noundef !1
  %9 = trunc i8 %8 to i1
  ret i1 %9

bb4:                                              ; preds = %bb3
  br label %bb6
}

; Function Attrs: inlinehint uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0ea55e75f374a042E"(%"alloc::string::String"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h617b92bd771c9372E"(%"alloc::vec::Vec<u8>"* align 8 %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h250092145555e15aE([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h807f906d941ebb5aE"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !10, !noundef !1
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5339fd0605886e00E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h52fe88c0c88f6980E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hb9750ef2e620a0b1E(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h617b92bd771c9372E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h5898380e2ea5514bE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hcc701fec384603c9E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h92f318f22d911695E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h8dc8947d133419c8E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !2, !noundef !1
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !10, !noundef !1
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17heaf9a857fffaeddaE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h3bfca422fdb3e277E"({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !2, !noundef !1
  %3 = icmp eq i64 %2, 0
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %4 = bitcast { i64, i64 }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %6 = call { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h807f906d941ebb5aE"({ i64, i64 }* align 8 %self)
  %_5.0 = extractvalue { i64, i64 } %6, 0
  %_5.1 = extractvalue { i64, i64 } %6, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_5.0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_5.1, i64* %8, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !2, !noundef !1
  %13 = insertvalue { i64, i64 } undef, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hadbc3b44729afb3cE"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17h5de20bc19e7d3032E(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %_2, i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17ha41a50c5109b27f5E"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint uwtable
define align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hae781c1fdf35f3c8E"(%"std::io::error::Custom"* %p) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h413191c9a8c61af9E"(%"std::io::error::Custom"* %p)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0f81ef5d6b6af4f4E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") %0, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !12, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  %v.0 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %v.1 = load i64, i64* %5, align 8
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"*
  %7 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 0
  store i8* %v.0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 1
  store i64 %v.1, i64* %9, align 8
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !2, !noundef !1
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1a0ebf195ba4bcbfE"(i8* %0) unnamed_addr #0 {
start:
  %_6 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
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
  %5 = bitcast i8** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>>::Continue"*
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>>::Continue"* %5 to {}*
  %7 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast i8** %1 to {}**
  store {}* null, {}** %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %e = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %e, i8** %_6, align 8
  %9 = load i8*, i8** %_6, align 8, !nonnull !1, !noundef !1
  store i8* %9, i8** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8*, i8** %1, align 8
  ret i8* %10
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h40769e2c757ef2a1E"(i8* %0) unnamed_addr #0 {
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

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5150eaba714f98e0E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !3, !noundef !1
  %7 = sub i64 %6, -9223372036854775807
  %8 = icmp eq i64 %7, 0
  %_2 = select i1 %8, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue"*
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue"* %9 to {}*
  %11 = bitcast { i64, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 -9223372036854775807, i64* %12, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %20 = load i64, i64* %19, align 8, !range !2, !noundef !1
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %26 = load i64, i64* %25, align 8, !range !3, !noundef !1
  %27 = insertvalue { i64, i64 } undef, i64 %24, 0
  %28 = insertvalue { i64, i64 } %27, i64 %26, 1
  ret { i64, i64 } %28
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6e933f388cb30a05E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") %0, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !12, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %v.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %v.1 = load i64, i64* %5, align 8, !range !10, !noundef !1
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"*
  %7 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %v.0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %v.1, i64* %9, align 8
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8, !range !2, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !2, !noundef !1
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hba85b6c74c9c067bE"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !12, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %v, i64* %7, align 8
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"* %_6 to %"core::alloc::layout::LayoutError"*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %11 = bitcast i64* %10 to %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"*
  %12 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %12, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8, !range !12, !noundef !1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdeea16356c6b46f1E"(i8* %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %2 = alloca { i8*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_2 = select i1 %7, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %v.0 = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %v.1 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %v.0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %v.1, i64* %11, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %12 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %13 = bitcast { i8*, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %14 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %13 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %15 = bitcast { i8*, i64 }* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = bitcast { i8*, i64 }* %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = insertvalue { i8*, i64 } undef, i8* %18, 0
  %22 = insertvalue { i8*, i64 } %21, i64 %20, 1
  ret { i8*, i64 } %22
}

; Function Attrs: inlinehint uwtable
define void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf63aa7a1dfebc61cE"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") %0, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !12, !noundef !1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %v = load i64, i64* %3, align 8
  %4 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"*
  %5 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"* %4, i32 0, i32 1
  store i64 %v, i64* %5, align 8
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to i64*
  store i64 0, i64* %6, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %7 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"*
  %8 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"* %7, i32 0, i32 1
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %e.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %e.1 = load i64, i64* %10, align 8, !range !2, !noundef !1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %12, align 8
  %13 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %14 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %13, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !range !2, !noundef !1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h613e27fe97d5e59bE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h72e02bf75b3a4b15E"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11 = load i8*, i8** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hcbb0654edbc23f04E"(i8* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %6, align 8, !nonnull !1, !noundef !1
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !1, !noundef !1
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E"(i8* %_3.i.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %11, align 8
  store i8* %old.i, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %13 = bitcast i8** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = bitcast i8** %2 to {}**
  store {}* null, {}** %14, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %15 = load i8*, i8** %2, align 8, !align !8
  ret i8* %15

bb13:                                             ; preds = %bb12
  store i8* %12, i8** %2, align 8
  br label %bb14
}

; Function Attrs: uwtable
define i8* @csv_fwrite2(i64* align 8 %0, i8* align 1 %1, i64 %2, i8 %quote) unnamed_addr #1 {
start:
  %_63 = alloca [1 x i8], align 1
  %_57 = alloca i8*, align 8
  %_51 = alloca [1 x i8], align 1
  %_45 = alloca i8*, align 8
  %_39 = alloca [1 x i8], align 1
  %_33 = alloca i8*, align 8
  %_25 = alloca i8*, align 8
  %iter = alloca { i8*, i8* }, align 8
  %_16 = alloca [1 x i8], align 1
  %_10 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %src = alloca { i8*, i64 }, align 8
  %fp = alloca i64*, align 8
  store i64* %0, i64** %fp, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 0
  store i8* %1, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = bitcast i64** %fp to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_5 = select i1 %8, i64 0, i64 1
  switch i64 %_5, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %9 = bitcast i8** %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = bitcast i8** %3 to {}**
  store {}* null, {}** %10, align 8
  br label %bb39

bb3:                                              ; preds = %start
  %11 = bitcast i64** %fp to %"alloc::vec::Vec<u8>"**
  %fp1 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %11, align 8, !nonnull !1, !align !6, !noundef !1
  %12 = bitcast { i8*, i64 }* %src to {}**
  %13 = load {}*, {}** %12, align 8
  %14 = icmp eq {}* %13, null
  %_8 = select i1 %14, i64 0, i64 1
  switch i64 %_8, label %bb5 [
    i64 0, label %bb4
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb4:                                              ; preds = %bb3
  %15 = bitcast i8** %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast i8** %3 to {}**
  store {}* null, {}** %16, align 8
  br label %bb39

bb6:                                              ; preds = %bb3
  %17 = bitcast { i8*, i64 }* %src to { [0 x i8]*, i64 }*
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %17, i32 0, i32 0
  %src.0 = load [0 x i8]*, [0 x i8]** %18, align 8, !nonnull !1, !align !8, !noundef !1
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %17, i32 0, i32 1
  %src.1 = load i64, i64* %19, align 8
  %20 = getelementptr inbounds [1 x i8], [1 x i8]* %_16, i64 0, i64 0
  store i8 %quote, i8* %20, align 1
  %_13.0 = bitcast [1 x i8]* %_16 to [0 x i8]*
  %_11 = call i8* @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h19c55972a982364aE"(%"alloc::vec::Vec<u8>"* align 8 %fp1, [0 x i8]* align 1 %_13.0, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %21 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1a0ebf195ba4bcbfE"(i8* %_11)
  store i8* %21, i8** %_10, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  %22 = bitcast i8** %_10 to {}**
  %23 = load {}*, {}** %22, align 8
  %24 = icmp eq {}* %23, null
  %_18 = select i1 %24, i64 0, i64 1
  switch i64 %_18, label %bb10 [
    i64 0, label %bb9
    i64 1, label %bb11
  ]

bb10:                                             ; preds = %bb8
  unreachable

bb9:                                              ; preds = %bb8
  %25 = call { i8*, i8* } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h7e19cf5b7c7fc4e6E"([0 x i8]* align 1 %src.0, i64 %src.1)
  %_22.0 = extractvalue { i8*, i8* } %25, 0
  %_22.1 = extractvalue { i8*, i8* } %25, 1
  br label %bb13

bb11:                                             ; preds = %bb8
  %residual = load i8*, i8** %_10, align 8, !nonnull !1, !noundef !1
  %26 = call i8* @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h407f572472ce60c8E"(i8* %residual, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc150 to %"core::panic::location::Location"*))
  store i8* %26, i8** %3, align 8
  br label %bb12

bb12:                                             ; preds = %bb11
  br label %bb39

bb39:                                             ; preds = %bb38, %bb35, %bb32, %bb25, %bb12, %bb4, %bb1
  %27 = load i8*, i8** %3, align 8
  ret i8* %27

bb13:                                             ; preds = %bb9
  %28 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 0
  store i8* %_22.0, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 1
  store i8* %_22.1, i8** %29, align 8
  br label %bb14

bb14:                                             ; preds = %bb29, %bb13
  %30 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h613e27fe97d5e59bE"({ i8*, i8* }* align 8 %iter)
  store i8* %30, i8** %_25, align 8
  br label %bb15

bb15:                                             ; preds = %bb14
  %31 = bitcast i8** %_25 to {}**
  %32 = load {}*, {}** %31, align 8
  %33 = icmp eq {}* %32, null
  %_28 = select i1 %33, i64 0, i64 1
  switch i64 %_28, label %bb17 [
    i64 0, label %bb18
    i64 1, label %bb16
  ]

bb17:                                             ; preds = %bb15
  unreachable

bb18:                                             ; preds = %bb15
  %34 = getelementptr inbounds [1 x i8], [1 x i8]* %_63, i64 0, i64 0
  store i8 %quote, i8* %34, align 1
  %_60.0 = bitcast [1 x i8]* %_63 to [0 x i8]*
  %_58 = call i8* @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h19c55972a982364aE"(%"alloc::vec::Vec<u8>"* align 8 %fp1, [0 x i8]* align 1 %_60.0, i64 1)
  br label %bb33

bb16:                                             ; preds = %bb15
  %_69 = load i8*, i8** %_25, align 8, !nonnull !1, !align !8, !noundef !1
  %byte = load i8, i8* %_69, align 1
  %_30 = icmp eq i8 %byte, %quote
  br i1 %_30, label %bb19, label %bb26

bb26:                                             ; preds = %bb22, %bb16
  %35 = getelementptr inbounds [1 x i8], [1 x i8]* %_51, i64 0, i64 0
  store i8 %byte, i8* %35, align 1
  %_48.0 = bitcast [1 x i8]* %_51 to [0 x i8]*
  %_46 = call i8* @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h19c55972a982364aE"(%"alloc::vec::Vec<u8>"* align 8 %fp1, [0 x i8]* align 1 %_48.0, i64 1)
  br label %bb27

bb19:                                             ; preds = %bb16
  %36 = getelementptr inbounds [1 x i8], [1 x i8]* %_39, i64 0, i64 0
  store i8 %quote, i8* %36, align 1
  %_36.0 = bitcast [1 x i8]* %_39 to [0 x i8]*
  %_34 = call i8* @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h19c55972a982364aE"(%"alloc::vec::Vec<u8>"* align 8 %fp1, [0 x i8]* align 1 %_36.0, i64 1)
  br label %bb20

bb20:                                             ; preds = %bb19
  %37 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1a0ebf195ba4bcbfE"(i8* %_34)
  store i8* %37, i8** %_33, align 8
  br label %bb21

bb21:                                             ; preds = %bb20
  %38 = bitcast i8** %_33 to {}**
  %39 = load {}*, {}** %38, align 8
  %40 = icmp eq {}* %39, null
  %_41 = select i1 %40, i64 0, i64 1
  switch i64 %_41, label %bb23 [
    i64 0, label %bb22
    i64 1, label %bb24
  ]

bb23:                                             ; preds = %bb21
  unreachable

bb22:                                             ; preds = %bb21
  br label %bb26

bb24:                                             ; preds = %bb21
  %residual2 = load i8*, i8** %_33, align 8, !nonnull !1, !noundef !1
  %41 = call i8* @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h407f572472ce60c8E"(i8* %residual2, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc152 to %"core::panic::location::Location"*))
  store i8* %41, i8** %3, align 8
  br label %bb25

bb25:                                             ; preds = %bb24
  br label %bb39

bb27:                                             ; preds = %bb26
  %42 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1a0ebf195ba4bcbfE"(i8* %_46)
  store i8* %42, i8** %_45, align 8
  br label %bb28

bb28:                                             ; preds = %bb27
  %43 = bitcast i8** %_45 to {}**
  %44 = load {}*, {}** %43, align 8
  %45 = icmp eq {}* %44, null
  %_53 = select i1 %45, i64 0, i64 1
  switch i64 %_53, label %bb30 [
    i64 0, label %bb29
    i64 1, label %bb31
  ]

bb30:                                             ; preds = %bb28
  unreachable

bb29:                                             ; preds = %bb28
  br label %bb14

bb31:                                             ; preds = %bb28
  %residual3 = load i8*, i8** %_45, align 8, !nonnull !1, !noundef !1
  %46 = call i8* @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h407f572472ce60c8E"(i8* %residual3, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc154 to %"core::panic::location::Location"*))
  store i8* %46, i8** %3, align 8
  br label %bb32

bb32:                                             ; preds = %bb31
  br label %bb39

bb33:                                             ; preds = %bb18
  %47 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1a0ebf195ba4bcbfE"(i8* %_58)
  store i8* %47, i8** %_57, align 8
  br label %bb34

bb34:                                             ; preds = %bb33
  %48 = bitcast i8** %_57 to {}**
  %49 = load {}*, {}** %48, align 8
  %50 = icmp eq {}* %49, null
  %_65 = select i1 %50, i64 0, i64 1
  switch i64 %_65, label %bb36 [
    i64 0, label %bb35
    i64 1, label %bb37
  ]

bb36:                                             ; preds = %bb34
  unreachable

bb35:                                             ; preds = %bb34
  %51 = bitcast i8** %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 8, i1 false)
  %52 = bitcast i8** %3 to {}**
  store {}* null, {}** %52, align 8
  br label %bb39

bb37:                                             ; preds = %bb34
  %residual4 = load i8*, i8** %_57, align 8, !nonnull !1, !noundef !1
  %53 = call i8* @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h407f572472ce60c8E"(i8* %residual4, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc156 to %"core::panic::location::Location"*))
  store i8* %53, i8** %3, align 8
  br label %bb38

bb38:                                             ; preds = %bb37
  br label %bb39
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_45 = alloca i8, align 1
  %_38 = alloca %"alloc::borrow::Cow<str>", align 8
  %_34 = alloca [1 x { i8*, i64* }], align 8
  %_27 = alloca %"core::fmt::Arguments", align 8
  %_22 = alloca [1 x { i8*, i64* }], align 8
  %_15 = alloca %"core::fmt::Arguments", align 8
  %e = alloca i8*, align 8
  %_8 = alloca { i8*, i64 }, align 8
  %_5 = alloca i64*, align 8
  %_4 = alloca i8*, align 8
  %output = alloca %"alloc::vec::Vec<u8>", align 8
  store i8 0, i8* %_45, align 1
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17ha932922b34fa8170E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %output)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i64** %_5 to %"alloc::vec::Vec<u8>"**
  store %"alloc::vec::Vec<u8>"* %output, %"alloc::vec::Vec<u8>"** %1, align 8
  %2 = bitcast { i8*, i64 }* %_8 to { [0 x i8]*, i64 }*
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [15 x i8] }>* @alloc1 to [0 x i8]*), [0 x i8]** %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %2, i32 0, i32 1
  store i64 15, i64* %4, align 8
  %5 = load i64*, i64** %_5, align 8, !align !6
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_8, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !align !8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_8, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = invoke i8* @csv_fwrite2(i64* align 8 %5, i8* align 1 %7, i64 %9, i8 34)
          to label %bb2 unwind label %cleanup

bb18:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hdcff310dd0f31505E"(%"alloc::vec::Vec<u8>"* %output) #16
          to label %bb19 unwind label %abort

cleanup:                                          ; preds = %bb1
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb18

bb2:                                              ; preds = %bb1
  store i8* %10, i8** %_4, align 8
  store i8 1, i8* %_45, align 1
  %16 = bitcast i8** %_4 to {}**
  %17 = load {}*, {}** %16, align 8
  %18 = icmp eq {}* %17, null
  %_12 = select i1 %18, i64 0, i64 1
  %19 = icmp eq i64 %_12, 1
  br i1 %19, label %bb3, label %bb7

abort:                                            ; preds = %bb24, %bb16, %bb15, %bb17, %bb18
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #17
  unreachable

bb19:                                             ; preds = %bb24, %bb23, %bb25, %bb18
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb3:                                              ; preds = %bb2
  store i8 0, i8* %_45, align 1
  %27 = load i8*, i8** %_4, align 8, !nonnull !1, !noundef !1
  store i8* %27, i8** %e, align 8
  %28 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h3c1ccd84e1e93e13E(i8** align 8 %e)
          to label %bb4 unwind label %cleanup3

bb7:                                              ; preds = %bb2
  %29 = invoke { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h617b92bd771c9372E"(%"alloc::vec::Vec<u8>"* align 8 %output)
          to label %bb8 unwind label %cleanup1

bb17:                                             ; preds = %bb16, %bb15, %cleanup1
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hdcff310dd0f31505E"(%"alloc::vec::Vec<u8>"* %output) #16
          to label %bb25 unwind label %abort

cleanup1:                                         ; preds = %bb6, %bb12, %bb8, %bb7
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  %32 = extractvalue { i8*, i32 } %30, 1
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %bb17

bb8:                                              ; preds = %bb7
  %_40.0 = extractvalue { [0 x i8]*, i64 } %29, 0
  %_40.1 = extractvalue { [0 x i8]*, i64 } %29, 1
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h7cdd4b4319867875E(%"alloc::borrow::Cow<str>"* sret(%"alloc::borrow::Cow<str>") %_38, [0 x i8]* align 1 %_40.0, i64 %_40.1)
          to label %bb9 unwind label %cleanup1

bb9:                                              ; preds = %bb8
  %35 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV19new_debug17hbd91b91e39b71a7aE(%"alloc::borrow::Cow<str>"* align 8 %_38)
          to label %bb10 unwind label %cleanup2

bb15:                                             ; preds = %cleanup2
  invoke void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd5baeea40641775eE"(%"alloc::borrow::Cow<str>"* %_38) #16
          to label %bb17 unwind label %abort

cleanup2:                                         ; preds = %bb11, %bb10, %bb9
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  %38 = extractvalue { i8*, i32 } %36, 1
  %39 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %bb15

bb10:                                             ; preds = %bb9
  %_35.0 = extractvalue { i8*, i64* } %35, 0
  %_35.1 = extractvalue { i8*, i64* } %35, 1
  %41 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_34, i64 0, i64 0
  %42 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %41, i32 0, i32 0
  store i8* %_35.0, i8** %42, align 8
  %43 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %41, i32 0, i32 1
  store i64* %_35.1, i64** %43, align 8
  %_31.0 = bitcast [1 x { i8*, i64* }]* %_34 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117hc874d154740ce200E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_27, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc19 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_31.0, i64 1)
          to label %bb11 unwind label %cleanup2

bb11:                                             ; preds = %bb10
  invoke void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_27)
          to label %bb12 unwind label %cleanup2

bb12:                                             ; preds = %bb11
  invoke void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd5baeea40641775eE"(%"alloc::borrow::Cow<str>"* %_38)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb6, %bb12
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hdcff310dd0f31505E"(%"alloc::vec::Vec<u8>"* %output)
          to label %bb14 unwind label %cleanup4

bb16:                                             ; preds = %cleanup3
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3e1c9c6fc9f101caE"(i8** %e) #16
          to label %bb17 unwind label %abort

cleanup3:                                         ; preds = %bb5, %bb4, %bb3
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = extractvalue { i8*, i32 } %44, 0
  %46 = extractvalue { i8*, i32 } %44, 1
  %47 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %bb16

bb4:                                              ; preds = %bb3
  %_23.0 = extractvalue { i8*, i64* } %28, 0
  %_23.1 = extractvalue { i8*, i64* } %28, 1
  %49 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_22, i64 0, i64 0
  %50 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %49, i32 0, i32 0
  store i8* %_23.0, i8** %50, align 8
  %51 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %49, i32 0, i32 1
  store i64* %_23.1, i64** %51, align 8
  %_19.0 = bitcast [1 x { i8*, i64* }]* %_22 to [0 x { i8*, i64* }]*
  invoke void @_ZN4core3fmt9Arguments6new_v117hc874d154740ce200E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_15, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc15 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_19.0, i64 1)
          to label %bb5 unwind label %cleanup3

bb5:                                              ; preds = %bb4
  invoke void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"* %_15)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3e1c9c6fc9f101caE"(i8** %e)
          to label %bb13 unwind label %cleanup1

bb25:                                             ; preds = %cleanup4, %bb17
  %52 = bitcast i8** %_4 to {}**
  %53 = load {}*, {}** %52, align 8
  %54 = icmp eq {}* %53, null
  %_47 = select i1 %54, i64 0, i64 1
  %55 = icmp eq i64 %_47, 1
  br i1 %55, label %bb23, label %bb19

cleanup4:                                         ; preds = %bb13
  %56 = landingpad { i8*, i32 }
          cleanup
  %57 = extractvalue { i8*, i32 } %56, 0
  %58 = extractvalue { i8*, i32 } %56, 1
  %59 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %bb25

bb14:                                             ; preds = %bb13
  %61 = bitcast i8** %_4 to {}**
  %62 = load {}*, {}** %61, align 8
  %63 = icmp eq {}* %62, null
  %_46 = select i1 %63, i64 0, i64 1
  %64 = icmp eq i64 %_46, 1
  br i1 %64, label %bb21, label %bb20

bb23:                                             ; preds = %bb25
  %65 = load i8, i8* %_45, align 1, !range !4, !noundef !1
  %66 = trunc i8 %65 to i1
  br i1 %66, label %bb24, label %bb19

bb24:                                             ; preds = %bb23
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3e1c9c6fc9f101caE"(i8** %_4) #16
          to label %bb19 unwind label %abort

bb21:                                             ; preds = %bb14
  %67 = load i8, i8* %_45, align 1, !range !4, !noundef !1
  %68 = trunc i8 %67 to i1
  br i1 %68, label %bb22, label %bb20

bb20:                                             ; preds = %bb22, %bb21, %bb14
  store i8 0, i8* %_45, align 1
  ret void

bb22:                                             ; preds = %bb21
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3e1c9c6fc9f101caE"(i8** %_4)
  br label %bb20
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: uwtable
declare zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h6a2178a946c36754E"([0 x i8]* align 1, i64, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: uwtable
declare zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h67da3f470eea91efE"(i8** align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #10

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #12

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #12

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #13

; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE() unnamed_addr #14

; Function Attrs: uwtable
declare void @_ZN5alloc6string6String15from_utf8_lossy17h7cdd4b4319867875E(%"alloc::borrow::Cow<str>"* sret(%"alloc::borrow::Cow<str>"), [0 x i8]* align 1, i64) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { cold uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #13 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #14 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #15 = { noreturn }
attributes #16 = { noinline }
attributes #17 = { noinline noreturn nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 0, i64 -9223372036854775807}
!3 = !{i64 0, i64 -9223372036854775806}
!4 = !{i8 0, i8 2}
!5 = !{i8 0, i8 42}
!6 = !{i64 8}
!7 = !{i8 0, i8 41}
!8 = !{i64 1}
!9 = !{i8 -1, i8 2}
!10 = !{i64 1, i64 -9223372036854775807}
!11 = !{i64 1, i64 0}
!12 = !{i64 0, i64 2}
!13 = !{i8 0, i8 4}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fwrite2.rs.bc", hash: (3296178651, 1699694064, 3513024527, 2434300355, 1659092364))
^1 = gv: (name: "alloc18", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 348371668338015621
^2 = gv: (name: "_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h67da3f470eea91efE") ; guid = 495789050362308990
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17haa5d1dbd3cea17aaE") ; guid = 682884734678583306
^5 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 747641345350796695
^6 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd0853ba40aa08177E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^30))))) ; guid = 794906598131800838
^7 = gv: (name: "alloc136", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^138)))) ; guid = 984196441552761756
^8 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hc26c4f975bd6415dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 1229249466082363927
^9 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hae781c1fdf35f3c8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^163))))) ; guid = 1371026407479593646
^10 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h33cfea2c9a3d4109E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 1403559912037156850
^11 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^12 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5918c9a000da7c63E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^32), (callee: ^59))))) ; guid = 1590569864706148795
^13 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6e933f388cb30a05E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 1607529922107357560
^14 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h77e3fa65af59c4e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 1647938142150951793
^15 = gv: (name: "_ZN4core3str8converts19from_utf8_unchecked17h250092145555e15aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 13))) ; guid = 1699594512056468668
^16 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdb34677dffe52e7eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^211))))) ; guid = 1703138445272064799
^17 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hce708db40445921cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^27))))) ; guid = 1738491636738812916
^18 = gv: (name: "_ZN4core3cmp3max17h6b18973441d581deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^126))))) ; guid = 1774977431976459408
^19 = gv: (name: "_ZN3std2io5error14repr_bitpacked14kind_from_prim17hd409412999fcaeefE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 213))) ; guid = 1836203505164353527
^20 = gv: (name: "_ZN4core10intrinsics19copy_nonoverlapping17h451d151e92e808c2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1881053322263739838
^21 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h78b46f2631c03f14E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^210)), refs: (^175)))) ; guid = 1956628032657110847
^22 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha51b128f845db7deE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^203))))) ; guid = 2062309722440674897
^23 = gv: (name: "_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h7e19cf5b7c7fc4e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^76))))) ; guid = 2235138985256268009
^24 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17hf10111a1bebd1e28E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^151), (callee: ^59))))) ; guid = 2317869700873943055
^25 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h622517a85fe69151E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^172))))) ; guid = 2334771714388200458
^26 = gv: (name: "alloc154", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^56)))) ; guid = 2372168126074784802
^27 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hebe413ed3db27416E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^112), (callee: ^80))))) ; guid = 2400283812108780786
^28 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17hd0b7469e25ed9d2dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^66), (callee: ^83), (callee: ^93))))) ; guid = 2580214003189814237
^29 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^30 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h6f74f29871dfac7cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 2785442482367648418
^31 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hc3f0fa2ee17d1968E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 3266818598921684562
^32 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h79b6d90ed8c6ff5eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 3314596146785576806
^33 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h4531152ca9092eccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 3385180627952392594
^34 = gv: (name: "csv_fwrite2", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 154, calls: ((callee: ^140), (callee: ^106), (callee: ^23), (callee: ^70), (callee: ^108)), refs: (^157, ^77, ^26, ^215)))) ; guid = 3450810263035688651
^35 = gv: (name: "_ZN5alloc5alloc7dealloc17h330372811f251086E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^51), (callee: ^197), (callee: ^50))))) ; guid = 3646451977301368500
^36 = gv: (name: "alloc138", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^138)))) ; guid = 3718395401149964855
^37 = gv: (name: "_ZN5alloc11collections15TryReserveError4kind17habf7db5158c2e81dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^193))))) ; guid = 3752092441262358186
^38 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hc4a05181ec953f61E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^59))))) ; guid = 3914135765183763524
^39 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3915541961221807255
^40 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h026000552ff4cf51E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^198))))) ; guid = 4112383157272278443
^41 = gv: (name: "alloc15", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^39, ^201)))) ; guid = 4121350722724109670
^42 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h86af1f3616dae5e0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4237372523967402518
^43 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfd37acba0719ac3eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 4250946391048537965
^44 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h40769e2c757ef2a1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4257750616539701966
^45 = gv: (name: "_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd5baeea40641775eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^101))))) ; guid = 4293734045873030193
^46 = gv: (name: "anon.2b8e671b5cf4c460f9377c3277e4b0b8.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4472210500685955454
^47 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h5b33581288071e56E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 36))) ; guid = 4472545787721013536
^48 = gv: (name: "alloc146", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 4536170024517085841
^49 = gv: (name: "_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17he4c74c34b6f35f33E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 4603914182097914449
^50 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^51 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h6d96412cd4d79bf8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 4642391323717444824
^52 = gv: (name: "_ZN5alloc6string6String15from_utf8_lossy17h7cdd4b4319867875E") ; guid = 4756092093949905590
^53 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd708cc7a1ed19eabE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^49))))) ; guid = 4827518813734593421
^54 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h8f629d9377dfaf5bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^197), (callee: ^59))))) ; guid = 5025357915037991871
^55 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17hcc701fec384603c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^135))))) ; guid = 5035849667669661171
^56 = gv: (name: "alloc155", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5117940889166514665
^57 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hd9b79df22cd9218dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^219), (callee: ^195))))) ; guid = 5161898299747603456
^58 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hbbc040452191e90cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^12), (callee: ^195))))) ; guid = 5609924342462488466
^59 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hfd77140e6c894327E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 5695104001807343796
^60 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h8dc8947d133419c8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 51, calls: ((callee: ^86), (callee: ^100), (callee: ^194), (callee: ^22)), refs: (^118)))) ; guid = 5767965581643471182
^61 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h61669aee73b7bd62E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20, calls: ((callee: ^17), (callee: ^31), (callee: ^107), (callee: ^20))))) ; guid = 6090200288953829759
^62 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h94433fc745ee3508E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 6284520173604379510
^63 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h92f318f22d911695E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^60), (callee: ^170))))) ; guid = 6349876491866696679
^64 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^65 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b1f3ed95570ef15E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^49))))) ; guid = 6475151892606832086
^66 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha5566d1ec679231eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 6496315452654962511
^67 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5339fd0605886e00E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^107), (callee: ^83))))) ; guid = 6501757372935856092
^68 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h74b6db1e6cd783eaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 6516771097555674296
^69 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^70 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h407f572472ce60c8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^154))))) ; guid = 6576997426088262208
^71 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h416585c394f7788dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 6588425772826651182
^72 = gv: (name: "alloc129", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6625038027236311463
^73 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h53e67d3dd1aabad5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 114, calls: ((callee: ^65), (callee: ^218), (callee: ^192), (callee: ^87), (callee: ^18), (callee: ^53), (callee: ^86), (callee: ^60), (callee: ^167), (callee: ^166), (callee: ^214), (callee: ^88)), refs: (^48, ^155)))) ; guid = 6627169109654369424
^74 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^75 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h843b30b7760f933dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^63))))) ; guid = 6862658465564706719
^76 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h57b0ff011a113971E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^161))))) ; guid = 6876183670537136983
^77 = gv: (name: "alloc152", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^56)))) ; guid = 6934177909424205386
^78 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h693dcdb65d037f65E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^142))))) ; guid = 6962908881366353426
^79 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17he0f526303379bd09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^71), (callee: ^137))))) ; guid = 7182701356143144784
^80 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h48aa3a0ffb052c33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^73), (callee: ^162))))) ; guid = 7243760841948699187
^81 = gv: (name: "_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he340ca7c0ffcc9f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^92), (callee: ^131), (callee: ^222)), refs: (^175)))) ; guid = 7299096880757405291
^82 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hfbe74655f0869b38E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7308885434842910988
^83 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hb9750ef2e620a0b1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^181))))) ; guid = 7314066163350063452
^84 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h66490e5a613803fbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 7324004324902225886
^85 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h5b33ad1c6fb79294E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^179))))) ; guid = 7478864752300729094
^86 = gv: (name: "_ZN4core5alloc6layout6Layout5array17ha5bb31eabd726342E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 41, calls: ((callee: ^190), (callee: ^47), (callee: ^144), (callee: ^40), (callee: ^16)), refs: (^113)))) ; guid = 7487795534585704021
^87 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf63aa7a1dfebc61cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 38))) ; guid = 7605585643157466518
^88 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h7d6d2d1c4d663395E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^30))))) ; guid = 7658213512690424983
^89 = gv: (name: "_ZN4core3fmt10ArgumentV19new_debug17hbd91b91e39b71a7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^42)), refs: (^196)))) ; guid = 7680278066473354009
^90 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h460f47252a5dbe55E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 7716744582886486124
^91 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hf43de3278e0eec58E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 7758854711202780362
^92 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h65d30b28fe3ebe85E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^94))))) ; guid = 7770270712381582134
^93 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17ha1e94048a1859cccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 7908391331058194708
^94 = gv: (name: "_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h69956bdd7e4e6571E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^130), (callee: ^222)), refs: (^175)))) ; guid = 8097083245820726891
^95 = gv: (name: "alloc19", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1, ^39)))) ; guid = 8117583442971524848
^96 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hdcff310dd0f31505E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^67), (callee: ^75), (callee: ^222)), refs: (^175)))) ; guid = 8503073378296993685
^97 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17hed9215f621b702e2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 8507291281906571468
^98 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hdab8eed512ade28bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^141))))) ; guid = 8593957266230477385
^99 = gv: (name: "_ZN5alloc5alloc7realloc17h36bd7b626f9e3771E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^51), (callee: ^197), (callee: ^184))))) ; guid = 8661954424147820676
^100 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h9d03ab47f0a63b93E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^142)), refs: (^175)))) ; guid = 8786085844199043663
^101 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h49e77c9c2aa4b9a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^96))))) ; guid = 9010504034613958901
^102 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h7e30f3551917ee41E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^178))))) ; guid = 9026857168725940303
^103 = gv: (name: "alloc140", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 9091761796035292031
^104 = gv: (name: "alloc147", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9155283960806189792
^105 = gv: (name: "alloc128", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^114)))) ; guid = 9159940765372677045
^106 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1a0ebf195ba4bcbfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24))) ; guid = 9267677420321945923
^107 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h52fe88c0c88f6980E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^102), (callee: ^151))))) ; guid = 9303091485795024501
^108 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h613e27fe97d5e59bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^66), (callee: ^151), (callee: ^217), (callee: ^59))))) ; guid = 9314907351180040010
^109 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h41ae5c68aa83fbbfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 9425907123278616661
^110 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h617b92bd771c9372E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^177), (callee: ^55))))) ; guid = 9602303897514929549
^111 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hc874d154740ce200E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^111), (callee: ^191)), refs: (^165, ^147, ^185)))) ; guid = 9755616400509493993
^112 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h290479ac11450c12E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10))) ; guid = 9772321703772004326
^113 = gv: (name: "alloc132", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^169)))) ; guid = 9804283122382750538
^114 = gv: (name: "alloc127", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9839241738603076009
^115 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hd6566746a6ba686aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^116))))) ; guid = 9946525591115844147
^116 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h3ba65dc592e44dd9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^51), (callee: ^54), (callee: ^145), (callee: ^186), (callee: ^24), (callee: ^68), (callee: ^44), (callee: ^28), (callee: ^173)), refs: (^158)))) ; guid = 9950326465258136189
^117 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h4434d46cfa9168b1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 10014263960857328046
^118 = gv: (name: "alloc144", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 10066278329590357917
^119 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h5382ebf363a0a69eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^78))))) ; guid = 10176647993079890896
^120 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4b79bf5b198906abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^127))))) ; guid = 10182482573097881503
^121 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^122 = gv: (name: "_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h807f906d941ebb5aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7))) ; guid = 10262195495773840704
^123 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^124 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h313678bf746ee41aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^43), (callee: ^59))))) ; guid = 10445020231008114272
^125 = gv: (name: "_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h6a2178a946c36754E") ; guid = 10448812829772796798
^126 = gv: (name: "_ZN4core3cmp3Ord3max17hd7dbd95c12d586e8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^189)), refs: (^175)))) ; guid = 10503107053480292854
^127 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hc1c52253728ad8ceE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 24, calls: ((callee: ^65))))) ; guid = 10614445291871703702
^128 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h3c1ccd84e1e93e13E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^117)), refs: (^2)))) ; guid = 10824432802636020214
^129 = gv: (name: "_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h43d7b7fa853dcbf2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^207), (callee: ^61))))) ; guid = 10826355627184907399
^130 = gv: (name: "_ZN5alloc5alloc8box_free17ha79c7a893f39bfccE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^85), (callee: ^16), (callee: ^58), (callee: ^203), (callee: ^170)), refs: (^175)))) ; guid = 10882065063885004511
^131 = gv: (name: "_ZN5alloc5alloc8box_free17h03c40c54fb8fd89aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^160), (callee: ^16), (callee: ^57), (callee: ^203), (callee: ^170)), refs: (^175)))) ; guid = 11019232575276709969
^132 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5150eaba714f98e0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 45))) ; guid = 11113000020004049526
^133 = gv: (name: "_ZN5alloc5alloc6Global9grow_impl17h46ebfde9d6a74b52E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 134, calls: ((callee: ^51), (callee: ^116), (callee: ^197), (callee: ^66), (callee: ^99), (callee: ^24), (callee: ^68), (callee: ^44), (callee: ^173), (callee: ^28), (callee: ^164), (callee: ^188), (callee: ^156), (callee: ^20), (callee: ^170)), refs: (^7, ^36)))) ; guid = 11237104623628667563
^134 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h5eb0b3d3521c9a3cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^10))))) ; guid = 11293693326536365880
^135 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17hc5ed3eeba4a35043E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^176), (callee: ^150))))) ; guid = 11639208855192685897
^136 = gv: (name: "_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0ea55e75f374a042E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^110), (callee: ^15))))) ; guid = 11744612193052890496
^137 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he75958fdb6a0480aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 11757842129333320079
^138 = gv: (name: "alloc137", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11844833021295240333
^139 = gv: (name: "_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17ha41a50c5109b27f5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^81))))) ; guid = 11869684100995847696
^140 = gv: (name: "_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h19c55972a982364aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^146))))) ; guid = 11878988843675204788
^141 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17hffb80d4227513898E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^37))))) ; guid = 11930489850407537472
^142 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h54795016e42c780dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 11991844765974093731
^143 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h72f024c53937a230E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 12216941854152080190
^144 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hba85b6c74c9c067bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 31))) ; guid = 12249710644365051549
^145 = gv: (name: "_ZN5alloc5alloc5alloc17hbd2f57ee4c280d58E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^51), (callee: ^197), (callee: ^123))))) ; guid = 12326337765324597106
^146 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h8e7d259007826484E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^76), (callee: ^129))))) ; guid = 12537191001787109736
^147 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5)))) ; guid = 12680748038838066954
^148 = gv: (name: "_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17he0d2a10189b270f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 12739519012993423775
^149 = gv: (name: "_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h699fa8273bd8ad7cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^136), (callee: ^125))))) ; guid = 12770556644018903776
^150 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h8eb4144e19d53948E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 12915854157841593012
^151 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h72e02bf75b3a4b15E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^33), (callee: ^171))))) ; guid = 12964656971480470095
^152 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3e1c9c6fc9f101caE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^174))))) ; guid = 13005827792788628936
^153 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2789be4eb0c49d09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 47, calls: ((callee: ^209))))) ; guid = 13025458053360439471
^154 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd350127b2fd1a9f5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 13079059586720964959
^155 = gv: (name: "alloc148", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 13222263072749330890
^156 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h2aca89b95ebd485eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^221), (callee: ^66))))) ; guid = 13273039351733651473
^157 = gv: (name: "alloc150", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^56)))) ; guid = 13334450408533688438
^158 = gv: (name: "alloc134", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^138)))) ; guid = 13369523729608606608
^159 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hadbc3b44729afb3cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^199), (callee: ^139))))) ; guid = 13385487696377325489
^160 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17heff535e61a2133a4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^134))))) ; guid = 13495865174611780404
^161 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h8b7db9297fe921afE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^82), (callee: ^217), (callee: ^59))))) ; guid = 13612325040572662256
^162 = gv: (name: "_ZN5alloc7raw_vec14handle_reserve17h6f83ddce10677111E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^98), (callee: ^4), (callee: ^220))))) ; guid = 13659949662736165998
^163 = gv: (name: "_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h413191c9a8c61af9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^21))))) ; guid = 13991289356380538494
^164 = gv: (name: "_ZN4core10intrinsics11write_bytes17h985c8b4d5f00b128E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 14003932738723313642
^165 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14048639078203497334
^166 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0f81ef5d6b6af4f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 44))) ; guid = 14291571115905840806
^167 = gv: (name: "_ZN5alloc7raw_vec11finish_grow17hec0d8c74c4e60caaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 117, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^153), (callee: ^13), (callee: ^51), (callee: ^216), (callee: ^204), (callee: ^132), (callee: ^6), (callee: ^197), (callee: ^115), (callee: ^120), (callee: ^183)), refs: (^103, ^206)))) ; guid = 14327232309884370268
^168 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^169 = gv: (name: "alloc131", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14340434538700109618
^170 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17heaf9a857fffaeddaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^51), (callee: ^66), (callee: ^35))))) ; guid = 14373936497561718876
^171 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17ha5f013e1525cf3a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 14391115334043197054
^172 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17ha6250fdce298c2b7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 14460303968543860883
^173 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8200bc3ce30a0e90E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^91))))) ; guid = 14544880524641575280
^174 = gv: (name: "_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h54da48638abe6754E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^159))))) ; guid = 14690428447440064629
^175 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^176 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h658e7a1d3f7a2312E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 14812035411697687459
^177 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h5898380e2ea5514bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^102), (callee: ^151))))) ; guid = 14839141617153325030
^178 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hf1aa7f6fa21bfad1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^66))))) ; guid = 14847849306332025760
^179 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h56ba3637d53801b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^32))))) ; guid = 14921999237661577712
^180 = gv: (name: "alloc126", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14939696046530915929
^181 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h33aa6c1944ee61a0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15057677281639585310
^182 = gv: (name: "_ZN5alloc3vec12Vec$LT$T$GT$3new17ha932922b34fa8170E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, refs: (^46)))) ; guid = 15221306920210793836
^183 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9240b9257a8ee493E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^133))))) ; guid = 15431647837573485070
^184 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^185 = gv: (name: "alloc130", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^72)))) ; guid = 15593104575277421581
^186 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17hc21898bca2c3a8d7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^51), (callee: ^197), (callee: ^11))))) ; guid = 15810722015579203424
^187 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 145, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^182), (callee: ^34), (callee: ^96), (callee: ^222), (callee: ^128), (callee: ^110), (callee: ^52), (callee: ^89), (callee: ^45), (callee: ^111), (callee: ^212), (callee: ^152), (callee: ^213)), refs: (^175, ^205, ^95, ^41)))) ; guid = 15822663052811949562
^188 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdeea16356c6b46f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37))) ; guid = 15847593345241261007
^189 = gv: (name: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h2961062af85c711eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18))) ; guid = 16015048113466186613
^190 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h15b6845e504a3539E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 16069916253457194063
^191 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^192 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h7474c94a718a8e0cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34))) ; guid = 16162284003733993383
^193 = gv: (name: "_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h3bfca422fdb3e277E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 28, calls: ((callee: ^122))))) ; guid = 16403666066846833462
^194 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf54202e4d71d0bcaE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^208), (callee: ^195))))) ; guid = 16424751046593617470
^195 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h2420d26cb4f33415E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16424884218500338147
^196 = gv: (name: "_ZN64_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ec85ef2209a04f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^202), (callee: ^149))))) ; guid = 16426924482879962858
^197 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h01153b60e705ea65E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^25), (callee: ^143))))) ; guid = 16484074721154336395
^198 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd0cbfc9d523bc761E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 16511836888368429354
^199 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17h5de20bc19e7d3032E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^71), (callee: ^97), (callee: ^121), (callee: ^19), (callee: ^79), (callee: ^62), (callee: ^9), (callee: ^84), (callee: ^119)), refs: (^175, ^105, ^180)))) ; guid = 16544219924481745762
^200 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hcc616ee34ec93651E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16574079225300641250
^201 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16577504348641949520
^202 = gv: (name: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2a8df933ff48f08E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^125))))) ; guid = 16676241927251642488
^203 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9085f9c95570896cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^178), (callee: ^59))))) ; guid = 16691641994266051379
^204 = gv: (name: "_ZN5alloc7raw_vec11alloc_guard17h14f66187028b1ed7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 32, calls: ((callee: ^65))))) ; guid = 16816196625259409080
^205 = gv: (name: "alloc1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16876083319882752864
^206 = gv: (name: "alloc142", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 16941591569773646950
^207 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17he1b69331f0aac1dfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, calls: ((callee: ^66), (callee: ^8), (callee: ^90), (callee: ^55))))) ; guid = 16963257104370268783
^208 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h77aaf80b76c15f78E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^66), (callee: ^59))))) ; guid = 17352617596064590312
^209 = gv: (name: "_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hf8f2e00f498203dfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 17356902533438474318
^210 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h01cc3e82a1d563f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^109))))) ; guid = 17649681445134200874
^211 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h5feb6037bc28db9bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 17712848671445048946
^212 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^213 = gv: (name: "_ZN3std2io5stdio7_eprint17hc29e68d5fc0160fdE") ; guid = 17906690583868548313
^214 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h77b0c5d96c50cb3aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^124), (callee: ^66), (callee: ^38))))) ; guid = 17990993532687227560
^215 = gv: (name: "alloc156", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^56)))) ; guid = 18083600152759828316
^216 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h85499de5778b56f2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22, calls: ((callee: ^49))))) ; guid = 18177960069094312841
^217 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hcbb0654edbc23f04E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^200), (callee: ^14))))) ; guid = 18204795399785911174
^218 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h891317cbc7ec663cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 18213435177619062646
^219 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha7f9ef6a22c50177E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, calls: ((callee: ^10), (callee: ^59))))) ; guid = 18242503645670066997
^220 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^221 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h6f99f1fc4ad96f07E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^43), (callee: ^59))))) ; guid = 18333643266032095368
^222 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^223 = blockcount: 857
