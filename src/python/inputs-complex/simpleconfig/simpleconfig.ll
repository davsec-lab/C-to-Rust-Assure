; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/simpleconfig/simpleconfig.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/simpleconfig/simpleconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Scanner = type { i8*, i32, i32 }
%struct.CfgError = type { i32, i32, i32, [64 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.CfgEntry = type { i32, [33 x i8], %union.CfgVal }
%union.CfgVal = type { i32, [64 x i8] }
%struct.CfgColor = type { i8, i8, i8, i8 }
%struct.Cfg = type { %struct.CfgEntry*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"src_len < max\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/simpleconfig/config.c\00", align 1
@__PRETTY_FUNCTION__.copy_slice_into = private unnamed_addr constant [55 x i8] c"void copy_slice_into(Scanner *, int, int, char *, int)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Error at %d:%d :: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"closing '\22' expected\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"value too long\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"number expected\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"number too large\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"float expected\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"rgba\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"invalid literal\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"'(' expected\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"red, blue and green must be integers in range [0, 255]\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"',' expected\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"alpha must be in range [0, 1]\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"')' expected\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"missing value\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"missing key\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"key too long\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"':' expected\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"unexpected character '%c'\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"failed to open file\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"failed to read file\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"invalid filename\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"invalid file extension\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"rgba(%d, %d, %d, %d)\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [28 x i8] c"Error: missing config file\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Error: memory allocation failed\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"Noto Sans Mono\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"font.size\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"lineNumbers\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"bg.color\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [10 x i8] c"font: %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"font.size: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"zoom: %f\0A\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"lineNumbers: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"bg.color: rgba(%d, %d, %d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #0 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, i16* %__bsx.addr, align 2
  %0 = load i16, i16* %__bsx.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %1 = load i16, i16* %__bsx.addr, align 2
  %conv1 = zext i16 %1 to i32
  %and2 = and i32 %conv1, 255
  %shl = shl i32 %and2, 8
  %or = or i32 %and, %shl
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bswap_32(i32 noundef %__bsx) #0 {
entry:
  %__bsx.addr = alloca i32, align 4
  store i32 %__bsx, i32* %__bsx.addr, align 4
  %0 = load i32, i32* %__bsx.addr, align 4
  %and = and i32 %0, -16777216
  %shr = lshr i32 %and, 24
  %1 = load i32, i32* %__bsx.addr, align 4
  %and1 = and i32 %1, 16711680
  %shr2 = lshr i32 %and1, 8
  %or = or i32 %shr, %shr2
  %2 = load i32, i32* %__bsx.addr, align 4
  %and3 = and i32 %2, 65280
  %shl = shl i32 %and3, 8
  %or4 = or i32 %or, %shl
  %3 = load i32, i32* %__bsx.addr, align 4
  %and5 = and i32 %3, 255
  %shl6 = shl i32 %and5, 24
  %or7 = or i32 %or4, %shl6
  ret i32 %or7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bswap_64(i64 noundef %__bsx) #0 {
entry:
  %__bsx.addr = alloca i64, align 8
  store i64 %__bsx, i64* %__bsx.addr, align 8
  %0 = load i64, i64* %__bsx.addr, align 8
  %and = and i64 %0, -72057594037927936
  %shr = lshr i64 %and, 56
  %1 = load i64, i64* %__bsx.addr, align 8
  %and1 = and i64 %1, 71776119061217280
  %shr2 = lshr i64 %and1, 40
  %or = or i64 %shr, %shr2
  %2 = load i64, i64* %__bsx.addr, align 8
  %and3 = and i64 %2, 280375465082880
  %shr4 = lshr i64 %and3, 24
  %or5 = or i64 %or, %shr4
  %3 = load i64, i64* %__bsx.addr, align 8
  %and6 = and i64 %3, 1095216660480
  %shr7 = lshr i64 %and6, 8
  %or8 = or i64 %or5, %shr7
  %4 = load i64, i64* %__bsx.addr, align 8
  %and9 = and i64 %4, 4278190080
  %shl = shl i64 %and9, 8
  %or10 = or i64 %or8, %shl
  %5 = load i64, i64* %__bsx.addr, align 8
  %and11 = and i64 %5, 16711680
  %shl12 = shl i64 %and11, 24
  %or13 = or i64 %or10, %shl12
  %6 = load i64, i64* %__bsx.addr, align 8
  %and14 = and i64 %6, 65280
  %shl15 = shl i64 %and14, 40
  %or16 = or i64 %or13, %shl15
  %7 = load i64, i64* %__bsx.addr, align 8
  %and17 = and i64 %7, 255
  %shl18 = shl i64 %and17, 56
  %or19 = or i64 %or16, %shl18
  ret i64 %or19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__uint16_identity(i16 noundef zeroext %__x) #0 {
entry:
  %__x.addr = alloca i16, align 2
  store i16 %__x, i16* %__x.addr, align 2
  %0 = load i16, i16* %__x.addr, align 2
  ret i16 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uint32_identity(i32 noundef %__x) #0 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uint64_identity(i64 noundef %__x) #0 {
entry:
  %__x.addr = alloca i64, align 8
  store i64 %__x, i64* %__x.addr, align 8
  %0 = load i64, i64* %__x.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_scanner(%struct.Scanner* noundef %s, i8* noundef %src, i32 noundef %src_len) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  %src.addr = alloca i8*, align 8
  %src_len.addr = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %src_len, i32* %src_len.addr, align 4
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %src1 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %1, i32 0, i32 0
  store i8* %0, i8** %src1, align 8
  %2 = load i32, i32* %src_len.addr, align 4
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %len = getelementptr inbounds %struct.Scanner, %struct.Scanner* %3, i32 0, i32 1
  store i32 %2, i32* %len, align 8
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, %struct.Scanner* %4, i32 0, i32 2
  store i32 0, i32* %cur, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_at_end(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, %struct.Scanner* %0, i32 0, i32 2
  %1 = load i32, i32* %cur, align 4
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %len = getelementptr inbounds %struct.Scanner, %struct.Scanner* %2, i32 0, i32 1
  %3 = load i32, i32* %len, align 8
  %cmp = icmp sge i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cur(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, %struct.Scanner* %0, i32 0, i32 2
  %1 = load i32, i32* %cur, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cur(%struct.Scanner* noundef %s, i32 noundef %n) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  %n.addr = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, %struct.Scanner* %1, i32 0, i32 2
  store i32 %0, i32* %cur, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @peek(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %src = getelementptr inbounds %struct.Scanner, %struct.Scanner* %0, i32 0, i32 0
  %1 = load i8*, i8** %src, align 8
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, %struct.Scanner* %2, i32 0, i32 2
  %3 = load i32, i32* %cur, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @peek_next(%struct.Scanner* noundef %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, %struct.Scanner* %0, i32 0, i32 2
  %1 = load i32, i32* %cur, align 4
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %len = getelementptr inbounds %struct.Scanner, %struct.Scanner* %2, i32 0, i32 1
  %3 = load i32, i32* %len, align 8
  %sub = sub nsw i32 %3, 1
  %cmp = icmp sge i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %src = getelementptr inbounds %struct.Scanner, %struct.Scanner* %4, i32 0, i32 0
  %5 = load i8*, i8** %src, align 8
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur1 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %6, i32 0, i32 2
  %7 = load i32, i32* %cur1, align 4
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  store i8 %8, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i8, i8* %retval, align 1
  ret i8 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @advance(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %src = getelementptr inbounds %struct.Scanner, %struct.Scanner* %0, i32 0, i32 0
  %1 = load i8*, i8** %src, align 8
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, %struct.Scanner* %2, i32 0, i32 2
  %3 = load i32, i32* %cur, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %cur, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @advance2(%struct.Scanner* noundef %s, i32 noundef %n) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, %struct.Scanner* %2, i32 0, i32 2
  %3 = load i32, i32* %cur, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %cur, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc1 = add nsw i32 %4, 1
  store i32 %inc1, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %src = getelementptr inbounds %struct.Scanner, %struct.Scanner* %5, i32 0, i32 0
  %6 = load i8*, i8** %src, align 8
  %7 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %cur2 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %7, i32 0, i32 2
  %8 = load i32, i32* %cur2, align 4
  %inc3 = add nsw i32 %8, 1
  store i32 %inc3, i32* %cur2, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  ret i8 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_whitespace(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %0)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call1 = call i16** @__ctype_b_loc() #9
  %1 = load i16*, i16** %call1, align 8
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call2 = call signext i8 @peek(%struct.Scanner* noundef %2)
  %conv = sext i8 %call2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %3 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call4 = call signext i8 @advance(%struct.Scanner* noundef %5)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_blank(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %0)
  br i1 %call, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %call1 = call i16** @__ctype_b_loc() #9
  %1 = load i16*, i16** %call1, align 8
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call2 = call signext i8 @peek(%struct.Scanner* noundef %2)
  %conv = sext i8 %call2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %3 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call4 = call signext i8 @peek(%struct.Scanner* noundef %4)
  %conv5 = sext i8 %call4 to i32
  %cmp = icmp ne i32 %conv5, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call7 = call signext i8 @advance(%struct.Scanner* noundef %6)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_comment(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %0)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call1 = call signext i8 @peek(%struct.Scanner* noundef %1)
  %conv = sext i8 %call1 to i32
  %cmp = icmp eq i32 %conv, 35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %land.end10, %while.body
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call3 = call signext i8 @advance(%struct.Scanner* noundef %3)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call4 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %4)
  br i1 %call4, label %land.end10, label %land.rhs5

land.rhs5:                                        ; preds = %do.cond
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call6 = call signext i8 @peek(%struct.Scanner* noundef %5)
  %conv7 = sext i8 %call6 to i32
  %cmp8 = icmp ne i32 %conv7, 10
  br label %land.end10

land.end10:                                       ; preds = %land.rhs5, %do.cond
  %6 = phi i1 [ false, %do.cond ], [ %cmp8, %land.rhs5 ]
  br i1 %6, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %land.end10
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skip_whitespace_and_comments(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %0)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call1 = call i16** @__ctype_b_loc() #9
  %1 = load i16*, i16** %call1, align 8
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call2 = call signext i8 @peek(%struct.Scanner* noundef %2)
  %conv = sext i8 %call2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %3 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call4 = call signext i8 @peek(%struct.Scanner* noundef %4)
  %conv5 = sext i8 %call4 to i32
  %cmp = icmp eq i32 %conv5, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %5, %lor.end ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_whitespace(%struct.Scanner* noundef %7)
  %8 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_comment(%struct.Scanner* noundef %8)
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_slice_into(%struct.Scanner* noundef %s, i32 noundef %src_off, i32 noundef %src_len, i8* noundef %dst, i32 noundef %max) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  %src_off.addr = alloca i32, align 4
  %src_len.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %max.addr = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store i32 %src_off, i32* %src_off.addr, align 4
  store i32 %src_len, i32* %src_len.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %max, i32* %max.addr, align 4
  %0 = load i32, i32* %src_len.addr, align 4
  %1 = load i32, i32* %max.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.copy_slice_into, i64 0, i64 0)) #10
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load i8*, i8** %dst.addr, align 8
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %src = getelementptr inbounds %struct.Scanner, %struct.Scanner* %3, i32 0, i32 0
  %4 = load i8*, i8** %src, align 8
  %5 = load i32, i32* %src_off.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %src_len.addr, align 4
  %conv = sext i32 %6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %add.ptr, i64 %conv, i1 false)
  %7 = load i8*, i8** %dst.addr, align 8
  %8 = load i32, i32* %src_len.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @match_literal(%struct.Scanner* noundef %s, i32 noundef %offset, i8* noundef %literal, i32 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca %struct.Scanner*, align 8
  %offset.addr = alloca i32, align 4
  %literal.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i8* %literal, i8** %literal.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %offset.addr, align 4
  %1 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %len1 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %2, i32 0, i32 1
  %3 = load i32, i32* %len1, align 8
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %src = getelementptr inbounds %struct.Scanner, %struct.Scanner* %4, i32 0, i32 0
  %5 = load i8*, i8** %src, align 8
  %6 = load i32, i32* %offset.addr, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %7 = load i8*, i8** %literal.addr, align 8
  %8 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %8 to i64
  %call = call i32 @strncmp(i8* noundef %add.ptr, i8* noundef %7, i64 noundef %conv) #11
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  store i1 %lnot, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @consume_literal(%struct.Scanner* noundef %s, i32 noundef %offset, i8* noundef %literal, i32 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca %struct.Scanner*, align 8
  %offset.addr = alloca i32, align 4
  %literal.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i8* %literal, i8** %literal.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %1 = load i32, i32* %offset.addr, align 4
  %2 = load i8*, i8** %literal.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call zeroext i1 @match_literal(%struct.Scanner* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %call1 = call signext i8 @advance2(%struct.Scanner* noundef %4, i32 noundef %5)
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_key(i8 noundef signext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  %call = call i16** @__ctype_b_loc() #9
  %0 = load i16*, i16** %call, align 8
  %1 = load i8, i8* %ch.addr, align 1
  %conv = sext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* %ch.addr, align 1
  %conv2 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv2, 46
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load i8, i8* %ch.addr, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp5, %lor.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_string(i8 noundef signext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  %call = call i16** @__ctype_b_loc() #9
  %0 = load i16*, i16** %call, align 8
  %1 = load i8, i8* %ch.addr, align 1
  %conv = sext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i16** @__ctype_b_loc() #9
  %3 = load i16*, i16** %call2, align 8
  %4 = load i8, i8* %ch.addr, align 1
  %conv3 = sext i8 %4 to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds i16, i16* %3, i64 %idxprom4
  %5 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %5 to i32
  %and7 = and i32 %conv6, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %call9 = call i16** @__ctype_b_loc() #9
  %6 = load i16*, i16** %call9, align 8
  %7 = load i8, i8* %ch.addr, align 1
  %conv10 = sext i8 %7 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %arrayidx12 = getelementptr inbounds i16, i16* %6, i64 %idxprom11
  %8 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %8 to i32
  %and14 = and i32 %conv13, 4
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %9 = load i8, i8* %ch.addr, align 1
  %conv16 = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv16, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %cmp, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %entry
  %11 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %10, %land.end ]
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_error(%struct.CfgError* noundef %err) #0 {
entry:
  %err.addr = alloca %struct.CfgError*, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %off = getelementptr inbounds %struct.CfgError, %struct.CfgError* %0, i32 0, i32 0
  store i32 -1, i32* %off, align 4
  %1 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %col = getelementptr inbounds %struct.CfgError, %struct.CfgError* %1, i32 0, i32 1
  store i32 -1, i32* %col, align 4
  %2 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %row = getelementptr inbounds %struct.CfgError, %struct.CfgError* %2, i32 0, i32 2
  store i32 -1, i32* %row, align 4
  %3 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %msg = getelementptr inbounds %struct.CfgError, %struct.CfgError* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %msg, i64 0, i64 0
  store i8 0, i8* %arrayidx, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error(%struct.Scanner* noundef %s, %struct.CfgError* noundef %err, i8* noundef %fmt, ...) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %fmt.addr = alloca i8*, align 8
  %prefix = alloca [1 x i8], align 1
  %prefix_len = alloca i32, align 4
  %i = alloca i32, align 4
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = bitcast [1 x i8]* %prefix to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 1, i1 false)
  store i32 0, i32* %prefix_len, align 4
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call i32 @cur(%struct.Scanner* noundef %1)
  %2 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %off = getelementptr inbounds %struct.CfgError, %struct.CfgError* %2, i32 0, i32 0
  store i32 %call, i32* %off, align 4
  %3 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %row = getelementptr inbounds %struct.CfgError, %struct.CfgError* %3, i32 0, i32 2
  store i32 1, i32* %row, align 4
  %4 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %col = getelementptr inbounds %struct.CfgError, %struct.CfgError* %4, i32 0, i32 1
  store i32 1, i32* %col, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call1 = call i32 @cur(%struct.Scanner* noundef %6)
  %cmp = icmp slt i32 %5, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %col2 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %7, i32 0, i32 1
  %8 = load i32, i32* %col2, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %col2, align 4
  %9 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %src = getelementptr inbounds %struct.Scanner, %struct.Scanner* %9, i32 0, i32 0
  %10 = load i8*, i8** %src, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %cmp3 = icmp eq i32 %conv, 10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %row5 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %13, i32 0, i32 2
  %14 = load i32, i32* %row5, align 4
  %inc6 = add nsw i32 %14, 1
  store i32 %inc6, i32* %row5, align 4
  %15 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %col7 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %15, i32 0, i32 1
  store i32 1, i32* %col7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0
  %arraydecay9 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay9)
  %17 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %msg = getelementptr inbounds %struct.CfgError, %struct.CfgError* %17, i32 0, i32 3
  %arraydecay10 = getelementptr inbounds [64 x i8], [64 x i8]* %msg, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [1 x i8], [1 x i8]* %prefix, i64 0, i64 0
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay10, i64 noundef 64, i8* noundef %arraydecay11) #12
  %18 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %msg13 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %18, i32 0, i32 3
  %arraydecay14 = getelementptr inbounds [64 x i8], [64 x i8]* %msg13, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay14, i64 0
  %19 = load i8*, i8** %fmt.addr, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0
  %call16 = call i32 @vsnprintf(i8* noundef %add.ptr, i64 noundef 64, i8* noundef %19, %struct.__va_list_tag* noundef %arraydecay15) #12
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0
  %arraydecay1718 = bitcast %struct.__va_list_tag* %arraydecay17 to i8*
  call void @llvm.va_end(i8* %arraydecay1718)
  ret i32 -1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #7

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg_fprint_error(%struct._IO_FILE* noundef %stream, %struct.CfgError* noundef %err) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %row = getelementptr inbounds %struct.CfgError, %struct.CfgError* %0, i32 0, i32 2
  %1 = load i32, i32* %row, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %col = getelementptr inbounds %struct.CfgError, %struct.CfgError* %2, i32 0, i32 1
  %3 = load i32, i32* %col, align 4
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %msg = getelementptr inbounds %struct.CfgError, %struct.CfgError* %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %msg, i64 0, i64 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef %arraydecay)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %row2 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %7, i32 0, i32 2
  %8 = load i32, i32* %row2, align 4
  %9 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %col3 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %9, i32 0, i32 1
  %10 = load i32, i32* %col3, align 4
  %11 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %msg4 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %11, i32 0, i32 3
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %msg4, i64 0, i64 0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef %8, i32 noundef %10, i8* noundef %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_string(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %val_offset = alloca i32, align 4
  %val_len = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call signext i8 @advance(%struct.Scanner* noundef %0)
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call2 = call i32 @cur(%struct.Scanner* noundef %1)
  store i32 %call2, i32* %val_offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call3 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %2)
  br i1 %call3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call4 = call signext i8 @peek(%struct.Scanner* noundef %3)
  %call5 = call zeroext i1 @is_string(i8 noundef signext %call4)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %call5, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call6 = call signext i8 @advance(%struct.Scanner* noundef %5)
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call7 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %6)
  br i1 %call7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %7 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call8 = call signext i8 @peek(%struct.Scanner* noundef %7)
  %conv = sext i8 %call8 to i32
  %cmp = icmp ne i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %8 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %9 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call10 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %8, %struct.CfgError* noundef %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 %call10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call11 = call i32 @cur(%struct.Scanner* noundef %10)
  %11 = load i32, i32* %val_offset, align 4
  %sub = sub nsw i32 %call11, %11
  store i32 %sub, i32* %val_len, align 4
  %12 = load i32, i32* %val_len, align 4
  %cmp12 = icmp sgt i32 %12, 64
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  %13 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %14 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call15 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %13, %struct.CfgError* noundef %14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  %15 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call17 = call signext i8 @advance(%struct.Scanner* noundef %15)
  %16 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %17 = load i32, i32* %val_offset, align 4
  %18 = load i32, i32* %val_len, align 4
  %19 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %val = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %19, i32 0, i32 2
  %string = bitcast %union.CfgVal* %val to [65 x i8]*
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %string, i64 0, i64 0
  call void @copy_slice_into(%struct.Scanner* noundef %16, i32 noundef %17, i32 noundef %18, i8* noundef %arraydecay, i32 noundef 65)
  %20 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %type = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %20, i32 0, i32 0
  store i32 0, i32* %type, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consume_int(%struct.Scanner* noundef %s, i32* noundef %number, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %number.addr = alloca i32*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %sign = alloca i32, align 4
  %num = alloca i32, align 4
  %digit = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store i32* %number, i32** %number.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  store i32 1, i32* %sign, align 4
  store i32 0, i32* %num, align 4
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %0)
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call1 = call signext i8 @peek(%struct.Scanner* noundef %1)
  %conv = sext i8 %call1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call i16** @__ctype_b_loc() #9
  %2 = load i16*, i16** %call4, align 8
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call5 = call signext i8 @peek_next(%struct.Scanner* noundef %3)
  %conv6 = sext i8 %call5 to i32
  %idxprom = sext i32 %conv6 to i64
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv7 = zext i16 %4 to i32
  %and = and i32 %conv7, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call8 = call signext i8 @advance(%struct.Scanner* noundef %5)
  store i32 -1, i32* %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call9 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %6)
  br i1 %call9, label %if.end21, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end
  %call11 = call i16** @__ctype_b_loc() #9
  %7 = load i16*, i16** %call11, align 8
  %8 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call12 = call signext i8 @peek(%struct.Scanner* noundef %8)
  %conv13 = sext i8 %call12 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds i16, i16* %7, i64 %idxprom14
  %9 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %9 to i32
  %and17 = and i32 %conv16, 2048
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %land.lhs.true10
  %10 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %11 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call20 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %10, %struct.CfgError* noundef %11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 %call20, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %land.lhs.true10, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.end21
  %12 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call22 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %12)
  br i1 %call22, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call23 = call i16** @__ctype_b_loc() #9
  %13 = load i16*, i16** %call23, align 8
  %14 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call24 = call signext i8 @peek(%struct.Scanner* noundef %14)
  %conv25 = sext i8 %call24 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %arrayidx27 = getelementptr inbounds i16, i16* %13, i64 %idxprom26
  %15 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %15 to i32
  %and29 = and i32 %conv28, 2048
  %tobool30 = icmp ne i32 %and29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %tobool30, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call31 = call signext i8 @advance(%struct.Scanner* noundef %17)
  %conv32 = sext i8 %call31 to i32
  %sub = sub nsw i32 %conv32, 48
  store i32 %sub, i32* %digit, align 4
  %18 = load i32, i32* %num, align 4
  %19 = load i32, i32* %digit, align 4
  %sub33 = sub nsw i32 2147483647, %19
  %div = sdiv i32 %sub33, 10
  %cmp34 = icmp sgt i32 %18, %div
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %while.body
  %20 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %21 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call37 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %20, %struct.CfgError* noundef %21, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 %call37, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %while.body
  %22 = load i32, i32* %num, align 4
  %mul = mul nsw i32 %22, 10
  %23 = load i32, i32* %digit, align 4
  %add = add nsw i32 %mul, %23
  store i32 %add, i32* %num, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  %24 = load i32, i32* %sign, align 4
  %25 = load i32, i32* %num, align 4
  %mul39 = mul nsw i32 %24, %25
  %26 = load i32*, i32** %number.addr, align 8
  store i32 %mul39, i32* %26, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then36, %if.then19
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consume_float(%struct.Scanner* noundef %s, float* noundef %number, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %number.addr = alloca float*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %sign = alloca i32, align 4
  %int_part = alloca i32, align 4
  %fract_part = alloca i32, align 4
  %digit = alloca i32, align 4
  %div49 = alloca i32, align 4
  %digit63 = alloca i32, align 4
  %floating = alloca float, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store float* %number, float** %number.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  store i32 1, i32* %sign, align 4
  store i32 0, i32* %int_part, align 4
  store i32 0, i32* %fract_part, align 4
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %0)
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call1 = call signext i8 @peek(%struct.Scanner* noundef %1)
  %conv = sext i8 %call1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call i16** @__ctype_b_loc() #9
  %2 = load i16*, i16** %call4, align 8
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call5 = call signext i8 @peek_next(%struct.Scanner* noundef %3)
  %conv6 = sext i8 %call5 to i32
  %idxprom = sext i32 %conv6 to i64
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv7 = zext i16 %4 to i32
  %and = and i32 %conv7, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call8 = call signext i8 @advance(%struct.Scanner* noundef %5)
  store i32 -1, i32* %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call9 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %6)
  br i1 %call9, label %if.end21, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end
  %call11 = call i16** @__ctype_b_loc() #9
  %7 = load i16*, i16** %call11, align 8
  %8 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call12 = call signext i8 @peek(%struct.Scanner* noundef %8)
  %conv13 = sext i8 %call12 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds i16, i16* %7, i64 %idxprom14
  %9 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %9 to i32
  %and17 = and i32 %conv16, 2048
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %land.lhs.true10
  %10 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %11 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call20 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %10, %struct.CfgError* noundef %11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 %call20, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %land.lhs.true10, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.end21
  %12 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call22 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %12)
  br i1 %call22, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call23 = call i16** @__ctype_b_loc() #9
  %13 = load i16*, i16** %call23, align 8
  %14 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call24 = call signext i8 @peek(%struct.Scanner* noundef %14)
  %conv25 = sext i8 %call24 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %arrayidx27 = getelementptr inbounds i16, i16* %13, i64 %idxprom26
  %15 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %15 to i32
  %and29 = and i32 %conv28, 2048
  %tobool30 = icmp ne i32 %and29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %tobool30, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call31 = call signext i8 @advance(%struct.Scanner* noundef %17)
  %conv32 = sext i8 %call31 to i32
  %sub = sub nsw i32 %conv32, 48
  store i32 %sub, i32* %digit, align 4
  %18 = load i32, i32* %int_part, align 4
  %19 = load i32, i32* %digit, align 4
  %sub33 = sub nsw i32 2147483647, %19
  %div = sdiv i32 %sub33, 10
  %cmp34 = icmp sgt i32 %18, %div
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %while.body
  %20 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %21 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call37 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %20, %struct.CfgError* noundef %21, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 %call37, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %while.body
  %22 = load i32, i32* %int_part, align 4
  %mul = mul nsw i32 %22, 10
  %23 = load i32, i32* %digit, align 4
  %add = add nsw i32 %mul, %23
  store i32 %add, i32* %int_part, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %land.end
  %24 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call39 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %24)
  br i1 %call39, label %if.end47, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %while.end
  %25 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call41 = call signext i8 @peek(%struct.Scanner* noundef %25)
  %conv42 = sext i8 %call41 to i32
  %cmp43 = icmp ne i32 %conv42, 46
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %land.lhs.true40
  %26 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %27 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call46 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %26, %struct.CfgError* noundef %27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 %call46, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %land.lhs.true40, %while.end
  %28 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call48 = call signext i8 @advance(%struct.Scanner* noundef %28)
  store i32 1, i32* %div49, align 4
  br label %while.cond50

while.cond50:                                     ; preds = %if.end80, %if.end47
  %29 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call51 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %29)
  br i1 %call51, label %land.end61, label %land.rhs52

land.rhs52:                                       ; preds = %while.cond50
  %call53 = call i16** @__ctype_b_loc() #9
  %30 = load i16*, i16** %call53, align 8
  %31 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call54 = call signext i8 @peek(%struct.Scanner* noundef %31)
  %conv55 = sext i8 %call54 to i32
  %idxprom56 = sext i32 %conv55 to i64
  %arrayidx57 = getelementptr inbounds i16, i16* %30, i64 %idxprom56
  %32 = load i16, i16* %arrayidx57, align 2
  %conv58 = zext i16 %32 to i32
  %and59 = and i32 %conv58, 2048
  %tobool60 = icmp ne i32 %and59, 0
  br label %land.end61

land.end61:                                       ; preds = %land.rhs52, %while.cond50
  %33 = phi i1 [ false, %while.cond50 ], [ %tobool60, %land.rhs52 ]
  br i1 %33, label %while.body62, label %while.end82

while.body62:                                     ; preds = %land.end61
  %34 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call64 = call signext i8 @advance(%struct.Scanner* noundef %34)
  %conv65 = sext i8 %call64 to i32
  %sub66 = sub nsw i32 %conv65, 48
  store i32 %sub66, i32* %digit63, align 4
  %35 = load i32, i32* %fract_part, align 4
  %36 = load i32, i32* %digit63, align 4
  %sub67 = sub nsw i32 2147483647, %36
  %div68 = sdiv i32 %sub67, 10
  %cmp69 = icmp sgt i32 %35, %div68
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %while.body62
  %37 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %38 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call72 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %37, %struct.CfgError* noundef %38, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 %call72, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %while.body62
  %39 = load i32, i32* %fract_part, align 4
  %mul74 = mul nsw i32 %39, 10
  %40 = load i32, i32* %digit63, align 4
  %add75 = add nsw i32 %mul74, %40
  store i32 %add75, i32* %fract_part, align 4
  %41 = load i32, i32* %div49, align 4
  %cmp76 = icmp sgt i32 %41, 214748364
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end73
  %42 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %43 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call79 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %42, %struct.CfgError* noundef %43, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 %call79, i32* %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end73
  %44 = load i32, i32* %div49, align 4
  %mul81 = mul nsw i32 %44, 10
  store i32 %mul81, i32* %div49, align 4
  br label %while.cond50, !llvm.loop !15

while.end82:                                      ; preds = %land.end61
  %45 = load i32, i32* %int_part, align 4
  %conv83 = sitofp i32 %45 to float
  %46 = load i32, i32* %fract_part, align 4
  %conv84 = sitofp i32 %46 to float
  %47 = load i32, i32* %div49, align 4
  %conv85 = sitofp i32 %47 to float
  %div86 = fdiv float %conv84, %conv85
  %add87 = fadd float %conv83, %div86
  store float %add87, float* %floating, align 4
  %48 = load i32, i32* %sign, align 4
  %conv88 = sitofp i32 %48 to float
  %49 = load float, float* %floating, align 4
  %mul89 = fmul float %conv88, %49
  %50 = load float*, float** %number.addr, align 8
  store float %mul89, float* %50, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end82, %if.then78, %if.then71, %if.then45, %if.then36, %if.then19
  %51 = load i32, i32* %retval, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @match_float(%struct.Scanner* noundef %s) #0 {
entry:
  %s.addr = alloca %struct.Scanner*, align 8
  %restore = alloca i32, align 4
  %is_float = alloca i8, align 1
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call i32 @cur(%struct.Scanner* noundef %0)
  store i32 %call, i32* %restore, align 4
  store i8 0, i8* %is_float, align 1
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call1 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %1)
  br i1 %call1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call2 = call signext i8 @peek(%struct.Scanner* noundef %2)
  %conv = sext i8 %call2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = call i16** @__ctype_b_loc() #9
  %3 = load i16*, i16** %call5, align 8
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call6 = call signext i8 @peek_next(%struct.Scanner* noundef %4)
  %conv7 = sext i8 %call6 to i32
  %idxprom = sext i32 %conv7 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv8 = zext i16 %5 to i32
  %and = and i32 %conv8, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call9 = call signext i8 @advance(%struct.Scanner* noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call10 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %7)
  br i1 %call10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call11 = call i16** @__ctype_b_loc() #9
  %8 = load i16*, i16** %call11, align 8
  %9 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call12 = call signext i8 @peek(%struct.Scanner* noundef %9)
  %conv13 = sext i8 %call12 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds i16, i16* %8, i64 %idxprom14
  %10 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %10 to i32
  %and17 = and i32 %conv16, 2048
  %tobool18 = icmp ne i32 %and17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool18, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call19 = call signext i8 @advance(%struct.Scanner* noundef %12)
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %land.end
  %13 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call20 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %13)
  br i1 %call20, label %if.end27, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %while.end
  %14 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call22 = call signext i8 @peek(%struct.Scanner* noundef %14)
  %conv23 = sext i8 %call22 to i32
  %cmp24 = icmp eq i32 %conv23, 46
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true21
  store i8 1, i8* %is_float, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true21, %while.end
  %15 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %16 = load i32, i32* %restore, align 4
  call void @set_cur(%struct.Scanner* noundef %15, i32 noundef %16)
  %17 = load i8, i8* %is_float, align 1
  %tobool28 = trunc i8 %17 to i1
  ret i1 %tobool28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_number(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %number = alloca float, align 4
  %number4 = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @match_float(%struct.Scanner* noundef %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %2 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call2 = call i32 @consume_float(%struct.Scanner* noundef %1, float* noundef %number, %struct.CfgError* noundef %2)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load float, float* %number, align 4
  %4 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %val = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %4, i32 0, i32 2
  %floating = bitcast %union.CfgVal* %val to float*
  store float %3, float* %floating, align 4
  %5 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %type = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %5, i32 0, i32 0
  store i32 3, i32* %type, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %7 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call5 = call i32 @consume_int(%struct.Scanner* noundef %6, i32* noundef %number4, %struct.CfgError* noundef %7)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.else
  %8 = load i32, i32* %number4, align 4
  %9 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %val9 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %9, i32 0, i32 2
  %integer = bitcast %union.CfgVal* %val9 to i32*
  store i32 %8, i32* %integer, align 4
  %10 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %type10 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %10, i32 0, i32 0
  store i32 2, i32* %type10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then7, %if.then3
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rgba(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %rgb = alloca [3 x i8], align 1
  %i = alloca i32, align 4
  %number = alloca i32, align 4
  %alpha = alloca i8, align 1
  %number44 = alloca float, align 4
  %number59 = alloca i32, align 4
  %.compoundliteral = alloca %struct.CfgColor, align 1
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call i32 @cur(%struct.Scanner* noundef %1)
  %call2 = call zeroext i1 @consume_literal(%struct.Scanner* noundef %0, i32 noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 noundef 4)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %3 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call3 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %2, %struct.CfgError* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_blank(%struct.Scanner* noundef %4)
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call4 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %5)
  br i1 %call4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call5 = call signext i8 @peek(%struct.Scanner* noundef %6)
  %conv = sext i8 %call5 to i32
  %cmp = icmp ne i32 %conv, 40
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %8 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call8 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %7, %struct.CfgError* noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 %call8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %9 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call10 = call signext i8 @advance(%struct.Scanner* noundef %9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %10 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %10, 3
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_blank(%struct.Scanner* noundef %11)
  %12 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call13 = call zeroext i1 @match_float(%struct.Scanner* noundef %12)
  br i1 %call13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.body
  %13 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %14 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call15 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %13, %struct.CfgError* noundef %14, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %for.body
  %15 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %16 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call17 = call i32 @consume_int(%struct.Scanner* noundef %15, i32* noundef %number, %struct.CfgError* noundef %16)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i32 -1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %17 = load i32, i32* %number, align 4
  %cmp22 = icmp slt i32 %17, 0
  br i1 %cmp22, label %if.then27, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end21
  %18 = load i32, i32* %number, align 4
  %cmp25 = icmp sgt i32 %18, 255
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %lor.lhs.false24, %if.end21
  %19 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %20 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call28 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %19, %struct.CfgError* noundef %20, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  store i32 %call28, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %lor.lhs.false24
  %21 = load i32, i32* %number, align 4
  %conv30 = trunc i32 %21 to i8
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i64 0, i64 %idxprom
  store i8 %conv30, i8* %arrayidx, align 1
  %23 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_blank(%struct.Scanner* noundef %23)
  %24 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call31 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %24)
  br i1 %call31, label %if.then38, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end29
  %25 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call34 = call signext i8 @peek(%struct.Scanner* noundef %25)
  %conv35 = sext i8 %call34 to i32
  %cmp36 = icmp ne i32 %conv35, 44
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %lor.lhs.false33, %if.end29
  %26 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %27 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call39 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %26, %struct.CfgError* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i32 %call39, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %lor.lhs.false33
  %28 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call41 = call signext i8 @advance(%struct.Scanner* noundef %28)
  br label %for.inc

for.inc:                                          ; preds = %if.end40
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %30 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_blank(%struct.Scanner* noundef %30)
  %31 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call42 = call zeroext i1 @match_float(%struct.Scanner* noundef %31)
  br i1 %call42, label %if.then43, label %if.else

if.then43:                                        ; preds = %for.end
  %32 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %33 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call45 = call i32 @consume_float(%struct.Scanner* noundef %32, float* noundef %number44, %struct.CfgError* noundef %33)
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then43
  store i32 -1, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then43
  %34 = load float, float* %number44, align 4
  %cmp50 = fcmp olt float %34, 0.000000e+00
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end49
  %35 = load float, float* %number44, align 4
  %cmp53 = fcmp ogt float %35, 1.000000e+00
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %lor.lhs.false52, %if.end49
  %36 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %37 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call56 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %36, %struct.CfgError* noundef %37, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  store i32 %call56, i32* %retval, align 4
  br label %return

if.end57:                                         ; preds = %lor.lhs.false52
  %38 = load float, float* %number44, align 4
  %mul = fmul float %38, 2.550000e+02
  %conv58 = fptoui float %mul to i8
  store i8 %conv58, i8* %alpha, align 1
  br label %if.end75

if.else:                                          ; preds = %for.end
  %39 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %40 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call60 = call i32 @consume_int(%struct.Scanner* noundef %39, i32* noundef %number59, %struct.CfgError* noundef %40)
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.else
  store i32 -1, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.else
  %41 = load i32, i32* %number59, align 4
  %cmp65 = icmp slt i32 %41, 0
  br i1 %cmp65, label %if.then70, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end64
  %42 = load i32, i32* %number59, align 4
  %cmp68 = icmp sgt i32 %42, 1
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %lor.lhs.false67, %if.end64
  %43 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %44 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call71 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %43, %struct.CfgError* noundef %44, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  store i32 %call71, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %lor.lhs.false67
  %45 = load i32, i32* %number59, align 4
  %mul73 = mul nsw i32 %45, 255
  %conv74 = trunc i32 %mul73 to i8
  store i8 %conv74, i8* %alpha, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.end72, %if.end57
  %46 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_blank(%struct.Scanner* noundef %46)
  %47 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call76 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %47)
  br i1 %call76, label %if.then83, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.end75
  %48 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call79 = call signext i8 @peek(%struct.Scanner* noundef %48)
  %conv80 = sext i8 %call79 to i32
  %cmp81 = icmp ne i32 %conv80, 41
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %lor.lhs.false78, %if.end75
  %49 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %50 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call84 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %49, %struct.CfgError* noundef %50, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store i32 %call84, i32* %retval, align 4
  br label %return

if.end85:                                         ; preds = %lor.lhs.false78
  %51 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call86 = call signext i8 @advance(%struct.Scanner* noundef %51)
  %52 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %val = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %52, i32 0, i32 2
  %color = bitcast %union.CfgVal* %val to %struct.CfgColor*
  %r = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %.compoundliteral, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i64 0, i64 0
  %53 = load i8, i8* %arrayidx87, align 1
  store i8 %53, i8* %r, align 1
  %g = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %.compoundliteral, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i64 0, i64 1
  %54 = load i8, i8* %arrayidx88, align 1
  store i8 %54, i8* %g, align 1
  %b = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %.compoundliteral, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i64 0, i64 2
  %55 = load i8, i8* %arrayidx89, align 1
  store i8 %55, i8* %b, align 1
  %a = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %.compoundliteral, i32 0, i32 3
  %56 = load i8, i8* %alpha, align 1
  store i8 %56, i8* %a, align 1
  %57 = bitcast %struct.CfgColor* %color to i8*
  %58 = bitcast %struct.CfgColor* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 1 %58, i64 4, i1 false)
  %59 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %type = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %59, i32 0, i32 0
  store i32 4, i32* %type, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end85, %if.then83, %if.then70, %if.then63, %if.then55, %if.then48, %if.then38, %if.then27, %if.then20, %if.then14, %if.then7, %if.then
  %60 = load i32, i32* %retval, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_true(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call i32 @cur(%struct.Scanner* noundef %1)
  %call2 = call zeroext i1 @consume_literal(%struct.Scanner* noundef %0, i32 noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 noundef 4)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %3 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call3 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %2, %struct.CfgError* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %val = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %4, i32 0, i32 2
  %boolean = bitcast %union.CfgVal* %val to i8*
  store i8 1, i8* %boolean, align 4
  %5 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %type = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %5, i32 0, i32 0
  store i32 1, i32* %type, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_false(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call i32 @cur(%struct.Scanner* noundef %1)
  %call2 = call zeroext i1 @consume_literal(%struct.Scanner* noundef %0, i32 noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %3 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call3 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %2, %struct.CfgError* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %val = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %4, i32 0, i32 2
  %boolean = bitcast %union.CfgVal* %val to i8*
  store i8 0, i8* %boolean, align 4
  %5 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %type = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %5, i32 0, i32 0
  store i32 1, i32* %type, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_literal(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call signext i8 @peek(%struct.Scanner* noundef %0)
  %conv = sext i8 %call to i32
  switch i32 %conv, label %sw.default [
    i32 116, label %sw.bb
    i32 102, label %sw.bb3
    i32 114, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %2 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %3 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call2 = call i32 @parse_true(%struct.Scanner* noundef %1, %struct.CfgEntry* noundef %2, %struct.CfgError* noundef %3)
  store i32 %call2, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %5 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %6 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call4 = call i32 @parse_false(%struct.Scanner* noundef %4, %struct.CfgEntry* noundef %5, %struct.CfgError* noundef %6)
  store i32 %call4, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %7 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %8 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %9 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call6 = call i32 @parse_rgba(%struct.Scanner* noundef %7, %struct.CfgEntry* noundef %8, %struct.CfgError* noundef %9)
  store i32 %call6, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %10 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %11 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call7 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %10, %struct.CfgError* noundef %11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %call7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_value(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %c = alloca i8, align 1
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_blank(%struct.Scanner* noundef %0)
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %1)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call2 = call signext i8 @peek(%struct.Scanner* noundef %2)
  %conv = sext i8 %call2 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %4 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call4 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %3, %struct.CfgError* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call5 = call signext i8 @peek(%struct.Scanner* noundef %5)
  store i8 %call5, i8* %c, align 1
  %6 = load i8, i8* %c, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 34
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %7 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %8 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %9 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call10 = call i32 @parse_string(%struct.Scanner* noundef %7, %struct.CfgEntry* noundef %8, %struct.CfgError* noundef %9)
  store i32 %call10, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %call11 = call i16** @__ctype_b_loc() #9
  %10 = load i16*, i16** %call11, align 8
  %11 = load i8, i8* %c, align 1
  %conv12 = sext i8 %11 to i32
  %idxprom = sext i32 %conv12 to i64
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv13 = zext i16 %12 to i32
  %and = and i32 %conv13, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  %13 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %14 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %15 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call15 = call i32 @parse_literal(%struct.Scanner* noundef %13, %struct.CfgEntry* noundef %14, %struct.CfgError* noundef %15)
  store i32 %call15, i32* %retval, align 4
  br label %return

if.else16:                                        ; preds = %if.else
  %call17 = call i16** @__ctype_b_loc() #9
  %16 = load i16*, i16** %call17, align 8
  %17 = load i8, i8* %c, align 1
  %conv18 = sext i8 %17 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, i16* %16, i64 %idxprom19
  %18 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %18 to i32
  %and22 = and i32 %conv21, 2048
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then36, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.else16
  %19 = load i8, i8* %c, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp eq i32 %conv25, 45
  br i1 %cmp26, label %land.lhs.true, label %if.else38

land.lhs.true:                                    ; preds = %lor.lhs.false24
  %call28 = call i16** @__ctype_b_loc() #9
  %20 = load i16*, i16** %call28, align 8
  %21 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call29 = call signext i8 @peek_next(%struct.Scanner* noundef %21)
  %conv30 = sext i8 %call29 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, i16* %20, i64 %idxprom31
  %22 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %22 to i32
  %and34 = and i32 %conv33, 2048
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %land.lhs.true, %if.else16
  %23 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %24 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %25 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call37 = call i32 @parse_number(%struct.Scanner* noundef %23, %struct.CfgEntry* noundef %24, %struct.CfgError* noundef %25)
  store i32 %call37, i32* %retval, align 4
  br label %return

if.else38:                                        ; preds = %land.lhs.true, %lor.lhs.false24
  %26 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %27 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call39 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %26, %struct.CfgError* noundef %27, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  store i32 %call39, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else38, %if.then36, %if.then14, %if.then9, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_key(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %key_offset = alloca i32, align 4
  %key_len = alloca i32, align 4
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %0)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call2 = call signext i8 @peek(%struct.Scanner* noundef %1)
  %call3 = call zeroext i1 @is_key(i8 noundef signext %call2)
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %3 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call4 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %2, %struct.CfgError* noundef %3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call5 = call i32 @cur(%struct.Scanner* noundef %4)
  store i32 %call5, i32* %key_offset, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call6 = call signext i8 @advance(%struct.Scanner* noundef %5)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call7 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %6)
  br i1 %call7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %7 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call8 = call signext i8 @peek(%struct.Scanner* noundef %7)
  %call9 = call zeroext i1 @is_key(i8 noundef signext %call8)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %call9, %land.rhs ]
  br i1 %8, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %land.end
  %9 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call10 = call i32 @cur(%struct.Scanner* noundef %9)
  %10 = load i32, i32* %key_offset, align 4
  %sub = sub nsw i32 %call10, %10
  store i32 %sub, i32* %key_len, align 4
  %11 = load i32, i32* %key_len, align 4
  %cmp = icmp sgt i32 %11, 32
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %do.end
  %12 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %13 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call12 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %12, %struct.CfgError* noundef %13, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  store i32 %call12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %do.end
  %14 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %15 = load i32, i32* %key_offset, align 4
  %16 = load i32, i32* %key_len, align 4
  %17 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %17, i32 0, i32 1
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %key, i64 0, i64 0
  call void @copy_slice_into(%struct.Scanner* noundef %14, i32 noundef %15, i32 noundef %16, i8* noundef %arraydecay, i32 noundef 33)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consume_colon(%struct.Scanner* noundef %s, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_blank(%struct.Scanner* noundef %0)
  %1 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %1)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call1 = call signext i8 @peek(%struct.Scanner* noundef %2)
  %conv = sext i8 %call1 to i32
  %cmp = icmp ne i32 %conv, 58
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %4 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call3 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %3, %struct.CfgError* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call4 = call signext i8 @advance(%struct.Scanner* noundef %5)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_entry(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %entry1, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.Scanner*, align 8
  %entry.addr = alloca %struct.CfgEntry*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.CfgEntry* %entry1, %struct.CfgEntry** %entry.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %1 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %2 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call = call i32 @parse_key(%struct.Scanner* noundef %0, %struct.CfgEntry* noundef %1, %struct.CfgError* noundef %2)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %4 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call2 = call i32 @consume_colon(%struct.Scanner* noundef %3, %struct.CfgError* noundef %4)
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %6 = load %struct.CfgEntry*, %struct.CfgEntry** %entry.addr, align 8
  %7 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call6 = call i32 @parse_value(%struct.Scanner* noundef %5, %struct.CfgEntry* noundef %6, %struct.CfgError* noundef %7)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %8 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_blank(%struct.Scanner* noundef %8)
  %9 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call10 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %9)
  br i1 %call10, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %10 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call11 = call signext i8 @peek(%struct.Scanner* noundef %10)
  %conv = sext i8 %call11 to i32
  %cmp12 = icmp eq i32 %conv, 35
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %11 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @skip_comment(%struct.Scanner* noundef %11)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end9
  %12 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call16 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %12)
  br i1 %call16, label %if.end26, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end15
  %13 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call18 = call signext i8 @peek(%struct.Scanner* noundef %13)
  %conv19 = sext i8 %call18 to i32
  %cmp20 = icmp ne i32 %conv19, 10
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %land.lhs.true17
  %14 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %15 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %16 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call23 = call signext i8 @peek(%struct.Scanner* noundef %16)
  %conv24 = sext i8 %call23 to i32
  %call25 = call i32 (%struct.Scanner*, %struct.CfgError*, i8*, ...) @error(%struct.Scanner* noundef %14, %struct.CfgError* noundef %15, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv24)
  store i32 %call25, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %land.lhs.true17, %if.end15
  %17 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call27 = call zeroext i1 @is_at_end(%struct.Scanner* noundef %17)
  br i1 %call27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  %18 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %call29 = call signext i8 @advance(%struct.Scanner* noundef %18)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then22, %if.then8, %if.then4, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_parse(i8* noundef %src, i32 noundef %src_len, %struct.Cfg* noundef %cfg, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %src_len.addr = alloca i32, align 4
  %cfg.addr = alloca %struct.Cfg*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %s = alloca %struct.Scanner, align 8
  %entry2 = alloca %struct.CfgEntry*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %src_len, i32* %src_len.addr, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i32, i32* %src_len.addr, align 4
  call void @init_scanner(%struct.Scanner* noundef %s, i8* noundef %0, i32 noundef %1)
  %2 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  call void @init_error(%struct.CfgError* noundef %2)
  %3 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %count = getelementptr inbounds %struct.Cfg, %struct.Cfg* %3, i32 0, i32 1
  store i32 0, i32* %count, align 8
  call void @skip_whitespace_and_comments(%struct.Scanner* noundef %s)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call zeroext i1 @is_at_end(%struct.Scanner* noundef %s)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %count1 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %4, i32 0, i32 1
  %5 = load i32, i32* %count1, align 8
  %6 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %capacity = getelementptr inbounds %struct.Cfg, %struct.Cfg* %6, i32 0, i32 2
  %7 = load i32, i32* %capacity, align 4
  %cmp = icmp slt i32 %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries = getelementptr inbounds %struct.Cfg, %struct.Cfg* %9, i32 0, i32 0
  %10 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  %11 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %count3 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %11, i32 0, i32 1
  %12 = load i32, i32* %count3, align 8
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %10, i64 %idxprom
  store %struct.CfgEntry* %arrayidx, %struct.CfgEntry** %entry2, align 8
  %13 = load %struct.CfgEntry*, %struct.CfgEntry** %entry2, align 8
  %14 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call4 = call i32 @parse_entry(%struct.Scanner* noundef %s, %struct.CfgEntry* noundef %13, %struct.CfgError* noundef %14)
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %15 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %count6 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %15, i32 0, i32 1
  %16 = load i32, i32* %count6, align 8
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %count6, align 8
  call void @skip_whitespace_and_comments(%struct.Scanner* noundef %s)
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_file(i8* noundef %filename, i32* noundef %count, i8* noundef %err) #0 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %count.addr = alloca i32*, align 8
  %err.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %file_size = alloca i64, align 8
  %src = alloca i8*, align 8
  %bytes_read = alloca i64, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  store i8* %err, i8** %err.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %err.addr, align 8
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2, i64 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #12
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* noundef %3, i64 noundef 0, i32 noundef 2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call3 = call i64 @ftell(%struct._IO_FILE* noundef %4)
  store i64 %call3, i64* %file_size, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @rewind(%struct._IO_FILE* noundef %5)
  %6 = load i64, i64* %file_size, align 8
  %add = add i64 %6, 1
  %call4 = call noalias i8* @malloc(i64 noundef %add) #12
  store i8* %call4, i8** %src, align 8
  %7 = load i8*, i8** %src, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %8 = load i8*, i8** %err.addr, align 8
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %8, i64 noundef 64, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0)) #12
  store i8* null, i8** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load i8*, i8** %src, align 8
  %10 = load i64, i64* %file_size, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call8 = call i64 @fread(i8* noundef %9, i64 noundef 1, i64 noundef %10, %struct._IO_FILE* noundef %11)
  store i64 %call8, i64* %bytes_read, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* noundef %12)
  %13 = load i64, i64* %bytes_read, align 8
  %14 = load i64, i64* %file_size, align 8
  %cmp10 = icmp ne i64 %13, %14
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %15 = load i8*, i8** %src, align 8
  call void @free(i8* noundef %15) #12
  %16 = load i8*, i8** %err.addr, align 8
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %16, i64 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0)) #12
  store i8* null, i8** %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end7
  %17 = load i64, i64* %file_size, align 8
  %conv = trunc i64 %17 to i32
  %18 = load i32*, i32** %count.addr, align 8
  store i32 %conv, i32* %18, align 4
  %19 = load i8*, i8** %src, align 8
  store i8* %19, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then5, %if.then
  %20 = load i8*, i8** %retval, align 8
  ret i8* %20
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #8

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #8

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #8

declare dso_local void @rewind(%struct._IO_FILE* noundef) #8

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #7

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #8

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #8

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_parse_file(i8* noundef %filename, %struct.Cfg* noundef %cfg, %struct.CfgError* noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %cfg.addr = alloca %struct.Cfg*, align 8
  %err.addr = alloca %struct.CfgError*, align 8
  %len = alloca i64, align 8
  %ext = alloca i8*, align 8
  %src_len = alloca i32, align 4
  %src = alloca i8*, align 8
  %res = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store %struct.CfgError* %err, %struct.CfgError** %err.addr, align 8
  %0 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  call void @init_error(%struct.CfgError* noundef %0)
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* noundef %1) #11
  store i64 %call, i64* %len, align 8
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %2, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %msg = getelementptr inbounds %struct.CfgError, %struct.CfgError* %3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %msg, i64 0, i64 0
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 64, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0)) #12
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i64, i64* %len, align 8
  %sub = sub i64 %5, 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %sub
  store i8* %add.ptr, i8** %ext, align 8
  %6 = load i8*, i8** %ext, align 8
  %call2 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #11
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %7 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %msg5 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %7, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [64 x i8], [64 x i8]* %msg5, i64 0, i64 0
  %call7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay6, i64 noundef 64, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0)) #12
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %8 = load i8*, i8** %filename.addr, align 8
  %9 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %msg9 = getelementptr inbounds %struct.CfgError, %struct.CfgError* %9, i32 0, i32 3
  %arraydecay10 = getelementptr inbounds [64 x i8], [64 x i8]* %msg9, i64 0, i64 0
  %call11 = call i8* @read_file(i8* noundef %8, i32* noundef %src_len, i8* noundef %arraydecay10)
  store i8* %call11, i8** %src, align 8
  %10 = load i8*, i8** %src, align 8
  %cmp12 = icmp eq i8* %10, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %11 = load i8*, i8** %src, align 8
  %12 = load i32, i32* %src_len, align 4
  %13 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %14 = load %struct.CfgError*, %struct.CfgError** %err.addr, align 8
  %call15 = call i32 @cfg_parse(i8* noundef %11, i32 noundef %12, %struct.Cfg* noundef %13, %struct.CfgError* noundef %14)
  store i32 %call15, i32* %res, align 4
  %15 = load i8*, i8** %src, align 8
  call void @free(i8* noundef %15) #12
  %16 = load i32, i32* %res, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then4, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_val(%struct.Cfg* noundef %cfg, i8* noundef %key, i8* noundef %fallback, i32 noundef %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %fallback, i8** %fallback.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %count = getelementptr inbounds %struct.Cfg, %struct.Cfg* %0, i32 0, i32 1
  %1 = load i32, i32* %count, align 8
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries = getelementptr inbounds %struct.Cfg, %struct.Cfg* %3, i32 0, i32 0
  %4 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %4, i64 %idxprom
  %type1 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %type1, align 4
  %7 = load i32, i32* %type.addr, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8*, i8** %key.addr, align 8
  %9 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries3 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %9, i32 0, i32 0
  %10 = load %struct.CfgEntry*, %struct.CfgEntry** %entries3, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %10, i64 %idxprom4
  %key6 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %key6, i64 0, i64 0
  %call = call i32 @strcmp(i8* noundef %8, i8* noundef %arraydecay) #11
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries7 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %12, i32 0, i32 0
  %13 = load %struct.CfgEntry*, %struct.CfgEntry** %entries7, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %13, i64 %idxprom8
  %val = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx9, i32 0, i32 2
  %15 = bitcast %union.CfgVal* %val to i8*
  store i8* %15, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %fallback.addr, align 8
  store i8* %17, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i8*, i8** %retval, align 8
  ret i8* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cfg_get_string(%struct.Cfg* noundef %cfg, i8* noundef %key, i8* noundef %fallback) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca i8*, align 8
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %fallback, i8** %fallback.addr, align 8
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i8*, i8** %fallback.addr, align 8
  %call = call i8* @get_val(%struct.Cfg* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef 0)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @cfg_get_bool(%struct.Cfg* noundef %cfg, i8* noundef %key, i1 noundef zeroext %fallback) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca i8, align 1
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %frombool = zext i1 %fallback to i8
  store i8 %frombool, i8* %fallback.addr, align 1
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i8* @get_val(%struct.Cfg* noundef %0, i8* noundef %1, i8* noundef %fallback.addr, i32 noundef 1)
  %2 = load i8, i8* %call, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_get_int(%struct.Cfg* noundef %cfg, i8* noundef %key, i32 noundef %fallback) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca i32, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %fallback, i32* %fallback.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = bitcast i32* %fallback.addr to i8*
  %call = call i8* @get_val(%struct.Cfg* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef 2)
  %3 = bitcast i8* %call to i32*
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_get_int_min(%struct.Cfg* noundef %cfg, i8* noundef %key, i32 noundef %fallback, i32 noundef %min) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %fallback, i32* %fallback.addr, align 4
  store i32 %min, i32* %min.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32, i32* %fallback.addr, align 4
  %call = call i32 @cfg_get_int(%struct.Cfg* noundef %0, i8* noundef %1, i32 noundef %2)
  store i32 %call, i32* %value, align 4
  %3 = load i32, i32* %value, align 4
  %4 = load i32, i32* %min.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %fallback.addr, align 4
  store i32 %5, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %value, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_get_int_max(%struct.Cfg* noundef %cfg, i8* noundef %key, i32 noundef %fallback, i32 noundef %max) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %fallback, i32* %fallback.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32, i32* %fallback.addr, align 4
  %call = call i32 @cfg_get_int(%struct.Cfg* noundef %0, i8* noundef %1, i32 noundef %2)
  store i32 %call, i32* %value, align 4
  %3 = load i32, i32* %value, align 4
  %4 = load i32, i32* %max.addr, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %fallback.addr, align 4
  store i32 %5, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %value, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_get_int_range(%struct.Cfg* noundef %cfg, i8* noundef %key, i32 noundef %fallback, i32 noundef %min, i32 noundef %max) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %fallback, i32* %fallback.addr, align 4
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32, i32* %fallback.addr, align 4
  %call = call i32 @cfg_get_int(%struct.Cfg* noundef %0, i8* noundef %1, i32 noundef %2)
  store i32 %call, i32* %value, align 4
  %3 = load i32, i32* %value, align 4
  %4 = load i32, i32* %min.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %value, align 4
  %6 = load i32, i32* %max.addr, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i32, i32* %fallback.addr, align 4
  store i32 %7, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load i32, i32* %value, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @cfg_get_float(%struct.Cfg* noundef %cfg, i8* noundef %key, float noundef %fallback) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca float, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store float %fallback, float* %fallback.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = bitcast float* %fallback.addr to i8*
  %call = call i8* @get_val(%struct.Cfg* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef 3)
  %3 = bitcast i8* %call to float*
  %4 = load float, float* %3, align 4
  ret float %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @cfg_get_float_min(%struct.Cfg* noundef %cfg, i8* noundef %key, float noundef %fallback, float noundef %min) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca float, align 4
  %min.addr = alloca float, align 4
  %value = alloca float, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store float %fallback, float* %fallback.addr, align 4
  store float %min, float* %min.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load float, float* %fallback.addr, align 4
  %call = call float @cfg_get_float(%struct.Cfg* noundef %0, i8* noundef %1, float noundef %2)
  store float %call, float* %value, align 4
  %3 = load float, float* %value, align 4
  %4 = load float, float* %min.addr, align 4
  %cmp = fcmp olt float %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load float, float* %fallback.addr, align 4
  store float %5, float* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load float, float* %value, align 4
  ret float %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @cfg_get_float_max(%struct.Cfg* noundef %cfg, i8* noundef %key, float noundef %fallback, float noundef %max) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca float, align 4
  %max.addr = alloca float, align 4
  %value = alloca float, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store float %fallback, float* %fallback.addr, align 4
  store float %max, float* %max.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load float, float* %fallback.addr, align 4
  %call = call float @cfg_get_float(%struct.Cfg* noundef %0, i8* noundef %1, float noundef %2)
  store float %call, float* %value, align 4
  %3 = load float, float* %value, align 4
  %4 = load float, float* %max.addr, align 4
  %cmp = fcmp ogt float %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load float, float* %fallback.addr, align 4
  store float %5, float* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load float, float* %value, align 4
  ret float %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @cfg_get_float_range(%struct.Cfg* noundef %cfg, i8* noundef %key, float noundef %fallback, float noundef %min, float noundef %max) #0 {
entry:
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %fallback.addr = alloca float, align 4
  %min.addr = alloca float, align 4
  %max.addr = alloca float, align 4
  %value = alloca float, align 4
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store float %fallback, float* %fallback.addr, align 4
  store float %min, float* %min.addr, align 4
  store float %max, float* %max.addr, align 4
  %0 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load float, float* %fallback.addr, align 4
  %call = call float @cfg_get_float(%struct.Cfg* noundef %0, i8* noundef %1, float noundef %2)
  store float %call, float* %value, align 4
  %3 = load float, float* %value, align 4
  %4 = load float, float* %min.addr, align 4
  %cmp = fcmp olt float %3, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load float, float* %value, align 4
  %6 = load float, float* %max.addr, align 4
  %cmp1 = fcmp ogt float %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load float, float* %fallback.addr, align 4
  store float %7, float* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load float, float* %value, align 4
  ret float %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_get_color(%struct.Cfg* noundef %cfg, i8* noundef %key, i32 %fallback.coerce) #0 {
entry:
  %retval = alloca %struct.CfgColor, align 1
  %fallback = alloca %struct.CfgColor, align 1
  %cfg.addr = alloca %struct.Cfg*, align 8
  %key.addr = alloca i8*, align 8
  %0 = bitcast %struct.CfgColor* %fallback to i32*
  store i32 %fallback.coerce, i32* %0, align 1
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %1 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %3 = bitcast %struct.CfgColor* %fallback to i8*
  %call = call i8* @get_val(%struct.Cfg* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef 4)
  %4 = bitcast i8* %call to %struct.CfgColor*
  %5 = bitcast %struct.CfgColor* %retval to i8*
  %6 = bitcast %struct.CfgColor* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %7 = bitcast %struct.CfgColor* %retval to i32*
  %8 = load i32, i32* %7, align 1
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg_fprint(%struct._IO_FILE* noundef %stream, %struct.Cfg* noundef %cfg) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %cfg.addr = alloca %struct.Cfg*, align 8
  %i = alloca i32, align 4
  %c = alloca %struct.CfgColor, align 1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.Cfg* %cfg, %struct.Cfg** %cfg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %count = getelementptr inbounds %struct.Cfg, %struct.Cfg* %1, i32 0, i32 1
  %2 = load i32, i32* %count, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %4 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries = getelementptr inbounds %struct.Cfg, %struct.Cfg* %4, i32 0, i32 0
  %5 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %5, i64 %idxprom
  %key = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx, i32 0, i32 1
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %key, i64 0, i64 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* noundef %arraydecay)
  %7 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries1 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %7, i32 0, i32 0
  %8 = load %struct.CfgEntry*, %struct.CfgEntry** %entries1, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %8, i64 %idxprom2
  %type = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx3, i32 0, i32 0
  %10 = load i32, i32* %type, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb15
    i32 3, label %sw.bb21
    i32 4, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %12 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries4 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %12, i32 0, i32 0
  %13 = load %struct.CfgEntry*, %struct.CfgEntry** %entries4, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %13, i64 %idxprom5
  %val = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx6, i32 0, i32 2
  %string = bitcast %union.CfgVal* %val to [65 x i8]*
  %arraydecay7 = getelementptr inbounds [65 x i8], [65 x i8]* %string, i64 0, i64 0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* noundef %arraydecay7)
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %16 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries10 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %16, i32 0, i32 0
  %17 = load %struct.CfgEntry*, %struct.CfgEntry** %entries10, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %17, i64 %idxprom11
  %val13 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx12, i32 0, i32 2
  %boolean = bitcast %union.CfgVal* %val13 to i8*
  %19 = load i8, i8* %boolean, align 4
  %tobool = trunc i8 %19 to i1
  %20 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* noundef %cond)
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.body
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %22 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries16 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %22, i32 0, i32 0
  %23 = load %struct.CfgEntry*, %struct.CfgEntry** %entries16, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %23, i64 %idxprom17
  %val19 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx18, i32 0, i32 2
  %integer = bitcast %union.CfgVal* %val19 to i32*
  %25 = load i32, i32* %integer, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i32 noundef %25)
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %27 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries22 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %27, i32 0, i32 0
  %28 = load %struct.CfgEntry*, %struct.CfgEntry** %entries22, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %28, i64 %idxprom23
  %val25 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx24, i32 0, i32 2
  %floating = bitcast %union.CfgVal* %val25 to float*
  %30 = load float, float* %floating, align 4
  %conv = fpext float %30 to double
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), double noundef %conv)
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body
  %31 = load %struct.Cfg*, %struct.Cfg** %cfg.addr, align 8
  %entries28 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %31, i32 0, i32 0
  %32 = load %struct.CfgEntry*, %struct.CfgEntry** %entries28, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %32, i64 %idxprom29
  %val31 = getelementptr inbounds %struct.CfgEntry, %struct.CfgEntry* %arrayidx30, i32 0, i32 2
  %color = bitcast %union.CfgVal* %val31 to %struct.CfgColor*
  %34 = bitcast %struct.CfgColor* %c to i8*
  %35 = bitcast %struct.CfgColor* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %r = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %c, i32 0, i32 0
  %37 = load i8, i8* %r, align 1
  %conv32 = zext i8 %37 to i32
  %g = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %c, i32 0, i32 1
  %38 = load i8, i8* %g, align 1
  %conv33 = zext i8 %38 to i32
  %b = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %c, i32 0, i32 2
  %39 = load i8, i8* %b, align 1
  %conv34 = zext i8 %39 to i32
  %a = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %c, i32 0, i32 3
  %40 = load i8, i8* %a, align 1
  %conv35 = zext i8 %40 to i32
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb27, %sw.bb21, %sw.bb15, %sw.bb9, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %capacity = alloca i32, align 4
  %entries = alloca %struct.CfgEntry*, align 8
  %err = alloca %struct.CfgError, align 4
  %cfg = alloca %struct.Cfg, align 8
  %res = alloca i32, align 4
  %font = alloca i8*, align 8
  %font_size = alloca i32, align 4
  %zoom = alloca float, align 4
  %line_num = alloca i8, align 1
  %bg = alloca %struct.CfgColor, align 1
  %.compoundliteral = alloca %struct.CfgColor, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 64, i32* %capacity, align 4
  %2 = load i32, i32* %capacity, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 108
  %call1 = call noalias i8* @malloc(i64 noundef %mul) #12
  %3 = bitcast i8* %call1 to %struct.CfgEntry*
  store %struct.CfgEntry* %3, %struct.CfgEntry** %entries, align 8
  %4 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  %cmp2 = icmp eq %struct.CfgEntry* %4, null
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %entries7 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %cfg, i32 0, i32 0
  %6 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  store %struct.CfgEntry* %6, %struct.CfgEntry** %entries7, align 8
  %count = getelementptr inbounds %struct.Cfg, %struct.Cfg* %cfg, i32 0, i32 1
  store i32 0, i32* %count, align 8
  %capacity8 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %cfg, i32 0, i32 2
  %7 = load i32, i32* %capacity, align 4
  store i32 %7, i32* %capacity8, align 4
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx, align 8
  %call9 = call i32 @cfg_parse_file(i8* noundef %9, %struct.Cfg* noundef %cfg, %struct.CfgError* noundef %err)
  store i32 %call9, i32* %res, align 4
  %10 = load i32, i32* %res, align 4
  %cmp10 = icmp ne i32 %10, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @cfg_fprint_error(%struct._IO_FILE* noundef %11, %struct.CfgError* noundef %err)
  %12 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  %13 = bitcast %struct.CfgEntry* %12 to i8*
  call void @free(i8* noundef %13) #12
  store i32 1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end6
  %call14 = call i8* @cfg_get_string(%struct.Cfg* noundef %cfg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0))
  store i8* %call14, i8** %font, align 8
  %call15 = call i32 @cfg_get_int(%struct.Cfg* noundef %cfg, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i32 noundef 12)
  store i32 %call15, i32* %font_size, align 4
  %call16 = call float @cfg_get_float(%struct.Cfg* noundef %cfg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), float noundef 1.000000e+00)
  store float %call16, float* %zoom, align 4
  %call17 = call zeroext i1 @cfg_get_bool(%struct.Cfg* noundef %cfg, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i1 noundef zeroext true)
  %frombool = zext i1 %call17 to i8
  store i8 %frombool, i8* %line_num, align 1
  %r = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %.compoundliteral, i32 0, i32 0
  store i8 -1, i8* %r, align 1
  %g = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %.compoundliteral, i32 0, i32 1
  store i8 -1, i8* %g, align 1
  %b = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %.compoundliteral, i32 0, i32 2
  store i8 -1, i8* %b, align 1
  %a = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %.compoundliteral, i32 0, i32 3
  store i8 1, i8* %a, align 1
  %14 = bitcast %struct.CfgColor* %.compoundliteral to i32*
  %15 = load i32, i32* %14, align 1
  %call18 = call i32 @cfg_get_color(%struct.Cfg* noundef %cfg, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i32 %15)
  %16 = bitcast %struct.CfgColor* %bg to i32*
  store i32 %call18, i32* %16, align 1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = load i8*, i8** %font, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i8* noundef %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = load i32, i32* %font_size, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i32 noundef %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = load float, float* %zoom, align 4
  %conv21 = fpext float %22 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), double noundef %conv21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = load i8, i8* %line_num, align 1
  %tobool = trunc i8 %24 to i1
  %25 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8* noundef %cond)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %r25 = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %bg, i32 0, i32 0
  %27 = load i8, i8* %r25, align 1
  %conv26 = zext i8 %27 to i32
  %g27 = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %bg, i32 0, i32 1
  %28 = load i8, i8* %g27, align 1
  %conv28 = zext i8 %28 to i32
  %b29 = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %bg, i32 0, i32 2
  %29 = load i8, i8* %b29, align 1
  %conv30 = zext i8 %29 to i32
  %a31 = getelementptr inbounds %struct.CfgColor, %struct.CfgColor* %bg, i32 0, i32 3
  %30 = load i8, i8* %a31, align 1
  %conv32 = zext i8 %30 to i32
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %conv32)
  %31 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  %32 = bitcast %struct.CfgEntry* %31 to i8*
  call void @free(i8* noundef %32) #12
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then4, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i8* noundef %Data, i64 noundef %Size) #0 {
entry:
  %retval = alloca i32, align 4
  %Data.addr = alloca i8*, align 8
  %Size.addr = alloca i64, align 8
  %capacity = alloca i32, align 4
  %entries = alloca %struct.CfgEntry*, align 8
  %err = alloca %struct.CfgError, align 4
  %cfg = alloca %struct.Cfg, align 8
  %res = alloca i32, align 4
  store i8* %Data, i8** %Data.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  store i32 512, i32* %capacity, align 4
  %0 = load i32, i32* %capacity, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 108
  %call = call noalias i8* @malloc(i64 noundef %mul) #12
  %1 = bitcast i8* %call to %struct.CfgEntry*
  store %struct.CfgEntry* %1, %struct.CfgEntry** %entries, align 8
  %2 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  %cmp = icmp eq %struct.CfgEntry* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %entries2 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %cfg, i32 0, i32 0
  %3 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  store %struct.CfgEntry* %3, %struct.CfgEntry** %entries2, align 8
  %count = getelementptr inbounds %struct.Cfg, %struct.Cfg* %cfg, i32 0, i32 1
  store i32 0, i32* %count, align 8
  %capacity3 = getelementptr inbounds %struct.Cfg, %struct.Cfg* %cfg, i32 0, i32 2
  %4 = load i32, i32* %capacity, align 4
  store i32 %4, i32* %capacity3, align 4
  %5 = load i8*, i8** %Data.addr, align 8
  %6 = load i64, i64* %Size.addr, align 8
  %conv4 = trunc i64 %6 to i32
  %call5 = call i32 @cfg_parse(i8* noundef %5, i32 noundef %conv4, %struct.Cfg* noundef %cfg, %struct.CfgError* noundef %err)
  store i32 %call5, i32* %res, align 4
  %7 = load %struct.CfgEntry*, %struct.CfgEntry** %entries, align 8
  %8 = bitcast %struct.CfgEntry* %7 to i8*
  call void @free(i8* noundef %8) #12
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }

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
