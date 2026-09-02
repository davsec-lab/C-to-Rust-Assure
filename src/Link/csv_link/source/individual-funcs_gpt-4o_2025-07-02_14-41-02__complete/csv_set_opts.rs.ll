; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_opts.rs.bc'
source_filename = "csv_set_opts.2e7f37ac-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%CsvParser = type <{ i32, i32, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>
%"core::ptr::metadata::PtrComponents<CsvParser>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<CsvParser>" = type { [1 x i64] }

; Function Attrs: inlinehint uwtable
define %CsvParser* @_ZN4core3ptr8metadata18from_raw_parts_mut17hda1e25a5a29344b8E({}* %data_address) unnamed_addr #0 {
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

; Function Attrs: uwtable
define i32 @csv_set_opts(%CsvParser* align 1 %p, i8 %options) unnamed_addr #1 {
start:
  %0 = alloca {}*, align 8
  %1 = alloca i32, align 4
  %2 = bitcast {}** %0 to i64*
  store i64 0, i64* %2, align 8
  %3 = load {}*, {}** %0, align 8
  %4 = call %CsvParser* @_ZN4core3ptr8metadata18from_raw_parts_mut17hda1e25a5a29344b8E({}* %3)
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq %CsvParser* %p, %4
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %5 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  store i8 %options, i8* %5, align 1
  store i32 0, i32* %1, align 4
  br label %bb4

bb2:                                              ; preds = %bb1
  store i32 -1, i32* %1, align 4
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %6 = load i32, i32* %1, align 4
  ret i32 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_opts.rs.bc", hash: (3361551144, 852892501, 961468645, 1390707775, 2381300751))
^1 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^2 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hda1e25a5a29344b8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 5734469994266420441
^3 = gv: (name: "csv_set_opts", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 17, calls: ((callee: ^2))))) ; guid = 5859471914371581819
^4 = blockcount: 6
