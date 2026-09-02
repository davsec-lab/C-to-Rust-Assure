; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_free.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_free.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @csv_free(%struct.csv_parser* noundef %p) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 3
  %2 = load i8*, i8** %entry_buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %free_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 15
  %4 = load void (i8*)*, void (i8*)** %free_func, align 8
  %tobool1 = icmp ne void (i8*)* %4, null
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %land.lhs.true
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %free_func3 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 15
  %6 = load void (i8*)*, void (i8*)** %free_func3, align 8
  %7 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %7, i32 0, i32 3
  %8 = load i8*, i8** %entry_buf4, align 8
  call void %6(i8* noundef %8)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %9 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %9, i32 0, i32 3
  store i8* null, i8** %entry_buf6, align 8
  %10 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %10, i32 0, i32 5
  store i64 0, i64* %entry_size, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
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
