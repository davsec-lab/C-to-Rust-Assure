; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fini.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_fini.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @csv_fini(%struct.csv_parser* noundef %p, void (i8*, i64, i8*)* noundef %cb1, void (i32, i8*)* noundef %cb2, i8* noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.csv_parser*, align 8
  %cb1.addr = alloca void (i8*, i64, i8*)*, align 8
  %cb2.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %quoted = alloca i32, align 4
  %pstate = alloca i32, align 4
  %spaces = alloca i64, align 8
  %entry_pos = alloca i64, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store void (i8*, i64, i8*)* %cb1, void (i8*, i64, i8*)** %cb1.addr, align 8
  store void (i32, i8*)* %cb2, void (i32, i8*)** %cb2.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 1
  %2 = load i32, i32* %quoted1, align 4
  store i32 %2, i32* %quoted, align 4
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate2 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 0
  %4 = load i32, i32* %pstate2, align 8
  store i32 %4, i32* %pstate, align 4
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces3 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 2
  %6 = load i64, i64* %spaces3, align 8
  store i64 %6, i64* %spaces, align 8
  %7 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %7, i32 0, i32 4
  %8 = load i64, i64* %entry_pos4, align 8
  store i64 %8, i64* %entry_pos, align 8
  %9 = load i32, i32* %pstate, align 4
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %10, i32 0, i32 1
  %11 = load i32, i32* %quoted6, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true7, label %if.end15

land.lhs.true7:                                   ; preds = %land.lhs.true
  %12 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %12, i32 0, i32 7
  %13 = load i8, i8* %options, align 4
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 1
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %14 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options10 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %14, i32 0, i32 7
  %15 = load i8, i8* %options10, align 4
  %conv11 = zext i8 %15 to i32
  %and12 = and i32 %conv11, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true9
  %16 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %16, i32 0, i32 6
  store i32 1, i32* %status, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true9, %land.lhs.true7, %land.lhs.true, %if.end
  %17 = load i32, i32* %pstate, align 4
  switch i32 %17, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb19
    i32 0, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end15
  %18 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces16 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %18, i32 0, i32 2
  %19 = load i64, i64* %spaces16, align 8
  %add = add i64 %19, 1
  %20 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos17 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %20, i32 0, i32 4
  %21 = load i64, i64* %entry_pos17, align 8
  %sub = sub i64 %21, %add
  store i64 %sub, i64* %entry_pos17, align 8
  %22 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos18 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %22, i32 0, i32 4
  %23 = load i64, i64* %entry_pos18, align 8
  store i64 %23, i64* %entry_pos, align 8
  br label %sw.bb19

sw.bb19:                                          ; preds = %if.end15, %if.end15, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.bb19
  %24 = load i32, i32* %quoted, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %do.body
  %25 = load i64, i64* %spaces, align 8
  %26 = load i64, i64* %entry_pos, align 8
  %sub22 = sub i64 %26, %25
  store i64 %sub22, i64* %entry_pos, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body
  %27 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options24 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %27, i32 0, i32 7
  %28 = load i8, i8* %options24, align 4
  %conv25 = zext i8 %28 to i32
  %and26 = and i32 %conv25, 8
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  %29 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %29, i32 0, i32 3
  %30 = load i8*, i8** %entry_buf, align 8
  %31 = load i64, i64* %entry_pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %arrayidx, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end23
  %32 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool30 = icmp ne void (i8*, i64, i8*)* %32, null
  br i1 %tobool30, label %land.lhs.true31, label %if.else

land.lhs.true31:                                  ; preds = %if.end29
  %33 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options32 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %33, i32 0, i32 7
  %34 = load i8, i8* %options32, align 4
  %conv33 = zext i8 %34 to i32
  %and34 = and i32 %conv33, 16
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %if.else

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %35 = load i32, i32* %quoted, align 4
  %tobool37 = icmp ne i32 %35, 0
  br i1 %tobool37, label %if.else, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %36 = load i64, i64* %entry_pos, align 8
  %cmp39 = icmp eq i64 %36, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %land.lhs.true38
  %37 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %38 = load i64, i64* %entry_pos, align 8
  %39 = load i8*, i8** %data.addr, align 8
  call void %37(i8* noundef null, i64 noundef %38, i8* noundef %39)
  br label %if.end46

if.else:                                          ; preds = %land.lhs.true38, %land.lhs.true36, %land.lhs.true31, %if.end29
  %40 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool42 = icmp ne void (i8*, i64, i8*)* %40, null
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.else
  %41 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %42 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf44 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %42, i32 0, i32 3
  %43 = load i8*, i8** %entry_buf44, align 8
  %44 = load i64, i64* %entry_pos, align 8
  %45 = load i8*, i8** %data.addr, align 8
  call void %41(i8* noundef %43, i64 noundef %44, i8* noundef %45)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then41
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end

do.end:                                           ; preds = %if.end46
  br label %do.body47

do.body47:                                        ; preds = %do.end
  %46 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool48 = icmp ne void (i32, i8*)* %46, null
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body47
  %47 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %48 = load i8*, i8** %data.addr, align 8
  call void %47(i32 noundef -1, i8* noundef %48)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.body47
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end51

do.end51:                                         ; preds = %if.end50
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52, %if.end15, %do.end51
  %49 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status53 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %49, i32 0, i32 6
  store i32 0, i32* %status53, align 8
  %50 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos54 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %50, i32 0, i32 4
  store i64 0, i64* %entry_pos54, align 8
  %51 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted55 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %51, i32 0, i32 1
  store i32 0, i32* %quoted55, align 4
  %52 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces56 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %52, i32 0, i32 2
  store i64 0, i64* %spaces56, align 8
  %53 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate57 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %53, i32 0, i32 0
  store i32 0, i32* %pstate57, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then14, %if.then
  %54 = load i32, i32* %retval, align 4
  ret i32 %54
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
