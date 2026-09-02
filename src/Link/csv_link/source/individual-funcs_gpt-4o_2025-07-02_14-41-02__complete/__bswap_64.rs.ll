; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/__bswap_64.rs.bc'
source_filename = "__bswap_64.abdc2495-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: uwtable
define i64 @__bswap_64(i64 %__bsx) unnamed_addr #0 {
start:
  %_9 = and i64 %__bsx, -72057594037927936
  %_11.0 = lshr i64 %_9, 56
  br label %bb1

bb1:                                              ; preds = %start
  %_13 = and i64 %__bsx, 71776119061217280
  %_15.0 = lshr i64 %_13, 40
  br label %bb2

bb2:                                              ; preds = %bb1
  %_7 = or i64 %_11.0, %_15.0
  %_17 = and i64 %__bsx, 280375465082880
  %_19.0 = lshr i64 %_17, 24
  br label %bb3

bb3:                                              ; preds = %bb2
  %_6 = or i64 %_7, %_19.0
  %_21 = and i64 %__bsx, 1095216660480
  %_23.0 = lshr i64 %_21, 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %_5 = or i64 %_6, %_23.0
  %_25 = and i64 %__bsx, 4278190080
  %_27.0 = shl i64 %_25, 8
  br label %bb5

bb5:                                              ; preds = %bb4
  %_4 = or i64 %_5, %_27.0
  %_29 = and i64 %__bsx, 16711680
  %_31.0 = shl i64 %_29, 24
  br label %bb6

bb6:                                              ; preds = %bb5
  %_3 = or i64 %_4, %_31.0
  %_33 = and i64 %__bsx, 65280
  %_35.0 = shl i64 %_33, 40
  br label %bb7

bb7:                                              ; preds = %bb6
  %_2 = or i64 %_3, %_35.0
  %_37 = and i64 %__bsx, 255
  %_39.0 = shl i64 %_37, 56
  br label %bb8

bb8:                                              ; preds = %bb7
  %0 = or i64 %_2, %_39.0
  ret i64 %0
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/__bswap_64.rs.bc", hash: (3053658690, 2700086633, 3200898267, 3730271751, 2385343217))
^1 = gv: (name: "__bswap_64", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 32))) ; guid = 9308415309075055075
^2 = blockcount: 9
