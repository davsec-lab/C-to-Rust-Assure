; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_init.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_init.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_init(%struct.csv_parser* noundef %p, i8 noundef zeroext %options) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.csv_parser*, align 8
  %options.addr = alloca i8, align 1
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i8 %options, i8* %options.addr, align 1
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 3
  store i8* null, i8** %entry_buf, align 8
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 0
  store i32 0, i32* %pstate, align 8
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 1
  store i32 0, i32* %quoted, align 4
  %4 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %4, i32 0, i32 2
  store i64 0, i64* %spaces, align 8
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 4
  store i64 0, i64* %entry_pos, align 8
  %6 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %6, i32 0, i32 5
  store i64 0, i64* %entry_size, align 8
  %7 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %7, i32 0, i32 6
  store i32 0, i32* %status, align 8
  %8 = load i8, i8* %options.addr, align 1
  %9 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %9, i32 0, i32 7
  store i8 %8, i8* %options1, align 4
  %10 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %10, i32 0, i32 8
  store i8 34, i8* %quote_char, align 1
  %11 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %11, i32 0, i32 9
  store i8 44, i8* %delim_char, align 2
  %12 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_space = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %12, i32 0, i32 10
  store i32 (i8)* null, i32 (i8)** %is_space, align 8
  %13 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_term = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %13, i32 0, i32 11
  store i32 (i8)* null, i32 (i8)** %is_term, align 8
  %14 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %blk_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %14, i32 0, i32 12
  store i64 128, i64* %blk_size, align 8
  %15 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %malloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %15, i32 0, i32 13
  store i8* (i64)* null, i8* (i64)** %malloc_func, align 8
  %16 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %realloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %16, i32 0, i32 14
  store i8* (i8*, i64)* @realloc, i8* (i8*, i64)** %realloc_func, align 8
  %17 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %free_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %17, i32 0, i32 15
  store void (i8*)* @free, void (i8*)** %free_func, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"clang version 14.0.0"}
