; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_parse.i.bc'
source_filename = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_parse.i"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

@.str = private unnamed_addr constant [25 x i8] c"received null csv_parser\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"p && \22received null csv_parser\22\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"libcsv.c\00", align 1
@__PRETTY_FUNCTION__.csv_parse = private unnamed_addr constant [125 x i8] c"size_t csv_parse(struct csv_parser *, const void *, size_t, void (*)(void *, size_t, void *), void (*)(int, void *), void *)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @csv_parse(%struct.csv_parser* noundef %p, i8* noundef %s, i64 noundef %len, void (i8*, i64, i8*)* noundef %cb1, void (i32, i8*)* noundef %cb2, i8* noundef %data) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.csv_parser*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %cb1.addr = alloca void (i8*, i64, i8*)*, align 8
  %cb2.addr = alloca void (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %us = alloca i8*, align 8
  %c = alloca i8, align 1
  %pos = alloca i64, align 8
  %delim = alloca i8, align 1
  %quote = alloca i8, align 1
  %is_space = alloca i32 (i8)*, align 8
  %is_term = alloca i32 (i8)*, align 8
  %quoted = alloca i32, align 4
  %pstate = alloca i32, align 4
  %spaces = alloca i64, align 8
  %entry_pos = alloca i64, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store void (i8*, i64, i8*)* %cb1, void (i8*, i64, i8*)** %cb1.addr, align 8
  store void (i32, i8*)* %cb2, void (i32, i8*)** %cb2.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  br i1 true, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([125 x i8], [125 x i8]* @__PRETTY_FUNCTION__.csv_parse, i64 0, i64 0)) #3
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load i8*, i8** %s.addr, align 8
  store i8* %2, i8** %us, align 8
  store i64 0, i64* %pos, align 8
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 9
  %4 = load i8, i8* %delim_char, align 2
  store i8 %4, i8* %delim, align 1
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 8
  %6 = load i8, i8* %quote_char, align 1
  store i8 %6, i8* %quote, align 1
  %7 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_space3 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %7, i32 0, i32 10
  %8 = load i32 (i8)*, i32 (i8)** %is_space3, align 8
  store i32 (i8)* %8, i32 (i8)** %is_space, align 8
  %9 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %is_term4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %9, i32 0, i32 11
  %10 = load i32 (i8)*, i32 (i8)** %is_term4, align 8
  store i32 (i8)* %10, i32 (i8)** %is_term, align 8
  %11 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted5 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %11, i32 0, i32 1
  %12 = load i32, i32* %quoted5, align 4
  store i32 %12, i32* %quoted, align 4
  %13 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %13, i32 0, i32 0
  %14 = load i32, i32* %pstate6, align 8
  store i32 %14, i32* %pstate, align 4
  %15 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces7 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %15, i32 0, i32 2
  %16 = load i64, i64* %spaces7, align 8
  store i64 %16, i64* %spaces, align 8
  %17 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos8 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %17, i32 0, i32 4
  %18 = load i64, i64* %entry_pos8, align 8
  store i64 %18, i64* %entry_pos, align 8
  %19 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %19, i32 0, i32 3
  %20 = load i8*, i8** %entry_buf, align 8
  %tobool9 = icmp ne i8* %20, null
  br i1 %tobool9, label %if.end20, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end2
  %21 = load i64, i64* %pos, align 8
  %22 = load i64, i64* %len.addr, align 8
  %cmp11 = icmp ult i64 %21, %22
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %land.lhs.true10
  %23 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %call = call i32 bitcast (i32 (...)* @csv_increase_buffer to i32 (%struct.csv_parser*)*)(%struct.csv_parser* noundef %23)
  %cmp13 = icmp ne i32 %call, 0
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.then12
  %24 = load i32, i32* %quoted, align 4
  %25 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted15 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %25, i32 0, i32 1
  store i32 %24, i32* %quoted15, align 4
  %26 = load i32, i32* %pstate, align 4
  %27 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate16 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %27, i32 0, i32 0
  store i32 %26, i32* %pstate16, align 8
  %28 = load i64, i64* %spaces, align 8
  %29 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces17 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %29, i32 0, i32 2
  store i64 %28, i64* %spaces17, align 8
  %30 = load i64, i64* %entry_pos, align 8
  %31 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos18 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %31, i32 0, i32 4
  store i64 %30, i64* %entry_pos18, align 8
  %32 = load i64, i64* %pos, align 8
  store i64 %32, i64* %retval, align 8
  br label %return

if.end19:                                         ; preds = %if.then12
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %land.lhs.true10, %if.end2
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end120, %if.then53, %if.end20
  %33 = load i64, i64* %pos, align 8
  %34 = load i64, i64* %len.addr, align 8
  %cmp21 = icmp ult i64 %33, %34
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i64, i64* %entry_pos, align 8
  %36 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %36, i32 0, i32 7
  %37 = load i8, i8* %options, align 4
  %conv = zext i8 %37 to i32
  %and = and i32 %conv, 8
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %38 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %38, i32 0, i32 5
  %39 = load i64, i64* %entry_size, align 8
  %sub = sub i64 %39, 1
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %40 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size23 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %40, i32 0, i32 5
  %41 = load i64, i64* %entry_size23, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %41, %cond.false ]
  %cmp24 = icmp eq i64 %35, %cond
  br i1 %cmp24, label %if.then26, label %if.end36

if.then26:                                        ; preds = %cond.end
  %42 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %call27 = call i32 bitcast (i32 (...)* @csv_increase_buffer to i32 (%struct.csv_parser*)*)(%struct.csv_parser* noundef %42)
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.then26
  %43 = load i32, i32* %quoted, align 4
  %44 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted31 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %44, i32 0, i32 1
  store i32 %43, i32* %quoted31, align 4
  %45 = load i32, i32* %pstate, align 4
  %46 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate32 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %46, i32 0, i32 0
  store i32 %45, i32* %pstate32, align 8
  %47 = load i64, i64* %spaces, align 8
  %48 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces33 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %48, i32 0, i32 2
  store i64 %47, i64* %spaces33, align 8
  %49 = load i64, i64* %entry_pos, align 8
  %50 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos34 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %50, i32 0, i32 4
  store i64 %49, i64* %entry_pos34, align 8
  %51 = load i64, i64* %pos, align 8
  store i64 %51, i64* %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.then26
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %cond.end
  %52 = load i8*, i8** %us, align 8
  %53 = load i64, i64* %pos, align 8
  %inc = add i64 %53, 1
  store i64 %inc, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = load i8, i8* %arrayidx, align 1
  store i8 %54, i8* %c, align 1
  %55 = load i32, i32* %pstate, align 4
  switch i32 %55, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb173
    i32 3, label %sw.bb332
  ]

sw.bb:                                            ; preds = %if.end36, %if.end36
  %56 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %tobool37 = icmp ne i32 (i8)* %56, null
  br i1 %tobool37, label %cond.true38, label %cond.false41

cond.true38:                                      ; preds = %sw.bb
  %57 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %58 = load i8, i8* %c, align 1
  %call39 = call i32 %57(i8 noundef zeroext %58)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true48, label %if.else54

cond.false41:                                     ; preds = %sw.bb
  %59 = load i8, i8* %c, align 1
  %conv42 = zext i8 %59 to i32
  %cmp43 = icmp eq i32 %conv42, 32
  br i1 %cmp43, label %land.lhs.true48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false41
  %60 = load i8, i8* %c, align 1
  %conv45 = zext i8 %60 to i32
  %cmp46 = icmp eq i32 %conv45, 9
  br i1 %cmp46, label %land.lhs.true48, label %if.else54

land.lhs.true48:                                  ; preds = %lor.lhs.false, %cond.false41, %cond.true38
  %61 = load i8, i8* %c, align 1
  %conv49 = zext i8 %61 to i32
  %62 = load i8, i8* %delim, align 1
  %conv50 = zext i8 %62 to i32
  %cmp51 = icmp ne i32 %conv49, %conv50
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %land.lhs.true48
  br label %while.cond, !llvm.loop !10

if.else54:                                        ; preds = %land.lhs.true48, %lor.lhs.false, %cond.true38
  %63 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %tobool55 = icmp ne i32 (i8)* %63, null
  br i1 %tobool55, label %cond.true56, label %cond.false59

cond.true56:                                      ; preds = %if.else54
  %64 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %65 = load i8, i8* %c, align 1
  %call57 = call i32 %64(i8 noundef zeroext %65)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then67, label %if.else121

cond.false59:                                     ; preds = %if.else54
  %66 = load i8, i8* %c, align 1
  %conv60 = zext i8 %66 to i32
  %cmp61 = icmp eq i32 %conv60, 13
  br i1 %cmp61, label %if.then67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %cond.false59
  %67 = load i8, i8* %c, align 1
  %conv64 = zext i8 %67 to i32
  %cmp65 = icmp eq i32 %conv64, 10
  br i1 %cmp65, label %if.then67, label %if.else121

if.then67:                                        ; preds = %lor.lhs.false63, %cond.false59, %cond.true56
  %68 = load i32, i32* %pstate, align 4
  %cmp68 = icmp eq i32 %68, 1
  br i1 %cmp68, label %if.then70, label %if.else107

if.then70:                                        ; preds = %if.then67
  br label %do.body

do.body:                                          ; preds = %if.then70
  %69 = load i32, i32* %quoted, align 4
  %tobool71 = icmp ne i32 %69, 0
  br i1 %tobool71, label %if.end74, label %if.then72

if.then72:                                        ; preds = %do.body
  %70 = load i64, i64* %spaces, align 8
  %71 = load i64, i64* %entry_pos, align 8
  %sub73 = sub i64 %71, %70
  store i64 %sub73, i64* %entry_pos, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %do.body
  %72 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options75 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %72, i32 0, i32 7
  %73 = load i8, i8* %options75, align 4
  %conv76 = zext i8 %73 to i32
  %and77 = and i32 %conv76, 8
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end74
  %74 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf80 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %74, i32 0, i32 3
  %75 = load i8*, i8** %entry_buf80, align 8
  %76 = load i64, i64* %entry_pos, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %arrayidx81, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end74
  %77 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool83 = icmp ne void (i8*, i64, i8*)* %77, null
  br i1 %tobool83, label %land.lhs.true84, label %if.else95

land.lhs.true84:                                  ; preds = %if.end82
  %78 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options85 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %78, i32 0, i32 7
  %79 = load i8, i8* %options85, align 4
  %conv86 = zext i8 %79 to i32
  %and87 = and i32 %conv86, 16
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %land.lhs.true89, label %if.else95

land.lhs.true89:                                  ; preds = %land.lhs.true84
  %80 = load i32, i32* %quoted, align 4
  %tobool90 = icmp ne i32 %80, 0
  br i1 %tobool90, label %if.else95, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %land.lhs.true89
  %81 = load i64, i64* %entry_pos, align 8
  %cmp92 = icmp eq i64 %81, 0
  br i1 %cmp92, label %if.then94, label %if.else95

if.then94:                                        ; preds = %land.lhs.true91
  %82 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %83 = load i64, i64* %entry_pos, align 8
  %84 = load i8*, i8** %data.addr, align 8
  call void %82(i8* noundef null, i64 noundef %83, i8* noundef %84)
  br label %if.end100

if.else95:                                        ; preds = %land.lhs.true91, %land.lhs.true89, %land.lhs.true84, %if.end82
  %85 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool96 = icmp ne void (i8*, i64, i8*)* %85, null
  br i1 %tobool96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.else95
  %86 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %87 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf98 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %87, i32 0, i32 3
  %88 = load i8*, i8** %entry_buf98, align 8
  %89 = load i64, i64* %entry_pos, align 8
  %90 = load i8*, i8** %data.addr, align 8
  call void %86(i8* noundef %88, i64 noundef %89, i8* noundef %90)
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.else95
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then94
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end

do.end:                                           ; preds = %if.end100
  br label %do.body101

do.body101:                                       ; preds = %do.end
  %91 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool102 = icmp ne void (i32, i8*)* %91, null
  br i1 %tobool102, label %if.then103, label %if.end105

if.then103:                                       ; preds = %do.body101
  %92 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %93 = load i8, i8* %c, align 1
  %conv104 = zext i8 %93 to i32
  %94 = load i8*, i8** %data.addr, align 8
  call void %92(i32 noundef %conv104, i8* noundef %94)
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %do.body101
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end106

do.end106:                                        ; preds = %if.end105
  br label %if.end120

if.else107:                                       ; preds = %if.then67
  %95 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options108 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %95, i32 0, i32 7
  %96 = load i8, i8* %options108, align 4
  %conv109 = zext i8 %96 to i32
  %and110 = and i32 %conv109, 2
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then112, label %if.end119

if.then112:                                       ; preds = %if.else107
  br label %do.body113

do.body113:                                       ; preds = %if.then112
  %97 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool114 = icmp ne void (i32, i8*)* %97, null
  br i1 %tobool114, label %if.then115, label %if.end117

if.then115:                                       ; preds = %do.body113
  %98 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %99 = load i8, i8* %c, align 1
  %conv116 = zext i8 %99 to i32
  %100 = load i8*, i8** %data.addr, align 8
  call void %98(i32 noundef %conv116, i8* noundef %100)
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %do.body113
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end118

do.end118:                                        ; preds = %if.end117
  br label %if.end119

if.end119:                                        ; preds = %do.end118, %if.else107
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %do.end106
  br label %while.cond, !llvm.loop !10

if.else121:                                       ; preds = %lor.lhs.false63, %cond.true56
  %101 = load i8, i8* %c, align 1
  %conv122 = zext i8 %101 to i32
  %102 = load i8, i8* %delim, align 1
  %conv123 = zext i8 %102 to i32
  %cmp124 = icmp eq i32 %conv122, %conv123
  br i1 %cmp124, label %if.then126, label %if.else159

if.then126:                                       ; preds = %if.else121
  br label %do.body127

do.body127:                                       ; preds = %if.then126
  %103 = load i32, i32* %quoted, align 4
  %tobool128 = icmp ne i32 %103, 0
  br i1 %tobool128, label %if.end131, label %if.then129

if.then129:                                       ; preds = %do.body127
  %104 = load i64, i64* %spaces, align 8
  %105 = load i64, i64* %entry_pos, align 8
  %sub130 = sub i64 %105, %104
  store i64 %sub130, i64* %entry_pos, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %do.body127
  %106 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options132 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %106, i32 0, i32 7
  %107 = load i8, i8* %options132, align 4
  %conv133 = zext i8 %107 to i32
  %and134 = and i32 %conv133, 8
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then136, label %if.end139

if.then136:                                       ; preds = %if.end131
  %108 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf137 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %108, i32 0, i32 3
  %109 = load i8*, i8** %entry_buf137, align 8
  %110 = load i64, i64* %entry_pos, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8 0, i8* %arrayidx138, align 1
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end131
  %111 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool140 = icmp ne void (i8*, i64, i8*)* %111, null
  br i1 %tobool140, label %land.lhs.true141, label %if.else152

land.lhs.true141:                                 ; preds = %if.end139
  %112 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options142 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %112, i32 0, i32 7
  %113 = load i8, i8* %options142, align 4
  %conv143 = zext i8 %113 to i32
  %and144 = and i32 %conv143, 16
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %land.lhs.true146, label %if.else152

land.lhs.true146:                                 ; preds = %land.lhs.true141
  %114 = load i32, i32* %quoted, align 4
  %tobool147 = icmp ne i32 %114, 0
  br i1 %tobool147, label %if.else152, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %land.lhs.true146
  %115 = load i64, i64* %entry_pos, align 8
  %cmp149 = icmp eq i64 %115, 0
  br i1 %cmp149, label %if.then151, label %if.else152

if.then151:                                       ; preds = %land.lhs.true148
  %116 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %117 = load i64, i64* %entry_pos, align 8
  %118 = load i8*, i8** %data.addr, align 8
  call void %116(i8* noundef null, i64 noundef %117, i8* noundef %118)
  br label %if.end157

if.else152:                                       ; preds = %land.lhs.true148, %land.lhs.true146, %land.lhs.true141, %if.end139
  %119 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool153 = icmp ne void (i8*, i64, i8*)* %119, null
  br i1 %tobool153, label %if.then154, label %if.end156

if.then154:                                       ; preds = %if.else152
  %120 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %121 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf155 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %121, i32 0, i32 3
  %122 = load i8*, i8** %entry_buf155, align 8
  %123 = load i64, i64* %entry_pos, align 8
  %124 = load i8*, i8** %data.addr, align 8
  call void %120(i8* noundef %122, i64 noundef %123, i8* noundef %124)
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.else152
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then151
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end158

do.end158:                                        ; preds = %if.end157
  br label %sw.epilog

if.else159:                                       ; preds = %if.else121
  %125 = load i8, i8* %c, align 1
  %conv160 = zext i8 %125 to i32
  %126 = load i8, i8* %quote, align 1
  %conv161 = zext i8 %126 to i32
  %cmp162 = icmp eq i32 %conv160, %conv161
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %if.else159
  store i32 2, i32* %pstate, align 4
  store i32 1, i32* %quoted, align 4
  br label %if.end169

if.else165:                                       ; preds = %if.else159
  store i32 2, i32* %pstate, align 4
  store i32 0, i32* %quoted, align 4
  %127 = load i8, i8* %c, align 1
  %128 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf166 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %128, i32 0, i32 3
  %129 = load i8*, i8** %entry_buf166, align 8
  %130 = load i64, i64* %entry_pos, align 8
  %inc167 = add i64 %130, 1
  store i64 %inc167, i64* %entry_pos, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8 %127, i8* %arrayidx168, align 1
  br label %if.end169

if.end169:                                        ; preds = %if.else165, %if.then164
  br label %if.end170

if.end170:                                        ; preds = %if.end169
  br label %if.end171

if.end171:                                        ; preds = %if.end170
  br label %if.end172

if.end172:                                        ; preds = %if.end171
  br label %sw.epilog

sw.bb173:                                         ; preds = %if.end36
  %131 = load i8, i8* %c, align 1
  %conv174 = zext i8 %131 to i32
  %132 = load i8, i8* %quote, align 1
  %conv175 = zext i8 %132 to i32
  %cmp176 = icmp eq i32 %conv174, %conv175
  br i1 %cmp176, label %if.then178, label %if.else200

if.then178:                                       ; preds = %sw.bb173
  %133 = load i32, i32* %quoted, align 4
  %tobool179 = icmp ne i32 %133, 0
  br i1 %tobool179, label %if.then180, label %if.else184

if.then180:                                       ; preds = %if.then178
  %134 = load i8, i8* %c, align 1
  %135 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf181 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %135, i32 0, i32 3
  %136 = load i8*, i8** %entry_buf181, align 8
  %137 = load i64, i64* %entry_pos, align 8
  %inc182 = add i64 %137, 1
  store i64 %inc182, i64* %entry_pos, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8 %134, i8* %arrayidx183, align 1
  store i32 3, i32* %pstate, align 4
  br label %if.end199

if.else184:                                       ; preds = %if.then178
  %138 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options185 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %138, i32 0, i32 7
  %139 = load i8, i8* %options185, align 4
  %conv186 = zext i8 %139 to i32
  %and187 = and i32 %conv186, 1
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %if.then189, label %if.end195

if.then189:                                       ; preds = %if.else184
  %140 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %140, i32 0, i32 6
  store i32 1, i32* %status, align 8
  %141 = load i32, i32* %quoted, align 4
  %142 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted190 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %142, i32 0, i32 1
  store i32 %141, i32* %quoted190, align 4
  %143 = load i32, i32* %pstate, align 4
  %144 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate191 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %144, i32 0, i32 0
  store i32 %143, i32* %pstate191, align 8
  %145 = load i64, i64* %spaces, align 8
  %146 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces192 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %146, i32 0, i32 2
  store i64 %145, i64* %spaces192, align 8
  %147 = load i64, i64* %entry_pos, align 8
  %148 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos193 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %148, i32 0, i32 4
  store i64 %147, i64* %entry_pos193, align 8
  %149 = load i64, i64* %pos, align 8
  %sub194 = sub i64 %149, 1
  store i64 %sub194, i64* %retval, align 8
  br label %return

if.end195:                                        ; preds = %if.else184
  %150 = load i8, i8* %c, align 1
  %151 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf196 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %151, i32 0, i32 3
  %152 = load i8*, i8** %entry_buf196, align 8
  %153 = load i64, i64* %entry_pos, align 8
  %inc197 = add i64 %153, 1
  store i64 %inc197, i64* %entry_pos, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8 %150, i8* %arrayidx198, align 1
  store i64 0, i64* %spaces, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.end195, %if.then180
  br label %if.end331

if.else200:                                       ; preds = %sw.bb173
  %154 = load i8, i8* %c, align 1
  %conv201 = zext i8 %154 to i32
  %155 = load i8, i8* %delim, align 1
  %conv202 = zext i8 %155 to i32
  %cmp203 = icmp eq i32 %conv201, %conv202
  br i1 %cmp203, label %if.then205, label %if.else245

if.then205:                                       ; preds = %if.else200
  %156 = load i32, i32* %quoted, align 4
  %tobool206 = icmp ne i32 %156, 0
  br i1 %tobool206, label %if.then207, label %if.else211

if.then207:                                       ; preds = %if.then205
  %157 = load i8, i8* %c, align 1
  %158 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf208 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %158, i32 0, i32 3
  %159 = load i8*, i8** %entry_buf208, align 8
  %160 = load i64, i64* %entry_pos, align 8
  %inc209 = add i64 %160, 1
  store i64 %inc209, i64* %entry_pos, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8 %157, i8* %arrayidx210, align 1
  br label %if.end244

if.else211:                                       ; preds = %if.then205
  br label %do.body212

do.body212:                                       ; preds = %if.else211
  %161 = load i32, i32* %quoted, align 4
  %tobool213 = icmp ne i32 %161, 0
  br i1 %tobool213, label %if.end216, label %if.then214

if.then214:                                       ; preds = %do.body212
  %162 = load i64, i64* %spaces, align 8
  %163 = load i64, i64* %entry_pos, align 8
  %sub215 = sub i64 %163, %162
  store i64 %sub215, i64* %entry_pos, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.then214, %do.body212
  %164 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options217 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %164, i32 0, i32 7
  %165 = load i8, i8* %options217, align 4
  %conv218 = zext i8 %165 to i32
  %and219 = and i32 %conv218, 8
  %tobool220 = icmp ne i32 %and219, 0
  br i1 %tobool220, label %if.then221, label %if.end224

if.then221:                                       ; preds = %if.end216
  %166 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf222 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %166, i32 0, i32 3
  %167 = load i8*, i8** %entry_buf222, align 8
  %168 = load i64, i64* %entry_pos, align 8
  %arrayidx223 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8 0, i8* %arrayidx223, align 1
  br label %if.end224

if.end224:                                        ; preds = %if.then221, %if.end216
  %169 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool225 = icmp ne void (i8*, i64, i8*)* %169, null
  br i1 %tobool225, label %land.lhs.true226, label %if.else237

land.lhs.true226:                                 ; preds = %if.end224
  %170 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options227 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %170, i32 0, i32 7
  %171 = load i8, i8* %options227, align 4
  %conv228 = zext i8 %171 to i32
  %and229 = and i32 %conv228, 16
  %tobool230 = icmp ne i32 %and229, 0
  br i1 %tobool230, label %land.lhs.true231, label %if.else237

land.lhs.true231:                                 ; preds = %land.lhs.true226
  %172 = load i32, i32* %quoted, align 4
  %tobool232 = icmp ne i32 %172, 0
  br i1 %tobool232, label %if.else237, label %land.lhs.true233

land.lhs.true233:                                 ; preds = %land.lhs.true231
  %173 = load i64, i64* %entry_pos, align 8
  %cmp234 = icmp eq i64 %173, 0
  br i1 %cmp234, label %if.then236, label %if.else237

if.then236:                                       ; preds = %land.lhs.true233
  %174 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %175 = load i64, i64* %entry_pos, align 8
  %176 = load i8*, i8** %data.addr, align 8
  call void %174(i8* noundef null, i64 noundef %175, i8* noundef %176)
  br label %if.end242

if.else237:                                       ; preds = %land.lhs.true233, %land.lhs.true231, %land.lhs.true226, %if.end224
  %177 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool238 = icmp ne void (i8*, i64, i8*)* %177, null
  br i1 %tobool238, label %if.then239, label %if.end241

if.then239:                                       ; preds = %if.else237
  %178 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %179 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf240 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %179, i32 0, i32 3
  %180 = load i8*, i8** %entry_buf240, align 8
  %181 = load i64, i64* %entry_pos, align 8
  %182 = load i8*, i8** %data.addr, align 8
  call void %178(i8* noundef %180, i64 noundef %181, i8* noundef %182)
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %if.else237
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.then236
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end243

do.end243:                                        ; preds = %if.end242
  br label %if.end244

if.end244:                                        ; preds = %do.end243, %if.then207
  br label %if.end330

if.else245:                                       ; preds = %if.else200
  %183 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %tobool246 = icmp ne i32 (i8)* %183, null
  br i1 %tobool246, label %cond.true247, label %cond.false250

cond.true247:                                     ; preds = %if.else245
  %184 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %185 = load i8, i8* %c, align 1
  %call248 = call i32 %184(i8 noundef zeroext %185)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.then258, label %if.else304

cond.false250:                                    ; preds = %if.else245
  %186 = load i8, i8* %c, align 1
  %conv251 = zext i8 %186 to i32
  %cmp252 = icmp eq i32 %conv251, 13
  br i1 %cmp252, label %if.then258, label %lor.lhs.false254

lor.lhs.false254:                                 ; preds = %cond.false250
  %187 = load i8, i8* %c, align 1
  %conv255 = zext i8 %187 to i32
  %cmp256 = icmp eq i32 %conv255, 10
  br i1 %cmp256, label %if.then258, label %if.else304

if.then258:                                       ; preds = %lor.lhs.false254, %cond.false250, %cond.true247
  %188 = load i32, i32* %quoted, align 4
  %tobool259 = icmp ne i32 %188, 0
  br i1 %tobool259, label %if.else299, label %if.then260

if.then260:                                       ; preds = %if.then258
  br label %do.body261

do.body261:                                       ; preds = %if.then260
  %189 = load i32, i32* %quoted, align 4
  %tobool262 = icmp ne i32 %189, 0
  br i1 %tobool262, label %if.end265, label %if.then263

if.then263:                                       ; preds = %do.body261
  %190 = load i64, i64* %spaces, align 8
  %191 = load i64, i64* %entry_pos, align 8
  %sub264 = sub i64 %191, %190
  store i64 %sub264, i64* %entry_pos, align 8
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %do.body261
  %192 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options266 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %192, i32 0, i32 7
  %193 = load i8, i8* %options266, align 4
  %conv267 = zext i8 %193 to i32
  %and268 = and i32 %conv267, 8
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %if.then270, label %if.end273

if.then270:                                       ; preds = %if.end265
  %194 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf271 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %194, i32 0, i32 3
  %195 = load i8*, i8** %entry_buf271, align 8
  %196 = load i64, i64* %entry_pos, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8 0, i8* %arrayidx272, align 1
  br label %if.end273

if.end273:                                        ; preds = %if.then270, %if.end265
  %197 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool274 = icmp ne void (i8*, i64, i8*)* %197, null
  br i1 %tobool274, label %land.lhs.true275, label %if.else286

land.lhs.true275:                                 ; preds = %if.end273
  %198 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options276 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %198, i32 0, i32 7
  %199 = load i8, i8* %options276, align 4
  %conv277 = zext i8 %199 to i32
  %and278 = and i32 %conv277, 16
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %land.lhs.true280, label %if.else286

land.lhs.true280:                                 ; preds = %land.lhs.true275
  %200 = load i32, i32* %quoted, align 4
  %tobool281 = icmp ne i32 %200, 0
  br i1 %tobool281, label %if.else286, label %land.lhs.true282

land.lhs.true282:                                 ; preds = %land.lhs.true280
  %201 = load i64, i64* %entry_pos, align 8
  %cmp283 = icmp eq i64 %201, 0
  br i1 %cmp283, label %if.then285, label %if.else286

if.then285:                                       ; preds = %land.lhs.true282
  %202 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %203 = load i64, i64* %entry_pos, align 8
  %204 = load i8*, i8** %data.addr, align 8
  call void %202(i8* noundef null, i64 noundef %203, i8* noundef %204)
  br label %if.end291

if.else286:                                       ; preds = %land.lhs.true282, %land.lhs.true280, %land.lhs.true275, %if.end273
  %205 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool287 = icmp ne void (i8*, i64, i8*)* %205, null
  br i1 %tobool287, label %if.then288, label %if.end290

if.then288:                                       ; preds = %if.else286
  %206 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %207 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf289 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %207, i32 0, i32 3
  %208 = load i8*, i8** %entry_buf289, align 8
  %209 = load i64, i64* %entry_pos, align 8
  %210 = load i8*, i8** %data.addr, align 8
  call void %206(i8* noundef %208, i64 noundef %209, i8* noundef %210)
  br label %if.end290

if.end290:                                        ; preds = %if.then288, %if.else286
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.then285
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end292

do.end292:                                        ; preds = %if.end291
  br label %do.body293

do.body293:                                       ; preds = %do.end292
  %211 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool294 = icmp ne void (i32, i8*)* %211, null
  br i1 %tobool294, label %if.then295, label %if.end297

if.then295:                                       ; preds = %do.body293
  %212 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %213 = load i8, i8* %c, align 1
  %conv296 = zext i8 %213 to i32
  %214 = load i8*, i8** %data.addr, align 8
  call void %212(i32 noundef %conv296, i8* noundef %214)
  br label %if.end297

if.end297:                                        ; preds = %if.then295, %do.body293
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end298

do.end298:                                        ; preds = %if.end297
  br label %if.end303

if.else299:                                       ; preds = %if.then258
  %215 = load i8, i8* %c, align 1
  %216 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf300 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %216, i32 0, i32 3
  %217 = load i8*, i8** %entry_buf300, align 8
  %218 = load i64, i64* %entry_pos, align 8
  %inc301 = add i64 %218, 1
  store i64 %inc301, i64* %entry_pos, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8 %215, i8* %arrayidx302, align 1
  br label %if.end303

if.end303:                                        ; preds = %if.else299, %do.end298
  br label %if.end329

if.else304:                                       ; preds = %lor.lhs.false254, %cond.true247
  %219 = load i32, i32* %quoted, align 4
  %tobool305 = icmp ne i32 %219, 0
  br i1 %tobool305, label %if.else324, label %land.lhs.true306

land.lhs.true306:                                 ; preds = %if.else304
  %220 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %tobool307 = icmp ne i32 (i8)* %220, null
  br i1 %tobool307, label %cond.true308, label %cond.false311

cond.true308:                                     ; preds = %land.lhs.true306
  %221 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %222 = load i8, i8* %c, align 1
  %call309 = call i32 %221(i8 noundef zeroext %222)
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.then319, label %if.else324

cond.false311:                                    ; preds = %land.lhs.true306
  %223 = load i8, i8* %c, align 1
  %conv312 = zext i8 %223 to i32
  %cmp313 = icmp eq i32 %conv312, 32
  br i1 %cmp313, label %if.then319, label %lor.lhs.false315

lor.lhs.false315:                                 ; preds = %cond.false311
  %224 = load i8, i8* %c, align 1
  %conv316 = zext i8 %224 to i32
  %cmp317 = icmp eq i32 %conv316, 9
  br i1 %cmp317, label %if.then319, label %if.else324

if.then319:                                       ; preds = %lor.lhs.false315, %cond.false311, %cond.true308
  %225 = load i8, i8* %c, align 1
  %226 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf320 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %226, i32 0, i32 3
  %227 = load i8*, i8** %entry_buf320, align 8
  %228 = load i64, i64* %entry_pos, align 8
  %inc321 = add i64 %228, 1
  store i64 %inc321, i64* %entry_pos, align 8
  %arrayidx322 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8 %225, i8* %arrayidx322, align 1
  %229 = load i64, i64* %spaces, align 8
  %inc323 = add i64 %229, 1
  store i64 %inc323, i64* %spaces, align 8
  br label %if.end328

if.else324:                                       ; preds = %lor.lhs.false315, %cond.true308, %if.else304
  %230 = load i8, i8* %c, align 1
  %231 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf325 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %231, i32 0, i32 3
  %232 = load i8*, i8** %entry_buf325, align 8
  %233 = load i64, i64* %entry_pos, align 8
  %inc326 = add i64 %233, 1
  store i64 %inc326, i64* %entry_pos, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %232, i64 %233
  store i8 %230, i8* %arrayidx327, align 1
  store i64 0, i64* %spaces, align 8
  br label %if.end328

if.end328:                                        ; preds = %if.else324, %if.then319
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.end303
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %if.end244
  br label %if.end331

if.end331:                                        ; preds = %if.end330, %if.end199
  br label %sw.epilog

sw.bb332:                                         ; preds = %if.end36
  %234 = load i8, i8* %c, align 1
  %conv333 = zext i8 %234 to i32
  %235 = load i8, i8* %delim, align 1
  %conv334 = zext i8 %235 to i32
  %cmp335 = icmp eq i32 %conv333, %conv334
  br i1 %cmp335, label %if.then337, label %if.else371

if.then337:                                       ; preds = %sw.bb332
  %236 = load i64, i64* %spaces, align 8
  %add = add i64 %236, 1
  %237 = load i64, i64* %entry_pos, align 8
  %sub338 = sub i64 %237, %add
  store i64 %sub338, i64* %entry_pos, align 8
  br label %do.body339

do.body339:                                       ; preds = %if.then337
  %238 = load i32, i32* %quoted, align 4
  %tobool340 = icmp ne i32 %238, 0
  br i1 %tobool340, label %if.end343, label %if.then341

if.then341:                                       ; preds = %do.body339
  %239 = load i64, i64* %spaces, align 8
  %240 = load i64, i64* %entry_pos, align 8
  %sub342 = sub i64 %240, %239
  store i64 %sub342, i64* %entry_pos, align 8
  br label %if.end343

if.end343:                                        ; preds = %if.then341, %do.body339
  %241 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options344 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %241, i32 0, i32 7
  %242 = load i8, i8* %options344, align 4
  %conv345 = zext i8 %242 to i32
  %and346 = and i32 %conv345, 8
  %tobool347 = icmp ne i32 %and346, 0
  br i1 %tobool347, label %if.then348, label %if.end351

if.then348:                                       ; preds = %if.end343
  %243 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf349 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %243, i32 0, i32 3
  %244 = load i8*, i8** %entry_buf349, align 8
  %245 = load i64, i64* %entry_pos, align 8
  %arrayidx350 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8 0, i8* %arrayidx350, align 1
  br label %if.end351

if.end351:                                        ; preds = %if.then348, %if.end343
  %246 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool352 = icmp ne void (i8*, i64, i8*)* %246, null
  br i1 %tobool352, label %land.lhs.true353, label %if.else364

land.lhs.true353:                                 ; preds = %if.end351
  %247 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options354 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %247, i32 0, i32 7
  %248 = load i8, i8* %options354, align 4
  %conv355 = zext i8 %248 to i32
  %and356 = and i32 %conv355, 16
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %land.lhs.true358, label %if.else364

land.lhs.true358:                                 ; preds = %land.lhs.true353
  %249 = load i32, i32* %quoted, align 4
  %tobool359 = icmp ne i32 %249, 0
  br i1 %tobool359, label %if.else364, label %land.lhs.true360

land.lhs.true360:                                 ; preds = %land.lhs.true358
  %250 = load i64, i64* %entry_pos, align 8
  %cmp361 = icmp eq i64 %250, 0
  br i1 %cmp361, label %if.then363, label %if.else364

if.then363:                                       ; preds = %land.lhs.true360
  %251 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %252 = load i64, i64* %entry_pos, align 8
  %253 = load i8*, i8** %data.addr, align 8
  call void %251(i8* noundef null, i64 noundef %252, i8* noundef %253)
  br label %if.end369

if.else364:                                       ; preds = %land.lhs.true360, %land.lhs.true358, %land.lhs.true353, %if.end351
  %254 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool365 = icmp ne void (i8*, i64, i8*)* %254, null
  br i1 %tobool365, label %if.then366, label %if.end368

if.then366:                                       ; preds = %if.else364
  %255 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %256 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf367 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %256, i32 0, i32 3
  %257 = load i8*, i8** %entry_buf367, align 8
  %258 = load i64, i64* %entry_pos, align 8
  %259 = load i8*, i8** %data.addr, align 8
  call void %255(i8* noundef %257, i64 noundef %258, i8* noundef %259)
  br label %if.end368

if.end368:                                        ; preds = %if.then366, %if.else364
  br label %if.end369

if.end369:                                        ; preds = %if.end368, %if.then363
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end370

do.end370:                                        ; preds = %if.end369
  br label %if.end487

if.else371:                                       ; preds = %sw.bb332
  %260 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %tobool372 = icmp ne i32 (i8)* %260, null
  br i1 %tobool372, label %cond.true373, label %cond.false376

cond.true373:                                     ; preds = %if.else371
  %261 = load i32 (i8)*, i32 (i8)** %is_term, align 8
  %262 = load i8, i8* %c, align 1
  %call374 = call i32 %261(i8 noundef zeroext %262)
  %tobool375 = icmp ne i32 %call374, 0
  br i1 %tobool375, label %if.then384, label %if.else425

cond.false376:                                    ; preds = %if.else371
  %263 = load i8, i8* %c, align 1
  %conv377 = zext i8 %263 to i32
  %cmp378 = icmp eq i32 %conv377, 13
  br i1 %cmp378, label %if.then384, label %lor.lhs.false380

lor.lhs.false380:                                 ; preds = %cond.false376
  %264 = load i8, i8* %c, align 1
  %conv381 = zext i8 %264 to i32
  %cmp382 = icmp eq i32 %conv381, 10
  br i1 %cmp382, label %if.then384, label %if.else425

if.then384:                                       ; preds = %lor.lhs.false380, %cond.false376, %cond.true373
  %265 = load i64, i64* %spaces, align 8
  %add385 = add i64 %265, 1
  %266 = load i64, i64* %entry_pos, align 8
  %sub386 = sub i64 %266, %add385
  store i64 %sub386, i64* %entry_pos, align 8
  br label %do.body387

do.body387:                                       ; preds = %if.then384
  %267 = load i32, i32* %quoted, align 4
  %tobool388 = icmp ne i32 %267, 0
  br i1 %tobool388, label %if.end391, label %if.then389

if.then389:                                       ; preds = %do.body387
  %268 = load i64, i64* %spaces, align 8
  %269 = load i64, i64* %entry_pos, align 8
  %sub390 = sub i64 %269, %268
  store i64 %sub390, i64* %entry_pos, align 8
  br label %if.end391

if.end391:                                        ; preds = %if.then389, %do.body387
  %270 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options392 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %270, i32 0, i32 7
  %271 = load i8, i8* %options392, align 4
  %conv393 = zext i8 %271 to i32
  %and394 = and i32 %conv393, 8
  %tobool395 = icmp ne i32 %and394, 0
  br i1 %tobool395, label %if.then396, label %if.end399

if.then396:                                       ; preds = %if.end391
  %272 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf397 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %272, i32 0, i32 3
  %273 = load i8*, i8** %entry_buf397, align 8
  %274 = load i64, i64* %entry_pos, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %273, i64 %274
  store i8 0, i8* %arrayidx398, align 1
  br label %if.end399

if.end399:                                        ; preds = %if.then396, %if.end391
  %275 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool400 = icmp ne void (i8*, i64, i8*)* %275, null
  br i1 %tobool400, label %land.lhs.true401, label %if.else412

land.lhs.true401:                                 ; preds = %if.end399
  %276 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options402 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %276, i32 0, i32 7
  %277 = load i8, i8* %options402, align 4
  %conv403 = zext i8 %277 to i32
  %and404 = and i32 %conv403, 16
  %tobool405 = icmp ne i32 %and404, 0
  br i1 %tobool405, label %land.lhs.true406, label %if.else412

land.lhs.true406:                                 ; preds = %land.lhs.true401
  %278 = load i32, i32* %quoted, align 4
  %tobool407 = icmp ne i32 %278, 0
  br i1 %tobool407, label %if.else412, label %land.lhs.true408

land.lhs.true408:                                 ; preds = %land.lhs.true406
  %279 = load i64, i64* %entry_pos, align 8
  %cmp409 = icmp eq i64 %279, 0
  br i1 %cmp409, label %if.then411, label %if.else412

if.then411:                                       ; preds = %land.lhs.true408
  %280 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %281 = load i64, i64* %entry_pos, align 8
  %282 = load i8*, i8** %data.addr, align 8
  call void %280(i8* noundef null, i64 noundef %281, i8* noundef %282)
  br label %if.end417

if.else412:                                       ; preds = %land.lhs.true408, %land.lhs.true406, %land.lhs.true401, %if.end399
  %283 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %tobool413 = icmp ne void (i8*, i64, i8*)* %283, null
  br i1 %tobool413, label %if.then414, label %if.end416

if.then414:                                       ; preds = %if.else412
  %284 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %cb1.addr, align 8
  %285 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf415 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %285, i32 0, i32 3
  %286 = load i8*, i8** %entry_buf415, align 8
  %287 = load i64, i64* %entry_pos, align 8
  %288 = load i8*, i8** %data.addr, align 8
  call void %284(i8* noundef %286, i64 noundef %287, i8* noundef %288)
  br label %if.end416

if.end416:                                        ; preds = %if.then414, %if.else412
  br label %if.end417

if.end417:                                        ; preds = %if.end416, %if.then411
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end418

do.end418:                                        ; preds = %if.end417
  br label %do.body419

do.body419:                                       ; preds = %do.end418
  %289 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %tobool420 = icmp ne void (i32, i8*)* %289, null
  br i1 %tobool420, label %if.then421, label %if.end423

if.then421:                                       ; preds = %do.body419
  %290 = load void (i32, i8*)*, void (i32, i8*)** %cb2.addr, align 8
  %291 = load i8, i8* %c, align 1
  %conv422 = zext i8 %291 to i32
  %292 = load i8*, i8** %data.addr, align 8
  call void %290(i32 noundef %conv422, i8* noundef %292)
  br label %if.end423

if.end423:                                        ; preds = %if.then421, %do.body419
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %entry_pos, align 8
  br label %do.end424

do.end424:                                        ; preds = %if.end423
  br label %if.end486

if.else425:                                       ; preds = %lor.lhs.false380, %cond.true373
  %293 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %tobool426 = icmp ne i32 (i8)* %293, null
  br i1 %tobool426, label %cond.true427, label %cond.false430

cond.true427:                                     ; preds = %if.else425
  %294 = load i32 (i8)*, i32 (i8)** %is_space, align 8
  %295 = load i8, i8* %c, align 1
  %call428 = call i32 %294(i8 noundef zeroext %295)
  %tobool429 = icmp ne i32 %call428, 0
  br i1 %tobool429, label %if.then438, label %if.else443

cond.false430:                                    ; preds = %if.else425
  %296 = load i8, i8* %c, align 1
  %conv431 = zext i8 %296 to i32
  %cmp432 = icmp eq i32 %conv431, 32
  br i1 %cmp432, label %if.then438, label %lor.lhs.false434

lor.lhs.false434:                                 ; preds = %cond.false430
  %297 = load i8, i8* %c, align 1
  %conv435 = zext i8 %297 to i32
  %cmp436 = icmp eq i32 %conv435, 9
  br i1 %cmp436, label %if.then438, label %if.else443

if.then438:                                       ; preds = %lor.lhs.false434, %cond.false430, %cond.true427
  %298 = load i8, i8* %c, align 1
  %299 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf439 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %299, i32 0, i32 3
  %300 = load i8*, i8** %entry_buf439, align 8
  %301 = load i64, i64* %entry_pos, align 8
  %inc440 = add i64 %301, 1
  store i64 %inc440, i64* %entry_pos, align 8
  %arrayidx441 = getelementptr inbounds i8, i8* %300, i64 %301
  store i8 %298, i8* %arrayidx441, align 1
  %302 = load i64, i64* %spaces, align 8
  %inc442 = add i64 %302, 1
  store i64 %inc442, i64* %spaces, align 8
  br label %if.end485

if.else443:                                       ; preds = %lor.lhs.false434, %cond.true427
  %303 = load i8, i8* %c, align 1
  %conv444 = zext i8 %303 to i32
  %304 = load i8, i8* %quote, align 1
  %conv445 = zext i8 %304 to i32
  %cmp446 = icmp eq i32 %conv444, %conv445
  br i1 %cmp446, label %if.then448, label %if.else468

if.then448:                                       ; preds = %if.else443
  %305 = load i64, i64* %spaces, align 8
  %tobool449 = icmp ne i64 %305, 0
  br i1 %tobool449, label %if.then450, label %if.else466

if.then450:                                       ; preds = %if.then448
  %306 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options451 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %306, i32 0, i32 7
  %307 = load i8, i8* %options451, align 4
  %conv452 = zext i8 %307 to i32
  %and453 = and i32 %conv452, 1
  %tobool454 = icmp ne i32 %and453, 0
  br i1 %tobool454, label %if.then455, label %if.end462

if.then455:                                       ; preds = %if.then450
  %308 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status456 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %308, i32 0, i32 6
  store i32 1, i32* %status456, align 8
  %309 = load i32, i32* %quoted, align 4
  %310 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted457 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %310, i32 0, i32 1
  store i32 %309, i32* %quoted457, align 4
  %311 = load i32, i32* %pstate, align 4
  %312 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate458 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %312, i32 0, i32 0
  store i32 %311, i32* %pstate458, align 8
  %313 = load i64, i64* %spaces, align 8
  %314 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces459 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %314, i32 0, i32 2
  store i64 %313, i64* %spaces459, align 8
  %315 = load i64, i64* %entry_pos, align 8
  %316 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos460 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %316, i32 0, i32 4
  store i64 %315, i64* %entry_pos460, align 8
  %317 = load i64, i64* %pos, align 8
  %sub461 = sub i64 %317, 1
  store i64 %sub461, i64* %retval, align 8
  br label %return

if.end462:                                        ; preds = %if.then450
  store i64 0, i64* %spaces, align 8
  %318 = load i8, i8* %c, align 1
  %319 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf463 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %319, i32 0, i32 3
  %320 = load i8*, i8** %entry_buf463, align 8
  %321 = load i64, i64* %entry_pos, align 8
  %inc464 = add i64 %321, 1
  store i64 %inc464, i64* %entry_pos, align 8
  %arrayidx465 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8 %318, i8* %arrayidx465, align 1
  br label %if.end467

if.else466:                                       ; preds = %if.then448
  store i32 2, i32* %pstate, align 4
  br label %if.end467

if.end467:                                        ; preds = %if.else466, %if.end462
  br label %if.end484

if.else468:                                       ; preds = %if.else443
  %322 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %options469 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %322, i32 0, i32 7
  %323 = load i8, i8* %options469, align 4
  %conv470 = zext i8 %323 to i32
  %and471 = and i32 %conv470, 1
  %tobool472 = icmp ne i32 %and471, 0
  br i1 %tobool472, label %if.then473, label %if.end480

if.then473:                                       ; preds = %if.else468
  %324 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status474 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %324, i32 0, i32 6
  store i32 1, i32* %status474, align 8
  %325 = load i32, i32* %quoted, align 4
  %326 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted475 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %326, i32 0, i32 1
  store i32 %325, i32* %quoted475, align 4
  %327 = load i32, i32* %pstate, align 4
  %328 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate476 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %328, i32 0, i32 0
  store i32 %327, i32* %pstate476, align 8
  %329 = load i64, i64* %spaces, align 8
  %330 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces477 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %330, i32 0, i32 2
  store i64 %329, i64* %spaces477, align 8
  %331 = load i64, i64* %entry_pos, align 8
  %332 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos478 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %332, i32 0, i32 4
  store i64 %331, i64* %entry_pos478, align 8
  %333 = load i64, i64* %pos, align 8
  %sub479 = sub i64 %333, 1
  store i64 %sub479, i64* %retval, align 8
  br label %return

if.end480:                                        ; preds = %if.else468
  store i32 2, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  %334 = load i8, i8* %c, align 1
  %335 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf481 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %335, i32 0, i32 3
  %336 = load i8*, i8** %entry_buf481, align 8
  %337 = load i64, i64* %entry_pos, align 8
  %inc482 = add i64 %337, 1
  store i64 %inc482, i64* %entry_pos, align 8
  %arrayidx483 = getelementptr inbounds i8, i8* %336, i64 %337
  store i8 %334, i8* %arrayidx483, align 1
  br label %if.end484

if.end484:                                        ; preds = %if.end480, %if.end467
  br label %if.end485

if.end485:                                        ; preds = %if.end484, %if.then438
  br label %if.end486

if.end486:                                        ; preds = %if.end485, %do.end424
  br label %if.end487

if.end487:                                        ; preds = %if.end486, %do.end370
  br label %sw.epilog

sw.default:                                       ; preds = %if.end36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end487, %if.end331, %if.end172, %do.end158
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %338 = load i32, i32* %quoted, align 4
  %339 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quoted488 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %339, i32 0, i32 1
  store i32 %338, i32* %quoted488, align 4
  %340 = load i32, i32* %pstate, align 4
  %341 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %pstate489 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %341, i32 0, i32 0
  store i32 %340, i32* %pstate489, align 8
  %342 = load i64, i64* %spaces, align 8
  %343 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %spaces490 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %343, i32 0, i32 2
  store i64 %342, i64* %spaces490, align 8
  %344 = load i64, i64* %entry_pos, align 8
  %345 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_pos491 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %345, i32 0, i32 4
  store i64 %344, i64* %entry_pos491, align 8
  %346 = load i64, i64* %pos, align 8
  store i64 %346, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then473, %if.then455, %if.then189, %if.then30, %if.then14, %if.then1
  %347 = load i64, i64* %retval, align 8
  ret i64 %347
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare i32 @csv_increase_buffer(...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn nounwind }

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
