; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_free_func.rs.bc'
source_filename = "csv_set_free_func.32c78a0e-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>

; Function Attrs: uwtable
define void @csv_set_free_func(%CsvParser* align 1 %p, void (i8*)* %f) unnamed_addr #0 {
start:
  %_3 = alloca i8, align 1
  %0 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 15
  %_5 = load void (i8*)*, void (i8*)** %0, align 1, !nonnull !1, !noundef !1
  %_4 = ptrtoint void (i8*)* %_5 to i64
  %1 = icmp eq i64 %_4, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 0, i8* %_3, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %_7 = ptrtoint void (i8*)* %f to i64
  %_6 = icmp ne i64 %_7, 0
  %2 = zext i1 %_6 to i8
  store i8 %2, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %3 = load i8, i8* %_3, align 1, !range !2, !noundef !1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb5

bb5:                                              ; preds = %bb4, %bb3
  ret void

bb4:                                              ; preds = %bb3
  %5 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 15
  store void (i8*)* %f, void (i8*)** %5, align 1
  br label %bb5
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i8 0, i8 2}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_free_func.rs.bc", hash: (4240651344, 1520956200, 3262671843, 882924708, 3309086455))
^1 = gv: (name: "csv_set_free_func", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20))) ; guid = 17453289300863681781
^2 = blockcount: 6
