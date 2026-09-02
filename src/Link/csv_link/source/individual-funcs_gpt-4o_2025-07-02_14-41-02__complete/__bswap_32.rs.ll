; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/__bswap_32.rs.bc'
source_filename = "__bswap_32.c477a7fc-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: uwtable
define i32 @__bswap_32(i32 %__bsx) unnamed_addr #0 {
start:
  %_5 = and i32 %__bsx, -16777216
  %_7.0 = lshr i32 %_5, 24
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = and i32 %__bsx, 16711680
  %_11.0 = lshr i32 %_9, 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = or i32 %_7.0, %_11.0
  %_13 = and i32 %__bsx, 65280
  %_15.0 = shl i32 %_13, 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %_2 = or i32 %_3, %_15.0
  %_17 = and i32 %__bsx, 255
  %_19.0 = shl i32 %_17, 24
  br label %bb4

bb4:                                              ; preds = %bb3
  %0 = or i32 %_2, %_19.0
  ret i32 %0
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/__bswap_32.rs.bc", hash: (1317269757, 1854240152, 2238813481, 1048516799, 2825818173))
^1 = gv: (name: "__bswap_32", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16))) ; guid = 9880342275588899506
^2 = blockcount: 5
