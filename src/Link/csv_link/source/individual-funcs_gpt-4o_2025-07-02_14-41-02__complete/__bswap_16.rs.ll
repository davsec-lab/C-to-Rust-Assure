; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/__bswap_16.rs.bc'
source_filename = "__bswap_16.9514c127-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: uwtable
define i16 @__bswap_16(i16 %__bsx) unnamed_addr #0 {
start:
  %_5.0 = lshr i16 %__bsx, 8
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = and i16 %_5.0, 255
  %_7 = and i16 %__bsx, 255
  %_9.0 = shl i16 %_7, 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %0 = or i16 %_2, %_9.0
  ret i16 %0
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/__bswap_16.rs.bc", hash: (3077215856, 953568409, 2477061205, 2061942366, 115696622))
^1 = gv: (name: "__bswap_16", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 11525893179315675196
^2 = blockcount: 3
