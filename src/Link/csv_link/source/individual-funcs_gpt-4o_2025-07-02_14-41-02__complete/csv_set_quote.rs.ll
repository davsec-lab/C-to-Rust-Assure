; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_quote.rs.bc'
source_filename = "csv_set_quote.ec185fc2-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>

; Function Attrs: uwtable
define void @csv_set_quote(%CsvParser* align 1 %p, i8 %c) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 8
  store i8 %c, i8* %0, align 1
  ret void
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_quote.rs.bc", hash: (1206336424, 1272037903, 4070785828, 2166906214, 1100516530))
^1 = gv: (name: "csv_set_quote", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3))) ; guid = 9849287556585081217
^2 = blockcount: 1
