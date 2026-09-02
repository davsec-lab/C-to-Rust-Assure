; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_increase_buffer.rs.bc'
source_filename = "csv_increase_buffer.bad69d1e-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<()>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<()>" = type { [1 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc12 = private unnamed_addr constant <{ [149 x i8] }> <{ [149 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_increase_buffer.rs" }>, align 1
@alloc5 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [149 x i8] }>, <{ [149 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\95\00\00\00\00\00\00\00\1E\00\00\00\18\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc7 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [149 x i8] }>, <{ [149 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\95\00\00\00\00\00\00\00\1F\00\00\00\12\00\00\00" }>, align 8
@alloc9 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [149 x i8] }>, <{ [149 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\95\00\00\00\00\00\00\00)\00\00\005\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc11 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [149 x i8] }>, <{ [149 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\95\00\00\00\00\00\00\005\00\00\00<\00\00\00" }>, align 8
@alloc13 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [149 x i8] }>, <{ [149 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\95\00\00\00\00\00\00\007\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hf5693d50b29698f3E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h4f3779c88081feb4E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hca5080e27f82c6b9E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !1, !noundef !2
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha4bfd29d633f4c91E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h24d38f59d45a9f7dE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hca5080e27f82c6b9E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define {}* @_ZN4core3ptr8metadata14from_raw_parts17hf035e87d2344343fE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<()>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<()>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<()>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<()>", %"core::ptr::metadata::PtrComponents<()>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<()>"* %_3 to %"core::ptr::metadata::PtrComponents<()>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<()>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<()>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<()>"* %_3 to {}**
  %6 = load {}*, {}** %5, align 8
  ret {}* %6
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h24d38f59d45a9f7dE({}* %data_address) unnamed_addr #0 {
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
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h4f3779c88081feb4E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hcd6ba280b7119c14E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h565692b289125e37E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hf5693d50b29698f3E(i8* %data, i64 %len)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_7.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: uwtable
define i32 @csv_increase_buffer(%CsvParser* align 1 %p) unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %1 = alloca {}*, align 8
  %vp = alloca i8*, align 8
  %to_add = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 14
  %_4 = load i8* (i8*, i64)*, i8* (i8*, i64)** %3, align 1, !nonnull !2, !noundef !2
  %_3 = bitcast i8* (i8*, i64)* %_4 to {}*
  %4 = bitcast {}** %1 to i64*
  store i64 0, i64* %4, align 8
  %5 = load {}*, {}** %1, align 8
  %6 = call {}* @_ZN4core3ptr8metadata14from_raw_parts17hf035e87d2344343fE({}* %5)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = icmp eq {}* %_3, %6
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %7 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 12
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %to_add, align 8
  %9 = bitcast {}** %0 to i64*
  store i64 0, i64* %9, align 8
  %10 = load {}*, {}** %0, align 8
  %11 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h24d38f59d45a9f7dE({}* %10)
  store i8* %11, i8** %vp, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  store i32 0, i32* %2, align 4
  br label %bb25

bb25:                                             ; preds = %bb24, %bb18, %bb9, %bb2
  %12 = load i32, i32* %2, align 4
  ret i32 %12

bb4:                                              ; preds = %bb3
  %13 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %_9 = load i64, i64* %13, align 1
  %_11 = load i64, i64* %to_add, align 8
  %14 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 -1, i64 %_11)
  %_12.0 = extractvalue { i64, i1 } %14, 0
  %_12.1 = extractvalue { i64, i1 } %14, 1
  %15 = call i1 @llvm.expect.i1(i1 %_12.1, i1 false)
  br i1 %15, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  %_8 = icmp uge i64 %_9, %_12.0
  br i1 %_8, label %bb6, label %bb8

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc5 to %"core::panic::location::Location"*)) #6
  unreachable

bb8:                                              ; preds = %bb7, %bb5
  %_15 = load i64, i64* %to_add, align 8
  %16 = icmp eq i64 %_15, 0
  br i1 %16, label %bb9, label %bb10

bb6:                                              ; preds = %bb5
  %17 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %_13 = load i64, i64* %17, align 1
  %18 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 -1, i64 %_13)
  %_14.0 = extractvalue { i64, i1 } %18, 0
  %_14.1 = extractvalue { i64, i1 } %18, 1
  %19 = call i1 @llvm.expect.i1(i1 %_14.1, i1 false)
  br i1 %19, label %panic1, label %bb7

bb7:                                              ; preds = %bb6
  store i64 %_14.0, i64* %to_add, align 8
  br label %bb8

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc7 to %"core::panic::location::Location"*)) #6
  unreachable

bb9:                                              ; preds = %bb8
  %20 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 6
  store i32 3, i32* %20, align 1
  store i32 -1, i32* %2, align 4
  br label %bb25

bb10:                                             ; preds = %bb17, %bb8
  %_17 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %21 = bitcast { i8*, i64 }* %_17 to {}**
  %22 = load {}*, {}** %21, align 8
  %23 = icmp eq {}* %22, null
  %_18 = select i1 %23, i64 0, i64 1
  %24 = icmp eq i64 %_18, 1
  br i1 %24, label %bb11, label %bb15

bb11:                                             ; preds = %bb10
  %buf = bitcast { i8*, i64 }* %_17 to { [0 x i8]*, i64 }*
  %25 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 14
  %_21 = load i8* (i8*, i64)*, i8* (i8*, i64)** %25, align 1, !nonnull !2, !noundef !2
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_43.0 = load [0 x i8]*, [0 x i8]** %26, align 8, !nonnull !2, !align !3, !noundef !2
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_43.1 = load i64, i64* %27, align 8
  %_22 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hcd6ba280b7119c14E"([0 x i8]* align 1 %_43.0, i64 %_43.1)
  br label %bb12

bb15:                                             ; preds = %bb14, %bb10
  %_28 = load i8*, i8** %vp, align 8
  %_16 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha4bfd29d633f4c91E"(i8* %_28)
  br label %bb16

bb12:                                             ; preds = %bb11
  %28 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %_25 = load i64, i64* %28, align 1
  %_26 = load i64, i64* %to_add, align 8
  %29 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_25, i64 %_26)
  %_27.0 = extractvalue { i64, i1 } %29, 0
  %_27.1 = extractvalue { i64, i1 } %29, 1
  %30 = call i1 @llvm.expect.i1(i1 %_27.1, i1 false)
  br i1 %30, label %panic2, label %bb13

bb13:                                             ; preds = %bb12
  %_20 = call i8* %_21(i8* %_22, i64 %_27.0)
  br label %bb14

panic2:                                           ; preds = %bb12
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc9 to %"core::panic::location::Location"*)) #6
  unreachable

bb14:                                             ; preds = %bb13
  store i8* %_20, i8** %vp, align 8
  br label %bb15

bb16:                                             ; preds = %bb15
  br i1 %_16, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_30 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %31 = bitcast { i8*, i64 }* %_30 to {}**
  %32 = load {}*, {}** %31, align 8
  %33 = icmp eq {}* %32, null
  %_31 = select i1 %33, i64 0, i64 1
  %34 = icmp eq i64 %_31, 1
  br i1 %34, label %bb20, label %bb23

bb17:                                             ; preds = %bb16
  %35 = load i64, i64* %to_add, align 8
  %36 = udiv i64 %35, 2
  store i64 %36, i64* %to_add, align 8
  %_29 = load i64, i64* %to_add, align 8
  %37 = icmp eq i64 %_29, 0
  br i1 %37, label %bb18, label %bb10

bb18:                                             ; preds = %bb17
  %38 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 6
  store i32 2, i32* %38, align 1
  store i32 -1, i32* %2, align 4
  br label %bb25

bb20:                                             ; preds = %bb19
  %buf3 = bitcast { i8*, i64 }* %_30 to { [0 x i8]*, i64 }*
  %_36 = load i8*, i8** %vp, align 8
  %39 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %_38 = load i64, i64* %39, align 1
  %_39 = load i64, i64* %to_add, align 8
  %40 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_38, i64 %_39)
  %_40.0 = extractvalue { i64, i1 } %40, 0
  %_40.1 = extractvalue { i64, i1 } %40, 1
  %41 = call i1 @llvm.expect.i1(i1 %_40.1, i1 false)
  br i1 %41, label %panic4, label %bb21

bb23:                                             ; preds = %bb22, %bb19
  %_41 = load i64, i64* %to_add, align 8
  %42 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %43 = load i64, i64* %42, align 1
  %44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %43, i64 %_41)
  %_42.0 = extractvalue { i64, i1 } %44, 0
  %_42.1 = extractvalue { i64, i1 } %44, 1
  %45 = call i1 @llvm.expect.i1(i1 %_42.1, i1 false)
  br i1 %45, label %panic5, label %bb24

bb21:                                             ; preds = %bb20
  %46 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h565692b289125e37E(i8* %_36, i64 %_40.0)
  %_35.0 = extractvalue { [0 x i8]*, i64 } %46, 0
  %_35.1 = extractvalue { [0 x i8]*, i64 } %46, 1
  br label %bb22

panic4:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc11 to %"core::panic::location::Location"*)) #6
  unreachable

bb22:                                             ; preds = %bb21
  %47 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf3, i32 0, i32 0
  store [0 x i8]* %_35.0, [0 x i8]** %47, align 8
  %48 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf3, i32 0, i32 1
  store i64 %_35.1, i64* %48, align 8
  br label %bb23

bb24:                                             ; preds = %bb23
  %49 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  store i64 %_42.0, i64* %49, align 1
  store i32 0, i32* %2, align 4
  br label %bb25

panic5:                                           ; preds = %bb23
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc13 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 1}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_increase_buffer.rs.bc", hash: (685077644, 4808592, 3703733949, 3184494467, 3895464013))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^3 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1215147083256090389
^4 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 1304493753994530066
^5 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hca5080e27f82c6b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 2305186669285104245
^6 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^7 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 4043627465500463496
^8 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h565692b289125e37E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^20))))) ; guid = 4105247349524338224
^9 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 4189540381096801217
^10 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h24d38f59d45a9f7dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 4239639935317468117
^11 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha4bfd29d633f4c91E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^10), (callee: ^5))))) ; guid = 4828821555375009564
^12 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9031599934077701762
^13 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 9104842247057785885
^14 = gv: (name: "csv_increase_buffer", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 144, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^17), (callee: ^10), (callee: ^16), (callee: ^18), (callee: ^11), (callee: ^8)), refs: (^9, ^12, ^13, ^19, ^3, ^4, ^7)))) ; guid = 9325484878143708927
^15 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h4f3779c88081feb4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 10095016458452107724
^16 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^17 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hf035e87d2344343fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 10514064417713160116
^18 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hcd6ba280b7119c14E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 11809546731849642091
^19 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^21)))) ; guid = 13013334768254336801
^20 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17hf5693d50b29698f3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^15))))) ; guid = 13587563590854615617
^21 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14287327867101439157
^22 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^23 = blockcount: 45
