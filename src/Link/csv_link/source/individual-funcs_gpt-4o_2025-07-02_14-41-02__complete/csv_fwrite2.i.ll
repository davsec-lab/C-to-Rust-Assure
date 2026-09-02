; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fwrite2.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fwrite2.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct._IO_FILE = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_fwrite2(%struct._IO_FILE* noundef %fp, i8* noundef %src, i64 noundef %src_size, i8 noundef zeroext %quote) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  %quote.addr = alloca i8, align 1
  %csrc = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  store i8 %quote, i8* %quote.addr, align 1
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %csrc, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %src.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8, i8* %quote.addr, align 1
  %conv = zext i8 %3 to i32
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 noundef %conv, %struct._IO_FILE* noundef %4)
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %if.end5
  %5 = load i64, i64* %src_size.addr, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %csrc, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = zext i8 %7 to i32
  %8 = load i8, i8* %quote.addr, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then10, label %if.end17

if.then10:                                        ; preds = %while.body
  %9 = load i8, i8* %quote.addr, align 1
  %conv11 = zext i8 %9 to i32
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @fputc(i32 noundef %conv11, %struct._IO_FILE* noundef %10)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then10
  store i32 -1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %while.body
  %11 = load i8*, i8** %csrc, align 8
  %12 = load i8, i8* %11, align 1
  %conv18 = zext i8 %12 to i32
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i32 @fputc(i32 noundef %conv18, %struct._IO_FILE* noundef %13)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  store i32 -1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end17
  %14 = load i64, i64* %src_size.addr, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %src_size.addr, align 8
  %15 = load i8*, i8** %csrc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %csrc, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %16 = load i8, i8* %quote.addr, align 1
  %conv24 = zext i8 %16 to i32
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call25 = call i32 @fputc(i32 noundef %conv24, %struct._IO_FILE* noundef %17)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %if.then22, %if.then15, %if.then4, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
