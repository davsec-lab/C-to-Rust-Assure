; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write2.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_write2.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @csv_write2(i8* noundef %dest, i64 noundef %dest_size, i8* noundef %src, i64 noundef %src_size, i8 noundef zeroext %quote) #0 {
entry:
  %retval = alloca i64, align 8
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  %quote.addr = alloca i8, align 1
  %cdest = alloca i8*, align 8
  %csrc = alloca i8*, align 8
  %chars = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  store i8 %quote, i8* %quote.addr, align 1
  %0 = load i8*, i8** %dest.addr, align 8
  store i8* %0, i8** %cdest, align 8
  %1 = load i8*, i8** %src.addr, align 8
  store i8* %1, i8** %csrc, align 8
  store i64 0, i64* %chars, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dest.addr, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %dest_size.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %dest_size.addr, align 8
  %cmp4 = icmp ugt i64 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load i8, i8* %quote.addr, align 1
  %6 = load i8*, i8** %cdest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cdest, align 8
  store i8 %5, i8* %6, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %7 = load i64, i64* %chars, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %chars, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.end6
  %8 = load i64, i64* %src_size.addr, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %csrc, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %11 = load i8, i8* %quote.addr, align 1
  %conv7 = zext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv, %conv7
  br i1 %cmp8, label %if.then10, label %if.end21

if.then10:                                        ; preds = %while.body
  %12 = load i64, i64* %dest_size.addr, align 8
  %13 = load i64, i64* %chars, align 8
  %cmp11 = icmp ugt i64 %12, %13
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %14 = load i8, i8* %quote.addr, align 1
  %15 = load i8*, i8** %cdest, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %cdest, align 8
  store i8 %14, i8* %15, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10
  %16 = load i64, i64* %chars, align 8
  %cmp16 = icmp ult i64 %16, -1
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %17 = load i64, i64* %chars, align 8
  %inc19 = add i64 %17, 1
  store i64 %inc19, i64* %chars, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %while.body
  %18 = load i64, i64* %dest_size.addr, align 8
  %19 = load i64, i64* %chars, align 8
  %cmp22 = icmp ugt i64 %18, %19
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %20 = load i8*, i8** %csrc, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %cdest, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr25, i8** %cdest, align 8
  store i8 %21, i8* %22, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21
  %23 = load i64, i64* %chars, align 8
  %cmp27 = icmp ult i64 %23, -1
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %24 = load i64, i64* %chars, align 8
  %inc30 = add i64 %24, 1
  store i64 %inc30, i64* %chars, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26
  %25 = load i64, i64* %src_size.addr, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %src_size.addr, align 8
  %26 = load i8*, i8** %csrc, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr32, i8** %csrc, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %27 = load i64, i64* %dest_size.addr, align 8
  %28 = load i64, i64* %chars, align 8
  %cmp33 = icmp ugt i64 %27, %28
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %while.end
  %29 = load i8, i8* %quote.addr, align 1
  %30 = load i8*, i8** %cdest, align 8
  store i8 %29, i8* %30, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %while.end
  %31 = load i64, i64* %chars, align 8
  %cmp37 = icmp ult i64 %31, -1
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %32 = load i64, i64* %chars, align 8
  %inc40 = add i64 %32, 1
  store i64 %inc40, i64* %chars, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36
  %33 = load i64, i64* %chars, align 8
  store i64 %33, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end41, %if.then
  %34 = load i64, i64* %retval, align 8
  ret i64 %34
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
