; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fini.rs.bc'
source_filename = "csv_fini.8c80577b-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>
%"core::ptr::metadata::PtrComponents<CsvParser>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<CsvParser>" = type { [1 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc9 = private unnamed_addr constant <{ [138 x i8] }> <{ [138 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fini.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [138 x i8] }>, <{ [138 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"\8A\00\00\00\00\00\00\00.\00\00\00\11\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [138 x i8] }>, <{ [138 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"\8A\00\00\00\00\00\00\002\00\00\00\15\00\00\00" }>, align 8
@alloc8 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [138 x i8] }>, <{ [138 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"\8A\00\00\00\00\00\00\00)\00\00\00\1C\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc10 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [138 x i8] }>, <{ [138 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [16 x i8] c"\8A\00\00\00\00\00\00\00)\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define %CsvParser* @_ZN4core3ptr8metadata14from_raw_parts17h3a426d329313f5aeE({}* %data_address) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hf9d0677fb8aa7a99E({}* %data_address) unnamed_addr #0 {
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
define i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hda8bc388c218fee3E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: uwtable
define i32 @csv_fini(%CsvParser* align 1 %p, i64* %0, i64* %1, i8* %data) unnamed_addr #1 {
start:
  %2 = alloca {}*, align 8
  %3 = alloca {}*, align 8
  %_44 = alloca i8, align 1
  %_43 = alloca i8, align 1
  %_15 = alloca i8, align 1
  %_14 = alloca i8, align 1
  %_13 = alloca i8, align 1
  %entry_pos = alloca i64, align 8
  %spaces = alloca i64, align 8
  %pstate = alloca i32, align 4
  %quoted = alloca i32, align 4
  %4 = alloca i32, align 4
  %cb2 = alloca i64*, align 8
  %cb1 = alloca i64*, align 8
  store i64* %0, i64** %cb1, align 8
  store i64* %1, i64** %cb2, align 8
  %5 = bitcast {}** %3 to i64*
  store i64 0, i64* %5, align 8
  %6 = load {}*, {}** %3, align 8
  %7 = call %CsvParser* @_ZN4core3ptr8metadata14from_raw_parts17h3a426d329313f5aeE({}* %6)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = icmp eq %CsvParser* %p, %7
  br i1 %_5, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %9 = load i32, i32* %8, align 1
  store i32 %9, i32* %quoted, align 4
  %10 = bitcast %CsvParser* %p to i32*
  %11 = load i32, i32* %10, align 1
  store i32 %11, i32* %pstate, align 4
  %12 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  %13 = load i64, i64* %12, align 1
  store i64 %13, i64* %spaces, align 8
  %14 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %entry_pos, align 8
  %_16 = load i32, i32* %pstate, align 4
  %16 = icmp eq i32 %_16, 2
  br i1 %16, label %bb11, label %bb10

bb2:                                              ; preds = %bb1
  store i32 -1, i32* %4, align 4
  br label %bb42

bb42:                                             ; preds = %bb41, %bb13, %bb2
  %17 = load i32, i32* %4, align 4
  ret i32 %17

bb11:                                             ; preds = %bb3
  %18 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %_18 = load i32, i32* %18, align 1
  %_17 = icmp ne i32 %_18, 0
  %19 = zext i1 %_17 to i8
  store i8 %19, i8* %_15, align 1
  br label %bb12

bb10:                                             ; preds = %bb3
  store i8 0, i8* %_15, align 1
  br label %bb12

bb12:                                             ; preds = %bb10, %bb11
  %20 = load i8, i8* %_15, align 1, !range !1, !noundef !2
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb8, label %bb7

bb7:                                              ; preds = %bb12
  store i8 0, i8* %_14, align 1
  br label %bb9

bb8:                                              ; preds = %bb12
  %22 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_21 = load i8, i8* %22, align 1
  %_20 = and i8 %_21, 1
  %_19 = icmp ne i8 %_20, 0
  %23 = zext i1 %_19 to i8
  store i8 %23, i8* %_14, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %24 = load i8, i8* %_14, align 1, !range !1, !noundef !2
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb5, label %bb4

bb4:                                              ; preds = %bb9
  store i8 0, i8* %_13, align 1
  br label %bb6

bb5:                                              ; preds = %bb9
  %26 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_24 = load i8, i8* %26, align 1
  %_23 = and i8 %_24, 4
  %_22 = icmp ne i8 %_23, 0
  %27 = zext i1 %_22 to i8
  store i8 %27, i8* %_13, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %28 = load i8, i8* %_13, align 1, !range !1, !noundef !2
  %29 = trunc i8 %28 to i1
  br i1 %29, label %bb13, label %bb14

bb14:                                             ; preds = %bb6
  %30 = load i32, i32* %pstate, align 4
  switch i32 %30, label %bb41 [
    i32 3, label %bb15
    i32 1, label %bb18
    i32 2, label %bb18
    i32 0, label %bb41
  ]

bb13:                                             ; preds = %bb6
  %31 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 6
  store i32 1, i32* %31, align 1
  store i32 -1, i32* %4, align 4
  br label %bb42

bb41:                                             ; preds = %bb17, %bb40, %bb14, %bb14
  %32 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  store i64 0, i64* %32, align 1
  %33 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  store i32 0, i32* %33, align 1
  %34 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  store i64 0, i64* %34, align 1
  %35 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 6
  store i32 0, i32* %35, align 1
  %36 = bitcast %CsvParser* %p to i32*
  store i32 0, i32* %36, align 1
  store i32 0, i32* %4, align 4
  br label %bb42

bb15:                                             ; preds = %bb14
  %37 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  %_26 = load i64, i64* %37, align 1
  %38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_26, i64 1)
  %_27.0 = extractvalue { i64, i1 } %38, 0
  %_27.1 = extractvalue { i64, i1 } %38, 1
  %39 = call i1 @llvm.expect.i1(i1 %_27.1, i1 false)
  br i1 %39, label %panic5, label %bb16

bb18:                                             ; preds = %bb14, %bb14
  %_30 = load i32, i32* %quoted, align 4
  %40 = icmp eq i32 %_30, 0
  br i1 %40, label %bb19, label %bb21

bb19:                                             ; preds = %bb18
  %_31 = load i64, i64* %spaces, align 8
  %41 = load i64, i64* %entry_pos, align 8
  %42 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %_31)
  %_32.0 = extractvalue { i64, i1 } %42, 0
  %_32.1 = extractvalue { i64, i1 } %42, 1
  %43 = call i1 @llvm.expect.i1(i1 %_32.1, i1 false)
  br i1 %43, label %panic, label %bb20

bb21:                                             ; preds = %bb20, %bb18
  %44 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_34 = load i8, i8* %44, align 1
  %_33 = and i8 %_34, 8
  %45 = icmp eq i8 %_33, 0
  br i1 %45, label %bb25, label %bb22

bb20:                                             ; preds = %bb19
  store i64 %_32.0, i64* %entry_pos, align 8
  br label %bb21

panic:                                            ; preds = %bb19
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::location::Location"*)) #6
  unreachable

bb25:                                             ; preds = %bb24, %bb22, %bb21
  %46 = bitcast i64** %cb1 to {}**
  %47 = load {}*, {}** %46, align 8
  %48 = icmp eq {}* %47, null
  %_41 = select i1 %48, i64 0, i64 1
  %49 = icmp eq i64 %_41, 1
  br i1 %49, label %bb26, label %bb38

bb22:                                             ; preds = %bb21
  %_35 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %50 = bitcast { i8*, i64 }* %_35 to {}**
  %51 = load {}*, {}** %50, align 8
  %52 = icmp eq {}* %51, null
  %_36 = select i1 %52, i64 0, i64 1
  %53 = icmp eq i64 %_36, 1
  br i1 %53, label %bb23, label %bb25

bb23:                                             ; preds = %bb22
  %entry_buf = bitcast { i8*, i64 }* %_35 to { [0 x i8]*, i64 }*
  %_38 = load i64, i64* %entry_pos, align 8
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %entry_buf, i32 0, i32 0
  %_70.0 = load [0 x i8]*, [0 x i8]** %54, align 8, !nonnull !2, !align !3, !noundef !2
  %55 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %entry_buf, i32 0, i32 1
  %_70.1 = load i64, i64* %55, align 8
  %_40 = icmp ult i64 %_38, %_70.1
  %56 = call i1 @llvm.expect.i1(i1 %_40, i1 true)
  br i1 %56, label %bb24, label %panic1

bb24:                                             ; preds = %bb23
  %57 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %entry_buf, i32 0, i32 0
  %_71.0 = load [0 x i8]*, [0 x i8]** %57, align 8, !nonnull !2, !align !3, !noundef !2
  %58 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %entry_buf, i32 0, i32 1
  %_71.1 = load i64, i64* %58, align 8
  %59 = getelementptr inbounds [0 x i8], [0 x i8]* %_71.0, i64 0, i64 %_38
  store i8 0, i8* %59, align 1
  br label %bb25

panic1:                                           ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_38, i64 %_70.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc6 to %"core::panic::location::Location"*)) #6
  unreachable

bb26:                                             ; preds = %bb25
  %60 = bitcast i64** %cb1 to void (i8*, i64, i8*)**
  %cb12 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %60, align 8, !nonnull !2, !noundef !2
  %61 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_46 = load i8, i8* %61, align 1
  %_45 = and i8 %_46, 16
  %62 = icmp eq i8 %_45, 0
  br i1 %62, label %bb30, label %bb31

bb38:                                             ; preds = %bb37, %bb34, %bb35, %bb25
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %spaces, align 8
  %63 = bitcast i64** %cb2 to {}**
  %64 = load {}*, {}** %63, align 8
  %65 = icmp eq {}* %64, null
  %_65 = select i1 %65, i64 0, i64 1
  %66 = icmp eq i64 %_65, 1
  br i1 %66, label %bb39, label %bb40

bb30:                                             ; preds = %bb26
  store i8 0, i8* %_44, align 1
  br label %bb32

bb31:                                             ; preds = %bb26
  %_48 = load i32, i32* %quoted, align 4
  %_47 = icmp eq i32 %_48, 0
  %67 = zext i1 %_47 to i8
  store i8 %67, i8* %_44, align 1
  br label %bb32

bb32:                                             ; preds = %bb31, %bb30
  %68 = load i8, i8* %_44, align 1, !range !1, !noundef !2
  %69 = trunc i8 %68 to i1
  br i1 %69, label %bb28, label %bb27

bb27:                                             ; preds = %bb32
  store i8 0, i8* %_43, align 1
  br label %bb29

bb28:                                             ; preds = %bb32
  %_50 = load i64, i64* %entry_pos, align 8
  %_49 = icmp eq i64 %_50, 0
  %70 = zext i1 %_49 to i8
  store i8 %70, i8* %_43, align 1
  br label %bb29

bb29:                                             ; preds = %bb28, %bb27
  %71 = load i8, i8* %_43, align 1, !range !1, !noundef !2
  %72 = trunc i8 %71 to i1
  br i1 %72, label %bb33, label %bb35

bb35:                                             ; preds = %bb29
  %_56 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %73 = bitcast { i8*, i64 }* %_56 to {}**
  %74 = load {}*, {}** %73, align 8
  %75 = icmp eq {}* %74, null
  %_57 = select i1 %75, i64 0, i64 1
  %76 = icmp eq i64 %_57, 1
  br i1 %76, label %bb36, label %bb38

bb33:                                             ; preds = %bb29
  %77 = bitcast {}** %2 to i64*
  store i64 0, i64* %77, align 8
  %78 = load {}*, {}** %2, align 8
  %79 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hf9d0677fb8aa7a99E({}* %78)
  br label %bb34

bb34:                                             ; preds = %bb33
  %_54 = load i64, i64* %entry_pos, align 8
  call void %cb12(i8* %79, i64 %_54, i8* %data)
  br label %bb38

bb36:                                             ; preds = %bb35
  %entry_buf3 = bitcast { i8*, i64 }* %_56 to { [0 x i8]*, i64 }*
  %80 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %entry_buf3, i32 0, i32 0
  %_72.0 = load [0 x i8]*, [0 x i8]** %80, align 8, !nonnull !2, !align !3, !noundef !2
  %81 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %entry_buf3, i32 0, i32 1
  %_72.1 = load i64, i64* %81, align 8
  %_61 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hda8bc388c218fee3E"([0 x i8]* align 1 %_72.0, i64 %_72.1)
  br label %bb37

bb37:                                             ; preds = %bb36
  %_63 = load i64, i64* %entry_pos, align 8
  call void %cb12(i8* %_61, i64 %_63, i8* %data)
  br label %bb38

bb39:                                             ; preds = %bb38
  %82 = bitcast i64** %cb2 to void (i32, i8*)**
  %cb24 = load void (i32, i8*)*, void (i32, i8*)** %82, align 8, !nonnull !2, !noundef !2
  call void %cb24(i32 -1, i8* %data)
  br label %bb40

bb40:                                             ; preds = %bb39, %bb38
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %spaces, align 8
  br label %bb41

bb16:                                             ; preds = %bb15
  %83 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  %84 = load i64, i64* %83, align 1
  %85 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %84, i64 %_27.0)
  %_28.0 = extractvalue { i64, i1 } %85, 0
  %_28.1 = extractvalue { i64, i1 } %85, 1
  %86 = call i1 @llvm.expect.i1(i1 %_28.1, i1 false)
  br i1 %86, label %panic6, label %bb17

panic5:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc8 to %"core::panic::location::Location"*)) #6
  unreachable

bb17:                                             ; preds = %bb16
  %87 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  store i64 %_28.0, i64* %87, align 1
  %88 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  %_29 = load i64, i64* %88, align 1
  store i64 %_29, i64* %entry_pos, align 8
  br label %bb41

panic6:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc10 to %"core::panic::location::Location"*)) #6
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

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

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

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fini.rs.bc", hash: (2221988779, 1372431519, 1269549473, 2245930478, 1064899126))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^3 = gv: (name: "alloc4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 2124256348635366722
^4 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^5 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hda8bc388c218fee3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3145184894914164842
^6 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4090326685687498412
^7 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4919053962689688618
^8 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 5536273199393350759
^9 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 6185793687460856871
^10 = gv: (name: "csv_fini", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 240, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^16), (callee: ^12), (callee: ^17), (callee: ^11), (callee: ^5)), refs: (^3, ^7, ^14, ^8, ^6, ^13)))) ; guid = 7321542852876438414
^11 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hf9d0677fb8aa7a99E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 7945548259923859179
^12 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^13 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 11120955239921008863
^14 = gv: (name: "alloc6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^9)))) ; guid = 13383505892293832902
^15 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^16 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h3a426d329313f5aeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 17334108109284170522
^17 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^18 = blockcount: 50
