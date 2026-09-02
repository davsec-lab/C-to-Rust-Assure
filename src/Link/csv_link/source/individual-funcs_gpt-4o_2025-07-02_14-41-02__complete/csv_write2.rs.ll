; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write2.rs.bc'
source_filename = "csv_write2.e6c855dc-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc12 = private unnamed_addr constant <{ [140 x i8] }> <{ [140 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write2.rs" }>, align 1
@alloc5 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [140 x i8] }>, <{ [140 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\8C\00\00\00\00\00\00\00\13\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc7 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [140 x i8] }>, <{ [140 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\8C\00\00\00\00\00\00\00\1C\00\00\00\15\00\00\00" }>, align 8
@alloc9 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [140 x i8] }>, <{ [140 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\8C\00\00\00\00\00\00\00$\00\00\00\11\00\00\00" }>, align 8
@alloc11 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [140 x i8] }>, <{ [140 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\8C\00\00\00\00\00\00\00&\00\00\00\0D\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc13 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [140 x i8] }>, <{ [140 x i8] }>* @alloc12, i32 0, i32 0, i32 0), [16 x i8] c"\8C\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hbd1c995c8a038e43E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hfcd214d85c768f28E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h11170ade8265e5eeE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hbd1c995c8a038e43E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata14from_raw_parts17h6710c0c53091d791E({}* %data_address) unnamed_addr #0 {
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
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h11170ade8265e5eeE({}* %data_address) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h5d0346fb01f58612E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h6e812b6be34fd9b7E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h6710c0c53091d791E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h5d0346fb01f58612E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: uwtable
define i64 @csv_write2(i8* %dest, i64 %0, i8* %src, i64 %1, i8 %quote) unnamed_addr #1 {
start:
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %chars = alloca i64, align 8
  %csrc = alloca i8*, align 8
  %cdest = alloca i8*, align 8
  %6 = alloca i64, align 8
  %src_size = alloca i64, align 8
  %dest_size = alloca i64, align 8
  store i64 %0, i64* %dest_size, align 8
  store i64 %1, i64* %src_size, align 8
  store i8* %dest, i8** %cdest, align 8
  store i8* %src, i8** %csrc, align 8
  store i64 0, i64* %chars, align 8
  %_9 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h6e812b6be34fd9b7E"(i8* %src)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_9, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_11 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hfcd214d85c768f28E"(i8* %dest)
  br label %bb4

bb2:                                              ; preds = %bb1
  store i64 0, i64* %6, align 8
  br label %bb34

bb34:                                             ; preds = %bb33, %bb2
  %7 = load i64, i64* %6, align 8
  ret i64 %7

bb4:                                              ; preds = %bb3
  br i1 %_11, label %bb5, label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %_14 = load i64, i64* %dest_size, align 8
  %_13 = icmp ugt i64 %_14, 0
  br i1 %_13, label %bb7, label %bb9

bb5:                                              ; preds = %bb4
  store i64 0, i64* %dest_size, align 8
  br label %bb6

bb9:                                              ; preds = %bb8, %bb6
  %8 = load i64, i64* %chars, align 8
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1)
  %_18.0 = extractvalue { i64, i1 } %9, 0
  %_18.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_18.1, i1 false)
  br i1 %10, label %panic, label %bb10

bb7:                                              ; preds = %bb6
  %11 = load i8*, i8** %cdest, align 8
  store i8 %quote, i8* %11, align 1
  %_17 = load i8*, i8** %cdest, align 8
  %12 = getelementptr inbounds i8, i8* %_17, i64 1
  store i8* %12, i8** %5, align 8
  %_3.i = load i8*, i8** %5, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  store i8* %_3.i, i8** %cdest, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  store i64 %_18.0, i64* %chars, align 8
  br label %bb11

panic:                                            ; preds = %bb9
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc5 to %"core::panic::location::Location"*)) #6
  unreachable

bb11:                                             ; preds = %bb27, %bb10
  %_20 = load i64, i64* %src_size, align 8
  %_19 = icmp ugt i64 %_20, 0
  br i1 %_19, label %bb12, label %bb28

bb28:                                             ; preds = %bb11
  %_46 = load i64, i64* %dest_size, align 8
  %_47 = load i64, i64* %chars, align 8
  %_45 = icmp ugt i64 %_46, %_47
  br i1 %_45, label %bb29, label %bb30

bb12:                                             ; preds = %bb11
  %13 = load i8*, i8** %csrc, align 8
  %_22 = load i8, i8* %13, align 1
  %_21 = icmp eq i8 %_22, %quote
  br i1 %_21, label %bb13, label %bb19

bb19:                                             ; preds = %bb18, %bb16, %bb12
  %_34 = load i64, i64* %dest_size, align 8
  %_35 = load i64, i64* %chars, align 8
  %_33 = icmp ugt i64 %_34, %_35
  br i1 %_33, label %bb20, label %bb22

bb13:                                             ; preds = %bb12
  %_25 = load i64, i64* %dest_size, align 8
  %_26 = load i64, i64* %chars, align 8
  %_24 = icmp ugt i64 %_25, %_26
  br i1 %_24, label %bb14, label %bb16

bb16:                                             ; preds = %bb15, %bb13
  %_31 = load i64, i64* %chars, align 8
  %_30 = icmp ult i64 %_31, -1
  br i1 %_30, label %bb17, label %bb19

bb14:                                             ; preds = %bb13
  %14 = load i8*, i8** %cdest, align 8
  store i8 %quote, i8* %14, align 1
  %_29 = load i8*, i8** %cdest, align 8
  %15 = getelementptr inbounds i8, i8* %_29, i64 1
  store i8* %15, i8** %4, align 8
  %_3.i5 = load i8*, i8** %4, align 8
  br label %bb15

bb15:                                             ; preds = %bb14
  store i8* %_3.i5, i8** %cdest, align 8
  br label %bb16

bb17:                                             ; preds = %bb16
  %16 = load i64, i64* %chars, align 8
  %17 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 1)
  %_32.0 = extractvalue { i64, i1 } %17, 0
  %_32.1 = extractvalue { i64, i1 } %17, 1
  %18 = call i1 @llvm.expect.i1(i1 %_32.1, i1 false)
  br i1 %18, label %panic1, label %bb18

bb18:                                             ; preds = %bb17
  store i64 %_32.0, i64* %chars, align 8
  br label %bb19

panic1:                                           ; preds = %bb17
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc7 to %"core::panic::location::Location"*)) #6
  unreachable

bb22:                                             ; preds = %bb21, %bb19
  %_40 = load i64, i64* %chars, align 8
  %_39 = icmp ult i64 %_40, -1
  br i1 %_39, label %bb23, label %bb25

bb20:                                             ; preds = %bb19
  %19 = load i8*, i8** %csrc, align 8
  %_36 = load i8, i8* %19, align 1
  %20 = load i8*, i8** %cdest, align 8
  store i8 %_36, i8* %20, align 1
  %_38 = load i8*, i8** %cdest, align 8
  %21 = getelementptr inbounds i8, i8* %_38, i64 1
  store i8* %21, i8** %3, align 8
  %_3.i6 = load i8*, i8** %3, align 8
  br label %bb21

bb21:                                             ; preds = %bb20
  store i8* %_3.i6, i8** %cdest, align 8
  br label %bb22

bb25:                                             ; preds = %bb24, %bb22
  %22 = load i64, i64* %src_size, align 8
  %23 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %22, i64 1)
  %_42.0 = extractvalue { i64, i1 } %23, 0
  %_42.1 = extractvalue { i64, i1 } %23, 1
  %24 = call i1 @llvm.expect.i1(i1 %_42.1, i1 false)
  br i1 %24, label %panic3, label %bb26

bb23:                                             ; preds = %bb22
  %25 = load i64, i64* %chars, align 8
  %26 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %25, i64 1)
  %_41.0 = extractvalue { i64, i1 } %26, 0
  %_41.1 = extractvalue { i64, i1 } %26, 1
  %27 = call i1 @llvm.expect.i1(i1 %_41.1, i1 false)
  br i1 %27, label %panic2, label %bb24

bb24:                                             ; preds = %bb23
  store i64 %_41.0, i64* %chars, align 8
  br label %bb25

panic2:                                           ; preds = %bb23
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc9 to %"core::panic::location::Location"*)) #6
  unreachable

bb26:                                             ; preds = %bb25
  store i64 %_42.0, i64* %src_size, align 8
  %_44 = load i8*, i8** %csrc, align 8
  %28 = getelementptr inbounds i8, i8* %_44, i64 1
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  br label %bb27

panic3:                                           ; preds = %bb25
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc11 to %"core::panic::location::Location"*)) #6
  unreachable

bb27:                                             ; preds = %bb26
  store i8* %29, i8** %csrc, align 8
  br label %bb11

bb30:                                             ; preds = %bb29, %bb28
  %_50 = load i64, i64* %chars, align 8
  %_49 = icmp ult i64 %_50, -1
  br i1 %_49, label %bb31, label %bb33

bb29:                                             ; preds = %bb28
  %30 = load i8*, i8** %cdest, align 8
  store i8 %quote, i8* %30, align 1
  br label %bb30

bb33:                                             ; preds = %bb32, %bb30
  %31 = load i64, i64* %chars, align 8
  store i64 %31, i64* %6, align 8
  br label %bb34

bb31:                                             ; preds = %bb30
  %32 = load i64, i64* %chars, align 8
  %33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %32, i64 1)
  %_51.0 = extractvalue { i64, i1 } %33, 0
  %_51.1 = extractvalue { i64, i1 } %33, 1
  %34 = call i1 @llvm.expect.i1(i1 %_51.1, i1 false)
  br i1 %34, label %panic4, label %bb32

bb32:                                             ; preds = %bb31
  store i64 %_51.0, i64* %chars, align 8
  br label %bb33

panic4:                                           ; preds = %bb31
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc13 to %"core::panic::location::Location"*)) #6
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

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

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write2.rs.bc", hash: (1510858325, 2624743865, 220479017, 657978146, 1068732021))
^1 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 262636865631318496
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^4 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 1473718560707580958
^5 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^6 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h6710c0c53091d791E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 3023359614391103665
^7 = gv: (name: "alloc5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 3964124207236320960
^8 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4048773134151245474
^9 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hfcd214d85c768f28E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^13), (callee: ^17))))) ; guid = 7062115295587505529
^10 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 7938078812257338823
^11 = gv: (name: "alloc13", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 7967443778751885746
^12 = gv: (name: "csv_write2", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 149, calls: ((callee: ^19), (callee: ^9), (callee: ^15)), refs: (^7, ^1, ^10, ^4, ^16, ^8, ^11)))) ; guid = 8695259734581474664
^13 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h11170ade8265e5eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 8918740156908208744
^14 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h5d0346fb01f58612E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 9284455873088699850
^15 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^16 = gv: (name: "alloc11", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^20)))) ; guid = 12080064331746216612
^17 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hbd1c995c8a038e43E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 13643837801263607848
^18 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^19 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h6e812b6be34fd9b7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^6), (callee: ^14))))) ; guid = 15548974271170179724
^20 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16472256482234198036
^21 = blockcount: 52
