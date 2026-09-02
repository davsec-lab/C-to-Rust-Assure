; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_buffer_size.rs.bc'
source_filename = "csv_get_buffer_size.46e5dacb-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>

; Function Attrs: uwtable
define i64 @csv_get_buffer_size(%CsvParser* align 1 %p) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %_2 = load i64, i64* %1, align 1
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i64 0, i64* %0, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %4 = load i64, i64* %3, align 1
  store i64 %4, i64* %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i64, i64* %0, align 8
  ret i64 %5
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_buffer_size.rs.bc", hash: (1881769970, 1243538747, 1536441921, 1246066479, 28530029))
^1 = gv: (name: "csv_get_buffer_size", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 1598847220423286414
^2 = blockcount: 4
