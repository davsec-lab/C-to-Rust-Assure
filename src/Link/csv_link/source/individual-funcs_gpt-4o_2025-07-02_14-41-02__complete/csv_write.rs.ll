; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write.rs.bc'
source_filename = "csv_write.5ab02a7f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>" = type { { i8*, i8* }, i64 }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc34 = private unnamed_addr constant <{ [91 x i8] }> <{ [91 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/iter/adapters/enumerate.rs" }>, align 1
@alloc35 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc34, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc13 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc14 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc13, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc16 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc36 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc37 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc36, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@alloc40 = private unnamed_addr constant <{ [139 x i8] }> <{ [139 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write.rs" }>, align 1
@alloc39 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\0E\00\00\00\0D\00\00\00" }>, align 8
@alloc41 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc40, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\0F\00\00\00\0D\00\00\00" }>, align 8
@alloc1 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"example, csv, data" }>, align 1
@alloc8 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Bytes written: " }>, align 1
@alloc10 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc9 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [8 x i8] c"\0F\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc10, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { i64, i8* } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72e685e8b6b7571cE"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* align 8 %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_12 = alloca { i64, i8* }, align 8
  %_3 = alloca i8*, align 8
  %1 = alloca { i64, i8* }, align 8
  %_5 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %self to { i8*, i8* }*
  %_4 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd3d4777de81c8E"({ i8*, i8* }* align 8 %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfe0ae9da67b6ee0dE"(i8* align 1 %_4)
  store i8* %2, i8** %_3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast i8** %_3 to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_6 = select i1 %5, i64 1, i64 0
  switch i64 %_6, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %val = load i8*, i8** %_3, align 8, !nonnull !1, !align !2, !noundef !1
  %6 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>", %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %self, i32 0, i32 1
  %i = load i64, i64* %6, align 8
  %7 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>", %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %self, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1)
  %_11.0 = extractvalue { i64, i1 } %9, 0
  %_11.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_11.1, i1 false)
  br i1 %10, label %panic, label %bb7

bb5:                                              ; preds = %bb2
  %11 = call { i64, i8* } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h842a51770c0b5854E"()
  store { i64, i8* } %11, { i64, i8* }* %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %12 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %1, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8, !align !2
  %16 = insertvalue { i64, i8* } undef, i64 %13, 0
  %17 = insertvalue { i64, i8* } %16, i8* %15, 1
  ret { i64, i8* } %17

bb7:                                              ; preds = %bb3
  %18 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>", %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %self, i32 0, i32 1
  store i64 %_11.0, i64* %18, align 8
  %19 = bitcast { i64, i8* }* %_12 to i64*
  store i64 %i, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_12, i32 0, i32 1
  store i8* %val, i8** %20, align 8
  %21 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_12, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_12, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8, !nonnull !1, !align !2, !noundef !1
  %25 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %1, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %1, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %bb8

panic:                                            ; preds = %bb3
  invoke void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc35 to %"core::panic::location::Location"*)) #8
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %cleanup
  br label %bb10

cleanup:                                          ; preds = %panic
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  %29 = extractvalue { i8*, i32 } %27, 1
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %bb9

unreachable:                                      ; preds = %panic
  unreachable

bb10:                                             ; preds = %bb9
  %32 = bitcast { i8*, i32 }* %0 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = insertvalue { i8*, i32 } undef, i8* %33, 0
  %37 = insertvalue { i8*, i32 } %36, i32 %35, 1
  resume { i8*, i32 } %37
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h3029ef968c439aaeE(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h1b4ebe2cfc913de7E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE")
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h1b4ebe2cfc913de7E(i64* align 8 %x, i1 (i64*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (i64*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !1, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i64* %x to %"core::fmt::Opaque"*
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
define internal void @_ZN4core3fmt9Arguments6new_v117hdb10d1af79491046E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Arguments6new_v117hdb10d1af79491046E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc14 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc16 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc37 to %"core::panic::location::Location"*)) #8
  unreachable
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h4d7fba0c129fd4c0E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8ef2c95d60ac61abE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h978a3ad99b3f6c33E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h4d7fba0c129fd4c0E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17hc68f21018f9e024fE({}* %data_address) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h978a3ad99b3f6c33E({}* %data_address) unnamed_addr #0 {
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
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h54445c30b605b167E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hece179e58ee7fa6eE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17he636717b5b8a35c6E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17ha8f8e54894f969cfE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17hc68f21018f9e024fE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17he636717b5b8a35c6E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator9enumerate17hd250f530604a3331E(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>") %0, i8* %self.0, i8* %self.1) unnamed_addr #0 {
start:
  call void @"_ZN4core4iter8adapters9enumerate18Enumerate$LT$I$GT$3new17h96db9e3f7427b9dfE"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>") %0, i8* %self.0, i8* %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core4iter8adapters9enumerate18Enumerate$LT$I$GT$3new17h96db9e3f7427b9dfE"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>") %0, i8* %iter.0, i8* %iter.1) unnamed_addr #1 {
start:
  %1 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %0 to { i8*, i8* }*
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  store i8* %iter.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  store i8* %iter.1, i8** %3, align 8
  %4 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>", %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %0, i32 0, i32 1
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1f16cb4435c9d270E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h49f643a76838eee8E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1c621e06f3a7be61E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h49f643a76838eee8E"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1c621e06f3a7be61E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17ha8f8e54894f969cfE"(i8* %ptr)
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
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h54445c30b605b167E"(i8* %ptr)
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

; Function Attrs: inlinehint uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1c2aeabf7d5653e6E"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>") %0, %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfe0ae9da67b6ee0dE"(i8* align 1 %0) unnamed_addr #0 {
start:
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
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
  %5 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i8** %1 to {}**
  store {}* null, {}** %6, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !1, !align !2, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i8*, i8** %1, align 8, !align !2
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define { i64, i8* } @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h842a51770c0b5854E"() unnamed_addr #0 {
start:
  %0 = alloca { i64, i8* }, align 8
  %1 = bitcast { i64, i8* }* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %3 = bitcast i8** %2 to {}**
  store {}* null, {}** %3, align 8
  %4 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8, !align !2
  %8 = insertvalue { i64, i8* } undef, i64 %5, 0
  %9 = insertvalue { i64, i8* } %8, i8* %7, 1
  ret { i64, i8* } %9
}

; Function Attrs: inlinehint uwtable
define align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd3d4777de81c8E"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hece179e58ee7fa6eE"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8ef2c95d60ac61abE"(i8* %_5)
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
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17ha8f8e54894f969cfE"(i8* %_11)
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
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hece179e58ee7fa6eE"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !1, !noundef !1
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hece179e58ee7fa6eE"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !1, !noundef !1
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hece179e58ee7fa6eE"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h54445c30b605b167E"(i8* %_3.i.i)
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
  %15 = load i8*, i8** %2, align 8, !align !2
  ret i8* %15

bb13:                                             ; preds = %bb12
  store i8* %12, i8** %2, align 8
  br label %bb14
}

; Function Attrs: uwtable
define i64 @csv_write([0 x i8]* align 1 %dest.0, i64 %dest.1, [0 x i8]* align 1 %src.0, i64 %src.1) unnamed_addr #1 {
start:
  %0 = call i64 @csv_write2([0 x i8]* align 1 %dest.0, i64 %dest.1, [0 x i8]* align 1 %src.0, i64 %src.1, i8 34)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: uwtable
define i64 @csv_write2([0 x i8]* align 1 %dest.0, i64 %dest.1, [0 x i8]* align 1 %src.0, i64 %src.1, i8 %quote) unnamed_addr #1 {
start:
  %_9 = alloca { i64, i8* }, align 8
  %iter = alloca %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>", align 8
  %_5 = alloca %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>", align 8
  %_4 = alloca %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>", align 8
  %written = alloca i64, align 8
  store i64 0, i64* %written, align 8
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1f16cb4435c9d270E"([0 x i8]* align 1 %src.0, i64 %src.1)
  %_6.0 = extractvalue { i8*, i8* } %0, 0
  %_6.1 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN4core4iter6traits8iterator8Iterator9enumerate17hd250f530604a3331E(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>") %_5, i8* %_6.0, i8* %_6.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1c2aeabf7d5653e6E"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* sret(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>") %_4, %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  %1 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %iter to i8*
  %2 = bitcast %"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb10, %bb3
  %3 = call { i64, i8* } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72e685e8b6b7571cE"(%"core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<u8>>"* align 8 %iter)
  store { i64, i8* } %3, { i64, i8* }* %_9, align 8
  br label %bb5

bb5:                                              ; preds = %bb4
  %4 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_9, i32 0, i32 1
  %5 = bitcast i8** %4 to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_12 = select i1 %7, i64 0, i64 1
  switch i64 %_12, label %bb7 [
    i64 0, label %bb11
    i64 1, label %bb6
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb11:                                             ; preds = %bb6, %bb5
  %8 = load i64, i64* %written, align 8
  ret i64 %8

bb6:                                              ; preds = %bb5
  %9 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %_9, i32 0, i32 1
  %_24 = load i8*, i8** %9, align 8, !nonnull !1, !align !2, !noundef !1
  %byte = load i8, i8* %_24, align 1
  %10 = bitcast { i64, i8* }* %_9 to i64*
  %i = load i64, i64* %10, align 8
  %_15 = icmp ult i64 %i, %dest.1
  br i1 %_15, label %bb8, label %bb11

bb8:                                              ; preds = %bb6
  %_22 = icmp ult i64 %i, %dest.1
  %11 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %11, label %bb9, label %panic

bb9:                                              ; preds = %bb8
  %12 = getelementptr inbounds [0 x i8], [0 x i8]* %dest.0, i64 0, i64 %i
  store i8 %byte, i8* %12, align 1
  %13 = load i64, i64* %written, align 8
  %14 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 1)
  %_23.0 = extractvalue { i64, i1 } %14, 0
  %_23.1 = extractvalue { i64, i1 } %14, 1
  %15 = call i1 @llvm.expect.i1(i1 %_23.1, i1 false)
  br i1 %15, label %panic1, label %bb10

panic:                                            ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %i, i64 %dest.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc39 to %"core::panic::location::Location"*)) #8
  unreachable

bb10:                                             ; preds = %bb9
  store i64 %_23.0, i64* %written, align 8
  br label %bb4

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc41 to %"core::panic::location::Location"*)) #8
  unreachable
}

; Function Attrs: uwtable
define void @main() unnamed_addr #1 {
start:
  %_17 = alloca [1 x { i8*, i64* }], align 8
  %_10 = alloca %"core::fmt::Arguments", align 8
  %written = alloca i64, align 8
  %dest = alloca [1024 x i8], align 1
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 1024, i1 false)
  %_4.0 = bitcast [1024 x i8]* %dest to [0 x i8]*
  %1 = call i64 @csv_write([0 x i8]* align 1 %_4.0, i64 1024, [0 x i8]* align 1 bitcast (<{ [18 x i8] }>* @alloc1 to [0 x i8]*), i64 18)
  store i64 %1, i64* %written, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV111new_display17h3029ef968c439aaeE(i64* align 8 %written)
  %_18.0 = extractvalue { i8*, i64* } %2, 0
  %_18.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_17, i64 0, i64 0
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_18.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_18.1, i64** %5, align 8
  %_14.0 = bitcast [1 x { i8*, i64* }]* %_17 to [0 x { i8*, i64* }]*
  call void @_ZN4core3fmt9Arguments6new_v117hdb10d1af79491046E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_10, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc9 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* align 8 %_14.0, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"* %_10)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE"(i64* align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h054a520e489320f8E(%"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 8}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write.rs.bc", hash: (93211122, 1036547579, 3736459494, 500766957, 1226831129))
^1 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h978a3ad99b3f6c33E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 81977462694698750
^2 = gv: (name: "_ZN4core4iter6traits8iterator8Iterator9enumerate17hd250f530604a3331E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^22))))) ; guid = 414333913998305408
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "alloc41", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 631493187421071754
^5 = gv: (name: "_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h9b6465145ebe078bE") ; guid = 1003008714752691852
^6 = gv: (name: "alloc34", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1478516499140790318
^7 = gv: (name: "alloc37", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^47)))) ; guid = 2063393078823758893
^8 = gv: (name: "_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72e685e8b6b7571cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 70, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^21), (callee: ^11), (callee: ^19), (callee: ^29)), refs: (^40, ^15, ^17)))) ; guid = 2262426442446443166
^9 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^10 = gv: (name: "_ZN4core3fmt10ArgumentV13new17h1b4ebe2cfc913de7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 2972161510659883528
^11 = gv: (name: "_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfe0ae9da67b6ee0dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 19))) ; guid = 3736533520655731243
^12 = gv: (name: "_ZN4core3fmt9Arguments6new_v117hdb10d1af79491046E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, calls: ((callee: ^12), (callee: ^45)), refs: (^16, ^23, ^7)))) ; guid = 4494649590026376805
^13 = gv: (name: "csv_write", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^27))))) ; guid = 5127710064270093019
^14 = gv: (name: "_ZN4core3fmt10ArgumentV111new_display17h3029ef968c439aaeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^10)), refs: (^5)))) ; guid = 5135128203560469207
^15 = gv: (name: "alloc35", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 5167337280705977606
^16 = gv: (name: "alloc16", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5171683636894815714
^17 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5686079195340066969
^18 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^19 = gv: (name: "_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17h842a51770c0b5854E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 6393065837545064373
^20 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^21 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd3d4777de81c8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 56, calls: ((callee: ^31), (callee: ^42), (callee: ^38), (callee: ^25))))) ; guid = 6666860272766689372
^22 = gv: (name: "_ZN4core4iter8adapters9enumerate18Enumerate$LT$I$GT$3new17h96db9e3f7427b9dfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 6962616268525556873
^23 = gv: (name: "alloc14", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^35)))) ; guid = 7197904404270613633
^24 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h4d7fba0c129fd4c0E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 7339378746179428985
^25 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h54445c30b605b167E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 7505026884079816508
^26 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8246209764284656545
^27 = gv: (name: "csv_write2", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 54, calls: ((callee: ^36), (callee: ^2), (callee: ^46), (callee: ^8), (callee: ^49), (callee: ^29)), refs: (^34, ^4, ^17)))) ; guid = 8695259734581474664
^28 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1c621e06f3a7be61E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 9054089213683501693
^29 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^30 = gv: (name: "alloc1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10741472923662008756
^31 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hece179e58ee7fa6eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 11211585449264547263
^32 = gv: (name: "alloc40", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13089938569942763386
^33 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17he636717b5b8a35c6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 13366446095489096061
^34 = gv: (name: "alloc39", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^32)))) ; guid = 13454104779391517132
^35 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13556429908159998904
^36 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h1f16cb4435c9d270E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^39))))) ; guid = 14317360519755713143
^37 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^38 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17ha8f8e54894f969cfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^43), (callee: ^33))))) ; guid = 14396390164543415837
^39 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17h49f643a76838eee8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, calls: ((callee: ^28), (callee: ^38), (callee: ^25))))) ; guid = 14756885829973575935
^40 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^41 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15282312312199479249
^42 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8ef2c95d60ac61abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^1), (callee: ^24))))) ; guid = 15530959662060150552
^43 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hc68f21018f9e024fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 15586436031676141104
^44 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 25, calls: ((callee: ^13), (callee: ^14), (callee: ^12), (callee: ^48)), refs: (^30, ^50)))) ; guid = 15822663052811949562
^45 = gv: (name: "_ZN4core9panicking9panic_fmt17hbfde5533e1c0592eE") ; guid = 16070923975701578961
^46 = gv: (name: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1c2aeabf7d5653e6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 16753746295616385283
^47 = gv: (name: "alloc36", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17241963465992824782
^48 = gv: (name: "_ZN3std2io5stdio6_print17h054a520e489320f8E") ; guid = 17715075023705450344
^49 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^50 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^41, ^26)))) ; guid = 18207053045331504266
^51 = blockcount: 100
