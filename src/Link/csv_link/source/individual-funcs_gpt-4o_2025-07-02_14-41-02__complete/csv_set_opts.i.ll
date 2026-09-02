; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_opts.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_set_opts.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_set_opts(%struct.csv_parser* noundef %p, i8 noundef zeroext %options) #0 {
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
  %1 = load i8, i8* %options.addr, align 1
  %2 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %2, i32 0, i32 7
  store i8 %1, i8* %options1, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
