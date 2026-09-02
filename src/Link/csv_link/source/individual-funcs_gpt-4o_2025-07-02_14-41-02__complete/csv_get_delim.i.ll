; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_delim.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_get_delim.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

@.str = private unnamed_addr constant [25 x i8] c"received null csv_parser\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"p && \22received null csv_parser\22\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"libcsv.c\00", align 1
@__PRETTY_FUNCTION__.csv_get_delim = private unnamed_addr constant [55 x i8] c"unsigned char csv_get_delim(const struct csv_parser *)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @csv_get_delim(%struct.csv_parser* noundef %p) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  br i1 true, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.csv_get_delim, i64 0, i64 0)) #2
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 9
  %2 = load i8, i8* %delim_char, align 2
  ret i8 %2
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

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
