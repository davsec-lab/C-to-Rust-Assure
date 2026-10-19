; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/remimu.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/remimu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._RegexToken = type { i8, i8, i16, i16, [16 x i16], i16 }
%struct._RegexMatcherState = type { i32, i32, i32, i64, i64, i64 }

@REMIMU_FLAG_DOT_NO_NEWLINES = internal constant i32 1, align 4
@REMIMU_KIND_NORMAL = internal constant i8 0, align 1
@REMIMU_KIND_OPEN = internal constant i8 1, align 1
@REMIMU_KIND_NCOPEN = internal constant i8 2, align 1
@REMIMU_KIND_CLOSE = internal constant i8 3, align 1
@REMIMU_KIND_OR = internal constant i8 4, align 1
@REMIMU_KIND_CARET = internal constant i8 5, align 1
@REMIMU_KIND_DOLLAR = internal constant i8 6, align 1
@REMIMU_KIND_BOUND = internal constant i8 7, align 1
@REMIMU_KIND_NBOUND = internal constant i8 8, align 1
@REMIMU_KIND_END = internal constant i8 9, align 1
@REMIMU_MODE_POSSESSIVE = internal constant i8 1, align 1
@REMIMU_MODE_LAZY = internal constant i8 2, align 1
@REMIMU_MODE_INVERTED = internal constant i8 -128, align 1
@.str = private unnamed_addr constant [26 x i8] c"quantifier range too long\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"quantifier range is backwards\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"quantifier range syntax broken (no terminator)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unsupported escape sequence\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"buffer overflow\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"quantifier in non-quantifier context\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"tried to use a shorthand as part of a range\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"unknown/unsupported escape sequence in character class (\\%c)\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"character class range is broken\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"character class range is misordered\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [96 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/remimu/my_regex.h\00", align 1
@__PRETTY_FUNCTION__.regex_parse = private unnamed_addr constant [64 x i8] c"int regex_parse(const char *, RegexToken *, int16_t *, int32_t)\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"(paren_count > 0)\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"(esc_state != 0)\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"(state >= STATE_CC_INIT)\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"unbalanced parens...\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"too long...\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"too many qualified groups. returning\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"iteration limit exceeded. returning\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"rewind_stack[stack_n].i <= i\00", align 1
@__PRETTY_FUNCTION__.regex_match = private unnamed_addr constant [94 x i8] c"int64_t regex_match(const RegexToken *, const char *, size_t, uint16_t, int64_t *, int64_t *)\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"out of backtracking room. returning\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"tokens[k].kind == REMIMU_KIND_OR\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"n > 0\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [29 x i8] c"unimplemented token kind %d\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"NCOPEN\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"CARET\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"DOLLAR\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"BOUND\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"NBOUND\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@__const.print_regex_tokens.kind_to_str = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)], align 16
@.str.34 = private unnamed_addr constant [7 x i8] c"GREEDY\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"POSSESS\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"LAZY\00", align 1
@__const.print_regex_tokens.mode_to_str = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)], align 16
@.str.37 = private unnamed_addr constant [7 x i8] c"%s\09%s\09\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\09{%d,%d}\09(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regex_parse(i8* noundef %pattern, %struct._RegexToken* noundef %tokens, i16* noundef %token_count, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %tokens.addr = alloca %struct._RegexToken*, align 8
  %token_count.addr = alloca i16*, align 8
  %flags.addr = alloca i32, align 4
  %tokens_len = alloca i64, align 8
  %pattern_len = alloca i64, align 8
  %esc_state = alloca i32, align 4
  %STATE_NORMAL = alloca i32, align 4
  %STATE_QUANT = alloca i32, align 4
  %STATE_MODE = alloca i32, align 4
  %STATE_CC_INIT = alloca i32, align 4
  %STATE_CC_NORMAL = alloca i32, align 4
  %STATE_CC_RANGE = alloca i32, align 4
  %state = alloca i32, align 4
  %char_class_mem = alloca i32, align 4
  %token = alloca %struct._RegexToken, align 2
  %k = alloca i16, align 2
  %paren_count = alloca i32, align 4
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %val = alloca i32, align 4
  %val2 = alloca i32, align 4
  %n0 = alloca i8, align 1
  %n1 = alloca i8, align 1
  %is_upper = alloca i8, align 1
  %m = alloca [16 x i16], align 16
  %i483 = alloca i32, align 4
  %n = alloca i32, align 4
  %n680 = alloca i32, align 4
  %balance = alloca i32, align 4
  %found = alloca i64, align 8
  %l = alloca i64, align 8
  %diff = alloca i64, align 8
  %n824 = alloca i32, align 4
  %n893 = alloca i32, align 4
  %esc_c = alloca i8, align 1
  %n01020 = alloca i8, align 1
  %n11023 = alloca i8, align 1
  %is_upper1202 = alloca i8, align 1
  %m1207 = alloca [16 x i16], align 16
  %i1262 = alloca i32, align 4
  %i1383 = alloca i8, align 1
  %n1458 = alloca i32, align 4
  %n1525 = alloca i32, align 4
  %n1590 = alloca i32, align 4
  %n1638 = alloca i64, align 8
  %k2 = alloca i16, align 2
  %k3 = alloca i16, align 2
  %balance1715 = alloca i32, align 4
  %found1716 = alloca i64, align 8
  %l1717 = alloca i64, align 8
  %diff1772 = alloca i64, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store %struct._RegexToken* %tokens, %struct._RegexToken** %tokens.addr, align 8
  store i16* %token_count, i16** %token_count.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i16*, i16** %token_count.addr, align 8
  %1 = load i16, i16* %0, align 2
  %conv = sext i16 %1 to i64
  store i64 %conv, i64* %tokens_len, align 8
  %2 = load i8*, i8** %pattern.addr, align 8
  %call = call i64 @strlen(i8* noundef %2) #7
  store i64 %call, i64* %pattern_len, align 8
  %3 = load i16*, i16** %token_count.addr, align 8
  %cmp = icmp eq i16* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %esc_state, align 4
  store i32 1, i32* %STATE_NORMAL, align 4
  store i32 2, i32* %STATE_QUANT, align 4
  store i32 3, i32* %STATE_MODE, align 4
  store i32 4, i32* %STATE_CC_INIT, align 4
  store i32 5, i32* %STATE_CC_NORMAL, align 4
  store i32 6, i32* %STATE_CC_RANGE, align 4
  store i32 1, i32* %state, align 4
  store i32 -1, i32* %char_class_mem, align 4
  %4 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 40, i1 false)
  %count_lo = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo, align 2
  %count_hi = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi, align 2
  store i16 0, i16* %k, align 2
  %kind = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 1, i8* %kind, align 2
  %count_lo2 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 0, i16* %count_lo2, align 2
  %count_hi3 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 0, i16* %count_hi3, align 2
  store i32 0, i32* %paren_count, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc1410, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %pattern_len, align 8
  %cmp4 = icmp ult i64 %5, %6
  br i1 %cmp4, label %for.body, label %for.end1412

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %pattern.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx, align 1
  store i8 %9, i8* %c, align 1
  %10 = load i32, i32* %state, align 4
  %cmp6 = icmp eq i32 %10, 2
  br i1 %cmp6, label %if.then8, label %if.end135

if.then8:                                         ; preds = %for.body
  store i32 3, i32* %state, align 4
  %11 = load i8, i8* %c, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 63
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then8
  %count_lo13 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 0, i16* %count_lo13, align 2
  %count_hi14 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi14, align 2
  br label %for.inc1410

if.else:                                          ; preds = %if.then8
  %12 = load i8, i8* %c, align 1
  %conv15 = sext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv15, 43
  br i1 %cmp16, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else
  %count_lo19 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo19, align 2
  %count_hi20 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 0, i16* %count_hi20, align 2
  br label %for.inc1410

if.else21:                                        ; preds = %if.else
  %13 = load i8, i8* %c, align 1
  %conv22 = sext i8 %13 to i32
  %cmp23 = icmp eq i32 %conv22, 42
  br i1 %cmp23, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else21
  %count_lo26 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 0, i16* %count_lo26, align 2
  %count_hi27 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 0, i16* %count_hi27, align 2
  br label %for.inc1410

if.else28:                                        ; preds = %if.else21
  %14 = load i8, i8* %c, align 1
  %conv29 = sext i8 %14 to i32
  %cmp30 = icmp eq i32 %conv29, 123
  br i1 %cmp30, label %if.then32, label %if.end131

if.then32:                                        ; preds = %if.else28
  %15 = load i8*, i8** %pattern.addr, align 8
  %16 = load i64, i64* %i, align 8
  %add = add i64 %16, 1
  %arrayidx33 = getelementptr inbounds i8, i8* %15, i64 %add
  %17 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %17 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then32
  %18 = load i8*, i8** %pattern.addr, align 8
  %19 = load i64, i64* %i, align 8
  %add37 = add i64 %19, 1
  %arrayidx38 = getelementptr inbounds i8, i8* %18, i64 %add37
  %20 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %20 to i32
  %cmp40 = icmp slt i32 %conv39, 48
  br i1 %cmp40, label %if.then48, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %21 = load i8*, i8** %pattern.addr, align 8
  %22 = load i64, i64* %i, align 8
  %add43 = add i64 %22, 1
  %arrayidx44 = getelementptr inbounds i8, i8* %21, i64 %add43
  %23 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %23 to i32
  %cmp46 = icmp sgt i32 %conv45, 57
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %lor.lhs.false42, %lor.lhs.false, %if.then32
  store i32 1, i32* %state, align 4
  br label %if.end130

if.else49:                                        ; preds = %lor.lhs.false42
  %24 = load i64, i64* %i, align 8
  %add50 = add i64 %24, 1
  store i64 %add50, i64* %i, align 8
  store i32 0, i32* %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end66, %if.else49
  %25 = load i8*, i8** %pattern.addr, align 8
  %26 = load i64, i64* %i, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %25, i64 %26
  %27 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %27 to i32
  %cmp53 = icmp sge i32 %conv52, 48
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load i8*, i8** %pattern.addr, align 8
  %29 = load i64, i64* %i, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %28, i64 %29
  %30 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %30 to i32
  %cmp57 = icmp sle i32 %conv56, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %cmp57, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load i32, i32* %val, align 4
  %mul = mul i32 %32, 10
  store i32 %mul, i32* %val, align 4
  %33 = load i8*, i8** %pattern.addr, align 8
  %34 = load i64, i64* %i, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %33, i64 %34
  %35 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %35 to i32
  %sub = sub nsw i32 %conv60, 48
  %36 = load i32, i32* %val, align 4
  %add61 = add i32 %36, %sub
  store i32 %add61, i32* %val, align 4
  %37 = load i32, i32* %val, align 4
  %cmp62 = icmp ugt i32 %37, 65535
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %while.body
  %call65 = call i32 @puts(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %while.body
  %38 = load i64, i64* %i, align 8
  %add67 = add i64 %38, 1
  store i64 %add67, i64* %i, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %39 = load i32, i32* %val, align 4
  %conv68 = trunc i32 %39 to i16
  %count_lo69 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 %conv68, i16* %count_lo69, align 2
  %40 = load i32, i32* %val, align 4
  %add70 = add i32 %40, 1
  %conv71 = trunc i32 %add70 to i16
  %count_hi72 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 %conv71, i16* %count_hi72, align 2
  %41 = load i8*, i8** %pattern.addr, align 8
  %42 = load i64, i64* %i, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %43 to i32
  %cmp75 = icmp eq i32 %conv74, 44
  br i1 %cmp75, label %if.then77, label %if.end122

if.then77:                                        ; preds = %while.end
  %count_hi78 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 0, i16* %count_hi78, align 2
  %44 = load i64, i64* %i, align 8
  %add79 = add i64 %44, 1
  store i64 %add79, i64* %i, align 8
  %45 = load i8*, i8** %pattern.addr, align 8
  %46 = load i64, i64* %i, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %45, i64 %46
  %47 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %47 to i32
  %cmp82 = icmp sge i32 %conv81, 48
  br i1 %cmp82, label %land.lhs.true, label %if.end121

land.lhs.true:                                    ; preds = %if.then77
  %48 = load i8*, i8** %pattern.addr, align 8
  %49 = load i64, i64* %i, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %48, i64 %49
  %50 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %50 to i32
  %cmp86 = icmp sle i32 %conv85, 57
  br i1 %cmp86, label %if.then88, label %if.end121

if.then88:                                        ; preds = %land.lhs.true
  store i32 0, i32* %val2, align 4
  br label %while.cond89

while.cond89:                                     ; preds = %if.end110, %if.then88
  %51 = load i8*, i8** %pattern.addr, align 8
  %52 = load i64, i64* %i, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %51, i64 %52
  %53 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %53 to i32
  %cmp92 = icmp sge i32 %conv91, 48
  br i1 %cmp92, label %land.rhs94, label %land.end99

land.rhs94:                                       ; preds = %while.cond89
  %54 = load i8*, i8** %pattern.addr, align 8
  %55 = load i64, i64* %i, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %54, i64 %55
  %56 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %56 to i32
  %cmp97 = icmp sle i32 %conv96, 57
  br label %land.end99

land.end99:                                       ; preds = %land.rhs94, %while.cond89
  %57 = phi i1 [ false, %while.cond89 ], [ %cmp97, %land.rhs94 ]
  br i1 %57, label %while.body100, label %while.end112

while.body100:                                    ; preds = %land.end99
  %58 = load i32, i32* %val2, align 4
  %mul101 = mul i32 %58, 10
  store i32 %mul101, i32* %val2, align 4
  %59 = load i8*, i8** %pattern.addr, align 8
  %60 = load i64, i64* %i, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %59, i64 %60
  %61 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %61 to i32
  %sub104 = sub nsw i32 %conv103, 48
  %62 = load i32, i32* %val2, align 4
  %add105 = add i32 %62, %sub104
  store i32 %add105, i32* %val2, align 4
  %63 = load i32, i32* %val2, align 4
  %cmp106 = icmp ugt i32 %63, 65535
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %while.body100
  %call109 = call i32 @puts(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end110:                                        ; preds = %while.body100
  %64 = load i64, i64* %i, align 8
  %add111 = add i64 %64, 1
  store i64 %add111, i64* %i, align 8
  br label %while.cond89, !llvm.loop !6

while.end112:                                     ; preds = %land.end99
  %65 = load i32, i32* %val2, align 4
  %66 = load i32, i32* %val, align 4
  %cmp113 = icmp ult i32 %65, %66
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %while.end112
  %call116 = call i32 @puts(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end117:                                        ; preds = %while.end112
  %67 = load i32, i32* %val2, align 4
  %add118 = add i32 %67, 1
  %conv119 = trunc i32 %add118 to i16
  %count_hi120 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 %conv119, i16* %count_hi120, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.end117, %land.lhs.true, %if.then77
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %while.end
  %68 = load i8*, i8** %pattern.addr, align 8
  %69 = load i64, i64* %i, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %68, i64 %69
  %70 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %70 to i32
  %cmp125 = icmp eq i32 %conv124, 125
  br i1 %cmp125, label %if.then127, label %if.else128

if.then127:                                       ; preds = %if.end122
  br label %for.inc1410

if.else128:                                       ; preds = %if.end122
  %call129 = call i32 @puts(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.then48
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.else28
  br label %if.end132

if.end132:                                        ; preds = %if.end131
  br label %if.end133

if.end133:                                        ; preds = %if.end132
  br label %if.end134

if.end134:                                        ; preds = %if.end133
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %for.body
  %71 = load i32, i32* %state, align 4
  %cmp136 = icmp eq i32 %71, 3
  br i1 %cmp136, label %if.then138, label %if.end156

if.then138:                                       ; preds = %if.end135
  store i32 1, i32* %state, align 4
  %72 = load i8, i8* %c, align 1
  %conv139 = sext i8 %72 to i32
  %cmp140 = icmp eq i32 %conv139, 63
  br i1 %cmp140, label %if.then142, label %if.else145

if.then142:                                       ; preds = %if.then138
  %mode = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %73 = load i8, i8* %mode, align 1
  %conv143 = zext i8 %73 to i32
  %or = or i32 %conv143, 2
  %conv144 = trunc i32 %or to i8
  store i8 %conv144, i8* %mode, align 1
  br label %for.inc1410

if.else145:                                       ; preds = %if.then138
  %74 = load i8, i8* %c, align 1
  %conv146 = sext i8 %74 to i32
  %cmp147 = icmp eq i32 %conv146, 43
  br i1 %cmp147, label %if.then149, label %if.end154

if.then149:                                       ; preds = %if.else145
  %mode150 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %75 = load i8, i8* %mode150, align 1
  %conv151 = zext i8 %75 to i32
  %or152 = or i32 %conv151, 1
  %conv153 = trunc i32 %or152 to i8
  store i8 %conv153, i8* %mode150, align 1
  br label %for.inc1410

if.end154:                                        ; preds = %if.else145
  br label %if.end155

if.end155:                                        ; preds = %if.end154
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.end135
  %76 = load i32, i32* %state, align 4
  %cmp157 = icmp eq i32 %76, 1
  br i1 %cmp157, label %if.then159, label %if.else957

if.then159:                                       ; preds = %if.end156
  %77 = load i32, i32* %esc_state, align 4
  %cmp160 = icmp eq i32 %77, 1
  br i1 %cmp160, label %if.then162, label %if.else527

if.then162:                                       ; preds = %if.then159
  store i32 0, i32* %esc_state, align 4
  %78 = load i8, i8* %c, align 1
  %conv163 = sext i8 %78 to i32
  %cmp164 = icmp eq i32 %conv163, 110
  br i1 %cmp164, label %if.then166, label %if.else171

if.then166:                                       ; preds = %if.then162
  %mask = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %arrayidx167 = getelementptr inbounds [16 x i16], [16 x i16]* %mask, i64 0, i64 0
  %79 = load i16, i16* %arrayidx167, align 2
  %conv168 = zext i16 %79 to i32
  %or169 = or i32 %conv168, 1024
  %conv170 = trunc i32 %or169 to i16
  store i16 %conv170, i16* %arrayidx167, align 2
  br label %if.end526

if.else171:                                       ; preds = %if.then162
  %80 = load i8, i8* %c, align 1
  %conv172 = sext i8 %80 to i32
  %cmp173 = icmp eq i32 %conv172, 114
  br i1 %cmp173, label %if.then175, label %if.else181

if.then175:                                       ; preds = %if.else171
  %mask176 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %arrayidx177 = getelementptr inbounds [16 x i16], [16 x i16]* %mask176, i64 0, i64 0
  %81 = load i16, i16* %arrayidx177, align 2
  %conv178 = zext i16 %81 to i32
  %or179 = or i32 %conv178, 8192
  %conv180 = trunc i32 %or179 to i16
  store i16 %conv180, i16* %arrayidx177, align 2
  br label %if.end525

if.else181:                                       ; preds = %if.else171
  %82 = load i8, i8* %c, align 1
  %conv182 = sext i8 %82 to i32
  %cmp183 = icmp eq i32 %conv182, 116
  br i1 %cmp183, label %if.then185, label %if.else191

if.then185:                                       ; preds = %if.else181
  %mask186 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %arrayidx187 = getelementptr inbounds [16 x i16], [16 x i16]* %mask186, i64 0, i64 0
  %83 = load i16, i16* %arrayidx187, align 2
  %conv188 = zext i16 %83 to i32
  %or189 = or i32 %conv188, 512
  %conv190 = trunc i32 %or189 to i16
  store i16 %conv190, i16* %arrayidx187, align 2
  br label %if.end524

if.else191:                                       ; preds = %if.else181
  %84 = load i8, i8* %c, align 1
  %conv192 = sext i8 %84 to i32
  %cmp193 = icmp eq i32 %conv192, 118
  br i1 %cmp193, label %if.then195, label %if.else201

if.then195:                                       ; preds = %if.else191
  %mask196 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %arrayidx197 = getelementptr inbounds [16 x i16], [16 x i16]* %mask196, i64 0, i64 0
  %85 = load i16, i16* %arrayidx197, align 2
  %conv198 = zext i16 %85 to i32
  %or199 = or i32 %conv198, 2048
  %conv200 = trunc i32 %or199 to i16
  store i16 %conv200, i16* %arrayidx197, align 2
  br label %if.end523

if.else201:                                       ; preds = %if.else191
  %86 = load i8, i8* %c, align 1
  %conv202 = sext i8 %86 to i32
  %cmp203 = icmp eq i32 %conv202, 102
  br i1 %cmp203, label %if.then205, label %if.else211

if.then205:                                       ; preds = %if.else201
  %mask206 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %arrayidx207 = getelementptr inbounds [16 x i16], [16 x i16]* %mask206, i64 0, i64 0
  %87 = load i16, i16* %arrayidx207, align 2
  %conv208 = zext i16 %87 to i32
  %or209 = or i32 %conv208, 4096
  %conv210 = trunc i32 %or209 to i16
  store i16 %conv210, i16* %arrayidx207, align 2
  br label %if.end522

if.else211:                                       ; preds = %if.else201
  %88 = load i8, i8* %c, align 1
  %conv212 = sext i8 %88 to i32
  %cmp213 = icmp eq i32 %conv212, 120
  br i1 %cmp213, label %if.then215, label %if.else322

if.then215:                                       ; preds = %if.else211
  %89 = load i8*, i8** %pattern.addr, align 8
  %90 = load i64, i64* %i, align 8
  %add216 = add i64 %90, 1
  %arrayidx217 = getelementptr inbounds i8, i8* %89, i64 %add216
  %91 = load i8, i8* %arrayidx217, align 1
  %conv218 = sext i8 %91 to i32
  %cmp219 = icmp eq i32 %conv218, 0
  br i1 %cmp219, label %if.then227, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %if.then215
  %92 = load i8*, i8** %pattern.addr, align 8
  %93 = load i64, i64* %i, align 8
  %add222 = add i64 %93, 2
  %arrayidx223 = getelementptr inbounds i8, i8* %92, i64 %add222
  %94 = load i8, i8* %arrayidx223, align 1
  %conv224 = sext i8 %94 to i32
  %cmp225 = icmp eq i32 %conv224, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %lor.lhs.false221, %if.then215
  store i32 -1, i32* %retval, align 4
  br label %return

if.end228:                                        ; preds = %lor.lhs.false221
  %95 = load i8*, i8** %pattern.addr, align 8
  %96 = load i64, i64* %i, align 8
  %add229 = add i64 %96, 1
  %arrayidx230 = getelementptr inbounds i8, i8* %95, i64 %add229
  %97 = load i8, i8* %arrayidx230, align 1
  store i8 %97, i8* %n0, align 1
  %98 = load i8*, i8** %pattern.addr, align 8
  %99 = load i64, i64* %i, align 8
  %add231 = add i64 %99, 1
  %arrayidx232 = getelementptr inbounds i8, i8* %98, i64 %add231
  %100 = load i8, i8* %arrayidx232, align 1
  store i8 %100, i8* %n1, align 1
  %101 = load i8, i8* %n0, align 1
  %conv233 = zext i8 %101 to i32
  %cmp234 = icmp slt i32 %conv233, 48
  br i1 %cmp234, label %if.then264, label %lor.lhs.false236

lor.lhs.false236:                                 ; preds = %if.end228
  %102 = load i8, i8* %n0, align 1
  %conv237 = zext i8 %102 to i32
  %cmp238 = icmp sgt i32 %conv237, 102
  br i1 %cmp238, label %if.then264, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %lor.lhs.false236
  %103 = load i8, i8* %n1, align 1
  %conv241 = zext i8 %103 to i32
  %cmp242 = icmp slt i32 %conv241, 48
  br i1 %cmp242, label %if.then264, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false240
  %104 = load i8, i8* %n1, align 1
  %conv245 = zext i8 %104 to i32
  %cmp246 = icmp sgt i32 %conv245, 102
  br i1 %cmp246, label %if.then264, label %lor.lhs.false248

lor.lhs.false248:                                 ; preds = %lor.lhs.false244
  %105 = load i8, i8* %n0, align 1
  %conv249 = zext i8 %105 to i32
  %cmp250 = icmp sgt i32 %conv249, 57
  br i1 %cmp250, label %land.lhs.true252, label %lor.lhs.false256

land.lhs.true252:                                 ; preds = %lor.lhs.false248
  %106 = load i8, i8* %n0, align 1
  %conv253 = zext i8 %106 to i32
  %cmp254 = icmp slt i32 %conv253, 65
  br i1 %cmp254, label %if.then264, label %lor.lhs.false256

lor.lhs.false256:                                 ; preds = %land.lhs.true252, %lor.lhs.false248
  %107 = load i8, i8* %n1, align 1
  %conv257 = zext i8 %107 to i32
  %cmp258 = icmp sgt i32 %conv257, 57
  br i1 %cmp258, label %land.lhs.true260, label %if.end265

land.lhs.true260:                                 ; preds = %lor.lhs.false256
  %108 = load i8, i8* %n1, align 1
  %conv261 = zext i8 %108 to i32
  %cmp262 = icmp slt i32 %conv261, 65
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %land.lhs.true260, %land.lhs.true252, %lor.lhs.false244, %lor.lhs.false240, %lor.lhs.false236, %if.end228
  store i32 -1, i32* %retval, align 4
  br label %return

if.end265:                                        ; preds = %land.lhs.true260, %lor.lhs.false256
  %109 = load i8, i8* %n0, align 1
  %conv266 = zext i8 %109 to i32
  %cmp267 = icmp sgt i32 %conv266, 70
  br i1 %cmp267, label %if.then269, label %if.end273

if.then269:                                       ; preds = %if.end265
  %110 = load i8, i8* %n0, align 1
  %conv270 = zext i8 %110 to i32
  %sub271 = sub nsw i32 %conv270, 32
  %conv272 = trunc i32 %sub271 to i8
  store i8 %conv272, i8* %n0, align 1
  br label %if.end273

if.end273:                                        ; preds = %if.then269, %if.end265
  %111 = load i8, i8* %n1, align 1
  %conv274 = zext i8 %111 to i32
  %cmp275 = icmp sgt i32 %conv274, 70
  br i1 %cmp275, label %if.then277, label %if.end281

if.then277:                                       ; preds = %if.end273
  %112 = load i8, i8* %n1, align 1
  %conv278 = zext i8 %112 to i32
  %sub279 = sub nsw i32 %conv278, 32
  %conv280 = trunc i32 %sub279 to i8
  store i8 %conv280, i8* %n1, align 1
  br label %if.end281

if.end281:                                        ; preds = %if.then277, %if.end273
  %113 = load i8, i8* %n0, align 1
  %conv282 = zext i8 %113 to i32
  %cmp283 = icmp sge i32 %conv282, 65
  br i1 %cmp283, label %if.then285, label %if.end289

if.then285:                                       ; preds = %if.end281
  %114 = load i8, i8* %n0, align 1
  %conv286 = zext i8 %114 to i32
  %sub287 = sub nsw i32 %conv286, 55
  %conv288 = trunc i32 %sub287 to i8
  store i8 %conv288, i8* %n0, align 1
  br label %if.end289

if.end289:                                        ; preds = %if.then285, %if.end281
  %115 = load i8, i8* %n1, align 1
  %conv290 = zext i8 %115 to i32
  %cmp291 = icmp sge i32 %conv290, 65
  br i1 %cmp291, label %if.then293, label %if.end297

if.then293:                                       ; preds = %if.end289
  %116 = load i8, i8* %n1, align 1
  %conv294 = zext i8 %116 to i32
  %sub295 = sub nsw i32 %conv294, 55
  %conv296 = trunc i32 %sub295 to i8
  store i8 %conv296, i8* %n1, align 1
  br label %if.end297

if.end297:                                        ; preds = %if.then293, %if.end289
  %117 = load i8, i8* %n0, align 1
  %conv298 = zext i8 %117 to i32
  %sub299 = sub nsw i32 %conv298, 48
  %conv300 = trunc i32 %sub299 to i8
  store i8 %conv300, i8* %n0, align 1
  %118 = load i8, i8* %n1, align 1
  %conv301 = zext i8 %118 to i32
  %sub302 = sub nsw i32 %conv301, 48
  %conv303 = trunc i32 %sub302 to i8
  store i8 %conv303, i8* %n1, align 1
  %119 = load i8, i8* %n1, align 1
  %conv304 = zext i8 %119 to i32
  %shl = shl i32 %conv304, 4
  %120 = load i8, i8* %n0, align 1
  %conv305 = zext i8 %120 to i32
  %or306 = or i32 %shl, %conv305
  %conv307 = trunc i32 %or306 to i8
  %conv308 = zext i8 %conv307 to i32
  %and = and i32 %conv308, 15
  %shl309 = shl i32 1, %and
  %mask310 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %121 = load i8, i8* %n1, align 1
  %conv311 = zext i8 %121 to i32
  %shl312 = shl i32 %conv311, 4
  %122 = load i8, i8* %n0, align 1
  %conv313 = zext i8 %122 to i32
  %or314 = or i32 %shl312, %conv313
  %conv315 = trunc i32 %or314 to i8
  %conv316 = zext i8 %conv315 to i32
  %shr = ashr i32 %conv316, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx317 = getelementptr inbounds [16 x i16], [16 x i16]* %mask310, i64 0, i64 %idxprom
  %123 = load i16, i16* %arrayidx317, align 2
  %conv318 = zext i16 %123 to i32
  %or319 = or i32 %conv318, %shl309
  %conv320 = trunc i32 %or319 to i16
  store i16 %conv320, i16* %arrayidx317, align 2
  %124 = load i64, i64* %i, align 8
  %add321 = add i64 %124, 2
  store i64 %add321, i64* %i, align 8
  br label %if.end521

if.else322:                                       ; preds = %if.else211
  %125 = load i8, i8* %c, align 1
  %conv323 = sext i8 %125 to i32
  %cmp324 = icmp eq i32 %conv323, 123
  br i1 %cmp324, label %if.then390, label %lor.lhs.false326

lor.lhs.false326:                                 ; preds = %if.else322
  %126 = load i8, i8* %c, align 1
  %conv327 = sext i8 %126 to i32
  %cmp328 = icmp eq i32 %conv327, 125
  br i1 %cmp328, label %if.then390, label %lor.lhs.false330

lor.lhs.false330:                                 ; preds = %lor.lhs.false326
  %127 = load i8, i8* %c, align 1
  %conv331 = sext i8 %127 to i32
  %cmp332 = icmp eq i32 %conv331, 91
  br i1 %cmp332, label %if.then390, label %lor.lhs.false334

lor.lhs.false334:                                 ; preds = %lor.lhs.false330
  %128 = load i8, i8* %c, align 1
  %conv335 = sext i8 %128 to i32
  %cmp336 = icmp eq i32 %conv335, 93
  br i1 %cmp336, label %if.then390, label %lor.lhs.false338

lor.lhs.false338:                                 ; preds = %lor.lhs.false334
  %129 = load i8, i8* %c, align 1
  %conv339 = sext i8 %129 to i32
  %cmp340 = icmp eq i32 %conv339, 45
  br i1 %cmp340, label %if.then390, label %lor.lhs.false342

lor.lhs.false342:                                 ; preds = %lor.lhs.false338
  %130 = load i8, i8* %c, align 1
  %conv343 = sext i8 %130 to i32
  %cmp344 = icmp eq i32 %conv343, 40
  br i1 %cmp344, label %if.then390, label %lor.lhs.false346

lor.lhs.false346:                                 ; preds = %lor.lhs.false342
  %131 = load i8, i8* %c, align 1
  %conv347 = sext i8 %131 to i32
  %cmp348 = icmp eq i32 %conv347, 41
  br i1 %cmp348, label %if.then390, label %lor.lhs.false350

lor.lhs.false350:                                 ; preds = %lor.lhs.false346
  %132 = load i8, i8* %c, align 1
  %conv351 = sext i8 %132 to i32
  %cmp352 = icmp eq i32 %conv351, 124
  br i1 %cmp352, label %if.then390, label %lor.lhs.false354

lor.lhs.false354:                                 ; preds = %lor.lhs.false350
  %133 = load i8, i8* %c, align 1
  %conv355 = sext i8 %133 to i32
  %cmp356 = icmp eq i32 %conv355, 94
  br i1 %cmp356, label %if.then390, label %lor.lhs.false358

lor.lhs.false358:                                 ; preds = %lor.lhs.false354
  %134 = load i8, i8* %c, align 1
  %conv359 = sext i8 %134 to i32
  %cmp360 = icmp eq i32 %conv359, 36
  br i1 %cmp360, label %if.then390, label %lor.lhs.false362

lor.lhs.false362:                                 ; preds = %lor.lhs.false358
  %135 = load i8, i8* %c, align 1
  %conv363 = sext i8 %135 to i32
  %cmp364 = icmp eq i32 %conv363, 42
  br i1 %cmp364, label %if.then390, label %lor.lhs.false366

lor.lhs.false366:                                 ; preds = %lor.lhs.false362
  %136 = load i8, i8* %c, align 1
  %conv367 = sext i8 %136 to i32
  %cmp368 = icmp eq i32 %conv367, 43
  br i1 %cmp368, label %if.then390, label %lor.lhs.false370

lor.lhs.false370:                                 ; preds = %lor.lhs.false366
  %137 = load i8, i8* %c, align 1
  %conv371 = sext i8 %137 to i32
  %cmp372 = icmp eq i32 %conv371, 63
  br i1 %cmp372, label %if.then390, label %lor.lhs.false374

lor.lhs.false374:                                 ; preds = %lor.lhs.false370
  %138 = load i8, i8* %c, align 1
  %conv375 = sext i8 %138 to i32
  %cmp376 = icmp eq i32 %conv375, 58
  br i1 %cmp376, label %if.then390, label %lor.lhs.false378

lor.lhs.false378:                                 ; preds = %lor.lhs.false374
  %139 = load i8, i8* %c, align 1
  %conv379 = sext i8 %139 to i32
  %cmp380 = icmp eq i32 %conv379, 46
  br i1 %cmp380, label %if.then390, label %lor.lhs.false382

lor.lhs.false382:                                 ; preds = %lor.lhs.false378
  %140 = load i8, i8* %c, align 1
  %conv383 = sext i8 %140 to i32
  %cmp384 = icmp eq i32 %conv383, 47
  br i1 %cmp384, label %if.then390, label %lor.lhs.false386

lor.lhs.false386:                                 ; preds = %lor.lhs.false382
  %141 = load i8, i8* %c, align 1
  %conv387 = sext i8 %141 to i32
  %cmp388 = icmp eq i32 %conv387, 92
  br i1 %cmp388, label %if.then390, label %if.else402

if.then390:                                       ; preds = %lor.lhs.false386, %lor.lhs.false382, %lor.lhs.false378, %lor.lhs.false374, %lor.lhs.false370, %lor.lhs.false366, %lor.lhs.false362, %lor.lhs.false358, %lor.lhs.false354, %lor.lhs.false350, %lor.lhs.false346, %lor.lhs.false342, %lor.lhs.false338, %lor.lhs.false334, %lor.lhs.false330, %lor.lhs.false326, %if.else322
  %142 = load i8, i8* %c, align 1
  %conv391 = zext i8 %142 to i32
  %and392 = and i32 %conv391, 15
  %shl393 = shl i32 1, %and392
  %mask394 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %143 = load i8, i8* %c, align 1
  %conv395 = zext i8 %143 to i32
  %shr396 = ashr i32 %conv395, 4
  %idxprom397 = sext i32 %shr396 to i64
  %arrayidx398 = getelementptr inbounds [16 x i16], [16 x i16]* %mask394, i64 0, i64 %idxprom397
  %144 = load i16, i16* %arrayidx398, align 2
  %conv399 = zext i16 %144 to i32
  %or400 = or i32 %conv399, %shl393
  %conv401 = trunc i32 %or400 to i16
  store i16 %conv401, i16* %arrayidx398, align 2
  store i32 2, i32* %state, align 4
  br label %if.end520

if.else402:                                       ; preds = %lor.lhs.false386
  %145 = load i8, i8* %c, align 1
  %conv403 = sext i8 %145 to i32
  %cmp404 = icmp eq i32 %conv403, 100
  br i1 %cmp404, label %if.then426, label %lor.lhs.false406

lor.lhs.false406:                                 ; preds = %if.else402
  %146 = load i8, i8* %c, align 1
  %conv407 = sext i8 %146 to i32
  %cmp408 = icmp eq i32 %conv407, 115
  br i1 %cmp408, label %if.then426, label %lor.lhs.false410

lor.lhs.false410:                                 ; preds = %lor.lhs.false406
  %147 = load i8, i8* %c, align 1
  %conv411 = sext i8 %147 to i32
  %cmp412 = icmp eq i32 %conv411, 119
  br i1 %cmp412, label %if.then426, label %lor.lhs.false414

lor.lhs.false414:                                 ; preds = %lor.lhs.false410
  %148 = load i8, i8* %c, align 1
  %conv415 = sext i8 %148 to i32
  %cmp416 = icmp eq i32 %conv415, 68
  br i1 %cmp416, label %if.then426, label %lor.lhs.false418

lor.lhs.false418:                                 ; preds = %lor.lhs.false414
  %149 = load i8, i8* %c, align 1
  %conv419 = sext i8 %149 to i32
  %cmp420 = icmp eq i32 %conv419, 83
  br i1 %cmp420, label %if.then426, label %lor.lhs.false422

lor.lhs.false422:                                 ; preds = %lor.lhs.false418
  %150 = load i8, i8* %c, align 1
  %conv423 = sext i8 %150 to i32
  %cmp424 = icmp eq i32 %conv423, 87
  br i1 %cmp424, label %if.then426, label %if.else503

if.then426:                                       ; preds = %lor.lhs.false422, %lor.lhs.false418, %lor.lhs.false414, %lor.lhs.false410, %lor.lhs.false406, %if.else402
  %151 = load i8, i8* %c, align 1
  %conv427 = sext i8 %151 to i32
  %cmp428 = icmp sle i32 %conv427, 90
  %conv429 = zext i1 %cmp428 to i32
  %conv430 = trunc i32 %conv429 to i8
  store i8 %conv430, i8* %is_upper, align 1
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 0
  %152 = bitcast i16* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %152, i8 0, i64 32, i1 false)
  %153 = load i8, i8* %is_upper, align 1
  %tobool = icmp ne i8 %153, 0
  br i1 %tobool, label %if.then431, label %if.end435

if.then431:                                       ; preds = %if.then426
  %154 = load i8, i8* %c, align 1
  %conv432 = sext i8 %154 to i32
  %add433 = add nsw i32 %conv432, 32
  %conv434 = trunc i32 %add433 to i8
  store i8 %conv434, i8* %c, align 1
  br label %if.end435

if.end435:                                        ; preds = %if.then431, %if.then426
  %155 = load i8, i8* %c, align 1
  %conv436 = sext i8 %155 to i32
  %cmp437 = icmp eq i32 %conv436, 100
  br i1 %cmp437, label %if.then443, label %lor.lhs.false439

lor.lhs.false439:                                 ; preds = %if.end435
  %156 = load i8, i8* %c, align 1
  %conv440 = sext i8 %156 to i32
  %cmp441 = icmp eq i32 %conv440, 119
  br i1 %cmp441, label %if.then443, label %if.end448

if.then443:                                       ; preds = %lor.lhs.false439, %if.end435
  %arrayidx444 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 3
  %157 = load i16, i16* %arrayidx444, align 2
  %conv445 = zext i16 %157 to i32
  %or446 = or i32 %conv445, 1023
  %conv447 = trunc i32 %or446 to i16
  store i16 %conv447, i16* %arrayidx444, align 2
  br label %if.end448

if.end448:                                        ; preds = %if.then443, %lor.lhs.false439
  %158 = load i8, i8* %c, align 1
  %conv449 = sext i8 %158 to i32
  %cmp450 = icmp eq i32 %conv449, 115
  br i1 %cmp450, label %if.then452, label %if.end461

if.then452:                                       ; preds = %if.end448
  %arrayidx453 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 0
  %159 = load i16, i16* %arrayidx453, align 16
  %conv454 = zext i16 %159 to i32
  %or455 = or i32 %conv454, 15872
  %conv456 = trunc i32 %or455 to i16
  store i16 %conv456, i16* %arrayidx453, align 16
  %arrayidx457 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 2
  %160 = load i16, i16* %arrayidx457, align 4
  %conv458 = zext i16 %160 to i32
  %or459 = or i32 %conv458, 1
  %conv460 = trunc i32 %or459 to i16
  store i16 %conv460, i16* %arrayidx457, align 4
  br label %if.end461

if.end461:                                        ; preds = %if.then452, %if.end448
  %161 = load i8, i8* %c, align 1
  %conv462 = sext i8 %161 to i32
  %cmp463 = icmp eq i32 %conv462, 119
  br i1 %cmp463, label %if.then465, label %if.end482

if.then465:                                       ; preds = %if.end461
  %arrayidx466 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 4
  %162 = load i16, i16* %arrayidx466, align 8
  %conv467 = zext i16 %162 to i32
  %or468 = or i32 %conv467, 65534
  %conv469 = trunc i32 %or468 to i16
  store i16 %conv469, i16* %arrayidx466, align 8
  %arrayidx470 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 5
  %163 = load i16, i16* %arrayidx470, align 2
  %conv471 = zext i16 %163 to i32
  %or472 = or i32 %conv471, 34815
  %conv473 = trunc i32 %or472 to i16
  store i16 %conv473, i16* %arrayidx470, align 2
  %arrayidx474 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 6
  %164 = load i16, i16* %arrayidx474, align 4
  %conv475 = zext i16 %164 to i32
  %or476 = or i32 %conv475, 65534
  %conv477 = trunc i32 %or476 to i16
  store i16 %conv477, i16* %arrayidx474, align 4
  %arrayidx478 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 7
  %165 = load i16, i16* %arrayidx478, align 2
  %conv479 = zext i16 %165 to i32
  %or480 = or i32 %conv479, 2047
  %conv481 = trunc i32 %or480 to i16
  store i16 %conv481, i16* %arrayidx478, align 2
  br label %if.end482

if.end482:                                        ; preds = %if.then465, %if.end461
  store i32 0, i32* %i483, align 4
  br label %for.cond484

for.cond484:                                      ; preds = %for.inc, %if.end482
  %166 = load i32, i32* %i483, align 4
  %cmp485 = icmp slt i32 %166, 16
  br i1 %cmp485, label %for.body487, label %for.end

for.body487:                                      ; preds = %for.cond484
  %167 = load i8, i8* %is_upper, align 1
  %conv488 = zext i8 %167 to i32
  %tobool489 = icmp ne i32 %conv488, 0
  br i1 %tobool489, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body487
  %168 = load i32, i32* %i483, align 4
  %idxprom490 = sext i32 %168 to i64
  %arrayidx491 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 %idxprom490
  %169 = load i16, i16* %arrayidx491, align 2
  %conv492 = zext i16 %169 to i32
  %neg = xor i32 %conv492, -1
  br label %cond.end

cond.false:                                       ; preds = %for.body487
  %170 = load i32, i32* %i483, align 4
  %idxprom493 = sext i32 %170 to i64
  %arrayidx494 = getelementptr inbounds [16 x i16], [16 x i16]* %m, i64 0, i64 %idxprom493
  %171 = load i16, i16* %arrayidx494, align 2
  %conv495 = zext i16 %171 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %neg, %cond.true ], [ %conv495, %cond.false ]
  %mask496 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %172 = load i32, i32* %i483, align 4
  %idxprom497 = sext i32 %172 to i64
  %arrayidx498 = getelementptr inbounds [16 x i16], [16 x i16]* %mask496, i64 0, i64 %idxprom497
  %173 = load i16, i16* %arrayidx498, align 2
  %conv499 = zext i16 %173 to i32
  %or500 = or i32 %conv499, %cond
  %conv501 = trunc i32 %or500 to i16
  store i16 %conv501, i16* %arrayidx498, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %174 = load i32, i32* %i483, align 4
  %inc = add nsw i32 %174, 1
  store i32 %inc, i32* %i483, align 4
  br label %for.cond484, !llvm.loop !7

for.end:                                          ; preds = %for.cond484
  %kind502 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 0, i8* %kind502, align 2
  store i32 2, i32* %state, align 4
  br label %if.end519

if.else503:                                       ; preds = %lor.lhs.false422
  %175 = load i8, i8* %c, align 1
  %conv504 = sext i8 %175 to i32
  %cmp505 = icmp eq i32 %conv504, 98
  br i1 %cmp505, label %if.then507, label %if.else509

if.then507:                                       ; preds = %if.else503
  %kind508 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 7, i8* %kind508, align 2
  store i32 1, i32* %state, align 4
  br label %if.end518

if.else509:                                       ; preds = %if.else503
  %176 = load i8, i8* %c, align 1
  %conv510 = sext i8 %176 to i32
  %cmp511 = icmp eq i32 %conv510, 66
  br i1 %cmp511, label %if.then513, label %if.else515

if.then513:                                       ; preds = %if.else509
  %kind514 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 8, i8* %kind514, align 2
  store i32 1, i32* %state, align 4
  br label %if.end517

if.else515:                                       ; preds = %if.else509
  %call516 = call i32 @puts(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end517:                                        ; preds = %if.then513
  br label %if.end518

if.end518:                                        ; preds = %if.end517, %if.then507
  br label %if.end519

if.end519:                                        ; preds = %if.end518, %for.end
  br label %if.end520

if.end520:                                        ; preds = %if.end519, %if.then390
  br label %if.end521

if.end521:                                        ; preds = %if.end520, %if.end297
  br label %if.end522

if.end522:                                        ; preds = %if.end521, %if.then205
  br label %if.end523

if.end523:                                        ; preds = %if.end522, %if.then195
  br label %if.end524

if.end524:                                        ; preds = %if.end523, %if.then185
  br label %if.end525

if.end525:                                        ; preds = %if.end524, %if.then175
  br label %if.end526

if.end526:                                        ; preds = %if.end525, %if.then166
  br label %if.end956

if.else527:                                       ; preds = %if.then159
  %177 = load i16, i16* %k, align 2
  %conv528 = sext i16 %177 to i32
  %cmp529 = icmp eq i32 %conv528, 0
  br i1 %cmp529, label %if.then552, label %lor.lhs.false531

lor.lhs.false531:                                 ; preds = %if.else527
  %178 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %179 = load i16, i16* %k, align 2
  %conv532 = sext i16 %179 to i32
  %sub533 = sub nsw i32 %conv532, 1
  %idxprom534 = sext i32 %sub533 to i64
  %arrayidx535 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %178, i64 %idxprom534
  %kind536 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx535, i32 0, i32 0
  %180 = load i8, i8* %kind536, align 2
  %conv537 = zext i8 %180 to i32
  %kind538 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %181 = load i8, i8* %kind538, align 2
  %conv539 = zext i8 %181 to i32
  %cmp540 = icmp ne i32 %conv537, %conv539
  br i1 %cmp540, label %if.then552, label %lor.lhs.false542

lor.lhs.false542:                                 ; preds = %lor.lhs.false531
  %kind543 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %182 = load i8, i8* %kind543, align 2
  %conv544 = zext i8 %182 to i32
  %cmp545 = icmp ne i32 %conv544, 7
  br i1 %cmp545, label %land.lhs.true547, label %if.end590

land.lhs.true547:                                 ; preds = %lor.lhs.false542
  %kind548 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %183 = load i8, i8* %kind548, align 2
  %conv549 = zext i8 %183 to i32
  %cmp550 = icmp ne i32 %conv549, 8
  br i1 %cmp550, label %if.then552, label %if.end590

if.then552:                                       ; preds = %land.lhs.true547, %lor.lhs.false531, %if.else527
  %mode553 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %184 = load i8, i8* %mode553, align 1
  %conv554 = zext i8 %184 to i32
  %and555 = and i32 %conv554, 128
  %tobool556 = icmp ne i32 %and555, 0
  br i1 %tobool556, label %if.then557, label %if.end578

if.then557:                                       ; preds = %if.then552
  store i32 0, i32* %n, align 4
  br label %for.cond558

for.cond558:                                      ; preds = %for.inc571, %if.then557
  %185 = load i32, i32* %n, align 4
  %cmp559 = icmp slt i32 %185, 16
  br i1 %cmp559, label %for.body561, label %for.end573

for.body561:                                      ; preds = %for.cond558
  %mask562 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %186 = load i32, i32* %n, align 4
  %idxprom563 = sext i32 %186 to i64
  %arrayidx564 = getelementptr inbounds [16 x i16], [16 x i16]* %mask562, i64 0, i64 %idxprom563
  %187 = load i16, i16* %arrayidx564, align 2
  %conv565 = zext i16 %187 to i32
  %neg566 = xor i32 %conv565, -1
  %conv567 = trunc i32 %neg566 to i16
  %mask568 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %188 = load i32, i32* %n, align 4
  %idxprom569 = sext i32 %188 to i64
  %arrayidx570 = getelementptr inbounds [16 x i16], [16 x i16]* %mask568, i64 0, i64 %idxprom569
  store i16 %conv567, i16* %arrayidx570, align 2
  br label %for.inc571

for.inc571:                                       ; preds = %for.body561
  %189 = load i32, i32* %n, align 4
  %inc572 = add nsw i32 %189, 1
  store i32 %inc572, i32* %n, align 4
  br label %for.cond558, !llvm.loop !8

for.end573:                                       ; preds = %for.cond558
  %mode574 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %190 = load i8, i8* %mode574, align 1
  %conv575 = zext i8 %190 to i32
  %and576 = and i32 %conv575, -129
  %conv577 = trunc i32 %and576 to i8
  store i8 %conv577, i8* %mode574, align 1
  br label %if.end578

if.end578:                                        ; preds = %for.end573, %if.then552
  %191 = load i16, i16* %k, align 2
  %conv579 = sext i16 %191 to i64
  %192 = load i64, i64* %tokens_len, align 8
  %cmp580 = icmp sge i64 %conv579, %192
  br i1 %cmp580, label %if.then582, label %if.end584

if.then582:                                       ; preds = %if.end578
  %call583 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %retval, align 4
  br label %return

if.end584:                                        ; preds = %if.end578
  %193 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %194 = load i16, i16* %k, align 2
  %inc585 = add i16 %194, 1
  store i16 %inc585, i16* %k, align 2
  %idxprom586 = sext i16 %194 to i64
  %arrayidx587 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %193, i64 %idxprom586
  %195 = bitcast %struct._RegexToken* %arrayidx587 to i8*
  %196 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %195, i8* align 2 %196, i64 40, i1 false)
  %197 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %197, i8 0, i64 40, i1 false)
  %count_lo588 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo588, align 2
  %count_hi589 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi589, align 2
  br label %if.end590

if.end590:                                        ; preds = %if.end584, %land.lhs.true547, %lor.lhs.false542
  %198 = load i8, i8* %c, align 1
  %conv591 = sext i8 %198 to i32
  %cmp592 = icmp eq i32 %conv591, 92
  br i1 %cmp592, label %if.then594, label %if.else595

if.then594:                                       ; preds = %if.end590
  store i32 1, i32* %esc_state, align 4
  br label %if.end955

if.else595:                                       ; preds = %if.end590
  %199 = load i8, i8* %c, align 1
  %conv596 = sext i8 %199 to i32
  %cmp597 = icmp eq i32 %conv596, 91
  br i1 %cmp597, label %if.then599, label %if.else613

if.then599:                                       ; preds = %if.else595
  store i32 4, i32* %state, align 4
  store i32 -1, i32* %char_class_mem, align 4
  %kind600 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 0, i8* %kind600, align 2
  %200 = load i8*, i8** %pattern.addr, align 8
  %201 = load i64, i64* %i, align 8
  %add601 = add i64 %201, 1
  %arrayidx602 = getelementptr inbounds i8, i8* %200, i64 %add601
  %202 = load i8, i8* %arrayidx602, align 1
  %conv603 = sext i8 %202 to i32
  %cmp604 = icmp eq i32 %conv603, 94
  br i1 %cmp604, label %if.then606, label %if.end612

if.then606:                                       ; preds = %if.then599
  %mode607 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %203 = load i8, i8* %mode607, align 1
  %conv608 = zext i8 %203 to i32
  %or609 = or i32 %conv608, 128
  %conv610 = trunc i32 %or609 to i8
  store i8 %conv610, i8* %mode607, align 1
  %204 = load i64, i64* %i, align 8
  %add611 = add i64 %204, 1
  store i64 %add611, i64* %i, align 8
  br label %if.end612

if.end612:                                        ; preds = %if.then606, %if.then599
  br label %if.end954

if.else613:                                       ; preds = %if.else595
  %205 = load i8, i8* %c, align 1
  %conv614 = sext i8 %205 to i32
  %cmp615 = icmp eq i32 %conv614, 40
  br i1 %cmp615, label %if.then617, label %if.else721

if.then617:                                       ; preds = %if.else613
  %206 = load i32, i32* %paren_count, align 4
  %add618 = add nsw i32 %206, 1
  store i32 %add618, i32* %paren_count, align 4
  store i32 1, i32* %state, align 4
  %kind619 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 1, i8* %kind619, align 2
  %count_lo620 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 0, i16* %count_lo620, align 2
  %count_hi621 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 1, i16* %count_hi621, align 2
  %207 = load i8*, i8** %pattern.addr, align 8
  %208 = load i64, i64* %i, align 8
  %add622 = add i64 %208, 1
  %arrayidx623 = getelementptr inbounds i8, i8* %207, i64 %add622
  %209 = load i8, i8* %arrayidx623, align 1
  %conv624 = sext i8 %209 to i32
  %cmp625 = icmp eq i32 %conv624, 63
  br i1 %cmp625, label %land.lhs.true627, label %if.else636

land.lhs.true627:                                 ; preds = %if.then617
  %210 = load i8*, i8** %pattern.addr, align 8
  %211 = load i64, i64* %i, align 8
  %add628 = add i64 %211, 2
  %arrayidx629 = getelementptr inbounds i8, i8* %210, i64 %add628
  %212 = load i8, i8* %arrayidx629, align 1
  %conv630 = sext i8 %212 to i32
  %cmp631 = icmp eq i32 %conv630, 58
  br i1 %cmp631, label %if.then633, label %if.else636

if.then633:                                       ; preds = %land.lhs.true627
  %kind634 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 2, i8* %kind634, align 2
  %213 = load i64, i64* %i, align 8
  %add635 = add i64 %213, 2
  store i64 %add635, i64* %i, align 8
  br label %if.end720

if.else636:                                       ; preds = %land.lhs.true627, %if.then617
  %214 = load i8*, i8** %pattern.addr, align 8
  %215 = load i64, i64* %i, align 8
  %add637 = add i64 %215, 1
  %arrayidx638 = getelementptr inbounds i8, i8* %214, i64 %add637
  %216 = load i8, i8* %arrayidx638, align 1
  %conv639 = sext i8 %216 to i32
  %cmp640 = icmp eq i32 %conv639, 63
  br i1 %cmp640, label %land.lhs.true642, label %if.end719

land.lhs.true642:                                 ; preds = %if.else636
  %217 = load i8*, i8** %pattern.addr, align 8
  %218 = load i64, i64* %i, align 8
  %add643 = add i64 %218, 2
  %arrayidx644 = getelementptr inbounds i8, i8* %217, i64 %add643
  %219 = load i8, i8* %arrayidx644, align 1
  %conv645 = sext i8 %219 to i32
  %cmp646 = icmp eq i32 %conv645, 62
  br i1 %cmp646, label %if.then648, label %if.end719

if.then648:                                       ; preds = %land.lhs.true642
  %kind649 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 2, i8* %kind649, align 2
  %220 = load i16, i16* %k, align 2
  %conv650 = sext i16 %220 to i32
  %cmp651 = icmp eq i32 %conv650, 0
  br i1 %cmp651, label %if.then674, label %lor.lhs.false653

lor.lhs.false653:                                 ; preds = %if.then648
  %221 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %222 = load i16, i16* %k, align 2
  %conv654 = sext i16 %222 to i32
  %sub655 = sub nsw i32 %conv654, 1
  %idxprom656 = sext i32 %sub655 to i64
  %arrayidx657 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %221, i64 %idxprom656
  %kind658 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx657, i32 0, i32 0
  %223 = load i8, i8* %kind658, align 2
  %conv659 = zext i8 %223 to i32
  %kind660 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %224 = load i8, i8* %kind660, align 2
  %conv661 = zext i8 %224 to i32
  %cmp662 = icmp ne i32 %conv659, %conv661
  br i1 %cmp662, label %if.then674, label %lor.lhs.false664

lor.lhs.false664:                                 ; preds = %lor.lhs.false653
  %kind665 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %225 = load i8, i8* %kind665, align 2
  %conv666 = zext i8 %225 to i32
  %cmp667 = icmp ne i32 %conv666, 7
  br i1 %cmp667, label %land.lhs.true669, label %if.end713

land.lhs.true669:                                 ; preds = %lor.lhs.false664
  %kind670 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %226 = load i8, i8* %kind670, align 2
  %conv671 = zext i8 %226 to i32
  %cmp672 = icmp ne i32 %conv671, 8
  br i1 %cmp672, label %if.then674, label %if.end713

if.then674:                                       ; preds = %land.lhs.true669, %lor.lhs.false653, %if.then648
  %mode675 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %227 = load i8, i8* %mode675, align 1
  %conv676 = zext i8 %227 to i32
  %and677 = and i32 %conv676, 128
  %tobool678 = icmp ne i32 %and677, 0
  br i1 %tobool678, label %if.then679, label %if.end701

if.then679:                                       ; preds = %if.then674
  store i32 0, i32* %n680, align 4
  br label %for.cond681

for.cond681:                                      ; preds = %for.inc694, %if.then679
  %228 = load i32, i32* %n680, align 4
  %cmp682 = icmp slt i32 %228, 16
  br i1 %cmp682, label %for.body684, label %for.end696

for.body684:                                      ; preds = %for.cond681
  %mask685 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %229 = load i32, i32* %n680, align 4
  %idxprom686 = sext i32 %229 to i64
  %arrayidx687 = getelementptr inbounds [16 x i16], [16 x i16]* %mask685, i64 0, i64 %idxprom686
  %230 = load i16, i16* %arrayidx687, align 2
  %conv688 = zext i16 %230 to i32
  %neg689 = xor i32 %conv688, -1
  %conv690 = trunc i32 %neg689 to i16
  %mask691 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %231 = load i32, i32* %n680, align 4
  %idxprom692 = sext i32 %231 to i64
  %arrayidx693 = getelementptr inbounds [16 x i16], [16 x i16]* %mask691, i64 0, i64 %idxprom692
  store i16 %conv690, i16* %arrayidx693, align 2
  br label %for.inc694

for.inc694:                                       ; preds = %for.body684
  %232 = load i32, i32* %n680, align 4
  %inc695 = add nsw i32 %232, 1
  store i32 %inc695, i32* %n680, align 4
  br label %for.cond681, !llvm.loop !9

for.end696:                                       ; preds = %for.cond681
  %mode697 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %233 = load i8, i8* %mode697, align 1
  %conv698 = zext i8 %233 to i32
  %and699 = and i32 %conv698, -129
  %conv700 = trunc i32 %and699 to i8
  store i8 %conv700, i8* %mode697, align 1
  br label %if.end701

if.end701:                                        ; preds = %for.end696, %if.then674
  %234 = load i16, i16* %k, align 2
  %conv702 = sext i16 %234 to i64
  %235 = load i64, i64* %tokens_len, align 8
  %cmp703 = icmp sge i64 %conv702, %235
  br i1 %cmp703, label %if.then705, label %if.end707

if.then705:                                       ; preds = %if.end701
  %call706 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %retval, align 4
  br label %return

if.end707:                                        ; preds = %if.end701
  %236 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %237 = load i16, i16* %k, align 2
  %inc708 = add i16 %237, 1
  store i16 %inc708, i16* %k, align 2
  %idxprom709 = sext i16 %237 to i64
  %arrayidx710 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %236, i64 %idxprom709
  %238 = bitcast %struct._RegexToken* %arrayidx710 to i8*
  %239 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %238, i8* align 2 %239, i64 40, i1 false)
  %240 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %240, i8 0, i64 40, i1 false)
  %count_lo711 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo711, align 2
  %count_hi712 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi712, align 2
  br label %if.end713

if.end713:                                        ; preds = %if.end707, %land.lhs.true669, %lor.lhs.false664
  store i32 1, i32* %state, align 4
  %kind714 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 2, i8* %kind714, align 2
  %mode715 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  store i8 1, i8* %mode715, align 1
  %count_lo716 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo716, align 2
  %count_hi717 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi717, align 2
  %241 = load i64, i64* %i, align 8
  %add718 = add i64 %241, 2
  store i64 %add718, i64* %i, align 8
  br label %if.end719

if.end719:                                        ; preds = %if.end713, %land.lhs.true642, %if.else636
  br label %if.end720

if.end720:                                        ; preds = %if.end719, %if.then633
  br label %if.end953

if.else721:                                       ; preds = %if.else613
  %242 = load i8, i8* %c, align 1
  %conv722 = sext i8 %242 to i32
  %cmp723 = icmp eq i32 %conv722, 41
  br i1 %cmp723, label %if.then725, label %if.else870

if.then725:                                       ; preds = %if.else721
  %243 = load i32, i32* %paren_count, align 4
  %sub726 = sub nsw i32 %243, 1
  store i32 %sub726, i32* %paren_count, align 4
  %244 = load i32, i32* %paren_count, align 4
  %cmp727 = icmp slt i32 %244, 0
  br i1 %cmp727, label %if.then733, label %lor.lhs.false729

lor.lhs.false729:                                 ; preds = %if.then725
  %245 = load i16, i16* %k, align 2
  %conv730 = sext i16 %245 to i32
  %cmp731 = icmp eq i32 %conv730, 0
  br i1 %cmp731, label %if.then733, label %if.end734

if.then733:                                       ; preds = %lor.lhs.false729, %if.then725
  store i32 -1, i32* %retval, align 4
  br label %return

if.end734:                                        ; preds = %lor.lhs.false729
  %kind735 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 3, i8* %kind735, align 2
  store i32 2, i32* %state, align 4
  store i32 0, i32* %balance, align 4
  store i64 -1, i64* %found, align 8
  %246 = load i16, i16* %k, align 2
  %conv736 = sext i16 %246 to i32
  %sub737 = sub nsw i32 %conv736, 1
  %conv738 = sext i32 %sub737 to i64
  store i64 %conv738, i64* %l, align 8
  br label %for.cond739

for.cond739:                                      ; preds = %for.inc771, %if.end734
  %247 = load i64, i64* %l, align 8
  %cmp740 = icmp sge i64 %247, 0
  br i1 %cmp740, label %for.body742, label %for.end772

for.body742:                                      ; preds = %for.cond739
  %248 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %249 = load i64, i64* %l, align 8
  %arrayidx743 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %248, i64 %249
  %kind744 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx743, i32 0, i32 0
  %250 = load i8, i8* %kind744, align 2
  %conv745 = zext i8 %250 to i32
  %cmp746 = icmp eq i32 %conv745, 2
  br i1 %cmp746, label %if.then754, label %lor.lhs.false748

lor.lhs.false748:                                 ; preds = %for.body742
  %251 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %252 = load i64, i64* %l, align 8
  %arrayidx749 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %251, i64 %252
  %kind750 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx749, i32 0, i32 0
  %253 = load i8, i8* %kind750, align 2
  %conv751 = zext i8 %253 to i32
  %cmp752 = icmp eq i32 %conv751, 1
  br i1 %cmp752, label %if.then754, label %if.else761

if.then754:                                       ; preds = %lor.lhs.false748, %for.body742
  %254 = load i32, i32* %balance, align 4
  %cmp755 = icmp eq i32 %254, 0
  br i1 %cmp755, label %if.then757, label %if.else758

if.then757:                                       ; preds = %if.then754
  %255 = load i64, i64* %l, align 8
  store i64 %255, i64* %found, align 8
  br label %for.end772

if.else758:                                       ; preds = %if.then754
  %256 = load i32, i32* %balance, align 4
  %sub759 = sub nsw i32 %256, 1
  store i32 %sub759, i32* %balance, align 4
  br label %if.end760

if.end760:                                        ; preds = %if.else758
  br label %if.end770

if.else761:                                       ; preds = %lor.lhs.false748
  %257 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %258 = load i64, i64* %l, align 8
  %arrayidx762 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %257, i64 %258
  %kind763 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx762, i32 0, i32 0
  %259 = load i8, i8* %kind763, align 2
  %conv764 = zext i8 %259 to i32
  %cmp765 = icmp eq i32 %conv764, 3
  br i1 %cmp765, label %if.then767, label %if.end769

if.then767:                                       ; preds = %if.else761
  %260 = load i32, i32* %balance, align 4
  %add768 = add nsw i32 %260, 1
  store i32 %add768, i32* %balance, align 4
  br label %if.end769

if.end769:                                        ; preds = %if.then767, %if.else761
  br label %if.end770

if.end770:                                        ; preds = %if.end769, %if.end760
  br label %for.inc771

for.inc771:                                       ; preds = %if.end770
  %261 = load i64, i64* %l, align 8
  %dec = add nsw i64 %261, -1
  store i64 %dec, i64* %l, align 8
  br label %for.cond739, !llvm.loop !10

for.end772:                                       ; preds = %if.then757, %for.cond739
  %262 = load i64, i64* %found, align 8
  %cmp773 = icmp eq i64 %262, -1
  br i1 %cmp773, label %if.then775, label %if.end776

if.then775:                                       ; preds = %for.end772
  store i32 -1, i32* %retval, align 4
  br label %return

if.end776:                                        ; preds = %for.end772
  %263 = load i16, i16* %k, align 2
  %conv777 = sext i16 %263 to i64
  %264 = load i64, i64* %found, align 8
  %sub778 = sub nsw i64 %conv777, %264
  store i64 %sub778, i64* %diff, align 8
  %265 = load i64, i64* %diff, align 8
  %cmp779 = icmp sgt i64 %265, 32767
  br i1 %cmp779, label %if.then781, label %if.end782

if.then781:                                       ; preds = %if.end776
  store i32 -1, i32* %retval, align 4
  br label %return

if.end782:                                        ; preds = %if.end776
  %266 = load i64, i64* %diff, align 8
  %sub783 = sub nsw i64 0, %266
  %conv784 = trunc i64 %sub783 to i16
  %pair_offset = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 5
  store i16 %conv784, i16* %pair_offset, align 2
  %267 = load i64, i64* %diff, align 8
  %conv785 = trunc i64 %267 to i16
  %268 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %269 = load i64, i64* %found, align 8
  %arrayidx786 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %268, i64 %269
  %pair_offset787 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx786, i32 0, i32 5
  store i16 %conv785, i16* %pair_offset787, align 2
  %270 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %271 = load i64, i64* %found, align 8
  %arrayidx788 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %270, i64 %271
  %mode789 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx788, i32 0, i32 1
  %272 = load i8, i8* %mode789, align 1
  %conv790 = zext i8 %272 to i32
  %cmp791 = icmp eq i32 %conv790, 1
  br i1 %cmp791, label %if.then793, label %if.end869

if.then793:                                       ; preds = %if.end782
  %273 = load i16, i16* %k, align 2
  %conv794 = sext i16 %273 to i32
  %cmp795 = icmp eq i32 %conv794, 0
  br i1 %cmp795, label %if.then818, label %lor.lhs.false797

lor.lhs.false797:                                 ; preds = %if.then793
  %274 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %275 = load i16, i16* %k, align 2
  %conv798 = sext i16 %275 to i32
  %sub799 = sub nsw i32 %conv798, 1
  %idxprom800 = sext i32 %sub799 to i64
  %arrayidx801 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %274, i64 %idxprom800
  %kind802 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx801, i32 0, i32 0
  %276 = load i8, i8* %kind802, align 2
  %conv803 = zext i8 %276 to i32
  %kind804 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %277 = load i8, i8* %kind804, align 2
  %conv805 = zext i8 %277 to i32
  %cmp806 = icmp ne i32 %conv803, %conv805
  br i1 %cmp806, label %if.then818, label %lor.lhs.false808

lor.lhs.false808:                                 ; preds = %lor.lhs.false797
  %kind809 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %278 = load i8, i8* %kind809, align 2
  %conv810 = zext i8 %278 to i32
  %cmp811 = icmp ne i32 %conv810, 7
  br i1 %cmp811, label %land.lhs.true813, label %if.end857

land.lhs.true813:                                 ; preds = %lor.lhs.false808
  %kind814 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %279 = load i8, i8* %kind814, align 2
  %conv815 = zext i8 %279 to i32
  %cmp816 = icmp ne i32 %conv815, 8
  br i1 %cmp816, label %if.then818, label %if.end857

if.then818:                                       ; preds = %land.lhs.true813, %lor.lhs.false797, %if.then793
  %mode819 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %280 = load i8, i8* %mode819, align 1
  %conv820 = zext i8 %280 to i32
  %and821 = and i32 %conv820, 128
  %tobool822 = icmp ne i32 %and821, 0
  br i1 %tobool822, label %if.then823, label %if.end845

if.then823:                                       ; preds = %if.then818
  store i32 0, i32* %n824, align 4
  br label %for.cond825

for.cond825:                                      ; preds = %for.inc838, %if.then823
  %281 = load i32, i32* %n824, align 4
  %cmp826 = icmp slt i32 %281, 16
  br i1 %cmp826, label %for.body828, label %for.end840

for.body828:                                      ; preds = %for.cond825
  %mask829 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %282 = load i32, i32* %n824, align 4
  %idxprom830 = sext i32 %282 to i64
  %arrayidx831 = getelementptr inbounds [16 x i16], [16 x i16]* %mask829, i64 0, i64 %idxprom830
  %283 = load i16, i16* %arrayidx831, align 2
  %conv832 = zext i16 %283 to i32
  %neg833 = xor i32 %conv832, -1
  %conv834 = trunc i32 %neg833 to i16
  %mask835 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %284 = load i32, i32* %n824, align 4
  %idxprom836 = sext i32 %284 to i64
  %arrayidx837 = getelementptr inbounds [16 x i16], [16 x i16]* %mask835, i64 0, i64 %idxprom836
  store i16 %conv834, i16* %arrayidx837, align 2
  br label %for.inc838

for.inc838:                                       ; preds = %for.body828
  %285 = load i32, i32* %n824, align 4
  %inc839 = add nsw i32 %285, 1
  store i32 %inc839, i32* %n824, align 4
  br label %for.cond825, !llvm.loop !11

for.end840:                                       ; preds = %for.cond825
  %mode841 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %286 = load i8, i8* %mode841, align 1
  %conv842 = zext i8 %286 to i32
  %and843 = and i32 %conv842, -129
  %conv844 = trunc i32 %and843 to i8
  store i8 %conv844, i8* %mode841, align 1
  br label %if.end845

if.end845:                                        ; preds = %for.end840, %if.then818
  %287 = load i16, i16* %k, align 2
  %conv846 = sext i16 %287 to i64
  %288 = load i64, i64* %tokens_len, align 8
  %cmp847 = icmp sge i64 %conv846, %288
  br i1 %cmp847, label %if.then849, label %if.end851

if.then849:                                       ; preds = %if.end845
  %call850 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %retval, align 4
  br label %return

if.end851:                                        ; preds = %if.end845
  %289 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %290 = load i16, i16* %k, align 2
  %inc852 = add i16 %290, 1
  store i16 %inc852, i16* %k, align 2
  %idxprom853 = sext i16 %290 to i64
  %arrayidx854 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %289, i64 %idxprom853
  %291 = bitcast %struct._RegexToken* %arrayidx854 to i8*
  %292 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %291, i8* align 2 %292, i64 40, i1 false)
  %293 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %293, i8 0, i64 40, i1 false)
  %count_lo855 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo855, align 2
  %count_hi856 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi856, align 2
  br label %if.end857

if.end857:                                        ; preds = %if.end851, %land.lhs.true813, %lor.lhs.false808
  %kind858 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 3, i8* %kind858, align 2
  %mode859 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  store i8 1, i8* %mode859, align 1
  %294 = load i64, i64* %diff, align 8
  %sub860 = sub nsw i64 0, %294
  %sub861 = sub nsw i64 %sub860, 2
  %conv862 = trunc i64 %sub861 to i16
  %pair_offset863 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 5
  store i16 %conv862, i16* %pair_offset863, align 2
  %295 = load i64, i64* %diff, align 8
  %add864 = add nsw i64 %295, 2
  %conv865 = trunc i64 %add864 to i16
  %296 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %297 = load i64, i64* %found, align 8
  %sub866 = sub nsw i64 %297, 1
  %arrayidx867 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %296, i64 %sub866
  %pair_offset868 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx867, i32 0, i32 5
  store i16 %conv865, i16* %pair_offset868, align 2
  br label %if.end869

if.end869:                                        ; preds = %if.end857, %if.end782
  br label %if.end952

if.else870:                                       ; preds = %if.else721
  %298 = load i8, i8* %c, align 1
  %conv871 = sext i8 %298 to i32
  %cmp872 = icmp eq i32 %conv871, 63
  br i1 %cmp872, label %if.then886, label %lor.lhs.false874

lor.lhs.false874:                                 ; preds = %if.else870
  %299 = load i8, i8* %c, align 1
  %conv875 = sext i8 %299 to i32
  %cmp876 = icmp eq i32 %conv875, 43
  br i1 %cmp876, label %if.then886, label %lor.lhs.false878

lor.lhs.false878:                                 ; preds = %lor.lhs.false874
  %300 = load i8, i8* %c, align 1
  %conv879 = sext i8 %300 to i32
  %cmp880 = icmp eq i32 %conv879, 42
  br i1 %cmp880, label %if.then886, label %lor.lhs.false882

lor.lhs.false882:                                 ; preds = %lor.lhs.false878
  %301 = load i8, i8* %c, align 1
  %conv883 = sext i8 %301 to i32
  %cmp884 = icmp eq i32 %conv883, 123
  br i1 %cmp884, label %if.then886, label %if.else888

if.then886:                                       ; preds = %lor.lhs.false882, %lor.lhs.false878, %lor.lhs.false874, %if.else870
  %call887 = call i32 @puts(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.else888:                                       ; preds = %lor.lhs.false882
  %302 = load i8, i8* %c, align 1
  %conv889 = sext i8 %302 to i32
  %cmp890 = icmp eq i32 %conv889, 46
  br i1 %cmp890, label %if.then892, label %if.else917

if.then892:                                       ; preds = %if.else888
  store i32 0, i32* %n893, align 4
  br label %for.cond894

for.cond894:                                      ; preds = %for.inc901, %if.then892
  %303 = load i32, i32* %n893, align 4
  %cmp895 = icmp slt i32 %303, 16
  br i1 %cmp895, label %for.body897, label %for.end903

for.body897:                                      ; preds = %for.cond894
  %mask898 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %304 = load i32, i32* %n893, align 4
  %idxprom899 = sext i32 %304 to i64
  %arrayidx900 = getelementptr inbounds [16 x i16], [16 x i16]* %mask898, i64 0, i64 %idxprom899
  store i16 -1, i16* %arrayidx900, align 2
  br label %for.inc901

for.inc901:                                       ; preds = %for.body897
  %305 = load i32, i32* %n893, align 4
  %inc902 = add nsw i32 %305, 1
  store i32 %inc902, i32* %n893, align 4
  br label %for.cond894, !llvm.loop !12

for.end903:                                       ; preds = %for.cond894
  %306 = load i32, i32* %flags.addr, align 4
  %and904 = and i32 %306, 1
  %tobool905 = icmp ne i32 %and904, 0
  br i1 %tobool905, label %if.then906, label %if.end916

if.then906:                                       ; preds = %for.end903
  %mask907 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %arrayidx908 = getelementptr inbounds [16 x i16], [16 x i16]* %mask907, i64 0, i64 1
  %307 = load i16, i16* %arrayidx908, align 2
  %conv909 = zext i16 %307 to i32
  %xor = xor i32 %conv909, 4
  %conv910 = trunc i32 %xor to i16
  store i16 %conv910, i16* %arrayidx908, align 2
  %mask911 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %arrayidx912 = getelementptr inbounds [16 x i16], [16 x i16]* %mask911, i64 0, i64 1
  %308 = load i16, i16* %arrayidx912, align 2
  %conv913 = zext i16 %308 to i32
  %xor914 = xor i32 %conv913, 32
  %conv915 = trunc i32 %xor914 to i16
  store i16 %conv915, i16* %arrayidx912, align 2
  br label %if.end916

if.end916:                                        ; preds = %if.then906, %for.end903
  store i32 2, i32* %state, align 4
  br label %if.end950

if.else917:                                       ; preds = %if.else888
  %309 = load i8, i8* %c, align 1
  %conv918 = sext i8 %309 to i32
  %cmp919 = icmp eq i32 %conv918, 94
  br i1 %cmp919, label %if.then921, label %if.else923

if.then921:                                       ; preds = %if.else917
  %kind922 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 5, i8* %kind922, align 2
  store i32 1, i32* %state, align 4
  br label %if.end949

if.else923:                                       ; preds = %if.else917
  %310 = load i8, i8* %c, align 1
  %conv924 = sext i8 %310 to i32
  %cmp925 = icmp eq i32 %conv924, 36
  br i1 %cmp925, label %if.then927, label %if.else929

if.then927:                                       ; preds = %if.else923
  %kind928 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 6, i8* %kind928, align 2
  store i32 1, i32* %state, align 4
  br label %if.end948

if.else929:                                       ; preds = %if.else923
  %311 = load i8, i8* %c, align 1
  %conv930 = sext i8 %311 to i32
  %cmp931 = icmp eq i32 %conv930, 124
  br i1 %cmp931, label %if.then933, label %if.else935

if.then933:                                       ; preds = %if.else929
  %kind934 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 4, i8* %kind934, align 2
  store i32 1, i32* %state, align 4
  br label %if.end947

if.else935:                                       ; preds = %if.else929
  %312 = load i8, i8* %c, align 1
  %conv936 = zext i8 %312 to i32
  %and937 = and i32 %conv936, 15
  %shl938 = shl i32 1, %and937
  %mask939 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %313 = load i8, i8* %c, align 1
  %conv940 = zext i8 %313 to i32
  %shr941 = ashr i32 %conv940, 4
  %idxprom942 = sext i32 %shr941 to i64
  %arrayidx943 = getelementptr inbounds [16 x i16], [16 x i16]* %mask939, i64 0, i64 %idxprom942
  %314 = load i16, i16* %arrayidx943, align 2
  %conv944 = zext i16 %314 to i32
  %or945 = or i32 %conv944, %shl938
  %conv946 = trunc i32 %or945 to i16
  store i16 %conv946, i16* %arrayidx943, align 2
  store i32 2, i32* %state, align 4
  br label %if.end947

if.end947:                                        ; preds = %if.else935, %if.then933
  br label %if.end948

if.end948:                                        ; preds = %if.end947, %if.then927
  br label %if.end949

if.end949:                                        ; preds = %if.end948, %if.then921
  br label %if.end950

if.end950:                                        ; preds = %if.end949, %if.end916
  br label %if.end951

if.end951:                                        ; preds = %if.end950
  br label %if.end952

if.end952:                                        ; preds = %if.end951, %if.end869
  br label %if.end953

if.end953:                                        ; preds = %if.end952, %if.end720
  br label %if.end954

if.end954:                                        ; preds = %if.end953, %if.end612
  br label %if.end955

if.end955:                                        ; preds = %if.end954, %if.then594
  br label %if.end956

if.end956:                                        ; preds = %if.end955, %if.end526
  br label %if.end1409

if.else957:                                       ; preds = %if.end156
  %315 = load i32, i32* %state, align 4
  %cmp958 = icmp eq i32 %315, 4
  br i1 %cmp958, label %if.then966, label %lor.lhs.false960

lor.lhs.false960:                                 ; preds = %if.else957
  %316 = load i32, i32* %state, align 4
  %cmp961 = icmp eq i32 %316, 5
  br i1 %cmp961, label %if.then966, label %lor.lhs.false963

lor.lhs.false963:                                 ; preds = %lor.lhs.false960
  %317 = load i32, i32* %state, align 4
  %cmp964 = icmp eq i32 %317, 6
  br i1 %cmp964, label %if.then966, label %if.else1407

if.then966:                                       ; preds = %lor.lhs.false963, %lor.lhs.false960, %if.else957
  %318 = load i8, i8* %c, align 1
  %conv967 = sext i8 %318 to i32
  %cmp968 = icmp eq i32 %conv967, 92
  br i1 %cmp968, label %land.lhs.true970, label %if.end974

land.lhs.true970:                                 ; preds = %if.then966
  %319 = load i32, i32* %esc_state, align 4
  %cmp971 = icmp eq i32 %319, 0
  br i1 %cmp971, label %if.then973, label %if.end974

if.then973:                                       ; preds = %land.lhs.true970
  store i32 1, i32* %esc_state, align 4
  br label %for.inc1410

if.end974:                                        ; preds = %land.lhs.true970, %if.then966
  store i8 0, i8* %esc_c, align 1
  %320 = load i32, i32* %esc_state, align 4
  %cmp975 = icmp eq i32 %320, 1
  br i1 %cmp975, label %if.then977, label %if.end1299

if.then977:                                       ; preds = %if.end974
  store i32 0, i32* %esc_state, align 4
  %321 = load i8, i8* %c, align 1
  %conv978 = sext i8 %321 to i32
  %cmp979 = icmp eq i32 %conv978, 110
  br i1 %cmp979, label %if.then981, label %if.else982

if.then981:                                       ; preds = %if.then977
  store i8 10, i8* %esc_c, align 1
  br label %if.end1298

if.else982:                                       ; preds = %if.then977
  %322 = load i8, i8* %c, align 1
  %conv983 = sext i8 %322 to i32
  %cmp984 = icmp eq i32 %conv983, 114
  br i1 %cmp984, label %if.then986, label %if.else987

if.then986:                                       ; preds = %if.else982
  store i8 13, i8* %esc_c, align 1
  br label %if.end1297

if.else987:                                       ; preds = %if.else982
  %323 = load i8, i8* %c, align 1
  %conv988 = sext i8 %323 to i32
  %cmp989 = icmp eq i32 %conv988, 116
  br i1 %cmp989, label %if.then991, label %if.else992

if.then991:                                       ; preds = %if.else987
  store i8 9, i8* %esc_c, align 1
  br label %if.end1296

if.else992:                                       ; preds = %if.else987
  %324 = load i8, i8* %c, align 1
  %conv993 = sext i8 %324 to i32
  %cmp994 = icmp eq i32 %conv993, 118
  br i1 %cmp994, label %if.then996, label %if.else997

if.then996:                                       ; preds = %if.else992
  store i8 11, i8* %esc_c, align 1
  br label %if.end1295

if.else997:                                       ; preds = %if.else992
  %325 = load i8, i8* %c, align 1
  %conv998 = sext i8 %325 to i32
  %cmp999 = icmp eq i32 %conv998, 102
  br i1 %cmp999, label %if.then1001, label %if.else1002

if.then1001:                                      ; preds = %if.else997
  store i8 12, i8* %esc_c, align 1
  br label %if.end1294

if.else1002:                                      ; preds = %if.else997
  %326 = load i8, i8* %c, align 1
  %conv1003 = sext i8 %326 to i32
  %cmp1004 = icmp eq i32 %conv1003, 120
  br i1 %cmp1004, label %if.then1006, label %if.else1103

if.then1006:                                      ; preds = %if.else1002
  %327 = load i8*, i8** %pattern.addr, align 8
  %328 = load i64, i64* %i, align 8
  %add1007 = add i64 %328, 1
  %arrayidx1008 = getelementptr inbounds i8, i8* %327, i64 %add1007
  %329 = load i8, i8* %arrayidx1008, align 1
  %conv1009 = sext i8 %329 to i32
  %cmp1010 = icmp eq i32 %conv1009, 0
  br i1 %cmp1010, label %if.then1018, label %lor.lhs.false1012

lor.lhs.false1012:                                ; preds = %if.then1006
  %330 = load i8*, i8** %pattern.addr, align 8
  %331 = load i64, i64* %i, align 8
  %add1013 = add i64 %331, 2
  %arrayidx1014 = getelementptr inbounds i8, i8* %330, i64 %add1013
  %332 = load i8, i8* %arrayidx1014, align 1
  %conv1015 = sext i8 %332 to i32
  %cmp1016 = icmp eq i32 %conv1015, 0
  br i1 %cmp1016, label %if.then1018, label %if.end1019

if.then1018:                                      ; preds = %lor.lhs.false1012, %if.then1006
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1019:                                       ; preds = %lor.lhs.false1012
  %333 = load i8*, i8** %pattern.addr, align 8
  %334 = load i64, i64* %i, align 8
  %add1021 = add i64 %334, 1
  %arrayidx1022 = getelementptr inbounds i8, i8* %333, i64 %add1021
  %335 = load i8, i8* %arrayidx1022, align 1
  store i8 %335, i8* %n01020, align 1
  %336 = load i8*, i8** %pattern.addr, align 8
  %337 = load i64, i64* %i, align 8
  %add1024 = add i64 %337, 1
  %arrayidx1025 = getelementptr inbounds i8, i8* %336, i64 %add1024
  %338 = load i8, i8* %arrayidx1025, align 1
  store i8 %338, i8* %n11023, align 1
  %339 = load i8, i8* %n01020, align 1
  %conv1026 = zext i8 %339 to i32
  %cmp1027 = icmp slt i32 %conv1026, 48
  br i1 %cmp1027, label %if.then1057, label %lor.lhs.false1029

lor.lhs.false1029:                                ; preds = %if.end1019
  %340 = load i8, i8* %n01020, align 1
  %conv1030 = zext i8 %340 to i32
  %cmp1031 = icmp sgt i32 %conv1030, 102
  br i1 %cmp1031, label %if.then1057, label %lor.lhs.false1033

lor.lhs.false1033:                                ; preds = %lor.lhs.false1029
  %341 = load i8, i8* %n11023, align 1
  %conv1034 = zext i8 %341 to i32
  %cmp1035 = icmp slt i32 %conv1034, 48
  br i1 %cmp1035, label %if.then1057, label %lor.lhs.false1037

lor.lhs.false1037:                                ; preds = %lor.lhs.false1033
  %342 = load i8, i8* %n11023, align 1
  %conv1038 = zext i8 %342 to i32
  %cmp1039 = icmp sgt i32 %conv1038, 102
  br i1 %cmp1039, label %if.then1057, label %lor.lhs.false1041

lor.lhs.false1041:                                ; preds = %lor.lhs.false1037
  %343 = load i8, i8* %n01020, align 1
  %conv1042 = zext i8 %343 to i32
  %cmp1043 = icmp sgt i32 %conv1042, 57
  br i1 %cmp1043, label %land.lhs.true1045, label %lor.lhs.false1049

land.lhs.true1045:                                ; preds = %lor.lhs.false1041
  %344 = load i8, i8* %n01020, align 1
  %conv1046 = zext i8 %344 to i32
  %cmp1047 = icmp slt i32 %conv1046, 65
  br i1 %cmp1047, label %if.then1057, label %lor.lhs.false1049

lor.lhs.false1049:                                ; preds = %land.lhs.true1045, %lor.lhs.false1041
  %345 = load i8, i8* %n11023, align 1
  %conv1050 = zext i8 %345 to i32
  %cmp1051 = icmp sgt i32 %conv1050, 57
  br i1 %cmp1051, label %land.lhs.true1053, label %if.end1058

land.lhs.true1053:                                ; preds = %lor.lhs.false1049
  %346 = load i8, i8* %n11023, align 1
  %conv1054 = zext i8 %346 to i32
  %cmp1055 = icmp slt i32 %conv1054, 65
  br i1 %cmp1055, label %if.then1057, label %if.end1058

if.then1057:                                      ; preds = %land.lhs.true1053, %land.lhs.true1045, %lor.lhs.false1037, %lor.lhs.false1033, %lor.lhs.false1029, %if.end1019
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1058:                                       ; preds = %land.lhs.true1053, %lor.lhs.false1049
  %347 = load i8, i8* %n01020, align 1
  %conv1059 = zext i8 %347 to i32
  %cmp1060 = icmp sgt i32 %conv1059, 70
  br i1 %cmp1060, label %if.then1062, label %if.end1066

if.then1062:                                      ; preds = %if.end1058
  %348 = load i8, i8* %n01020, align 1
  %conv1063 = zext i8 %348 to i32
  %sub1064 = sub nsw i32 %conv1063, 32
  %conv1065 = trunc i32 %sub1064 to i8
  store i8 %conv1065, i8* %n01020, align 1
  br label %if.end1066

if.end1066:                                       ; preds = %if.then1062, %if.end1058
  %349 = load i8, i8* %n11023, align 1
  %conv1067 = zext i8 %349 to i32
  %cmp1068 = icmp sgt i32 %conv1067, 70
  br i1 %cmp1068, label %if.then1070, label %if.end1074

if.then1070:                                      ; preds = %if.end1066
  %350 = load i8, i8* %n11023, align 1
  %conv1071 = zext i8 %350 to i32
  %sub1072 = sub nsw i32 %conv1071, 32
  %conv1073 = trunc i32 %sub1072 to i8
  store i8 %conv1073, i8* %n11023, align 1
  br label %if.end1074

if.end1074:                                       ; preds = %if.then1070, %if.end1066
  %351 = load i8, i8* %n01020, align 1
  %conv1075 = zext i8 %351 to i32
  %cmp1076 = icmp sge i32 %conv1075, 65
  br i1 %cmp1076, label %if.then1078, label %if.end1082

if.then1078:                                      ; preds = %if.end1074
  %352 = load i8, i8* %n01020, align 1
  %conv1079 = zext i8 %352 to i32
  %sub1080 = sub nsw i32 %conv1079, 55
  %conv1081 = trunc i32 %sub1080 to i8
  store i8 %conv1081, i8* %n01020, align 1
  br label %if.end1082

if.end1082:                                       ; preds = %if.then1078, %if.end1074
  %353 = load i8, i8* %n11023, align 1
  %conv1083 = zext i8 %353 to i32
  %cmp1084 = icmp sge i32 %conv1083, 65
  br i1 %cmp1084, label %if.then1086, label %if.end1090

if.then1086:                                      ; preds = %if.end1082
  %354 = load i8, i8* %n11023, align 1
  %conv1087 = zext i8 %354 to i32
  %sub1088 = sub nsw i32 %conv1087, 55
  %conv1089 = trunc i32 %sub1088 to i8
  store i8 %conv1089, i8* %n11023, align 1
  br label %if.end1090

if.end1090:                                       ; preds = %if.then1086, %if.end1082
  %355 = load i8, i8* %n01020, align 1
  %conv1091 = zext i8 %355 to i32
  %sub1092 = sub nsw i32 %conv1091, 48
  %conv1093 = trunc i32 %sub1092 to i8
  store i8 %conv1093, i8* %n01020, align 1
  %356 = load i8, i8* %n11023, align 1
  %conv1094 = zext i8 %356 to i32
  %sub1095 = sub nsw i32 %conv1094, 48
  %conv1096 = trunc i32 %sub1095 to i8
  store i8 %conv1096, i8* %n11023, align 1
  %357 = load i8, i8* %n11023, align 1
  %conv1097 = zext i8 %357 to i32
  %shl1098 = shl i32 %conv1097, 4
  %358 = load i8, i8* %n01020, align 1
  %conv1099 = zext i8 %358 to i32
  %or1100 = or i32 %shl1098, %conv1099
  %conv1101 = trunc i32 %or1100 to i8
  store i8 %conv1101, i8* %esc_c, align 1
  %359 = load i64, i64* %i, align 8
  %add1102 = add i64 %359, 2
  store i64 %add1102, i64* %i, align 8
  br label %if.end1293

if.else1103:                                      ; preds = %if.else1002
  %360 = load i8, i8* %c, align 1
  %conv1104 = sext i8 %360 to i32
  %cmp1105 = icmp eq i32 %conv1104, 123
  br i1 %cmp1105, label %if.then1171, label %lor.lhs.false1107

lor.lhs.false1107:                                ; preds = %if.else1103
  %361 = load i8, i8* %c, align 1
  %conv1108 = sext i8 %361 to i32
  %cmp1109 = icmp eq i32 %conv1108, 125
  br i1 %cmp1109, label %if.then1171, label %lor.lhs.false1111

lor.lhs.false1111:                                ; preds = %lor.lhs.false1107
  %362 = load i8, i8* %c, align 1
  %conv1112 = sext i8 %362 to i32
  %cmp1113 = icmp eq i32 %conv1112, 91
  br i1 %cmp1113, label %if.then1171, label %lor.lhs.false1115

lor.lhs.false1115:                                ; preds = %lor.lhs.false1111
  %363 = load i8, i8* %c, align 1
  %conv1116 = sext i8 %363 to i32
  %cmp1117 = icmp eq i32 %conv1116, 93
  br i1 %cmp1117, label %if.then1171, label %lor.lhs.false1119

lor.lhs.false1119:                                ; preds = %lor.lhs.false1115
  %364 = load i8, i8* %c, align 1
  %conv1120 = sext i8 %364 to i32
  %cmp1121 = icmp eq i32 %conv1120, 45
  br i1 %cmp1121, label %if.then1171, label %lor.lhs.false1123

lor.lhs.false1123:                                ; preds = %lor.lhs.false1119
  %365 = load i8, i8* %c, align 1
  %conv1124 = sext i8 %365 to i32
  %cmp1125 = icmp eq i32 %conv1124, 40
  br i1 %cmp1125, label %if.then1171, label %lor.lhs.false1127

lor.lhs.false1127:                                ; preds = %lor.lhs.false1123
  %366 = load i8, i8* %c, align 1
  %conv1128 = sext i8 %366 to i32
  %cmp1129 = icmp eq i32 %conv1128, 41
  br i1 %cmp1129, label %if.then1171, label %lor.lhs.false1131

lor.lhs.false1131:                                ; preds = %lor.lhs.false1127
  %367 = load i8, i8* %c, align 1
  %conv1132 = sext i8 %367 to i32
  %cmp1133 = icmp eq i32 %conv1132, 124
  br i1 %cmp1133, label %if.then1171, label %lor.lhs.false1135

lor.lhs.false1135:                                ; preds = %lor.lhs.false1131
  %368 = load i8, i8* %c, align 1
  %conv1136 = sext i8 %368 to i32
  %cmp1137 = icmp eq i32 %conv1136, 94
  br i1 %cmp1137, label %if.then1171, label %lor.lhs.false1139

lor.lhs.false1139:                                ; preds = %lor.lhs.false1135
  %369 = load i8, i8* %c, align 1
  %conv1140 = sext i8 %369 to i32
  %cmp1141 = icmp eq i32 %conv1140, 36
  br i1 %cmp1141, label %if.then1171, label %lor.lhs.false1143

lor.lhs.false1143:                                ; preds = %lor.lhs.false1139
  %370 = load i8, i8* %c, align 1
  %conv1144 = sext i8 %370 to i32
  %cmp1145 = icmp eq i32 %conv1144, 42
  br i1 %cmp1145, label %if.then1171, label %lor.lhs.false1147

lor.lhs.false1147:                                ; preds = %lor.lhs.false1143
  %371 = load i8, i8* %c, align 1
  %conv1148 = sext i8 %371 to i32
  %cmp1149 = icmp eq i32 %conv1148, 43
  br i1 %cmp1149, label %if.then1171, label %lor.lhs.false1151

lor.lhs.false1151:                                ; preds = %lor.lhs.false1147
  %372 = load i8, i8* %c, align 1
  %conv1152 = sext i8 %372 to i32
  %cmp1153 = icmp eq i32 %conv1152, 63
  br i1 %cmp1153, label %if.then1171, label %lor.lhs.false1155

lor.lhs.false1155:                                ; preds = %lor.lhs.false1151
  %373 = load i8, i8* %c, align 1
  %conv1156 = sext i8 %373 to i32
  %cmp1157 = icmp eq i32 %conv1156, 58
  br i1 %cmp1157, label %if.then1171, label %lor.lhs.false1159

lor.lhs.false1159:                                ; preds = %lor.lhs.false1155
  %374 = load i8, i8* %c, align 1
  %conv1160 = sext i8 %374 to i32
  %cmp1161 = icmp eq i32 %conv1160, 46
  br i1 %cmp1161, label %if.then1171, label %lor.lhs.false1163

lor.lhs.false1163:                                ; preds = %lor.lhs.false1159
  %375 = load i8, i8* %c, align 1
  %conv1164 = sext i8 %375 to i32
  %cmp1165 = icmp eq i32 %conv1164, 47
  br i1 %cmp1165, label %if.then1171, label %lor.lhs.false1167

lor.lhs.false1167:                                ; preds = %lor.lhs.false1163
  %376 = load i8, i8* %c, align 1
  %conv1168 = sext i8 %376 to i32
  %cmp1169 = icmp eq i32 %conv1168, 92
  br i1 %cmp1169, label %if.then1171, label %if.else1172

if.then1171:                                      ; preds = %lor.lhs.false1167, %lor.lhs.false1163, %lor.lhs.false1159, %lor.lhs.false1155, %lor.lhs.false1151, %lor.lhs.false1147, %lor.lhs.false1143, %lor.lhs.false1139, %lor.lhs.false1135, %lor.lhs.false1131, %lor.lhs.false1127, %lor.lhs.false1123, %lor.lhs.false1119, %lor.lhs.false1115, %lor.lhs.false1111, %lor.lhs.false1107, %if.else1103
  %377 = load i8, i8* %c, align 1
  store i8 %377, i8* %esc_c, align 1
  br label %if.end1292

if.else1172:                                      ; preds = %lor.lhs.false1167
  %378 = load i8, i8* %c, align 1
  %conv1173 = sext i8 %378 to i32
  %cmp1174 = icmp eq i32 %conv1173, 100
  br i1 %cmp1174, label %if.then1196, label %lor.lhs.false1176

lor.lhs.false1176:                                ; preds = %if.else1172
  %379 = load i8, i8* %c, align 1
  %conv1177 = sext i8 %379 to i32
  %cmp1178 = icmp eq i32 %conv1177, 115
  br i1 %cmp1178, label %if.then1196, label %lor.lhs.false1180

lor.lhs.false1180:                                ; preds = %lor.lhs.false1176
  %380 = load i8, i8* %c, align 1
  %conv1181 = sext i8 %380 to i32
  %cmp1182 = icmp eq i32 %conv1181, 119
  br i1 %cmp1182, label %if.then1196, label %lor.lhs.false1184

lor.lhs.false1184:                                ; preds = %lor.lhs.false1180
  %381 = load i8, i8* %c, align 1
  %conv1185 = sext i8 %381 to i32
  %cmp1186 = icmp eq i32 %conv1185, 68
  br i1 %cmp1186, label %if.then1196, label %lor.lhs.false1188

lor.lhs.false1188:                                ; preds = %lor.lhs.false1184
  %382 = load i8, i8* %c, align 1
  %conv1189 = sext i8 %382 to i32
  %cmp1190 = icmp eq i32 %conv1189, 83
  br i1 %cmp1190, label %if.then1196, label %lor.lhs.false1192

lor.lhs.false1192:                                ; preds = %lor.lhs.false1188
  %383 = load i8, i8* %c, align 1
  %conv1193 = sext i8 %383 to i32
  %cmp1194 = icmp eq i32 %conv1193, 87
  br i1 %cmp1194, label %if.then1196, label %if.else1289

if.then1196:                                      ; preds = %lor.lhs.false1192, %lor.lhs.false1188, %lor.lhs.false1184, %lor.lhs.false1180, %lor.lhs.false1176, %if.else1172
  %384 = load i32, i32* %state, align 4
  %cmp1197 = icmp eq i32 %384, 6
  br i1 %cmp1197, label %if.then1199, label %if.end1201

if.then1199:                                      ; preds = %if.then1196
  %call1200 = call i32 @puts(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1201:                                       ; preds = %if.then1196
  %385 = load i8, i8* %c, align 1
  %conv1203 = sext i8 %385 to i32
  %cmp1204 = icmp sle i32 %conv1203, 90
  %conv1205 = zext i1 %cmp1204 to i32
  %conv1206 = trunc i32 %conv1205 to i8
  store i8 %conv1206, i8* %is_upper1202, align 1
  %arraydecay1208 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 0
  %386 = bitcast i16* %arraydecay1208 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %386, i8 0, i64 32, i1 false)
  %387 = load i8, i8* %is_upper1202, align 1
  %tobool1209 = icmp ne i8 %387, 0
  br i1 %tobool1209, label %if.then1210, label %if.end1214

if.then1210:                                      ; preds = %if.end1201
  %388 = load i8, i8* %c, align 1
  %conv1211 = sext i8 %388 to i32
  %add1212 = add nsw i32 %conv1211, 32
  %conv1213 = trunc i32 %add1212 to i8
  store i8 %conv1213, i8* %c, align 1
  br label %if.end1214

if.end1214:                                       ; preds = %if.then1210, %if.end1201
  %389 = load i8, i8* %c, align 1
  %conv1215 = sext i8 %389 to i32
  %cmp1216 = icmp eq i32 %conv1215, 100
  br i1 %cmp1216, label %if.then1222, label %lor.lhs.false1218

lor.lhs.false1218:                                ; preds = %if.end1214
  %390 = load i8, i8* %c, align 1
  %conv1219 = sext i8 %390 to i32
  %cmp1220 = icmp eq i32 %conv1219, 119
  br i1 %cmp1220, label %if.then1222, label %if.end1227

if.then1222:                                      ; preds = %lor.lhs.false1218, %if.end1214
  %arrayidx1223 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 3
  %391 = load i16, i16* %arrayidx1223, align 2
  %conv1224 = zext i16 %391 to i32
  %or1225 = or i32 %conv1224, 1023
  %conv1226 = trunc i32 %or1225 to i16
  store i16 %conv1226, i16* %arrayidx1223, align 2
  br label %if.end1227

if.end1227:                                       ; preds = %if.then1222, %lor.lhs.false1218
  %392 = load i8, i8* %c, align 1
  %conv1228 = sext i8 %392 to i32
  %cmp1229 = icmp eq i32 %conv1228, 115
  br i1 %cmp1229, label %if.then1231, label %if.end1240

if.then1231:                                      ; preds = %if.end1227
  %arrayidx1232 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 0
  %393 = load i16, i16* %arrayidx1232, align 16
  %conv1233 = zext i16 %393 to i32
  %or1234 = or i32 %conv1233, 15872
  %conv1235 = trunc i32 %or1234 to i16
  store i16 %conv1235, i16* %arrayidx1232, align 16
  %arrayidx1236 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 2
  %394 = load i16, i16* %arrayidx1236, align 4
  %conv1237 = zext i16 %394 to i32
  %or1238 = or i32 %conv1237, 1
  %conv1239 = trunc i32 %or1238 to i16
  store i16 %conv1239, i16* %arrayidx1236, align 4
  br label %if.end1240

if.end1240:                                       ; preds = %if.then1231, %if.end1227
  %395 = load i8, i8* %c, align 1
  %conv1241 = sext i8 %395 to i32
  %cmp1242 = icmp eq i32 %conv1241, 119
  br i1 %cmp1242, label %if.then1244, label %if.end1261

if.then1244:                                      ; preds = %if.end1240
  %arrayidx1245 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 4
  %396 = load i16, i16* %arrayidx1245, align 8
  %conv1246 = zext i16 %396 to i32
  %or1247 = or i32 %conv1246, 65534
  %conv1248 = trunc i32 %or1247 to i16
  store i16 %conv1248, i16* %arrayidx1245, align 8
  %arrayidx1249 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 5
  %397 = load i16, i16* %arrayidx1249, align 2
  %conv1250 = zext i16 %397 to i32
  %or1251 = or i32 %conv1250, 34815
  %conv1252 = trunc i32 %or1251 to i16
  store i16 %conv1252, i16* %arrayidx1249, align 2
  %arrayidx1253 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 6
  %398 = load i16, i16* %arrayidx1253, align 4
  %conv1254 = zext i16 %398 to i32
  %or1255 = or i32 %conv1254, 65534
  %conv1256 = trunc i32 %or1255 to i16
  store i16 %conv1256, i16* %arrayidx1253, align 4
  %arrayidx1257 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 7
  %399 = load i16, i16* %arrayidx1257, align 2
  %conv1258 = zext i16 %399 to i32
  %or1259 = or i32 %conv1258, 2047
  %conv1260 = trunc i32 %or1259 to i16
  store i16 %conv1260, i16* %arrayidx1257, align 2
  br label %if.end1261

if.end1261:                                       ; preds = %if.then1244, %if.end1240
  store i32 0, i32* %i1262, align 4
  br label %for.cond1263

for.cond1263:                                     ; preds = %for.inc1286, %if.end1261
  %400 = load i32, i32* %i1262, align 4
  %cmp1264 = icmp slt i32 %400, 16
  br i1 %cmp1264, label %for.body1266, label %for.end1288

for.body1266:                                     ; preds = %for.cond1263
  %401 = load i8, i8* %is_upper1202, align 1
  %conv1267 = zext i8 %401 to i32
  %tobool1268 = icmp ne i32 %conv1267, 0
  br i1 %tobool1268, label %cond.true1269, label %cond.false1274

cond.true1269:                                    ; preds = %for.body1266
  %402 = load i32, i32* %i1262, align 4
  %idxprom1270 = sext i32 %402 to i64
  %arrayidx1271 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 %idxprom1270
  %403 = load i16, i16* %arrayidx1271, align 2
  %conv1272 = zext i16 %403 to i32
  %neg1273 = xor i32 %conv1272, -1
  br label %cond.end1278

cond.false1274:                                   ; preds = %for.body1266
  %404 = load i32, i32* %i1262, align 4
  %idxprom1275 = sext i32 %404 to i64
  %arrayidx1276 = getelementptr inbounds [16 x i16], [16 x i16]* %m1207, i64 0, i64 %idxprom1275
  %405 = load i16, i16* %arrayidx1276, align 2
  %conv1277 = zext i16 %405 to i32
  br label %cond.end1278

cond.end1278:                                     ; preds = %cond.false1274, %cond.true1269
  %cond1279 = phi i32 [ %neg1273, %cond.true1269 ], [ %conv1277, %cond.false1274 ]
  %mask1280 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %406 = load i32, i32* %i1262, align 4
  %idxprom1281 = sext i32 %406 to i64
  %arrayidx1282 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1280, i64 0, i64 %idxprom1281
  %407 = load i16, i16* %arrayidx1282, align 2
  %conv1283 = zext i16 %407 to i32
  %or1284 = or i32 %conv1283, %cond1279
  %conv1285 = trunc i32 %or1284 to i16
  store i16 %conv1285, i16* %arrayidx1282, align 2
  br label %for.inc1286

for.inc1286:                                      ; preds = %cond.end1278
  %408 = load i32, i32* %i1262, align 4
  %inc1287 = add nsw i32 %408, 1
  store i32 %inc1287, i32* %i1262, align 4
  br label %for.cond1263, !llvm.loop !13

for.end1288:                                      ; preds = %for.cond1263
  store i32 -1, i32* %char_class_mem, align 4
  br label %for.inc1410

if.else1289:                                      ; preds = %lor.lhs.false1192
  %409 = load i8, i8* %c, align 1
  %conv1290 = sext i8 %409 to i32
  %call1291 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv1290)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1292:                                       ; preds = %if.then1171
  br label %if.end1293

if.end1293:                                       ; preds = %if.end1292, %if.end1090
  br label %if.end1294

if.end1294:                                       ; preds = %if.end1293, %if.then1001
  br label %if.end1295

if.end1295:                                       ; preds = %if.end1294, %if.then996
  br label %if.end1296

if.end1296:                                       ; preds = %if.end1295, %if.then991
  br label %if.end1297

if.end1297:                                       ; preds = %if.end1296, %if.then986
  br label %if.end1298

if.end1298:                                       ; preds = %if.end1297, %if.then981
  br label %if.end1299

if.end1299:                                       ; preds = %if.end1298, %if.end974
  %410 = load i32, i32* %state, align 4
  %cmp1300 = icmp eq i32 %410, 4
  br i1 %cmp1300, label %if.then1302, label %if.else1315

if.then1302:                                      ; preds = %if.end1299
  %411 = load i8, i8* %c, align 1
  %conv1303 = sext i8 %411 to i32
  store i32 %conv1303, i32* %char_class_mem, align 4
  %412 = load i8, i8* %c, align 1
  %conv1304 = zext i8 %412 to i32
  %and1305 = and i32 %conv1304, 15
  %shl1306 = shl i32 1, %and1305
  %mask1307 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %413 = load i8, i8* %c, align 1
  %conv1308 = zext i8 %413 to i32
  %shr1309 = ashr i32 %conv1308, 4
  %idxprom1310 = sext i32 %shr1309 to i64
  %arrayidx1311 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1307, i64 0, i64 %idxprom1310
  %414 = load i16, i16* %arrayidx1311, align 2
  %conv1312 = zext i16 %414 to i32
  %or1313 = or i32 %conv1312, %shl1306
  %conv1314 = trunc i32 %or1313 to i16
  store i16 %conv1314, i16* %arrayidx1311, align 2
  store i32 5, i32* %state, align 4
  br label %if.end1406

if.else1315:                                      ; preds = %if.end1299
  %415 = load i32, i32* %state, align 4
  %cmp1316 = icmp eq i32 %415, 5
  br i1 %cmp1316, label %if.then1318, label %if.else1354

if.then1318:                                      ; preds = %if.else1315
  %416 = load i8, i8* %c, align 1
  %conv1319 = sext i8 %416 to i32
  %cmp1320 = icmp eq i32 %conv1319, 93
  br i1 %cmp1320, label %land.lhs.true1322, label %if.else1327

land.lhs.true1322:                                ; preds = %if.then1318
  %417 = load i8, i8* %esc_c, align 1
  %conv1323 = zext i8 %417 to i32
  %cmp1324 = icmp eq i32 %conv1323, 0
  br i1 %cmp1324, label %if.then1326, label %if.else1327

if.then1326:                                      ; preds = %land.lhs.true1322
  store i32 -1, i32* %char_class_mem, align 4
  store i32 2, i32* %state, align 4
  br label %for.inc1410

if.else1327:                                      ; preds = %land.lhs.true1322, %if.then1318
  %418 = load i8, i8* %c, align 1
  %conv1328 = sext i8 %418 to i32
  %cmp1329 = icmp eq i32 %conv1328, 45
  br i1 %cmp1329, label %land.lhs.true1331, label %if.else1339

land.lhs.true1331:                                ; preds = %if.else1327
  %419 = load i8, i8* %esc_c, align 1
  %conv1332 = zext i8 %419 to i32
  %cmp1333 = icmp eq i32 %conv1332, 0
  br i1 %cmp1333, label %land.lhs.true1335, label %if.else1339

land.lhs.true1335:                                ; preds = %land.lhs.true1331
  %420 = load i32, i32* %char_class_mem, align 4
  %cmp1336 = icmp sge i32 %420, 0
  br i1 %cmp1336, label %if.then1338, label %if.else1339

if.then1338:                                      ; preds = %land.lhs.true1335
  store i32 6, i32* %state, align 4
  br label %for.inc1410

if.else1339:                                      ; preds = %land.lhs.true1335, %land.lhs.true1331, %if.else1327
  %421 = load i8, i8* %c, align 1
  %conv1340 = sext i8 %421 to i32
  store i32 %conv1340, i32* %char_class_mem, align 4
  %422 = load i8, i8* %c, align 1
  %conv1341 = zext i8 %422 to i32
  %and1342 = and i32 %conv1341, 15
  %shl1343 = shl i32 1, %and1342
  %mask1344 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %423 = load i8, i8* %c, align 1
  %conv1345 = zext i8 %423 to i32
  %shr1346 = ashr i32 %conv1345, 4
  %idxprom1347 = sext i32 %shr1346 to i64
  %arrayidx1348 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1344, i64 0, i64 %idxprom1347
  %424 = load i16, i16* %arrayidx1348, align 2
  %conv1349 = zext i16 %424 to i32
  %or1350 = or i32 %conv1349, %shl1343
  %conv1351 = trunc i32 %or1350 to i16
  store i16 %conv1351, i16* %arrayidx1348, align 2
  store i32 5, i32* %state, align 4
  br label %if.end1352

if.end1352:                                       ; preds = %if.else1339
  br label %if.end1353

if.end1353:                                       ; preds = %if.end1352
  br label %if.end1405

if.else1354:                                      ; preds = %if.else1315
  %425 = load i32, i32* %state, align 4
  %cmp1355 = icmp eq i32 %425, 6
  br i1 %cmp1355, label %if.then1357, label %if.end1404

if.then1357:                                      ; preds = %if.else1354
  %426 = load i8, i8* %c, align 1
  %conv1358 = sext i8 %426 to i32
  %cmp1359 = icmp eq i32 %conv1358, 93
  br i1 %cmp1359, label %land.lhs.true1361, label %if.else1371

land.lhs.true1361:                                ; preds = %if.then1357
  %427 = load i8, i8* %esc_c, align 1
  %conv1362 = zext i8 %427 to i32
  %cmp1363 = icmp eq i32 %conv1362, 0
  br i1 %cmp1363, label %if.then1365, label %if.else1371

if.then1365:                                      ; preds = %land.lhs.true1361
  store i32 -1, i32* %char_class_mem, align 4
  %mask1366 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %arrayidx1367 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1366, i64 0, i64 2
  %428 = load i16, i16* %arrayidx1367, align 2
  %conv1368 = zext i16 %428 to i32
  %or1369 = or i32 %conv1368, 8192
  %conv1370 = trunc i32 %or1369 to i16
  store i16 %conv1370, i16* %arrayidx1367, align 2
  store i32 2, i32* %state, align 4
  br label %for.inc1410

if.else1371:                                      ; preds = %land.lhs.true1361, %if.then1357
  %429 = load i32, i32* %char_class_mem, align 4
  %cmp1372 = icmp eq i32 %429, -1
  br i1 %cmp1372, label %if.then1374, label %if.end1376

if.then1374:                                      ; preds = %if.else1371
  %call1375 = call i32 @puts(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1376:                                       ; preds = %if.else1371
  %430 = load i8, i8* %c, align 1
  %conv1377 = zext i8 %430 to i32
  %431 = load i32, i32* %char_class_mem, align 4
  %cmp1378 = icmp slt i32 %conv1377, %431
  br i1 %cmp1378, label %if.then1380, label %if.end1382

if.then1380:                                      ; preds = %if.end1376
  %call1381 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1382:                                       ; preds = %if.end1376
  %432 = load i8, i8* %c, align 1
  store i8 %432, i8* %i1383, align 1
  br label %for.cond1384

for.cond1384:                                     ; preds = %for.inc1400, %if.end1382
  %433 = load i8, i8* %i1383, align 1
  %conv1385 = zext i8 %433 to i32
  %434 = load i32, i32* %char_class_mem, align 4
  %cmp1386 = icmp sgt i32 %conv1385, %434
  br i1 %cmp1386, label %for.body1388, label %for.end1402

for.body1388:                                     ; preds = %for.cond1384
  %435 = load i8, i8* %i1383, align 1
  %conv1389 = zext i8 %435 to i32
  %and1390 = and i32 %conv1389, 15
  %shl1391 = shl i32 1, %and1390
  %mask1392 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %436 = load i8, i8* %i1383, align 1
  %conv1393 = zext i8 %436 to i32
  %shr1394 = ashr i32 %conv1393, 4
  %idxprom1395 = sext i32 %shr1394 to i64
  %arrayidx1396 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1392, i64 0, i64 %idxprom1395
  %437 = load i16, i16* %arrayidx1396, align 2
  %conv1397 = zext i16 %437 to i32
  %or1398 = or i32 %conv1397, %shl1391
  %conv1399 = trunc i32 %or1398 to i16
  store i16 %conv1399, i16* %arrayidx1396, align 2
  br label %for.inc1400

for.inc1400:                                      ; preds = %for.body1388
  %438 = load i8, i8* %i1383, align 1
  %dec1401 = add i8 %438, -1
  store i8 %dec1401, i8* %i1383, align 1
  br label %for.cond1384, !llvm.loop !14

for.end1402:                                      ; preds = %for.cond1384
  store i32 5, i32* %state, align 4
  store i32 -1, i32* %char_class_mem, align 4
  br label %if.end1403

if.end1403:                                       ; preds = %for.end1402
  br label %if.end1404

if.end1404:                                       ; preds = %if.end1403, %if.else1354
  br label %if.end1405

if.end1405:                                       ; preds = %if.end1404, %if.end1353
  br label %if.end1406

if.end1406:                                       ; preds = %if.end1405, %if.then1302
  br label %if.end1408

if.else1407:                                      ; preds = %lor.lhs.false963
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.regex_parse, i64 0, i64 0)) #8
  unreachable

if.end1408:                                       ; preds = %if.end1406
  br label %if.end1409

if.end1409:                                       ; preds = %if.end1408, %if.end956
  br label %for.inc1410

for.inc1410:                                      ; preds = %if.end1409, %if.then1365, %if.then1338, %if.then1326, %for.end1288, %if.then973, %if.then149, %if.then142, %if.then127, %if.then25, %if.then18, %if.then12
  %439 = load i64, i64* %i, align 8
  %inc1411 = add i64 %439, 1
  store i64 %inc1411, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end1412:                                      ; preds = %for.cond
  %440 = load i32, i32* %paren_count, align 4
  %cmp1413 = icmp sgt i32 %440, 0
  br i1 %cmp1413, label %if.then1415, label %if.end1417

if.then1415:                                      ; preds = %for.end1412
  %call1416 = call i32 @puts(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1417:                                       ; preds = %for.end1412
  %441 = load i32, i32* %esc_state, align 4
  %cmp1418 = icmp ne i32 %441, 0
  br i1 %cmp1418, label %if.then1420, label %if.end1422

if.then1420:                                      ; preds = %if.end1417
  %call1421 = call i32 @puts(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1422:                                       ; preds = %if.end1417
  %442 = load i32, i32* %state, align 4
  %cmp1423 = icmp sge i32 %442, 4
  br i1 %cmp1423, label %if.then1425, label %if.end1427

if.then1425:                                      ; preds = %if.end1422
  %call1426 = call i32 @puts(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1427:                                       ; preds = %if.end1422
  %443 = load i16, i16* %k, align 2
  %conv1428 = sext i16 %443 to i32
  %cmp1429 = icmp eq i32 %conv1428, 0
  br i1 %cmp1429, label %if.then1452, label %lor.lhs.false1431

lor.lhs.false1431:                                ; preds = %if.end1427
  %444 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %445 = load i16, i16* %k, align 2
  %conv1432 = sext i16 %445 to i32
  %sub1433 = sub nsw i32 %conv1432, 1
  %idxprom1434 = sext i32 %sub1433 to i64
  %arrayidx1435 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %444, i64 %idxprom1434
  %kind1436 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1435, i32 0, i32 0
  %446 = load i8, i8* %kind1436, align 2
  %conv1437 = zext i8 %446 to i32
  %kind1438 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %447 = load i8, i8* %kind1438, align 2
  %conv1439 = zext i8 %447 to i32
  %cmp1440 = icmp ne i32 %conv1437, %conv1439
  br i1 %cmp1440, label %if.then1452, label %lor.lhs.false1442

lor.lhs.false1442:                                ; preds = %lor.lhs.false1431
  %kind1443 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %448 = load i8, i8* %kind1443, align 2
  %conv1444 = zext i8 %448 to i32
  %cmp1445 = icmp ne i32 %conv1444, 7
  br i1 %cmp1445, label %land.lhs.true1447, label %if.end1491

land.lhs.true1447:                                ; preds = %lor.lhs.false1442
  %kind1448 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %449 = load i8, i8* %kind1448, align 2
  %conv1449 = zext i8 %449 to i32
  %cmp1450 = icmp ne i32 %conv1449, 8
  br i1 %cmp1450, label %if.then1452, label %if.end1491

if.then1452:                                      ; preds = %land.lhs.true1447, %lor.lhs.false1431, %if.end1427
  %mode1453 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %450 = load i8, i8* %mode1453, align 1
  %conv1454 = zext i8 %450 to i32
  %and1455 = and i32 %conv1454, 128
  %tobool1456 = icmp ne i32 %and1455, 0
  br i1 %tobool1456, label %if.then1457, label %if.end1479

if.then1457:                                      ; preds = %if.then1452
  store i32 0, i32* %n1458, align 4
  br label %for.cond1459

for.cond1459:                                     ; preds = %for.inc1472, %if.then1457
  %451 = load i32, i32* %n1458, align 4
  %cmp1460 = icmp slt i32 %451, 16
  br i1 %cmp1460, label %for.body1462, label %for.end1474

for.body1462:                                     ; preds = %for.cond1459
  %mask1463 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %452 = load i32, i32* %n1458, align 4
  %idxprom1464 = sext i32 %452 to i64
  %arrayidx1465 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1463, i64 0, i64 %idxprom1464
  %453 = load i16, i16* %arrayidx1465, align 2
  %conv1466 = zext i16 %453 to i32
  %neg1467 = xor i32 %conv1466, -1
  %conv1468 = trunc i32 %neg1467 to i16
  %mask1469 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %454 = load i32, i32* %n1458, align 4
  %idxprom1470 = sext i32 %454 to i64
  %arrayidx1471 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1469, i64 0, i64 %idxprom1470
  store i16 %conv1468, i16* %arrayidx1471, align 2
  br label %for.inc1472

for.inc1472:                                      ; preds = %for.body1462
  %455 = load i32, i32* %n1458, align 4
  %inc1473 = add nsw i32 %455, 1
  store i32 %inc1473, i32* %n1458, align 4
  br label %for.cond1459, !llvm.loop !16

for.end1474:                                      ; preds = %for.cond1459
  %mode1475 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %456 = load i8, i8* %mode1475, align 1
  %conv1476 = zext i8 %456 to i32
  %and1477 = and i32 %conv1476, -129
  %conv1478 = trunc i32 %and1477 to i8
  store i8 %conv1478, i8* %mode1475, align 1
  br label %if.end1479

if.end1479:                                       ; preds = %for.end1474, %if.then1452
  %457 = load i16, i16* %k, align 2
  %conv1480 = sext i16 %457 to i64
  %458 = load i64, i64* %tokens_len, align 8
  %cmp1481 = icmp sge i64 %conv1480, %458
  br i1 %cmp1481, label %if.then1483, label %if.end1485

if.then1483:                                      ; preds = %if.end1479
  %call1484 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %retval, align 4
  br label %return

if.end1485:                                       ; preds = %if.end1479
  %459 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %460 = load i16, i16* %k, align 2
  %inc1486 = add i16 %460, 1
  store i16 %inc1486, i16* %k, align 2
  %idxprom1487 = sext i16 %460 to i64
  %arrayidx1488 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %459, i64 %idxprom1487
  %461 = bitcast %struct._RegexToken* %arrayidx1488 to i8*
  %462 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %461, i8* align 2 %462, i64 40, i1 false)
  %463 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %463, i8 0, i64 40, i1 false)
  %count_lo1489 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo1489, align 2
  %count_hi1490 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi1490, align 2
  br label %if.end1491

if.end1491:                                       ; preds = %if.end1485, %land.lhs.true1447, %lor.lhs.false1442
  %kind1492 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 3, i8* %kind1492, align 2
  %count_lo1493 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo1493, align 2
  %count_hi1494 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi1494, align 2
  %464 = load i16, i16* %k, align 2
  %conv1495 = sext i16 %464 to i32
  %cmp1496 = icmp eq i32 %conv1495, 0
  br i1 %cmp1496, label %if.then1519, label %lor.lhs.false1498

lor.lhs.false1498:                                ; preds = %if.end1491
  %465 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %466 = load i16, i16* %k, align 2
  %conv1499 = sext i16 %466 to i32
  %sub1500 = sub nsw i32 %conv1499, 1
  %idxprom1501 = sext i32 %sub1500 to i64
  %arrayidx1502 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %465, i64 %idxprom1501
  %kind1503 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1502, i32 0, i32 0
  %467 = load i8, i8* %kind1503, align 2
  %conv1504 = zext i8 %467 to i32
  %kind1505 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %468 = load i8, i8* %kind1505, align 2
  %conv1506 = zext i8 %468 to i32
  %cmp1507 = icmp ne i32 %conv1504, %conv1506
  br i1 %cmp1507, label %if.then1519, label %lor.lhs.false1509

lor.lhs.false1509:                                ; preds = %lor.lhs.false1498
  %kind1510 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %469 = load i8, i8* %kind1510, align 2
  %conv1511 = zext i8 %469 to i32
  %cmp1512 = icmp ne i32 %conv1511, 7
  br i1 %cmp1512, label %land.lhs.true1514, label %if.end1558

land.lhs.true1514:                                ; preds = %lor.lhs.false1509
  %kind1515 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %470 = load i8, i8* %kind1515, align 2
  %conv1516 = zext i8 %470 to i32
  %cmp1517 = icmp ne i32 %conv1516, 8
  br i1 %cmp1517, label %if.then1519, label %if.end1558

if.then1519:                                      ; preds = %land.lhs.true1514, %lor.lhs.false1498, %if.end1491
  %mode1520 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %471 = load i8, i8* %mode1520, align 1
  %conv1521 = zext i8 %471 to i32
  %and1522 = and i32 %conv1521, 128
  %tobool1523 = icmp ne i32 %and1522, 0
  br i1 %tobool1523, label %if.then1524, label %if.end1546

if.then1524:                                      ; preds = %if.then1519
  store i32 0, i32* %n1525, align 4
  br label %for.cond1526

for.cond1526:                                     ; preds = %for.inc1539, %if.then1524
  %472 = load i32, i32* %n1525, align 4
  %cmp1527 = icmp slt i32 %472, 16
  br i1 %cmp1527, label %for.body1529, label %for.end1541

for.body1529:                                     ; preds = %for.cond1526
  %mask1530 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %473 = load i32, i32* %n1525, align 4
  %idxprom1531 = sext i32 %473 to i64
  %arrayidx1532 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1530, i64 0, i64 %idxprom1531
  %474 = load i16, i16* %arrayidx1532, align 2
  %conv1533 = zext i16 %474 to i32
  %neg1534 = xor i32 %conv1533, -1
  %conv1535 = trunc i32 %neg1534 to i16
  %mask1536 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %475 = load i32, i32* %n1525, align 4
  %idxprom1537 = sext i32 %475 to i64
  %arrayidx1538 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1536, i64 0, i64 %idxprom1537
  store i16 %conv1535, i16* %arrayidx1538, align 2
  br label %for.inc1539

for.inc1539:                                      ; preds = %for.body1529
  %476 = load i32, i32* %n1525, align 4
  %inc1540 = add nsw i32 %476, 1
  store i32 %inc1540, i32* %n1525, align 4
  br label %for.cond1526, !llvm.loop !17

for.end1541:                                      ; preds = %for.cond1526
  %mode1542 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %477 = load i8, i8* %mode1542, align 1
  %conv1543 = zext i8 %477 to i32
  %and1544 = and i32 %conv1543, -129
  %conv1545 = trunc i32 %and1544 to i8
  store i8 %conv1545, i8* %mode1542, align 1
  br label %if.end1546

if.end1546:                                       ; preds = %for.end1541, %if.then1519
  %478 = load i16, i16* %k, align 2
  %conv1547 = sext i16 %478 to i64
  %479 = load i64, i64* %tokens_len, align 8
  %cmp1548 = icmp sge i64 %conv1547, %479
  br i1 %cmp1548, label %if.then1550, label %if.end1552

if.then1550:                                      ; preds = %if.end1546
  %call1551 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %retval, align 4
  br label %return

if.end1552:                                       ; preds = %if.end1546
  %480 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %481 = load i16, i16* %k, align 2
  %inc1553 = add i16 %481, 1
  store i16 %inc1553, i16* %k, align 2
  %idxprom1554 = sext i16 %481 to i64
  %arrayidx1555 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %480, i64 %idxprom1554
  %482 = bitcast %struct._RegexToken* %arrayidx1555 to i8*
  %483 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %482, i8* align 2 %483, i64 40, i1 false)
  %484 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %484, i8 0, i64 40, i1 false)
  %count_lo1556 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo1556, align 2
  %count_hi1557 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi1557, align 2
  br label %if.end1558

if.end1558:                                       ; preds = %if.end1552, %land.lhs.true1514, %lor.lhs.false1509
  %kind1559 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  store i8 9, i8* %kind1559, align 2
  %485 = load i16, i16* %k, align 2
  %conv1560 = sext i16 %485 to i32
  %cmp1561 = icmp eq i32 %conv1560, 0
  br i1 %cmp1561, label %if.then1584, label %lor.lhs.false1563

lor.lhs.false1563:                                ; preds = %if.end1558
  %486 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %487 = load i16, i16* %k, align 2
  %conv1564 = sext i16 %487 to i32
  %sub1565 = sub nsw i32 %conv1564, 1
  %idxprom1566 = sext i32 %sub1565 to i64
  %arrayidx1567 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %486, i64 %idxprom1566
  %kind1568 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1567, i32 0, i32 0
  %488 = load i8, i8* %kind1568, align 2
  %conv1569 = zext i8 %488 to i32
  %kind1570 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %489 = load i8, i8* %kind1570, align 2
  %conv1571 = zext i8 %489 to i32
  %cmp1572 = icmp ne i32 %conv1569, %conv1571
  br i1 %cmp1572, label %if.then1584, label %lor.lhs.false1574

lor.lhs.false1574:                                ; preds = %lor.lhs.false1563
  %kind1575 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %490 = load i8, i8* %kind1575, align 2
  %conv1576 = zext i8 %490 to i32
  %cmp1577 = icmp ne i32 %conv1576, 7
  br i1 %cmp1577, label %land.lhs.true1579, label %if.end1623

land.lhs.true1579:                                ; preds = %lor.lhs.false1574
  %kind1580 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 0
  %491 = load i8, i8* %kind1580, align 2
  %conv1581 = zext i8 %491 to i32
  %cmp1582 = icmp ne i32 %conv1581, 8
  br i1 %cmp1582, label %if.then1584, label %if.end1623

if.then1584:                                      ; preds = %land.lhs.true1579, %lor.lhs.false1563, %if.end1558
  %mode1585 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %492 = load i8, i8* %mode1585, align 1
  %conv1586 = zext i8 %492 to i32
  %and1587 = and i32 %conv1586, 128
  %tobool1588 = icmp ne i32 %and1587, 0
  br i1 %tobool1588, label %if.then1589, label %if.end1611

if.then1589:                                      ; preds = %if.then1584
  store i32 0, i32* %n1590, align 4
  br label %for.cond1591

for.cond1591:                                     ; preds = %for.inc1604, %if.then1589
  %493 = load i32, i32* %n1590, align 4
  %cmp1592 = icmp slt i32 %493, 16
  br i1 %cmp1592, label %for.body1594, label %for.end1606

for.body1594:                                     ; preds = %for.cond1591
  %mask1595 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %494 = load i32, i32* %n1590, align 4
  %idxprom1596 = sext i32 %494 to i64
  %arrayidx1597 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1595, i64 0, i64 %idxprom1596
  %495 = load i16, i16* %arrayidx1597, align 2
  %conv1598 = zext i16 %495 to i32
  %neg1599 = xor i32 %conv1598, -1
  %conv1600 = trunc i32 %neg1599 to i16
  %mask1601 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 4
  %496 = load i32, i32* %n1590, align 4
  %idxprom1602 = sext i32 %496 to i64
  %arrayidx1603 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1601, i64 0, i64 %idxprom1602
  store i16 %conv1600, i16* %arrayidx1603, align 2
  br label %for.inc1604

for.inc1604:                                      ; preds = %for.body1594
  %497 = load i32, i32* %n1590, align 4
  %inc1605 = add nsw i32 %497, 1
  store i32 %inc1605, i32* %n1590, align 4
  br label %for.cond1591, !llvm.loop !18

for.end1606:                                      ; preds = %for.cond1591
  %mode1607 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 1
  %498 = load i8, i8* %mode1607, align 1
  %conv1608 = zext i8 %498 to i32
  %and1609 = and i32 %conv1608, -129
  %conv1610 = trunc i32 %and1609 to i8
  store i8 %conv1610, i8* %mode1607, align 1
  br label %if.end1611

if.end1611:                                       ; preds = %for.end1606, %if.then1584
  %499 = load i16, i16* %k, align 2
  %conv1612 = sext i16 %499 to i64
  %500 = load i64, i64* %tokens_len, align 8
  %cmp1613 = icmp sge i64 %conv1612, %500
  br i1 %cmp1613, label %if.then1615, label %if.end1617

if.then1615:                                      ; preds = %if.end1611
  %call1616 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %retval, align 4
  br label %return

if.end1617:                                       ; preds = %if.end1611
  %501 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %502 = load i16, i16* %k, align 2
  %inc1618 = add i16 %502, 1
  store i16 %inc1618, i16* %k, align 2
  %idxprom1619 = sext i16 %502 to i64
  %arrayidx1620 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %501, i64 %idxprom1619
  %503 = bitcast %struct._RegexToken* %arrayidx1620 to i8*
  %504 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %503, i8* align 2 %504, i64 40, i1 false)
  %505 = bitcast %struct._RegexToken* %token to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %505, i8 0, i64 40, i1 false)
  %count_lo1621 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 2
  store i16 1, i16* %count_lo1621, align 2
  %count_hi1622 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %token, i32 0, i32 3
  store i16 2, i16* %count_hi1622, align 2
  br label %if.end1623

if.end1623:                                       ; preds = %if.end1617, %land.lhs.true1579, %lor.lhs.false1574
  %506 = load i16, i16* %k, align 2
  %conv1624 = sext i16 %506 to i32
  %sub1625 = sub nsw i32 %conv1624, 2
  %conv1626 = trunc i32 %sub1625 to i16
  %507 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %arrayidx1627 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %507, i64 0
  %pair_offset1628 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1627, i32 0, i32 5
  store i16 %conv1626, i16* %pair_offset1628, align 2
  %508 = load i16, i16* %k, align 2
  %conv1629 = sext i16 %508 to i32
  %sub1630 = sub nsw i32 %conv1629, 2
  %sub1631 = sub nsw i32 0, %sub1630
  %conv1632 = trunc i32 %sub1631 to i16
  %509 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %510 = load i16, i16* %k, align 2
  %conv1633 = sext i16 %510 to i32
  %sub1634 = sub nsw i32 %conv1633, 2
  %idxprom1635 = sext i32 %sub1634 to i64
  %arrayidx1636 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %509, i64 %idxprom1635
  %pair_offset1637 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1636, i32 0, i32 5
  store i16 %conv1632, i16* %pair_offset1637, align 2
  %511 = load i16, i16* %k, align 2
  %512 = load i16*, i16** %token_count.addr, align 8
  store i16 %511, i16* %512, align 2
  store i64 0, i64* %n1638, align 8
  store i16 0, i16* %k2, align 2
  br label %for.cond1639

for.cond1639:                                     ; preds = %for.inc1800, %if.end1623
  %513 = load i16, i16* %k2, align 2
  %conv1640 = sext i16 %513 to i32
  %514 = load i16, i16* %k, align 2
  %conv1641 = sext i16 %514 to i32
  %cmp1642 = icmp slt i32 %conv1640, %conv1641
  br i1 %cmp1642, label %for.body1644, label %for.end1802

for.body1644:                                     ; preds = %for.cond1639
  %515 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %516 = load i16, i16* %k2, align 2
  %idxprom1645 = sext i16 %516 to i64
  %arrayidx1646 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %515, i64 %idxprom1645
  %kind1647 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1646, i32 0, i32 0
  %517 = load i8, i8* %kind1647, align 2
  %conv1648 = zext i8 %517 to i32
  %cmp1649 = icmp eq i32 %conv1648, 3
  br i1 %cmp1649, label %if.then1651, label %if.else1693

if.then1651:                                      ; preds = %for.body1644
  %518 = load i64, i64* %n1638, align 8
  %inc1652 = add i64 %518, 1
  store i64 %inc1652, i64* %n1638, align 8
  %conv1653 = trunc i64 %518 to i16
  %519 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %520 = load i16, i16* %k2, align 2
  %idxprom1654 = sext i16 %520 to i64
  %arrayidx1655 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %519, i64 %idxprom1654
  %mask1656 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1655, i32 0, i32 4
  %arrayidx1657 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1656, i64 0, i64 0
  store i16 %conv1653, i16* %arrayidx1657, align 2
  %521 = load i16, i16* %k2, align 2
  %conv1658 = sext i16 %521 to i32
  %522 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %523 = load i16, i16* %k2, align 2
  %idxprom1659 = sext i16 %523 to i64
  %arrayidx1660 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %522, i64 %idxprom1659
  %pair_offset1661 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1660, i32 0, i32 5
  %524 = load i16, i16* %pair_offset1661, align 2
  %conv1662 = sext i16 %524 to i32
  %add1663 = add nsw i32 %conv1658, %conv1662
  %conv1664 = trunc i32 %add1663 to i16
  store i16 %conv1664, i16* %k3, align 2
  %525 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %526 = load i16, i16* %k2, align 2
  %idxprom1665 = sext i16 %526 to i64
  %arrayidx1666 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %525, i64 %idxprom1665
  %count_lo1667 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1666, i32 0, i32 2
  %527 = load i16, i16* %count_lo1667, align 2
  %528 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %529 = load i16, i16* %k3, align 2
  %idxprom1668 = sext i16 %529 to i64
  %arrayidx1669 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %528, i64 %idxprom1668
  %count_lo1670 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1669, i32 0, i32 2
  store i16 %527, i16* %count_lo1670, align 2
  %530 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %531 = load i16, i16* %k2, align 2
  %idxprom1671 = sext i16 %531 to i64
  %arrayidx1672 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %530, i64 %idxprom1671
  %count_hi1673 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1672, i32 0, i32 3
  %532 = load i16, i16* %count_hi1673, align 2
  %533 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %534 = load i16, i16* %k3, align 2
  %idxprom1674 = sext i16 %534 to i64
  %arrayidx1675 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %533, i64 %idxprom1674
  %count_hi1676 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1675, i32 0, i32 3
  store i16 %532, i16* %count_hi1676, align 2
  %535 = load i64, i64* %n1638, align 8
  %inc1677 = add i64 %535, 1
  store i64 %inc1677, i64* %n1638, align 8
  %conv1678 = trunc i64 %535 to i16
  %536 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %537 = load i16, i16* %k3, align 2
  %idxprom1679 = sext i16 %537 to i64
  %arrayidx1680 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %536, i64 %idxprom1679
  %mask1681 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1680, i32 0, i32 4
  %arrayidx1682 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1681, i64 0, i64 0
  store i16 %conv1678, i16* %arrayidx1682, align 2
  %538 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %539 = load i16, i16* %k2, align 2
  %idxprom1683 = sext i16 %539 to i64
  %arrayidx1684 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %538, i64 %idxprom1683
  %mode1685 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1684, i32 0, i32 1
  %540 = load i8, i8* %mode1685, align 1
  %541 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %542 = load i16, i16* %k3, align 2
  %idxprom1686 = sext i16 %542 to i64
  %arrayidx1687 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %541, i64 %idxprom1686
  %mode1688 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1687, i32 0, i32 1
  store i8 %540, i8* %mode1688, align 1
  %543 = load i64, i64* %n1638, align 8
  %cmp1689 = icmp ugt i64 %543, 1024
  br i1 %cmp1689, label %if.then1691, label %if.end1692

if.then1691:                                      ; preds = %if.then1651
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1692:                                       ; preds = %if.then1651
  br label %if.end1799

if.else1693:                                      ; preds = %for.body1644
  %544 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %545 = load i16, i16* %k2, align 2
  %idxprom1694 = sext i16 %545 to i64
  %arrayidx1695 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %544, i64 %idxprom1694
  %kind1696 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1695, i32 0, i32 0
  %546 = load i8, i8* %kind1696, align 2
  %conv1697 = zext i8 %546 to i32
  %cmp1698 = icmp eq i32 %conv1697, 4
  br i1 %cmp1698, label %if.then1714, label %lor.lhs.false1700

lor.lhs.false1700:                                ; preds = %if.else1693
  %547 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %548 = load i16, i16* %k2, align 2
  %idxprom1701 = sext i16 %548 to i64
  %arrayidx1702 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %547, i64 %idxprom1701
  %kind1703 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1702, i32 0, i32 0
  %549 = load i8, i8* %kind1703, align 2
  %conv1704 = zext i8 %549 to i32
  %cmp1705 = icmp eq i32 %conv1704, 1
  br i1 %cmp1705, label %if.then1714, label %lor.lhs.false1707

lor.lhs.false1707:                                ; preds = %lor.lhs.false1700
  %550 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %551 = load i16, i16* %k2, align 2
  %idxprom1708 = sext i16 %551 to i64
  %arrayidx1709 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %550, i64 %idxprom1708
  %kind1710 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1709, i32 0, i32 0
  %552 = load i8, i8* %kind1710, align 2
  %conv1711 = zext i8 %552 to i32
  %cmp1712 = icmp eq i32 %conv1711, 2
  br i1 %cmp1712, label %if.then1714, label %if.end1798

if.then1714:                                      ; preds = %lor.lhs.false1707, %lor.lhs.false1700, %if.else1693
  store i32 0, i32* %balance1715, align 4
  store i64 -1, i64* %found1716, align 8
  %553 = load i16, i16* %k2, align 2
  %conv1718 = sext i16 %553 to i32
  %add1719 = add nsw i32 %conv1718, 1
  %conv1720 = sext i32 %add1719 to i64
  store i64 %conv1720, i64* %l1717, align 8
  br label %for.cond1721

for.cond1721:                                     ; preds = %for.inc1764, %if.then1714
  %554 = load i64, i64* %l1717, align 8
  %555 = load i64, i64* %tokens_len, align 8
  %cmp1722 = icmp slt i64 %554, %555
  br i1 %cmp1722, label %for.body1724, label %for.end1766

for.body1724:                                     ; preds = %for.cond1721
  %556 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %557 = load i64, i64* %l1717, align 8
  %arrayidx1725 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %556, i64 %557
  %kind1726 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1725, i32 0, i32 0
  %558 = load i8, i8* %kind1726, align 2
  %conv1727 = zext i8 %558 to i32
  %cmp1728 = icmp eq i32 %conv1727, 4
  br i1 %cmp1728, label %land.lhs.true1730, label %if.else1734

land.lhs.true1730:                                ; preds = %for.body1724
  %559 = load i32, i32* %balance1715, align 4
  %cmp1731 = icmp eq i32 %559, 0
  br i1 %cmp1731, label %if.then1733, label %if.else1734

if.then1733:                                      ; preds = %land.lhs.true1730
  %560 = load i64, i64* %l1717, align 8
  store i64 %560, i64* %found1716, align 8
  br label %for.end1766

if.else1734:                                      ; preds = %land.lhs.true1730, %for.body1724
  %561 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %562 = load i64, i64* %l1717, align 8
  %arrayidx1735 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %561, i64 %562
  %kind1736 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1735, i32 0, i32 0
  %563 = load i8, i8* %kind1736, align 2
  %conv1737 = zext i8 %563 to i32
  %cmp1738 = icmp eq i32 %conv1737, 3
  br i1 %cmp1738, label %if.then1740, label %if.else1747

if.then1740:                                      ; preds = %if.else1734
  %564 = load i32, i32* %balance1715, align 4
  %cmp1741 = icmp eq i32 %564, 0
  br i1 %cmp1741, label %if.then1743, label %if.else1744

if.then1743:                                      ; preds = %if.then1740
  %565 = load i64, i64* %l1717, align 8
  store i64 %565, i64* %found1716, align 8
  br label %for.end1766

if.else1744:                                      ; preds = %if.then1740
  %566 = load i32, i32* %balance1715, align 4
  %sub1745 = sub nsw i32 %566, 1
  store i32 %sub1745, i32* %balance1715, align 4
  br label %if.end1746

if.end1746:                                       ; preds = %if.else1744
  br label %if.end1762

if.else1747:                                      ; preds = %if.else1734
  %567 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %568 = load i64, i64* %l1717, align 8
  %arrayidx1748 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %567, i64 %568
  %kind1749 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1748, i32 0, i32 0
  %569 = load i8, i8* %kind1749, align 2
  %conv1750 = zext i8 %569 to i32
  %cmp1751 = icmp eq i32 %conv1750, 2
  br i1 %cmp1751, label %if.then1759, label %lor.lhs.false1753

lor.lhs.false1753:                                ; preds = %if.else1747
  %570 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %571 = load i64, i64* %l1717, align 8
  %arrayidx1754 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %570, i64 %571
  %kind1755 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1754, i32 0, i32 0
  %572 = load i8, i8* %kind1755, align 2
  %conv1756 = zext i8 %572 to i32
  %cmp1757 = icmp eq i32 %conv1756, 1
  br i1 %cmp1757, label %if.then1759, label %if.end1761

if.then1759:                                      ; preds = %lor.lhs.false1753, %if.else1747
  %573 = load i32, i32* %balance1715, align 4
  %add1760 = add nsw i32 %573, 1
  store i32 %add1760, i32* %balance1715, align 4
  br label %if.end1761

if.end1761:                                       ; preds = %if.then1759, %lor.lhs.false1753
  br label %if.end1762

if.end1762:                                       ; preds = %if.end1761, %if.end1746
  br label %if.end1763

if.end1763:                                       ; preds = %if.end1762
  br label %for.inc1764

for.inc1764:                                      ; preds = %if.end1763
  %574 = load i64, i64* %l1717, align 8
  %inc1765 = add nsw i64 %574, 1
  store i64 %inc1765, i64* %l1717, align 8
  br label %for.cond1721, !llvm.loop !19

for.end1766:                                      ; preds = %if.then1743, %if.then1733, %for.cond1721
  %575 = load i64, i64* %found1716, align 8
  %cmp1767 = icmp eq i64 %575, -1
  br i1 %cmp1767, label %if.then1769, label %if.end1771

if.then1769:                                      ; preds = %for.end1766
  %call1770 = call i32 @puts(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1771:                                       ; preds = %for.end1766
  %576 = load i64, i64* %found1716, align 8
  %577 = load i16, i16* %k2, align 2
  %conv1773 = sext i16 %577 to i64
  %sub1774 = sub nsw i64 %576, %conv1773
  store i64 %sub1774, i64* %diff1772, align 8
  %578 = load i64, i64* %diff1772, align 8
  %cmp1775 = icmp sgt i64 %578, 32767
  br i1 %cmp1775, label %if.then1777, label %if.end1779

if.then1777:                                      ; preds = %if.end1771
  %call1778 = call i32 @puts(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end1779:                                       ; preds = %if.end1771
  %579 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %580 = load i16, i16* %k2, align 2
  %idxprom1780 = sext i16 %580 to i64
  %arrayidx1781 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %579, i64 %idxprom1780
  %kind1782 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1781, i32 0, i32 0
  %581 = load i8, i8* %kind1782, align 2
  %conv1783 = zext i8 %581 to i32
  %cmp1784 = icmp eq i32 %conv1783, 4
  br i1 %cmp1784, label %if.then1786, label %if.else1791

if.then1786:                                      ; preds = %if.end1779
  %582 = load i64, i64* %diff1772, align 8
  %conv1787 = trunc i64 %582 to i16
  %583 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %584 = load i16, i16* %k2, align 2
  %idxprom1788 = sext i16 %584 to i64
  %arrayidx1789 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %583, i64 %idxprom1788
  %pair_offset1790 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1789, i32 0, i32 5
  store i16 %conv1787, i16* %pair_offset1790, align 2
  br label %if.end1797

if.else1791:                                      ; preds = %if.end1779
  %585 = load i64, i64* %diff1772, align 8
  %conv1792 = trunc i64 %585 to i16
  %586 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %587 = load i16, i16* %k2, align 2
  %idxprom1793 = sext i16 %587 to i64
  %arrayidx1794 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %586, i64 %idxprom1793
  %mask1795 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1794, i32 0, i32 4
  %arrayidx1796 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1795, i64 0, i64 15
  store i16 %conv1792, i16* %arrayidx1796, align 2
  br label %if.end1797

if.end1797:                                       ; preds = %if.else1791, %if.then1786
  br label %if.end1798

if.end1798:                                       ; preds = %if.end1797, %lor.lhs.false1707
  br label %if.end1799

if.end1799:                                       ; preds = %if.end1798, %if.end1692
  br label %for.inc1800

for.inc1800:                                      ; preds = %if.end1799
  %588 = load i16, i16* %k2, align 2
  %inc1801 = add i16 %588, 1
  store i16 %inc1801, i16* %k2, align 2
  br label %for.cond1639, !llvm.loop !20

for.end1802:                                      ; preds = %for.cond1639
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end1802, %if.then1777, %if.then1769, %if.then1691, %if.then1615, %if.then1550, %if.then1483, %if.then1425, %if.then1420, %if.then1415, %if.then1380, %if.then1374, %if.else1289, %if.then1199, %if.then1057, %if.then1018, %if.then886, %if.then849, %if.then781, %if.then775, %if.then733, %if.then705, %if.then582, %if.else515, %if.then264, %if.then227, %if.else128, %if.then115, %if.then108, %if.then64, %if.then
  %589 = load i32, i32* %retval, align 4
  ret i32 %589
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @puts(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @regex_match(%struct._RegexToken* noundef %tokens, i8* noundef %text, i64 noundef %start_i, i16 noundef zeroext %cap_slots, i64* noundef %cap_pos, i64* noundef %cap_span) #0 {
entry:
  %retval = alloca i64, align 8
  %tokens.addr = alloca %struct._RegexToken*, align 8
  %text.addr = alloca i8*, align 8
  %start_i.addr = alloca i64, align 8
  %cap_slots.addr = alloca i16, align 2
  %cap_pos.addr = alloca i64*, align 8
  %cap_span.addr = alloca i64*, align 8
  %verbose = alloca i8, align 1
  %stack_size_max = alloca i16, align 2
  %aux_stats_size = alloca i16, align 2
  %saved_stack = alloca i8*, align 8
  %tokens_len = alloca i64, align 8
  %k = alloca i32, align 4
  %caps = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %stack_n = alloca i16, align 2
  %i = alloca i64, align 8
  %range_min = alloca i64, align 8
  %range_max = alloca i64, align 8
  %just_rewinded = alloca i8, align 1
  %w_mask = alloca [16 x i64], align 16
  %limit = alloca i64, align 8
  %s = alloca %struct._RegexMatcherState, align 8
  %s1009 = alloca %struct._RegexMatcherState, align 8
  %orig_k = alloca i64, align 8
  %k_diff = alloca i64, align 8
  %s1245 = alloca %struct._RegexMatcherState, align 8
  %cap_index = alloca i16, align 2
  %s1329 = alloca %struct._RegexMatcherState, align 8
  %prev1343 = alloca i32, align 4
  %s1392 = alloca %struct._RegexMatcherState, align 8
  %force_zero = alloca i8, align 1
  %n = alloca i64, align 8
  %s1691 = alloca %struct._RegexMatcherState, align 8
  %k2 = alloca i32, align 4
  %s1820 = alloca %struct._RegexMatcherState, align 8
  %s1886 = alloca %struct._RegexMatcherState, align 8
  %cap_index2006 = alloca i16, align 2
  %s2023 = alloca %struct._RegexMatcherState, align 8
  %n2062 = alloca i64, align 8
  %old_i = alloca i64, align 8
  %s2198 = alloca %struct._RegexMatcherState, align 8
  %limit2241 = alloca i64, align 8
  %s2293 = alloca %struct._RegexMatcherState, align 8
  %limit2345 = alloca i64, align 8
  %s2383 = alloca %struct._RegexMatcherState, align 8
  %s2510 = alloca %struct._RegexMatcherState, align 8
  %n2647 = alloca i64, align 8
  %s2653 = alloca %struct._RegexMatcherState, align 8
  %kind2655 = alloca i32, align 4
  %cap_index2667 = alloca i16, align 2
  %n2709 = alloca i64, align 8
  store %struct._RegexToken* %tokens, %struct._RegexToken** %tokens.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %start_i, i64* %start_i.addr, align 8
  store i16 %cap_slots, i16* %cap_slots.addr, align 2
  store i64* %cap_pos, i64** %cap_pos.addr, align 8
  store i64* %cap_span, i64** %cap_span.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  store i8 0, i8* %verbose, align 1
  store i16 1024, i16* %stack_size_max, align 2
  store i16 1024, i16* %aux_stats_size, align 2
  %1 = load i16, i16* %cap_slots.addr, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 1024, i16* %cap_slots.addr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i8, i64 1024, align 16
  %vla2 = alloca i32, i64 1024, align 16
  %vla3 = alloca i32, i64 1024, align 16
  %vla4 = alloca i16, i64 1024, align 16
  %3 = bitcast i16* %vla4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 -1, i64 2048, i1 false)
  store i64 0, i64* %tokens_len, align 8
  store i32 0, i32* %k, align 4
  store i16 0, i16* %caps, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end89, %if.end
  %4 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %5 = load i32, i32* %k, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %4, i64 %idxprom
  %kind = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx, i32 0, i32 0
  %6 = load i8, i8* %kind, align 2
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 9
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %8 = load i32, i32* %k, align 4
  %idxprom8 = zext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %7, i64 %idxprom8
  %kind10 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx9, i32 0, i32 0
  %9 = load i8, i8* %kind10, align 2
  %conv11 = zext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 1
  br i1 %cmp12, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %while.body
  %10 = load i16, i16* %caps, align 2
  %conv14 = zext i16 %10 to i32
  %11 = load i16, i16* %cap_slots.addr, align 2
  %conv15 = zext i16 %11 to i32
  %cmp16 = icmp slt i32 %conv14, %conv15
  br i1 %cmp16, label %if.then18, label %if.end40

if.then18:                                        ; preds = %land.lhs.true
  %12 = load i16, i16* %caps, align 2
  %13 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom19 = zext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %13, i64 %idxprom19
  %mask = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx20, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [16 x i16], [16 x i16]* %mask, i64 0, i64 0
  %15 = load i16, i16* %arrayidx21, align 2
  %idxprom22 = zext i16 %15 to i64
  %arrayidx23 = getelementptr inbounds i16, i16* %vla4, i64 %idxprom22
  store i16 %12, i16* %arrayidx23, align 2
  %16 = load i16, i16* %caps, align 2
  %17 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %18 = load i32, i32* %k, align 4
  %19 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom24 = zext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %19, i64 %idxprom24
  %pair_offset = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx25, i32 0, i32 5
  %21 = load i16, i16* %pair_offset, align 2
  %conv26 = sext i16 %21 to i32
  %add = add i32 %18, %conv26
  %idxprom27 = zext i32 %add to i64
  %arrayidx28 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %17, i64 %idxprom27
  %mask29 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx28, i32 0, i32 4
  %arrayidx30 = getelementptr inbounds [16 x i16], [16 x i16]* %mask29, i64 0, i64 0
  %22 = load i16, i16* %arrayidx30, align 2
  %idxprom31 = zext i16 %22 to i64
  %arrayidx32 = getelementptr inbounds i16, i16* %vla4, i64 %idxprom31
  store i16 %16, i16* %arrayidx32, align 2
  %23 = load i64*, i64** %cap_pos.addr, align 8
  %24 = load i16, i16* %caps, align 2
  %idxprom33 = zext i16 %24 to i64
  %arrayidx34 = getelementptr inbounds i64, i64* %23, i64 %idxprom33
  store i64 -1, i64* %arrayidx34, align 8
  %25 = load i64*, i64** %cap_span.addr, align 8
  %26 = load i16, i16* %caps, align 2
  %idxprom35 = zext i16 %26 to i64
  %arrayidx36 = getelementptr inbounds i64, i64* %25, i64 %idxprom35
  store i64 -1, i64* %arrayidx36, align 8
  %27 = load i16, i16* %caps, align 2
  %conv37 = zext i16 %27 to i32
  %add38 = add nsw i32 %conv37, 1
  %conv39 = trunc i32 %add38 to i16
  store i16 %conv39, i16* %caps, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then18, %land.lhs.true, %while.body
  %28 = load i32, i32* %k, align 4
  %add41 = add i32 %28, 1
  store i32 %add41, i32* %k, align 4
  %29 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %30 = load i32, i32* %k, align 4
  %idxprom42 = zext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %29, i64 %idxprom42
  %kind44 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx43, i32 0, i32 0
  %31 = load i8, i8* %kind44, align 2
  %conv45 = zext i8 %31 to i32
  %cmp46 = icmp eq i32 %conv45, 3
  br i1 %cmp46, label %if.then61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end40
  %32 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %33 = load i32, i32* %k, align 4
  %idxprom48 = zext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %32, i64 %idxprom48
  %kind50 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx49, i32 0, i32 0
  %34 = load i8, i8* %kind50, align 2
  %conv51 = zext i8 %34 to i32
  %cmp52 = icmp eq i32 %conv51, 1
  br i1 %cmp52, label %if.then61, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %35 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom55 = zext i32 %36 to i64
  %arrayidx56 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %35, i64 %idxprom55
  %kind57 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx56, i32 0, i32 0
  %37 = load i8, i8* %kind57, align 2
  %conv58 = zext i8 %37 to i32
  %cmp59 = icmp eq i32 %conv58, 2
  br i1 %cmp59, label %if.then61, label %if.end89

if.then61:                                        ; preds = %lor.lhs.false54, %lor.lhs.false, %if.end40
  %38 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %39 = load i32, i32* %k, align 4
  %idxprom62 = zext i32 %39 to i64
  %arrayidx63 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %38, i64 %idxprom62
  %mask64 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx63, i32 0, i32 4
  %arrayidx65 = getelementptr inbounds [16 x i16], [16 x i16]* %mask64, i64 0, i64 0
  %40 = load i16, i16* %arrayidx65, align 2
  %conv66 = zext i16 %40 to i32
  %cmp67 = icmp sge i32 %conv66, 1024
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then61
  %call = call i32 @puts(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.then61
  %41 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %42 = load i32, i32* %k, align 4
  %idxprom71 = zext i32 %42 to i64
  %arrayidx72 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %41, i64 %idxprom71
  %mask73 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx72, i32 0, i32 4
  %arrayidx74 = getelementptr inbounds [16 x i16], [16 x i16]* %mask73, i64 0, i64 0
  %43 = load i16, i16* %arrayidx74, align 2
  %idxprom75 = zext i16 %43 to i64
  %arrayidx76 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom75
  store i32 0, i32* %arrayidx76, align 4
  %44 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %45 = load i32, i32* %k, align 4
  %idxprom77 = zext i32 %45 to i64
  %arrayidx78 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %44, i64 %idxprom77
  %mask79 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx78, i32 0, i32 4
  %arrayidx80 = getelementptr inbounds [16 x i16], [16 x i16]* %mask79, i64 0, i64 0
  %46 = load i16, i16* %arrayidx80, align 2
  %idxprom81 = zext i16 %46 to i64
  %arrayidx82 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom81
  store i32 0, i32* %arrayidx82, align 4
  %47 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %48 = load i32, i32* %k, align 4
  %idxprom83 = zext i32 %48 to i64
  %arrayidx84 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %47, i64 %idxprom83
  %mask85 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx84, i32 0, i32 4
  %arrayidx86 = getelementptr inbounds [16 x i16], [16 x i16]* %mask85, i64 0, i64 0
  %49 = load i16, i16* %arrayidx86, align 2
  %idxprom87 = zext i16 %49 to i64
  %arrayidx88 = getelementptr inbounds i8, i8* %vla, i64 %idxprom87
  store i8 0, i8* %arrayidx88, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.end70, %lor.lhs.false54
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %50 = load i32, i32* %k, align 4
  %conv90 = zext i32 %50 to i64
  store i64 %conv90, i64* %tokens_len, align 8
  %vla91 = alloca %struct._RegexMatcherState, i64 1024, align 16
  store i16 0, i16* %stack_n, align 2
  %51 = load i64, i64* %start_i.addr, align 8
  store i64 %51, i64* %i, align 8
  store i64 0, i64* %range_min, align 8
  store i64 0, i64* %range_max, align 8
  store i8 0, i8* %just_rewinded, align 1
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 0
  %52 = bitcast i64* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %52, i8 0, i64 128, i1 false)
  %arrayidx92 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 3
  store i64 1023, i64* %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 4
  store i64 65534, i64* %arrayidx93, align 16
  %arrayidx94 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 5
  store i64 34815, i64* %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 6
  store i64 65534, i64* %arrayidx95, align 16
  %arrayidx96 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 7
  store i64 2047, i64* %arrayidx96, align 8
  store i64 10000, i64* %limit, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %53 = load i32, i32* %k, align 4
  %conv97 = zext i32 %53 to i64
  %54 = load i64, i64* %tokens_len, align 8
  %cmp98 = icmp ult i64 %conv97, %54
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i64, i64* %limit, align 8
  %cmp100 = icmp eq i64 %55, 0
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %for.body
  %call103 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %for.body
  %56 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %57 = load i32, i32* %k, align 4
  %idxprom105 = zext i32 %57 to i64
  %arrayidx106 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %56, i64 %idxprom105
  %kind107 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx106, i32 0, i32 0
  %58 = load i8, i8* %kind107, align 2
  %conv108 = zext i8 %58 to i32
  %cmp109 = icmp eq i32 %conv108, 5
  br i1 %cmp109, label %if.then111, label %if.else181

if.then111:                                       ; preds = %if.end104
  %59 = load i64, i64* %i, align 8
  %cmp112 = icmp ne i64 %59, 0
  br i1 %cmp112, label %if.then114, label %if.end180

if.then114:                                       ; preds = %if.then111
  %60 = load i16, i16* %stack_n, align 2
  %conv115 = zext i16 %60 to i32
  %cmp116 = icmp eq i32 %conv115, 0
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.then114
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end119:                                        ; preds = %if.then114
  %61 = load i16, i16* %stack_n, align 2
  %conv120 = zext i16 %61 to i32
  %sub = sub nsw i32 %conv120, 1
  %conv121 = trunc i32 %sub to i16
  store i16 %conv121, i16* %stack_n, align 2
  br label %while.cond122

while.cond122:                                    ; preds = %while.body130, %if.end119
  %62 = load i16, i16* %stack_n, align 2
  %conv123 = zext i16 %62 to i32
  %cmp124 = icmp sgt i32 %conv123, 0
  br i1 %cmp124, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond122
  %63 = load i16, i16* %stack_n, align 2
  %idxprom126 = zext i16 %63 to i64
  %arrayidx127 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom126
  %prev = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx127, i32 0, i32 2
  %64 = load i32, i32* %prev, align 8
  %cmp128 = icmp eq i32 %64, 64199
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond122
  %65 = phi i1 [ false, %while.cond122 ], [ %cmp128, %land.rhs ]
  br i1 %65, label %while.body130, label %while.end134

while.body130:                                    ; preds = %land.end
  %66 = load i16, i16* %stack_n, align 2
  %conv131 = zext i16 %66 to i32
  %sub132 = sub nsw i32 %conv131, 1
  %conv133 = trunc i32 %sub132 to i16
  store i16 %conv133, i16* %stack_n, align 2
  br label %while.cond122, !llvm.loop !22

while.end134:                                     ; preds = %land.end
  store i8 1, i8* %just_rewinded, align 1
  %67 = load i16, i16* %stack_n, align 2
  %idxprom135 = zext i16 %67 to i64
  %arrayidx136 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom135
  %range_min137 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx136, i32 0, i32 4
  %68 = load i64, i64* %range_min137, align 8
  store i64 %68, i64* %range_min, align 8
  %69 = load i16, i16* %stack_n, align 2
  %idxprom138 = zext i16 %69 to i64
  %arrayidx139 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom138
  %range_max140 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx139, i32 0, i32 5
  %70 = load i64, i64* %range_max140, align 8
  store i64 %70, i64* %range_max, align 8
  %71 = load i16, i16* %stack_n, align 2
  %idxprom141 = zext i16 %71 to i64
  %arrayidx142 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom141
  %i143 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx142, i32 0, i32 3
  %72 = load i64, i64* %i143, align 8
  %73 = load i64, i64* %i, align 8
  %cmp144 = icmp ule i64 %72, %73
  br i1 %cmp144, label %if.then146, label %if.else

if.then146:                                       ; preds = %while.end134
  br label %if.end147

if.else:                                          ; preds = %while.end134
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 975, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end147:                                        ; preds = %if.then146
  %74 = load i16, i16* %stack_n, align 2
  %idxprom148 = zext i16 %74 to i64
  %arrayidx149 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom148
  %i150 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx149, i32 0, i32 3
  %75 = load i64, i64* %i150, align 8
  store i64 %75, i64* %i, align 8
  %76 = load i16, i16* %stack_n, align 2
  %idxprom151 = zext i16 %76 to i64
  %arrayidx152 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom151
  %k153 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx152, i32 0, i32 0
  %77 = load i32, i32* %k153, align 8
  store i32 %77, i32* %k, align 4
  %78 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %79 = load i32, i32* %k, align 4
  %idxprom154 = zext i32 %79 to i64
  %arrayidx155 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %78, i64 %idxprom154
  %kind156 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx155, i32 0, i32 0
  %80 = load i8, i8* %kind156, align 2
  %conv157 = zext i8 %80 to i32
  %cmp158 = icmp eq i32 %conv157, 3
  br i1 %cmp158, label %if.then160, label %if.end178

if.then160:                                       ; preds = %if.end147
  %81 = load i16, i16* %stack_n, align 2
  %idxprom161 = zext i16 %81 to i64
  %arrayidx162 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom161
  %group_state = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx162, i32 0, i32 1
  %82 = load i32, i32* %group_state, align 4
  %83 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %84 = load i32, i32* %k, align 4
  %idxprom163 = zext i32 %84 to i64
  %arrayidx164 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %83, i64 %idxprom163
  %mask165 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx164, i32 0, i32 4
  %arrayidx166 = getelementptr inbounds [16 x i16], [16 x i16]* %mask165, i64 0, i64 0
  %85 = load i16, i16* %arrayidx166, align 2
  %idxprom167 = zext i16 %85 to i64
  %arrayidx168 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom167
  store i32 %82, i32* %arrayidx168, align 4
  %86 = load i16, i16* %stack_n, align 2
  %idxprom169 = zext i16 %86 to i64
  %arrayidx170 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom169
  %prev171 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx170, i32 0, i32 2
  %87 = load i32, i32* %prev171, align 8
  %88 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %89 = load i32, i32* %k, align 4
  %idxprom172 = zext i32 %89 to i64
  %arrayidx173 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %88, i64 %idxprom172
  %mask174 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx173, i32 0, i32 4
  %arrayidx175 = getelementptr inbounds [16 x i16], [16 x i16]* %mask174, i64 0, i64 0
  %90 = load i16, i16* %arrayidx175, align 2
  %idxprom176 = zext i16 %90 to i64
  %arrayidx177 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom176
  store i32 %87, i32* %arrayidx177, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then160, %if.end147
  %91 = load i32, i32* %k, align 4
  %sub179 = sub i32 %91, 1
  store i32 %sub179, i32* %k, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.end178, %if.then111
  br label %for.inc

if.else181:                                       ; preds = %if.end104
  %92 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %93 = load i32, i32* %k, align 4
  %idxprom182 = zext i32 %93 to i64
  %arrayidx183 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %92, i64 %idxprom182
  %kind184 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx183, i32 0, i32 0
  %94 = load i8, i8* %kind184, align 2
  %conv185 = zext i8 %94 to i32
  %cmp186 = icmp eq i32 %conv185, 6
  br i1 %cmp186, label %if.then188, label %if.else266

if.then188:                                       ; preds = %if.else181
  %95 = load i8*, i8** %text.addr, align 8
  %96 = load i64, i64* %i, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %95, i64 %96
  %97 = load i8, i8* %arrayidx189, align 1
  %conv190 = sext i8 %97 to i32
  %cmp191 = icmp ne i32 %conv190, 0
  br i1 %cmp191, label %if.then193, label %if.end265

if.then193:                                       ; preds = %if.then188
  %98 = load i16, i16* %stack_n, align 2
  %conv194 = zext i16 %98 to i32
  %cmp195 = icmp eq i32 %conv194, 0
  br i1 %cmp195, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.then193
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end198:                                        ; preds = %if.then193
  %99 = load i16, i16* %stack_n, align 2
  %conv199 = zext i16 %99 to i32
  %sub200 = sub nsw i32 %conv199, 1
  %conv201 = trunc i32 %sub200 to i16
  store i16 %conv201, i16* %stack_n, align 2
  br label %while.cond202

while.cond202:                                    ; preds = %while.body213, %if.end198
  %100 = load i16, i16* %stack_n, align 2
  %conv203 = zext i16 %100 to i32
  %cmp204 = icmp sgt i32 %conv203, 0
  br i1 %cmp204, label %land.rhs206, label %land.end212

land.rhs206:                                      ; preds = %while.cond202
  %101 = load i16, i16* %stack_n, align 2
  %idxprom207 = zext i16 %101 to i64
  %arrayidx208 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom207
  %prev209 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx208, i32 0, i32 2
  %102 = load i32, i32* %prev209, align 8
  %cmp210 = icmp eq i32 %102, 64199
  br label %land.end212

land.end212:                                      ; preds = %land.rhs206, %while.cond202
  %103 = phi i1 [ false, %while.cond202 ], [ %cmp210, %land.rhs206 ]
  br i1 %103, label %while.body213, label %while.end217

while.body213:                                    ; preds = %land.end212
  %104 = load i16, i16* %stack_n, align 2
  %conv214 = zext i16 %104 to i32
  %sub215 = sub nsw i32 %conv214, 1
  %conv216 = trunc i32 %sub215 to i16
  store i16 %conv216, i16* %stack_n, align 2
  br label %while.cond202, !llvm.loop !23

while.end217:                                     ; preds = %land.end212
  store i8 1, i8* %just_rewinded, align 1
  %105 = load i16, i16* %stack_n, align 2
  %idxprom218 = zext i16 %105 to i64
  %arrayidx219 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom218
  %range_min220 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx219, i32 0, i32 4
  %106 = load i64, i64* %range_min220, align 8
  store i64 %106, i64* %range_min, align 8
  %107 = load i16, i16* %stack_n, align 2
  %idxprom221 = zext i16 %107 to i64
  %arrayidx222 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom221
  %range_max223 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx222, i32 0, i32 5
  %108 = load i64, i64* %range_max223, align 8
  store i64 %108, i64* %range_max, align 8
  %109 = load i16, i16* %stack_n, align 2
  %idxprom224 = zext i16 %109 to i64
  %arrayidx225 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom224
  %i226 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx225, i32 0, i32 3
  %110 = load i64, i64* %i226, align 8
  %111 = load i64, i64* %i, align 8
  %cmp227 = icmp ule i64 %110, %111
  br i1 %cmp227, label %if.then229, label %if.else230

if.then229:                                       ; preds = %while.end217
  br label %if.end231

if.else230:                                       ; preds = %while.end217
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 981, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end231:                                        ; preds = %if.then229
  %112 = load i16, i16* %stack_n, align 2
  %idxprom232 = zext i16 %112 to i64
  %arrayidx233 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom232
  %i234 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx233, i32 0, i32 3
  %113 = load i64, i64* %i234, align 8
  store i64 %113, i64* %i, align 8
  %114 = load i16, i16* %stack_n, align 2
  %idxprom235 = zext i16 %114 to i64
  %arrayidx236 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom235
  %k237 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx236, i32 0, i32 0
  %115 = load i32, i32* %k237, align 8
  store i32 %115, i32* %k, align 4
  %116 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %117 = load i32, i32* %k, align 4
  %idxprom238 = zext i32 %117 to i64
  %arrayidx239 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %116, i64 %idxprom238
  %kind240 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx239, i32 0, i32 0
  %118 = load i8, i8* %kind240, align 2
  %conv241 = zext i8 %118 to i32
  %cmp242 = icmp eq i32 %conv241, 3
  br i1 %cmp242, label %if.then244, label %if.end263

if.then244:                                       ; preds = %if.end231
  %119 = load i16, i16* %stack_n, align 2
  %idxprom245 = zext i16 %119 to i64
  %arrayidx246 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom245
  %group_state247 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx246, i32 0, i32 1
  %120 = load i32, i32* %group_state247, align 4
  %121 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %122 = load i32, i32* %k, align 4
  %idxprom248 = zext i32 %122 to i64
  %arrayidx249 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %121, i64 %idxprom248
  %mask250 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx249, i32 0, i32 4
  %arrayidx251 = getelementptr inbounds [16 x i16], [16 x i16]* %mask250, i64 0, i64 0
  %123 = load i16, i16* %arrayidx251, align 2
  %idxprom252 = zext i16 %123 to i64
  %arrayidx253 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom252
  store i32 %120, i32* %arrayidx253, align 4
  %124 = load i16, i16* %stack_n, align 2
  %idxprom254 = zext i16 %124 to i64
  %arrayidx255 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom254
  %prev256 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx255, i32 0, i32 2
  %125 = load i32, i32* %prev256, align 8
  %126 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %127 = load i32, i32* %k, align 4
  %idxprom257 = zext i32 %127 to i64
  %arrayidx258 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %126, i64 %idxprom257
  %mask259 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx258, i32 0, i32 4
  %arrayidx260 = getelementptr inbounds [16 x i16], [16 x i16]* %mask259, i64 0, i64 0
  %128 = load i16, i16* %arrayidx260, align 2
  %idxprom261 = zext i16 %128 to i64
  %arrayidx262 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom261
  store i32 %125, i32* %arrayidx262, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.then244, %if.end231
  %129 = load i32, i32* %k, align 4
  %sub264 = sub i32 %129, 1
  store i32 %sub264, i32* %k, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.end263, %if.then188
  br label %for.inc

if.else266:                                       ; preds = %if.else181
  %130 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %131 = load i32, i32* %k, align 4
  %idxprom267 = zext i32 %131 to i64
  %arrayidx268 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %130, i64 %idxprom267
  %kind269 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx268, i32 0, i32 0
  %132 = load i8, i8* %kind269, align 2
  %conv270 = zext i8 %132 to i32
  %cmp271 = icmp eq i32 %conv270, 7
  br i1 %cmp271, label %if.then273, label %if.else569

if.then273:                                       ; preds = %if.else266
  %133 = load i64, i64* %i, align 8
  %cmp274 = icmp eq i64 %133, 0
  br i1 %cmp274, label %land.lhs.true276, label %if.else357

land.lhs.true276:                                 ; preds = %if.then273
  %134 = load i8*, i8** %text.addr, align 8
  %135 = load i64, i64* %i, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %134, i64 %135
  %136 = load i8, i8* %arrayidx277, align 1
  %conv278 = zext i8 %136 to i32
  %shr = ashr i32 %conv278, 4
  %idxprom279 = sext i32 %shr to i64
  %arrayidx280 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 %idxprom279
  %137 = load i64, i64* %arrayidx280, align 8
  %138 = load i8*, i8** %text.addr, align 8
  %139 = load i64, i64* %i, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %138, i64 %139
  %140 = load i8, i8* %arrayidx281, align 1
  %conv282 = zext i8 %140 to i32
  %and = and i32 %conv282, 15
  %shl = shl i32 1, %and
  %conv283 = sext i32 %shl to i64
  %and284 = and i64 %137, %conv283
  %tobool = icmp ne i64 %and284, 0
  br i1 %tobool, label %if.else357, label %if.then285

if.then285:                                       ; preds = %land.lhs.true276
  %141 = load i16, i16* %stack_n, align 2
  %conv286 = zext i16 %141 to i32
  %cmp287 = icmp eq i32 %conv286, 0
  br i1 %cmp287, label %if.then289, label %if.end290

if.then289:                                       ; preds = %if.then285
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end290:                                        ; preds = %if.then285
  %142 = load i16, i16* %stack_n, align 2
  %conv291 = zext i16 %142 to i32
  %sub292 = sub nsw i32 %conv291, 1
  %conv293 = trunc i32 %sub292 to i16
  store i16 %conv293, i16* %stack_n, align 2
  br label %while.cond294

while.cond294:                                    ; preds = %while.body305, %if.end290
  %143 = load i16, i16* %stack_n, align 2
  %conv295 = zext i16 %143 to i32
  %cmp296 = icmp sgt i32 %conv295, 0
  br i1 %cmp296, label %land.rhs298, label %land.end304

land.rhs298:                                      ; preds = %while.cond294
  %144 = load i16, i16* %stack_n, align 2
  %idxprom299 = zext i16 %144 to i64
  %arrayidx300 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom299
  %prev301 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx300, i32 0, i32 2
  %145 = load i32, i32* %prev301, align 8
  %cmp302 = icmp eq i32 %145, 64199
  br label %land.end304

land.end304:                                      ; preds = %land.rhs298, %while.cond294
  %146 = phi i1 [ false, %while.cond294 ], [ %cmp302, %land.rhs298 ]
  br i1 %146, label %while.body305, label %while.end309

while.body305:                                    ; preds = %land.end304
  %147 = load i16, i16* %stack_n, align 2
  %conv306 = zext i16 %147 to i32
  %sub307 = sub nsw i32 %conv306, 1
  %conv308 = trunc i32 %sub307 to i16
  store i16 %conv308, i16* %stack_n, align 2
  br label %while.cond294, !llvm.loop !24

while.end309:                                     ; preds = %land.end304
  store i8 1, i8* %just_rewinded, align 1
  %148 = load i16, i16* %stack_n, align 2
  %idxprom310 = zext i16 %148 to i64
  %arrayidx311 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom310
  %range_min312 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx311, i32 0, i32 4
  %149 = load i64, i64* %range_min312, align 8
  store i64 %149, i64* %range_min, align 8
  %150 = load i16, i16* %stack_n, align 2
  %idxprom313 = zext i16 %150 to i64
  %arrayidx314 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom313
  %range_max315 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx314, i32 0, i32 5
  %151 = load i64, i64* %range_max315, align 8
  store i64 %151, i64* %range_max, align 8
  %152 = load i16, i16* %stack_n, align 2
  %idxprom316 = zext i16 %152 to i64
  %arrayidx317 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom316
  %i318 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx317, i32 0, i32 3
  %153 = load i64, i64* %i318, align 8
  %154 = load i64, i64* %i, align 8
  %cmp319 = icmp ule i64 %153, %154
  br i1 %cmp319, label %if.then321, label %if.else322

if.then321:                                       ; preds = %while.end309
  br label %if.end323

if.else322:                                       ; preds = %while.end309
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 987, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end323:                                        ; preds = %if.then321
  %155 = load i16, i16* %stack_n, align 2
  %idxprom324 = zext i16 %155 to i64
  %arrayidx325 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom324
  %i326 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx325, i32 0, i32 3
  %156 = load i64, i64* %i326, align 8
  store i64 %156, i64* %i, align 8
  %157 = load i16, i16* %stack_n, align 2
  %idxprom327 = zext i16 %157 to i64
  %arrayidx328 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom327
  %k329 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx328, i32 0, i32 0
  %158 = load i32, i32* %k329, align 8
  store i32 %158, i32* %k, align 4
  %159 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %160 = load i32, i32* %k, align 4
  %idxprom330 = zext i32 %160 to i64
  %arrayidx331 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %159, i64 %idxprom330
  %kind332 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx331, i32 0, i32 0
  %161 = load i8, i8* %kind332, align 2
  %conv333 = zext i8 %161 to i32
  %cmp334 = icmp eq i32 %conv333, 3
  br i1 %cmp334, label %if.then336, label %if.end355

if.then336:                                       ; preds = %if.end323
  %162 = load i16, i16* %stack_n, align 2
  %idxprom337 = zext i16 %162 to i64
  %arrayidx338 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom337
  %group_state339 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx338, i32 0, i32 1
  %163 = load i32, i32* %group_state339, align 4
  %164 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %165 = load i32, i32* %k, align 4
  %idxprom340 = zext i32 %165 to i64
  %arrayidx341 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %164, i64 %idxprom340
  %mask342 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx341, i32 0, i32 4
  %arrayidx343 = getelementptr inbounds [16 x i16], [16 x i16]* %mask342, i64 0, i64 0
  %166 = load i16, i16* %arrayidx343, align 2
  %idxprom344 = zext i16 %166 to i64
  %arrayidx345 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom344
  store i32 %163, i32* %arrayidx345, align 4
  %167 = load i16, i16* %stack_n, align 2
  %idxprom346 = zext i16 %167 to i64
  %arrayidx347 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom346
  %prev348 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx347, i32 0, i32 2
  %168 = load i32, i32* %prev348, align 8
  %169 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %170 = load i32, i32* %k, align 4
  %idxprom349 = zext i32 %170 to i64
  %arrayidx350 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %169, i64 %idxprom349
  %mask351 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx350, i32 0, i32 4
  %arrayidx352 = getelementptr inbounds [16 x i16], [16 x i16]* %mask351, i64 0, i64 0
  %171 = load i16, i16* %arrayidx352, align 2
  %idxprom353 = zext i16 %171 to i64
  %arrayidx354 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom353
  store i32 %168, i32* %arrayidx354, align 4
  br label %if.end355

if.end355:                                        ; preds = %if.then336, %if.end323
  %172 = load i32, i32* %k, align 4
  %sub356 = sub i32 %172, 1
  store i32 %sub356, i32* %k, align 4
  br label %if.end568

if.else357:                                       ; preds = %land.lhs.true276, %if.then273
  %173 = load i64, i64* %i, align 8
  %cmp358 = icmp ne i64 %173, 0
  br i1 %cmp358, label %land.lhs.true360, label %if.else452

land.lhs.true360:                                 ; preds = %if.else357
  %174 = load i8*, i8** %text.addr, align 8
  %175 = load i64, i64* %i, align 8
  %arrayidx361 = getelementptr inbounds i8, i8* %174, i64 %175
  %176 = load i8, i8* %arrayidx361, align 1
  %conv362 = sext i8 %176 to i32
  %cmp363 = icmp eq i32 %conv362, 0
  br i1 %cmp363, label %land.lhs.true365, label %if.else452

land.lhs.true365:                                 ; preds = %land.lhs.true360
  %177 = load i8*, i8** %text.addr, align 8
  %178 = load i64, i64* %i, align 8
  %sub366 = sub i64 %178, 1
  %arrayidx367 = getelementptr inbounds i8, i8* %177, i64 %sub366
  %179 = load i8, i8* %arrayidx367, align 1
  %conv368 = zext i8 %179 to i32
  %shr369 = ashr i32 %conv368, 4
  %idxprom370 = sext i32 %shr369 to i64
  %arrayidx371 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 %idxprom370
  %180 = load i64, i64* %arrayidx371, align 8
  %181 = load i8*, i8** %text.addr, align 8
  %182 = load i64, i64* %i, align 8
  %sub372 = sub i64 %182, 1
  %arrayidx373 = getelementptr inbounds i8, i8* %181, i64 %sub372
  %183 = load i8, i8* %arrayidx373, align 1
  %conv374 = zext i8 %183 to i32
  %and375 = and i32 %conv374, 15
  %shl376 = shl i32 1, %and375
  %conv377 = sext i32 %shl376 to i64
  %and378 = and i64 %180, %conv377
  %tobool379 = icmp ne i64 %and378, 0
  br i1 %tobool379, label %if.else452, label %if.then380

if.then380:                                       ; preds = %land.lhs.true365
  %184 = load i16, i16* %stack_n, align 2
  %conv381 = zext i16 %184 to i32
  %cmp382 = icmp eq i32 %conv381, 0
  br i1 %cmp382, label %if.then384, label %if.end385

if.then384:                                       ; preds = %if.then380
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end385:                                        ; preds = %if.then380
  %185 = load i16, i16* %stack_n, align 2
  %conv386 = zext i16 %185 to i32
  %sub387 = sub nsw i32 %conv386, 1
  %conv388 = trunc i32 %sub387 to i16
  store i16 %conv388, i16* %stack_n, align 2
  br label %while.cond389

while.cond389:                                    ; preds = %while.body400, %if.end385
  %186 = load i16, i16* %stack_n, align 2
  %conv390 = zext i16 %186 to i32
  %cmp391 = icmp sgt i32 %conv390, 0
  br i1 %cmp391, label %land.rhs393, label %land.end399

land.rhs393:                                      ; preds = %while.cond389
  %187 = load i16, i16* %stack_n, align 2
  %idxprom394 = zext i16 %187 to i64
  %arrayidx395 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom394
  %prev396 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx395, i32 0, i32 2
  %188 = load i32, i32* %prev396, align 8
  %cmp397 = icmp eq i32 %188, 64199
  br label %land.end399

land.end399:                                      ; preds = %land.rhs393, %while.cond389
  %189 = phi i1 [ false, %while.cond389 ], [ %cmp397, %land.rhs393 ]
  br i1 %189, label %while.body400, label %while.end404

while.body400:                                    ; preds = %land.end399
  %190 = load i16, i16* %stack_n, align 2
  %conv401 = zext i16 %190 to i32
  %sub402 = sub nsw i32 %conv401, 1
  %conv403 = trunc i32 %sub402 to i16
  store i16 %conv403, i16* %stack_n, align 2
  br label %while.cond389, !llvm.loop !25

while.end404:                                     ; preds = %land.end399
  store i8 1, i8* %just_rewinded, align 1
  %191 = load i16, i16* %stack_n, align 2
  %idxprom405 = zext i16 %191 to i64
  %arrayidx406 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom405
  %range_min407 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx406, i32 0, i32 4
  %192 = load i64, i64* %range_min407, align 8
  store i64 %192, i64* %range_min, align 8
  %193 = load i16, i16* %stack_n, align 2
  %idxprom408 = zext i16 %193 to i64
  %arrayidx409 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom408
  %range_max410 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx409, i32 0, i32 5
  %194 = load i64, i64* %range_max410, align 8
  store i64 %194, i64* %range_max, align 8
  %195 = load i16, i16* %stack_n, align 2
  %idxprom411 = zext i16 %195 to i64
  %arrayidx412 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom411
  %i413 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx412, i32 0, i32 3
  %196 = load i64, i64* %i413, align 8
  %197 = load i64, i64* %i, align 8
  %cmp414 = icmp ule i64 %196, %197
  br i1 %cmp414, label %if.then416, label %if.else417

if.then416:                                       ; preds = %while.end404
  br label %if.end418

if.else417:                                       ; preds = %while.end404
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 989, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end418:                                        ; preds = %if.then416
  %198 = load i16, i16* %stack_n, align 2
  %idxprom419 = zext i16 %198 to i64
  %arrayidx420 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom419
  %i421 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx420, i32 0, i32 3
  %199 = load i64, i64* %i421, align 8
  store i64 %199, i64* %i, align 8
  %200 = load i16, i16* %stack_n, align 2
  %idxprom422 = zext i16 %200 to i64
  %arrayidx423 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom422
  %k424 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx423, i32 0, i32 0
  %201 = load i32, i32* %k424, align 8
  store i32 %201, i32* %k, align 4
  %202 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %203 = load i32, i32* %k, align 4
  %idxprom425 = zext i32 %203 to i64
  %arrayidx426 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %202, i64 %idxprom425
  %kind427 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx426, i32 0, i32 0
  %204 = load i8, i8* %kind427, align 2
  %conv428 = zext i8 %204 to i32
  %cmp429 = icmp eq i32 %conv428, 3
  br i1 %cmp429, label %if.then431, label %if.end450

if.then431:                                       ; preds = %if.end418
  %205 = load i16, i16* %stack_n, align 2
  %idxprom432 = zext i16 %205 to i64
  %arrayidx433 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom432
  %group_state434 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx433, i32 0, i32 1
  %206 = load i32, i32* %group_state434, align 4
  %207 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %208 = load i32, i32* %k, align 4
  %idxprom435 = zext i32 %208 to i64
  %arrayidx436 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %207, i64 %idxprom435
  %mask437 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx436, i32 0, i32 4
  %arrayidx438 = getelementptr inbounds [16 x i16], [16 x i16]* %mask437, i64 0, i64 0
  %209 = load i16, i16* %arrayidx438, align 2
  %idxprom439 = zext i16 %209 to i64
  %arrayidx440 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom439
  store i32 %206, i32* %arrayidx440, align 4
  %210 = load i16, i16* %stack_n, align 2
  %idxprom441 = zext i16 %210 to i64
  %arrayidx442 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom441
  %prev443 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx442, i32 0, i32 2
  %211 = load i32, i32* %prev443, align 8
  %212 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %213 = load i32, i32* %k, align 4
  %idxprom444 = zext i32 %213 to i64
  %arrayidx445 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %212, i64 %idxprom444
  %mask446 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx445, i32 0, i32 4
  %arrayidx447 = getelementptr inbounds [16 x i16], [16 x i16]* %mask446, i64 0, i64 0
  %214 = load i16, i16* %arrayidx447, align 2
  %idxprom448 = zext i16 %214 to i64
  %arrayidx449 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom448
  store i32 %211, i32* %arrayidx449, align 4
  br label %if.end450

if.end450:                                        ; preds = %if.then431, %if.end418
  %215 = load i32, i32* %k, align 4
  %sub451 = sub i32 %215, 1
  store i32 %sub451, i32* %k, align 4
  br label %if.end567

if.else452:                                       ; preds = %land.lhs.true365, %land.lhs.true360, %if.else357
  %216 = load i64, i64* %i, align 8
  %cmp453 = icmp ne i64 %216, 0
  br i1 %cmp453, label %land.lhs.true455, label %if.end566

land.lhs.true455:                                 ; preds = %if.else452
  %217 = load i8*, i8** %text.addr, align 8
  %218 = load i64, i64* %i, align 8
  %arrayidx456 = getelementptr inbounds i8, i8* %217, i64 %218
  %219 = load i8, i8* %arrayidx456, align 1
  %conv457 = sext i8 %219 to i32
  %cmp458 = icmp ne i32 %conv457, 0
  br i1 %cmp458, label %land.lhs.true460, label %if.end566

land.lhs.true460:                                 ; preds = %land.lhs.true455
  %220 = load i8*, i8** %text.addr, align 8
  %221 = load i64, i64* %i, align 8
  %sub461 = sub i64 %221, 1
  %arrayidx462 = getelementptr inbounds i8, i8* %220, i64 %sub461
  %222 = load i8, i8* %arrayidx462, align 1
  %conv463 = zext i8 %222 to i32
  %shr464 = ashr i32 %conv463, 4
  %idxprom465 = sext i32 %shr464 to i64
  %arrayidx466 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 %idxprom465
  %223 = load i64, i64* %arrayidx466, align 8
  %224 = load i8*, i8** %text.addr, align 8
  %225 = load i64, i64* %i, align 8
  %sub467 = sub i64 %225, 1
  %arrayidx468 = getelementptr inbounds i8, i8* %224, i64 %sub467
  %226 = load i8, i8* %arrayidx468, align 1
  %conv469 = zext i8 %226 to i32
  %and470 = and i32 %conv469, 15
  %shl471 = shl i32 1, %and470
  %conv472 = sext i32 %shl471 to i64
  %and473 = and i64 %223, %conv472
  %tobool474 = icmp ne i64 %and473, 0
  %lnot = xor i1 %tobool474, true
  %lnot475 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot475 to i32
  %227 = load i8*, i8** %text.addr, align 8
  %228 = load i64, i64* %i, align 8
  %arrayidx476 = getelementptr inbounds i8, i8* %227, i64 %228
  %229 = load i8, i8* %arrayidx476, align 1
  %conv477 = zext i8 %229 to i32
  %shr478 = ashr i32 %conv477, 4
  %idxprom479 = sext i32 %shr478 to i64
  %arrayidx480 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 %idxprom479
  %230 = load i64, i64* %arrayidx480, align 8
  %231 = load i8*, i8** %text.addr, align 8
  %232 = load i64, i64* %i, align 8
  %arrayidx481 = getelementptr inbounds i8, i8* %231, i64 %232
  %233 = load i8, i8* %arrayidx481, align 1
  %conv482 = zext i8 %233 to i32
  %and483 = and i32 %conv482, 15
  %shl484 = shl i32 1, %and483
  %conv485 = sext i32 %shl484 to i64
  %and486 = and i64 %230, %conv485
  %tobool487 = icmp ne i64 %and486, 0
  %lnot488 = xor i1 %tobool487, true
  %lnot490 = xor i1 %lnot488, true
  %lnot.ext491 = zext i1 %lnot490 to i32
  %cmp492 = icmp eq i32 %lnot.ext, %lnot.ext491
  br i1 %cmp492, label %if.then494, label %if.end566

if.then494:                                       ; preds = %land.lhs.true460
  %234 = load i16, i16* %stack_n, align 2
  %conv495 = zext i16 %234 to i32
  %cmp496 = icmp eq i32 %conv495, 0
  br i1 %cmp496, label %if.then498, label %if.end499

if.then498:                                       ; preds = %if.then494
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end499:                                        ; preds = %if.then494
  %235 = load i16, i16* %stack_n, align 2
  %conv500 = zext i16 %235 to i32
  %sub501 = sub nsw i32 %conv500, 1
  %conv502 = trunc i32 %sub501 to i16
  store i16 %conv502, i16* %stack_n, align 2
  br label %while.cond503

while.cond503:                                    ; preds = %while.body514, %if.end499
  %236 = load i16, i16* %stack_n, align 2
  %conv504 = zext i16 %236 to i32
  %cmp505 = icmp sgt i32 %conv504, 0
  br i1 %cmp505, label %land.rhs507, label %land.end513

land.rhs507:                                      ; preds = %while.cond503
  %237 = load i16, i16* %stack_n, align 2
  %idxprom508 = zext i16 %237 to i64
  %arrayidx509 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom508
  %prev510 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx509, i32 0, i32 2
  %238 = load i32, i32* %prev510, align 8
  %cmp511 = icmp eq i32 %238, 64199
  br label %land.end513

land.end513:                                      ; preds = %land.rhs507, %while.cond503
  %239 = phi i1 [ false, %while.cond503 ], [ %cmp511, %land.rhs507 ]
  br i1 %239, label %while.body514, label %while.end518

while.body514:                                    ; preds = %land.end513
  %240 = load i16, i16* %stack_n, align 2
  %conv515 = zext i16 %240 to i32
  %sub516 = sub nsw i32 %conv515, 1
  %conv517 = trunc i32 %sub516 to i16
  store i16 %conv517, i16* %stack_n, align 2
  br label %while.cond503, !llvm.loop !26

while.end518:                                     ; preds = %land.end513
  store i8 1, i8* %just_rewinded, align 1
  %241 = load i16, i16* %stack_n, align 2
  %idxprom519 = zext i16 %241 to i64
  %arrayidx520 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom519
  %range_min521 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx520, i32 0, i32 4
  %242 = load i64, i64* %range_min521, align 8
  store i64 %242, i64* %range_min, align 8
  %243 = load i16, i16* %stack_n, align 2
  %idxprom522 = zext i16 %243 to i64
  %arrayidx523 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom522
  %range_max524 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx523, i32 0, i32 5
  %244 = load i64, i64* %range_max524, align 8
  store i64 %244, i64* %range_max, align 8
  %245 = load i16, i16* %stack_n, align 2
  %idxprom525 = zext i16 %245 to i64
  %arrayidx526 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom525
  %i527 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx526, i32 0, i32 3
  %246 = load i64, i64* %i527, align 8
  %247 = load i64, i64* %i, align 8
  %cmp528 = icmp ule i64 %246, %247
  br i1 %cmp528, label %if.then530, label %if.else531

if.then530:                                       ; preds = %while.end518
  br label %if.end532

if.else531:                                       ; preds = %while.end518
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 991, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end532:                                        ; preds = %if.then530
  %248 = load i16, i16* %stack_n, align 2
  %idxprom533 = zext i16 %248 to i64
  %arrayidx534 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom533
  %i535 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx534, i32 0, i32 3
  %249 = load i64, i64* %i535, align 8
  store i64 %249, i64* %i, align 8
  %250 = load i16, i16* %stack_n, align 2
  %idxprom536 = zext i16 %250 to i64
  %arrayidx537 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom536
  %k538 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx537, i32 0, i32 0
  %251 = load i32, i32* %k538, align 8
  store i32 %251, i32* %k, align 4
  %252 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %253 = load i32, i32* %k, align 4
  %idxprom539 = zext i32 %253 to i64
  %arrayidx540 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %252, i64 %idxprom539
  %kind541 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx540, i32 0, i32 0
  %254 = load i8, i8* %kind541, align 2
  %conv542 = zext i8 %254 to i32
  %cmp543 = icmp eq i32 %conv542, 3
  br i1 %cmp543, label %if.then545, label %if.end564

if.then545:                                       ; preds = %if.end532
  %255 = load i16, i16* %stack_n, align 2
  %idxprom546 = zext i16 %255 to i64
  %arrayidx547 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom546
  %group_state548 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx547, i32 0, i32 1
  %256 = load i32, i32* %group_state548, align 4
  %257 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %258 = load i32, i32* %k, align 4
  %idxprom549 = zext i32 %258 to i64
  %arrayidx550 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %257, i64 %idxprom549
  %mask551 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx550, i32 0, i32 4
  %arrayidx552 = getelementptr inbounds [16 x i16], [16 x i16]* %mask551, i64 0, i64 0
  %259 = load i16, i16* %arrayidx552, align 2
  %idxprom553 = zext i16 %259 to i64
  %arrayidx554 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom553
  store i32 %256, i32* %arrayidx554, align 4
  %260 = load i16, i16* %stack_n, align 2
  %idxprom555 = zext i16 %260 to i64
  %arrayidx556 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom555
  %prev557 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx556, i32 0, i32 2
  %261 = load i32, i32* %prev557, align 8
  %262 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %263 = load i32, i32* %k, align 4
  %idxprom558 = zext i32 %263 to i64
  %arrayidx559 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %262, i64 %idxprom558
  %mask560 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx559, i32 0, i32 4
  %arrayidx561 = getelementptr inbounds [16 x i16], [16 x i16]* %mask560, i64 0, i64 0
  %264 = load i16, i16* %arrayidx561, align 2
  %idxprom562 = zext i16 %264 to i64
  %arrayidx563 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom562
  store i32 %261, i32* %arrayidx563, align 4
  br label %if.end564

if.end564:                                        ; preds = %if.then545, %if.end532
  %265 = load i32, i32* %k, align 4
  %sub565 = sub i32 %265, 1
  store i32 %sub565, i32* %k, align 4
  br label %if.end566

if.end566:                                        ; preds = %if.end564, %land.lhs.true460, %land.lhs.true455, %if.else452
  br label %if.end567

if.end567:                                        ; preds = %if.end566, %if.end450
  br label %if.end568

if.end568:                                        ; preds = %if.end567, %if.end355
  br label %if.end2638

if.else569:                                       ; preds = %if.else266
  %266 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %267 = load i32, i32* %k, align 4
  %idxprom570 = zext i32 %267 to i64
  %arrayidx571 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %266, i64 %idxprom570
  %kind572 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx571, i32 0, i32 0
  %268 = load i8, i8* %kind572, align 2
  %conv573 = zext i8 %268 to i32
  %cmp574 = icmp eq i32 %conv573, 8
  br i1 %cmp574, label %if.then576, label %if.else879

if.then576:                                       ; preds = %if.else569
  %269 = load i64, i64* %i, align 8
  %cmp577 = icmp eq i64 %269, 0
  br i1 %cmp577, label %land.lhs.true579, label %if.else664

land.lhs.true579:                                 ; preds = %if.then576
  %270 = load i8*, i8** %text.addr, align 8
  %271 = load i64, i64* %i, align 8
  %arrayidx580 = getelementptr inbounds i8, i8* %270, i64 %271
  %272 = load i8, i8* %arrayidx580, align 1
  %conv581 = zext i8 %272 to i32
  %shr582 = ashr i32 %conv581, 4
  %idxprom583 = sext i32 %shr582 to i64
  %arrayidx584 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 %idxprom583
  %273 = load i64, i64* %arrayidx584, align 8
  %274 = load i8*, i8** %text.addr, align 8
  %275 = load i64, i64* %i, align 8
  %arrayidx585 = getelementptr inbounds i8, i8* %274, i64 %275
  %276 = load i8, i8* %arrayidx585, align 1
  %conv586 = zext i8 %276 to i32
  %and587 = and i32 %conv586, 15
  %shl588 = shl i32 1, %and587
  %conv589 = sext i32 %shl588 to i64
  %and590 = and i64 %273, %conv589
  %tobool591 = icmp ne i64 %and590, 0
  br i1 %tobool591, label %if.then592, label %if.else664

if.then592:                                       ; preds = %land.lhs.true579
  %277 = load i16, i16* %stack_n, align 2
  %conv593 = zext i16 %277 to i32
  %cmp594 = icmp eq i32 %conv593, 0
  br i1 %cmp594, label %if.then596, label %if.end597

if.then596:                                       ; preds = %if.then592
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end597:                                        ; preds = %if.then592
  %278 = load i16, i16* %stack_n, align 2
  %conv598 = zext i16 %278 to i32
  %sub599 = sub nsw i32 %conv598, 1
  %conv600 = trunc i32 %sub599 to i16
  store i16 %conv600, i16* %stack_n, align 2
  br label %while.cond601

while.cond601:                                    ; preds = %while.body612, %if.end597
  %279 = load i16, i16* %stack_n, align 2
  %conv602 = zext i16 %279 to i32
  %cmp603 = icmp sgt i32 %conv602, 0
  br i1 %cmp603, label %land.rhs605, label %land.end611

land.rhs605:                                      ; preds = %while.cond601
  %280 = load i16, i16* %stack_n, align 2
  %idxprom606 = zext i16 %280 to i64
  %arrayidx607 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom606
  %prev608 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx607, i32 0, i32 2
  %281 = load i32, i32* %prev608, align 8
  %cmp609 = icmp eq i32 %281, 64199
  br label %land.end611

land.end611:                                      ; preds = %land.rhs605, %while.cond601
  %282 = phi i1 [ false, %while.cond601 ], [ %cmp609, %land.rhs605 ]
  br i1 %282, label %while.body612, label %while.end616

while.body612:                                    ; preds = %land.end611
  %283 = load i16, i16* %stack_n, align 2
  %conv613 = zext i16 %283 to i32
  %sub614 = sub nsw i32 %conv613, 1
  %conv615 = trunc i32 %sub614 to i16
  store i16 %conv615, i16* %stack_n, align 2
  br label %while.cond601, !llvm.loop !27

while.end616:                                     ; preds = %land.end611
  store i8 1, i8* %just_rewinded, align 1
  %284 = load i16, i16* %stack_n, align 2
  %idxprom617 = zext i16 %284 to i64
  %arrayidx618 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom617
  %range_min619 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx618, i32 0, i32 4
  %285 = load i64, i64* %range_min619, align 8
  store i64 %285, i64* %range_min, align 8
  %286 = load i16, i16* %stack_n, align 2
  %idxprom620 = zext i16 %286 to i64
  %arrayidx621 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom620
  %range_max622 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx621, i32 0, i32 5
  %287 = load i64, i64* %range_max622, align 8
  store i64 %287, i64* %range_max, align 8
  %288 = load i16, i16* %stack_n, align 2
  %idxprom623 = zext i16 %288 to i64
  %arrayidx624 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom623
  %i625 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx624, i32 0, i32 3
  %289 = load i64, i64* %i625, align 8
  %290 = load i64, i64* %i, align 8
  %cmp626 = icmp ule i64 %289, %290
  br i1 %cmp626, label %if.then628, label %if.else629

if.then628:                                       ; preds = %while.end616
  br label %if.end630

if.else629:                                       ; preds = %while.end616
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 996, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end630:                                        ; preds = %if.then628
  %291 = load i16, i16* %stack_n, align 2
  %idxprom631 = zext i16 %291 to i64
  %arrayidx632 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom631
  %i633 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx632, i32 0, i32 3
  %292 = load i64, i64* %i633, align 8
  store i64 %292, i64* %i, align 8
  %293 = load i16, i16* %stack_n, align 2
  %idxprom634 = zext i16 %293 to i64
  %arrayidx635 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom634
  %k636 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx635, i32 0, i32 0
  %294 = load i32, i32* %k636, align 8
  store i32 %294, i32* %k, align 4
  %295 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %296 = load i32, i32* %k, align 4
  %idxprom637 = zext i32 %296 to i64
  %arrayidx638 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %295, i64 %idxprom637
  %kind639 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx638, i32 0, i32 0
  %297 = load i8, i8* %kind639, align 2
  %conv640 = zext i8 %297 to i32
  %cmp641 = icmp eq i32 %conv640, 3
  br i1 %cmp641, label %if.then643, label %if.end662

if.then643:                                       ; preds = %if.end630
  %298 = load i16, i16* %stack_n, align 2
  %idxprom644 = zext i16 %298 to i64
  %arrayidx645 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom644
  %group_state646 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx645, i32 0, i32 1
  %299 = load i32, i32* %group_state646, align 4
  %300 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %301 = load i32, i32* %k, align 4
  %idxprom647 = zext i32 %301 to i64
  %arrayidx648 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %300, i64 %idxprom647
  %mask649 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx648, i32 0, i32 4
  %arrayidx650 = getelementptr inbounds [16 x i16], [16 x i16]* %mask649, i64 0, i64 0
  %302 = load i16, i16* %arrayidx650, align 2
  %idxprom651 = zext i16 %302 to i64
  %arrayidx652 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom651
  store i32 %299, i32* %arrayidx652, align 4
  %303 = load i16, i16* %stack_n, align 2
  %idxprom653 = zext i16 %303 to i64
  %arrayidx654 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom653
  %prev655 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx654, i32 0, i32 2
  %304 = load i32, i32* %prev655, align 8
  %305 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %306 = load i32, i32* %k, align 4
  %idxprom656 = zext i32 %306 to i64
  %arrayidx657 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %305, i64 %idxprom656
  %mask658 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx657, i32 0, i32 4
  %arrayidx659 = getelementptr inbounds [16 x i16], [16 x i16]* %mask658, i64 0, i64 0
  %307 = load i16, i16* %arrayidx659, align 2
  %idxprom660 = zext i16 %307 to i64
  %arrayidx661 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom660
  store i32 %304, i32* %arrayidx661, align 4
  br label %if.end662

if.end662:                                        ; preds = %if.then643, %if.end630
  %308 = load i32, i32* %k, align 4
  %sub663 = sub i32 %308, 1
  store i32 %sub663, i32* %k, align 4
  br label %if.end878

if.else664:                                       ; preds = %land.lhs.true579, %if.then576
  %309 = load i64, i64* %i, align 8
  %cmp665 = icmp ne i64 %309, 0
  br i1 %cmp665, label %land.lhs.true667, label %if.else759

land.lhs.true667:                                 ; preds = %if.else664
  %310 = load i8*, i8** %text.addr, align 8
  %311 = load i64, i64* %i, align 8
  %arrayidx668 = getelementptr inbounds i8, i8* %310, i64 %311
  %312 = load i8, i8* %arrayidx668, align 1
  %conv669 = sext i8 %312 to i32
  %cmp670 = icmp eq i32 %conv669, 0
  br i1 %cmp670, label %land.lhs.true672, label %if.else759

land.lhs.true672:                                 ; preds = %land.lhs.true667
  %313 = load i8*, i8** %text.addr, align 8
  %314 = load i64, i64* %i, align 8
  %sub673 = sub i64 %314, 1
  %arrayidx674 = getelementptr inbounds i8, i8* %313, i64 %sub673
  %315 = load i8, i8* %arrayidx674, align 1
  %conv675 = zext i8 %315 to i32
  %shr676 = ashr i32 %conv675, 4
  %idxprom677 = sext i32 %shr676 to i64
  %arrayidx678 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 %idxprom677
  %316 = load i64, i64* %arrayidx678, align 8
  %317 = load i8*, i8** %text.addr, align 8
  %318 = load i64, i64* %i, align 8
  %sub679 = sub i64 %318, 1
  %arrayidx680 = getelementptr inbounds i8, i8* %317, i64 %sub679
  %319 = load i8, i8* %arrayidx680, align 1
  %conv681 = zext i8 %319 to i32
  %and682 = and i32 %conv681, 15
  %shl683 = shl i32 1, %and682
  %conv684 = sext i32 %shl683 to i64
  %and685 = and i64 %316, %conv684
  %tobool686 = icmp ne i64 %and685, 0
  br i1 %tobool686, label %if.then687, label %if.else759

if.then687:                                       ; preds = %land.lhs.true672
  %320 = load i16, i16* %stack_n, align 2
  %conv688 = zext i16 %320 to i32
  %cmp689 = icmp eq i32 %conv688, 0
  br i1 %cmp689, label %if.then691, label %if.end692

if.then691:                                       ; preds = %if.then687
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end692:                                        ; preds = %if.then687
  %321 = load i16, i16* %stack_n, align 2
  %conv693 = zext i16 %321 to i32
  %sub694 = sub nsw i32 %conv693, 1
  %conv695 = trunc i32 %sub694 to i16
  store i16 %conv695, i16* %stack_n, align 2
  br label %while.cond696

while.cond696:                                    ; preds = %while.body707, %if.end692
  %322 = load i16, i16* %stack_n, align 2
  %conv697 = zext i16 %322 to i32
  %cmp698 = icmp sgt i32 %conv697, 0
  br i1 %cmp698, label %land.rhs700, label %land.end706

land.rhs700:                                      ; preds = %while.cond696
  %323 = load i16, i16* %stack_n, align 2
  %idxprom701 = zext i16 %323 to i64
  %arrayidx702 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom701
  %prev703 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx702, i32 0, i32 2
  %324 = load i32, i32* %prev703, align 8
  %cmp704 = icmp eq i32 %324, 64199
  br label %land.end706

land.end706:                                      ; preds = %land.rhs700, %while.cond696
  %325 = phi i1 [ false, %while.cond696 ], [ %cmp704, %land.rhs700 ]
  br i1 %325, label %while.body707, label %while.end711

while.body707:                                    ; preds = %land.end706
  %326 = load i16, i16* %stack_n, align 2
  %conv708 = zext i16 %326 to i32
  %sub709 = sub nsw i32 %conv708, 1
  %conv710 = trunc i32 %sub709 to i16
  store i16 %conv710, i16* %stack_n, align 2
  br label %while.cond696, !llvm.loop !28

while.end711:                                     ; preds = %land.end706
  store i8 1, i8* %just_rewinded, align 1
  %327 = load i16, i16* %stack_n, align 2
  %idxprom712 = zext i16 %327 to i64
  %arrayidx713 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom712
  %range_min714 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx713, i32 0, i32 4
  %328 = load i64, i64* %range_min714, align 8
  store i64 %328, i64* %range_min, align 8
  %329 = load i16, i16* %stack_n, align 2
  %idxprom715 = zext i16 %329 to i64
  %arrayidx716 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom715
  %range_max717 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx716, i32 0, i32 5
  %330 = load i64, i64* %range_max717, align 8
  store i64 %330, i64* %range_max, align 8
  %331 = load i16, i16* %stack_n, align 2
  %idxprom718 = zext i16 %331 to i64
  %arrayidx719 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom718
  %i720 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx719, i32 0, i32 3
  %332 = load i64, i64* %i720, align 8
  %333 = load i64, i64* %i, align 8
  %cmp721 = icmp ule i64 %332, %333
  br i1 %cmp721, label %if.then723, label %if.else724

if.then723:                                       ; preds = %while.end711
  br label %if.end725

if.else724:                                       ; preds = %while.end711
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 998, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end725:                                        ; preds = %if.then723
  %334 = load i16, i16* %stack_n, align 2
  %idxprom726 = zext i16 %334 to i64
  %arrayidx727 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom726
  %i728 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx727, i32 0, i32 3
  %335 = load i64, i64* %i728, align 8
  store i64 %335, i64* %i, align 8
  %336 = load i16, i16* %stack_n, align 2
  %idxprom729 = zext i16 %336 to i64
  %arrayidx730 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom729
  %k731 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx730, i32 0, i32 0
  %337 = load i32, i32* %k731, align 8
  store i32 %337, i32* %k, align 4
  %338 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %339 = load i32, i32* %k, align 4
  %idxprom732 = zext i32 %339 to i64
  %arrayidx733 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %338, i64 %idxprom732
  %kind734 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx733, i32 0, i32 0
  %340 = load i8, i8* %kind734, align 2
  %conv735 = zext i8 %340 to i32
  %cmp736 = icmp eq i32 %conv735, 3
  br i1 %cmp736, label %if.then738, label %if.end757

if.then738:                                       ; preds = %if.end725
  %341 = load i16, i16* %stack_n, align 2
  %idxprom739 = zext i16 %341 to i64
  %arrayidx740 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom739
  %group_state741 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx740, i32 0, i32 1
  %342 = load i32, i32* %group_state741, align 4
  %343 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %344 = load i32, i32* %k, align 4
  %idxprom742 = zext i32 %344 to i64
  %arrayidx743 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %343, i64 %idxprom742
  %mask744 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx743, i32 0, i32 4
  %arrayidx745 = getelementptr inbounds [16 x i16], [16 x i16]* %mask744, i64 0, i64 0
  %345 = load i16, i16* %arrayidx745, align 2
  %idxprom746 = zext i16 %345 to i64
  %arrayidx747 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom746
  store i32 %342, i32* %arrayidx747, align 4
  %346 = load i16, i16* %stack_n, align 2
  %idxprom748 = zext i16 %346 to i64
  %arrayidx749 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom748
  %prev750 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx749, i32 0, i32 2
  %347 = load i32, i32* %prev750, align 8
  %348 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %349 = load i32, i32* %k, align 4
  %idxprom751 = zext i32 %349 to i64
  %arrayidx752 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %348, i64 %idxprom751
  %mask753 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx752, i32 0, i32 4
  %arrayidx754 = getelementptr inbounds [16 x i16], [16 x i16]* %mask753, i64 0, i64 0
  %350 = load i16, i16* %arrayidx754, align 2
  %idxprom755 = zext i16 %350 to i64
  %arrayidx756 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom755
  store i32 %347, i32* %arrayidx756, align 4
  br label %if.end757

if.end757:                                        ; preds = %if.then738, %if.end725
  %351 = load i32, i32* %k, align 4
  %sub758 = sub i32 %351, 1
  store i32 %sub758, i32* %k, align 4
  br label %if.end877

if.else759:                                       ; preds = %land.lhs.true672, %land.lhs.true667, %if.else664
  %352 = load i64, i64* %i, align 8
  %cmp760 = icmp ne i64 %352, 0
  br i1 %cmp760, label %land.lhs.true762, label %if.end876

land.lhs.true762:                                 ; preds = %if.else759
  %353 = load i8*, i8** %text.addr, align 8
  %354 = load i64, i64* %i, align 8
  %arrayidx763 = getelementptr inbounds i8, i8* %353, i64 %354
  %355 = load i8, i8* %arrayidx763, align 1
  %conv764 = sext i8 %355 to i32
  %cmp765 = icmp ne i32 %conv764, 0
  br i1 %cmp765, label %land.lhs.true767, label %if.end876

land.lhs.true767:                                 ; preds = %land.lhs.true762
  %356 = load i8*, i8** %text.addr, align 8
  %357 = load i64, i64* %i, align 8
  %sub768 = sub i64 %357, 1
  %arrayidx769 = getelementptr inbounds i8, i8* %356, i64 %sub768
  %358 = load i8, i8* %arrayidx769, align 1
  %conv770 = zext i8 %358 to i32
  %shr771 = ashr i32 %conv770, 4
  %idxprom772 = sext i32 %shr771 to i64
  %arrayidx773 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 %idxprom772
  %359 = load i64, i64* %arrayidx773, align 8
  %360 = load i8*, i8** %text.addr, align 8
  %361 = load i64, i64* %i, align 8
  %sub774 = sub i64 %361, 1
  %arrayidx775 = getelementptr inbounds i8, i8* %360, i64 %sub774
  %362 = load i8, i8* %arrayidx775, align 1
  %conv776 = zext i8 %362 to i32
  %and777 = and i32 %conv776, 15
  %shl778 = shl i32 1, %and777
  %conv779 = sext i32 %shl778 to i64
  %and780 = and i64 %359, %conv779
  %tobool781 = icmp ne i64 %and780, 0
  %lnot782 = xor i1 %tobool781, true
  %lnot784 = xor i1 %lnot782, true
  %lnot.ext785 = zext i1 %lnot784 to i32
  %363 = load i8*, i8** %text.addr, align 8
  %364 = load i64, i64* %i, align 8
  %arrayidx786 = getelementptr inbounds i8, i8* %363, i64 %364
  %365 = load i8, i8* %arrayidx786, align 1
  %conv787 = zext i8 %365 to i32
  %shr788 = ashr i32 %conv787, 4
  %idxprom789 = sext i32 %shr788 to i64
  %arrayidx790 = getelementptr inbounds [16 x i64], [16 x i64]* %w_mask, i64 0, i64 %idxprom789
  %366 = load i64, i64* %arrayidx790, align 8
  %367 = load i8*, i8** %text.addr, align 8
  %368 = load i64, i64* %i, align 8
  %arrayidx791 = getelementptr inbounds i8, i8* %367, i64 %368
  %369 = load i8, i8* %arrayidx791, align 1
  %conv792 = zext i8 %369 to i32
  %and793 = and i32 %conv792, 15
  %shl794 = shl i32 1, %and793
  %conv795 = sext i32 %shl794 to i64
  %and796 = and i64 %366, %conv795
  %tobool797 = icmp ne i64 %and796, 0
  %lnot798 = xor i1 %tobool797, true
  %lnot800 = xor i1 %lnot798, true
  %lnot.ext801 = zext i1 %lnot800 to i32
  %cmp802 = icmp ne i32 %lnot.ext785, %lnot.ext801
  br i1 %cmp802, label %if.then804, label %if.end876

if.then804:                                       ; preds = %land.lhs.true767
  %370 = load i16, i16* %stack_n, align 2
  %conv805 = zext i16 %370 to i32
  %cmp806 = icmp eq i32 %conv805, 0
  br i1 %cmp806, label %if.then808, label %if.end809

if.then808:                                       ; preds = %if.then804
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end809:                                        ; preds = %if.then804
  %371 = load i16, i16* %stack_n, align 2
  %conv810 = zext i16 %371 to i32
  %sub811 = sub nsw i32 %conv810, 1
  %conv812 = trunc i32 %sub811 to i16
  store i16 %conv812, i16* %stack_n, align 2
  br label %while.cond813

while.cond813:                                    ; preds = %while.body824, %if.end809
  %372 = load i16, i16* %stack_n, align 2
  %conv814 = zext i16 %372 to i32
  %cmp815 = icmp sgt i32 %conv814, 0
  br i1 %cmp815, label %land.rhs817, label %land.end823

land.rhs817:                                      ; preds = %while.cond813
  %373 = load i16, i16* %stack_n, align 2
  %idxprom818 = zext i16 %373 to i64
  %arrayidx819 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom818
  %prev820 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx819, i32 0, i32 2
  %374 = load i32, i32* %prev820, align 8
  %cmp821 = icmp eq i32 %374, 64199
  br label %land.end823

land.end823:                                      ; preds = %land.rhs817, %while.cond813
  %375 = phi i1 [ false, %while.cond813 ], [ %cmp821, %land.rhs817 ]
  br i1 %375, label %while.body824, label %while.end828

while.body824:                                    ; preds = %land.end823
  %376 = load i16, i16* %stack_n, align 2
  %conv825 = zext i16 %376 to i32
  %sub826 = sub nsw i32 %conv825, 1
  %conv827 = trunc i32 %sub826 to i16
  store i16 %conv827, i16* %stack_n, align 2
  br label %while.cond813, !llvm.loop !29

while.end828:                                     ; preds = %land.end823
  store i8 1, i8* %just_rewinded, align 1
  %377 = load i16, i16* %stack_n, align 2
  %idxprom829 = zext i16 %377 to i64
  %arrayidx830 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom829
  %range_min831 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx830, i32 0, i32 4
  %378 = load i64, i64* %range_min831, align 8
  store i64 %378, i64* %range_min, align 8
  %379 = load i16, i16* %stack_n, align 2
  %idxprom832 = zext i16 %379 to i64
  %arrayidx833 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom832
  %range_max834 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx833, i32 0, i32 5
  %380 = load i64, i64* %range_max834, align 8
  store i64 %380, i64* %range_max, align 8
  %381 = load i16, i16* %stack_n, align 2
  %idxprom835 = zext i16 %381 to i64
  %arrayidx836 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom835
  %i837 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx836, i32 0, i32 3
  %382 = load i64, i64* %i837, align 8
  %383 = load i64, i64* %i, align 8
  %cmp838 = icmp ule i64 %382, %383
  br i1 %cmp838, label %if.then840, label %if.else841

if.then840:                                       ; preds = %while.end828
  br label %if.end842

if.else841:                                       ; preds = %while.end828
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1000, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end842:                                        ; preds = %if.then840
  %384 = load i16, i16* %stack_n, align 2
  %idxprom843 = zext i16 %384 to i64
  %arrayidx844 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom843
  %i845 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx844, i32 0, i32 3
  %385 = load i64, i64* %i845, align 8
  store i64 %385, i64* %i, align 8
  %386 = load i16, i16* %stack_n, align 2
  %idxprom846 = zext i16 %386 to i64
  %arrayidx847 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom846
  %k848 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx847, i32 0, i32 0
  %387 = load i32, i32* %k848, align 8
  store i32 %387, i32* %k, align 4
  %388 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %389 = load i32, i32* %k, align 4
  %idxprom849 = zext i32 %389 to i64
  %arrayidx850 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %388, i64 %idxprom849
  %kind851 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx850, i32 0, i32 0
  %390 = load i8, i8* %kind851, align 2
  %conv852 = zext i8 %390 to i32
  %cmp853 = icmp eq i32 %conv852, 3
  br i1 %cmp853, label %if.then855, label %if.end874

if.then855:                                       ; preds = %if.end842
  %391 = load i16, i16* %stack_n, align 2
  %idxprom856 = zext i16 %391 to i64
  %arrayidx857 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom856
  %group_state858 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx857, i32 0, i32 1
  %392 = load i32, i32* %group_state858, align 4
  %393 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %394 = load i32, i32* %k, align 4
  %idxprom859 = zext i32 %394 to i64
  %arrayidx860 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %393, i64 %idxprom859
  %mask861 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx860, i32 0, i32 4
  %arrayidx862 = getelementptr inbounds [16 x i16], [16 x i16]* %mask861, i64 0, i64 0
  %395 = load i16, i16* %arrayidx862, align 2
  %idxprom863 = zext i16 %395 to i64
  %arrayidx864 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom863
  store i32 %392, i32* %arrayidx864, align 4
  %396 = load i16, i16* %stack_n, align 2
  %idxprom865 = zext i16 %396 to i64
  %arrayidx866 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom865
  %prev867 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx866, i32 0, i32 2
  %397 = load i32, i32* %prev867, align 8
  %398 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %399 = load i32, i32* %k, align 4
  %idxprom868 = zext i32 %399 to i64
  %arrayidx869 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %398, i64 %idxprom868
  %mask870 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx869, i32 0, i32 4
  %arrayidx871 = getelementptr inbounds [16 x i16], [16 x i16]* %mask870, i64 0, i64 0
  %400 = load i16, i16* %arrayidx871, align 2
  %idxprom872 = zext i16 %400 to i64
  %arrayidx873 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom872
  store i32 %397, i32* %arrayidx873, align 4
  br label %if.end874

if.end874:                                        ; preds = %if.then855, %if.end842
  %401 = load i32, i32* %k, align 4
  %sub875 = sub i32 %401, 1
  store i32 %sub875, i32* %k, align 4
  br label %if.end876

if.end876:                                        ; preds = %if.end874, %land.lhs.true767, %land.lhs.true762, %if.else759
  br label %if.end877

if.end877:                                        ; preds = %if.end876, %if.end757
  br label %if.end878

if.end878:                                        ; preds = %if.end877, %if.end662
  br label %if.end2637

if.else879:                                       ; preds = %if.else569
  %402 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %403 = load i32, i32* %k, align 4
  %idxprom880 = zext i32 %403 to i64
  %arrayidx881 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %402, i64 %idxprom880
  %count_hi = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx881, i32 0, i32 3
  %404 = load i16, i16* %count_hi, align 2
  %conv882 = zext i16 %404 to i32
  %cmp883 = icmp eq i32 %conv882, 1
  br i1 %cmp883, label %if.then885, label %if.end908

if.then885:                                       ; preds = %if.else879
  %405 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %406 = load i32, i32* %k, align 4
  %idxprom886 = zext i32 %406 to i64
  %arrayidx887 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %405, i64 %idxprom886
  %kind888 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx887, i32 0, i32 0
  %407 = load i8, i8* %kind888, align 2
  %conv889 = zext i8 %407 to i32
  %cmp890 = icmp eq i32 %conv889, 1
  br i1 %cmp890, label %if.then899, label %lor.lhs.false892

lor.lhs.false892:                                 ; preds = %if.then885
  %408 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %409 = load i32, i32* %k, align 4
  %idxprom893 = zext i32 %409 to i64
  %arrayidx894 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %408, i64 %idxprom893
  %kind895 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx894, i32 0, i32 0
  %410 = load i8, i8* %kind895, align 2
  %conv896 = zext i8 %410 to i32
  %cmp897 = icmp eq i32 %conv896, 2
  br i1 %cmp897, label %if.then899, label %if.else905

if.then899:                                       ; preds = %lor.lhs.false892, %if.then885
  %411 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %412 = load i32, i32* %k, align 4
  %idxprom900 = zext i32 %412 to i64
  %arrayidx901 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %411, i64 %idxprom900
  %pair_offset902 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx901, i32 0, i32 5
  %413 = load i16, i16* %pair_offset902, align 2
  %conv903 = sext i16 %413 to i32
  %414 = load i32, i32* %k, align 4
  %add904 = add i32 %414, %conv903
  store i32 %add904, i32* %k, align 4
  br label %if.end907

if.else905:                                       ; preds = %lor.lhs.false892
  %415 = load i32, i32* %k, align 4
  %add906 = add i32 %415, 1
  store i32 %add906, i32* %k, align 4
  br label %if.end907

if.end907:                                        ; preds = %if.else905, %if.then899
  br label %for.inc

if.end908:                                        ; preds = %if.else879
  %416 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %417 = load i32, i32* %k, align 4
  %idxprom909 = zext i32 %417 to i64
  %arrayidx910 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %416, i64 %idxprom909
  %kind911 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx910, i32 0, i32 0
  %418 = load i8, i8* %kind911, align 2
  %conv912 = zext i8 %418 to i32
  %cmp913 = icmp eq i32 %conv912, 1
  br i1 %cmp913, label %if.then922, label %lor.lhs.false915

lor.lhs.false915:                                 ; preds = %if.end908
  %419 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %420 = load i32, i32* %k, align 4
  %idxprom916 = zext i32 %420 to i64
  %arrayidx917 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %419, i64 %idxprom916
  %kind918 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx917, i32 0, i32 0
  %421 = load i8, i8* %kind918, align 2
  %conv919 = zext i8 %421 to i32
  %cmp920 = icmp eq i32 %conv919, 2
  br i1 %cmp920, label %if.then922, label %if.else1291

if.then922:                                       ; preds = %lor.lhs.false915, %if.end908
  %422 = load i8, i8* %just_rewinded, align 1
  %tobool923 = icmp ne i8 %422, 0
  br i1 %tobool923, label %if.else1052, label %if.then924

if.then924:                                       ; preds = %if.then922
  %423 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %424 = load i32, i32* %k, align 4
  %idxprom925 = zext i32 %424 to i64
  %arrayidx926 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %423, i64 %idxprom925
  %mode = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx926, i32 0, i32 1
  %425 = load i8, i8* %mode, align 1
  %conv927 = zext i8 %425 to i32
  %and928 = and i32 %conv927, 2
  %tobool929 = icmp ne i32 %and928, 0
  br i1 %tobool929, label %land.lhs.true930, label %if.else1002

land.lhs.true930:                                 ; preds = %if.then924
  %426 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %427 = load i32, i32* %k, align 4
  %idxprom931 = zext i32 %427 to i64
  %arrayidx932 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %426, i64 %idxprom931
  %count_lo = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx932, i32 0, i32 2
  %428 = load i16, i16* %count_lo, align 2
  %conv933 = zext i16 %428 to i32
  %cmp934 = icmp eq i32 %conv933, 0
  br i1 %cmp934, label %if.then950, label %lor.lhs.false936

lor.lhs.false936:                                 ; preds = %land.lhs.true930
  %429 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %430 = load i32, i32* %k, align 4
  %431 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %432 = load i32, i32* %k, align 4
  %idxprom937 = zext i32 %432 to i64
  %arrayidx938 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %431, i64 %idxprom937
  %pair_offset939 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx938, i32 0, i32 5
  %433 = load i16, i16* %pair_offset939, align 2
  %conv940 = sext i16 %433 to i32
  %add941 = add i32 %430, %conv940
  %idxprom942 = zext i32 %add941 to i64
  %arrayidx943 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %429, i64 %idxprom942
  %mask944 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx943, i32 0, i32 4
  %arrayidx945 = getelementptr inbounds [16 x i16], [16 x i16]* %mask944, i64 0, i64 0
  %434 = load i16, i16* %arrayidx945, align 2
  %idxprom946 = zext i16 %434 to i64
  %arrayidx947 = getelementptr inbounds i8, i8* %vla, i64 %idxprom946
  %435 = load i8, i8* %arrayidx947, align 1
  %conv948 = zext i8 %435 to i32
  %tobool949 = icmp ne i32 %conv948, 0
  br i1 %tobool949, label %if.then950, label %if.else1002

if.then950:                                       ; preds = %lor.lhs.false936, %land.lhs.true930
  store i64 0, i64* %range_min, align 8
  store i64 0, i64* %range_max, align 8
  %436 = load i16, i16* %stack_n, align 2
  %conv951 = zext i16 %436 to i32
  %cmp952 = icmp sge i32 %conv951, 1024
  br i1 %cmp952, label %if.then954, label %if.end956

if.then954:                                       ; preds = %if.then950
  %call955 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end956:                                        ; preds = %if.then950
  %437 = bitcast %struct._RegexMatcherState* %s to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %437, i8 0, i64 40, i1 false)
  %438 = load i64, i64* %i, align 8
  %i957 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 3
  store i64 %438, i64* %i957, align 8
  %439 = load i32, i32* %k, align 4
  %k958 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 0
  store i32 %439, i32* %k958, align 8
  %440 = load i64, i64* %range_min, align 8
  %range_min959 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 4
  store i64 %440, i64* %range_min959, align 8
  %441 = load i64, i64* %range_max, align 8
  %range_max960 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 5
  store i64 %441, i64* %range_max960, align 8
  %prev961 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 2
  store i32 0, i32* %prev961, align 8
  %442 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k962 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 0
  %443 = load i32, i32* %k962, align 8
  %idxprom963 = zext i32 %443 to i64
  %arrayidx964 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %442, i64 %idxprom963
  %kind965 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx964, i32 0, i32 0
  %444 = load i8, i8* %kind965, align 2
  %conv966 = zext i8 %444 to i32
  %cmp967 = icmp eq i32 %conv966, 3
  br i1 %cmp967, label %if.then969, label %if.end994

if.then969:                                       ; preds = %if.end956
  %445 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k970 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 0
  %446 = load i32, i32* %k970, align 8
  %idxprom971 = zext i32 %446 to i64
  %arrayidx972 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %445, i64 %idxprom971
  %mask973 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx972, i32 0, i32 4
  %arrayidx974 = getelementptr inbounds [16 x i16], [16 x i16]* %mask973, i64 0, i64 0
  %447 = load i16, i16* %arrayidx974, align 2
  %idxprom975 = zext i16 %447 to i64
  %arrayidx976 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom975
  %448 = load i32, i32* %arrayidx976, align 4
  %group_state977 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 1
  store i32 %448, i32* %group_state977, align 4
  %449 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k978 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 0
  %450 = load i32, i32* %k978, align 8
  %idxprom979 = zext i32 %450 to i64
  %arrayidx980 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %449, i64 %idxprom979
  %mask981 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx980, i32 0, i32 4
  %arrayidx982 = getelementptr inbounds [16 x i16], [16 x i16]* %mask981, i64 0, i64 0
  %451 = load i16, i16* %arrayidx982, align 2
  %idxprom983 = zext i16 %451 to i64
  %arrayidx984 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom983
  %452 = load i32, i32* %arrayidx984, align 4
  %prev985 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 2
  store i32 %452, i32* %prev985, align 8
  %453 = load i16, i16* %stack_n, align 2
  %conv986 = zext i16 %453 to i32
  %454 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k987 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s, i32 0, i32 0
  %455 = load i32, i32* %k987, align 8
  %idxprom988 = zext i32 %455 to i64
  %arrayidx989 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %454, i64 %idxprom988
  %mask990 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx989, i32 0, i32 4
  %arrayidx991 = getelementptr inbounds [16 x i16], [16 x i16]* %mask990, i64 0, i64 0
  %456 = load i16, i16* %arrayidx991, align 2
  %idxprom992 = zext i16 %456 to i64
  %arrayidx993 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom992
  store i32 %conv986, i32* %arrayidx993, align 4
  br label %if.end994

if.end994:                                        ; preds = %if.then969, %if.end956
  %457 = load i16, i16* %stack_n, align 2
  %inc = add i16 %457, 1
  store i16 %inc, i16* %stack_n, align 2
  %idxprom995 = zext i16 %457 to i64
  %arrayidx996 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom995
  %458 = bitcast %struct._RegexMatcherState* %arrayidx996 to i8*
  %459 = bitcast %struct._RegexMatcherState* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %458, i8* align 8 %459, i64 40, i1 false)
  %460 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %461 = load i32, i32* %k, align 4
  %idxprom997 = zext i32 %461 to i64
  %arrayidx998 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %460, i64 %idxprom997
  %pair_offset999 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx998, i32 0, i32 5
  %462 = load i16, i16* %pair_offset999, align 2
  %conv1000 = sext i16 %462 to i32
  %463 = load i32, i32* %k, align 4
  %add1001 = add i32 %463, %conv1000
  store i32 %add1001, i32* %k, align 4
  br label %if.end1051

if.else1002:                                      ; preds = %lor.lhs.false936, %if.then924
  store i64 1, i64* %range_min, align 8
  store i64 0, i64* %range_max, align 8
  %464 = load i16, i16* %stack_n, align 2
  %conv1003 = zext i16 %464 to i32
  %cmp1004 = icmp sge i32 %conv1003, 1024
  br i1 %cmp1004, label %if.then1006, label %if.end1008

if.then1006:                                      ; preds = %if.else1002
  %call1007 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1008:                                       ; preds = %if.else1002
  %465 = bitcast %struct._RegexMatcherState* %s1009 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %465, i8 0, i64 40, i1 false)
  %466 = load i64, i64* %i, align 8
  %i1010 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 3
  store i64 %466, i64* %i1010, align 8
  %467 = load i32, i32* %k, align 4
  %k1011 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 0
  store i32 %467, i32* %k1011, align 8
  %468 = load i64, i64* %range_min, align 8
  %range_min1012 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 4
  store i64 %468, i64* %range_min1012, align 8
  %469 = load i64, i64* %range_max, align 8
  %range_max1013 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 5
  store i64 %469, i64* %range_max1013, align 8
  %prev1014 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 2
  store i32 0, i32* %prev1014, align 8
  %470 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1015 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 0
  %471 = load i32, i32* %k1015, align 8
  %idxprom1016 = zext i32 %471 to i64
  %arrayidx1017 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %470, i64 %idxprom1016
  %kind1018 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1017, i32 0, i32 0
  %472 = load i8, i8* %kind1018, align 2
  %conv1019 = zext i8 %472 to i32
  %cmp1020 = icmp eq i32 %conv1019, 3
  br i1 %cmp1020, label %if.then1022, label %if.end1047

if.then1022:                                      ; preds = %if.end1008
  %473 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1023 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 0
  %474 = load i32, i32* %k1023, align 8
  %idxprom1024 = zext i32 %474 to i64
  %arrayidx1025 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %473, i64 %idxprom1024
  %mask1026 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1025, i32 0, i32 4
  %arrayidx1027 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1026, i64 0, i64 0
  %475 = load i16, i16* %arrayidx1027, align 2
  %idxprom1028 = zext i16 %475 to i64
  %arrayidx1029 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1028
  %476 = load i32, i32* %arrayidx1029, align 4
  %group_state1030 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 1
  store i32 %476, i32* %group_state1030, align 4
  %477 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1031 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 0
  %478 = load i32, i32* %k1031, align 8
  %idxprom1032 = zext i32 %478 to i64
  %arrayidx1033 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %477, i64 %idxprom1032
  %mask1034 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1033, i32 0, i32 4
  %arrayidx1035 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1034, i64 0, i64 0
  %479 = load i16, i16* %arrayidx1035, align 2
  %idxprom1036 = zext i16 %479 to i64
  %arrayidx1037 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1036
  %480 = load i32, i32* %arrayidx1037, align 4
  %prev1038 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 2
  store i32 %480, i32* %prev1038, align 8
  %481 = load i16, i16* %stack_n, align 2
  %conv1039 = zext i16 %481 to i32
  %482 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1040 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1009, i32 0, i32 0
  %483 = load i32, i32* %k1040, align 8
  %idxprom1041 = zext i32 %483 to i64
  %arrayidx1042 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %482, i64 %idxprom1041
  %mask1043 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1042, i32 0, i32 4
  %arrayidx1044 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1043, i64 0, i64 0
  %484 = load i16, i16* %arrayidx1044, align 2
  %idxprom1045 = zext i16 %484 to i64
  %arrayidx1046 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1045
  store i32 %conv1039, i32* %arrayidx1046, align 4
  br label %if.end1047

if.end1047:                                       ; preds = %if.then1022, %if.end1008
  %485 = load i16, i16* %stack_n, align 2
  %inc1048 = add i16 %485, 1
  store i16 %inc1048, i16* %stack_n, align 2
  %idxprom1049 = zext i16 %485 to i64
  %arrayidx1050 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1049
  %486 = bitcast %struct._RegexMatcherState* %arrayidx1050 to i8*
  %487 = bitcast %struct._RegexMatcherState* %s1009 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %486, i8* align 8 %487, i64 40, i1 false)
  br label %if.end1051

if.end1051:                                       ; preds = %if.end1047, %if.end994
  br label %if.end1290

if.else1052:                                      ; preds = %if.then922
  store i8 0, i8* %just_rewinded, align 1
  %488 = load i32, i32* %k, align 4
  %conv1053 = zext i32 %488 to i64
  store i64 %conv1053, i64* %orig_k, align 8
  %489 = load i64, i64* %range_min, align 8
  %cmp1054 = icmp ne i64 %489, 0
  br i1 %cmp1054, label %if.then1056, label %if.end1235

if.then1056:                                      ; preds = %if.else1052
  %490 = load i64, i64* %range_min, align 8
  %491 = load i32, i32* %k, align 4
  %conv1057 = zext i32 %491 to i64
  %add1058 = add i64 %conv1057, %490
  %conv1059 = trunc i64 %add1058 to i32
  store i32 %conv1059, i32* %k, align 4
  %492 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %493 = load i32, i32* %k, align 4
  %sub1060 = sub i32 %493, 1
  %idxprom1061 = zext i32 %sub1060 to i64
  %arrayidx1062 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %492, i64 %idxprom1061
  %kind1063 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1062, i32 0, i32 0
  %494 = load i8, i8* %kind1063, align 2
  %conv1064 = zext i8 %494 to i32
  %cmp1065 = icmp eq i32 %conv1064, 4
  br i1 %cmp1065, label %if.then1067, label %if.else1075

if.then1067:                                      ; preds = %if.then1056
  %495 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %496 = load i32, i32* %k, align 4
  %sub1068 = sub i32 %496, 1
  %idxprom1069 = zext i32 %sub1068 to i64
  %arrayidx1070 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %495, i64 %idxprom1069
  %pair_offset1071 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1070, i32 0, i32 5
  %497 = load i16, i16* %pair_offset1071, align 2
  %conv1072 = sext i16 %497 to i32
  %sub1073 = sub nsw i32 %conv1072, 1
  %498 = load i32, i32* %k, align 4
  %add1074 = add i32 %498, %sub1073
  store i32 %add1074, i32* %k, align 4
  br label %if.end1101

if.else1075:                                      ; preds = %if.then1056
  %499 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %500 = load i32, i32* %k, align 4
  %sub1076 = sub i32 %500, 1
  %idxprom1077 = zext i32 %sub1076 to i64
  %arrayidx1078 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %499, i64 %idxprom1077
  %kind1079 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1078, i32 0, i32 0
  %501 = load i8, i8* %kind1079, align 2
  %conv1080 = zext i8 %501 to i32
  %cmp1081 = icmp eq i32 %conv1080, 1
  br i1 %cmp1081, label %if.then1091, label %lor.lhs.false1083

lor.lhs.false1083:                                ; preds = %if.else1075
  %502 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %503 = load i32, i32* %k, align 4
  %sub1084 = sub i32 %503, 1
  %idxprom1085 = zext i32 %sub1084 to i64
  %arrayidx1086 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %502, i64 %idxprom1085
  %kind1087 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1086, i32 0, i32 0
  %504 = load i8, i8* %kind1087, align 2
  %conv1088 = zext i8 %504 to i32
  %cmp1089 = icmp eq i32 %conv1088, 2
  br i1 %cmp1089, label %if.then1091, label %if.end1100

if.then1091:                                      ; preds = %lor.lhs.false1083, %if.else1075
  %505 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %506 = load i32, i32* %k, align 4
  %sub1092 = sub i32 %506, 1
  %idxprom1093 = zext i32 %sub1092 to i64
  %arrayidx1094 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %505, i64 %idxprom1093
  %mask1095 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1094, i32 0, i32 4
  %arrayidx1096 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1095, i64 0, i64 15
  %507 = load i16, i16* %arrayidx1096, align 2
  %conv1097 = zext i16 %507 to i32
  %sub1098 = sub nsw i32 %conv1097, 1
  %508 = load i32, i32* %k, align 4
  %add1099 = add i32 %508, %sub1098
  store i32 %add1099, i32* %k, align 4
  br label %if.end1100

if.end1100:                                       ; preds = %if.then1091, %lor.lhs.false1083
  br label %if.end1101

if.end1101:                                       ; preds = %if.end1100, %if.then1067
  %509 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %510 = load i32, i32* %k, align 4
  %idxprom1102 = zext i32 %510 to i64
  %arrayidx1103 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %509, i64 %idxprom1102
  %kind1104 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1103, i32 0, i32 0
  %511 = load i8, i8* %kind1104, align 2
  %conv1105 = zext i8 %511 to i32
  %cmp1106 = icmp eq i32 %conv1105, 9
  br i1 %cmp1106, label %if.then1108, label %if.end1109

if.then1108:                                      ; preds = %if.end1101
  store i64 -3, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1109:                                       ; preds = %if.end1101
  %512 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %513 = load i32, i32* %k, align 4
  %idxprom1110 = zext i32 %513 to i64
  %arrayidx1111 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %512, i64 %idxprom1110
  %kind1112 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1111, i32 0, i32 0
  %514 = load i8, i8* %kind1112, align 2
  %conv1113 = zext i8 %514 to i32
  %cmp1114 = icmp eq i32 %conv1113, 3
  br i1 %cmp1114, label %if.then1116, label %if.end1225

if.then1116:                                      ; preds = %if.end1109
  %515 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %516 = load i32, i32* %k, align 4
  %idxprom1117 = zext i32 %516 to i64
  %arrayidx1118 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %515, i64 %idxprom1117
  %count_lo1119 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1118, i32 0, i32 2
  %517 = load i16, i16* %count_lo1119, align 2
  %conv1120 = zext i16 %517 to i32
  %cmp1121 = icmp eq i32 %conv1120, 0
  br i1 %cmp1121, label %if.then1132, label %lor.lhs.false1123

lor.lhs.false1123:                                ; preds = %if.then1116
  %518 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %519 = load i32, i32* %k, align 4
  %idxprom1124 = zext i32 %519 to i64
  %arrayidx1125 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %518, i64 %idxprom1124
  %mask1126 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1125, i32 0, i32 4
  %arrayidx1127 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1126, i64 0, i64 0
  %520 = load i16, i16* %arrayidx1127, align 2
  %idxprom1128 = zext i16 %520 to i64
  %arrayidx1129 = getelementptr inbounds i8, i8* %vla, i64 %idxprom1128
  %521 = load i8, i8* %arrayidx1129, align 1
  %conv1130 = zext i8 %521 to i32
  %tobool1131 = icmp ne i32 %conv1130, 0
  br i1 %tobool1131, label %if.then1132, label %if.else1153

if.then1132:                                      ; preds = %lor.lhs.false1123, %if.then1116
  %522 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %523 = load i32, i32* %k, align 4
  %idxprom1133 = zext i32 %523 to i64
  %arrayidx1134 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %522, i64 %idxprom1133
  %mask1135 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1134, i32 0, i32 4
  %arrayidx1136 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1135, i64 0, i64 0
  %524 = load i16, i16* %arrayidx1136, align 2
  %idxprom1137 = zext i16 %524 to i64
  %arrayidx1138 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1137
  store i32 0, i32* %arrayidx1138, align 4
  %525 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %526 = load i32, i32* %k, align 4
  %idxprom1139 = zext i32 %526 to i64
  %arrayidx1140 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %525, i64 %idxprom1139
  %mode1141 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1140, i32 0, i32 1
  %527 = load i8, i8* %mode1141, align 1
  %conv1142 = zext i8 %527 to i32
  %and1143 = and i32 %conv1142, 2
  %tobool1144 = icmp ne i32 %and1143, 0
  br i1 %tobool1144, label %if.end1152, label %if.then1145

if.then1145:                                      ; preds = %if.then1132
  %528 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %529 = load i32, i32* %k, align 4
  %idxprom1146 = zext i32 %529 to i64
  %arrayidx1147 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %528, i64 %idxprom1146
  %mask1148 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1147, i32 0, i32 4
  %arrayidx1149 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1148, i64 0, i64 0
  %530 = load i16, i16* %arrayidx1149, align 2
  %idxprom1150 = zext i16 %530 to i64
  %arrayidx1151 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1150
  store i32 0, i32* %arrayidx1151, align 4
  br label %if.end1152

if.end1152:                                       ; preds = %if.then1145, %if.then1132
  br label %for.inc

if.else1153:                                      ; preds = %lor.lhs.false1123
  %531 = load i16, i16* %stack_n, align 2
  %conv1154 = zext i16 %531 to i32
  %cmp1155 = icmp eq i32 %conv1154, 0
  br i1 %cmp1155, label %if.then1157, label %if.end1158

if.then1157:                                      ; preds = %if.else1153
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1158:                                       ; preds = %if.else1153
  %532 = load i16, i16* %stack_n, align 2
  %conv1159 = zext i16 %532 to i32
  %sub1160 = sub nsw i32 %conv1159, 1
  %conv1161 = trunc i32 %sub1160 to i16
  store i16 %conv1161, i16* %stack_n, align 2
  br label %while.cond1162

while.cond1162:                                   ; preds = %while.body1173, %if.end1158
  %533 = load i16, i16* %stack_n, align 2
  %conv1163 = zext i16 %533 to i32
  %cmp1164 = icmp sgt i32 %conv1163, 0
  br i1 %cmp1164, label %land.rhs1166, label %land.end1172

land.rhs1166:                                     ; preds = %while.cond1162
  %534 = load i16, i16* %stack_n, align 2
  %idxprom1167 = zext i16 %534 to i64
  %arrayidx1168 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1167
  %prev1169 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1168, i32 0, i32 2
  %535 = load i32, i32* %prev1169, align 8
  %cmp1170 = icmp eq i32 %535, 64199
  br label %land.end1172

land.end1172:                                     ; preds = %land.rhs1166, %while.cond1162
  %536 = phi i1 [ false, %while.cond1162 ], [ %cmp1170, %land.rhs1166 ]
  br i1 %536, label %while.body1173, label %while.end1177

while.body1173:                                   ; preds = %land.end1172
  %537 = load i16, i16* %stack_n, align 2
  %conv1174 = zext i16 %537 to i32
  %sub1175 = sub nsw i32 %conv1174, 1
  %conv1176 = trunc i32 %sub1175 to i16
  store i16 %conv1176, i16* %stack_n, align 2
  br label %while.cond1162, !llvm.loop !30

while.end1177:                                    ; preds = %land.end1172
  store i8 1, i8* %just_rewinded, align 1
  %538 = load i16, i16* %stack_n, align 2
  %idxprom1178 = zext i16 %538 to i64
  %arrayidx1179 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1178
  %range_min1180 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1179, i32 0, i32 4
  %539 = load i64, i64* %range_min1180, align 8
  store i64 %539, i64* %range_min, align 8
  %540 = load i16, i16* %stack_n, align 2
  %idxprom1181 = zext i16 %540 to i64
  %arrayidx1182 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1181
  %range_max1183 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1182, i32 0, i32 5
  %541 = load i64, i64* %range_max1183, align 8
  store i64 %541, i64* %range_max, align 8
  %542 = load i16, i16* %stack_n, align 2
  %idxprom1184 = zext i16 %542 to i64
  %arrayidx1185 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1184
  %i1186 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1185, i32 0, i32 3
  %543 = load i64, i64* %i1186, align 8
  %544 = load i64, i64* %i, align 8
  %cmp1187 = icmp ule i64 %543, %544
  br i1 %cmp1187, label %if.then1189, label %if.else1190

if.then1189:                                      ; preds = %while.end1177
  br label %if.end1191

if.else1190:                                      ; preds = %while.end1177
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1082, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end1191:                                       ; preds = %if.then1189
  %545 = load i16, i16* %stack_n, align 2
  %idxprom1192 = zext i16 %545 to i64
  %arrayidx1193 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1192
  %i1194 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1193, i32 0, i32 3
  %546 = load i64, i64* %i1194, align 8
  store i64 %546, i64* %i, align 8
  %547 = load i16, i16* %stack_n, align 2
  %idxprom1195 = zext i16 %547 to i64
  %arrayidx1196 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1195
  %k1197 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1196, i32 0, i32 0
  %548 = load i32, i32* %k1197, align 8
  store i32 %548, i32* %k, align 4
  %549 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %550 = load i32, i32* %k, align 4
  %idxprom1198 = zext i32 %550 to i64
  %arrayidx1199 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %549, i64 %idxprom1198
  %kind1200 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1199, i32 0, i32 0
  %551 = load i8, i8* %kind1200, align 2
  %conv1201 = zext i8 %551 to i32
  %cmp1202 = icmp eq i32 %conv1201, 3
  br i1 %cmp1202, label %if.then1204, label %if.end1223

if.then1204:                                      ; preds = %if.end1191
  %552 = load i16, i16* %stack_n, align 2
  %idxprom1205 = zext i16 %552 to i64
  %arrayidx1206 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1205
  %group_state1207 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1206, i32 0, i32 1
  %553 = load i32, i32* %group_state1207, align 4
  %554 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %555 = load i32, i32* %k, align 4
  %idxprom1208 = zext i32 %555 to i64
  %arrayidx1209 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %554, i64 %idxprom1208
  %mask1210 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1209, i32 0, i32 4
  %arrayidx1211 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1210, i64 0, i64 0
  %556 = load i16, i16* %arrayidx1211, align 2
  %idxprom1212 = zext i16 %556 to i64
  %arrayidx1213 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1212
  store i32 %553, i32* %arrayidx1213, align 4
  %557 = load i16, i16* %stack_n, align 2
  %idxprom1214 = zext i16 %557 to i64
  %arrayidx1215 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1214
  %prev1216 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1215, i32 0, i32 2
  %558 = load i32, i32* %prev1216, align 8
  %559 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %560 = load i32, i32* %k, align 4
  %idxprom1217 = zext i32 %560 to i64
  %arrayidx1218 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %559, i64 %idxprom1217
  %mask1219 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1218, i32 0, i32 4
  %arrayidx1220 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1219, i64 0, i64 0
  %561 = load i16, i16* %arrayidx1220, align 2
  %idxprom1221 = zext i16 %561 to i64
  %arrayidx1222 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1221
  store i32 %558, i32* %arrayidx1222, align 4
  br label %if.end1223

if.end1223:                                       ; preds = %if.then1204, %if.end1191
  %562 = load i32, i32* %k, align 4
  %sub1224 = sub i32 %562, 1
  store i32 %sub1224, i32* %k, align 4
  br label %for.inc

if.end1225:                                       ; preds = %if.end1109
  %563 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %564 = load i32, i32* %k, align 4
  %idxprom1226 = zext i32 %564 to i64
  %arrayidx1227 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %563, i64 %idxprom1226
  %kind1228 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1227, i32 0, i32 0
  %565 = load i8, i8* %kind1228, align 2
  %conv1229 = zext i8 %565 to i32
  %cmp1230 = icmp eq i32 %conv1229, 4
  br i1 %cmp1230, label %if.then1232, label %if.else1233

if.then1232:                                      ; preds = %if.end1225
  br label %if.end1234

if.else1233:                                      ; preds = %if.end1225
  call void @__assert_fail(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1087, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end1234:                                       ; preds = %if.then1232
  br label %if.end1235

if.end1235:                                       ; preds = %if.end1234, %if.else1052
  %566 = load i32, i32* %k, align 4
  %conv1236 = zext i32 %566 to i64
  %567 = load i64, i64* %orig_k, align 8
  %sub1237 = sub i64 %conv1236, %567
  store i64 %sub1237, i64* %k_diff, align 8
  %568 = load i64, i64* %k_diff, align 8
  %add1238 = add nsw i64 %568, 1
  store i64 %add1238, i64* %range_min, align 8
  %569 = load i16, i16* %stack_n, align 2
  %conv1239 = zext i16 %569 to i32
  %cmp1240 = icmp sge i32 %conv1239, 1024
  br i1 %cmp1240, label %if.then1242, label %if.end1244

if.then1242:                                      ; preds = %if.end1235
  %call1243 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1244:                                       ; preds = %if.end1235
  %570 = bitcast %struct._RegexMatcherState* %s1245 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %570, i8 0, i64 40, i1 false)
  %571 = load i64, i64* %i, align 8
  %i1246 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 3
  store i64 %571, i64* %i1246, align 8
  %572 = load i32, i32* %k, align 4
  %conv1247 = zext i32 %572 to i64
  %573 = load i64, i64* %k_diff, align 8
  %sub1248 = sub nsw i64 %conv1247, %573
  %conv1249 = trunc i64 %sub1248 to i32
  %k1250 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 0
  store i32 %conv1249, i32* %k1250, align 8
  %574 = load i64, i64* %range_min, align 8
  %range_min1251 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 4
  store i64 %574, i64* %range_min1251, align 8
  %575 = load i64, i64* %range_max, align 8
  %range_max1252 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 5
  store i64 %575, i64* %range_max1252, align 8
  %prev1253 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 2
  store i32 0, i32* %prev1253, align 8
  %576 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1254 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 0
  %577 = load i32, i32* %k1254, align 8
  %idxprom1255 = zext i32 %577 to i64
  %arrayidx1256 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %576, i64 %idxprom1255
  %kind1257 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1256, i32 0, i32 0
  %578 = load i8, i8* %kind1257, align 2
  %conv1258 = zext i8 %578 to i32
  %cmp1259 = icmp eq i32 %conv1258, 3
  br i1 %cmp1259, label %if.then1261, label %if.end1286

if.then1261:                                      ; preds = %if.end1244
  %579 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1262 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 0
  %580 = load i32, i32* %k1262, align 8
  %idxprom1263 = zext i32 %580 to i64
  %arrayidx1264 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %579, i64 %idxprom1263
  %mask1265 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1264, i32 0, i32 4
  %arrayidx1266 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1265, i64 0, i64 0
  %581 = load i16, i16* %arrayidx1266, align 2
  %idxprom1267 = zext i16 %581 to i64
  %arrayidx1268 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1267
  %582 = load i32, i32* %arrayidx1268, align 4
  %group_state1269 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 1
  store i32 %582, i32* %group_state1269, align 4
  %583 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1270 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 0
  %584 = load i32, i32* %k1270, align 8
  %idxprom1271 = zext i32 %584 to i64
  %arrayidx1272 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %583, i64 %idxprom1271
  %mask1273 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1272, i32 0, i32 4
  %arrayidx1274 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1273, i64 0, i64 0
  %585 = load i16, i16* %arrayidx1274, align 2
  %idxprom1275 = zext i16 %585 to i64
  %arrayidx1276 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1275
  %586 = load i32, i32* %arrayidx1276, align 4
  %prev1277 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 2
  store i32 %586, i32* %prev1277, align 8
  %587 = load i16, i16* %stack_n, align 2
  %conv1278 = zext i16 %587 to i32
  %588 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1279 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1245, i32 0, i32 0
  %589 = load i32, i32* %k1279, align 8
  %idxprom1280 = zext i32 %589 to i64
  %arrayidx1281 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %588, i64 %idxprom1280
  %mask1282 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1281, i32 0, i32 4
  %arrayidx1283 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1282, i64 0, i64 0
  %590 = load i16, i16* %arrayidx1283, align 2
  %idxprom1284 = zext i16 %590 to i64
  %arrayidx1285 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1284
  store i32 %conv1278, i32* %arrayidx1285, align 4
  br label %if.end1286

if.end1286:                                       ; preds = %if.then1261, %if.end1244
  %591 = load i16, i16* %stack_n, align 2
  %inc1287 = add i16 %591, 1
  store i16 %inc1287, i16* %stack_n, align 2
  %idxprom1288 = zext i16 %591 to i64
  %arrayidx1289 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1288
  %592 = bitcast %struct._RegexMatcherState* %arrayidx1289 to i8*
  %593 = bitcast %struct._RegexMatcherState* %s1245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %592, i8* align 8 %593, i64 40, i1 false)
  br label %if.end1290

if.end1290:                                       ; preds = %if.end1286, %if.end1051
  br label %if.end2636

if.else1291:                                      ; preds = %lor.lhs.false915
  %594 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %595 = load i32, i32* %k, align 4
  %idxprom1292 = zext i32 %595 to i64
  %arrayidx1293 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %594, i64 %idxprom1292
  %kind1294 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1293, i32 0, i32 0
  %596 = load i8, i8* %kind1294, align 2
  %conv1295 = zext i8 %596 to i32
  %cmp1296 = icmp eq i32 %conv1295, 3
  br i1 %cmp1296, label %if.then1298, label %if.else2038

if.then1298:                                      ; preds = %if.else1291
  %597 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %598 = load i32, i32* %k, align 4
  %idxprom1299 = zext i32 %598 to i64
  %arrayidx1300 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %597, i64 %idxprom1299
  %count_lo1301 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1300, i32 0, i32 2
  %599 = load i16, i16* %count_lo1301, align 2
  %conv1302 = zext i16 %599 to i32
  %cmp1303 = icmp eq i32 %conv1302, 1
  br i1 %cmp1303, label %land.lhs.true1305, label %if.else1340

land.lhs.true1305:                                ; preds = %if.then1298
  %600 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %601 = load i32, i32* %k, align 4
  %idxprom1306 = zext i32 %601 to i64
  %arrayidx1307 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %600, i64 %idxprom1306
  %count_hi1308 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1307, i32 0, i32 3
  %602 = load i16, i16* %count_hi1308, align 2
  %conv1309 = zext i16 %602 to i32
  %cmp1310 = icmp eq i32 %conv1309, 2
  br i1 %cmp1310, label %if.then1312, label %if.else1340

if.then1312:                                      ; preds = %land.lhs.true1305
  %603 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %604 = load i32, i32* %k, align 4
  %idxprom1313 = zext i32 %604 to i64
  %arrayidx1314 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %603, i64 %idxprom1313
  %mask1315 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1314, i32 0, i32 4
  %arrayidx1316 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1315, i64 0, i64 0
  %605 = load i16, i16* %arrayidx1316, align 2
  %idxprom1317 = zext i16 %605 to i64
  %arrayidx1318 = getelementptr inbounds i16, i16* %vla4, i64 %idxprom1317
  %606 = load i16, i16* %arrayidx1318, align 2
  store i16 %606, i16* %cap_index, align 2
  %607 = load i16, i16* %cap_index, align 2
  %conv1319 = zext i16 %607 to i32
  %cmp1320 = icmp ne i32 %conv1319, 65535
  br i1 %cmp1320, label %if.then1322, label %if.end1339

if.then1322:                                      ; preds = %if.then1312
  %608 = load i16, i16* %stack_n, align 2
  %conv1323 = zext i16 %608 to i32
  %cmp1324 = icmp sge i32 %conv1323, 1024
  br i1 %cmp1324, label %if.then1326, label %if.end1328

if.then1326:                                      ; preds = %if.then1322
  %call1327 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1328:                                       ; preds = %if.then1322
  %609 = bitcast %struct._RegexMatcherState* %s1329 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %609, i8 0, i64 40, i1 false)
  %610 = load i64, i64* %i, align 8
  %i1330 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1329, i32 0, i32 3
  store i64 %610, i64* %i1330, align 8
  %611 = load i32, i32* %k, align 4
  %k1331 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1329, i32 0, i32 0
  store i32 %611, i32* %k1331, align 8
  %612 = load i64, i64* %range_min, align 8
  %range_min1332 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1329, i32 0, i32 4
  store i64 %612, i64* %range_min1332, align 8
  %613 = load i64, i64* %range_max, align 8
  %range_max1333 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1329, i32 0, i32 5
  store i64 %613, i64* %range_max1333, align 8
  %prev1334 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1329, i32 0, i32 2
  store i32 0, i32* %prev1334, align 8
  %prev1335 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1329, i32 0, i32 2
  store i32 64199, i32* %prev1335, align 8
  %614 = load i16, i16* %stack_n, align 2
  %inc1336 = add i16 %614, 1
  store i16 %inc1336, i16* %stack_n, align 2
  %idxprom1337 = zext i16 %614 to i64
  %arrayidx1338 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1337
  %615 = bitcast %struct._RegexMatcherState* %arrayidx1338 to i8*
  %616 = bitcast %struct._RegexMatcherState* %s1329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %615, i8* align 8 %616, i64 40, i1 false)
  br label %if.end1339

if.end1339:                                       ; preds = %if.end1328, %if.then1312
  br label %if.end2037

if.else1340:                                      ; preds = %land.lhs.true1305, %if.then1298
  %617 = load i8, i8* %just_rewinded, align 1
  %tobool1341 = icmp ne i8 %617, 0
  br i1 %tobool1341, label %if.else1872, label %if.then1342

if.then1342:                                      ; preds = %if.else1340
  %618 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %619 = load i32, i32* %k, align 4
  %idxprom1344 = zext i32 %619 to i64
  %arrayidx1345 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %618, i64 %idxprom1344
  %mask1346 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1345, i32 0, i32 4
  %arrayidx1347 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1346, i64 0, i64 0
  %620 = load i16, i16* %arrayidx1347, align 2
  %idxprom1348 = zext i16 %620 to i64
  %arrayidx1349 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1348
  %621 = load i32, i32* %arrayidx1349, align 4
  store i32 %621, i32* %prev1343, align 4
  %622 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %623 = load i32, i32* %k, align 4
  %idxprom1350 = zext i32 %623 to i64
  %arrayidx1351 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %622, i64 %idxprom1350
  %count_hi1352 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1351, i32 0, i32 3
  %624 = load i16, i16* %count_hi1352, align 2
  %conv1353 = zext i16 %624 to i64
  store i64 %conv1353, i64* %range_max, align 8
  %625 = load i64, i64* %range_max, align 8
  %sub1354 = sub i64 %625, 1
  store i64 %sub1354, i64* %range_max, align 8
  %626 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %627 = load i32, i32* %k, align 4
  %idxprom1355 = zext i32 %627 to i64
  %arrayidx1356 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %626, i64 %idxprom1355
  %mask1357 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1356, i32 0, i32 4
  %arrayidx1358 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1357, i64 0, i64 0
  %628 = load i16, i16* %arrayidx1358, align 2
  %idxprom1359 = zext i16 %628 to i64
  %arrayidx1360 = getelementptr inbounds i8, i8* %vla, i64 %idxprom1359
  %629 = load i8, i8* %arrayidx1360, align 1
  %conv1361 = zext i8 %629 to i32
  %tobool1362 = icmp ne i32 %conv1361, 0
  br i1 %tobool1362, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then1342
  br label %cond.end

cond.false:                                       ; preds = %if.then1342
  %630 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %631 = load i32, i32* %k, align 4
  %idxprom1363 = zext i32 %631 to i64
  %arrayidx1364 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %630, i64 %idxprom1363
  %count_lo1365 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1364, i32 0, i32 2
  %632 = load i16, i16* %count_lo1365, align 2
  %conv1366 = zext i16 %632 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv1366, %cond.false ]
  %conv1367 = sext i32 %cond to i64
  store i64 %conv1367, i64* %range_min, align 8
  %633 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %634 = load i32, i32* %k, align 4
  %idxprom1368 = zext i32 %634 to i64
  %arrayidx1369 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %633, i64 %idxprom1368
  %mask1370 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1369, i32 0, i32 4
  %arrayidx1371 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1370, i64 0, i64 0
  %635 = load i16, i16* %arrayidx1371, align 2
  %idxprom1372 = zext i16 %635 to i64
  %arrayidx1373 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1372
  %636 = load i32, i32* %arrayidx1373, align 4
  %add1374 = add i32 %636, 1
  %conv1375 = zext i32 %add1374 to i64
  %637 = load i64, i64* %range_min, align 8
  %cmp1376 = icmp ult i64 %conv1375, %637
  br i1 %cmp1376, label %if.then1378, label %if.else1440

if.then1378:                                      ; preds = %cond.end
  %638 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %639 = load i32, i32* %k, align 4
  %idxprom1379 = zext i32 %639 to i64
  %arrayidx1380 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %638, i64 %idxprom1379
  %mask1381 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1380, i32 0, i32 4
  %arrayidx1382 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1381, i64 0, i64 0
  %640 = load i16, i16* %arrayidx1382, align 2
  %idxprom1383 = zext i16 %640 to i64
  %arrayidx1384 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1383
  %641 = load i32, i32* %arrayidx1384, align 4
  %add1385 = add i32 %641, 1
  store i32 %add1385, i32* %arrayidx1384, align 4
  %642 = load i16, i16* %stack_n, align 2
  %conv1386 = zext i16 %642 to i32
  %cmp1387 = icmp sge i32 %conv1386, 1024
  br i1 %cmp1387, label %if.then1389, label %if.end1391

if.then1389:                                      ; preds = %if.then1378
  %call1390 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1391:                                       ; preds = %if.then1378
  %643 = bitcast %struct._RegexMatcherState* %s1392 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %643, i8 0, i64 40, i1 false)
  %644 = load i64, i64* %i, align 8
  %i1393 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 3
  store i64 %644, i64* %i1393, align 8
  %645 = load i32, i32* %k, align 4
  %k1394 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 0
  store i32 %645, i32* %k1394, align 8
  %646 = load i64, i64* %range_min, align 8
  %range_min1395 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 4
  store i64 %646, i64* %range_min1395, align 8
  %647 = load i64, i64* %range_max, align 8
  %range_max1396 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 5
  store i64 %647, i64* %range_max1396, align 8
  %prev1397 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 2
  store i32 0, i32* %prev1397, align 8
  %648 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1398 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 0
  %649 = load i32, i32* %k1398, align 8
  %idxprom1399 = zext i32 %649 to i64
  %arrayidx1400 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %648, i64 %idxprom1399
  %kind1401 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1400, i32 0, i32 0
  %650 = load i8, i8* %kind1401, align 2
  %conv1402 = zext i8 %650 to i32
  %cmp1403 = icmp eq i32 %conv1402, 3
  br i1 %cmp1403, label %if.then1405, label %if.end1430

if.then1405:                                      ; preds = %if.end1391
  %651 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1406 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 0
  %652 = load i32, i32* %k1406, align 8
  %idxprom1407 = zext i32 %652 to i64
  %arrayidx1408 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %651, i64 %idxprom1407
  %mask1409 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1408, i32 0, i32 4
  %arrayidx1410 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1409, i64 0, i64 0
  %653 = load i16, i16* %arrayidx1410, align 2
  %idxprom1411 = zext i16 %653 to i64
  %arrayidx1412 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1411
  %654 = load i32, i32* %arrayidx1412, align 4
  %group_state1413 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 1
  store i32 %654, i32* %group_state1413, align 4
  %655 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1414 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 0
  %656 = load i32, i32* %k1414, align 8
  %idxprom1415 = zext i32 %656 to i64
  %arrayidx1416 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %655, i64 %idxprom1415
  %mask1417 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1416, i32 0, i32 4
  %arrayidx1418 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1417, i64 0, i64 0
  %657 = load i16, i16* %arrayidx1418, align 2
  %idxprom1419 = zext i16 %657 to i64
  %arrayidx1420 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1419
  %658 = load i32, i32* %arrayidx1420, align 4
  %prev1421 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 2
  store i32 %658, i32* %prev1421, align 8
  %659 = load i16, i16* %stack_n, align 2
  %conv1422 = zext i16 %659 to i32
  %660 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1423 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1392, i32 0, i32 0
  %661 = load i32, i32* %k1423, align 8
  %idxprom1424 = zext i32 %661 to i64
  %arrayidx1425 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %660, i64 %idxprom1424
  %mask1426 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1425, i32 0, i32 4
  %arrayidx1427 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1426, i64 0, i64 0
  %662 = load i16, i16* %arrayidx1427, align 2
  %idxprom1428 = zext i16 %662 to i64
  %arrayidx1429 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1428
  store i32 %conv1422, i32* %arrayidx1429, align 4
  br label %if.end1430

if.end1430:                                       ; preds = %if.then1405, %if.end1391
  %663 = load i16, i16* %stack_n, align 2
  %inc1431 = add i16 %663, 1
  store i16 %inc1431, i16* %stack_n, align 2
  %idxprom1432 = zext i16 %663 to i64
  %arrayidx1433 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1432
  %664 = bitcast %struct._RegexMatcherState* %arrayidx1433 to i8*
  %665 = bitcast %struct._RegexMatcherState* %s1392 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %664, i8* align 8 %665, i64 40, i1 false)
  %666 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %667 = load i32, i32* %k, align 4
  %idxprom1434 = zext i32 %667 to i64
  %arrayidx1435 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %666, i64 %idxprom1434
  %pair_offset1436 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1435, i32 0, i32 5
  %668 = load i16, i16* %pair_offset1436, align 2
  %conv1437 = sext i16 %668 to i32
  %669 = load i32, i32* %k, align 4
  %add1438 = add i32 %669, %conv1437
  store i32 %add1438, i32* %k, align 4
  %670 = load i32, i32* %k, align 4
  %sub1439 = sub i32 %670, 1
  store i32 %sub1439, i32* %k, align 4
  br label %for.inc

if.else1440:                                      ; preds = %cond.end
  %671 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %672 = load i32, i32* %k, align 4
  %idxprom1441 = zext i32 %672 to i64
  %arrayidx1442 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %671, i64 %idxprom1441
  %count_hi1443 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1442, i32 0, i32 3
  %673 = load i16, i16* %count_hi1443, align 2
  %conv1444 = zext i16 %673 to i32
  %cmp1445 = icmp ne i32 %conv1444, 0
  br i1 %cmp1445, label %land.lhs.true1447, label %if.end1531

land.lhs.true1447:                                ; preds = %if.else1440
  %674 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %675 = load i32, i32* %k, align 4
  %idxprom1448 = zext i32 %675 to i64
  %arrayidx1449 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %674, i64 %idxprom1448
  %mask1450 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1449, i32 0, i32 4
  %arrayidx1451 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1450, i64 0, i64 0
  %676 = load i16, i16* %arrayidx1451, align 2
  %idxprom1452 = zext i16 %676 to i64
  %arrayidx1453 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1452
  %677 = load i32, i32* %arrayidx1453, align 4
  %add1454 = add i32 %677, 1
  %conv1455 = zext i32 %add1454 to i64
  %678 = load i64, i64* %range_max, align 8
  %cmp1456 = icmp ugt i64 %conv1455, %678
  br i1 %cmp1456, label %if.then1458, label %if.end1531

if.then1458:                                      ; preds = %land.lhs.true1447
  %679 = load i64, i64* %range_max, align 8
  %sub1459 = sub i64 %679, 1
  store i64 %sub1459, i64* %range_max, align 8
  %680 = load i16, i16* %stack_n, align 2
  %conv1460 = zext i16 %680 to i32
  %cmp1461 = icmp eq i32 %conv1460, 0
  br i1 %cmp1461, label %if.then1463, label %if.end1464

if.then1463:                                      ; preds = %if.then1458
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1464:                                       ; preds = %if.then1458
  %681 = load i16, i16* %stack_n, align 2
  %conv1465 = zext i16 %681 to i32
  %sub1466 = sub nsw i32 %conv1465, 1
  %conv1467 = trunc i32 %sub1466 to i16
  store i16 %conv1467, i16* %stack_n, align 2
  br label %while.cond1468

while.cond1468:                                   ; preds = %while.body1479, %if.end1464
  %682 = load i16, i16* %stack_n, align 2
  %conv1469 = zext i16 %682 to i32
  %cmp1470 = icmp sgt i32 %conv1469, 0
  br i1 %cmp1470, label %land.rhs1472, label %land.end1478

land.rhs1472:                                     ; preds = %while.cond1468
  %683 = load i16, i16* %stack_n, align 2
  %idxprom1473 = zext i16 %683 to i64
  %arrayidx1474 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1473
  %prev1475 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1474, i32 0, i32 2
  %684 = load i32, i32* %prev1475, align 8
  %cmp1476 = icmp eq i32 %684, 64199
  br label %land.end1478

land.end1478:                                     ; preds = %land.rhs1472, %while.cond1468
  %685 = phi i1 [ false, %while.cond1468 ], [ %cmp1476, %land.rhs1472 ]
  br i1 %685, label %while.body1479, label %while.end1483

while.body1479:                                   ; preds = %land.end1478
  %686 = load i16, i16* %stack_n, align 2
  %conv1480 = zext i16 %686 to i32
  %sub1481 = sub nsw i32 %conv1480, 1
  %conv1482 = trunc i32 %sub1481 to i16
  store i16 %conv1482, i16* %stack_n, align 2
  br label %while.cond1468, !llvm.loop !31

while.end1483:                                    ; preds = %land.end1478
  store i8 1, i8* %just_rewinded, align 1
  %687 = load i16, i16* %stack_n, align 2
  %idxprom1484 = zext i16 %687 to i64
  %arrayidx1485 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1484
  %range_min1486 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1485, i32 0, i32 4
  %688 = load i64, i64* %range_min1486, align 8
  store i64 %688, i64* %range_min, align 8
  %689 = load i16, i16* %stack_n, align 2
  %idxprom1487 = zext i16 %689 to i64
  %arrayidx1488 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1487
  %range_max1489 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1488, i32 0, i32 5
  %690 = load i64, i64* %range_max1489, align 8
  store i64 %690, i64* %range_max, align 8
  %691 = load i16, i16* %stack_n, align 2
  %idxprom1490 = zext i16 %691 to i64
  %arrayidx1491 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1490
  %i1492 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1491, i32 0, i32 3
  %692 = load i64, i64* %i1492, align 8
  %693 = load i64, i64* %i, align 8
  %cmp1493 = icmp ule i64 %692, %693
  br i1 %cmp1493, label %if.then1495, label %if.else1496

if.then1495:                                      ; preds = %while.end1483
  br label %if.end1497

if.else1496:                                      ; preds = %while.end1483
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1143, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end1497:                                       ; preds = %if.then1495
  %694 = load i16, i16* %stack_n, align 2
  %idxprom1498 = zext i16 %694 to i64
  %arrayidx1499 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1498
  %i1500 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1499, i32 0, i32 3
  %695 = load i64, i64* %i1500, align 8
  store i64 %695, i64* %i, align 8
  %696 = load i16, i16* %stack_n, align 2
  %idxprom1501 = zext i16 %696 to i64
  %arrayidx1502 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1501
  %k1503 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1502, i32 0, i32 0
  %697 = load i32, i32* %k1503, align 8
  store i32 %697, i32* %k, align 4
  %698 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %699 = load i32, i32* %k, align 4
  %idxprom1504 = zext i32 %699 to i64
  %arrayidx1505 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %698, i64 %idxprom1504
  %kind1506 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1505, i32 0, i32 0
  %700 = load i8, i8* %kind1506, align 2
  %conv1507 = zext i8 %700 to i32
  %cmp1508 = icmp eq i32 %conv1507, 3
  br i1 %cmp1508, label %if.then1510, label %if.end1529

if.then1510:                                      ; preds = %if.end1497
  %701 = load i16, i16* %stack_n, align 2
  %idxprom1511 = zext i16 %701 to i64
  %arrayidx1512 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1511
  %group_state1513 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1512, i32 0, i32 1
  %702 = load i32, i32* %group_state1513, align 4
  %703 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %704 = load i32, i32* %k, align 4
  %idxprom1514 = zext i32 %704 to i64
  %arrayidx1515 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %703, i64 %idxprom1514
  %mask1516 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1515, i32 0, i32 4
  %arrayidx1517 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1516, i64 0, i64 0
  %705 = load i16, i16* %arrayidx1517, align 2
  %idxprom1518 = zext i16 %705 to i64
  %arrayidx1519 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1518
  store i32 %702, i32* %arrayidx1519, align 4
  %706 = load i16, i16* %stack_n, align 2
  %idxprom1520 = zext i16 %706 to i64
  %arrayidx1521 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1520
  %prev1522 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1521, i32 0, i32 2
  %707 = load i32, i32* %prev1522, align 8
  %708 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %709 = load i32, i32* %k, align 4
  %idxprom1523 = zext i32 %709 to i64
  %arrayidx1524 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %708, i64 %idxprom1523
  %mask1525 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1524, i32 0, i32 4
  %arrayidx1526 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1525, i64 0, i64 0
  %710 = load i16, i16* %arrayidx1526, align 2
  %idxprom1527 = zext i16 %710 to i64
  %arrayidx1528 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1527
  store i32 %707, i32* %arrayidx1528, align 4
  br label %if.end1529

if.end1529:                                       ; preds = %if.then1510, %if.end1497
  %711 = load i32, i32* %k, align 4
  %sub1530 = sub i32 %711, 1
  store i32 %sub1530, i32* %k, align 4
  br label %for.inc

if.end1531:                                       ; preds = %land.lhs.true1447, %if.else1440
  br label %if.end1532

if.end1532:                                       ; preds = %if.end1531
  store i8 0, i8* %force_zero, align 1
  %712 = load i32, i32* %prev1343, align 4
  %cmp1533 = icmp ne i32 %712, 0
  br i1 %cmp1533, label %land.lhs.true1535, label %if.end1575

land.lhs.true1535:                                ; preds = %if.end1532
  %713 = load i32, i32* %prev1343, align 4
  %idxprom1536 = zext i32 %713 to i64
  %arrayidx1537 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1536
  %i1538 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1537, i32 0, i32 3
  %714 = load i64, i64* %i1538, align 8
  %conv1539 = trunc i64 %714 to i32
  %715 = load i64, i64* %i, align 8
  %conv1540 = trunc i64 %715 to i32
  %cmp1541 = icmp ugt i32 %conv1539, %conv1540
  br i1 %cmp1541, label %if.then1543, label %if.end1575

if.then1543:                                      ; preds = %land.lhs.true1535
  %716 = load i16, i16* %stack_n, align 2
  %conv1544 = zext i16 %716 to i32
  %sub1545 = sub nsw i32 %conv1544, 1
  %conv1546 = sext i32 %sub1545 to i64
  store i64 %conv1546, i64* %n, align 8
  br label %while.cond1547

while.cond1547:                                   ; preds = %while.body1561, %if.then1543
  %717 = load i64, i64* %n, align 8
  %cmp1548 = icmp ugt i64 %717, 0
  br i1 %cmp1548, label %land.rhs1550, label %land.end1560

land.rhs1550:                                     ; preds = %while.cond1547
  %718 = load i64, i64* %n, align 8
  %arrayidx1551 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %718
  %k1552 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1551, i32 0, i32 0
  %719 = load i32, i32* %k1552, align 8
  %720 = load i32, i32* %k, align 4
  %721 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %722 = load i32, i32* %k, align 4
  %idxprom1553 = zext i32 %722 to i64
  %arrayidx1554 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %721, i64 %idxprom1553
  %pair_offset1555 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1554, i32 0, i32 5
  %723 = load i16, i16* %pair_offset1555, align 2
  %conv1556 = sext i16 %723 to i32
  %add1557 = add i32 %720, %conv1556
  %cmp1558 = icmp ne i32 %719, %add1557
  br label %land.end1560

land.end1560:                                     ; preds = %land.rhs1550, %while.cond1547
  %724 = phi i1 [ false, %while.cond1547 ], [ %cmp1558, %land.rhs1550 ]
  br i1 %724, label %while.body1561, label %while.end1563

while.body1561:                                   ; preds = %land.end1560
  %725 = load i64, i64* %n, align 8
  %sub1562 = sub i64 %725, 1
  store i64 %sub1562, i64* %n, align 8
  br label %while.cond1547, !llvm.loop !32

while.end1563:                                    ; preds = %land.end1560
  %726 = load i64, i64* %n, align 8
  %cmp1564 = icmp ugt i64 %726, 0
  br i1 %cmp1564, label %if.then1566, label %if.else1567

if.then1566:                                      ; preds = %while.end1563
  br label %if.end1568

if.else1567:                                      ; preds = %while.end1563
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1156, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end1568:                                       ; preds = %if.then1566
  %727 = load i64, i64* %n, align 8
  %arrayidx1569 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %727
  %i1570 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1569, i32 0, i32 3
  %728 = load i64, i64* %i1570, align 8
  %729 = load i64, i64* %i, align 8
  %cmp1571 = icmp eq i64 %728, %729
  br i1 %cmp1571, label %if.then1573, label %if.end1574

if.then1573:                                      ; preds = %if.end1568
  store i8 1, i8* %force_zero, align 1
  br label %if.end1574

if.end1574:                                       ; preds = %if.then1573, %if.end1568
  br label %if.end1575

if.end1575:                                       ; preds = %if.end1574, %land.lhs.true1535, %if.end1532
  %730 = load i8, i8* %force_zero, align 1
  %conv1576 = zext i8 %730 to i32
  %tobool1577 = icmp ne i32 %conv1576, 0
  br i1 %tobool1577, label %if.then1589, label %lor.lhs.false1578

lor.lhs.false1578:                                ; preds = %if.end1575
  %731 = load i32, i32* %prev1343, align 4
  %cmp1579 = icmp ne i32 %731, 0
  br i1 %cmp1579, label %land.lhs.true1581, label %if.else1667

land.lhs.true1581:                                ; preds = %lor.lhs.false1578
  %732 = load i32, i32* %prev1343, align 4
  %idxprom1582 = zext i32 %732 to i64
  %arrayidx1583 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1582
  %i1584 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1583, i32 0, i32 3
  %733 = load i64, i64* %i1584, align 8
  %conv1585 = trunc i64 %733 to i32
  %734 = load i64, i64* %i, align 8
  %conv1586 = trunc i64 %734 to i32
  %cmp1587 = icmp eq i32 %conv1585, %conv1586
  br i1 %cmp1587, label %if.then1589, label %if.else1667

if.then1589:                                      ; preds = %land.lhs.true1581, %if.end1575
  %735 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %736 = load i32, i32* %k, align 4
  %idxprom1590 = zext i32 %736 to i64
  %arrayidx1591 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %735, i64 %idxprom1590
  %mask1592 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1591, i32 0, i32 4
  %arrayidx1593 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1592, i64 0, i64 0
  %737 = load i16, i16* %arrayidx1593, align 2
  %idxprom1594 = zext i16 %737 to i64
  %arrayidx1595 = getelementptr inbounds i8, i8* %vla, i64 %idxprom1594
  store i8 1, i8* %arrayidx1595, align 1
  %738 = load i16, i16* %stack_n, align 2
  %conv1596 = zext i16 %738 to i32
  %cmp1597 = icmp eq i32 %conv1596, 0
  br i1 %cmp1597, label %if.then1599, label %if.end1600

if.then1599:                                      ; preds = %if.then1589
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1600:                                       ; preds = %if.then1589
  %739 = load i16, i16* %stack_n, align 2
  %conv1601 = zext i16 %739 to i32
  %sub1602 = sub nsw i32 %conv1601, 1
  %conv1603 = trunc i32 %sub1602 to i16
  store i16 %conv1603, i16* %stack_n, align 2
  br label %while.cond1604

while.cond1604:                                   ; preds = %while.body1615, %if.end1600
  %740 = load i16, i16* %stack_n, align 2
  %conv1605 = zext i16 %740 to i32
  %cmp1606 = icmp sgt i32 %conv1605, 0
  br i1 %cmp1606, label %land.rhs1608, label %land.end1614

land.rhs1608:                                     ; preds = %while.cond1604
  %741 = load i16, i16* %stack_n, align 2
  %idxprom1609 = zext i16 %741 to i64
  %arrayidx1610 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1609
  %prev1611 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1610, i32 0, i32 2
  %742 = load i32, i32* %prev1611, align 8
  %cmp1612 = icmp eq i32 %742, 64199
  br label %land.end1614

land.end1614:                                     ; preds = %land.rhs1608, %while.cond1604
  %743 = phi i1 [ false, %while.cond1604 ], [ %cmp1612, %land.rhs1608 ]
  br i1 %743, label %while.body1615, label %while.end1619

while.body1615:                                   ; preds = %land.end1614
  %744 = load i16, i16* %stack_n, align 2
  %conv1616 = zext i16 %744 to i32
  %sub1617 = sub nsw i32 %conv1616, 1
  %conv1618 = trunc i32 %sub1617 to i16
  store i16 %conv1618, i16* %stack_n, align 2
  br label %while.cond1604, !llvm.loop !33

while.end1619:                                    ; preds = %land.end1614
  store i8 1, i8* %just_rewinded, align 1
  %745 = load i16, i16* %stack_n, align 2
  %idxprom1620 = zext i16 %745 to i64
  %arrayidx1621 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1620
  %range_min1622 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1621, i32 0, i32 4
  %746 = load i64, i64* %range_min1622, align 8
  store i64 %746, i64* %range_min, align 8
  %747 = load i16, i16* %stack_n, align 2
  %idxprom1623 = zext i16 %747 to i64
  %arrayidx1624 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1623
  %range_max1625 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1624, i32 0, i32 5
  %748 = load i64, i64* %range_max1625, align 8
  store i64 %748, i64* %range_max, align 8
  %749 = load i16, i16* %stack_n, align 2
  %idxprom1626 = zext i16 %749 to i64
  %arrayidx1627 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1626
  %i1628 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1627, i32 0, i32 3
  %750 = load i64, i64* %i1628, align 8
  %751 = load i64, i64* %i, align 8
  %cmp1629 = icmp ule i64 %750, %751
  br i1 %cmp1629, label %if.then1631, label %if.else1632

if.then1631:                                      ; preds = %while.end1619
  br label %if.end1633

if.else1632:                                      ; preds = %while.end1619
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1168, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end1633:                                       ; preds = %if.then1631
  %752 = load i16, i16* %stack_n, align 2
  %idxprom1634 = zext i16 %752 to i64
  %arrayidx1635 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1634
  %i1636 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1635, i32 0, i32 3
  %753 = load i64, i64* %i1636, align 8
  store i64 %753, i64* %i, align 8
  %754 = load i16, i16* %stack_n, align 2
  %idxprom1637 = zext i16 %754 to i64
  %arrayidx1638 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1637
  %k1639 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1638, i32 0, i32 0
  %755 = load i32, i32* %k1639, align 8
  store i32 %755, i32* %k, align 4
  %756 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %757 = load i32, i32* %k, align 4
  %idxprom1640 = zext i32 %757 to i64
  %arrayidx1641 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %756, i64 %idxprom1640
  %kind1642 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1641, i32 0, i32 0
  %758 = load i8, i8* %kind1642, align 2
  %conv1643 = zext i8 %758 to i32
  %cmp1644 = icmp eq i32 %conv1643, 3
  br i1 %cmp1644, label %if.then1646, label %if.end1665

if.then1646:                                      ; preds = %if.end1633
  %759 = load i16, i16* %stack_n, align 2
  %idxprom1647 = zext i16 %759 to i64
  %arrayidx1648 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1647
  %group_state1649 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1648, i32 0, i32 1
  %760 = load i32, i32* %group_state1649, align 4
  %761 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %762 = load i32, i32* %k, align 4
  %idxprom1650 = zext i32 %762 to i64
  %arrayidx1651 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %761, i64 %idxprom1650
  %mask1652 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1651, i32 0, i32 4
  %arrayidx1653 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1652, i64 0, i64 0
  %763 = load i16, i16* %arrayidx1653, align 2
  %idxprom1654 = zext i16 %763 to i64
  %arrayidx1655 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1654
  store i32 %760, i32* %arrayidx1655, align 4
  %764 = load i16, i16* %stack_n, align 2
  %idxprom1656 = zext i16 %764 to i64
  %arrayidx1657 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1656
  %prev1658 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1657, i32 0, i32 2
  %765 = load i32, i32* %prev1658, align 8
  %766 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %767 = load i32, i32* %k, align 4
  %idxprom1659 = zext i32 %767 to i64
  %arrayidx1660 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %766, i64 %idxprom1659
  %mask1661 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1660, i32 0, i32 4
  %arrayidx1662 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1661, i64 0, i64 0
  %768 = load i16, i16* %arrayidx1662, align 2
  %idxprom1663 = zext i16 %768 to i64
  %arrayidx1664 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1663
  store i32 %765, i32* %arrayidx1664, align 4
  br label %if.end1665

if.end1665:                                       ; preds = %if.then1646, %if.end1633
  %769 = load i32, i32* %k, align 4
  %sub1666 = sub i32 %769, 1
  store i32 %sub1666, i32* %k, align 4
  br label %if.end1871

if.else1667:                                      ; preds = %land.lhs.true1581, %lor.lhs.false1578
  %770 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %771 = load i32, i32* %k, align 4
  %idxprom1668 = zext i32 %771 to i64
  %arrayidx1669 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %770, i64 %idxprom1668
  %mode1670 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1669, i32 0, i32 1
  %772 = load i8, i8* %mode1670, align 1
  %conv1671 = zext i8 %772 to i32
  %and1672 = and i32 %conv1671, 2
  %tobool1673 = icmp ne i32 %and1672, 0
  br i1 %tobool1673, label %if.then1674, label %if.else1739

if.then1674:                                      ; preds = %if.else1667
  %773 = load i32, i32* %prev1343, align 4
  %tobool1675 = icmp ne i32 %773, 0
  br i1 %tobool1675, label %if.then1676, label %if.end1677

if.then1676:                                      ; preds = %if.then1674
  br label %if.end1677

if.end1677:                                       ; preds = %if.then1676, %if.then1674
  %774 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %775 = load i32, i32* %k, align 4
  %idxprom1678 = zext i32 %775 to i64
  %arrayidx1679 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %774, i64 %idxprom1678
  %mask1680 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1679, i32 0, i32 4
  %arrayidx1681 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1680, i64 0, i64 0
  %776 = load i16, i16* %arrayidx1681, align 2
  %idxprom1682 = zext i16 %776 to i64
  %arrayidx1683 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1682
  %777 = load i32, i32* %arrayidx1683, align 4
  %add1684 = add i32 %777, 1
  store i32 %add1684, i32* %arrayidx1683, align 4
  %778 = load i16, i16* %stack_n, align 2
  %conv1685 = zext i16 %778 to i32
  %cmp1686 = icmp sge i32 %conv1685, 1024
  br i1 %cmp1686, label %if.then1688, label %if.end1690

if.then1688:                                      ; preds = %if.end1677
  %call1689 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1690:                                       ; preds = %if.end1677
  %779 = bitcast %struct._RegexMatcherState* %s1691 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %779, i8 0, i64 40, i1 false)
  %780 = load i64, i64* %i, align 8
  %i1692 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 3
  store i64 %780, i64* %i1692, align 8
  %781 = load i32, i32* %k, align 4
  %k1693 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 0
  store i32 %781, i32* %k1693, align 8
  %782 = load i64, i64* %range_min, align 8
  %range_min1694 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 4
  store i64 %782, i64* %range_min1694, align 8
  %783 = load i64, i64* %range_max, align 8
  %range_max1695 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 5
  store i64 %783, i64* %range_max1695, align 8
  %prev1696 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 2
  store i32 0, i32* %prev1696, align 8
  %784 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1697 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 0
  %785 = load i32, i32* %k1697, align 8
  %idxprom1698 = zext i32 %785 to i64
  %arrayidx1699 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %784, i64 %idxprom1698
  %kind1700 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1699, i32 0, i32 0
  %786 = load i8, i8* %kind1700, align 2
  %conv1701 = zext i8 %786 to i32
  %cmp1702 = icmp eq i32 %conv1701, 3
  br i1 %cmp1702, label %if.then1704, label %if.end1729

if.then1704:                                      ; preds = %if.end1690
  %787 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1705 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 0
  %788 = load i32, i32* %k1705, align 8
  %idxprom1706 = zext i32 %788 to i64
  %arrayidx1707 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %787, i64 %idxprom1706
  %mask1708 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1707, i32 0, i32 4
  %arrayidx1709 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1708, i64 0, i64 0
  %789 = load i16, i16* %arrayidx1709, align 2
  %idxprom1710 = zext i16 %789 to i64
  %arrayidx1711 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1710
  %790 = load i32, i32* %arrayidx1711, align 4
  %group_state1712 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 1
  store i32 %790, i32* %group_state1712, align 4
  %791 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1713 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 0
  %792 = load i32, i32* %k1713, align 8
  %idxprom1714 = zext i32 %792 to i64
  %arrayidx1715 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %791, i64 %idxprom1714
  %mask1716 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1715, i32 0, i32 4
  %arrayidx1717 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1716, i64 0, i64 0
  %793 = load i16, i16* %arrayidx1717, align 2
  %idxprom1718 = zext i16 %793 to i64
  %arrayidx1719 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1718
  %794 = load i32, i32* %arrayidx1719, align 4
  %prev1720 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 2
  store i32 %794, i32* %prev1720, align 8
  %795 = load i16, i16* %stack_n, align 2
  %conv1721 = zext i16 %795 to i32
  %796 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1722 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1691, i32 0, i32 0
  %797 = load i32, i32* %k1722, align 8
  %idxprom1723 = zext i32 %797 to i64
  %arrayidx1724 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %796, i64 %idxprom1723
  %mask1725 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1724, i32 0, i32 4
  %arrayidx1726 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1725, i64 0, i64 0
  %798 = load i16, i16* %arrayidx1726, align 2
  %idxprom1727 = zext i16 %798 to i64
  %arrayidx1728 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1727
  store i32 %conv1721, i32* %arrayidx1728, align 4
  br label %if.end1729

if.end1729:                                       ; preds = %if.then1704, %if.end1690
  %799 = load i16, i16* %stack_n, align 2
  %inc1730 = add i16 %799, 1
  store i16 %inc1730, i16* %stack_n, align 2
  %idxprom1731 = zext i16 %799 to i64
  %arrayidx1732 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1731
  %800 = bitcast %struct._RegexMatcherState* %arrayidx1732 to i8*
  %801 = bitcast %struct._RegexMatcherState* %s1691 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %800, i8* align 8 %801, i64 40, i1 false)
  %802 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %803 = load i32, i32* %k, align 4
  %idxprom1733 = zext i32 %803 to i64
  %arrayidx1734 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %802, i64 %idxprom1733
  %mask1735 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1734, i32 0, i32 4
  %arrayidx1736 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1735, i64 0, i64 0
  %804 = load i16, i16* %arrayidx1736, align 2
  %idxprom1737 = zext i16 %804 to i64
  %arrayidx1738 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1737
  store i32 0, i32* %arrayidx1738, align 4
  br label %if.end1870

if.else1739:                                      ; preds = %if.else1667
  %805 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %806 = load i32, i32* %k, align 4
  %idxprom1740 = zext i32 %806 to i64
  %arrayidx1741 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %805, i64 %idxprom1740
  %mode1742 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1741, i32 0, i32 1
  %807 = load i8, i8* %mode1742, align 1
  %conv1743 = zext i8 %807 to i32
  %and1744 = and i32 %conv1743, 1
  %tobool1745 = icmp ne i32 %and1744, 0
  br i1 %tobool1745, label %if.then1746, label %if.end1791

if.then1746:                                      ; preds = %if.else1739
  %808 = load i32, i32* %k, align 4
  store i32 %808, i32* %k2, align 4
  %809 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %810 = load i32, i32* %k, align 4
  %idxprom1747 = zext i32 %810 to i64
  %arrayidx1748 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %809, i64 %idxprom1747
  %mask1749 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1748, i32 0, i32 4
  %arrayidx1750 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1749, i64 0, i64 0
  %811 = load i16, i16* %arrayidx1750, align 2
  %idxprom1751 = zext i16 %811 to i64
  %arrayidx1752 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1751
  %812 = load i32, i32* %arrayidx1752, align 4
  %cmp1753 = icmp eq i32 %812, 0
  br i1 %cmp1753, label %if.then1755, label %if.end1761

if.then1755:                                      ; preds = %if.then1746
  %813 = load i32, i32* %k, align 4
  %814 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %815 = load i32, i32* %k, align 4
  %idxprom1756 = zext i32 %815 to i64
  %arrayidx1757 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %814, i64 %idxprom1756
  %pair_offset1758 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1757, i32 0, i32 5
  %816 = load i16, i16* %pair_offset1758, align 2
  %conv1759 = sext i16 %816 to i32
  %add1760 = add i32 %813, %conv1759
  store i32 %add1760, i32* %k2, align 4
  br label %if.end1761

if.end1761:                                       ; preds = %if.then1755, %if.then1746
  %817 = load i16, i16* %stack_n, align 2
  %conv1762 = zext i16 %817 to i32
  %cmp1763 = icmp eq i32 %conv1762, 0
  br i1 %cmp1763, label %if.then1765, label %if.end1766

if.then1765:                                      ; preds = %if.end1761
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1766:                                       ; preds = %if.end1761
  %818 = load i16, i16* %stack_n, align 2
  %conv1767 = zext i16 %818 to i32
  %sub1768 = sub nsw i32 %conv1767, 1
  %conv1769 = trunc i32 %sub1768 to i16
  store i16 %conv1769, i16* %stack_n, align 2
  br label %while.cond1770

while.cond1770:                                   ; preds = %while.body1781, %if.end1766
  %819 = load i16, i16* %stack_n, align 2
  %conv1771 = zext i16 %819 to i32
  %cmp1772 = icmp sgt i32 %conv1771, 0
  br i1 %cmp1772, label %land.rhs1774, label %land.end1780

land.rhs1774:                                     ; preds = %while.cond1770
  %820 = load i16, i16* %stack_n, align 2
  %idxprom1775 = zext i16 %820 to i64
  %arrayidx1776 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1775
  %k1777 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1776, i32 0, i32 0
  %821 = load i32, i32* %k1777, align 8
  %822 = load i32, i32* %k2, align 4
  %cmp1778 = icmp ne i32 %821, %822
  br label %land.end1780

land.end1780:                                     ; preds = %land.rhs1774, %while.cond1770
  %823 = phi i1 [ false, %while.cond1770 ], [ %cmp1778, %land.rhs1774 ]
  br i1 %823, label %while.body1781, label %while.end1785

while.body1781:                                   ; preds = %land.end1780
  %824 = load i16, i16* %stack_n, align 2
  %conv1782 = zext i16 %824 to i32
  %sub1783 = sub nsw i32 %conv1782, 1
  %conv1784 = trunc i32 %sub1783 to i16
  store i16 %conv1784, i16* %stack_n, align 2
  br label %while.cond1770, !llvm.loop !34

while.end1785:                                    ; preds = %land.end1780
  %825 = load i16, i16* %stack_n, align 2
  %conv1786 = zext i16 %825 to i32
  %cmp1787 = icmp eq i32 %conv1786, 0
  br i1 %cmp1787, label %if.then1789, label %if.end1790

if.then1789:                                      ; preds = %while.end1785
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1790:                                       ; preds = %while.end1785
  br label %if.end1791

if.end1791:                                       ; preds = %if.end1790, %if.else1739
  %826 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %827 = load i32, i32* %k, align 4
  %828 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %829 = load i32, i32* %k, align 4
  %idxprom1792 = zext i32 %829 to i64
  %arrayidx1793 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %828, i64 %idxprom1792
  %pair_offset1794 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1793, i32 0, i32 5
  %830 = load i16, i16* %pair_offset1794, align 2
  %conv1795 = sext i16 %830 to i32
  %add1796 = add i32 %827, %conv1795
  %idxprom1797 = zext i32 %add1796 to i64
  %arrayidx1798 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %826, i64 %idxprom1797
  %mask1799 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1798, i32 0, i32 4
  %arrayidx1800 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1799, i64 0, i64 0
  %831 = load i16, i16* %arrayidx1800, align 2
  %idxprom1801 = zext i16 %831 to i64
  %arrayidx1802 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1801
  %832 = load i32, i32* %arrayidx1802, align 4
  %833 = load i64, i64* %i, align 8
  %conv1803 = trunc i64 %833 to i32
  %cmp1804 = icmp ult i32 %832, %conv1803
  br i1 %cmp1804, label %if.then1806, label %if.else1868

if.then1806:                                      ; preds = %if.end1791
  %834 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %835 = load i32, i32* %k, align 4
  %idxprom1807 = zext i32 %835 to i64
  %arrayidx1808 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %834, i64 %idxprom1807
  %mask1809 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1808, i32 0, i32 4
  %arrayidx1810 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1809, i64 0, i64 0
  %836 = load i16, i16* %arrayidx1810, align 2
  %idxprom1811 = zext i16 %836 to i64
  %arrayidx1812 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1811
  %837 = load i32, i32* %arrayidx1812, align 4
  %add1813 = add i32 %837, 1
  store i32 %add1813, i32* %arrayidx1812, align 4
  %838 = load i16, i16* %stack_n, align 2
  %conv1814 = zext i16 %838 to i32
  %cmp1815 = icmp sge i32 %conv1814, 1024
  br i1 %cmp1815, label %if.then1817, label %if.end1819

if.then1817:                                      ; preds = %if.then1806
  %call1818 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1819:                                       ; preds = %if.then1806
  %839 = bitcast %struct._RegexMatcherState* %s1820 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %839, i8 0, i64 40, i1 false)
  %840 = load i64, i64* %i, align 8
  %i1821 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 3
  store i64 %840, i64* %i1821, align 8
  %841 = load i32, i32* %k, align 4
  %k1822 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 0
  store i32 %841, i32* %k1822, align 8
  %842 = load i64, i64* %range_min, align 8
  %range_min1823 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 4
  store i64 %842, i64* %range_min1823, align 8
  %843 = load i64, i64* %range_max, align 8
  %range_max1824 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 5
  store i64 %843, i64* %range_max1824, align 8
  %prev1825 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 2
  store i32 0, i32* %prev1825, align 8
  %844 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1826 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 0
  %845 = load i32, i32* %k1826, align 8
  %idxprom1827 = zext i32 %845 to i64
  %arrayidx1828 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %844, i64 %idxprom1827
  %kind1829 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1828, i32 0, i32 0
  %846 = load i8, i8* %kind1829, align 2
  %conv1830 = zext i8 %846 to i32
  %cmp1831 = icmp eq i32 %conv1830, 3
  br i1 %cmp1831, label %if.then1833, label %if.end1858

if.then1833:                                      ; preds = %if.end1819
  %847 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1834 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 0
  %848 = load i32, i32* %k1834, align 8
  %idxprom1835 = zext i32 %848 to i64
  %arrayidx1836 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %847, i64 %idxprom1835
  %mask1837 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1836, i32 0, i32 4
  %arrayidx1838 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1837, i64 0, i64 0
  %849 = load i16, i16* %arrayidx1838, align 2
  %idxprom1839 = zext i16 %849 to i64
  %arrayidx1840 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1839
  %850 = load i32, i32* %arrayidx1840, align 4
  %group_state1841 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 1
  store i32 %850, i32* %group_state1841, align 4
  %851 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1842 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 0
  %852 = load i32, i32* %k1842, align 8
  %idxprom1843 = zext i32 %852 to i64
  %arrayidx1844 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %851, i64 %idxprom1843
  %mask1845 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1844, i32 0, i32 4
  %arrayidx1846 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1845, i64 0, i64 0
  %853 = load i16, i16* %arrayidx1846, align 2
  %idxprom1847 = zext i16 %853 to i64
  %arrayidx1848 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1847
  %854 = load i32, i32* %arrayidx1848, align 4
  %prev1849 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 2
  store i32 %854, i32* %prev1849, align 8
  %855 = load i16, i16* %stack_n, align 2
  %conv1850 = zext i16 %855 to i32
  %856 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k1851 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1820, i32 0, i32 0
  %857 = load i32, i32* %k1851, align 8
  %idxprom1852 = zext i32 %857 to i64
  %arrayidx1853 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %856, i64 %idxprom1852
  %mask1854 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1853, i32 0, i32 4
  %arrayidx1855 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1854, i64 0, i64 0
  %858 = load i16, i16* %arrayidx1855, align 2
  %idxprom1856 = zext i16 %858 to i64
  %arrayidx1857 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1856
  store i32 %conv1850, i32* %arrayidx1857, align 4
  br label %if.end1858

if.end1858:                                       ; preds = %if.then1833, %if.end1819
  %859 = load i16, i16* %stack_n, align 2
  %inc1859 = add i16 %859, 1
  store i16 %inc1859, i16* %stack_n, align 2
  %idxprom1860 = zext i16 %859 to i64
  %arrayidx1861 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1860
  %860 = bitcast %struct._RegexMatcherState* %arrayidx1861 to i8*
  %861 = bitcast %struct._RegexMatcherState* %s1820 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %860, i8* align 8 %861, i64 40, i1 false)
  %862 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %863 = load i32, i32* %k, align 4
  %idxprom1862 = zext i32 %863 to i64
  %arrayidx1863 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %862, i64 %idxprom1862
  %pair_offset1864 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1863, i32 0, i32 5
  %864 = load i16, i16* %pair_offset1864, align 2
  %conv1865 = sext i16 %864 to i32
  %865 = load i32, i32* %k, align 4
  %add1866 = add i32 %865, %conv1865
  store i32 %add1866, i32* %k, align 4
  %866 = load i32, i32* %k, align 4
  %sub1867 = sub i32 %866, 1
  store i32 %sub1867, i32* %k, align 4
  br label %if.end1869

if.else1868:                                      ; preds = %if.end1791
  br label %if.end1869

if.end1869:                                       ; preds = %if.else1868, %if.end1858
  br label %if.end1870

if.end1870:                                       ; preds = %if.end1869, %if.end1729
  br label %if.end1871

if.end1871:                                       ; preds = %if.end1870, %if.end1665
  br label %if.end2036

if.else1872:                                      ; preds = %if.else1340
  store i8 0, i8* %just_rewinded, align 1
  %867 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %868 = load i32, i32* %k, align 4
  %idxprom1873 = zext i32 %868 to i64
  %arrayidx1874 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %867, i64 %idxprom1873
  %mode1875 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1874, i32 0, i32 1
  %869 = load i8, i8* %mode1875, align 1
  %conv1876 = zext i8 %869 to i32
  %and1877 = and i32 %conv1876, 2
  %tobool1878 = icmp ne i32 %and1877, 0
  br i1 %tobool1878, label %if.then1879, label %if.else1909

if.then1879:                                      ; preds = %if.else1872
  %870 = load i16, i16* %stack_n, align 2
  %conv1880 = zext i16 %870 to i32
  %cmp1881 = icmp sge i32 %conv1880, 1024
  br i1 %cmp1881, label %if.then1883, label %if.end1885

if.then1883:                                      ; preds = %if.then1879
  %call1884 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1885:                                       ; preds = %if.then1879
  %871 = bitcast %struct._RegexMatcherState* %s1886 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %871, i8 0, i64 40, i1 false)
  %872 = load i64, i64* %i, align 8
  %i1887 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1886, i32 0, i32 3
  store i64 %872, i64* %i1887, align 8
  %873 = load i32, i32* %k, align 4
  %k1888 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1886, i32 0, i32 0
  store i32 %873, i32* %k1888, align 8
  %874 = load i64, i64* %range_min, align 8
  %range_min1889 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1886, i32 0, i32 4
  store i64 %874, i64* %range_min1889, align 8
  %875 = load i64, i64* %range_max, align 8
  %range_max1890 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1886, i32 0, i32 5
  store i64 %875, i64* %range_max1890, align 8
  %prev1891 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1886, i32 0, i32 2
  store i32 0, i32* %prev1891, align 8
  %prev1892 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s1886, i32 0, i32 2
  store i32 64199, i32* %prev1892, align 8
  %876 = load i16, i16* %stack_n, align 2
  %inc1893 = add i16 %876, 1
  store i16 %inc1893, i16* %stack_n, align 2
  %idxprom1894 = zext i16 %876 to i64
  %arrayidx1895 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1894
  %877 = bitcast %struct._RegexMatcherState* %arrayidx1895 to i8*
  %878 = bitcast %struct._RegexMatcherState* %s1886 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %877, i8* align 8 %878, i64 40, i1 false)
  %879 = load i16, i16* %stack_n, align 2
  %conv1896 = zext i16 %879 to i32
  %880 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %881 = load i32, i32* %k, align 4
  %idxprom1897 = zext i32 %881 to i64
  %arrayidx1898 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %880, i64 %idxprom1897
  %mask1899 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1898, i32 0, i32 4
  %arrayidx1900 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1899, i64 0, i64 0
  %882 = load i16, i16* %arrayidx1900, align 2
  %idxprom1901 = zext i16 %882 to i64
  %arrayidx1902 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1901
  store i32 %conv1896, i32* %arrayidx1902, align 4
  %883 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %884 = load i32, i32* %k, align 4
  %idxprom1903 = zext i32 %884 to i64
  %arrayidx1904 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %883, i64 %idxprom1903
  %pair_offset1905 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1904, i32 0, i32 5
  %885 = load i16, i16* %pair_offset1905, align 2
  %conv1906 = sext i16 %885 to i32
  %886 = load i32, i32* %k, align 4
  %add1907 = add i32 %886, %conv1906
  store i32 %add1907, i32* %k, align 4
  %887 = load i32, i32* %k, align 4
  %sub1908 = sub i32 %887, 1
  store i32 %sub1908, i32* %k, align 4
  br label %if.end2035

if.else1909:                                      ; preds = %if.else1872
  %888 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %889 = load i32, i32* %k, align 4
  %idxprom1910 = zext i32 %889 to i64
  %arrayidx1911 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %888, i64 %idxprom1910
  %mask1912 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1911, i32 0, i32 4
  %arrayidx1913 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1912, i64 0, i64 0
  %890 = load i16, i16* %arrayidx1913, align 2
  %idxprom1914 = zext i16 %890 to i64
  %arrayidx1915 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1914
  %891 = load i32, i32* %arrayidx1915, align 4
  %conv1916 = zext i32 %891 to i64
  %892 = load i64, i64* %range_min, align 8
  %cmp1917 = icmp ult i64 %conv1916, %892
  br i1 %cmp1917, label %land.lhs.true1919, label %if.else1999

land.lhs.true1919:                                ; preds = %if.else1909
  %893 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %894 = load i32, i32* %k, align 4
  %idxprom1920 = zext i32 %894 to i64
  %arrayidx1921 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %893, i64 %idxprom1920
  %mask1922 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1921, i32 0, i32 4
  %arrayidx1923 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1922, i64 0, i64 0
  %895 = load i16, i16* %arrayidx1923, align 2
  %idxprom1924 = zext i16 %895 to i64
  %arrayidx1925 = getelementptr inbounds i8, i8* %vla, i64 %idxprom1924
  %896 = load i8, i8* %arrayidx1925, align 1
  %tobool1926 = icmp ne i8 %896, 0
  br i1 %tobool1926, label %if.else1999, label %if.then1927

if.then1927:                                      ; preds = %land.lhs.true1919
  %897 = load i16, i16* %stack_n, align 2
  %conv1928 = zext i16 %897 to i32
  %cmp1929 = icmp eq i32 %conv1928, 0
  br i1 %cmp1929, label %if.then1931, label %if.end1932

if.then1931:                                      ; preds = %if.then1927
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end1932:                                       ; preds = %if.then1927
  %898 = load i16, i16* %stack_n, align 2
  %conv1933 = zext i16 %898 to i32
  %sub1934 = sub nsw i32 %conv1933, 1
  %conv1935 = trunc i32 %sub1934 to i16
  store i16 %conv1935, i16* %stack_n, align 2
  br label %while.cond1936

while.cond1936:                                   ; preds = %while.body1947, %if.end1932
  %899 = load i16, i16* %stack_n, align 2
  %conv1937 = zext i16 %899 to i32
  %cmp1938 = icmp sgt i32 %conv1937, 0
  br i1 %cmp1938, label %land.rhs1940, label %land.end1946

land.rhs1940:                                     ; preds = %while.cond1936
  %900 = load i16, i16* %stack_n, align 2
  %idxprom1941 = zext i16 %900 to i64
  %arrayidx1942 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1941
  %prev1943 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1942, i32 0, i32 2
  %901 = load i32, i32* %prev1943, align 8
  %cmp1944 = icmp eq i32 %901, 64199
  br label %land.end1946

land.end1946:                                     ; preds = %land.rhs1940, %while.cond1936
  %902 = phi i1 [ false, %while.cond1936 ], [ %cmp1944, %land.rhs1940 ]
  br i1 %902, label %while.body1947, label %while.end1951

while.body1947:                                   ; preds = %land.end1946
  %903 = load i16, i16* %stack_n, align 2
  %conv1948 = zext i16 %903 to i32
  %sub1949 = sub nsw i32 %conv1948, 1
  %conv1950 = trunc i32 %sub1949 to i16
  store i16 %conv1950, i16* %stack_n, align 2
  br label %while.cond1936, !llvm.loop !35

while.end1951:                                    ; preds = %land.end1946
  store i8 1, i8* %just_rewinded, align 1
  %904 = load i16, i16* %stack_n, align 2
  %idxprom1952 = zext i16 %904 to i64
  %arrayidx1953 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1952
  %range_min1954 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1953, i32 0, i32 4
  %905 = load i64, i64* %range_min1954, align 8
  store i64 %905, i64* %range_min, align 8
  %906 = load i16, i16* %stack_n, align 2
  %idxprom1955 = zext i16 %906 to i64
  %arrayidx1956 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1955
  %range_max1957 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1956, i32 0, i32 5
  %907 = load i64, i64* %range_max1957, align 8
  store i64 %907, i64* %range_max, align 8
  %908 = load i16, i16* %stack_n, align 2
  %idxprom1958 = zext i16 %908 to i64
  %arrayidx1959 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1958
  %i1960 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1959, i32 0, i32 3
  %909 = load i64, i64* %i1960, align 8
  %910 = load i64, i64* %i, align 8
  %cmp1961 = icmp ule i64 %909, %910
  br i1 %cmp1961, label %if.then1963, label %if.else1964

if.then1963:                                      ; preds = %while.end1951
  br label %if.end1965

if.else1964:                                      ; preds = %while.end1951
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1239, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end1965:                                       ; preds = %if.then1963
  %911 = load i16, i16* %stack_n, align 2
  %idxprom1966 = zext i16 %911 to i64
  %arrayidx1967 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1966
  %i1968 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1967, i32 0, i32 3
  %912 = load i64, i64* %i1968, align 8
  store i64 %912, i64* %i, align 8
  %913 = load i16, i16* %stack_n, align 2
  %idxprom1969 = zext i16 %913 to i64
  %arrayidx1970 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1969
  %k1971 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1970, i32 0, i32 0
  %914 = load i32, i32* %k1971, align 8
  store i32 %914, i32* %k, align 4
  %915 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %916 = load i32, i32* %k, align 4
  %idxprom1972 = zext i32 %916 to i64
  %arrayidx1973 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %915, i64 %idxprom1972
  %kind1974 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1973, i32 0, i32 0
  %917 = load i8, i8* %kind1974, align 2
  %conv1975 = zext i8 %917 to i32
  %cmp1976 = icmp eq i32 %conv1975, 3
  br i1 %cmp1976, label %if.then1978, label %if.end1997

if.then1978:                                      ; preds = %if.end1965
  %918 = load i16, i16* %stack_n, align 2
  %idxprom1979 = zext i16 %918 to i64
  %arrayidx1980 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1979
  %group_state1981 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1980, i32 0, i32 1
  %919 = load i32, i32* %group_state1981, align 4
  %920 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %921 = load i32, i32* %k, align 4
  %idxprom1982 = zext i32 %921 to i64
  %arrayidx1983 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %920, i64 %idxprom1982
  %mask1984 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1983, i32 0, i32 4
  %arrayidx1985 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1984, i64 0, i64 0
  %922 = load i16, i16* %arrayidx1985, align 2
  %idxprom1986 = zext i16 %922 to i64
  %arrayidx1987 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom1986
  store i32 %919, i32* %arrayidx1987, align 4
  %923 = load i16, i16* %stack_n, align 2
  %idxprom1988 = zext i16 %923 to i64
  %arrayidx1989 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom1988
  %prev1990 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx1989, i32 0, i32 2
  %924 = load i32, i32* %prev1990, align 8
  %925 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %926 = load i32, i32* %k, align 4
  %idxprom1991 = zext i32 %926 to i64
  %arrayidx1992 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %925, i64 %idxprom1991
  %mask1993 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx1992, i32 0, i32 4
  %arrayidx1994 = getelementptr inbounds [16 x i16], [16 x i16]* %mask1993, i64 0, i64 0
  %927 = load i16, i16* %arrayidx1994, align 2
  %idxprom1995 = zext i16 %927 to i64
  %arrayidx1996 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom1995
  store i32 %924, i32* %arrayidx1996, align 4
  br label %if.end1997

if.end1997:                                       ; preds = %if.then1978, %if.end1965
  %928 = load i32, i32* %k, align 4
  %sub1998 = sub i32 %928, 1
  store i32 %sub1998, i32* %k, align 4
  br label %if.end2034

if.else1999:                                      ; preds = %land.lhs.true1919, %if.else1909
  %929 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %930 = load i32, i32* %k, align 4
  %idxprom2000 = zext i32 %930 to i64
  %arrayidx2001 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %929, i64 %idxprom2000
  %mask2002 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2001, i32 0, i32 4
  %arrayidx2003 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2002, i64 0, i64 0
  %931 = load i16, i16* %arrayidx2003, align 2
  %idxprom2004 = zext i16 %931 to i64
  %arrayidx2005 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom2004
  store i32 0, i32* %arrayidx2005, align 4
  %932 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %933 = load i32, i32* %k, align 4
  %idxprom2007 = zext i32 %933 to i64
  %arrayidx2008 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %932, i64 %idxprom2007
  %mask2009 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2008, i32 0, i32 4
  %arrayidx2010 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2009, i64 0, i64 0
  %934 = load i16, i16* %arrayidx2010, align 2
  %idxprom2011 = zext i16 %934 to i64
  %arrayidx2012 = getelementptr inbounds i16, i16* %vla4, i64 %idxprom2011
  %935 = load i16, i16* %arrayidx2012, align 2
  store i16 %935, i16* %cap_index2006, align 2
  %936 = load i16, i16* %cap_index2006, align 2
  %conv2013 = zext i16 %936 to i32
  %cmp2014 = icmp ne i32 %conv2013, 65535
  br i1 %cmp2014, label %if.then2016, label %if.end2033

if.then2016:                                      ; preds = %if.else1999
  %937 = load i16, i16* %stack_n, align 2
  %conv2017 = zext i16 %937 to i32
  %cmp2018 = icmp sge i32 %conv2017, 1024
  br i1 %cmp2018, label %if.then2020, label %if.end2022

if.then2020:                                      ; preds = %if.then2016
  %call2021 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2022:                                       ; preds = %if.then2016
  %938 = bitcast %struct._RegexMatcherState* %s2023 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %938, i8 0, i64 40, i1 false)
  %939 = load i64, i64* %i, align 8
  %i2024 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2023, i32 0, i32 3
  store i64 %939, i64* %i2024, align 8
  %940 = load i32, i32* %k, align 4
  %k2025 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2023, i32 0, i32 0
  store i32 %940, i32* %k2025, align 8
  %941 = load i64, i64* %range_min, align 8
  %range_min2026 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2023, i32 0, i32 4
  store i64 %941, i64* %range_min2026, align 8
  %942 = load i64, i64* %range_max, align 8
  %range_max2027 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2023, i32 0, i32 5
  store i64 %942, i64* %range_max2027, align 8
  %prev2028 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2023, i32 0, i32 2
  store i32 0, i32* %prev2028, align 8
  %prev2029 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2023, i32 0, i32 2
  store i32 64199, i32* %prev2029, align 8
  %943 = load i16, i16* %stack_n, align 2
  %inc2030 = add i16 %943, 1
  store i16 %inc2030, i16* %stack_n, align 2
  %idxprom2031 = zext i16 %943 to i64
  %arrayidx2032 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2031
  %944 = bitcast %struct._RegexMatcherState* %arrayidx2032 to i8*
  %945 = bitcast %struct._RegexMatcherState* %s2023 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %944, i8* align 8 %945, i64 40, i1 false)
  br label %if.end2033

if.end2033:                                       ; preds = %if.end2022, %if.else1999
  br label %if.end2034

if.end2034:                                       ; preds = %if.end2033, %if.end1997
  br label %if.end2035

if.end2035:                                       ; preds = %if.end2034, %if.end1885
  br label %if.end2036

if.end2036:                                       ; preds = %if.end2035, %if.end1871
  br label %if.end2037

if.end2037:                                       ; preds = %if.end2036, %if.end1339
  br label %if.end2635

if.else2038:                                      ; preds = %if.else1291
  %946 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %947 = load i32, i32* %k, align 4
  %idxprom2039 = zext i32 %947 to i64
  %arrayidx2040 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %946, i64 %idxprom2039
  %kind2041 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2040, i32 0, i32 0
  %948 = load i8, i8* %kind2041, align 2
  %conv2042 = zext i8 %948 to i32
  %cmp2043 = icmp eq i32 %conv2042, 4
  br i1 %cmp2043, label %if.then2045, label %if.else2052

if.then2045:                                      ; preds = %if.else2038
  %949 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %950 = load i32, i32* %k, align 4
  %idxprom2046 = zext i32 %950 to i64
  %arrayidx2047 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %949, i64 %idxprom2046
  %pair_offset2048 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2047, i32 0, i32 5
  %951 = load i16, i16* %pair_offset2048, align 2
  %conv2049 = sext i16 %951 to i32
  %952 = load i32, i32* %k, align 4
  %add2050 = add i32 %952, %conv2049
  store i32 %add2050, i32* %k, align 4
  %953 = load i32, i32* %k, align 4
  %sub2051 = sub i32 %953, 1
  store i32 %sub2051, i32* %k, align 4
  br label %if.end2634

if.else2052:                                      ; preds = %if.else2038
  %954 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %955 = load i32, i32* %k, align 4
  %idxprom2053 = zext i32 %955 to i64
  %arrayidx2054 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %954, i64 %idxprom2053
  %kind2055 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2054, i32 0, i32 0
  %956 = load i8, i8* %kind2055, align 2
  %conv2056 = zext i8 %956 to i32
  %cmp2057 = icmp eq i32 %conv2056, 0
  br i1 %cmp2057, label %if.then2059, label %if.else2627

if.then2059:                                      ; preds = %if.else2052
  %957 = load i8, i8* %just_rewinded, align 1
  %tobool2060 = icmp ne i8 %957, 0
  br i1 %tobool2060, label %if.else2337, label %if.then2061

if.then2061:                                      ; preds = %if.then2059
  store i64 0, i64* %n2062, align 8
  %958 = load i64, i64* %i, align 8
  store i64 %958, i64* %old_i, align 8
  br label %while.cond2063

while.cond2063:                                   ; preds = %while.body2096, %if.then2061
  %959 = load i64, i64* %n2062, align 8
  %960 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %961 = load i32, i32* %k, align 4
  %idxprom2064 = zext i32 %961 to i64
  %arrayidx2065 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %960, i64 %idxprom2064
  %count_lo2066 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2065, i32 0, i32 2
  %962 = load i16, i16* %count_lo2066, align 2
  %conv2067 = zext i16 %962 to i64
  %cmp2068 = icmp ult i64 %959, %conv2067
  br i1 %cmp2068, label %land.lhs.true2070, label %land.end2095

land.lhs.true2070:                                ; preds = %while.cond2063
  %963 = load i8*, i8** %text.addr, align 8
  %964 = load i64, i64* %i, align 8
  %arrayidx2071 = getelementptr inbounds i8, i8* %963, i64 %964
  %965 = load i8, i8* %arrayidx2071, align 1
  %conv2072 = sext i8 %965 to i32
  %cmp2073 = icmp ne i32 %conv2072, 0
  br i1 %cmp2073, label %land.rhs2075, label %land.end2095

land.rhs2075:                                     ; preds = %land.lhs.true2070
  %966 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %967 = load i32, i32* %k, align 4
  %idxprom2076 = zext i32 %967 to i64
  %arrayidx2077 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %966, i64 %idxprom2076
  %mask2078 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2077, i32 0, i32 4
  %968 = load i8*, i8** %text.addr, align 8
  %969 = load i64, i64* %i, align 8
  %arrayidx2079 = getelementptr inbounds i8, i8* %968, i64 %969
  %970 = load i8, i8* %arrayidx2079, align 1
  %conv2080 = zext i8 %970 to i32
  %shr2081 = ashr i32 %conv2080, 4
  %idxprom2082 = sext i32 %shr2081 to i64
  %arrayidx2083 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2078, i64 0, i64 %idxprom2082
  %971 = load i16, i16* %arrayidx2083, align 2
  %conv2084 = zext i16 %971 to i32
  %972 = load i8*, i8** %text.addr, align 8
  %973 = load i64, i64* %i, align 8
  %arrayidx2085 = getelementptr inbounds i8, i8* %972, i64 %973
  %974 = load i8, i8* %arrayidx2085, align 1
  %conv2086 = zext i8 %974 to i32
  %and2087 = and i32 %conv2086, 15
  %shl2088 = shl i32 1, %and2087
  %and2089 = and i32 %conv2084, %shl2088
  %tobool2090 = icmp ne i32 %and2089, 0
  %lnot2091 = xor i1 %tobool2090, true
  %lnot2093 = xor i1 %lnot2091, true
  br label %land.end2095

land.end2095:                                     ; preds = %land.rhs2075, %land.lhs.true2070, %while.cond2063
  %975 = phi i1 [ false, %land.lhs.true2070 ], [ false, %while.cond2063 ], [ %lnot2093, %land.rhs2075 ]
  br i1 %975, label %while.body2096, label %while.end2099

while.body2096:                                   ; preds = %land.end2095
  %976 = load i64, i64* %i, align 8
  %add2097 = add i64 %976, 1
  store i64 %add2097, i64* %i, align 8
  %977 = load i64, i64* %n2062, align 8
  %add2098 = add i64 %977, 1
  store i64 %add2098, i64* %n2062, align 8
  br label %while.cond2063, !llvm.loop !36

while.end2099:                                    ; preds = %land.end2095
  %978 = load i64, i64* %n2062, align 8
  %979 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %980 = load i32, i32* %k, align 4
  %idxprom2100 = zext i32 %980 to i64
  %arrayidx2101 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %979, i64 %idxprom2100
  %count_lo2102 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2101, i32 0, i32 2
  %981 = load i16, i16* %count_lo2102, align 2
  %conv2103 = zext i16 %981 to i64
  %cmp2104 = icmp ult i64 %978, %conv2103
  br i1 %cmp2104, label %if.then2106, label %if.end2178

if.then2106:                                      ; preds = %while.end2099
  %982 = load i64, i64* %old_i, align 8
  store i64 %982, i64* %i, align 8
  %983 = load i16, i16* %stack_n, align 2
  %conv2107 = zext i16 %983 to i32
  %cmp2108 = icmp eq i32 %conv2107, 0
  br i1 %cmp2108, label %if.then2110, label %if.end2111

if.then2110:                                      ; preds = %if.then2106
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2111:                                       ; preds = %if.then2106
  %984 = load i16, i16* %stack_n, align 2
  %conv2112 = zext i16 %984 to i32
  %sub2113 = sub nsw i32 %conv2112, 1
  %conv2114 = trunc i32 %sub2113 to i16
  store i16 %conv2114, i16* %stack_n, align 2
  br label %while.cond2115

while.cond2115:                                   ; preds = %while.body2126, %if.end2111
  %985 = load i16, i16* %stack_n, align 2
  %conv2116 = zext i16 %985 to i32
  %cmp2117 = icmp sgt i32 %conv2116, 0
  br i1 %cmp2117, label %land.rhs2119, label %land.end2125

land.rhs2119:                                     ; preds = %while.cond2115
  %986 = load i16, i16* %stack_n, align 2
  %idxprom2120 = zext i16 %986 to i64
  %arrayidx2121 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2120
  %prev2122 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2121, i32 0, i32 2
  %987 = load i32, i32* %prev2122, align 8
  %cmp2123 = icmp eq i32 %987, 64199
  br label %land.end2125

land.end2125:                                     ; preds = %land.rhs2119, %while.cond2115
  %988 = phi i1 [ false, %while.cond2115 ], [ %cmp2123, %land.rhs2119 ]
  br i1 %988, label %while.body2126, label %while.end2130

while.body2126:                                   ; preds = %land.end2125
  %989 = load i16, i16* %stack_n, align 2
  %conv2127 = zext i16 %989 to i32
  %sub2128 = sub nsw i32 %conv2127, 1
  %conv2129 = trunc i32 %sub2128 to i16
  store i16 %conv2129, i16* %stack_n, align 2
  br label %while.cond2115, !llvm.loop !37

while.end2130:                                    ; preds = %land.end2125
  store i8 1, i8* %just_rewinded, align 1
  %990 = load i16, i16* %stack_n, align 2
  %idxprom2131 = zext i16 %990 to i64
  %arrayidx2132 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2131
  %range_min2133 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2132, i32 0, i32 4
  %991 = load i64, i64* %range_min2133, align 8
  store i64 %991, i64* %range_min, align 8
  %992 = load i16, i16* %stack_n, align 2
  %idxprom2134 = zext i16 %992 to i64
  %arrayidx2135 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2134
  %range_max2136 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2135, i32 0, i32 5
  %993 = load i64, i64* %range_max2136, align 8
  store i64 %993, i64* %range_max, align 8
  %994 = load i16, i16* %stack_n, align 2
  %idxprom2137 = zext i16 %994 to i64
  %arrayidx2138 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2137
  %i2139 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2138, i32 0, i32 3
  %995 = load i64, i64* %i2139, align 8
  %996 = load i64, i64* %i, align 8
  %cmp2140 = icmp ule i64 %995, %996
  br i1 %cmp2140, label %if.then2142, label %if.else2143

if.then2142:                                      ; preds = %while.end2130
  br label %if.end2144

if.else2143:                                      ; preds = %while.end2130
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1278, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end2144:                                       ; preds = %if.then2142
  %997 = load i16, i16* %stack_n, align 2
  %idxprom2145 = zext i16 %997 to i64
  %arrayidx2146 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2145
  %i2147 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2146, i32 0, i32 3
  %998 = load i64, i64* %i2147, align 8
  store i64 %998, i64* %i, align 8
  %999 = load i16, i16* %stack_n, align 2
  %idxprom2148 = zext i16 %999 to i64
  %arrayidx2149 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2148
  %k2150 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2149, i32 0, i32 0
  %1000 = load i32, i32* %k2150, align 8
  store i32 %1000, i32* %k, align 4
  %1001 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1002 = load i32, i32* %k, align 4
  %idxprom2151 = zext i32 %1002 to i64
  %arrayidx2152 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1001, i64 %idxprom2151
  %kind2153 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2152, i32 0, i32 0
  %1003 = load i8, i8* %kind2153, align 2
  %conv2154 = zext i8 %1003 to i32
  %cmp2155 = icmp eq i32 %conv2154, 3
  br i1 %cmp2155, label %if.then2157, label %if.end2176

if.then2157:                                      ; preds = %if.end2144
  %1004 = load i16, i16* %stack_n, align 2
  %idxprom2158 = zext i16 %1004 to i64
  %arrayidx2159 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2158
  %group_state2160 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2159, i32 0, i32 1
  %1005 = load i32, i32* %group_state2160, align 4
  %1006 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1007 = load i32, i32* %k, align 4
  %idxprom2161 = zext i32 %1007 to i64
  %arrayidx2162 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1006, i64 %idxprom2161
  %mask2163 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2162, i32 0, i32 4
  %arrayidx2164 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2163, i64 0, i64 0
  %1008 = load i16, i16* %arrayidx2164, align 2
  %idxprom2165 = zext i16 %1008 to i64
  %arrayidx2166 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom2165
  store i32 %1005, i32* %arrayidx2166, align 4
  %1009 = load i16, i16* %stack_n, align 2
  %idxprom2167 = zext i16 %1009 to i64
  %arrayidx2168 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2167
  %prev2169 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2168, i32 0, i32 2
  %1010 = load i32, i32* %prev2169, align 8
  %1011 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1012 = load i32, i32* %k, align 4
  %idxprom2170 = zext i32 %1012 to i64
  %arrayidx2171 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1011, i64 %idxprom2170
  %mask2172 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2171, i32 0, i32 4
  %arrayidx2173 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2172, i64 0, i64 0
  %1013 = load i16, i16* %arrayidx2173, align 2
  %idxprom2174 = zext i16 %1013 to i64
  %arrayidx2175 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2174
  store i32 %1010, i32* %arrayidx2175, align 4
  br label %if.end2176

if.end2176:                                       ; preds = %if.then2157, %if.end2144
  %1014 = load i32, i32* %k, align 4
  %sub2177 = sub i32 %1014, 1
  store i32 %sub2177, i32* %k, align 4
  br label %for.inc

if.end2178:                                       ; preds = %while.end2099
  %1015 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1016 = load i32, i32* %k, align 4
  %idxprom2179 = zext i32 %1016 to i64
  %arrayidx2180 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1015, i64 %idxprom2179
  %mode2181 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2180, i32 0, i32 1
  %1017 = load i8, i8* %mode2181, align 1
  %conv2182 = zext i8 %1017 to i32
  %and2183 = and i32 %conv2182, 2
  %tobool2184 = icmp ne i32 %and2183, 0
  br i1 %tobool2184, label %if.then2185, label %if.else2240

if.then2185:                                      ; preds = %if.end2178
  %1018 = load i64, i64* %n2062, align 8
  store i64 %1018, i64* %range_min, align 8
  %1019 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1020 = load i32, i32* %k, align 4
  %idxprom2186 = zext i32 %1020 to i64
  %arrayidx2187 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1019, i64 %idxprom2186
  %count_hi2188 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2187, i32 0, i32 3
  %1021 = load i16, i16* %count_hi2188, align 2
  %conv2189 = zext i16 %1021 to i32
  %sub2190 = sub nsw i32 %conv2189, 1
  %conv2191 = sext i32 %sub2190 to i64
  store i64 %conv2191, i64* %range_max, align 8
  %1022 = load i16, i16* %stack_n, align 2
  %conv2192 = zext i16 %1022 to i32
  %cmp2193 = icmp sge i32 %conv2192, 1024
  br i1 %cmp2193, label %if.then2195, label %if.end2197

if.then2195:                                      ; preds = %if.then2185
  %call2196 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2197:                                       ; preds = %if.then2185
  %1023 = bitcast %struct._RegexMatcherState* %s2198 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1023, i8 0, i64 40, i1 false)
  %1024 = load i64, i64* %i, align 8
  %i2199 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 3
  store i64 %1024, i64* %i2199, align 8
  %1025 = load i32, i32* %k, align 4
  %k2200 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 0
  store i32 %1025, i32* %k2200, align 8
  %1026 = load i64, i64* %range_min, align 8
  %range_min2201 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 4
  store i64 %1026, i64* %range_min2201, align 8
  %1027 = load i64, i64* %range_max, align 8
  %range_max2202 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 5
  store i64 %1027, i64* %range_max2202, align 8
  %prev2203 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 2
  store i32 0, i32* %prev2203, align 8
  %1028 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2204 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 0
  %1029 = load i32, i32* %k2204, align 8
  %idxprom2205 = zext i32 %1029 to i64
  %arrayidx2206 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1028, i64 %idxprom2205
  %kind2207 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2206, i32 0, i32 0
  %1030 = load i8, i8* %kind2207, align 2
  %conv2208 = zext i8 %1030 to i32
  %cmp2209 = icmp eq i32 %conv2208, 3
  br i1 %cmp2209, label %if.then2211, label %if.end2236

if.then2211:                                      ; preds = %if.end2197
  %1031 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2212 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 0
  %1032 = load i32, i32* %k2212, align 8
  %idxprom2213 = zext i32 %1032 to i64
  %arrayidx2214 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1031, i64 %idxprom2213
  %mask2215 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2214, i32 0, i32 4
  %arrayidx2216 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2215, i64 0, i64 0
  %1033 = load i16, i16* %arrayidx2216, align 2
  %idxprom2217 = zext i16 %1033 to i64
  %arrayidx2218 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom2217
  %1034 = load i32, i32* %arrayidx2218, align 4
  %group_state2219 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 1
  store i32 %1034, i32* %group_state2219, align 4
  %1035 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2220 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 0
  %1036 = load i32, i32* %k2220, align 8
  %idxprom2221 = zext i32 %1036 to i64
  %arrayidx2222 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1035, i64 %idxprom2221
  %mask2223 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2222, i32 0, i32 4
  %arrayidx2224 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2223, i64 0, i64 0
  %1037 = load i16, i16* %arrayidx2224, align 2
  %idxprom2225 = zext i16 %1037 to i64
  %arrayidx2226 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2225
  %1038 = load i32, i32* %arrayidx2226, align 4
  %prev2227 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 2
  store i32 %1038, i32* %prev2227, align 8
  %1039 = load i16, i16* %stack_n, align 2
  %conv2228 = zext i16 %1039 to i32
  %1040 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2229 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2198, i32 0, i32 0
  %1041 = load i32, i32* %k2229, align 8
  %idxprom2230 = zext i32 %1041 to i64
  %arrayidx2231 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1040, i64 %idxprom2230
  %mask2232 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2231, i32 0, i32 4
  %arrayidx2233 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2232, i64 0, i64 0
  %1042 = load i16, i16* %arrayidx2233, align 2
  %idxprom2234 = zext i16 %1042 to i64
  %arrayidx2235 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2234
  store i32 %conv2228, i32* %arrayidx2235, align 4
  br label %if.end2236

if.end2236:                                       ; preds = %if.then2211, %if.end2197
  %1043 = load i16, i16* %stack_n, align 2
  %inc2237 = add i16 %1043, 1
  store i16 %inc2237, i16* %stack_n, align 2
  %idxprom2238 = zext i16 %1043 to i64
  %arrayidx2239 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2238
  %1044 = bitcast %struct._RegexMatcherState* %arrayidx2239 to i8*
  %1045 = bitcast %struct._RegexMatcherState* %s2198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1044, i8* align 8 %1045, i64 40, i1 false)
  br label %if.end2336

if.else2240:                                      ; preds = %if.end2178
  %1046 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1047 = load i32, i32* %k, align 4
  %idxprom2242 = zext i32 %1047 to i64
  %arrayidx2243 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1046, i64 %idxprom2242
  %count_hi2244 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2243, i32 0, i32 3
  %1048 = load i16, i16* %count_hi2244, align 2
  %conv2245 = zext i16 %1048 to i64
  store i64 %conv2245, i64* %limit2241, align 8
  %1049 = load i64, i64* %limit2241, align 8
  %cmp2246 = icmp eq i64 %1049, 0
  br i1 %cmp2246, label %if.then2248, label %if.end2249

if.then2248:                                      ; preds = %if.else2240
  %1050 = load i64, i64* %limit2241, align 8
  %neg = xor i64 %1050, -1
  store i64 %neg, i64* %limit2241, align 8
  br label %if.end2249

if.end2249:                                       ; preds = %if.then2248, %if.else2240
  %1051 = load i64, i64* %n2062, align 8
  store i64 %1051, i64* %range_min, align 8
  br label %while.cond2250

while.cond2250:                                   ; preds = %while.body2276, %if.end2249
  %1052 = load i8*, i8** %text.addr, align 8
  %1053 = load i64, i64* %i, align 8
  %arrayidx2251 = getelementptr inbounds i8, i8* %1052, i64 %1053
  %1054 = load i8, i8* %arrayidx2251, align 1
  %conv2252 = sext i8 %1054 to i32
  %cmp2253 = icmp ne i32 %conv2252, 0
  br i1 %cmp2253, label %land.lhs.true2255, label %land.end2275

land.lhs.true2255:                                ; preds = %while.cond2250
  %1055 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1056 = load i32, i32* %k, align 4
  %idxprom2256 = zext i32 %1056 to i64
  %arrayidx2257 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1055, i64 %idxprom2256
  %mask2258 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2257, i32 0, i32 4
  %1057 = load i8*, i8** %text.addr, align 8
  %1058 = load i64, i64* %i, align 8
  %arrayidx2259 = getelementptr inbounds i8, i8* %1057, i64 %1058
  %1059 = load i8, i8* %arrayidx2259, align 1
  %conv2260 = zext i8 %1059 to i32
  %shr2261 = ashr i32 %conv2260, 4
  %idxprom2262 = sext i32 %shr2261 to i64
  %arrayidx2263 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2258, i64 0, i64 %idxprom2262
  %1060 = load i16, i16* %arrayidx2263, align 2
  %conv2264 = zext i16 %1060 to i32
  %1061 = load i8*, i8** %text.addr, align 8
  %1062 = load i64, i64* %i, align 8
  %arrayidx2265 = getelementptr inbounds i8, i8* %1061, i64 %1062
  %1063 = load i8, i8* %arrayidx2265, align 1
  %conv2266 = zext i8 %1063 to i32
  %and2267 = and i32 %conv2266, 15
  %shl2268 = shl i32 1, %and2267
  %and2269 = and i32 %conv2264, %shl2268
  %tobool2270 = icmp ne i32 %and2269, 0
  br i1 %tobool2270, label %land.rhs2271, label %land.end2275

land.rhs2271:                                     ; preds = %land.lhs.true2255
  %1064 = load i64, i64* %n2062, align 8
  %add2272 = add i64 %1064, 1
  %1065 = load i64, i64* %limit2241, align 8
  %cmp2273 = icmp ult i64 %add2272, %1065
  br label %land.end2275

land.end2275:                                     ; preds = %land.rhs2271, %land.lhs.true2255, %while.cond2250
  %1066 = phi i1 [ false, %land.lhs.true2255 ], [ false, %while.cond2250 ], [ %cmp2273, %land.rhs2271 ]
  br i1 %1066, label %while.body2276, label %while.end2279

while.body2276:                                   ; preds = %land.end2275
  %1067 = load i64, i64* %i, align 8
  %add2277 = add i64 %1067, 1
  store i64 %add2277, i64* %i, align 8
  %1068 = load i64, i64* %n2062, align 8
  %add2278 = add i64 %1068, 1
  store i64 %add2278, i64* %n2062, align 8
  br label %while.cond2250, !llvm.loop !38

while.end2279:                                    ; preds = %land.end2275
  %1069 = load i64, i64* %n2062, align 8
  store i64 %1069, i64* %range_max, align 8
  %1070 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1071 = load i32, i32* %k, align 4
  %idxprom2280 = zext i32 %1071 to i64
  %arrayidx2281 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1070, i64 %idxprom2280
  %mode2282 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2281, i32 0, i32 1
  %1072 = load i8, i8* %mode2282, align 1
  %conv2283 = zext i8 %1072 to i32
  %and2284 = and i32 %conv2283, 1
  %tobool2285 = icmp ne i32 %and2284, 0
  br i1 %tobool2285, label %if.end2335, label %if.then2286

if.then2286:                                      ; preds = %while.end2279
  %1073 = load i16, i16* %stack_n, align 2
  %conv2287 = zext i16 %1073 to i32
  %cmp2288 = icmp sge i32 %conv2287, 1024
  br i1 %cmp2288, label %if.then2290, label %if.end2292

if.then2290:                                      ; preds = %if.then2286
  %call2291 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2292:                                       ; preds = %if.then2286
  %1074 = bitcast %struct._RegexMatcherState* %s2293 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1074, i8 0, i64 40, i1 false)
  %1075 = load i64, i64* %i, align 8
  %i2294 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 3
  store i64 %1075, i64* %i2294, align 8
  %1076 = load i32, i32* %k, align 4
  %k2295 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 0
  store i32 %1076, i32* %k2295, align 8
  %1077 = load i64, i64* %range_min, align 8
  %range_min2296 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 4
  store i64 %1077, i64* %range_min2296, align 8
  %1078 = load i64, i64* %range_max, align 8
  %range_max2297 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 5
  store i64 %1078, i64* %range_max2297, align 8
  %prev2298 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 2
  store i32 0, i32* %prev2298, align 8
  %1079 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2299 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 0
  %1080 = load i32, i32* %k2299, align 8
  %idxprom2300 = zext i32 %1080 to i64
  %arrayidx2301 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1079, i64 %idxprom2300
  %kind2302 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2301, i32 0, i32 0
  %1081 = load i8, i8* %kind2302, align 2
  %conv2303 = zext i8 %1081 to i32
  %cmp2304 = icmp eq i32 %conv2303, 3
  br i1 %cmp2304, label %if.then2306, label %if.end2331

if.then2306:                                      ; preds = %if.end2292
  %1082 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2307 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 0
  %1083 = load i32, i32* %k2307, align 8
  %idxprom2308 = zext i32 %1083 to i64
  %arrayidx2309 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1082, i64 %idxprom2308
  %mask2310 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2309, i32 0, i32 4
  %arrayidx2311 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2310, i64 0, i64 0
  %1084 = load i16, i16* %arrayidx2311, align 2
  %idxprom2312 = zext i16 %1084 to i64
  %arrayidx2313 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom2312
  %1085 = load i32, i32* %arrayidx2313, align 4
  %group_state2314 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 1
  store i32 %1085, i32* %group_state2314, align 4
  %1086 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2315 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 0
  %1087 = load i32, i32* %k2315, align 8
  %idxprom2316 = zext i32 %1087 to i64
  %arrayidx2317 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1086, i64 %idxprom2316
  %mask2318 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2317, i32 0, i32 4
  %arrayidx2319 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2318, i64 0, i64 0
  %1088 = load i16, i16* %arrayidx2319, align 2
  %idxprom2320 = zext i16 %1088 to i64
  %arrayidx2321 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2320
  %1089 = load i32, i32* %arrayidx2321, align 4
  %prev2322 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 2
  store i32 %1089, i32* %prev2322, align 8
  %1090 = load i16, i16* %stack_n, align 2
  %conv2323 = zext i16 %1090 to i32
  %1091 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2324 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2293, i32 0, i32 0
  %1092 = load i32, i32* %k2324, align 8
  %idxprom2325 = zext i32 %1092 to i64
  %arrayidx2326 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1091, i64 %idxprom2325
  %mask2327 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2326, i32 0, i32 4
  %arrayidx2328 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2327, i64 0, i64 0
  %1093 = load i16, i16* %arrayidx2328, align 2
  %idxprom2329 = zext i16 %1093 to i64
  %arrayidx2330 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2329
  store i32 %conv2323, i32* %arrayidx2330, align 4
  br label %if.end2331

if.end2331:                                       ; preds = %if.then2306, %if.end2292
  %1094 = load i16, i16* %stack_n, align 2
  %inc2332 = add i16 %1094, 1
  store i16 %inc2332, i16* %stack_n, align 2
  %idxprom2333 = zext i16 %1094 to i64
  %arrayidx2334 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2333
  %1095 = bitcast %struct._RegexMatcherState* %arrayidx2334 to i8*
  %1096 = bitcast %struct._RegexMatcherState* %s2293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1095, i8* align 8 %1096, i64 40, i1 false)
  br label %if.end2335

if.end2335:                                       ; preds = %if.end2331, %while.end2279
  br label %if.end2336

if.end2336:                                       ; preds = %if.end2335, %if.end2236
  br label %if.end2626

if.else2337:                                      ; preds = %if.then2059
  store i8 0, i8* %just_rewinded, align 1
  %1097 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1098 = load i32, i32* %k, align 4
  %idxprom2338 = zext i32 %1098 to i64
  %arrayidx2339 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1097, i64 %idxprom2338
  %mode2340 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2339, i32 0, i32 1
  %1099 = load i8, i8* %mode2340, align 1
  %conv2341 = zext i8 %1099 to i32
  %and2342 = and i32 %conv2341, 2
  %tobool2343 = icmp ne i32 %and2342, 0
  br i1 %tobool2343, label %if.then2344, label %if.else2498

if.then2344:                                      ; preds = %if.else2337
  %1100 = load i64, i64* %range_max, align 8
  store i64 %1100, i64* %limit2345, align 8
  %1101 = load i64, i64* %limit2345, align 8
  %cmp2346 = icmp eq i64 %1101, 0
  br i1 %cmp2346, label %if.then2348, label %if.end2350

if.then2348:                                      ; preds = %if.then2344
  %1102 = load i64, i64* %limit2345, align 8
  %neg2349 = xor i64 %1102, -1
  store i64 %neg2349, i64* %limit2345, align 8
  br label %if.end2350

if.end2350:                                       ; preds = %if.then2348, %if.then2344
  %1103 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1104 = load i32, i32* %k, align 4
  %idxprom2351 = zext i32 %1104 to i64
  %arrayidx2352 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1103, i64 %idxprom2351
  %mask2353 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2352, i32 0, i32 4
  %1105 = load i8*, i8** %text.addr, align 8
  %1106 = load i64, i64* %i, align 8
  %arrayidx2354 = getelementptr inbounds i8, i8* %1105, i64 %1106
  %1107 = load i8, i8* %arrayidx2354, align 1
  %conv2355 = zext i8 %1107 to i32
  %shr2356 = ashr i32 %conv2355, 4
  %idxprom2357 = sext i32 %shr2356 to i64
  %arrayidx2358 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2353, i64 0, i64 %idxprom2357
  %1108 = load i16, i16* %arrayidx2358, align 2
  %conv2359 = zext i16 %1108 to i32
  %1109 = load i8*, i8** %text.addr, align 8
  %1110 = load i64, i64* %i, align 8
  %arrayidx2360 = getelementptr inbounds i8, i8* %1109, i64 %1110
  %1111 = load i8, i8* %arrayidx2360, align 1
  %conv2361 = zext i8 %1111 to i32
  %and2362 = and i32 %conv2361, 15
  %shl2363 = shl i32 1, %and2362
  %and2364 = and i32 %conv2359, %shl2363
  %tobool2365 = icmp ne i32 %and2364, 0
  br i1 %tobool2365, label %land.lhs.true2366, label %if.else2425

land.lhs.true2366:                                ; preds = %if.end2350
  %1112 = load i8*, i8** %text.addr, align 8
  %1113 = load i64, i64* %i, align 8
  %arrayidx2367 = getelementptr inbounds i8, i8* %1112, i64 %1113
  %1114 = load i8, i8* %arrayidx2367, align 1
  %conv2368 = sext i8 %1114 to i32
  %cmp2369 = icmp ne i32 %conv2368, 0
  br i1 %cmp2369, label %land.lhs.true2371, label %if.else2425

land.lhs.true2371:                                ; preds = %land.lhs.true2366
  %1115 = load i64, i64* %range_min, align 8
  %1116 = load i64, i64* %limit2345, align 8
  %cmp2372 = icmp ult i64 %1115, %1116
  br i1 %cmp2372, label %if.then2374, label %if.else2425

if.then2374:                                      ; preds = %land.lhs.true2371
  %1117 = load i64, i64* %i, align 8
  %add2375 = add i64 %1117, 1
  store i64 %add2375, i64* %i, align 8
  %1118 = load i64, i64* %range_min, align 8
  %add2376 = add i64 %1118, 1
  store i64 %add2376, i64* %range_min, align 8
  %1119 = load i16, i16* %stack_n, align 2
  %conv2377 = zext i16 %1119 to i32
  %cmp2378 = icmp sge i32 %conv2377, 1024
  br i1 %cmp2378, label %if.then2380, label %if.end2382

if.then2380:                                      ; preds = %if.then2374
  %call2381 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2382:                                       ; preds = %if.then2374
  %1120 = bitcast %struct._RegexMatcherState* %s2383 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1120, i8 0, i64 40, i1 false)
  %1121 = load i64, i64* %i, align 8
  %i2384 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 3
  store i64 %1121, i64* %i2384, align 8
  %1122 = load i32, i32* %k, align 4
  %k2385 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 0
  store i32 %1122, i32* %k2385, align 8
  %1123 = load i64, i64* %range_min, align 8
  %range_min2386 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 4
  store i64 %1123, i64* %range_min2386, align 8
  %1124 = load i64, i64* %range_max, align 8
  %range_max2387 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 5
  store i64 %1124, i64* %range_max2387, align 8
  %prev2388 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 2
  store i32 0, i32* %prev2388, align 8
  %1125 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2389 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 0
  %1126 = load i32, i32* %k2389, align 8
  %idxprom2390 = zext i32 %1126 to i64
  %arrayidx2391 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1125, i64 %idxprom2390
  %kind2392 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2391, i32 0, i32 0
  %1127 = load i8, i8* %kind2392, align 2
  %conv2393 = zext i8 %1127 to i32
  %cmp2394 = icmp eq i32 %conv2393, 3
  br i1 %cmp2394, label %if.then2396, label %if.end2421

if.then2396:                                      ; preds = %if.end2382
  %1128 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2397 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 0
  %1129 = load i32, i32* %k2397, align 8
  %idxprom2398 = zext i32 %1129 to i64
  %arrayidx2399 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1128, i64 %idxprom2398
  %mask2400 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2399, i32 0, i32 4
  %arrayidx2401 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2400, i64 0, i64 0
  %1130 = load i16, i16* %arrayidx2401, align 2
  %idxprom2402 = zext i16 %1130 to i64
  %arrayidx2403 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom2402
  %1131 = load i32, i32* %arrayidx2403, align 4
  %group_state2404 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 1
  store i32 %1131, i32* %group_state2404, align 4
  %1132 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2405 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 0
  %1133 = load i32, i32* %k2405, align 8
  %idxprom2406 = zext i32 %1133 to i64
  %arrayidx2407 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1132, i64 %idxprom2406
  %mask2408 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2407, i32 0, i32 4
  %arrayidx2409 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2408, i64 0, i64 0
  %1134 = load i16, i16* %arrayidx2409, align 2
  %idxprom2410 = zext i16 %1134 to i64
  %arrayidx2411 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2410
  %1135 = load i32, i32* %arrayidx2411, align 4
  %prev2412 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 2
  store i32 %1135, i32* %prev2412, align 8
  %1136 = load i16, i16* %stack_n, align 2
  %conv2413 = zext i16 %1136 to i32
  %1137 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2414 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2383, i32 0, i32 0
  %1138 = load i32, i32* %k2414, align 8
  %idxprom2415 = zext i32 %1138 to i64
  %arrayidx2416 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1137, i64 %idxprom2415
  %mask2417 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2416, i32 0, i32 4
  %arrayidx2418 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2417, i64 0, i64 0
  %1139 = load i16, i16* %arrayidx2418, align 2
  %idxprom2419 = zext i16 %1139 to i64
  %arrayidx2420 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2419
  store i32 %conv2413, i32* %arrayidx2420, align 4
  br label %if.end2421

if.end2421:                                       ; preds = %if.then2396, %if.end2382
  %1140 = load i16, i16* %stack_n, align 2
  %inc2422 = add i16 %1140, 1
  store i16 %inc2422, i16* %stack_n, align 2
  %idxprom2423 = zext i16 %1140 to i64
  %arrayidx2424 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2423
  %1141 = bitcast %struct._RegexMatcherState* %arrayidx2424 to i8*
  %1142 = bitcast %struct._RegexMatcherState* %s2383 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1141, i8* align 8 %1142, i64 40, i1 false)
  br label %if.end2497

if.else2425:                                      ; preds = %land.lhs.true2371, %land.lhs.true2366, %if.end2350
  %1143 = load i16, i16* %stack_n, align 2
  %conv2426 = zext i16 %1143 to i32
  %cmp2427 = icmp eq i32 %conv2426, 0
  br i1 %cmp2427, label %if.then2429, label %if.end2430

if.then2429:                                      ; preds = %if.else2425
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2430:                                       ; preds = %if.else2425
  %1144 = load i16, i16* %stack_n, align 2
  %conv2431 = zext i16 %1144 to i32
  %sub2432 = sub nsw i32 %conv2431, 1
  %conv2433 = trunc i32 %sub2432 to i16
  store i16 %conv2433, i16* %stack_n, align 2
  br label %while.cond2434

while.cond2434:                                   ; preds = %while.body2445, %if.end2430
  %1145 = load i16, i16* %stack_n, align 2
  %conv2435 = zext i16 %1145 to i32
  %cmp2436 = icmp sgt i32 %conv2435, 0
  br i1 %cmp2436, label %land.rhs2438, label %land.end2444

land.rhs2438:                                     ; preds = %while.cond2434
  %1146 = load i16, i16* %stack_n, align 2
  %idxprom2439 = zext i16 %1146 to i64
  %arrayidx2440 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2439
  %prev2441 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2440, i32 0, i32 2
  %1147 = load i32, i32* %prev2441, align 8
  %cmp2442 = icmp eq i32 %1147, 64199
  br label %land.end2444

land.end2444:                                     ; preds = %land.rhs2438, %while.cond2434
  %1148 = phi i1 [ false, %while.cond2434 ], [ %cmp2442, %land.rhs2438 ]
  br i1 %1148, label %while.body2445, label %while.end2449

while.body2445:                                   ; preds = %land.end2444
  %1149 = load i16, i16* %stack_n, align 2
  %conv2446 = zext i16 %1149 to i32
  %sub2447 = sub nsw i32 %conv2446, 1
  %conv2448 = trunc i32 %sub2447 to i16
  store i16 %conv2448, i16* %stack_n, align 2
  br label %while.cond2434, !llvm.loop !39

while.end2449:                                    ; preds = %land.end2444
  store i8 1, i8* %just_rewinded, align 1
  %1150 = load i16, i16* %stack_n, align 2
  %idxprom2450 = zext i16 %1150 to i64
  %arrayidx2451 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2450
  %range_min2452 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2451, i32 0, i32 4
  %1151 = load i64, i64* %range_min2452, align 8
  store i64 %1151, i64* %range_min, align 8
  %1152 = load i16, i16* %stack_n, align 2
  %idxprom2453 = zext i16 %1152 to i64
  %arrayidx2454 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2453
  %range_max2455 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2454, i32 0, i32 5
  %1153 = load i64, i64* %range_max2455, align 8
  store i64 %1153, i64* %range_max, align 8
  %1154 = load i16, i16* %stack_n, align 2
  %idxprom2456 = zext i16 %1154 to i64
  %arrayidx2457 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2456
  %i2458 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2457, i32 0, i32 3
  %1155 = load i64, i64* %i2458, align 8
  %1156 = load i64, i64* %i, align 8
  %cmp2459 = icmp ule i64 %1155, %1156
  br i1 %cmp2459, label %if.then2461, label %if.else2462

if.then2461:                                      ; preds = %while.end2449
  br label %if.end2463

if.else2462:                                      ; preds = %while.end2449
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1326, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end2463:                                       ; preds = %if.then2461
  %1157 = load i16, i16* %stack_n, align 2
  %idxprom2464 = zext i16 %1157 to i64
  %arrayidx2465 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2464
  %i2466 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2465, i32 0, i32 3
  %1158 = load i64, i64* %i2466, align 8
  store i64 %1158, i64* %i, align 8
  %1159 = load i16, i16* %stack_n, align 2
  %idxprom2467 = zext i16 %1159 to i64
  %arrayidx2468 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2467
  %k2469 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2468, i32 0, i32 0
  %1160 = load i32, i32* %k2469, align 8
  store i32 %1160, i32* %k, align 4
  %1161 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1162 = load i32, i32* %k, align 4
  %idxprom2470 = zext i32 %1162 to i64
  %arrayidx2471 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1161, i64 %idxprom2470
  %kind2472 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2471, i32 0, i32 0
  %1163 = load i8, i8* %kind2472, align 2
  %conv2473 = zext i8 %1163 to i32
  %cmp2474 = icmp eq i32 %conv2473, 3
  br i1 %cmp2474, label %if.then2476, label %if.end2495

if.then2476:                                      ; preds = %if.end2463
  %1164 = load i16, i16* %stack_n, align 2
  %idxprom2477 = zext i16 %1164 to i64
  %arrayidx2478 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2477
  %group_state2479 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2478, i32 0, i32 1
  %1165 = load i32, i32* %group_state2479, align 4
  %1166 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1167 = load i32, i32* %k, align 4
  %idxprom2480 = zext i32 %1167 to i64
  %arrayidx2481 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1166, i64 %idxprom2480
  %mask2482 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2481, i32 0, i32 4
  %arrayidx2483 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2482, i64 0, i64 0
  %1168 = load i16, i16* %arrayidx2483, align 2
  %idxprom2484 = zext i16 %1168 to i64
  %arrayidx2485 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom2484
  store i32 %1165, i32* %arrayidx2485, align 4
  %1169 = load i16, i16* %stack_n, align 2
  %idxprom2486 = zext i16 %1169 to i64
  %arrayidx2487 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2486
  %prev2488 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2487, i32 0, i32 2
  %1170 = load i32, i32* %prev2488, align 8
  %1171 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1172 = load i32, i32* %k, align 4
  %idxprom2489 = zext i32 %1172 to i64
  %arrayidx2490 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1171, i64 %idxprom2489
  %mask2491 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2490, i32 0, i32 4
  %arrayidx2492 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2491, i64 0, i64 0
  %1173 = load i16, i16* %arrayidx2492, align 2
  %idxprom2493 = zext i16 %1173 to i64
  %arrayidx2494 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2493
  store i32 %1170, i32* %arrayidx2494, align 4
  br label %if.end2495

if.end2495:                                       ; preds = %if.then2476, %if.end2463
  %1174 = load i32, i32* %k, align 4
  %sub2496 = sub i32 %1174, 1
  store i32 %sub2496, i32* %k, align 4
  br label %if.end2497

if.end2497:                                       ; preds = %if.end2495, %if.end2421
  br label %if.end2625

if.else2498:                                      ; preds = %if.else2337
  %1175 = load i64, i64* %range_max, align 8
  %1176 = load i64, i64* %range_min, align 8
  %cmp2499 = icmp ugt i64 %1175, %1176
  br i1 %cmp2499, label %if.then2501, label %if.else2552

if.then2501:                                      ; preds = %if.else2498
  %1177 = load i64, i64* %i, align 8
  %sub2502 = sub i64 %1177, 1
  store i64 %sub2502, i64* %i, align 8
  %1178 = load i64, i64* %range_max, align 8
  %sub2503 = sub i64 %1178, 1
  store i64 %sub2503, i64* %range_max, align 8
  %1179 = load i16, i16* %stack_n, align 2
  %conv2504 = zext i16 %1179 to i32
  %cmp2505 = icmp sge i32 %conv2504, 1024
  br i1 %cmp2505, label %if.then2507, label %if.end2509

if.then2507:                                      ; preds = %if.then2501
  %call2508 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  store i64 -2, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2509:                                       ; preds = %if.then2501
  %1180 = bitcast %struct._RegexMatcherState* %s2510 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1180, i8 0, i64 40, i1 false)
  %1181 = load i64, i64* %i, align 8
  %i2511 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 3
  store i64 %1181, i64* %i2511, align 8
  %1182 = load i32, i32* %k, align 4
  %k2512 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 0
  store i32 %1182, i32* %k2512, align 8
  %1183 = load i64, i64* %range_min, align 8
  %range_min2513 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 4
  store i64 %1183, i64* %range_min2513, align 8
  %1184 = load i64, i64* %range_max, align 8
  %range_max2514 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 5
  store i64 %1184, i64* %range_max2514, align 8
  %prev2515 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 2
  store i32 0, i32* %prev2515, align 8
  %1185 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2516 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 0
  %1186 = load i32, i32* %k2516, align 8
  %idxprom2517 = zext i32 %1186 to i64
  %arrayidx2518 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1185, i64 %idxprom2517
  %kind2519 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2518, i32 0, i32 0
  %1187 = load i8, i8* %kind2519, align 2
  %conv2520 = zext i8 %1187 to i32
  %cmp2521 = icmp eq i32 %conv2520, 3
  br i1 %cmp2521, label %if.then2523, label %if.end2548

if.then2523:                                      ; preds = %if.end2509
  %1188 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2524 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 0
  %1189 = load i32, i32* %k2524, align 8
  %idxprom2525 = zext i32 %1189 to i64
  %arrayidx2526 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1188, i64 %idxprom2525
  %mask2527 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2526, i32 0, i32 4
  %arrayidx2528 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2527, i64 0, i64 0
  %1190 = load i16, i16* %arrayidx2528, align 2
  %idxprom2529 = zext i16 %1190 to i64
  %arrayidx2530 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom2529
  %1191 = load i32, i32* %arrayidx2530, align 4
  %group_state2531 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 1
  store i32 %1191, i32* %group_state2531, align 4
  %1192 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2532 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 0
  %1193 = load i32, i32* %k2532, align 8
  %idxprom2533 = zext i32 %1193 to i64
  %arrayidx2534 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1192, i64 %idxprom2533
  %mask2535 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2534, i32 0, i32 4
  %arrayidx2536 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2535, i64 0, i64 0
  %1194 = load i16, i16* %arrayidx2536, align 2
  %idxprom2537 = zext i16 %1194 to i64
  %arrayidx2538 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2537
  %1195 = load i32, i32* %arrayidx2538, align 4
  %prev2539 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 2
  store i32 %1195, i32* %prev2539, align 8
  %1196 = load i16, i16* %stack_n, align 2
  %conv2540 = zext i16 %1196 to i32
  %1197 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2541 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2510, i32 0, i32 0
  %1198 = load i32, i32* %k2541, align 8
  %idxprom2542 = zext i32 %1198 to i64
  %arrayidx2543 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1197, i64 %idxprom2542
  %mask2544 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2543, i32 0, i32 4
  %arrayidx2545 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2544, i64 0, i64 0
  %1199 = load i16, i16* %arrayidx2545, align 2
  %idxprom2546 = zext i16 %1199 to i64
  %arrayidx2547 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2546
  store i32 %conv2540, i32* %arrayidx2547, align 4
  br label %if.end2548

if.end2548:                                       ; preds = %if.then2523, %if.end2509
  %1200 = load i16, i16* %stack_n, align 2
  %inc2549 = add i16 %1200, 1
  store i16 %inc2549, i16* %stack_n, align 2
  %idxprom2550 = zext i16 %1200 to i64
  %arrayidx2551 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2550
  %1201 = bitcast %struct._RegexMatcherState* %arrayidx2551 to i8*
  %1202 = bitcast %struct._RegexMatcherState* %s2510 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1201, i8* align 8 %1202, i64 40, i1 false)
  br label %if.end2624

if.else2552:                                      ; preds = %if.else2498
  %1203 = load i16, i16* %stack_n, align 2
  %conv2553 = zext i16 %1203 to i32
  %cmp2554 = icmp eq i32 %conv2553, 0
  br i1 %cmp2554, label %if.then2556, label %if.end2557

if.then2556:                                      ; preds = %if.else2552
  store i64 -1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2557:                                       ; preds = %if.else2552
  %1204 = load i16, i16* %stack_n, align 2
  %conv2558 = zext i16 %1204 to i32
  %sub2559 = sub nsw i32 %conv2558, 1
  %conv2560 = trunc i32 %sub2559 to i16
  store i16 %conv2560, i16* %stack_n, align 2
  br label %while.cond2561

while.cond2561:                                   ; preds = %while.body2572, %if.end2557
  %1205 = load i16, i16* %stack_n, align 2
  %conv2562 = zext i16 %1205 to i32
  %cmp2563 = icmp sgt i32 %conv2562, 0
  br i1 %cmp2563, label %land.rhs2565, label %land.end2571

land.rhs2565:                                     ; preds = %while.cond2561
  %1206 = load i16, i16* %stack_n, align 2
  %idxprom2566 = zext i16 %1206 to i64
  %arrayidx2567 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2566
  %prev2568 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2567, i32 0, i32 2
  %1207 = load i32, i32* %prev2568, align 8
  %cmp2569 = icmp eq i32 %1207, 64199
  br label %land.end2571

land.end2571:                                     ; preds = %land.rhs2565, %while.cond2561
  %1208 = phi i1 [ false, %while.cond2561 ], [ %cmp2569, %land.rhs2565 ]
  br i1 %1208, label %while.body2572, label %while.end2576

while.body2572:                                   ; preds = %land.end2571
  %1209 = load i16, i16* %stack_n, align 2
  %conv2573 = zext i16 %1209 to i32
  %sub2574 = sub nsw i32 %conv2573, 1
  %conv2575 = trunc i32 %sub2574 to i16
  store i16 %conv2575, i16* %stack_n, align 2
  br label %while.cond2561, !llvm.loop !40

while.end2576:                                    ; preds = %land.end2571
  store i8 1, i8* %just_rewinded, align 1
  %1210 = load i16, i16* %stack_n, align 2
  %idxprom2577 = zext i16 %1210 to i64
  %arrayidx2578 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2577
  %range_min2579 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2578, i32 0, i32 4
  %1211 = load i64, i64* %range_min2579, align 8
  store i64 %1211, i64* %range_min, align 8
  %1212 = load i16, i16* %stack_n, align 2
  %idxprom2580 = zext i16 %1212 to i64
  %arrayidx2581 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2580
  %range_max2582 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2581, i32 0, i32 5
  %1213 = load i64, i64* %range_max2582, align 8
  store i64 %1213, i64* %range_max, align 8
  %1214 = load i16, i16* %stack_n, align 2
  %idxprom2583 = zext i16 %1214 to i64
  %arrayidx2584 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2583
  %i2585 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2584, i32 0, i32 3
  %1215 = load i64, i64* %i2585, align 8
  %1216 = load i64, i64* %i, align 8
  %cmp2586 = icmp ule i64 %1215, %1216
  br i1 %cmp2586, label %if.then2588, label %if.else2589

if.then2588:                                      ; preds = %while.end2576
  br label %if.end2590

if.else2589:                                      ; preds = %while.end2576
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1342, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end2590:                                       ; preds = %if.then2588
  %1217 = load i16, i16* %stack_n, align 2
  %idxprom2591 = zext i16 %1217 to i64
  %arrayidx2592 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2591
  %i2593 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2592, i32 0, i32 3
  %1218 = load i64, i64* %i2593, align 8
  store i64 %1218, i64* %i, align 8
  %1219 = load i16, i16* %stack_n, align 2
  %idxprom2594 = zext i16 %1219 to i64
  %arrayidx2595 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2594
  %k2596 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2595, i32 0, i32 0
  %1220 = load i32, i32* %k2596, align 8
  store i32 %1220, i32* %k, align 4
  %1221 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1222 = load i32, i32* %k, align 4
  %idxprom2597 = zext i32 %1222 to i64
  %arrayidx2598 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1221, i64 %idxprom2597
  %kind2599 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2598, i32 0, i32 0
  %1223 = load i8, i8* %kind2599, align 2
  %conv2600 = zext i8 %1223 to i32
  %cmp2601 = icmp eq i32 %conv2600, 3
  br i1 %cmp2601, label %if.then2603, label %if.end2622

if.then2603:                                      ; preds = %if.end2590
  %1224 = load i16, i16* %stack_n, align 2
  %idxprom2604 = zext i16 %1224 to i64
  %arrayidx2605 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2604
  %group_state2606 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2605, i32 0, i32 1
  %1225 = load i32, i32* %group_state2606, align 4
  %1226 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1227 = load i32, i32* %k, align 4
  %idxprom2607 = zext i32 %1227 to i64
  %arrayidx2608 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1226, i64 %idxprom2607
  %mask2609 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2608, i32 0, i32 4
  %arrayidx2610 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2609, i64 0, i64 0
  %1228 = load i16, i16* %arrayidx2610, align 2
  %idxprom2611 = zext i16 %1228 to i64
  %arrayidx2612 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom2611
  store i32 %1225, i32* %arrayidx2612, align 4
  %1229 = load i16, i16* %stack_n, align 2
  %idxprom2613 = zext i16 %1229 to i64
  %arrayidx2614 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %idxprom2613
  %prev2615 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %arrayidx2614, i32 0, i32 2
  %1230 = load i32, i32* %prev2615, align 8
  %1231 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1232 = load i32, i32* %k, align 4
  %idxprom2616 = zext i32 %1232 to i64
  %arrayidx2617 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1231, i64 %idxprom2616
  %mask2618 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2617, i32 0, i32 4
  %arrayidx2619 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2618, i64 0, i64 0
  %1233 = load i16, i16* %arrayidx2619, align 2
  %idxprom2620 = zext i16 %1233 to i64
  %arrayidx2621 = getelementptr inbounds i32, i32* %vla3, i64 %idxprom2620
  store i32 %1230, i32* %arrayidx2621, align 4
  br label %if.end2622

if.end2622:                                       ; preds = %if.then2603, %if.end2590
  %1234 = load i32, i32* %k, align 4
  %sub2623 = sub i32 %1234, 1
  store i32 %sub2623, i32* %k, align 4
  br label %if.end2624

if.end2624:                                       ; preds = %if.end2622, %if.end2548
  br label %if.end2625

if.end2625:                                       ; preds = %if.end2624, %if.end2497
  br label %if.end2626

if.end2626:                                       ; preds = %if.end2625, %if.end2336
  br label %if.end2633

if.else2627:                                      ; preds = %if.else2052
  %1235 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1236 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %1237 = load i32, i32* %k, align 4
  %idxprom2628 = zext i32 %1237 to i64
  %arrayidx2629 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1236, i64 %idxprom2628
  %kind2630 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2629, i32 0, i32 0
  %1238 = load i8, i8* %kind2630, align 2
  %conv2631 = zext i8 %1238 to i32
  %call2632 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1235, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv2631)
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1350, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.regex_match, i64 0, i64 0)) #8
  unreachable

if.end2633:                                       ; preds = %if.end2626
  br label %if.end2634

if.end2634:                                       ; preds = %if.end2633, %if.then2045
  br label %if.end2635

if.end2635:                                       ; preds = %if.end2634, %if.end2037
  br label %if.end2636

if.end2636:                                       ; preds = %if.end2635, %if.end1290
  br label %if.end2637

if.end2637:                                       ; preds = %if.end2636, %if.end878
  br label %if.end2638

if.end2638:                                       ; preds = %if.end2637, %if.end568
  br label %if.end2639

if.end2639:                                       ; preds = %if.end2638
  br label %if.end2640

if.end2640:                                       ; preds = %if.end2639
  br label %for.inc

for.inc:                                          ; preds = %if.end2640, %if.end2176, %if.end1529, %if.end1430, %if.end1223, %if.end1152, %if.end907, %if.end265, %if.end180
  %1239 = load i32, i32* %k, align 4
  %inc2641 = add i32 %1239, 1
  store i32 %inc2641, i32* %k, align 4
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %1240 = load i16, i16* %caps, align 2
  %conv2642 = zext i16 %1240 to i32
  %cmp2643 = icmp ne i32 %conv2642, 0
  br i1 %cmp2643, label %if.then2645, label %if.end2724

if.then2645:                                      ; preds = %for.end
  %1241 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2646 = call i32 @fflush(%struct._IO_FILE* noundef %1241)
  store i64 0, i64* %n2647, align 8
  br label %for.cond2648

for.cond2648:                                     ; preds = %for.inc2706, %if.then2645
  %1242 = load i64, i64* %n2647, align 8
  %1243 = load i16, i16* %stack_n, align 2
  %conv2649 = zext i16 %1243 to i64
  %cmp2650 = icmp ult i64 %1242, %conv2649
  br i1 %cmp2650, label %for.body2652, label %for.end2708

for.body2652:                                     ; preds = %for.cond2648
  %1244 = load i64, i64* %n2647, align 8
  %arrayidx2654 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %vla91, i64 %1244
  %1245 = bitcast %struct._RegexMatcherState* %s2653 to i8*
  %1246 = bitcast %struct._RegexMatcherState* %arrayidx2654 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1245, i8* align 8 %1246, i64 40, i1 false)
  %1247 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2656 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2653, i32 0, i32 0
  %1248 = load i32, i32* %k2656, align 8
  %idxprom2657 = zext i32 %1248 to i64
  %arrayidx2658 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1247, i64 %idxprom2657
  %kind2659 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2658, i32 0, i32 0
  %1249 = load i8, i8* %kind2659, align 2
  %conv2660 = zext i8 %1249 to i32
  store i32 %conv2660, i32* %kind2655, align 4
  %1250 = load i32, i32* %kind2655, align 4
  %cmp2661 = icmp eq i32 %1250, 1
  br i1 %cmp2661, label %if.then2666, label %lor.lhs.false2663

lor.lhs.false2663:                                ; preds = %for.body2652
  %1251 = load i32, i32* %kind2655, align 4
  %cmp2664 = icmp eq i32 %1251, 3
  br i1 %cmp2664, label %if.then2666, label %if.end2705

if.then2666:                                      ; preds = %lor.lhs.false2663, %for.body2652
  %1252 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2668 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2653, i32 0, i32 0
  %1253 = load i32, i32* %k2668, align 8
  %idxprom2669 = zext i32 %1253 to i64
  %arrayidx2670 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1252, i64 %idxprom2669
  %mask2671 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2670, i32 0, i32 4
  %arrayidx2672 = getelementptr inbounds [16 x i16], [16 x i16]* %mask2671, i64 0, i64 0
  %1254 = load i16, i16* %arrayidx2672, align 2
  %idxprom2673 = zext i16 %1254 to i64
  %arrayidx2674 = getelementptr inbounds i16, i16* %vla4, i64 %idxprom2673
  %1255 = load i16, i16* %arrayidx2674, align 2
  store i16 %1255, i16* %cap_index2667, align 2
  %1256 = load i16, i16* %cap_index2667, align 2
  %conv2675 = zext i16 %1256 to i32
  %cmp2676 = icmp eq i32 %conv2675, 65535
  br i1 %cmp2676, label %if.then2678, label %if.end2679

if.then2678:                                      ; preds = %if.then2666
  br label %for.inc2706

if.end2679:                                       ; preds = %if.then2666
  %1257 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %k2680 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2653, i32 0, i32 0
  %1258 = load i32, i32* %k2680, align 8
  %idxprom2681 = zext i32 %1258 to i64
  %arrayidx2682 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %1257, i64 %idxprom2681
  %kind2683 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx2682, i32 0, i32 0
  %1259 = load i8, i8* %kind2683, align 2
  %conv2684 = zext i8 %1259 to i32
  %cmp2685 = icmp eq i32 %conv2684, 1
  br i1 %cmp2685, label %if.then2687, label %if.else2691

if.then2687:                                      ; preds = %if.end2679
  %i2688 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2653, i32 0, i32 3
  %1260 = load i64, i64* %i2688, align 8
  %1261 = load i64*, i64** %cap_pos.addr, align 8
  %1262 = load i16, i16* %cap_index2667, align 2
  %idxprom2689 = zext i16 %1262 to i64
  %arrayidx2690 = getelementptr inbounds i64, i64* %1261, i64 %idxprom2689
  store i64 %1260, i64* %arrayidx2690, align 8
  br label %if.end2704

if.else2691:                                      ; preds = %if.end2679
  %1263 = load i64*, i64** %cap_pos.addr, align 8
  %1264 = load i16, i16* %cap_index2667, align 2
  %idxprom2692 = zext i16 %1264 to i64
  %arrayidx2693 = getelementptr inbounds i64, i64* %1263, i64 %idxprom2692
  %1265 = load i64, i64* %arrayidx2693, align 8
  %cmp2694 = icmp sge i64 %1265, 0
  br i1 %cmp2694, label %if.then2696, label %if.end2703

if.then2696:                                      ; preds = %if.else2691
  %i2697 = getelementptr inbounds %struct._RegexMatcherState, %struct._RegexMatcherState* %s2653, i32 0, i32 3
  %1266 = load i64, i64* %i2697, align 8
  %1267 = load i64*, i64** %cap_pos.addr, align 8
  %1268 = load i16, i16* %cap_index2667, align 2
  %idxprom2698 = zext i16 %1268 to i64
  %arrayidx2699 = getelementptr inbounds i64, i64* %1267, i64 %idxprom2698
  %1269 = load i64, i64* %arrayidx2699, align 8
  %sub2700 = sub i64 %1266, %1269
  %1270 = load i64*, i64** %cap_span.addr, align 8
  %1271 = load i16, i16* %cap_index2667, align 2
  %idxprom2701 = zext i16 %1271 to i64
  %arrayidx2702 = getelementptr inbounds i64, i64* %1270, i64 %idxprom2701
  store i64 %sub2700, i64* %arrayidx2702, align 8
  br label %if.end2703

if.end2703:                                       ; preds = %if.then2696, %if.else2691
  br label %if.end2704

if.end2704:                                       ; preds = %if.end2703, %if.then2687
  br label %if.end2705

if.end2705:                                       ; preds = %if.end2704, %lor.lhs.false2663
  br label %for.inc2706

for.inc2706:                                      ; preds = %if.end2705, %if.then2678
  %1272 = load i64, i64* %n2647, align 8
  %inc2707 = add i64 %1272, 1
  store i64 %inc2707, i64* %n2647, align 8
  br label %for.cond2648, !llvm.loop !42

for.end2708:                                      ; preds = %for.cond2648
  store i64 0, i64* %n2709, align 8
  br label %for.cond2710

for.cond2710:                                     ; preds = %for.inc2721, %for.end2708
  %1273 = load i64, i64* %n2709, align 8
  %1274 = load i16, i16* %caps, align 2
  %conv2711 = zext i16 %1274 to i64
  %cmp2712 = icmp ult i64 %1273, %conv2711
  br i1 %cmp2712, label %for.body2714, label %for.end2723

for.body2714:                                     ; preds = %for.cond2710
  %1275 = load i64*, i64** %cap_span.addr, align 8
  %1276 = load i64, i64* %n2709, align 8
  %arrayidx2715 = getelementptr inbounds i64, i64* %1275, i64 %1276
  %1277 = load i64, i64* %arrayidx2715, align 8
  %cmp2716 = icmp eq i64 %1277, -1
  br i1 %cmp2716, label %if.then2718, label %if.end2720

if.then2718:                                      ; preds = %for.body2714
  %1278 = load i64*, i64** %cap_pos.addr, align 8
  %1279 = load i64, i64* %n2709, align 8
  %arrayidx2719 = getelementptr inbounds i64, i64* %1278, i64 %1279
  store i64 -1, i64* %arrayidx2719, align 8
  br label %if.end2720

if.end2720:                                       ; preds = %if.then2718, %for.body2714
  br label %for.inc2721

for.inc2721:                                      ; preds = %if.end2720
  %1280 = load i64, i64* %n2709, align 8
  %inc2722 = add i64 %1280, 1
  store i64 %inc2722, i64* %n2709, align 8
  br label %for.cond2710, !llvm.loop !43

for.end2723:                                      ; preds = %for.cond2710
  br label %if.end2724

if.end2724:                                       ; preds = %for.end2723, %for.end
  %1281 = load i64, i64* %i, align 8
  store i64 %1281, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2724, %if.then2556, %if.then2507, %if.then2429, %if.then2380, %if.then2290, %if.then2195, %if.then2110, %if.then2020, %if.then1931, %if.then1883, %if.then1817, %if.then1789, %if.then1765, %if.then1688, %if.then1599, %if.then1463, %if.then1389, %if.then1326, %if.then1242, %if.then1157, %if.then1108, %if.then1006, %if.then954, %if.then808, %if.then691, %if.then596, %if.then498, %if.then384, %if.then289, %if.then197, %if.then118, %if.then102, %if.then69
  %1282 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %1282)
  %1283 = load i64, i64* %retval, align 8
  ret i64 %1283
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #6

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_regex_tokens(%struct._RegexToken* noundef %tokens) #0 {
entry:
  %tokens.addr = alloca %struct._RegexToken*, align 8
  %kind_to_str = alloca [10 x i8*], align 16
  %mode_to_str = alloca [3 x i8*], align 16
  %k = alloca i32, align 4
  %c_old = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._RegexToken* %tokens, %struct._RegexToken** %tokens.addr, align 8
  %0 = bitcast [10 x i8*]* %kind_to_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i8*]* @__const.print_regex_tokens.kind_to_str to i8*), i64 80, i1 false)
  %1 = bitcast [3 x i8*]* %mode_to_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([3 x i8*]* @__const.print_regex_tokens.mode_to_str to i8*), i64 24, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc118, %entry
  %2 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %2, i64 %idxprom
  %kind = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx, i32 0, i32 0
  %4 = load i8, i8* %kind, align 2
  %idxprom1 = zext i8 %4 to i64
  %arrayidx2 = getelementptr inbounds [10 x i8*], [10 x i8*]* %kind_to_str, i64 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %6 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %7 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %6, i64 %idxprom3
  %mode = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx4, i32 0, i32 1
  %8 = load i8, i8* %mode, align 1
  %idxprom5 = zext i8 %8 to i64
  %arrayidx6 = getelementptr inbounds [3 x i8*], [3 x i8*]* %mode_to_str, i64 0, i64 %idxprom5
  %9 = load i8*, i8** %arrayidx6, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* noundef %5, i8* noundef %9)
  store i32 -1, i32* %c_old, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.cond
  %10 = load i32, i32* %c, align 4
  %11 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %12 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %11, i64 %idxprom8
  %kind10 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx9, i32 0, i32 0
  %13 = load i8, i8* %kind10, align 2
  %conv = zext i8 %13 to i32
  %tobool = icmp ne i32 %conv, 0
  %14 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 256
  %cmp = icmp slt i32 %10, %cond
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond7
  %15 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %16 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %15, i64 %idxprom12
  %mask = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx13, i32 0, i32 4
  %17 = load i32, i32* %c, align 4
  %conv14 = trunc i32 %17 to i8
  %conv15 = zext i8 %conv14 to i32
  %shr = ashr i32 %conv15, 4
  %idxprom16 = sext i32 %shr to i64
  %arrayidx17 = getelementptr inbounds [16 x i16], [16 x i16]* %mask, i64 0, i64 %idxprom16
  %18 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %18 to i32
  %19 = load i32, i32* %c, align 4
  %conv19 = trunc i32 %19 to i8
  %conv20 = zext i8 %conv19 to i32
  %and = and i32 %conv20, 15
  %shl = shl i32 1, %and
  %and21 = and i32 %conv18, %shl
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load i32, i32* %c_old, align 4
  %cmp23 = icmp eq i32 %20, -1
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %if.then
  %21 = load i32, i32* %c, align 4
  store i32 %21, i32* %c_old, align 4
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.then
  br label %if.end98

if.else:                                          ; preds = %for.body
  %22 = load i32, i32* %c_old, align 4
  %cmp26 = icmp ne i32 %22, -1
  br i1 %cmp26, label %if.then28, label %if.end97

if.then28:                                        ; preds = %if.else
  %23 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %23, 1
  %24 = load i32, i32* %c_old, align 4
  %cmp29 = icmp eq i32 %sub, %24
  br i1 %cmp29, label %if.then31, label %if.else41

if.then31:                                        ; preds = %if.then28
  %25 = load i32, i32* %c_old, align 4
  %cmp32 = icmp sge i32 %25, 32
  br i1 %cmp32, label %land.lhs.true, label %if.else38

land.lhs.true:                                    ; preds = %if.then31
  %26 = load i32, i32* %c_old, align 4
  %cmp34 = icmp sle i32 %26, 126
  br i1 %cmp34, label %if.then36, label %if.else38

if.then36:                                        ; preds = %land.lhs.true
  %27 = load i32, i32* %c_old, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i32 noundef %27)
  br label %if.end40

if.else38:                                        ; preds = %land.lhs.true, %if.then31
  %28 = load i32, i32* %c_old, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 noundef %28)
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then36
  store i32 -1, i32* %c_old, align 4
  br label %if.end96

if.else41:                                        ; preds = %if.then28
  %29 = load i32, i32* %c, align 4
  %sub42 = sub nsw i32 %29, 2
  %30 = load i32, i32* %c_old, align 4
  %cmp43 = icmp eq i32 %sub42, %30
  br i1 %cmp43, label %if.then45, label %if.else69

if.then45:                                        ; preds = %if.else41
  %31 = load i32, i32* %c_old, align 4
  %cmp46 = icmp sge i32 %31, 32
  br i1 %cmp46, label %land.lhs.true48, label %if.else53

land.lhs.true48:                                  ; preds = %if.then45
  %32 = load i32, i32* %c_old, align 4
  %cmp49 = icmp sle i32 %32, 126
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %land.lhs.true48
  %33 = load i32, i32* %c_old, align 4
  %call52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i32 noundef %33)
  br label %if.end55

if.else53:                                        ; preds = %land.lhs.true48, %if.then45
  %34 = load i32, i32* %c_old, align 4
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 noundef %34)
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  %35 = load i32, i32* %c_old, align 4
  %add = add nsw i32 %35, 1
  %cmp56 = icmp sge i32 %add, 32
  br i1 %cmp56, label %land.lhs.true58, label %if.else65

land.lhs.true58:                                  ; preds = %if.end55
  %36 = load i32, i32* %c_old, align 4
  %add59 = add nsw i32 %36, 1
  %cmp60 = icmp sle i32 %add59, 126
  br i1 %cmp60, label %if.then62, label %if.else65

if.then62:                                        ; preds = %land.lhs.true58
  %37 = load i32, i32* %c_old, align 4
  %add63 = add nsw i32 %37, 1
  %call64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i32 noundef %add63)
  br label %if.end68

if.else65:                                        ; preds = %land.lhs.true58, %if.end55
  %38 = load i32, i32* %c_old, align 4
  %add66 = add nsw i32 %38, 1
  %call67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 noundef %add66)
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then62
  store i32 -1, i32* %c_old, align 4
  br label %if.end95

if.else69:                                        ; preds = %if.else41
  %39 = load i32, i32* %c_old, align 4
  %cmp70 = icmp sge i32 %39, 32
  br i1 %cmp70, label %land.lhs.true72, label %if.else77

land.lhs.true72:                                  ; preds = %if.else69
  %40 = load i32, i32* %c_old, align 4
  %cmp73 = icmp sle i32 %40, 126
  br i1 %cmp73, label %if.then75, label %if.else77

if.then75:                                        ; preds = %land.lhs.true72
  %41 = load i32, i32* %c_old, align 4
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i32 noundef %41)
  br label %if.end79

if.else77:                                        ; preds = %land.lhs.true72, %if.else69
  %42 = load i32, i32* %c_old, align 4
  %call78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 noundef %42)
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.then75
  %call80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %43 = load i32, i32* %c, align 4
  %sub81 = sub nsw i32 %43, 1
  %cmp82 = icmp sge i32 %sub81, 32
  br i1 %cmp82, label %land.lhs.true84, label %if.else91

land.lhs.true84:                                  ; preds = %if.end79
  %44 = load i32, i32* %c, align 4
  %sub85 = sub nsw i32 %44, 1
  %cmp86 = icmp sle i32 %sub85, 126
  br i1 %cmp86, label %if.then88, label %if.else91

if.then88:                                        ; preds = %land.lhs.true84
  %45 = load i32, i32* %c, align 4
  %sub89 = sub nsw i32 %45, 1
  %call90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i32 noundef %sub89)
  br label %if.end94

if.else91:                                        ; preds = %land.lhs.true84, %if.end79
  %46 = load i32, i32* %c, align 4
  %sub92 = sub nsw i32 %46, 1
  %call93 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 noundef %sub92)
  br label %if.end94

if.end94:                                         ; preds = %if.else91, %if.then88
  store i32 -1, i32* %c_old, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end68
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end40
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.else
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end98
  %47 = load i32, i32* %c, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond7, !llvm.loop !44

for.end:                                          ; preds = %for.cond7
  %48 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %49 = load i32, i32* %k, align 4
  %idxprom99 = sext i32 %49 to i64
  %arrayidx100 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %48, i64 %idxprom99
  %count_lo = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx100, i32 0, i32 2
  %50 = load i16, i16* %count_lo, align 2
  %conv101 = zext i16 %50 to i32
  %51 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %52 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %52 to i64
  %arrayidx103 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %51, i64 %idxprom102
  %count_hi = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx103, i32 0, i32 3
  %53 = load i16, i16* %count_hi, align 2
  %conv104 = zext i16 %53 to i32
  %sub105 = sub nsw i32 %conv104, 1
  %54 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %55 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %55 to i64
  %arrayidx107 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %54, i64 %idxprom106
  %pair_offset = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx107, i32 0, i32 5
  %56 = load i16, i16* %pair_offset, align 2
  %conv108 = sext i16 %56 to i32
  %call109 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv101, i32 noundef %sub105, i32 noundef %conv108)
  %57 = load %struct._RegexToken*, %struct._RegexToken** %tokens.addr, align 8
  %58 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %58 to i64
  %arrayidx111 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %57, i64 %idxprom110
  %kind112 = getelementptr inbounds %struct._RegexToken, %struct._RegexToken* %arrayidx111, i32 0, i32 0
  %59 = load i8, i8* %kind112, align 2
  %conv113 = zext i8 %59 to i32
  %cmp114 = icmp eq i32 %conv113, 9
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %for.end
  br label %for.end120

if.end117:                                        ; preds = %for.end
  br label %for.inc118

for.inc118:                                       ; preds = %if.end117
  %60 = load i32, i32* %k, align 4
  %inc119 = add nsw i32 %60, 1
  store i32 %inc119, i32* %k, align 4
  br label %for.cond

for.end120:                                       ; preds = %if.then116
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
