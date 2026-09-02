; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_realloc_func.rs.bc'
source_filename = "csv_set_realloc_func.47c7fa27-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>

; Function Attrs: uwtable
define void @csv_set_realloc_func(%CsvParser* align 1 %p, i64* %0) unnamed_addr #0 {
start:
  %f = alloca i64*, align 8
  store i64* %0, i64** %f, align 8
  %1 = bitcast i64** %f to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_3 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_3, 1
  br i1 %4, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %5 = bitcast i64** %f to i8* (i8*, i64)**
  %func = load i8* (i8*, i64)*, i8* (i8*, i64)** %5, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 14
  store i8* (i8*, i64)* %func, i8* (i8*, i64)** %6, align 1
  br label %bb2

bb2:                                              ; preds = %bb1, %start
  ret void
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_realloc_func.rs.bc", hash: (3164033493, 1927901134, 1369512990, 4185318233, 2825472631))
^1 = gv: (name: "csv_set_realloc_func", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 18065338703212422180
^2 = blockcount: 3
