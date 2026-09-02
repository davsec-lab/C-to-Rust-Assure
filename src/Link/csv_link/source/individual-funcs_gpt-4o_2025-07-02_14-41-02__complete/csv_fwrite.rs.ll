; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fwrite.rs.bc'
source_filename = "csv_fwrite.d3f73e1d-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc7 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"not implemented" }>, align 1
@alloc8 = private unnamed_addr constant <{ [140 x i8] }> <{ [140 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fwrite.rs" }>, align 1
@alloc9 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [140 x i8] }>, <{ [140 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [16 x i8] c"\8C\00\00\00\00\00\00\00\0D\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: uwtable
define void @csv_fwrite(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>") %0, i32* align 4 %fp, [0 x i8]* align 1 %src.0, i64 %src.1) unnamed_addr #0 {
start:
  call void @csv_fwrite2(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>") %0, i32* align 4 %fp, [0 x i8]* align 1 %src.0, i64 %src.1, i8 34)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: uwtable
define void @csv_fwrite2(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>") %0, i32* align 4 %fp, [0 x i8]* align 1 %src.0, i64 %src.1, i8 %quote) unnamed_addr #0 {
start:
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast (<{ [15 x i8] }>* @alloc7 to [0 x i8]*), i64 15, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc9 to %"core::panic::location::Location"*)) #2
  unreachable
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #1

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fwrite.rs.bc", hash: (3462576307, 3128203609, 2748186688, 86868763, 467358301))
^1 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 63314896107687000
^2 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1364922888410769077
^3 = gv: (name: "csv_fwrite2", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^6)), refs: (^4, ^2)))) ; guid = 3450810263035688651
^4 = gv: (name: "alloc9", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^1)))) ; guid = 7093410548817765134
^5 = gv: (name: "csv_fwrite", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^3))))) ; guid = 8915166149701930605
^6 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^7 = blockcount: 3
