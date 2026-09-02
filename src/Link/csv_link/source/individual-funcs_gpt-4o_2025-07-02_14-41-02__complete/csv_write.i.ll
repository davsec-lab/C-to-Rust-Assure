; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @csv_write(i8* noundef %dest, i64 noundef %dest_size, i8* noundef %src, i64 noundef %src_size) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load i64, i64* %dest_size.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i64, i64* %src_size.addr, align 8
  %call = call i64 @csv_write2(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i8 noundef zeroext 34)
  ret i64 %call
}

declare i64 @csv_write2(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8 noundef zeroext) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
