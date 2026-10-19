; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/xopt/xopt_unity.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/xopt/xopt_unity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.xoptContext = type { %struct.xoptOption*, i64, i8*, i8 }
%struct.xoptOption = type { i8*, i8, i64, void (i8*, i8*, %struct.xoptOption*, i1, i8**)*, i64, i8*, i8* }
%struct.xoptAutohelpOptions = type { i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"could not allocate context\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"could not allocate extras array\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"options cannot be specified after arguments: %s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s%s\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"-%c\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"=%s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errbuf = internal global [4096 x i8] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [37 x i8] c"short options cannot be combined: %s\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"invalid option: -%c\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"option doesn't take a value: -%c\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"missing option value: -%c\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"combined short option requiring value is not last: -%c\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"invalid option: --%.*s\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"option doesn't take a value: --%s\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"missing option value: --%s\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"could not realloc arguments array\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [42 x i8] c"warning: XOpt argument type invalid: %ld\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"value isn't a valid number: --%s=%s\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"value isn't a valid number: -%c %s\00", align 1

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
define dso_local i32 @rpl_vsnprintf(i8* noundef %str, i64 noundef %size, i8* noundef %format, %struct.__va_list_tag* noundef %args) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %fvalue = alloca double, align 8
  %value = alloca i64, align 8
  %cvalue = alloca i8, align 1
  %strvalue = alloca i8*, align 8
  %intmaxptr = alloca i64*, align 8
  %ptrdiffptr = alloca i64*, align 8
  %sizeptr = alloca i64*, align 8
  %llongptr = alloca i64*, align 8
  %longptr = alloca i64*, align 8
  %intptr = alloca i32*, align 8
  %shortptr = alloca i16*, align 8
  %charptr = alloca i8*, align 8
  %len = alloca i64, align 8
  %overflow = alloca i32, align 4
  %base = alloca i32, align 4
  %cflags = alloca i32, align 4
  %flags = alloca i32, align 4
  %width = alloca i32, align 4
  %precision = alloca i32, align 4
  %state = alloca i32, align 4
  %ch = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  store i64 0, i64* %len, align 8
  store i32 0, i32* %overflow, align 4
  store i32 0, i32* %base, align 4
  store i32 0, i32* %cflags, align 4
  store i32 0, i32* %flags, align 4
  store i32 0, i32* %width, align 4
  store i32 -1, i32* %precision, align 4
  store i32 0, i32* %state, align 4
  %0 = load i8*, i8** %format.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %format.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %ch, align 1
  %2 = load i8*, i8** %str.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ne i64 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i64 0, i64* %size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog645, %if.end
  %4 = load i8, i8* %ch, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %state, align 4
  switch i32 %5, label %sw.epilog645 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb33
    i32 3, label %sw.bb68
    i32 4, label %sw.bb76
    i32 5, label %sw.bb127
    i32 6, label %sw.bb156
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load i8, i8* %ch, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 37
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb
  store i32 1, i32* %state, align 4
  br label %if.end12

if.else:                                          ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.else
  %7 = load i64, i64* %len, align 8
  %add = add i64 %7, 1
  %8 = load i64, i64* %size.addr, align 8
  %cmp8 = icmp ult i64 %add, %8
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body
  %9 = load i8, i8* %ch, align 1
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i64, i64* %len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11
  store i8 %9, i8* %arrayidx, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body
  %12 = load i64, i64* %len, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %len, align 8
  br label %do.end

do.end:                                           ; preds = %if.end11
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then7
  %13 = load i8*, i8** %format.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr13, i8** %format.addr, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %ch, align 1
  br label %sw.epilog645

sw.bb14:                                          ; preds = %while.body
  %15 = load i8, i8* %ch, align 1
  %conv15 = sext i8 %15 to i32
  switch i32 %conv15, label %sw.default [
    i32 45, label %sw.bb16
    i32 43, label %sw.bb18
    i32 32, label %sw.bb21
    i32 35, label %sw.bb24
    i32 48, label %sw.bb27
    i32 39, label %sw.bb30
  ]

sw.bb16:                                          ; preds = %sw.bb14
  %16 = load i32, i32* %flags, align 4
  %or = or i32 %16, 1
  store i32 %or, i32* %flags, align 4
  %17 = load i8*, i8** %format.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr17, i8** %format.addr, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %ch, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %sw.bb14
  %19 = load i32, i32* %flags, align 4
  %or19 = or i32 %19, 2
  store i32 %or19, i32* %flags, align 4
  %20 = load i8*, i8** %format.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr20, i8** %format.addr, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %ch, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %sw.bb14
  %22 = load i32, i32* %flags, align 4
  %or22 = or i32 %22, 4
  store i32 %or22, i32* %flags, align 4
  %23 = load i8*, i8** %format.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr23, i8** %format.addr, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %ch, align 1
  br label %sw.epilog

sw.bb24:                                          ; preds = %sw.bb14
  %25 = load i32, i32* %flags, align 4
  %or25 = or i32 %25, 8
  store i32 %or25, i32* %flags, align 4
  %26 = load i8*, i8** %format.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr26, i8** %format.addr, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %ch, align 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %sw.bb14
  %28 = load i32, i32* %flags, align 4
  %or28 = or i32 %28, 16
  store i32 %or28, i32* %flags, align 4
  %29 = load i8*, i8** %format.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr29, i8** %format.addr, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %ch, align 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %sw.bb14
  %31 = load i32, i32* %flags, align 4
  %or31 = or i32 %31, 32
  store i32 %or31, i32* %flags, align 4
  %32 = load i8*, i8** %format.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr32, i8** %format.addr, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %ch, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb14
  store i32 2, i32* %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb30, %sw.bb27, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb16
  br label %sw.epilog645

sw.bb33:                                          ; preds = %while.body
  %34 = load i8, i8* %ch, align 1
  %conv34 = zext i8 %34 to i32
  %cmp35 = icmp sle i32 48, %conv34
  br i1 %cmp35, label %land.lhs.true37, label %if.else53

land.lhs.true37:                                  ; preds = %sw.bb33
  %35 = load i8, i8* %ch, align 1
  %conv38 = zext i8 %35 to i32
  %cmp39 = icmp sle i32 %conv38, 57
  br i1 %cmp39, label %if.then41, label %if.else53

if.then41:                                        ; preds = %land.lhs.true37
  %36 = load i8, i8* %ch, align 1
  %conv42 = sext i8 %36 to i32
  %sub = sub nsw i32 %conv42, 48
  %conv43 = trunc i32 %sub to i8
  store i8 %conv43, i8* %ch, align 1
  %37 = load i32, i32* %width, align 4
  %38 = load i8, i8* %ch, align 1
  %conv44 = sext i8 %38 to i32
  %sub45 = sub nsw i32 2147483647, %conv44
  %div = sdiv i32 %sub45, 10
  %cmp46 = icmp sgt i32 %37, %div
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then41
  store i32 1, i32* %overflow, align 4
  br label %out

if.end49:                                         ; preds = %if.then41
  %39 = load i32, i32* %width, align 4
  %mul = mul nsw i32 10, %39
  %40 = load i8, i8* %ch, align 1
  %conv50 = sext i8 %40 to i32
  %add51 = add nsw i32 %mul, %conv50
  store i32 %add51, i32* %width, align 4
  %41 = load i8*, i8** %format.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr52, i8** %format.addr, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %ch, align 1
  br label %if.end67

if.else53:                                        ; preds = %land.lhs.true37, %sw.bb33
  %43 = load i8, i8* %ch, align 1
  %conv54 = sext i8 %43 to i32
  %cmp55 = icmp eq i32 %conv54, 42
  br i1 %cmp55, label %if.then57, label %if.else65

if.then57:                                        ; preds = %if.else53
  %44 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 8
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then57
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 3
  %reg_save_area = load i8*, i8** %45, align 8
  %46 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %47 = bitcast i8* %46 to i32*
  %48 = add i32 %gp_offset, 8
  store i32 %48, i32* %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then57
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %49 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %47, %vaarg.in_reg ], [ %49, %vaarg.in_mem ]
  %50 = load i32, i32* %vaarg.addr, align 4
  store i32 %50, i32* %width, align 4
  %cmp58 = icmp slt i32 %50, 0
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %vaarg.end
  %51 = load i32, i32* %flags, align 4
  %or61 = or i32 %51, 1
  store i32 %or61, i32* %flags, align 4
  %52 = load i32, i32* %width, align 4
  %sub62 = sub nsw i32 0, %52
  store i32 %sub62, i32* %width, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %vaarg.end
  %53 = load i8*, i8** %format.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr64, i8** %format.addr, align 8
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %ch, align 1
  store i32 3, i32* %state, align 4
  br label %if.end66

if.else65:                                        ; preds = %if.else53
  store i32 3, i32* %state, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.end63
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end49
  br label %sw.epilog645

sw.bb68:                                          ; preds = %while.body
  %55 = load i8, i8* %ch, align 1
  %conv69 = sext i8 %55 to i32
  %cmp70 = icmp eq i32 %conv69, 46
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %sw.bb68
  store i32 4, i32* %state, align 4
  %56 = load i8*, i8** %format.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr73, i8** %format.addr, align 8
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %ch, align 1
  br label %if.end75

if.else74:                                        ; preds = %sw.bb68
  store i32 5, i32* %state, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then72
  br label %sw.epilog645

sw.bb76:                                          ; preds = %while.body
  %58 = load i32, i32* %precision, align 4
  %cmp77 = icmp eq i32 %58, -1
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %sw.bb76
  store i32 0, i32* %precision, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %sw.bb76
  %59 = load i8, i8* %ch, align 1
  %conv81 = zext i8 %59 to i32
  %cmp82 = icmp sle i32 48, %conv81
  br i1 %cmp82, label %land.lhs.true84, label %if.else103

land.lhs.true84:                                  ; preds = %if.end80
  %60 = load i8, i8* %ch, align 1
  %conv85 = zext i8 %60 to i32
  %cmp86 = icmp sle i32 %conv85, 57
  br i1 %cmp86, label %if.then88, label %if.else103

if.then88:                                        ; preds = %land.lhs.true84
  %61 = load i8, i8* %ch, align 1
  %conv89 = sext i8 %61 to i32
  %sub90 = sub nsw i32 %conv89, 48
  %conv91 = trunc i32 %sub90 to i8
  store i8 %conv91, i8* %ch, align 1
  %62 = load i32, i32* %precision, align 4
  %63 = load i8, i8* %ch, align 1
  %conv92 = sext i8 %63 to i32
  %sub93 = sub nsw i32 2147483647, %conv92
  %div94 = sdiv i32 %sub93, 10
  %cmp95 = icmp sgt i32 %62, %div94
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then88
  store i32 1, i32* %overflow, align 4
  br label %out

if.end98:                                         ; preds = %if.then88
  %64 = load i32, i32* %precision, align 4
  %mul99 = mul nsw i32 10, %64
  %65 = load i8, i8* %ch, align 1
  %conv100 = sext i8 %65 to i32
  %add101 = add nsw i32 %mul99, %conv100
  store i32 %add101, i32* %precision, align 4
  %66 = load i8*, i8** %format.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr102, i8** %format.addr, align 8
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %ch, align 1
  br label %if.end126

if.else103:                                       ; preds = %land.lhs.true84, %if.end80
  %68 = load i8, i8* %ch, align 1
  %conv104 = sext i8 %68 to i32
  %cmp105 = icmp eq i32 %conv104, 42
  br i1 %cmp105, label %if.then107, label %if.else124

if.then107:                                       ; preds = %if.else103
  %69 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 0
  %gp_offset109 = load i32, i32* %gp_offset_p108, align 8
  %fits_in_gp110 = icmp ule i32 %gp_offset109, 40
  br i1 %fits_in_gp110, label %vaarg.in_reg111, label %vaarg.in_mem113

vaarg.in_reg111:                                  ; preds = %if.then107
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 3
  %reg_save_area112 = load i8*, i8** %70, align 8
  %71 = getelementptr i8, i8* %reg_save_area112, i32 %gp_offset109
  %72 = bitcast i8* %71 to i32*
  %73 = add i32 %gp_offset109, 8
  store i32 %73, i32* %gp_offset_p108, align 8
  br label %vaarg.end117

vaarg.in_mem113:                                  ; preds = %if.then107
  %overflow_arg_area_p114 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 2
  %overflow_arg_area115 = load i8*, i8** %overflow_arg_area_p114, align 8
  %74 = bitcast i8* %overflow_arg_area115 to i32*
  %overflow_arg_area.next116 = getelementptr i8, i8* %overflow_arg_area115, i32 8
  store i8* %overflow_arg_area.next116, i8** %overflow_arg_area_p114, align 8
  br label %vaarg.end117

vaarg.end117:                                     ; preds = %vaarg.in_mem113, %vaarg.in_reg111
  %vaarg.addr118 = phi i32* [ %72, %vaarg.in_reg111 ], [ %74, %vaarg.in_mem113 ]
  %75 = load i32, i32* %vaarg.addr118, align 4
  store i32 %75, i32* %precision, align 4
  %cmp119 = icmp slt i32 %75, 0
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %vaarg.end117
  store i32 -1, i32* %precision, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %vaarg.end117
  %76 = load i8*, i8** %format.addr, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr123, i8** %format.addr, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %ch, align 1
  store i32 5, i32* %state, align 4
  br label %if.end125

if.else124:                                       ; preds = %if.else103
  store i32 5, i32* %state, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %if.end122
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end98
  br label %sw.epilog645

sw.bb127:                                         ; preds = %while.body
  %78 = load i8, i8* %ch, align 1
  %conv128 = sext i8 %78 to i32
  switch i32 %conv128, label %sw.epilog155 [
    i32 104, label %sw.bb129
    i32 108, label %sw.bb138
    i32 76, label %sw.bb147
    i32 106, label %sw.bb149
    i32 116, label %sw.bb151
    i32 122, label %sw.bb153
  ]

sw.bb129:                                         ; preds = %sw.bb127
  %79 = load i8*, i8** %format.addr, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr130, i8** %format.addr, align 8
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %ch, align 1
  %81 = load i8, i8* %ch, align 1
  %conv131 = sext i8 %81 to i32
  %cmp132 = icmp eq i32 %conv131, 104
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %sw.bb129
  %82 = load i8*, i8** %format.addr, align 8
  %incdec.ptr135 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr135, i8** %format.addr, align 8
  %83 = load i8, i8* %82, align 1
  store i8 %83, i8* %ch, align 1
  store i32 1, i32* %cflags, align 4
  br label %if.end137

if.else136:                                       ; preds = %sw.bb129
  store i32 2, i32* %cflags, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.else136, %if.then134
  br label %sw.epilog155

sw.bb138:                                         ; preds = %sw.bb127
  %84 = load i8*, i8** %format.addr, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr139, i8** %format.addr, align 8
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %ch, align 1
  %86 = load i8, i8* %ch, align 1
  %conv140 = sext i8 %86 to i32
  %cmp141 = icmp eq i32 %conv140, 108
  br i1 %cmp141, label %if.then143, label %if.else145

if.then143:                                       ; preds = %sw.bb138
  %87 = load i8*, i8** %format.addr, align 8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr144, i8** %format.addr, align 8
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %ch, align 1
  store i32 4, i32* %cflags, align 4
  br label %if.end146

if.else145:                                       ; preds = %sw.bb138
  store i32 3, i32* %cflags, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.else145, %if.then143
  br label %sw.epilog155

sw.bb147:                                         ; preds = %sw.bb127
  store i32 5, i32* %cflags, align 4
  %89 = load i8*, i8** %format.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr148, i8** %format.addr, align 8
  %90 = load i8, i8* %89, align 1
  store i8 %90, i8* %ch, align 1
  br label %sw.epilog155

sw.bb149:                                         ; preds = %sw.bb127
  store i32 8, i32* %cflags, align 4
  %91 = load i8*, i8** %format.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr150, i8** %format.addr, align 8
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* %ch, align 1
  br label %sw.epilog155

sw.bb151:                                         ; preds = %sw.bb127
  store i32 7, i32* %cflags, align 4
  %93 = load i8*, i8** %format.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr152, i8** %format.addr, align 8
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %ch, align 1
  br label %sw.epilog155

sw.bb153:                                         ; preds = %sw.bb127
  store i32 6, i32* %cflags, align 4
  %95 = load i8*, i8** %format.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr154, i8** %format.addr, align 8
  %96 = load i8, i8* %95, align 1
  store i8 %96, i8* %ch, align 1
  br label %sw.epilog155

sw.epilog155:                                     ; preds = %sw.bb127, %sw.bb153, %sw.bb151, %sw.bb149, %sw.bb147, %if.end146, %if.end137
  store i32 6, i32* %state, align 4
  br label %sw.epilog645

sw.bb156:                                         ; preds = %while.body
  %97 = load i8, i8* %ch, align 1
  %conv157 = sext i8 %97 to i32
  switch i32 %conv157, label %sw.default642 [
    i32 100, label %sw.bb158
    i32 105, label %sw.bb158
    i32 88, label %sw.bb261
    i32 120, label %sw.bb263
    i32 111, label %sw.bb264
    i32 117, label %sw.bb269
    i32 65, label %sw.bb377
    i32 70, label %sw.bb377
    i32 97, label %sw.bb379
    i32 102, label %sw.bb379
    i32 69, label %sw.bb406
    i32 101, label %sw.bb408
    i32 71, label %sw.bb440
    i32 103, label %sw.bb442
    i32 99, label %sw.bb478
    i32 115, label %sw.bb500
    i32 112, label %sw.bb512
    i32 110, label %sw.bb531
    i32 37, label %sw.bb632
  ]

sw.bb158:                                         ; preds = %sw.bb156, %sw.bb156
  %98 = load i32, i32* %cflags, align 4
  switch i32 %98, label %sw.default247 [
    i32 1, label %sw.bb159
    i32 2, label %sw.bb173
    i32 3, label %sw.bb187
    i32 4, label %sw.bb199
    i32 6, label %sw.bb211
    i32 8, label %sw.bb223
    i32 7, label %sw.bb235
  ]

sw.bb159:                                         ; preds = %sw.bb158
  %99 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p160 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %99, i32 0, i32 0
  %gp_offset161 = load i32, i32* %gp_offset_p160, align 8
  %fits_in_gp162 = icmp ule i32 %gp_offset161, 40
  br i1 %fits_in_gp162, label %vaarg.in_reg163, label %vaarg.in_mem165

vaarg.in_reg163:                                  ; preds = %sw.bb159
  %100 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %99, i32 0, i32 3
  %reg_save_area164 = load i8*, i8** %100, align 8
  %101 = getelementptr i8, i8* %reg_save_area164, i32 %gp_offset161
  %102 = bitcast i8* %101 to i32*
  %103 = add i32 %gp_offset161, 8
  store i32 %103, i32* %gp_offset_p160, align 8
  br label %vaarg.end169

vaarg.in_mem165:                                  ; preds = %sw.bb159
  %overflow_arg_area_p166 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %99, i32 0, i32 2
  %overflow_arg_area167 = load i8*, i8** %overflow_arg_area_p166, align 8
  %104 = bitcast i8* %overflow_arg_area167 to i32*
  %overflow_arg_area.next168 = getelementptr i8, i8* %overflow_arg_area167, i32 8
  store i8* %overflow_arg_area.next168, i8** %overflow_arg_area_p166, align 8
  br label %vaarg.end169

vaarg.end169:                                     ; preds = %vaarg.in_mem165, %vaarg.in_reg163
  %vaarg.addr170 = phi i32* [ %102, %vaarg.in_reg163 ], [ %104, %vaarg.in_mem165 ]
  %105 = load i32, i32* %vaarg.addr170, align 4
  %conv171 = trunc i32 %105 to i8
  %conv172 = sext i8 %conv171 to i64
  store i64 %conv172, i64* %value, align 8
  br label %sw.epilog260

sw.bb173:                                         ; preds = %sw.bb158
  %106 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p174 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %106, i32 0, i32 0
  %gp_offset175 = load i32, i32* %gp_offset_p174, align 8
  %fits_in_gp176 = icmp ule i32 %gp_offset175, 40
  br i1 %fits_in_gp176, label %vaarg.in_reg177, label %vaarg.in_mem179

vaarg.in_reg177:                                  ; preds = %sw.bb173
  %107 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %106, i32 0, i32 3
  %reg_save_area178 = load i8*, i8** %107, align 8
  %108 = getelementptr i8, i8* %reg_save_area178, i32 %gp_offset175
  %109 = bitcast i8* %108 to i32*
  %110 = add i32 %gp_offset175, 8
  store i32 %110, i32* %gp_offset_p174, align 8
  br label %vaarg.end183

vaarg.in_mem179:                                  ; preds = %sw.bb173
  %overflow_arg_area_p180 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %106, i32 0, i32 2
  %overflow_arg_area181 = load i8*, i8** %overflow_arg_area_p180, align 8
  %111 = bitcast i8* %overflow_arg_area181 to i32*
  %overflow_arg_area.next182 = getelementptr i8, i8* %overflow_arg_area181, i32 8
  store i8* %overflow_arg_area.next182, i8** %overflow_arg_area_p180, align 8
  br label %vaarg.end183

vaarg.end183:                                     ; preds = %vaarg.in_mem179, %vaarg.in_reg177
  %vaarg.addr184 = phi i32* [ %109, %vaarg.in_reg177 ], [ %111, %vaarg.in_mem179 ]
  %112 = load i32, i32* %vaarg.addr184, align 4
  %conv185 = trunc i32 %112 to i16
  %conv186 = sext i16 %conv185 to i64
  store i64 %conv186, i64* %value, align 8
  br label %sw.epilog260

sw.bb187:                                         ; preds = %sw.bb158
  %113 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p188 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %113, i32 0, i32 0
  %gp_offset189 = load i32, i32* %gp_offset_p188, align 8
  %fits_in_gp190 = icmp ule i32 %gp_offset189, 40
  br i1 %fits_in_gp190, label %vaarg.in_reg191, label %vaarg.in_mem193

vaarg.in_reg191:                                  ; preds = %sw.bb187
  %114 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %113, i32 0, i32 3
  %reg_save_area192 = load i8*, i8** %114, align 8
  %115 = getelementptr i8, i8* %reg_save_area192, i32 %gp_offset189
  %116 = bitcast i8* %115 to i64*
  %117 = add i32 %gp_offset189, 8
  store i32 %117, i32* %gp_offset_p188, align 8
  br label %vaarg.end197

vaarg.in_mem193:                                  ; preds = %sw.bb187
  %overflow_arg_area_p194 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %113, i32 0, i32 2
  %overflow_arg_area195 = load i8*, i8** %overflow_arg_area_p194, align 8
  %118 = bitcast i8* %overflow_arg_area195 to i64*
  %overflow_arg_area.next196 = getelementptr i8, i8* %overflow_arg_area195, i32 8
  store i8* %overflow_arg_area.next196, i8** %overflow_arg_area_p194, align 8
  br label %vaarg.end197

vaarg.end197:                                     ; preds = %vaarg.in_mem193, %vaarg.in_reg191
  %vaarg.addr198 = phi i64* [ %116, %vaarg.in_reg191 ], [ %118, %vaarg.in_mem193 ]
  %119 = load i64, i64* %vaarg.addr198, align 8
  store i64 %119, i64* %value, align 8
  br label %sw.epilog260

sw.bb199:                                         ; preds = %sw.bb158
  %120 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p200 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %120, i32 0, i32 0
  %gp_offset201 = load i32, i32* %gp_offset_p200, align 8
  %fits_in_gp202 = icmp ule i32 %gp_offset201, 40
  br i1 %fits_in_gp202, label %vaarg.in_reg203, label %vaarg.in_mem205

vaarg.in_reg203:                                  ; preds = %sw.bb199
  %121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %120, i32 0, i32 3
  %reg_save_area204 = load i8*, i8** %121, align 8
  %122 = getelementptr i8, i8* %reg_save_area204, i32 %gp_offset201
  %123 = bitcast i8* %122 to i64*
  %124 = add i32 %gp_offset201, 8
  store i32 %124, i32* %gp_offset_p200, align 8
  br label %vaarg.end209

vaarg.in_mem205:                                  ; preds = %sw.bb199
  %overflow_arg_area_p206 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %120, i32 0, i32 2
  %overflow_arg_area207 = load i8*, i8** %overflow_arg_area_p206, align 8
  %125 = bitcast i8* %overflow_arg_area207 to i64*
  %overflow_arg_area.next208 = getelementptr i8, i8* %overflow_arg_area207, i32 8
  store i8* %overflow_arg_area.next208, i8** %overflow_arg_area_p206, align 8
  br label %vaarg.end209

vaarg.end209:                                     ; preds = %vaarg.in_mem205, %vaarg.in_reg203
  %vaarg.addr210 = phi i64* [ %123, %vaarg.in_reg203 ], [ %125, %vaarg.in_mem205 ]
  %126 = load i64, i64* %vaarg.addr210, align 8
  store i64 %126, i64* %value, align 8
  br label %sw.epilog260

sw.bb211:                                         ; preds = %sw.bb158
  %127 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p212 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %127, i32 0, i32 0
  %gp_offset213 = load i32, i32* %gp_offset_p212, align 8
  %fits_in_gp214 = icmp ule i32 %gp_offset213, 40
  br i1 %fits_in_gp214, label %vaarg.in_reg215, label %vaarg.in_mem217

vaarg.in_reg215:                                  ; preds = %sw.bb211
  %128 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %127, i32 0, i32 3
  %reg_save_area216 = load i8*, i8** %128, align 8
  %129 = getelementptr i8, i8* %reg_save_area216, i32 %gp_offset213
  %130 = bitcast i8* %129 to i64*
  %131 = add i32 %gp_offset213, 8
  store i32 %131, i32* %gp_offset_p212, align 8
  br label %vaarg.end221

vaarg.in_mem217:                                  ; preds = %sw.bb211
  %overflow_arg_area_p218 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %127, i32 0, i32 2
  %overflow_arg_area219 = load i8*, i8** %overflow_arg_area_p218, align 8
  %132 = bitcast i8* %overflow_arg_area219 to i64*
  %overflow_arg_area.next220 = getelementptr i8, i8* %overflow_arg_area219, i32 8
  store i8* %overflow_arg_area.next220, i8** %overflow_arg_area_p218, align 8
  br label %vaarg.end221

vaarg.end221:                                     ; preds = %vaarg.in_mem217, %vaarg.in_reg215
  %vaarg.addr222 = phi i64* [ %130, %vaarg.in_reg215 ], [ %132, %vaarg.in_mem217 ]
  %133 = load i64, i64* %vaarg.addr222, align 8
  store i64 %133, i64* %value, align 8
  br label %sw.epilog260

sw.bb223:                                         ; preds = %sw.bb158
  %134 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p224 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 0
  %gp_offset225 = load i32, i32* %gp_offset_p224, align 8
  %fits_in_gp226 = icmp ule i32 %gp_offset225, 40
  br i1 %fits_in_gp226, label %vaarg.in_reg227, label %vaarg.in_mem229

vaarg.in_reg227:                                  ; preds = %sw.bb223
  %135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 3
  %reg_save_area228 = load i8*, i8** %135, align 8
  %136 = getelementptr i8, i8* %reg_save_area228, i32 %gp_offset225
  %137 = bitcast i8* %136 to i64*
  %138 = add i32 %gp_offset225, 8
  store i32 %138, i32* %gp_offset_p224, align 8
  br label %vaarg.end233

vaarg.in_mem229:                                  ; preds = %sw.bb223
  %overflow_arg_area_p230 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 2
  %overflow_arg_area231 = load i8*, i8** %overflow_arg_area_p230, align 8
  %139 = bitcast i8* %overflow_arg_area231 to i64*
  %overflow_arg_area.next232 = getelementptr i8, i8* %overflow_arg_area231, i32 8
  store i8* %overflow_arg_area.next232, i8** %overflow_arg_area_p230, align 8
  br label %vaarg.end233

vaarg.end233:                                     ; preds = %vaarg.in_mem229, %vaarg.in_reg227
  %vaarg.addr234 = phi i64* [ %137, %vaarg.in_reg227 ], [ %139, %vaarg.in_mem229 ]
  %140 = load i64, i64* %vaarg.addr234, align 8
  store i64 %140, i64* %value, align 8
  br label %sw.epilog260

sw.bb235:                                         ; preds = %sw.bb158
  %141 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p236 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %141, i32 0, i32 0
  %gp_offset237 = load i32, i32* %gp_offset_p236, align 8
  %fits_in_gp238 = icmp ule i32 %gp_offset237, 40
  br i1 %fits_in_gp238, label %vaarg.in_reg239, label %vaarg.in_mem241

vaarg.in_reg239:                                  ; preds = %sw.bb235
  %142 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %141, i32 0, i32 3
  %reg_save_area240 = load i8*, i8** %142, align 8
  %143 = getelementptr i8, i8* %reg_save_area240, i32 %gp_offset237
  %144 = bitcast i8* %143 to i64*
  %145 = add i32 %gp_offset237, 8
  store i32 %145, i32* %gp_offset_p236, align 8
  br label %vaarg.end245

vaarg.in_mem241:                                  ; preds = %sw.bb235
  %overflow_arg_area_p242 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %141, i32 0, i32 2
  %overflow_arg_area243 = load i8*, i8** %overflow_arg_area_p242, align 8
  %146 = bitcast i8* %overflow_arg_area243 to i64*
  %overflow_arg_area.next244 = getelementptr i8, i8* %overflow_arg_area243, i32 8
  store i8* %overflow_arg_area.next244, i8** %overflow_arg_area_p242, align 8
  br label %vaarg.end245

vaarg.end245:                                     ; preds = %vaarg.in_mem241, %vaarg.in_reg239
  %vaarg.addr246 = phi i64* [ %144, %vaarg.in_reg239 ], [ %146, %vaarg.in_mem241 ]
  %147 = load i64, i64* %vaarg.addr246, align 8
  store i64 %147, i64* %value, align 8
  br label %sw.epilog260

sw.default247:                                    ; preds = %sw.bb158
  %148 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p248 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 0
  %gp_offset249 = load i32, i32* %gp_offset_p248, align 8
  %fits_in_gp250 = icmp ule i32 %gp_offset249, 40
  br i1 %fits_in_gp250, label %vaarg.in_reg251, label %vaarg.in_mem253

vaarg.in_reg251:                                  ; preds = %sw.default247
  %149 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 3
  %reg_save_area252 = load i8*, i8** %149, align 8
  %150 = getelementptr i8, i8* %reg_save_area252, i32 %gp_offset249
  %151 = bitcast i8* %150 to i32*
  %152 = add i32 %gp_offset249, 8
  store i32 %152, i32* %gp_offset_p248, align 8
  br label %vaarg.end257

vaarg.in_mem253:                                  ; preds = %sw.default247
  %overflow_arg_area_p254 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 2
  %overflow_arg_area255 = load i8*, i8** %overflow_arg_area_p254, align 8
  %153 = bitcast i8* %overflow_arg_area255 to i32*
  %overflow_arg_area.next256 = getelementptr i8, i8* %overflow_arg_area255, i32 8
  store i8* %overflow_arg_area.next256, i8** %overflow_arg_area_p254, align 8
  br label %vaarg.end257

vaarg.end257:                                     ; preds = %vaarg.in_mem253, %vaarg.in_reg251
  %vaarg.addr258 = phi i32* [ %151, %vaarg.in_reg251 ], [ %153, %vaarg.in_mem253 ]
  %154 = load i32, i32* %vaarg.addr258, align 4
  %conv259 = sext i32 %154 to i64
  store i64 %conv259, i64* %value, align 8
  br label %sw.epilog260

sw.epilog260:                                     ; preds = %vaarg.end257, %vaarg.end245, %vaarg.end233, %vaarg.end221, %vaarg.end209, %vaarg.end197, %vaarg.end183, %vaarg.end169
  %155 = load i8*, i8** %str.addr, align 8
  %156 = load i64, i64* %size.addr, align 8
  %157 = load i64, i64* %value, align 8
  %158 = load i32, i32* %width, align 4
  %159 = load i32, i32* %precision, align 4
  %160 = load i32, i32* %flags, align 4
  call void @fmtint(i8* noundef %155, i64* noundef %len, i64 noundef %156, i64 noundef %157, i32 noundef 10, i32 noundef %158, i32 noundef %159, i32 noundef %160)
  br label %sw.epilog643

sw.bb261:                                         ; preds = %sw.bb156
  %161 = load i32, i32* %flags, align 4
  %or262 = or i32 %161, 64
  store i32 %or262, i32* %flags, align 4
  br label %sw.bb263

sw.bb263:                                         ; preds = %sw.bb156, %sw.bb261
  store i32 16, i32* %base, align 4
  br label %sw.bb264

sw.bb264:                                         ; preds = %sw.bb156, %sw.bb263
  %162 = load i32, i32* %base, align 4
  %cmp265 = icmp eq i32 %162, 0
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %sw.bb264
  store i32 8, i32* %base, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %sw.bb264
  br label %sw.bb269

sw.bb269:                                         ; preds = %sw.bb156, %if.end268
  %163 = load i32, i32* %base, align 4
  %cmp270 = icmp eq i32 %163, 0
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %sw.bb269
  store i32 10, i32* %base, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %sw.bb269
  %164 = load i32, i32* %flags, align 4
  %or274 = or i32 %164, 128
  store i32 %or274, i32* %flags, align 4
  %165 = load i32, i32* %cflags, align 4
  switch i32 %165, label %sw.default363 [
    i32 1, label %sw.bb275
    i32 2, label %sw.bb289
    i32 3, label %sw.bb303
    i32 4, label %sw.bb315
    i32 6, label %sw.bb327
    i32 8, label %sw.bb339
    i32 7, label %sw.bb351
  ]

sw.bb275:                                         ; preds = %if.end273
  %166 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p276 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 0
  %gp_offset277 = load i32, i32* %gp_offset_p276, align 8
  %fits_in_gp278 = icmp ule i32 %gp_offset277, 40
  br i1 %fits_in_gp278, label %vaarg.in_reg279, label %vaarg.in_mem281

vaarg.in_reg279:                                  ; preds = %sw.bb275
  %167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 3
  %reg_save_area280 = load i8*, i8** %167, align 8
  %168 = getelementptr i8, i8* %reg_save_area280, i32 %gp_offset277
  %169 = bitcast i8* %168 to i32*
  %170 = add i32 %gp_offset277, 8
  store i32 %170, i32* %gp_offset_p276, align 8
  br label %vaarg.end285

vaarg.in_mem281:                                  ; preds = %sw.bb275
  %overflow_arg_area_p282 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 2
  %overflow_arg_area283 = load i8*, i8** %overflow_arg_area_p282, align 8
  %171 = bitcast i8* %overflow_arg_area283 to i32*
  %overflow_arg_area.next284 = getelementptr i8, i8* %overflow_arg_area283, i32 8
  store i8* %overflow_arg_area.next284, i8** %overflow_arg_area_p282, align 8
  br label %vaarg.end285

vaarg.end285:                                     ; preds = %vaarg.in_mem281, %vaarg.in_reg279
  %vaarg.addr286 = phi i32* [ %169, %vaarg.in_reg279 ], [ %171, %vaarg.in_mem281 ]
  %172 = load i32, i32* %vaarg.addr286, align 4
  %conv287 = trunc i32 %172 to i8
  %conv288 = zext i8 %conv287 to i64
  store i64 %conv288, i64* %value, align 8
  br label %sw.epilog376

sw.bb289:                                         ; preds = %if.end273
  %173 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p290 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %173, i32 0, i32 0
  %gp_offset291 = load i32, i32* %gp_offset_p290, align 8
  %fits_in_gp292 = icmp ule i32 %gp_offset291, 40
  br i1 %fits_in_gp292, label %vaarg.in_reg293, label %vaarg.in_mem295

vaarg.in_reg293:                                  ; preds = %sw.bb289
  %174 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %173, i32 0, i32 3
  %reg_save_area294 = load i8*, i8** %174, align 8
  %175 = getelementptr i8, i8* %reg_save_area294, i32 %gp_offset291
  %176 = bitcast i8* %175 to i32*
  %177 = add i32 %gp_offset291, 8
  store i32 %177, i32* %gp_offset_p290, align 8
  br label %vaarg.end299

vaarg.in_mem295:                                  ; preds = %sw.bb289
  %overflow_arg_area_p296 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %173, i32 0, i32 2
  %overflow_arg_area297 = load i8*, i8** %overflow_arg_area_p296, align 8
  %178 = bitcast i8* %overflow_arg_area297 to i32*
  %overflow_arg_area.next298 = getelementptr i8, i8* %overflow_arg_area297, i32 8
  store i8* %overflow_arg_area.next298, i8** %overflow_arg_area_p296, align 8
  br label %vaarg.end299

vaarg.end299:                                     ; preds = %vaarg.in_mem295, %vaarg.in_reg293
  %vaarg.addr300 = phi i32* [ %176, %vaarg.in_reg293 ], [ %178, %vaarg.in_mem295 ]
  %179 = load i32, i32* %vaarg.addr300, align 4
  %conv301 = trunc i32 %179 to i16
  %conv302 = zext i16 %conv301 to i64
  store i64 %conv302, i64* %value, align 8
  br label %sw.epilog376

sw.bb303:                                         ; preds = %if.end273
  %180 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p304 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %180, i32 0, i32 0
  %gp_offset305 = load i32, i32* %gp_offset_p304, align 8
  %fits_in_gp306 = icmp ule i32 %gp_offset305, 40
  br i1 %fits_in_gp306, label %vaarg.in_reg307, label %vaarg.in_mem309

vaarg.in_reg307:                                  ; preds = %sw.bb303
  %181 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %180, i32 0, i32 3
  %reg_save_area308 = load i8*, i8** %181, align 8
  %182 = getelementptr i8, i8* %reg_save_area308, i32 %gp_offset305
  %183 = bitcast i8* %182 to i64*
  %184 = add i32 %gp_offset305, 8
  store i32 %184, i32* %gp_offset_p304, align 8
  br label %vaarg.end313

vaarg.in_mem309:                                  ; preds = %sw.bb303
  %overflow_arg_area_p310 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %180, i32 0, i32 2
  %overflow_arg_area311 = load i8*, i8** %overflow_arg_area_p310, align 8
  %185 = bitcast i8* %overflow_arg_area311 to i64*
  %overflow_arg_area.next312 = getelementptr i8, i8* %overflow_arg_area311, i32 8
  store i8* %overflow_arg_area.next312, i8** %overflow_arg_area_p310, align 8
  br label %vaarg.end313

vaarg.end313:                                     ; preds = %vaarg.in_mem309, %vaarg.in_reg307
  %vaarg.addr314 = phi i64* [ %183, %vaarg.in_reg307 ], [ %185, %vaarg.in_mem309 ]
  %186 = load i64, i64* %vaarg.addr314, align 8
  store i64 %186, i64* %value, align 8
  br label %sw.epilog376

sw.bb315:                                         ; preds = %if.end273
  %187 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p316 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %187, i32 0, i32 0
  %gp_offset317 = load i32, i32* %gp_offset_p316, align 8
  %fits_in_gp318 = icmp ule i32 %gp_offset317, 40
  br i1 %fits_in_gp318, label %vaarg.in_reg319, label %vaarg.in_mem321

vaarg.in_reg319:                                  ; preds = %sw.bb315
  %188 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %187, i32 0, i32 3
  %reg_save_area320 = load i8*, i8** %188, align 8
  %189 = getelementptr i8, i8* %reg_save_area320, i32 %gp_offset317
  %190 = bitcast i8* %189 to i64*
  %191 = add i32 %gp_offset317, 8
  store i32 %191, i32* %gp_offset_p316, align 8
  br label %vaarg.end325

vaarg.in_mem321:                                  ; preds = %sw.bb315
  %overflow_arg_area_p322 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %187, i32 0, i32 2
  %overflow_arg_area323 = load i8*, i8** %overflow_arg_area_p322, align 8
  %192 = bitcast i8* %overflow_arg_area323 to i64*
  %overflow_arg_area.next324 = getelementptr i8, i8* %overflow_arg_area323, i32 8
  store i8* %overflow_arg_area.next324, i8** %overflow_arg_area_p322, align 8
  br label %vaarg.end325

vaarg.end325:                                     ; preds = %vaarg.in_mem321, %vaarg.in_reg319
  %vaarg.addr326 = phi i64* [ %190, %vaarg.in_reg319 ], [ %192, %vaarg.in_mem321 ]
  %193 = load i64, i64* %vaarg.addr326, align 8
  store i64 %193, i64* %value, align 8
  br label %sw.epilog376

sw.bb327:                                         ; preds = %if.end273
  %194 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p328 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %194, i32 0, i32 0
  %gp_offset329 = load i32, i32* %gp_offset_p328, align 8
  %fits_in_gp330 = icmp ule i32 %gp_offset329, 40
  br i1 %fits_in_gp330, label %vaarg.in_reg331, label %vaarg.in_mem333

vaarg.in_reg331:                                  ; preds = %sw.bb327
  %195 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %194, i32 0, i32 3
  %reg_save_area332 = load i8*, i8** %195, align 8
  %196 = getelementptr i8, i8* %reg_save_area332, i32 %gp_offset329
  %197 = bitcast i8* %196 to i64*
  %198 = add i32 %gp_offset329, 8
  store i32 %198, i32* %gp_offset_p328, align 8
  br label %vaarg.end337

vaarg.in_mem333:                                  ; preds = %sw.bb327
  %overflow_arg_area_p334 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %194, i32 0, i32 2
  %overflow_arg_area335 = load i8*, i8** %overflow_arg_area_p334, align 8
  %199 = bitcast i8* %overflow_arg_area335 to i64*
  %overflow_arg_area.next336 = getelementptr i8, i8* %overflow_arg_area335, i32 8
  store i8* %overflow_arg_area.next336, i8** %overflow_arg_area_p334, align 8
  br label %vaarg.end337

vaarg.end337:                                     ; preds = %vaarg.in_mem333, %vaarg.in_reg331
  %vaarg.addr338 = phi i64* [ %197, %vaarg.in_reg331 ], [ %199, %vaarg.in_mem333 ]
  %200 = load i64, i64* %vaarg.addr338, align 8
  store i64 %200, i64* %value, align 8
  br label %sw.epilog376

sw.bb339:                                         ; preds = %if.end273
  %201 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p340 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %201, i32 0, i32 0
  %gp_offset341 = load i32, i32* %gp_offset_p340, align 8
  %fits_in_gp342 = icmp ule i32 %gp_offset341, 40
  br i1 %fits_in_gp342, label %vaarg.in_reg343, label %vaarg.in_mem345

vaarg.in_reg343:                                  ; preds = %sw.bb339
  %202 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %201, i32 0, i32 3
  %reg_save_area344 = load i8*, i8** %202, align 8
  %203 = getelementptr i8, i8* %reg_save_area344, i32 %gp_offset341
  %204 = bitcast i8* %203 to i64*
  %205 = add i32 %gp_offset341, 8
  store i32 %205, i32* %gp_offset_p340, align 8
  br label %vaarg.end349

vaarg.in_mem345:                                  ; preds = %sw.bb339
  %overflow_arg_area_p346 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %201, i32 0, i32 2
  %overflow_arg_area347 = load i8*, i8** %overflow_arg_area_p346, align 8
  %206 = bitcast i8* %overflow_arg_area347 to i64*
  %overflow_arg_area.next348 = getelementptr i8, i8* %overflow_arg_area347, i32 8
  store i8* %overflow_arg_area.next348, i8** %overflow_arg_area_p346, align 8
  br label %vaarg.end349

vaarg.end349:                                     ; preds = %vaarg.in_mem345, %vaarg.in_reg343
  %vaarg.addr350 = phi i64* [ %204, %vaarg.in_reg343 ], [ %206, %vaarg.in_mem345 ]
  %207 = load i64, i64* %vaarg.addr350, align 8
  store i64 %207, i64* %value, align 8
  br label %sw.epilog376

sw.bb351:                                         ; preds = %if.end273
  %208 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p352 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %208, i32 0, i32 0
  %gp_offset353 = load i32, i32* %gp_offset_p352, align 8
  %fits_in_gp354 = icmp ule i32 %gp_offset353, 40
  br i1 %fits_in_gp354, label %vaarg.in_reg355, label %vaarg.in_mem357

vaarg.in_reg355:                                  ; preds = %sw.bb351
  %209 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %208, i32 0, i32 3
  %reg_save_area356 = load i8*, i8** %209, align 8
  %210 = getelementptr i8, i8* %reg_save_area356, i32 %gp_offset353
  %211 = bitcast i8* %210 to i64*
  %212 = add i32 %gp_offset353, 8
  store i32 %212, i32* %gp_offset_p352, align 8
  br label %vaarg.end361

vaarg.in_mem357:                                  ; preds = %sw.bb351
  %overflow_arg_area_p358 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %208, i32 0, i32 2
  %overflow_arg_area359 = load i8*, i8** %overflow_arg_area_p358, align 8
  %213 = bitcast i8* %overflow_arg_area359 to i64*
  %overflow_arg_area.next360 = getelementptr i8, i8* %overflow_arg_area359, i32 8
  store i8* %overflow_arg_area.next360, i8** %overflow_arg_area_p358, align 8
  br label %vaarg.end361

vaarg.end361:                                     ; preds = %vaarg.in_mem357, %vaarg.in_reg355
  %vaarg.addr362 = phi i64* [ %211, %vaarg.in_reg355 ], [ %213, %vaarg.in_mem357 ]
  %214 = load i64, i64* %vaarg.addr362, align 8
  store i64 %214, i64* %value, align 8
  br label %sw.epilog376

sw.default363:                                    ; preds = %if.end273
  %215 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p364 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 0
  %gp_offset365 = load i32, i32* %gp_offset_p364, align 8
  %fits_in_gp366 = icmp ule i32 %gp_offset365, 40
  br i1 %fits_in_gp366, label %vaarg.in_reg367, label %vaarg.in_mem369

vaarg.in_reg367:                                  ; preds = %sw.default363
  %216 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 3
  %reg_save_area368 = load i8*, i8** %216, align 8
  %217 = getelementptr i8, i8* %reg_save_area368, i32 %gp_offset365
  %218 = bitcast i8* %217 to i32*
  %219 = add i32 %gp_offset365, 8
  store i32 %219, i32* %gp_offset_p364, align 8
  br label %vaarg.end373

vaarg.in_mem369:                                  ; preds = %sw.default363
  %overflow_arg_area_p370 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 2
  %overflow_arg_area371 = load i8*, i8** %overflow_arg_area_p370, align 8
  %220 = bitcast i8* %overflow_arg_area371 to i32*
  %overflow_arg_area.next372 = getelementptr i8, i8* %overflow_arg_area371, i32 8
  store i8* %overflow_arg_area.next372, i8** %overflow_arg_area_p370, align 8
  br label %vaarg.end373

vaarg.end373:                                     ; preds = %vaarg.in_mem369, %vaarg.in_reg367
  %vaarg.addr374 = phi i32* [ %218, %vaarg.in_reg367 ], [ %220, %vaarg.in_mem369 ]
  %221 = load i32, i32* %vaarg.addr374, align 4
  %conv375 = zext i32 %221 to i64
  store i64 %conv375, i64* %value, align 8
  br label %sw.epilog376

sw.epilog376:                                     ; preds = %vaarg.end373, %vaarg.end361, %vaarg.end349, %vaarg.end337, %vaarg.end325, %vaarg.end313, %vaarg.end299, %vaarg.end285
  %222 = load i8*, i8** %str.addr, align 8
  %223 = load i64, i64* %size.addr, align 8
  %224 = load i64, i64* %value, align 8
  %225 = load i32, i32* %base, align 4
  %226 = load i32, i32* %width, align 4
  %227 = load i32, i32* %precision, align 4
  %228 = load i32, i32* %flags, align 4
  call void @fmtint(i8* noundef %222, i64* noundef %len, i64 noundef %223, i64 noundef %224, i32 noundef %225, i32 noundef %226, i32 noundef %227, i32 noundef %228)
  br label %sw.epilog643

sw.bb377:                                         ; preds = %sw.bb156, %sw.bb156
  %229 = load i32, i32* %flags, align 4
  %or378 = or i32 %229, 64
  store i32 %or378, i32* %flags, align 4
  br label %sw.bb379

sw.bb379:                                         ; preds = %sw.bb156, %sw.bb156, %sw.bb377
  %230 = load i32, i32* %cflags, align 4
  %cmp380 = icmp eq i32 %230, 5
  br i1 %cmp380, label %if.then382, label %if.else391

if.then382:                                       ; preds = %sw.bb379
  %231 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %231, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg383, label %vaarg.in_mem385

vaarg.in_reg383:                                  ; preds = %if.then382
  %232 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %231, i32 0, i32 3
  %reg_save_area384 = load i8*, i8** %232, align 8
  %233 = getelementptr i8, i8* %reg_save_area384, i32 %fp_offset
  %234 = bitcast i8* %233 to double*
  %235 = add i32 %fp_offset, 16
  store i32 %235, i32* %fp_offset_p, align 4
  br label %vaarg.end389

vaarg.in_mem385:                                  ; preds = %if.then382
  %overflow_arg_area_p386 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %231, i32 0, i32 2
  %overflow_arg_area387 = load i8*, i8** %overflow_arg_area_p386, align 8
  %236 = bitcast i8* %overflow_arg_area387 to double*
  %overflow_arg_area.next388 = getelementptr i8, i8* %overflow_arg_area387, i32 8
  store i8* %overflow_arg_area.next388, i8** %overflow_arg_area_p386, align 8
  br label %vaarg.end389

vaarg.end389:                                     ; preds = %vaarg.in_mem385, %vaarg.in_reg383
  %vaarg.addr390 = phi double* [ %234, %vaarg.in_reg383 ], [ %236, %vaarg.in_mem385 ]
  %237 = load double, double* %vaarg.addr390, align 8
  store double %237, double* %fvalue, align 8
  br label %if.end403

if.else391:                                       ; preds = %sw.bb379
  %238 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %fp_offset_p392 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %238, i32 0, i32 1
  %fp_offset393 = load i32, i32* %fp_offset_p392, align 4
  %fits_in_fp394 = icmp ule i32 %fp_offset393, 160
  br i1 %fits_in_fp394, label %vaarg.in_reg395, label %vaarg.in_mem397

vaarg.in_reg395:                                  ; preds = %if.else391
  %239 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %238, i32 0, i32 3
  %reg_save_area396 = load i8*, i8** %239, align 8
  %240 = getelementptr i8, i8* %reg_save_area396, i32 %fp_offset393
  %241 = bitcast i8* %240 to double*
  %242 = add i32 %fp_offset393, 16
  store i32 %242, i32* %fp_offset_p392, align 4
  br label %vaarg.end401

vaarg.in_mem397:                                  ; preds = %if.else391
  %overflow_arg_area_p398 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %238, i32 0, i32 2
  %overflow_arg_area399 = load i8*, i8** %overflow_arg_area_p398, align 8
  %243 = bitcast i8* %overflow_arg_area399 to double*
  %overflow_arg_area.next400 = getelementptr i8, i8* %overflow_arg_area399, i32 8
  store i8* %overflow_arg_area.next400, i8** %overflow_arg_area_p398, align 8
  br label %vaarg.end401

vaarg.end401:                                     ; preds = %vaarg.in_mem397, %vaarg.in_reg395
  %vaarg.addr402 = phi double* [ %241, %vaarg.in_reg395 ], [ %243, %vaarg.in_mem397 ]
  %244 = load double, double* %vaarg.addr402, align 8
  store double %244, double* %fvalue, align 8
  br label %if.end403

if.end403:                                        ; preds = %vaarg.end401, %vaarg.end389
  %245 = load i8*, i8** %str.addr, align 8
  %246 = load i64, i64* %size.addr, align 8
  %247 = load double, double* %fvalue, align 8
  %248 = load i32, i32* %width, align 4
  %249 = load i32, i32* %precision, align 4
  %250 = load i32, i32* %flags, align 4
  call void @fmtflt(i8* noundef %245, i64* noundef %len, i64 noundef %246, double noundef %247, i32 noundef %248, i32 noundef %249, i32 noundef %250, i32* noundef %overflow)
  %251 = load i32, i32* %overflow, align 4
  %tobool = icmp ne i32 %251, 0
  br i1 %tobool, label %if.then404, label %if.end405

if.then404:                                       ; preds = %if.end403
  br label %out

if.end405:                                        ; preds = %if.end403
  br label %sw.epilog643

sw.bb406:                                         ; preds = %sw.bb156
  %252 = load i32, i32* %flags, align 4
  %or407 = or i32 %252, 64
  store i32 %or407, i32* %flags, align 4
  br label %sw.bb408

sw.bb408:                                         ; preds = %sw.bb156, %sw.bb406
  %253 = load i32, i32* %flags, align 4
  %or409 = or i32 %253, 512
  store i32 %or409, i32* %flags, align 4
  %254 = load i32, i32* %cflags, align 4
  %cmp410 = icmp eq i32 %254, 5
  br i1 %cmp410, label %if.then412, label %if.else424

if.then412:                                       ; preds = %sw.bb408
  %255 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %fp_offset_p413 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %255, i32 0, i32 1
  %fp_offset414 = load i32, i32* %fp_offset_p413, align 4
  %fits_in_fp415 = icmp ule i32 %fp_offset414, 160
  br i1 %fits_in_fp415, label %vaarg.in_reg416, label %vaarg.in_mem418

vaarg.in_reg416:                                  ; preds = %if.then412
  %256 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %255, i32 0, i32 3
  %reg_save_area417 = load i8*, i8** %256, align 8
  %257 = getelementptr i8, i8* %reg_save_area417, i32 %fp_offset414
  %258 = bitcast i8* %257 to double*
  %259 = add i32 %fp_offset414, 16
  store i32 %259, i32* %fp_offset_p413, align 4
  br label %vaarg.end422

vaarg.in_mem418:                                  ; preds = %if.then412
  %overflow_arg_area_p419 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %255, i32 0, i32 2
  %overflow_arg_area420 = load i8*, i8** %overflow_arg_area_p419, align 8
  %260 = bitcast i8* %overflow_arg_area420 to double*
  %overflow_arg_area.next421 = getelementptr i8, i8* %overflow_arg_area420, i32 8
  store i8* %overflow_arg_area.next421, i8** %overflow_arg_area_p419, align 8
  br label %vaarg.end422

vaarg.end422:                                     ; preds = %vaarg.in_mem418, %vaarg.in_reg416
  %vaarg.addr423 = phi double* [ %258, %vaarg.in_reg416 ], [ %260, %vaarg.in_mem418 ]
  %261 = load double, double* %vaarg.addr423, align 8
  store double %261, double* %fvalue, align 8
  br label %if.end436

if.else424:                                       ; preds = %sw.bb408
  %262 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %fp_offset_p425 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %262, i32 0, i32 1
  %fp_offset426 = load i32, i32* %fp_offset_p425, align 4
  %fits_in_fp427 = icmp ule i32 %fp_offset426, 160
  br i1 %fits_in_fp427, label %vaarg.in_reg428, label %vaarg.in_mem430

vaarg.in_reg428:                                  ; preds = %if.else424
  %263 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %262, i32 0, i32 3
  %reg_save_area429 = load i8*, i8** %263, align 8
  %264 = getelementptr i8, i8* %reg_save_area429, i32 %fp_offset426
  %265 = bitcast i8* %264 to double*
  %266 = add i32 %fp_offset426, 16
  store i32 %266, i32* %fp_offset_p425, align 4
  br label %vaarg.end434

vaarg.in_mem430:                                  ; preds = %if.else424
  %overflow_arg_area_p431 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %262, i32 0, i32 2
  %overflow_arg_area432 = load i8*, i8** %overflow_arg_area_p431, align 8
  %267 = bitcast i8* %overflow_arg_area432 to double*
  %overflow_arg_area.next433 = getelementptr i8, i8* %overflow_arg_area432, i32 8
  store i8* %overflow_arg_area.next433, i8** %overflow_arg_area_p431, align 8
  br label %vaarg.end434

vaarg.end434:                                     ; preds = %vaarg.in_mem430, %vaarg.in_reg428
  %vaarg.addr435 = phi double* [ %265, %vaarg.in_reg428 ], [ %267, %vaarg.in_mem430 ]
  %268 = load double, double* %vaarg.addr435, align 8
  store double %268, double* %fvalue, align 8
  br label %if.end436

if.end436:                                        ; preds = %vaarg.end434, %vaarg.end422
  %269 = load i8*, i8** %str.addr, align 8
  %270 = load i64, i64* %size.addr, align 8
  %271 = load double, double* %fvalue, align 8
  %272 = load i32, i32* %width, align 4
  %273 = load i32, i32* %precision, align 4
  %274 = load i32, i32* %flags, align 4
  call void @fmtflt(i8* noundef %269, i64* noundef %len, i64 noundef %270, double noundef %271, i32 noundef %272, i32 noundef %273, i32 noundef %274, i32* noundef %overflow)
  %275 = load i32, i32* %overflow, align 4
  %tobool437 = icmp ne i32 %275, 0
  br i1 %tobool437, label %if.then438, label %if.end439

if.then438:                                       ; preds = %if.end436
  br label %out

if.end439:                                        ; preds = %if.end436
  br label %sw.epilog643

sw.bb440:                                         ; preds = %sw.bb156
  %276 = load i32, i32* %flags, align 4
  %or441 = or i32 %276, 64
  store i32 %or441, i32* %flags, align 4
  br label %sw.bb442

sw.bb442:                                         ; preds = %sw.bb156, %sw.bb440
  %277 = load i32, i32* %flags, align 4
  %or443 = or i32 %277, 256
  store i32 %or443, i32* %flags, align 4
  %278 = load i32, i32* %cflags, align 4
  %cmp444 = icmp eq i32 %278, 5
  br i1 %cmp444, label %if.then446, label %if.else458

if.then446:                                       ; preds = %sw.bb442
  %279 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %fp_offset_p447 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %279, i32 0, i32 1
  %fp_offset448 = load i32, i32* %fp_offset_p447, align 4
  %fits_in_fp449 = icmp ule i32 %fp_offset448, 160
  br i1 %fits_in_fp449, label %vaarg.in_reg450, label %vaarg.in_mem452

vaarg.in_reg450:                                  ; preds = %if.then446
  %280 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %279, i32 0, i32 3
  %reg_save_area451 = load i8*, i8** %280, align 8
  %281 = getelementptr i8, i8* %reg_save_area451, i32 %fp_offset448
  %282 = bitcast i8* %281 to double*
  %283 = add i32 %fp_offset448, 16
  store i32 %283, i32* %fp_offset_p447, align 4
  br label %vaarg.end456

vaarg.in_mem452:                                  ; preds = %if.then446
  %overflow_arg_area_p453 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %279, i32 0, i32 2
  %overflow_arg_area454 = load i8*, i8** %overflow_arg_area_p453, align 8
  %284 = bitcast i8* %overflow_arg_area454 to double*
  %overflow_arg_area.next455 = getelementptr i8, i8* %overflow_arg_area454, i32 8
  store i8* %overflow_arg_area.next455, i8** %overflow_arg_area_p453, align 8
  br label %vaarg.end456

vaarg.end456:                                     ; preds = %vaarg.in_mem452, %vaarg.in_reg450
  %vaarg.addr457 = phi double* [ %282, %vaarg.in_reg450 ], [ %284, %vaarg.in_mem452 ]
  %285 = load double, double* %vaarg.addr457, align 8
  store double %285, double* %fvalue, align 8
  br label %if.end470

if.else458:                                       ; preds = %sw.bb442
  %286 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %fp_offset_p459 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %286, i32 0, i32 1
  %fp_offset460 = load i32, i32* %fp_offset_p459, align 4
  %fits_in_fp461 = icmp ule i32 %fp_offset460, 160
  br i1 %fits_in_fp461, label %vaarg.in_reg462, label %vaarg.in_mem464

vaarg.in_reg462:                                  ; preds = %if.else458
  %287 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %286, i32 0, i32 3
  %reg_save_area463 = load i8*, i8** %287, align 8
  %288 = getelementptr i8, i8* %reg_save_area463, i32 %fp_offset460
  %289 = bitcast i8* %288 to double*
  %290 = add i32 %fp_offset460, 16
  store i32 %290, i32* %fp_offset_p459, align 4
  br label %vaarg.end468

vaarg.in_mem464:                                  ; preds = %if.else458
  %overflow_arg_area_p465 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %286, i32 0, i32 2
  %overflow_arg_area466 = load i8*, i8** %overflow_arg_area_p465, align 8
  %291 = bitcast i8* %overflow_arg_area466 to double*
  %overflow_arg_area.next467 = getelementptr i8, i8* %overflow_arg_area466, i32 8
  store i8* %overflow_arg_area.next467, i8** %overflow_arg_area_p465, align 8
  br label %vaarg.end468

vaarg.end468:                                     ; preds = %vaarg.in_mem464, %vaarg.in_reg462
  %vaarg.addr469 = phi double* [ %289, %vaarg.in_reg462 ], [ %291, %vaarg.in_mem464 ]
  %292 = load double, double* %vaarg.addr469, align 8
  store double %292, double* %fvalue, align 8
  br label %if.end470

if.end470:                                        ; preds = %vaarg.end468, %vaarg.end456
  %293 = load i32, i32* %precision, align 4
  %cmp471 = icmp eq i32 %293, 0
  br i1 %cmp471, label %if.then473, label %if.end474

if.then473:                                       ; preds = %if.end470
  store i32 1, i32* %precision, align 4
  br label %if.end474

if.end474:                                        ; preds = %if.then473, %if.end470
  %294 = load i8*, i8** %str.addr, align 8
  %295 = load i64, i64* %size.addr, align 8
  %296 = load double, double* %fvalue, align 8
  %297 = load i32, i32* %width, align 4
  %298 = load i32, i32* %precision, align 4
  %299 = load i32, i32* %flags, align 4
  call void @fmtflt(i8* noundef %294, i64* noundef %len, i64 noundef %295, double noundef %296, i32 noundef %297, i32 noundef %298, i32 noundef %299, i32* noundef %overflow)
  %300 = load i32, i32* %overflow, align 4
  %tobool475 = icmp ne i32 %300, 0
  br i1 %tobool475, label %if.then476, label %if.end477

if.then476:                                       ; preds = %if.end474
  br label %out

if.end477:                                        ; preds = %if.end474
  br label %sw.epilog643

sw.bb478:                                         ; preds = %sw.bb156
  %301 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p479 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %301, i32 0, i32 0
  %gp_offset480 = load i32, i32* %gp_offset_p479, align 8
  %fits_in_gp481 = icmp ule i32 %gp_offset480, 40
  br i1 %fits_in_gp481, label %vaarg.in_reg482, label %vaarg.in_mem484

vaarg.in_reg482:                                  ; preds = %sw.bb478
  %302 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %301, i32 0, i32 3
  %reg_save_area483 = load i8*, i8** %302, align 8
  %303 = getelementptr i8, i8* %reg_save_area483, i32 %gp_offset480
  %304 = bitcast i8* %303 to i32*
  %305 = add i32 %gp_offset480, 8
  store i32 %305, i32* %gp_offset_p479, align 8
  br label %vaarg.end488

vaarg.in_mem484:                                  ; preds = %sw.bb478
  %overflow_arg_area_p485 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %301, i32 0, i32 2
  %overflow_arg_area486 = load i8*, i8** %overflow_arg_area_p485, align 8
  %306 = bitcast i8* %overflow_arg_area486 to i32*
  %overflow_arg_area.next487 = getelementptr i8, i8* %overflow_arg_area486, i32 8
  store i8* %overflow_arg_area.next487, i8** %overflow_arg_area_p485, align 8
  br label %vaarg.end488

vaarg.end488:                                     ; preds = %vaarg.in_mem484, %vaarg.in_reg482
  %vaarg.addr489 = phi i32* [ %304, %vaarg.in_reg482 ], [ %306, %vaarg.in_mem484 ]
  %307 = load i32, i32* %vaarg.addr489, align 4
  %conv490 = trunc i32 %307 to i8
  store i8 %conv490, i8* %cvalue, align 1
  br label %do.body491

do.body491:                                       ; preds = %vaarg.end488
  %308 = load i64, i64* %len, align 8
  %add492 = add i64 %308, 1
  %309 = load i64, i64* %size.addr, align 8
  %cmp493 = icmp ult i64 %add492, %309
  br i1 %cmp493, label %if.then495, label %if.end497

if.then495:                                       ; preds = %do.body491
  %310 = load i8, i8* %cvalue, align 1
  %311 = load i8*, i8** %str.addr, align 8
  %312 = load i64, i64* %len, align 8
  %arrayidx496 = getelementptr inbounds i8, i8* %311, i64 %312
  store i8 %310, i8* %arrayidx496, align 1
  br label %if.end497

if.end497:                                        ; preds = %if.then495, %do.body491
  %313 = load i64, i64* %len, align 8
  %inc498 = add i64 %313, 1
  store i64 %inc498, i64* %len, align 8
  br label %do.end499

do.end499:                                        ; preds = %if.end497
  br label %sw.epilog643

sw.bb500:                                         ; preds = %sw.bb156
  %314 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p501 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %314, i32 0, i32 0
  %gp_offset502 = load i32, i32* %gp_offset_p501, align 8
  %fits_in_gp503 = icmp ule i32 %gp_offset502, 40
  br i1 %fits_in_gp503, label %vaarg.in_reg504, label %vaarg.in_mem506

vaarg.in_reg504:                                  ; preds = %sw.bb500
  %315 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %314, i32 0, i32 3
  %reg_save_area505 = load i8*, i8** %315, align 8
  %316 = getelementptr i8, i8* %reg_save_area505, i32 %gp_offset502
  %317 = bitcast i8* %316 to i8**
  %318 = add i32 %gp_offset502, 8
  store i32 %318, i32* %gp_offset_p501, align 8
  br label %vaarg.end510

vaarg.in_mem506:                                  ; preds = %sw.bb500
  %overflow_arg_area_p507 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %314, i32 0, i32 2
  %overflow_arg_area508 = load i8*, i8** %overflow_arg_area_p507, align 8
  %319 = bitcast i8* %overflow_arg_area508 to i8**
  %overflow_arg_area.next509 = getelementptr i8, i8* %overflow_arg_area508, i32 8
  store i8* %overflow_arg_area.next509, i8** %overflow_arg_area_p507, align 8
  br label %vaarg.end510

vaarg.end510:                                     ; preds = %vaarg.in_mem506, %vaarg.in_reg504
  %vaarg.addr511 = phi i8** [ %317, %vaarg.in_reg504 ], [ %319, %vaarg.in_mem506 ]
  %320 = load i8*, i8** %vaarg.addr511, align 8
  store i8* %320, i8** %strvalue, align 8
  %321 = load i8*, i8** %str.addr, align 8
  %322 = load i64, i64* %size.addr, align 8
  %323 = load i8*, i8** %strvalue, align 8
  %324 = load i32, i32* %width, align 4
  %325 = load i32, i32* %precision, align 4
  %326 = load i32, i32* %flags, align 4
  call void @fmtstr(i8* noundef %321, i64* noundef %len, i64 noundef %322, i8* noundef %323, i32 noundef %324, i32 noundef %325, i32 noundef %326)
  br label %sw.epilog643

sw.bb512:                                         ; preds = %sw.bb156
  %327 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p513 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %327, i32 0, i32 0
  %gp_offset514 = load i32, i32* %gp_offset_p513, align 8
  %fits_in_gp515 = icmp ule i32 %gp_offset514, 40
  br i1 %fits_in_gp515, label %vaarg.in_reg516, label %vaarg.in_mem518

vaarg.in_reg516:                                  ; preds = %sw.bb512
  %328 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %327, i32 0, i32 3
  %reg_save_area517 = load i8*, i8** %328, align 8
  %329 = getelementptr i8, i8* %reg_save_area517, i32 %gp_offset514
  %330 = bitcast i8* %329 to i8**
  %331 = add i32 %gp_offset514, 8
  store i32 %331, i32* %gp_offset_p513, align 8
  br label %vaarg.end522

vaarg.in_mem518:                                  ; preds = %sw.bb512
  %overflow_arg_area_p519 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %327, i32 0, i32 2
  %overflow_arg_area520 = load i8*, i8** %overflow_arg_area_p519, align 8
  %332 = bitcast i8* %overflow_arg_area520 to i8**
  %overflow_arg_area.next521 = getelementptr i8, i8* %overflow_arg_area520, i32 8
  store i8* %overflow_arg_area.next521, i8** %overflow_arg_area_p519, align 8
  br label %vaarg.end522

vaarg.end522:                                     ; preds = %vaarg.in_mem518, %vaarg.in_reg516
  %vaarg.addr523 = phi i8** [ %330, %vaarg.in_reg516 ], [ %332, %vaarg.in_mem518 ]
  %333 = load i8*, i8** %vaarg.addr523, align 8
  store i8* %333, i8** %strvalue, align 8
  %cmp524 = icmp eq i8* %333, null
  br i1 %cmp524, label %if.then526, label %if.else527

if.then526:                                       ; preds = %vaarg.end522
  %334 = load i8*, i8** %str.addr, align 8
  %335 = load i64, i64* %size.addr, align 8
  %336 = load i32, i32* %width, align 4
  %337 = load i32, i32* %flags, align 4
  call void @fmtstr(i8* noundef %334, i64* noundef %len, i64 noundef %335, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %336, i32 noundef -1, i32 noundef %337)
  br label %if.end530

if.else527:                                       ; preds = %vaarg.end522
  %338 = load i32, i32* %flags, align 4
  %or528 = or i32 %338, 8
  store i32 %or528, i32* %flags, align 4
  %339 = load i32, i32* %flags, align 4
  %or529 = or i32 %339, 128
  store i32 %or529, i32* %flags, align 4
  %340 = load i8*, i8** %str.addr, align 8
  %341 = load i64, i64* %size.addr, align 8
  %342 = load i8*, i8** %strvalue, align 8
  %343 = ptrtoint i8* %342 to i64
  %344 = load i32, i32* %width, align 4
  %345 = load i32, i32* %precision, align 4
  %346 = load i32, i32* %flags, align 4
  call void @fmtint(i8* noundef %340, i64* noundef %len, i64 noundef %341, i64 noundef %343, i32 noundef 16, i32 noundef %344, i32 noundef %345, i32 noundef %346)
  br label %if.end530

if.end530:                                        ; preds = %if.else527, %if.then526
  br label %sw.epilog643

sw.bb531:                                         ; preds = %sw.bb156
  %347 = load i32, i32* %cflags, align 4
  switch i32 %347, label %sw.default618 [
    i32 1, label %sw.bb532
    i32 2, label %sw.bb545
    i32 3, label %sw.bb558
    i32 4, label %sw.bb570
    i32 6, label %sw.bb582
    i32 8, label %sw.bb594
    i32 7, label %sw.bb606
  ]

sw.bb532:                                         ; preds = %sw.bb531
  %348 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p533 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %348, i32 0, i32 0
  %gp_offset534 = load i32, i32* %gp_offset_p533, align 8
  %fits_in_gp535 = icmp ule i32 %gp_offset534, 40
  br i1 %fits_in_gp535, label %vaarg.in_reg536, label %vaarg.in_mem538

vaarg.in_reg536:                                  ; preds = %sw.bb532
  %349 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %348, i32 0, i32 3
  %reg_save_area537 = load i8*, i8** %349, align 8
  %350 = getelementptr i8, i8* %reg_save_area537, i32 %gp_offset534
  %351 = bitcast i8* %350 to i8**
  %352 = add i32 %gp_offset534, 8
  store i32 %352, i32* %gp_offset_p533, align 8
  br label %vaarg.end542

vaarg.in_mem538:                                  ; preds = %sw.bb532
  %overflow_arg_area_p539 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %348, i32 0, i32 2
  %overflow_arg_area540 = load i8*, i8** %overflow_arg_area_p539, align 8
  %353 = bitcast i8* %overflow_arg_area540 to i8**
  %overflow_arg_area.next541 = getelementptr i8, i8* %overflow_arg_area540, i32 8
  store i8* %overflow_arg_area.next541, i8** %overflow_arg_area_p539, align 8
  br label %vaarg.end542

vaarg.end542:                                     ; preds = %vaarg.in_mem538, %vaarg.in_reg536
  %vaarg.addr543 = phi i8** [ %351, %vaarg.in_reg536 ], [ %353, %vaarg.in_mem538 ]
  %354 = load i8*, i8** %vaarg.addr543, align 8
  store i8* %354, i8** %charptr, align 8
  %355 = load i64, i64* %len, align 8
  %conv544 = trunc i64 %355 to i8
  %356 = load i8*, i8** %charptr, align 8
  store i8 %conv544, i8* %356, align 1
  br label %sw.epilog631

sw.bb545:                                         ; preds = %sw.bb531
  %357 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p546 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %357, i32 0, i32 0
  %gp_offset547 = load i32, i32* %gp_offset_p546, align 8
  %fits_in_gp548 = icmp ule i32 %gp_offset547, 40
  br i1 %fits_in_gp548, label %vaarg.in_reg549, label %vaarg.in_mem551

vaarg.in_reg549:                                  ; preds = %sw.bb545
  %358 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %357, i32 0, i32 3
  %reg_save_area550 = load i8*, i8** %358, align 8
  %359 = getelementptr i8, i8* %reg_save_area550, i32 %gp_offset547
  %360 = bitcast i8* %359 to i16**
  %361 = add i32 %gp_offset547, 8
  store i32 %361, i32* %gp_offset_p546, align 8
  br label %vaarg.end555

vaarg.in_mem551:                                  ; preds = %sw.bb545
  %overflow_arg_area_p552 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %357, i32 0, i32 2
  %overflow_arg_area553 = load i8*, i8** %overflow_arg_area_p552, align 8
  %362 = bitcast i8* %overflow_arg_area553 to i16**
  %overflow_arg_area.next554 = getelementptr i8, i8* %overflow_arg_area553, i32 8
  store i8* %overflow_arg_area.next554, i8** %overflow_arg_area_p552, align 8
  br label %vaarg.end555

vaarg.end555:                                     ; preds = %vaarg.in_mem551, %vaarg.in_reg549
  %vaarg.addr556 = phi i16** [ %360, %vaarg.in_reg549 ], [ %362, %vaarg.in_mem551 ]
  %363 = load i16*, i16** %vaarg.addr556, align 8
  store i16* %363, i16** %shortptr, align 8
  %364 = load i64, i64* %len, align 8
  %conv557 = trunc i64 %364 to i16
  %365 = load i16*, i16** %shortptr, align 8
  store i16 %conv557, i16* %365, align 2
  br label %sw.epilog631

sw.bb558:                                         ; preds = %sw.bb531
  %366 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p559 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %366, i32 0, i32 0
  %gp_offset560 = load i32, i32* %gp_offset_p559, align 8
  %fits_in_gp561 = icmp ule i32 %gp_offset560, 40
  br i1 %fits_in_gp561, label %vaarg.in_reg562, label %vaarg.in_mem564

vaarg.in_reg562:                                  ; preds = %sw.bb558
  %367 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %366, i32 0, i32 3
  %reg_save_area563 = load i8*, i8** %367, align 8
  %368 = getelementptr i8, i8* %reg_save_area563, i32 %gp_offset560
  %369 = bitcast i8* %368 to i64**
  %370 = add i32 %gp_offset560, 8
  store i32 %370, i32* %gp_offset_p559, align 8
  br label %vaarg.end568

vaarg.in_mem564:                                  ; preds = %sw.bb558
  %overflow_arg_area_p565 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %366, i32 0, i32 2
  %overflow_arg_area566 = load i8*, i8** %overflow_arg_area_p565, align 8
  %371 = bitcast i8* %overflow_arg_area566 to i64**
  %overflow_arg_area.next567 = getelementptr i8, i8* %overflow_arg_area566, i32 8
  store i8* %overflow_arg_area.next567, i8** %overflow_arg_area_p565, align 8
  br label %vaarg.end568

vaarg.end568:                                     ; preds = %vaarg.in_mem564, %vaarg.in_reg562
  %vaarg.addr569 = phi i64** [ %369, %vaarg.in_reg562 ], [ %371, %vaarg.in_mem564 ]
  %372 = load i64*, i64** %vaarg.addr569, align 8
  store i64* %372, i64** %longptr, align 8
  %373 = load i64, i64* %len, align 8
  %374 = load i64*, i64** %longptr, align 8
  store i64 %373, i64* %374, align 8
  br label %sw.epilog631

sw.bb570:                                         ; preds = %sw.bb531
  %375 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p571 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %375, i32 0, i32 0
  %gp_offset572 = load i32, i32* %gp_offset_p571, align 8
  %fits_in_gp573 = icmp ule i32 %gp_offset572, 40
  br i1 %fits_in_gp573, label %vaarg.in_reg574, label %vaarg.in_mem576

vaarg.in_reg574:                                  ; preds = %sw.bb570
  %376 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %375, i32 0, i32 3
  %reg_save_area575 = load i8*, i8** %376, align 8
  %377 = getelementptr i8, i8* %reg_save_area575, i32 %gp_offset572
  %378 = bitcast i8* %377 to i64**
  %379 = add i32 %gp_offset572, 8
  store i32 %379, i32* %gp_offset_p571, align 8
  br label %vaarg.end580

vaarg.in_mem576:                                  ; preds = %sw.bb570
  %overflow_arg_area_p577 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %375, i32 0, i32 2
  %overflow_arg_area578 = load i8*, i8** %overflow_arg_area_p577, align 8
  %380 = bitcast i8* %overflow_arg_area578 to i64**
  %overflow_arg_area.next579 = getelementptr i8, i8* %overflow_arg_area578, i32 8
  store i8* %overflow_arg_area.next579, i8** %overflow_arg_area_p577, align 8
  br label %vaarg.end580

vaarg.end580:                                     ; preds = %vaarg.in_mem576, %vaarg.in_reg574
  %vaarg.addr581 = phi i64** [ %378, %vaarg.in_reg574 ], [ %380, %vaarg.in_mem576 ]
  %381 = load i64*, i64** %vaarg.addr581, align 8
  store i64* %381, i64** %llongptr, align 8
  %382 = load i64, i64* %len, align 8
  %383 = load i64*, i64** %llongptr, align 8
  store i64 %382, i64* %383, align 8
  br label %sw.epilog631

sw.bb582:                                         ; preds = %sw.bb531
  %384 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p583 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %384, i32 0, i32 0
  %gp_offset584 = load i32, i32* %gp_offset_p583, align 8
  %fits_in_gp585 = icmp ule i32 %gp_offset584, 40
  br i1 %fits_in_gp585, label %vaarg.in_reg586, label %vaarg.in_mem588

vaarg.in_reg586:                                  ; preds = %sw.bb582
  %385 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %384, i32 0, i32 3
  %reg_save_area587 = load i8*, i8** %385, align 8
  %386 = getelementptr i8, i8* %reg_save_area587, i32 %gp_offset584
  %387 = bitcast i8* %386 to i64**
  %388 = add i32 %gp_offset584, 8
  store i32 %388, i32* %gp_offset_p583, align 8
  br label %vaarg.end592

vaarg.in_mem588:                                  ; preds = %sw.bb582
  %overflow_arg_area_p589 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %384, i32 0, i32 2
  %overflow_arg_area590 = load i8*, i8** %overflow_arg_area_p589, align 8
  %389 = bitcast i8* %overflow_arg_area590 to i64**
  %overflow_arg_area.next591 = getelementptr i8, i8* %overflow_arg_area590, i32 8
  store i8* %overflow_arg_area.next591, i8** %overflow_arg_area_p589, align 8
  br label %vaarg.end592

vaarg.end592:                                     ; preds = %vaarg.in_mem588, %vaarg.in_reg586
  %vaarg.addr593 = phi i64** [ %387, %vaarg.in_reg586 ], [ %389, %vaarg.in_mem588 ]
  %390 = load i64*, i64** %vaarg.addr593, align 8
  store i64* %390, i64** %sizeptr, align 8
  %391 = load i64, i64* %len, align 8
  %392 = load i64*, i64** %sizeptr, align 8
  store i64 %391, i64* %392, align 8
  br label %sw.epilog631

sw.bb594:                                         ; preds = %sw.bb531
  %393 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p595 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %393, i32 0, i32 0
  %gp_offset596 = load i32, i32* %gp_offset_p595, align 8
  %fits_in_gp597 = icmp ule i32 %gp_offset596, 40
  br i1 %fits_in_gp597, label %vaarg.in_reg598, label %vaarg.in_mem600

vaarg.in_reg598:                                  ; preds = %sw.bb594
  %394 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %393, i32 0, i32 3
  %reg_save_area599 = load i8*, i8** %394, align 8
  %395 = getelementptr i8, i8* %reg_save_area599, i32 %gp_offset596
  %396 = bitcast i8* %395 to i64**
  %397 = add i32 %gp_offset596, 8
  store i32 %397, i32* %gp_offset_p595, align 8
  br label %vaarg.end604

vaarg.in_mem600:                                  ; preds = %sw.bb594
  %overflow_arg_area_p601 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %393, i32 0, i32 2
  %overflow_arg_area602 = load i8*, i8** %overflow_arg_area_p601, align 8
  %398 = bitcast i8* %overflow_arg_area602 to i64**
  %overflow_arg_area.next603 = getelementptr i8, i8* %overflow_arg_area602, i32 8
  store i8* %overflow_arg_area.next603, i8** %overflow_arg_area_p601, align 8
  br label %vaarg.end604

vaarg.end604:                                     ; preds = %vaarg.in_mem600, %vaarg.in_reg598
  %vaarg.addr605 = phi i64** [ %396, %vaarg.in_reg598 ], [ %398, %vaarg.in_mem600 ]
  %399 = load i64*, i64** %vaarg.addr605, align 8
  store i64* %399, i64** %intmaxptr, align 8
  %400 = load i64, i64* %len, align 8
  %401 = load i64*, i64** %intmaxptr, align 8
  store i64 %400, i64* %401, align 8
  br label %sw.epilog631

sw.bb606:                                         ; preds = %sw.bb531
  %402 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p607 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %402, i32 0, i32 0
  %gp_offset608 = load i32, i32* %gp_offset_p607, align 8
  %fits_in_gp609 = icmp ule i32 %gp_offset608, 40
  br i1 %fits_in_gp609, label %vaarg.in_reg610, label %vaarg.in_mem612

vaarg.in_reg610:                                  ; preds = %sw.bb606
  %403 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %402, i32 0, i32 3
  %reg_save_area611 = load i8*, i8** %403, align 8
  %404 = getelementptr i8, i8* %reg_save_area611, i32 %gp_offset608
  %405 = bitcast i8* %404 to i64**
  %406 = add i32 %gp_offset608, 8
  store i32 %406, i32* %gp_offset_p607, align 8
  br label %vaarg.end616

vaarg.in_mem612:                                  ; preds = %sw.bb606
  %overflow_arg_area_p613 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %402, i32 0, i32 2
  %overflow_arg_area614 = load i8*, i8** %overflow_arg_area_p613, align 8
  %407 = bitcast i8* %overflow_arg_area614 to i64**
  %overflow_arg_area.next615 = getelementptr i8, i8* %overflow_arg_area614, i32 8
  store i8* %overflow_arg_area.next615, i8** %overflow_arg_area_p613, align 8
  br label %vaarg.end616

vaarg.end616:                                     ; preds = %vaarg.in_mem612, %vaarg.in_reg610
  %vaarg.addr617 = phi i64** [ %405, %vaarg.in_reg610 ], [ %407, %vaarg.in_mem612 ]
  %408 = load i64*, i64** %vaarg.addr617, align 8
  store i64* %408, i64** %ptrdiffptr, align 8
  %409 = load i64, i64* %len, align 8
  %410 = load i64*, i64** %ptrdiffptr, align 8
  store i64 %409, i64* %410, align 8
  br label %sw.epilog631

sw.default618:                                    ; preds = %sw.bb531
  %411 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p619 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %411, i32 0, i32 0
  %gp_offset620 = load i32, i32* %gp_offset_p619, align 8
  %fits_in_gp621 = icmp ule i32 %gp_offset620, 40
  br i1 %fits_in_gp621, label %vaarg.in_reg622, label %vaarg.in_mem624

vaarg.in_reg622:                                  ; preds = %sw.default618
  %412 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %411, i32 0, i32 3
  %reg_save_area623 = load i8*, i8** %412, align 8
  %413 = getelementptr i8, i8* %reg_save_area623, i32 %gp_offset620
  %414 = bitcast i8* %413 to i32**
  %415 = add i32 %gp_offset620, 8
  store i32 %415, i32* %gp_offset_p619, align 8
  br label %vaarg.end628

vaarg.in_mem624:                                  ; preds = %sw.default618
  %overflow_arg_area_p625 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %411, i32 0, i32 2
  %overflow_arg_area626 = load i8*, i8** %overflow_arg_area_p625, align 8
  %416 = bitcast i8* %overflow_arg_area626 to i32**
  %overflow_arg_area.next627 = getelementptr i8, i8* %overflow_arg_area626, i32 8
  store i8* %overflow_arg_area.next627, i8** %overflow_arg_area_p625, align 8
  br label %vaarg.end628

vaarg.end628:                                     ; preds = %vaarg.in_mem624, %vaarg.in_reg622
  %vaarg.addr629 = phi i32** [ %414, %vaarg.in_reg622 ], [ %416, %vaarg.in_mem624 ]
  %417 = load i32*, i32** %vaarg.addr629, align 8
  store i32* %417, i32** %intptr, align 8
  %418 = load i64, i64* %len, align 8
  %conv630 = trunc i64 %418 to i32
  %419 = load i32*, i32** %intptr, align 8
  store i32 %conv630, i32* %419, align 4
  br label %sw.epilog631

sw.epilog631:                                     ; preds = %vaarg.end628, %vaarg.end616, %vaarg.end604, %vaarg.end592, %vaarg.end580, %vaarg.end568, %vaarg.end555, %vaarg.end542
  br label %sw.epilog643

sw.bb632:                                         ; preds = %sw.bb156
  br label %do.body633

do.body633:                                       ; preds = %sw.bb632
  %420 = load i64, i64* %len, align 8
  %add634 = add i64 %420, 1
  %421 = load i64, i64* %size.addr, align 8
  %cmp635 = icmp ult i64 %add634, %421
  br i1 %cmp635, label %if.then637, label %if.end639

if.then637:                                       ; preds = %do.body633
  %422 = load i8, i8* %ch, align 1
  %423 = load i8*, i8** %str.addr, align 8
  %424 = load i64, i64* %len, align 8
  %arrayidx638 = getelementptr inbounds i8, i8* %423, i64 %424
  store i8 %422, i8* %arrayidx638, align 1
  br label %if.end639

if.end639:                                        ; preds = %if.then637, %do.body633
  %425 = load i64, i64* %len, align 8
  %inc640 = add i64 %425, 1
  store i64 %inc640, i64* %len, align 8
  br label %do.end641

do.end641:                                        ; preds = %if.end639
  br label %sw.epilog643

sw.default642:                                    ; preds = %sw.bb156
  br label %sw.epilog643

sw.epilog643:                                     ; preds = %sw.default642, %do.end641, %sw.epilog631, %if.end530, %vaarg.end510, %do.end499, %if.end477, %if.end439, %if.end405, %sw.epilog376, %sw.epilog260
  %426 = load i8*, i8** %format.addr, align 8
  %incdec.ptr644 = getelementptr inbounds i8, i8* %426, i32 1
  store i8* %incdec.ptr644, i8** %format.addr, align 8
  %427 = load i8, i8* %426, align 1
  store i8 %427, i8* %ch, align 1
  store i32 0, i32* %state, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %flags, align 4
  store i32 0, i32* %cflags, align 4
  store i32 0, i32* %base, align 4
  store i32 -1, i32* %precision, align 4
  br label %sw.epilog645

sw.epilog645:                                     ; preds = %while.body, %sw.epilog643, %sw.epilog155, %if.end126, %if.end75, %if.end67, %sw.epilog, %if.end12
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %out

out:                                              ; preds = %while.end, %if.then476, %if.then438, %if.then404, %if.then97, %if.then48
  %428 = load i64, i64* %len, align 8
  %429 = load i64, i64* %size.addr, align 8
  %cmp646 = icmp ult i64 %428, %429
  br i1 %cmp646, label %if.then648, label %if.else650

if.then648:                                       ; preds = %out
  %430 = load i8*, i8** %str.addr, align 8
  %431 = load i64, i64* %len, align 8
  %arrayidx649 = getelementptr inbounds i8, i8* %430, i64 %431
  store i8 0, i8* %arrayidx649, align 1
  br label %if.end657

if.else650:                                       ; preds = %out
  %432 = load i64, i64* %size.addr, align 8
  %cmp651 = icmp ugt i64 %432, 0
  br i1 %cmp651, label %if.then653, label %if.end656

if.then653:                                       ; preds = %if.else650
  %433 = load i8*, i8** %str.addr, align 8
  %434 = load i64, i64* %size.addr, align 8
  %sub654 = sub i64 %434, 1
  %arrayidx655 = getelementptr inbounds i8, i8* %433, i64 %sub654
  store i8 0, i8* %arrayidx655, align 1
  br label %if.end656

if.end656:                                        ; preds = %if.then653, %if.else650
  br label %if.end657

if.end657:                                        ; preds = %if.end656, %if.then648
  %435 = load i32, i32* %overflow, align 4
  %tobool658 = icmp ne i32 %435, 0
  br i1 %tobool658, label %if.then661, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end657
  %436 = load i64, i64* %len, align 8
  %cmp659 = icmp uge i64 %436, 2147483647
  br i1 %cmp659, label %if.then661, label %if.end663

if.then661:                                       ; preds = %lor.lhs.false, %if.end657
  %437 = load i32, i32* %overflow, align 4
  %tobool662 = icmp ne i32 %437, 0
  %438 = zext i1 %tobool662 to i64
  %cond = select i1 %tobool662, i32 75, i32 34
  %call = call i32* @__errno_location() #6
  store i32 %cond, i32* %call, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end663:                                        ; preds = %lor.lhs.false
  %439 = load i64, i64* %len, align 8
  %conv664 = trunc i64 %439 to i32
  store i32 %conv664, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end663, %if.then661
  %440 = load i32, i32* %retval, align 4
  ret i32 %440
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtint(i8* noundef %str, i64* noundef %len, i64 noundef %size, i64 noundef %value, i32 noundef %base, i32 noundef %width, i32 noundef %precision, i32 noundef %flags) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %size.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %uvalue = alloca i64, align 8
  %iconvert = alloca [43 x i8], align 16
  %sign = alloca i8, align 1
  %hexprefix = alloca i8, align 1
  %spadlen = alloca i32, align 4
  %zpadlen = alloca i32, align 4
  %pos = alloca i32, align 4
  %separators = alloca i32, align 4
  %noprecision = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %precision, i32* %precision.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i8 0, i8* %sign, align 1
  store i8 0, i8* %hexprefix, align 1
  store i32 0, i32* %spadlen, align 4
  store i32 0, i32* %zpadlen, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 32
  store i32 %and, i32* %separators, align 4
  %1 = load i32, i32* %precision.addr, align 4
  %cmp = icmp eq i32 %1, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %noprecision, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %2, 128
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %value.addr, align 8
  store i64 %3, i64* %uvalue, align 8
  br label %if.end17

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %value.addr, align 8
  %cmp2 = icmp sge i64 %4, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %5 = load i64, i64* %value.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %6 = load i64, i64* %value.addr, align 8
  %sub = sub nsw i64 0, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %uvalue, align 8
  %7 = load i64, i64* %value.addr, align 8
  %cmp4 = icmp slt i64 %7, 0
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %cond.end
  store i8 45, i8* %sign, align 1
  br label %if.end16

if.else7:                                         ; preds = %cond.end
  %8 = load i32, i32* %flags.addr, align 4
  %and8 = and i32 %8, 2
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  store i8 43, i8* %sign, align 1
  br label %if.end15

if.else11:                                        ; preds = %if.else7
  %9 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %9, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else11
  store i8 32, i8* %sign, align 1
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.else11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %10 = load i64, i64* %uvalue, align 8
  %arraydecay = getelementptr inbounds [43 x i8], [43 x i8]* %iconvert, i64 0, i64 0
  %11 = load i32, i32* %base.addr, align 4
  %12 = load i32, i32* %flags.addr, align 4
  %and18 = and i32 %12, 64
  %call = call i32 @convert(i64 noundef %10, i8* noundef %arraydecay, i64 noundef 43, i32 noundef %11, i32 noundef %and18)
  store i32 %call, i32* %pos, align 4
  %13 = load i32, i32* %flags.addr, align 4
  %and19 = and i32 %13, 8
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end17
  %14 = load i64, i64* %uvalue, align 8
  %cmp21 = icmp ne i64 %14, 0
  br i1 %cmp21, label %if.then23, label %if.end33

if.then23:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %base.addr, align 4
  switch i32 %15, label %sw.epilog [
    i32 8, label %sw.bb
    i32 16, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.then23
  %16 = load i32, i32* %precision.addr, align 4
  %17 = load i32, i32* %pos, align 4
  %cmp24 = icmp sle i32 %16, %17
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb
  %18 = load i32, i32* %pos, align 4
  %add = add nsw i32 %18, 1
  store i32 %add, i32* %precision.addr, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %sw.bb
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then23
  %19 = load i32, i32* %flags.addr, align 4
  %and29 = and i32 %19, 64
  %tobool30 = icmp ne i32 %and29, 0
  %20 = zext i1 %tobool30 to i64
  %cond31 = select i1 %tobool30, i32 88, i32 120
  %conv32 = trunc i32 %cond31 to i8
  store i8 %conv32, i8* %hexprefix, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then23, %sw.bb28, %if.end27
  br label %if.end33

if.end33:                                         ; preds = %sw.epilog, %land.lhs.true, %if.end17
  %21 = load i32, i32* %separators, align 4
  %tobool34 = icmp ne i32 %21, 0
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %22 = load i32, i32* %pos, align 4
  %call36 = call i32 @getnumsep(i32 noundef %22)
  store i32 %call36, i32* %separators, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  %23 = load i32, i32* %precision.addr, align 4
  %24 = load i32, i32* %pos, align 4
  %sub38 = sub nsw i32 %23, %24
  %25 = load i32, i32* %separators, align 4
  %sub39 = sub nsw i32 %sub38, %25
  store i32 %sub39, i32* %zpadlen, align 4
  %26 = load i32, i32* %width.addr, align 4
  %27 = load i32, i32* %separators, align 4
  %sub40 = sub nsw i32 %26, %27
  %28 = load i32, i32* %precision.addr, align 4
  %29 = load i32, i32* %pos, align 4
  %cmp41 = icmp sge i32 %28, %29
  br i1 %cmp41, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %if.end37
  %30 = load i32, i32* %precision.addr, align 4
  br label %cond.end45

cond.false44:                                     ; preds = %if.end37
  %31 = load i32, i32* %pos, align 4
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi i32 [ %30, %cond.true43 ], [ %31, %cond.false44 ]
  %sub47 = sub nsw i32 %sub40, %cond46
  %32 = load i8, i8* %sign, align 1
  %conv48 = sext i8 %32 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  %33 = zext i1 %cmp49 to i64
  %cond51 = select i1 %cmp49, i32 1, i32 0
  %sub52 = sub nsw i32 %sub47, %cond51
  %34 = load i8, i8* %hexprefix, align 1
  %conv53 = sext i8 %34 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  %35 = zext i1 %cmp54 to i64
  %cond56 = select i1 %cmp54, i32 2, i32 0
  %sub57 = sub nsw i32 %sub52, %cond56
  store i32 %sub57, i32* %spadlen, align 4
  %36 = load i32, i32* %zpadlen, align 4
  %cmp58 = icmp slt i32 %36, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %cond.end45
  store i32 0, i32* %zpadlen, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %cond.end45
  %37 = load i32, i32* %spadlen, align 4
  %cmp62 = icmp slt i32 %37, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  store i32 0, i32* %spadlen, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61
  %38 = load i32, i32* %flags.addr, align 4
  %and66 = and i32 %38, 1
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.else70

if.then68:                                        ; preds = %if.end65
  %39 = load i32, i32* %spadlen, align 4
  %sub69 = sub nsw i32 0, %39
  store i32 %sub69, i32* %spadlen, align 4
  br label %if.end78

if.else70:                                        ; preds = %if.end65
  %40 = load i32, i32* %flags.addr, align 4
  %and71 = and i32 %40, 16
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %land.lhs.true73, label %if.end77

land.lhs.true73:                                  ; preds = %if.else70
  %41 = load i32, i32* %noprecision, align 4
  %tobool74 = icmp ne i32 %41, 0
  br i1 %tobool74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %land.lhs.true73
  %42 = load i32, i32* %spadlen, align 4
  %43 = load i32, i32* %zpadlen, align 4
  %add76 = add nsw i32 %43, %42
  store i32 %add76, i32* %zpadlen, align 4
  store i32 0, i32* %spadlen, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %land.lhs.true73, %if.else70
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then68
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end78
  %44 = load i32, i32* %spadlen, align 4
  %cmp79 = icmp sgt i32 %44, 0
  br i1 %cmp79, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %45 = load i64*, i64** %len.addr, align 8
  %46 = load i64, i64* %45, align 8
  %add81 = add i64 %46, 1
  %47 = load i64, i64* %size.addr, align 8
  %cmp82 = icmp ult i64 %add81, %47
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %do.body
  %48 = load i8*, i8** %str.addr, align 8
  %49 = load i64*, i64** %len.addr, align 8
  %50 = load i64, i64* %49, align 8
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 32, i8* %arrayidx, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %do.body
  %51 = load i64*, i64** %len.addr, align 8
  %52 = load i64, i64* %51, align 8
  %inc = add i64 %52, 1
  store i64 %inc, i64* %51, align 8
  br label %do.end

do.end:                                           ; preds = %if.end85
  %53 = load i32, i32* %spadlen, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %spadlen, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %54 = load i8, i8* %sign, align 1
  %conv86 = sext i8 %54 to i32
  %cmp87 = icmp ne i32 %conv86, 0
  br i1 %cmp87, label %if.then89, label %if.end99

if.then89:                                        ; preds = %while.end
  br label %do.body90

do.body90:                                        ; preds = %if.then89
  %55 = load i64*, i64** %len.addr, align 8
  %56 = load i64, i64* %55, align 8
  %add91 = add i64 %56, 1
  %57 = load i64, i64* %size.addr, align 8
  %cmp92 = icmp ult i64 %add91, %57
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %do.body90
  %58 = load i8, i8* %sign, align 1
  %59 = load i8*, i8** %str.addr, align 8
  %60 = load i64*, i64** %len.addr, align 8
  %61 = load i64, i64* %60, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 %58, i8* %arrayidx95, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %do.body90
  %62 = load i64*, i64** %len.addr, align 8
  %63 = load i64, i64* %62, align 8
  %inc97 = add i64 %63, 1
  store i64 %inc97, i64* %62, align 8
  br label %do.end98

do.end98:                                         ; preds = %if.end96
  br label %if.end99

if.end99:                                         ; preds = %do.end98, %while.end
  %64 = load i8, i8* %hexprefix, align 1
  %conv100 = sext i8 %64 to i32
  %cmp101 = icmp ne i32 %conv100, 0
  br i1 %cmp101, label %if.then103, label %if.end122

if.then103:                                       ; preds = %if.end99
  br label %do.body104

do.body104:                                       ; preds = %if.then103
  %65 = load i64*, i64** %len.addr, align 8
  %66 = load i64, i64* %65, align 8
  %add105 = add i64 %66, 1
  %67 = load i64, i64* %size.addr, align 8
  %cmp106 = icmp ult i64 %add105, %67
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %do.body104
  %68 = load i8*, i8** %str.addr, align 8
  %69 = load i64*, i64** %len.addr, align 8
  %70 = load i64, i64* %69, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 48, i8* %arrayidx109, align 1
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %do.body104
  %71 = load i64*, i64** %len.addr, align 8
  %72 = load i64, i64* %71, align 8
  %inc111 = add i64 %72, 1
  store i64 %inc111, i64* %71, align 8
  br label %do.end112

do.end112:                                        ; preds = %if.end110
  br label %do.body113

do.body113:                                       ; preds = %do.end112
  %73 = load i64*, i64** %len.addr, align 8
  %74 = load i64, i64* %73, align 8
  %add114 = add i64 %74, 1
  %75 = load i64, i64* %size.addr, align 8
  %cmp115 = icmp ult i64 %add114, %75
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %do.body113
  %76 = load i8, i8* %hexprefix, align 1
  %77 = load i8*, i8** %str.addr, align 8
  %78 = load i64*, i64** %len.addr, align 8
  %79 = load i64, i64* %78, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %arrayidx118, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %do.body113
  %80 = load i64*, i64** %len.addr, align 8
  %81 = load i64, i64* %80, align 8
  %inc120 = add i64 %81, 1
  store i64 %inc120, i64* %80, align 8
  br label %do.end121

do.end121:                                        ; preds = %if.end119
  br label %if.end122

if.end122:                                        ; preds = %do.end121, %if.end99
  br label %while.cond123

while.cond123:                                    ; preds = %do.end135, %if.end122
  %82 = load i32, i32* %zpadlen, align 4
  %cmp124 = icmp sgt i32 %82, 0
  br i1 %cmp124, label %while.body126, label %while.end137

while.body126:                                    ; preds = %while.cond123
  br label %do.body127

do.body127:                                       ; preds = %while.body126
  %83 = load i64*, i64** %len.addr, align 8
  %84 = load i64, i64* %83, align 8
  %add128 = add i64 %84, 1
  %85 = load i64, i64* %size.addr, align 8
  %cmp129 = icmp ult i64 %add128, %85
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %do.body127
  %86 = load i8*, i8** %str.addr, align 8
  %87 = load i64*, i64** %len.addr, align 8
  %88 = load i64, i64* %87, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 48, i8* %arrayidx132, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %do.body127
  %89 = load i64*, i64** %len.addr, align 8
  %90 = load i64, i64* %89, align 8
  %inc134 = add i64 %90, 1
  store i64 %inc134, i64* %89, align 8
  br label %do.end135

do.end135:                                        ; preds = %if.end133
  %91 = load i32, i32* %zpadlen, align 4
  %dec136 = add nsw i32 %91, -1
  store i32 %dec136, i32* %zpadlen, align 4
  br label %while.cond123, !llvm.loop !7

while.end137:                                     ; preds = %while.cond123
  br label %while.cond138

while.cond138:                                    ; preds = %if.end162, %while.end137
  %92 = load i32, i32* %pos, align 4
  %cmp139 = icmp sgt i32 %92, 0
  br i1 %cmp139, label %while.body141, label %while.end163

while.body141:                                    ; preds = %while.cond138
  %93 = load i32, i32* %pos, align 4
  %dec142 = add nsw i32 %93, -1
  store i32 %dec142, i32* %pos, align 4
  br label %do.body143

do.body143:                                       ; preds = %while.body141
  %94 = load i64*, i64** %len.addr, align 8
  %95 = load i64, i64* %94, align 8
  %add144 = add i64 %95, 1
  %96 = load i64, i64* %size.addr, align 8
  %cmp145 = icmp ult i64 %add144, %96
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %do.body143
  %97 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %97 to i64
  %arrayidx148 = getelementptr inbounds [43 x i8], [43 x i8]* %iconvert, i64 0, i64 %idxprom
  %98 = load i8, i8* %arrayidx148, align 1
  %99 = load i8*, i8** %str.addr, align 8
  %100 = load i64*, i64** %len.addr, align 8
  %101 = load i64, i64* %100, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 %98, i8* %arrayidx149, align 1
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %do.body143
  %102 = load i64*, i64** %len.addr, align 8
  %103 = load i64, i64* %102, align 8
  %inc151 = add i64 %103, 1
  store i64 %inc151, i64* %102, align 8
  br label %do.end152

do.end152:                                        ; preds = %if.end150
  %104 = load i32, i32* %separators, align 4
  %cmp153 = icmp sgt i32 %104, 0
  br i1 %cmp153, label %land.lhs.true155, label %if.end162

land.lhs.true155:                                 ; preds = %do.end152
  %105 = load i32, i32* %pos, align 4
  %cmp156 = icmp sgt i32 %105, 0
  br i1 %cmp156, label %land.lhs.true158, label %if.end162

land.lhs.true158:                                 ; preds = %land.lhs.true155
  %106 = load i32, i32* %pos, align 4
  %rem = srem i32 %106, 3
  %cmp159 = icmp eq i32 %rem, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %land.lhs.true158
  %107 = load i8*, i8** %str.addr, align 8
  %108 = load i64*, i64** %len.addr, align 8
  %109 = load i64, i64* %size.addr, align 8
  call void @printsep(i8* noundef %107, i64* noundef %108, i64 noundef %109)
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %land.lhs.true158, %land.lhs.true155, %do.end152
  br label %while.cond138, !llvm.loop !8

while.end163:                                     ; preds = %while.cond138
  br label %while.cond164

while.cond164:                                    ; preds = %do.end176, %while.end163
  %110 = load i32, i32* %spadlen, align 4
  %cmp165 = icmp slt i32 %110, 0
  br i1 %cmp165, label %while.body167, label %while.end178

while.body167:                                    ; preds = %while.cond164
  br label %do.body168

do.body168:                                       ; preds = %while.body167
  %111 = load i64*, i64** %len.addr, align 8
  %112 = load i64, i64* %111, align 8
  %add169 = add i64 %112, 1
  %113 = load i64, i64* %size.addr, align 8
  %cmp170 = icmp ult i64 %add169, %113
  br i1 %cmp170, label %if.then172, label %if.end174

if.then172:                                       ; preds = %do.body168
  %114 = load i8*, i8** %str.addr, align 8
  %115 = load i64*, i64** %len.addr, align 8
  %116 = load i64, i64* %115, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 32, i8* %arrayidx173, align 1
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %do.body168
  %117 = load i64*, i64** %len.addr, align 8
  %118 = load i64, i64* %117, align 8
  %inc175 = add i64 %118, 1
  store i64 %inc175, i64* %117, align 8
  br label %do.end176

do.end176:                                        ; preds = %if.end174
  %119 = load i32, i32* %spadlen, align 4
  %inc177 = add nsw i32 %119, 1
  store i32 %inc177, i32* %spadlen, align 4
  br label %while.cond164, !llvm.loop !9

while.end178:                                     ; preds = %while.cond164
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtflt(i8* noundef %str, i64* noundef %len, i64 noundef %size, double noundef %fvalue, i32 noundef %width, i32 noundef %precision, i32 noundef %flags, i32* noundef %overflow) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %size.addr = alloca i64, align 8
  %fvalue.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %overflow.addr = alloca i32*, align 8
  %ufvalue = alloca double, align 8
  %intpart = alloca i64, align 8
  %fracpart = alloca i64, align 8
  %mask = alloca i64, align 8
  %infnan = alloca i8*, align 8
  %iconvert = alloca [43 x i8], align 16
  %fconvert = alloca [43 x i8], align 16
  %econvert = alloca [4 x i8], align 1
  %esign = alloca i8, align 1
  %sign = alloca i8, align 1
  %leadfraczeros = alloca i32, align 4
  %exponent = alloca i32, align 4
  %emitpoint = alloca i32, align 4
  %omitzeros = alloca i32, align 4
  %omitcount = alloca i32, align 4
  %padlen = alloca i32, align 4
  %epos = alloca i32, align 4
  %fpos = alloca i32, align 4
  %ipos = alloca i32, align 4
  %separators = alloca i32, align 4
  %estyle = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store double %fvalue, double* %fvalue.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %precision, i32* %precision.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %overflow, i32** %overflow.addr, align 8
  store i8* null, i8** %infnan, align 8
  store i8 0, i8* %esign, align 1
  store i8 0, i8* %sign, align 1
  store i32 0, i32* %leadfraczeros, align 4
  store i32 0, i32* %exponent, align 4
  store i32 0, i32* %emitpoint, align 4
  store i32 0, i32* %omitzeros, align 4
  store i32 0, i32* %omitcount, align 4
  store i32 0, i32* %padlen, align 4
  store i32 0, i32* %epos, align 4
  store i32 0, i32* %fpos, align 4
  store i32 0, i32* %ipos, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 32
  store i32 %and, i32* %separators, align 4
  %1 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %1, 512
  store i32 %and1, i32* %estyle, align 4
  %2 = load i32, i32* %precision.addr, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* %precision.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load double, double* %fvalue.addr, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i8 45, i8* %sign, align 1
  br label %if.end12

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %flags.addr, align 4
  %and4 = and i32 %4, 2
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i8 43, i8* %sign, align 1
  br label %if.end11

if.else6:                                         ; preds = %if.else
  %5 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %5, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else6
  store i8 32, i8* %sign, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else6
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then3
  %6 = load double, double* %fvalue.addr, align 8
  %7 = load double, double* %fvalue.addr, align 8
  %cmp13 = fcmp une double %6, %7
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.end12
  %8 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %8, 64
  %tobool16 = icmp ne i32 %and15, 0
  %9 = zext i1 %tobool16 to i64
  %cond = select i1 %tobool16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  store i8* %cond, i8** %infnan, align 8
  br label %if.end25

if.else17:                                        ; preds = %if.end12
  %10 = load double, double* %fvalue.addr, align 8
  %cmp18 = fcmp une double %10, 0.000000e+00
  br i1 %cmp18, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.else17
  %11 = load double, double* %fvalue.addr, align 8
  %12 = load double, double* %fvalue.addr, align 8
  %add = fadd double %11, %12
  %13 = load double, double* %fvalue.addr, align 8
  %cmp19 = fcmp oeq double %add, %13
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %flags.addr, align 4
  %and21 = and i32 %14, 64
  %tobool22 = icmp ne i32 %and21, 0
  %15 = zext i1 %tobool22 to i64
  %cond23 = select i1 %tobool22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  store i8* %cond23, i8** %infnan, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true, %if.else17
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then14
  %16 = load i8*, i8** %infnan, align 8
  %cmp26 = icmp ne i8* %16, null
  br i1 %cmp26, label %if.then27, label %if.end38

if.then27:                                        ; preds = %if.end25
  %17 = load i8, i8* %sign, align 1
  %conv = sext i8 %17 to i32
  %cmp28 = icmp ne i32 %conv, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  %18 = load i8, i8* %sign, align 1
  %19 = load i32, i32* %ipos, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ipos, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [43 x i8], [43 x i8]* %iconvert, i64 0, i64 %idxprom
  store i8 %18, i8* %arrayidx, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end31
  %20 = load i8*, i8** %infnan, align 8
  %21 = load i8, i8* %20, align 1
  %conv32 = sext i8 %21 to i32
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i8*, i8** %infnan, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %infnan, align 8
  %23 = load i8, i8* %22, align 1
  %24 = load i32, i32* %ipos, align 4
  %inc35 = add nsw i32 %24, 1
  store i32 %inc35, i32* %ipos, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [43 x i8], [43 x i8]* %iconvert, i64 0, i64 %idxprom36
  store i8 %23, i8* %arrayidx37, align 1
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load i64*, i64** %len.addr, align 8
  %27 = load i64, i64* %size.addr, align 8
  %arraydecay = getelementptr inbounds [43 x i8], [43 x i8]* %iconvert, i64 0, i64 0
  %28 = load i32, i32* %width.addr, align 4
  %29 = load i32, i32* %ipos, align 4
  %30 = load i32, i32* %flags.addr, align 4
  call void @fmtstr(i8* noundef %25, i64* noundef %26, i64 noundef %27, i8* noundef %arraydecay, i32 noundef %28, i32 noundef %29, i32 noundef %30)
  br label %while.end356

if.end38:                                         ; preds = %if.end25
  %31 = load i32, i32* %flags.addr, align 4
  %and39 = and i32 %31, 512
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end38
  %32 = load i32, i32* %flags.addr, align 4
  %and41 = and i32 %32, 256
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end52

if.then43:                                        ; preds = %lor.lhs.false, %if.end38
  %33 = load i32, i32* %flags.addr, align 4
  %and44 = and i32 %33, 256
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.then43
  %34 = load i32, i32* %precision.addr, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %precision.addr, align 4
  %35 = load i32, i32* %flags.addr, align 4
  %and47 = and i32 %35, 8
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.then46
  store i32 1, i32* %omitzeros, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.then46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then43
  %36 = load double, double* %fvalue.addr, align 8
  %call = call i32 @getexponent(double noundef %36)
  store i32 %call, i32* %exponent, align 4
  store i32 1, i32* %estyle, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %lor.lhs.false
  br label %again

again:                                            ; preds = %if.then97, %if.end52
  %37 = load i32, i32* %precision.addr, align 4
  %cmp53 = icmp sgt i32 %37, 19
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %again
  store i32 19, i32* %precision.addr, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %again
  %38 = load double, double* %fvalue.addr, align 8
  %cmp57 = fcmp oge double %38, 0.000000e+00
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end56
  %39 = load double, double* %fvalue.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end56
  %40 = load double, double* %fvalue.addr, align 8
  %fneg = fneg double %40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond59 = phi double [ %39, %cond.true ], [ %fneg, %cond.false ]
  store double %cond59, double* %ufvalue, align 8
  %41 = load i32, i32* %estyle, align 4
  %tobool60 = icmp ne i32 %41, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %cond.end
  %42 = load i32, i32* %exponent, align 4
  %call62 = call double @mypow10(i32 noundef %42)
  %43 = load double, double* %ufvalue, align 8
  %div = fdiv double %43, %call62
  store double %div, double* %ufvalue, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %cond.end
  %44 = load double, double* %ufvalue, align 8
  %call64 = call i64 @cast(double noundef %44)
  store i64 %call64, i64* %intpart, align 8
  %cmp65 = icmp eq i64 %call64, -1
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  %45 = load i32*, i32** %overflow.addr, align 8
  store i32 1, i32* %45, align 4
  br label %while.end356

if.end68:                                         ; preds = %if.end63
  %46 = load i32, i32* %precision.addr, align 4
  %call69 = call double @mypow10(i32 noundef %46)
  %conv70 = fptoui double %call69 to i64
  store i64 %conv70, i64* %mask, align 8
  %47 = load i64, i64* %mask, align 8
  %conv71 = uitofp i64 %47 to double
  %48 = load double, double* %ufvalue, align 8
  %49 = load i64, i64* %intpart, align 8
  %conv72 = uitofp i64 %49 to double
  %sub = fsub double %48, %conv72
  %mul = fmul double %conv71, %sub
  %call73 = call i64 @myround(double noundef %mul)
  store i64 %call73, i64* %fracpart, align 8
  %50 = load i64, i64* %mask, align 8
  %cmp74 = icmp uge i64 %call73, %50
  br i1 %cmp74, label %if.then76, label %if.end85

if.then76:                                        ; preds = %if.end68
  %51 = load i64, i64* %intpart, align 8
  %inc77 = add i64 %51, 1
  store i64 %inc77, i64* %intpart, align 8
  store i64 0, i64* %fracpart, align 8
  %52 = load i32, i32* %estyle, align 4
  %tobool78 = icmp ne i32 %52, 0
  br i1 %tobool78, label %land.lhs.true79, label %if.end84

land.lhs.true79:                                  ; preds = %if.then76
  %53 = load i64, i64* %intpart, align 8
  %cmp80 = icmp eq i64 %53, 10
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %land.lhs.true79
  store i64 1, i64* %intpart, align 8
  %54 = load i32, i32* %exponent, align 4
  %inc83 = add nsw i32 %54, 1
  store i32 %inc83, i32* %exponent, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %land.lhs.true79, %if.then76
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end68
  %55 = load i32, i32* %flags.addr, align 4
  %and86 = and i32 %55, 256
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %land.lhs.true88, label %if.end99

land.lhs.true88:                                  ; preds = %if.end85
  %56 = load i32, i32* %estyle, align 4
  %tobool89 = icmp ne i32 %56, 0
  br i1 %tobool89, label %land.lhs.true90, label %if.end99

land.lhs.true90:                                  ; preds = %land.lhs.true88
  %57 = load i32, i32* %precision.addr, align 4
  %add91 = add nsw i32 %57, 1
  %58 = load i32, i32* %exponent, align 4
  %cmp92 = icmp sgt i32 %add91, %58
  br i1 %cmp92, label %land.lhs.true94, label %if.end99

land.lhs.true94:                                  ; preds = %land.lhs.true90
  %59 = load i32, i32* %exponent, align 4
  %cmp95 = icmp sge i32 %59, -4
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %land.lhs.true94
  %60 = load i32, i32* %exponent, align 4
  %61 = load i32, i32* %precision.addr, align 4
  %sub98 = sub nsw i32 %61, %60
  store i32 %sub98, i32* %precision.addr, align 4
  store i32 0, i32* %estyle, align 4
  br label %again

if.end99:                                         ; preds = %land.lhs.true94, %land.lhs.true90, %land.lhs.true88, %if.end85
  %62 = load i32, i32* %estyle, align 4
  %tobool100 = icmp ne i32 %62, 0
  br i1 %tobool100, label %if.then101, label %if.end128

if.then101:                                       ; preds = %if.end99
  %63 = load i32, i32* %exponent, align 4
  %cmp102 = icmp slt i32 %63, 0
  br i1 %cmp102, label %if.then104, label %if.else106

if.then104:                                       ; preds = %if.then101
  %64 = load i32, i32* %exponent, align 4
  %sub105 = sub nsw i32 0, %64
  store i32 %sub105, i32* %exponent, align 4
  store i8 45, i8* %esign, align 1
  br label %if.end107

if.else106:                                       ; preds = %if.then101
  store i8 43, i8* %esign, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %if.then104
  %65 = load i32, i32* %exponent, align 4
  %conv108 = sext i32 %65 to i64
  %arraydecay109 = getelementptr inbounds [4 x i8], [4 x i8]* %econvert, i64 0, i64 0
  %call110 = call i32 @convert(i64 noundef %conv108, i8* noundef %arraydecay109, i64 noundef 2, i32 noundef 10, i32 noundef 0)
  store i32 %call110, i32* %epos, align 4
  %66 = load i32, i32* %epos, align 4
  %cmp111 = icmp eq i32 %66, 1
  br i1 %cmp111, label %if.then113, label %if.end117

if.then113:                                       ; preds = %if.end107
  %67 = load i32, i32* %epos, align 4
  %inc114 = add nsw i32 %67, 1
  store i32 %inc114, i32* %epos, align 4
  %idxprom115 = sext i32 %67 to i64
  %arrayidx116 = getelementptr inbounds [4 x i8], [4 x i8]* %econvert, i64 0, i64 %idxprom115
  store i8 48, i8* %arrayidx116, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %if.end107
  %68 = load i8, i8* %esign, align 1
  %69 = load i32, i32* %epos, align 4
  %inc118 = add nsw i32 %69, 1
  store i32 %inc118, i32* %epos, align 4
  %idxprom119 = sext i32 %69 to i64
  %arrayidx120 = getelementptr inbounds [4 x i8], [4 x i8]* %econvert, i64 0, i64 %idxprom119
  store i8 %68, i8* %arrayidx120, align 1
  %70 = load i32, i32* %flags.addr, align 4
  %and121 = and i32 %70, 64
  %tobool122 = icmp ne i32 %and121, 0
  %71 = zext i1 %tobool122 to i64
  %cond123 = select i1 %tobool122, i32 69, i32 101
  %conv124 = trunc i32 %cond123 to i8
  %72 = load i32, i32* %epos, align 4
  %inc125 = add nsw i32 %72, 1
  store i32 %inc125, i32* %epos, align 4
  %idxprom126 = sext i32 %72 to i64
  %arrayidx127 = getelementptr inbounds [4 x i8], [4 x i8]* %econvert, i64 0, i64 %idxprom126
  store i8 %conv124, i8* %arrayidx127, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.end117, %if.end99
  %73 = load i64, i64* %intpart, align 8
  %arraydecay129 = getelementptr inbounds [43 x i8], [43 x i8]* %iconvert, i64 0, i64 0
  %call130 = call i32 @convert(i64 noundef %73, i8* noundef %arraydecay129, i64 noundef 43, i32 noundef 10, i32 noundef 0)
  store i32 %call130, i32* %ipos, align 4
  %74 = load i64, i64* %fracpart, align 8
  %cmp131 = icmp ne i64 %74, 0
  br i1 %cmp131, label %if.then133, label %if.end136

if.then133:                                       ; preds = %if.end128
  %75 = load i64, i64* %fracpart, align 8
  %arraydecay134 = getelementptr inbounds [43 x i8], [43 x i8]* %fconvert, i64 0, i64 0
  %call135 = call i32 @convert(i64 noundef %75, i8* noundef %arraydecay134, i64 noundef 43, i32 noundef 10, i32 noundef 0)
  store i32 %call135, i32* %fpos, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.end128
  %76 = load i32, i32* %precision.addr, align 4
  %77 = load i32, i32* %fpos, align 4
  %sub137 = sub nsw i32 %76, %77
  store i32 %sub137, i32* %leadfraczeros, align 4
  %78 = load i32, i32* %omitzeros, align 4
  %tobool138 = icmp ne i32 %78, 0
  br i1 %tobool138, label %if.then139, label %if.end157

if.then139:                                       ; preds = %if.end136
  %79 = load i32, i32* %fpos, align 4
  %cmp140 = icmp sgt i32 %79, 0
  br i1 %cmp140, label %if.then142, label %if.else154

if.then142:                                       ; preds = %if.then139
  br label %while.cond143

while.cond143:                                    ; preds = %while.body151, %if.then142
  %80 = load i32, i32* %omitcount, align 4
  %81 = load i32, i32* %fpos, align 4
  %cmp144 = icmp slt i32 %80, %81
  br i1 %cmp144, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond143
  %82 = load i32, i32* %omitcount, align 4
  %idxprom146 = sext i32 %82 to i64
  %arrayidx147 = getelementptr inbounds [43 x i8], [43 x i8]* %fconvert, i64 0, i64 %idxprom146
  %83 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %83 to i32
  %cmp149 = icmp eq i32 %conv148, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond143
  %84 = phi i1 [ false, %while.cond143 ], [ %cmp149, %land.rhs ]
  br i1 %84, label %while.body151, label %while.end153

while.body151:                                    ; preds = %land.end
  %85 = load i32, i32* %omitcount, align 4
  %inc152 = add nsw i32 %85, 1
  store i32 %inc152, i32* %omitcount, align 4
  br label %while.cond143, !llvm.loop !11

while.end153:                                     ; preds = %land.end
  br label %if.end155

if.else154:                                       ; preds = %if.then139
  %86 = load i32, i32* %precision.addr, align 4
  store i32 %86, i32* %omitcount, align 4
  store i32 0, i32* %leadfraczeros, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.else154, %while.end153
  %87 = load i32, i32* %omitcount, align 4
  %88 = load i32, i32* %precision.addr, align 4
  %sub156 = sub nsw i32 %88, %87
  store i32 %sub156, i32* %precision.addr, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.end155, %if.end136
  %89 = load i32, i32* %precision.addr, align 4
  %cmp158 = icmp sgt i32 %89, 0
  br i1 %cmp158, label %if.then163, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %if.end157
  %90 = load i32, i32* %flags.addr, align 4
  %and161 = and i32 %90, 8
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %lor.lhs.false160, %if.end157
  store i32 1, i32* %emitpoint, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %lor.lhs.false160
  %91 = load i32, i32* %separators, align 4
  %tobool165 = icmp ne i32 %91, 0
  br i1 %tobool165, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.end164
  %92 = load i32, i32* %ipos, align 4
  %call167 = call i32 @getnumsep(i32 noundef %92)
  store i32 %call167, i32* %separators, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.end164
  %93 = load i32, i32* %width.addr, align 4
  %94 = load i32, i32* %ipos, align 4
  %sub169 = sub nsw i32 %93, %94
  %95 = load i32, i32* %epos, align 4
  %sub170 = sub nsw i32 %sub169, %95
  %96 = load i32, i32* %precision.addr, align 4
  %sub171 = sub nsw i32 %sub170, %96
  %97 = load i32, i32* %separators, align 4
  %sub172 = sub nsw i32 %sub171, %97
  %98 = load i32, i32* %emitpoint, align 4
  %tobool173 = icmp ne i32 %98, 0
  %99 = zext i1 %tobool173 to i64
  %cond174 = select i1 %tobool173, i32 1, i32 0
  %sub175 = sub nsw i32 %sub172, %cond174
  %100 = load i8, i8* %sign, align 1
  %conv176 = sext i8 %100 to i32
  %cmp177 = icmp ne i32 %conv176, 0
  %101 = zext i1 %cmp177 to i64
  %cond179 = select i1 %cmp177, i32 1, i32 0
  %sub180 = sub nsw i32 %sub175, %cond179
  store i32 %sub180, i32* %padlen, align 4
  %102 = load i32, i32* %padlen, align 4
  %cmp181 = icmp slt i32 %102, 0
  br i1 %cmp181, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.end168
  store i32 0, i32* %padlen, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.end168
  %103 = load i32, i32* %flags.addr, align 4
  %and185 = and i32 %103, 1
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %if.then187, label %if.else189

if.then187:                                       ; preds = %if.end184
  %104 = load i32, i32* %padlen, align 4
  %sub188 = sub nsw i32 0, %104
  store i32 %sub188, i32* %padlen, align 4
  br label %if.end224

if.else189:                                       ; preds = %if.end184
  %105 = load i32, i32* %flags.addr, align 4
  %and190 = and i32 %105, 16
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %land.lhs.true192, label %if.end223

land.lhs.true192:                                 ; preds = %if.else189
  %106 = load i32, i32* %padlen, align 4
  %cmp193 = icmp sgt i32 %106, 0
  br i1 %cmp193, label %if.then195, label %if.end223

if.then195:                                       ; preds = %land.lhs.true192
  %107 = load i8, i8* %sign, align 1
  %conv196 = sext i8 %107 to i32
  %cmp197 = icmp ne i32 %conv196, 0
  br i1 %cmp197, label %if.then199, label %if.end207

if.then199:                                       ; preds = %if.then195
  br label %do.body

do.body:                                          ; preds = %if.then199
  %108 = load i64*, i64** %len.addr, align 8
  %109 = load i64, i64* %108, align 8
  %add200 = add i64 %109, 1
  %110 = load i64, i64* %size.addr, align 8
  %cmp201 = icmp ult i64 %add200, %110
  br i1 %cmp201, label %if.then203, label %if.end205

if.then203:                                       ; preds = %do.body
  %111 = load i8, i8* %sign, align 1
  %112 = load i8*, i8** %str.addr, align 8
  %113 = load i64*, i64** %len.addr, align 8
  %114 = load i64, i64* %113, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 %111, i8* %arrayidx204, align 1
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %do.body
  %115 = load i64*, i64** %len.addr, align 8
  %116 = load i64, i64* %115, align 8
  %inc206 = add i64 %116, 1
  store i64 %inc206, i64* %115, align 8
  br label %do.end

do.end:                                           ; preds = %if.end205
  store i8 0, i8* %sign, align 1
  br label %if.end207

if.end207:                                        ; preds = %do.end, %if.then195
  br label %while.cond208

while.cond208:                                    ; preds = %do.end220, %if.end207
  %117 = load i32, i32* %padlen, align 4
  %cmp209 = icmp sgt i32 %117, 0
  br i1 %cmp209, label %while.body211, label %while.end222

while.body211:                                    ; preds = %while.cond208
  br label %do.body212

do.body212:                                       ; preds = %while.body211
  %118 = load i64*, i64** %len.addr, align 8
  %119 = load i64, i64* %118, align 8
  %add213 = add i64 %119, 1
  %120 = load i64, i64* %size.addr, align 8
  %cmp214 = icmp ult i64 %add213, %120
  br i1 %cmp214, label %if.then216, label %if.end218

if.then216:                                       ; preds = %do.body212
  %121 = load i8*, i8** %str.addr, align 8
  %122 = load i64*, i64** %len.addr, align 8
  %123 = load i64, i64* %122, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 48, i8* %arrayidx217, align 1
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %do.body212
  %124 = load i64*, i64** %len.addr, align 8
  %125 = load i64, i64* %124, align 8
  %inc219 = add i64 %125, 1
  store i64 %inc219, i64* %124, align 8
  br label %do.end220

do.end220:                                        ; preds = %if.end218
  %126 = load i32, i32* %padlen, align 4
  %dec221 = add nsw i32 %126, -1
  store i32 %dec221, i32* %padlen, align 4
  br label %while.cond208, !llvm.loop !12

while.end222:                                     ; preds = %while.cond208
  br label %if.end223

if.end223:                                        ; preds = %while.end222, %land.lhs.true192, %if.else189
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.then187
  br label %while.cond225

while.cond225:                                    ; preds = %do.end237, %if.end224
  %127 = load i32, i32* %padlen, align 4
  %cmp226 = icmp sgt i32 %127, 0
  br i1 %cmp226, label %while.body228, label %while.end239

while.body228:                                    ; preds = %while.cond225
  br label %do.body229

do.body229:                                       ; preds = %while.body228
  %128 = load i64*, i64** %len.addr, align 8
  %129 = load i64, i64* %128, align 8
  %add230 = add i64 %129, 1
  %130 = load i64, i64* %size.addr, align 8
  %cmp231 = icmp ult i64 %add230, %130
  br i1 %cmp231, label %if.then233, label %if.end235

if.then233:                                       ; preds = %do.body229
  %131 = load i8*, i8** %str.addr, align 8
  %132 = load i64*, i64** %len.addr, align 8
  %133 = load i64, i64* %132, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 32, i8* %arrayidx234, align 1
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %do.body229
  %134 = load i64*, i64** %len.addr, align 8
  %135 = load i64, i64* %134, align 8
  %inc236 = add i64 %135, 1
  store i64 %inc236, i64* %134, align 8
  br label %do.end237

do.end237:                                        ; preds = %if.end235
  %136 = load i32, i32* %padlen, align 4
  %dec238 = add nsw i32 %136, -1
  store i32 %dec238, i32* %padlen, align 4
  br label %while.cond225, !llvm.loop !13

while.end239:                                     ; preds = %while.cond225
  %137 = load i8, i8* %sign, align 1
  %conv240 = sext i8 %137 to i32
  %cmp241 = icmp ne i32 %conv240, 0
  br i1 %cmp241, label %if.then243, label %if.end253

if.then243:                                       ; preds = %while.end239
  br label %do.body244

do.body244:                                       ; preds = %if.then243
  %138 = load i64*, i64** %len.addr, align 8
  %139 = load i64, i64* %138, align 8
  %add245 = add i64 %139, 1
  %140 = load i64, i64* %size.addr, align 8
  %cmp246 = icmp ult i64 %add245, %140
  br i1 %cmp246, label %if.then248, label %if.end250

if.then248:                                       ; preds = %do.body244
  %141 = load i8, i8* %sign, align 1
  %142 = load i8*, i8** %str.addr, align 8
  %143 = load i64*, i64** %len.addr, align 8
  %144 = load i64, i64* %143, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 %141, i8* %arrayidx249, align 1
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %do.body244
  %145 = load i64*, i64** %len.addr, align 8
  %146 = load i64, i64* %145, align 8
  %inc251 = add i64 %146, 1
  store i64 %inc251, i64* %145, align 8
  br label %do.end252

do.end252:                                        ; preds = %if.end250
  br label %if.end253

if.end253:                                        ; preds = %do.end252, %while.end239
  br label %while.cond254

while.cond254:                                    ; preds = %if.end279, %if.end253
  %147 = load i32, i32* %ipos, align 4
  %cmp255 = icmp sgt i32 %147, 0
  br i1 %cmp255, label %while.body257, label %while.end280

while.body257:                                    ; preds = %while.cond254
  %148 = load i32, i32* %ipos, align 4
  %dec258 = add nsw i32 %148, -1
  store i32 %dec258, i32* %ipos, align 4
  br label %do.body259

do.body259:                                       ; preds = %while.body257
  %149 = load i64*, i64** %len.addr, align 8
  %150 = load i64, i64* %149, align 8
  %add260 = add i64 %150, 1
  %151 = load i64, i64* %size.addr, align 8
  %cmp261 = icmp ult i64 %add260, %151
  br i1 %cmp261, label %if.then263, label %if.end267

if.then263:                                       ; preds = %do.body259
  %152 = load i32, i32* %ipos, align 4
  %idxprom264 = sext i32 %152 to i64
  %arrayidx265 = getelementptr inbounds [43 x i8], [43 x i8]* %iconvert, i64 0, i64 %idxprom264
  %153 = load i8, i8* %arrayidx265, align 1
  %154 = load i8*, i8** %str.addr, align 8
  %155 = load i64*, i64** %len.addr, align 8
  %156 = load i64, i64* %155, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 %153, i8* %arrayidx266, align 1
  br label %if.end267

if.end267:                                        ; preds = %if.then263, %do.body259
  %157 = load i64*, i64** %len.addr, align 8
  %158 = load i64, i64* %157, align 8
  %inc268 = add i64 %158, 1
  store i64 %inc268, i64* %157, align 8
  br label %do.end269

do.end269:                                        ; preds = %if.end267
  %159 = load i32, i32* %separators, align 4
  %cmp270 = icmp sgt i32 %159, 0
  br i1 %cmp270, label %land.lhs.true272, label %if.end279

land.lhs.true272:                                 ; preds = %do.end269
  %160 = load i32, i32* %ipos, align 4
  %cmp273 = icmp sgt i32 %160, 0
  br i1 %cmp273, label %land.lhs.true275, label %if.end279

land.lhs.true275:                                 ; preds = %land.lhs.true272
  %161 = load i32, i32* %ipos, align 4
  %rem = srem i32 %161, 3
  %cmp276 = icmp eq i32 %rem, 0
  br i1 %cmp276, label %if.then278, label %if.end279

if.then278:                                       ; preds = %land.lhs.true275
  %162 = load i8*, i8** %str.addr, align 8
  %163 = load i64*, i64** %len.addr, align 8
  %164 = load i64, i64* %size.addr, align 8
  call void @printsep(i8* noundef %162, i64* noundef %163, i64 noundef %164)
  br label %if.end279

if.end279:                                        ; preds = %if.then278, %land.lhs.true275, %land.lhs.true272, %do.end269
  br label %while.cond254, !llvm.loop !14

while.end280:                                     ; preds = %while.cond254
  %165 = load i32, i32* %emitpoint, align 4
  %tobool281 = icmp ne i32 %165, 0
  br i1 %tobool281, label %if.then282, label %if.end292

if.then282:                                       ; preds = %while.end280
  br label %do.body283

do.body283:                                       ; preds = %if.then282
  %166 = load i64*, i64** %len.addr, align 8
  %167 = load i64, i64* %166, align 8
  %add284 = add i64 %167, 1
  %168 = load i64, i64* %size.addr, align 8
  %cmp285 = icmp ult i64 %add284, %168
  br i1 %cmp285, label %if.then287, label %if.end289

if.then287:                                       ; preds = %do.body283
  %169 = load i8*, i8** %str.addr, align 8
  %170 = load i64*, i64** %len.addr, align 8
  %171 = load i64, i64* %170, align 8
  %arrayidx288 = getelementptr inbounds i8, i8* %169, i64 %171
  store i8 46, i8* %arrayidx288, align 1
  br label %if.end289

if.end289:                                        ; preds = %if.then287, %do.body283
  %172 = load i64*, i64** %len.addr, align 8
  %173 = load i64, i64* %172, align 8
  %inc290 = add i64 %173, 1
  store i64 %inc290, i64* %172, align 8
  br label %do.end291

do.end291:                                        ; preds = %if.end289
  br label %if.end292

if.end292:                                        ; preds = %do.end291, %while.end280
  br label %while.cond293

while.cond293:                                    ; preds = %do.end305, %if.end292
  %174 = load i32, i32* %leadfraczeros, align 4
  %cmp294 = icmp sgt i32 %174, 0
  br i1 %cmp294, label %while.body296, label %while.end307

while.body296:                                    ; preds = %while.cond293
  br label %do.body297

do.body297:                                       ; preds = %while.body296
  %175 = load i64*, i64** %len.addr, align 8
  %176 = load i64, i64* %175, align 8
  %add298 = add i64 %176, 1
  %177 = load i64, i64* %size.addr, align 8
  %cmp299 = icmp ult i64 %add298, %177
  br i1 %cmp299, label %if.then301, label %if.end303

if.then301:                                       ; preds = %do.body297
  %178 = load i8*, i8** %str.addr, align 8
  %179 = load i64*, i64** %len.addr, align 8
  %180 = load i64, i64* %179, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %178, i64 %180
  store i8 48, i8* %arrayidx302, align 1
  br label %if.end303

if.end303:                                        ; preds = %if.then301, %do.body297
  %181 = load i64*, i64** %len.addr, align 8
  %182 = load i64, i64* %181, align 8
  %inc304 = add i64 %182, 1
  store i64 %inc304, i64* %181, align 8
  br label %do.end305

do.end305:                                        ; preds = %if.end303
  %183 = load i32, i32* %leadfraczeros, align 4
  %dec306 = add nsw i32 %183, -1
  store i32 %dec306, i32* %leadfraczeros, align 4
  br label %while.cond293, !llvm.loop !15

while.end307:                                     ; preds = %while.cond293
  br label %while.cond308

while.cond308:                                    ; preds = %do.end323, %while.end307
  %184 = load i32, i32* %fpos, align 4
  %185 = load i32, i32* %omitcount, align 4
  %cmp309 = icmp sgt i32 %184, %185
  br i1 %cmp309, label %while.body311, label %while.end324

while.body311:                                    ; preds = %while.cond308
  %186 = load i32, i32* %fpos, align 4
  %dec312 = add nsw i32 %186, -1
  store i32 %dec312, i32* %fpos, align 4
  br label %do.body313

do.body313:                                       ; preds = %while.body311
  %187 = load i64*, i64** %len.addr, align 8
  %188 = load i64, i64* %187, align 8
  %add314 = add i64 %188, 1
  %189 = load i64, i64* %size.addr, align 8
  %cmp315 = icmp ult i64 %add314, %189
  br i1 %cmp315, label %if.then317, label %if.end321

if.then317:                                       ; preds = %do.body313
  %190 = load i32, i32* %fpos, align 4
  %idxprom318 = sext i32 %190 to i64
  %arrayidx319 = getelementptr inbounds [43 x i8], [43 x i8]* %fconvert, i64 0, i64 %idxprom318
  %191 = load i8, i8* %arrayidx319, align 1
  %192 = load i8*, i8** %str.addr, align 8
  %193 = load i64*, i64** %len.addr, align 8
  %194 = load i64, i64* %193, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8 %191, i8* %arrayidx320, align 1
  br label %if.end321

if.end321:                                        ; preds = %if.then317, %do.body313
  %195 = load i64*, i64** %len.addr, align 8
  %196 = load i64, i64* %195, align 8
  %inc322 = add i64 %196, 1
  store i64 %inc322, i64* %195, align 8
  br label %do.end323

do.end323:                                        ; preds = %if.end321
  br label %while.cond308, !llvm.loop !16

while.end324:                                     ; preds = %while.cond308
  br label %while.cond325

while.cond325:                                    ; preds = %do.end340, %while.end324
  %197 = load i32, i32* %epos, align 4
  %cmp326 = icmp sgt i32 %197, 0
  br i1 %cmp326, label %while.body328, label %while.end341

while.body328:                                    ; preds = %while.cond325
  %198 = load i32, i32* %epos, align 4
  %dec329 = add nsw i32 %198, -1
  store i32 %dec329, i32* %epos, align 4
  br label %do.body330

do.body330:                                       ; preds = %while.body328
  %199 = load i64*, i64** %len.addr, align 8
  %200 = load i64, i64* %199, align 8
  %add331 = add i64 %200, 1
  %201 = load i64, i64* %size.addr, align 8
  %cmp332 = icmp ult i64 %add331, %201
  br i1 %cmp332, label %if.then334, label %if.end338

if.then334:                                       ; preds = %do.body330
  %202 = load i32, i32* %epos, align 4
  %idxprom335 = sext i32 %202 to i64
  %arrayidx336 = getelementptr inbounds [4 x i8], [4 x i8]* %econvert, i64 0, i64 %idxprom335
  %203 = load i8, i8* %arrayidx336, align 1
  %204 = load i8*, i8** %str.addr, align 8
  %205 = load i64*, i64** %len.addr, align 8
  %206 = load i64, i64* %205, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 %203, i8* %arrayidx337, align 1
  br label %if.end338

if.end338:                                        ; preds = %if.then334, %do.body330
  %207 = load i64*, i64** %len.addr, align 8
  %208 = load i64, i64* %207, align 8
  %inc339 = add i64 %208, 1
  store i64 %inc339, i64* %207, align 8
  br label %do.end340

do.end340:                                        ; preds = %if.end338
  br label %while.cond325, !llvm.loop !17

while.end341:                                     ; preds = %while.cond325
  br label %while.cond342

while.cond342:                                    ; preds = %do.end354, %while.end341
  %209 = load i32, i32* %padlen, align 4
  %cmp343 = icmp slt i32 %209, 0
  br i1 %cmp343, label %while.body345, label %while.end356

while.body345:                                    ; preds = %while.cond342
  br label %do.body346

do.body346:                                       ; preds = %while.body345
  %210 = load i64*, i64** %len.addr, align 8
  %211 = load i64, i64* %210, align 8
  %add347 = add i64 %211, 1
  %212 = load i64, i64* %size.addr, align 8
  %cmp348 = icmp ult i64 %add347, %212
  br i1 %cmp348, label %if.then350, label %if.end352

if.then350:                                       ; preds = %do.body346
  %213 = load i8*, i8** %str.addr, align 8
  %214 = load i64*, i64** %len.addr, align 8
  %215 = load i64, i64* %214, align 8
  %arrayidx351 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8 32, i8* %arrayidx351, align 1
  br label %if.end352

if.end352:                                        ; preds = %if.then350, %do.body346
  %216 = load i64*, i64** %len.addr, align 8
  %217 = load i64, i64* %216, align 8
  %inc353 = add i64 %217, 1
  store i64 %inc353, i64* %216, align 8
  br label %do.end354

do.end354:                                        ; preds = %if.end352
  %218 = load i32, i32* %padlen, align 4
  %inc355 = add nsw i32 %218, 1
  store i32 %inc355, i32* %padlen, align 4
  br label %while.cond342, !llvm.loop !18

while.end356:                                     ; preds = %while.end, %if.then67, %while.cond342
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtstr(i8* noundef %str, i64* noundef %len, i64 noundef %size, i8* noundef %value, i32 noundef %width, i32 noundef %precision, i32 noundef %flags) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %size.addr = alloca i64, align 8
  %value.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %padlen = alloca i32, align 4
  %strln = alloca i32, align 4
  %noprecision = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %precision, i32* %precision.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %precision.addr, align 4
  %cmp = icmp eq i32 %0, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %noprecision, align 4
  %1 = load i8*, i8** %value.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %strln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %value.addr, align 8
  %3 = load i32, i32* %strln, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %noprecision, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load i32, i32* %strln, align 4
  %7 = load i32, i32* %precision.addr, align 4
  %cmp6 = icmp slt i32 %6, %7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %8, %lor.end ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %strln, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %strln, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %strln, align 4
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %padlen, align 4
  %cmp8 = icmp slt i32 %sub, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  store i32 0, i32* %padlen, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end
  %13 = load i32, i32* %flags.addr, align 4
  %and = and i32 %13, 1
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %14 = load i32, i32* %padlen, align 4
  %sub14 = sub nsw i32 0, %14
  store i32 %sub14, i32* %padlen, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end15
  %15 = load i32, i32* %padlen, align 4
  %cmp16 = icmp sgt i32 %15, 0
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %16 = load i64*, i64** %len.addr, align 8
  %17 = load i64, i64* %16, align 8
  %add = add i64 %17, 1
  %18 = load i64, i64* %size.addr, align 8
  %cmp18 = icmp ult i64 %add, %18
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body
  %19 = load i8*, i8** %str.addr, align 8
  %20 = load i64*, i64** %len.addr, align 8
  %21 = load i64, i64* %20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 32, i8* %arrayidx21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.body
  %22 = load i64*, i64** %len.addr, align 8
  %23 = load i64, i64* %22, align 8
  %inc23 = add i64 %23, 1
  store i64 %inc23, i64* %22, align 8
  br label %do.end

do.end:                                           ; preds = %if.end22
  %24 = load i32, i32* %padlen, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %padlen, align 4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  br label %while.cond24

while.cond24:                                     ; preds = %do.end45, %while.end
  %25 = load i8*, i8** %value.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv25 = sext i8 %26 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %land.rhs28, label %land.end35

land.rhs28:                                       ; preds = %while.cond24
  %27 = load i32, i32* %noprecision, align 4
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %lor.end34, label %lor.rhs30

lor.rhs30:                                        ; preds = %land.rhs28
  %28 = load i32, i32* %precision.addr, align 4
  %dec31 = add nsw i32 %28, -1
  store i32 %dec31, i32* %precision.addr, align 4
  %cmp32 = icmp sgt i32 %28, 0
  br label %lor.end34

lor.end34:                                        ; preds = %lor.rhs30, %land.rhs28
  %29 = phi i1 [ true, %land.rhs28 ], [ %cmp32, %lor.rhs30 ]
  br label %land.end35

land.end35:                                       ; preds = %lor.end34, %while.cond24
  %30 = phi i1 [ false, %while.cond24 ], [ %29, %lor.end34 ]
  br i1 %30, label %while.body36, label %while.end46

while.body36:                                     ; preds = %land.end35
  br label %do.body37

do.body37:                                        ; preds = %while.body36
  %31 = load i64*, i64** %len.addr, align 8
  %32 = load i64, i64* %31, align 8
  %add38 = add i64 %32, 1
  %33 = load i64, i64* %size.addr, align 8
  %cmp39 = icmp ult i64 %add38, %33
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %do.body37
  %34 = load i8*, i8** %value.addr, align 8
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %str.addr, align 8
  %37 = load i64*, i64** %len.addr, align 8
  %38 = load i64, i64* %37, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 %35, i8* %arrayidx42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.body37
  %39 = load i64*, i64** %len.addr, align 8
  %40 = load i64, i64* %39, align 8
  %inc44 = add i64 %40, 1
  store i64 %inc44, i64* %39, align 8
  br label %do.end45

do.end45:                                         ; preds = %if.end43
  %41 = load i8*, i8** %value.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %value.addr, align 8
  br label %while.cond24, !llvm.loop !21

while.end46:                                      ; preds = %land.end35
  br label %while.cond47

while.cond47:                                     ; preds = %do.end59, %while.end46
  %42 = load i32, i32* %padlen, align 4
  %cmp48 = icmp slt i32 %42, 0
  br i1 %cmp48, label %while.body50, label %while.end61

while.body50:                                     ; preds = %while.cond47
  br label %do.body51

do.body51:                                        ; preds = %while.body50
  %43 = load i64*, i64** %len.addr, align 8
  %44 = load i64, i64* %43, align 8
  %add52 = add i64 %44, 1
  %45 = load i64, i64* %size.addr, align 8
  %cmp53 = icmp ult i64 %add52, %45
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %do.body51
  %46 = load i8*, i8** %str.addr, align 8
  %47 = load i64*, i64** %len.addr, align 8
  %48 = load i64, i64* %47, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 32, i8* %arrayidx56, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %do.body51
  %49 = load i64*, i64** %len.addr, align 8
  %50 = load i64, i64* %49, align 8
  %inc58 = add i64 %50, 1
  store i64 %inc58, i64* %49, align 8
  br label %do.end59

do.end59:                                         ; preds = %if.end57
  %51 = load i32, i32* %padlen, align 4
  %inc60 = add nsw i32 %51, 1
  store i32 %inc60, i32* %padlen, align 4
  br label %while.cond47, !llvm.loop !22

while.end61:                                      ; preds = %while.cond47
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert(i64 noundef %value, i8* noundef %buf, i64 noundef %size, i32 noundef %base, i32 noundef %caps) #0 {
entry:
  %value.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %caps.addr = alloca i32, align 4
  %digits = alloca i8*, align 8
  %pos = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %caps, i32* %caps.addr, align 4
  %0 = load i32, i32* %caps.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)
  store i8* %cond, i8** %digits, align 8
  store i64 0, i64* %pos, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %2 = load i8*, i8** %digits, align 8
  %3 = load i64, i64* %value.addr, align 8
  %4 = load i32, i32* %base.addr, align 4
  %conv = sext i32 %4 to i64
  %rem = urem i64 %3, %conv
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %rem
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %pos, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8 %5, i8* %arrayidx1, align 1
  %8 = load i32, i32* %base.addr, align 4
  %conv2 = sext i32 %8 to i64
  %9 = load i64, i64* %value.addr, align 8
  %div = udiv i64 %9, %conv2
  store i64 %div, i64* %value.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i64, i64* %value.addr, align 8
  %cmp = icmp ne i64 %10, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %11 = load i64, i64* %pos, align 8
  %12 = load i64, i64* %size.addr, align 8
  %cmp4 = icmp ult i64 %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %13 = phi i1 [ false, %do.cond ], [ %cmp4, %land.rhs ]
  br i1 %13, label %do.body, label %do.end, !llvm.loop !23

do.end:                                           ; preds = %land.end
  %14 = load i64, i64* %pos, align 8
  %conv6 = trunc i64 %14 to i32
  ret i32 %conv6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnumsep(i32 noundef %digits) #0 {
entry:
  %digits.addr = alloca i32, align 4
  %separators = alloca i32, align 4
  store i32 %digits, i32* %digits.addr, align 4
  %0 = load i32, i32* %digits.addr, align 4
  %1 = load i32, i32* %digits.addr, align 4
  %rem = srem i32 %1, 3
  %cmp = icmp eq i32 %rem, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %sub = sub nsw i32 %0, %cond
  %div = sdiv i32 %sub, 3
  store i32 %div, i32* %separators, align 4
  %3 = load i32, i32* %separators, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printsep(i8* noundef %str, i64* noundef %len, i64 noundef %size) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %size.addr = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64*, i64** %len.addr, align 8
  %1 = load i64, i64* %0, align 8
  %add = add i64 %1, 1
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64*, i64** %len.addr, align 8
  %5 = load i64, i64* %4, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %5
  store i8 44, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %6 = load i64*, i64** %len.addr, align 8
  %7 = load i64, i64* %6, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %6, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getexponent(double noundef %value) #0 {
entry:
  %value.addr = alloca double, align 8
  %tmp = alloca double, align 8
  %exponent = alloca i32, align 4
  store double %value, double* %value.addr, align 8
  %0 = load double, double* %value.addr, align 8
  %cmp = fcmp oge double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %value.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %value.addr, align 8
  %fneg = fneg double %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %1, %cond.true ], [ %fneg, %cond.false ]
  store double %cond, double* %tmp, align 8
  store i32 0, i32* %exponent, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %3 = load double, double* %tmp, align 8
  %cmp1 = fcmp olt double %3, 1.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %4 = load double, double* %tmp, align 8
  %cmp2 = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %exponent, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %exponent, align 4
  %cmp3 = icmp sgt i32 %dec, -99
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load double, double* %tmp, align 8
  %mul = fmul double %7, 1.000000e+01
  store double %mul, double* %tmp, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %land.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body9, %while.end
  %8 = load double, double* %tmp, align 8
  %cmp5 = fcmp oge double %8, 1.000000e+01
  br i1 %cmp5, label %land.rhs6, label %land.end8

land.rhs6:                                        ; preds = %while.cond4
  %9 = load i32, i32* %exponent, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %exponent, align 4
  %cmp7 = icmp slt i32 %inc, 99
  br label %land.end8

land.end8:                                        ; preds = %land.rhs6, %while.cond4
  %10 = phi i1 [ false, %while.cond4 ], [ %cmp7, %land.rhs6 ]
  br i1 %10, label %while.body9, label %while.end10

while.body9:                                      ; preds = %land.end8
  %11 = load double, double* %tmp, align 8
  %div = fdiv double %11, 1.000000e+01
  store double %div, double* %tmp, align 8
  br label %while.cond4, !llvm.loop !25

while.end10:                                      ; preds = %land.end8
  %12 = load i32, i32* %exponent, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @mypow10(i32 noundef %exponent) #0 {
entry:
  %exponent.addr = alloca i32, align 4
  %result = alloca double, align 8
  store i32 %exponent, i32* %exponent.addr, align 4
  store double 1.000000e+00, double* %result, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %exponent.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load double, double* %result, align 8
  %mul = fmul double %1, 1.000000e+01
  store double %mul, double* %result, align 8
  %2 = load i32, i32* %exponent.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %exponent.addr, align 4
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %3 = load i32, i32* %exponent.addr, align 4
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %while.body3, label %while.end4

while.body3:                                      ; preds = %while.cond1
  %4 = load double, double* %result, align 8
  %div = fdiv double %4, 1.000000e+01
  store double %div, double* %result, align 8
  %5 = load i32, i32* %exponent.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %exponent.addr, align 4
  br label %while.cond1, !llvm.loop !27

while.end4:                                       ; preds = %while.cond1
  %6 = load double, double* %result, align 8
  ret double %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cast(double noundef %value) #0 {
entry:
  %retval = alloca i64, align 8
  %value.addr = alloca double, align 8
  %result = alloca i64, align 8
  store double %value, double* %value.addr, align 8
  %0 = load double, double* %value.addr, align 8
  %cmp = fcmp oge double %0, 0x43F0000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %value.addr, align 8
  %conv = fptoui double %1 to i64
  store i64 %conv, i64* %result, align 8
  %2 = load i64, i64* %result, align 8
  %conv1 = uitofp i64 %2 to double
  %3 = load double, double* %value.addr, align 8
  %cmp2 = fcmp ole double %conv1, %3
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i64, i64* %result, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i64, i64* %result, align 8
  %sub = sub i64 %5, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %6 = load i64, i64* %retval, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @myround(double noundef %value) #0 {
entry:
  %value.addr = alloca double, align 8
  %intpart = alloca i64, align 8
  store double %value, double* %value.addr, align 8
  %0 = load double, double* %value.addr, align 8
  %call = call i64 @cast(double noundef %0)
  store i64 %call, i64* %intpart, align 8
  %1 = load i64, i64* %intpart, align 8
  %conv = uitofp i64 %1 to double
  %2 = load double, double* %value.addr, align 8
  %sub = fsub double %2, %conv
  store double %sub, double* %value.addr, align 8
  %cmp = fcmp olt double %sub, 5.000000e-01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %intpart, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* %intpart, align 8
  %add = add i64 %4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mymemcpy(i8* noundef %dst, i8* noundef %src, i64 noundef %len) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %from, align 8
  %1 = load i8*, i8** %dst.addr, align 8
  store i8* %1, i8** %to, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %from, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %from, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %to, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr1, i8** %to, align 8
  store i8 %4, i8* %5, align 1
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %dst.addr, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_vasprintf(i8** noundef %ret, i8* noundef %format, %struct.__va_list_tag* noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %ret.addr = alloca i8**, align 8
  %format.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %size = alloca i64, align 8
  %len = alloca i32, align 4
  %aq = alloca [1 x %struct.__va_list_tag], align 16
  store i8** %ret, i8*** %ret.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %0 = bitcast [1 x %struct.__va_list_tag]* %aq to i8*
  %1 = bitcast %struct.__va_list_tag** %ap.addr to i8*
  %call = call i8* @mymemcpy(i8* noundef %0, i8* noundef %1, i64 noundef 24)
  %2 = load i8*, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i64 0, i64 0
  %call1 = call i32 @vsnprintf(i8* noundef null, i64 noundef 0, i8* noundef %2, %struct.__va_list_tag* noundef %arraydecay) #7
  store i32 %call1, i32* %len, align 4
  %3 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %len, align 4
  %add = add nsw i32 %4, 1
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %size, align 8
  %call2 = call noalias i8* @malloc(i64 noundef %conv) #7
  %5 = load i8**, i8*** %ret.addr, align 8
  store i8* %call2, i8** %5, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8**, i8*** %ret.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %size, align 8
  %9 = load i8*, i8** %format.addr, align 8
  %10 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %call5 = call i32 @vsnprintf(i8* noundef %7, i64 noundef %8, i8* noundef %9, %struct.__va_list_tag* noundef %10) #7
  store i32 %call5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_snprintf(i8* noundef %str, i64 noundef %size, i8* noundef %format, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %call = call i32 @vsnprintf(i8* noundef %0, i64 noundef %1, i8* noundef %2, %struct.__va_list_tag* noundef %arraydecay2) #7
  store i32 %call, i32* %len, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %3 = load i32, i32* %len, align 4
  ret i32 %3
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_asprintf(i8** noundef %ret, i8* noundef %format, ...) #0 {
entry:
  %ret.addr = alloca i8**, align 8
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  store i8** %ret, i8*** %ret.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8**, i8*** %ret.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %call = call i32 @vasprintf(i8** noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %arraydecay2) #7
  store i32 %call, i32* %len, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i32, i32* %len, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local i32 @vasprintf(i8** noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xoptContext* @xopt_context(i8* noundef %name, %struct.xoptOption* noundef %options, i64 noundef %flags, i8** noundef %err) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %options.addr = alloca %struct.xoptOption*, align 8
  %flags.addr = alloca i64, align 8
  %err.addr = alloca i8**, align 8
  %ctx = alloca %struct.xoptContext*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.xoptOption* %options, %struct.xoptOption** %options.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  store i8** %err, i8*** %err.addr, align 8
  %0 = load i8**, i8*** %err.addr, align 8
  store i8* null, i8** %0, align 8
  %call = call noalias i8* @malloc(i64 noundef 32) #7
  %1 = bitcast i8* %call to %struct.xoptContext*
  store %struct.xoptContext* %1, %struct.xoptContext** %ctx, align 8
  %2 = load %struct.xoptContext*, %struct.xoptContext** %ctx, align 8
  %tobool = icmp ne %struct.xoptContext* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.xoptContext* null, %struct.xoptContext** %ctx, align 8
  %3 = load i8**, i8*** %err.addr, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %5 = load %struct.xoptContext*, %struct.xoptContext** %ctx, align 8
  %options1 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %5, i32 0, i32 0
  store %struct.xoptOption* %4, %struct.xoptOption** %options1, align 8
  %6 = load i64, i64* %flags.addr, align 8
  %7 = load %struct.xoptContext*, %struct.xoptContext** %ctx, align 8
  %flags2 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %7, i32 0, i32 1
  store i64 %6, i64* %flags2, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %9 = load %struct.xoptContext*, %struct.xoptContext** %ctx, align 8
  %name3 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %9, i32 0, i32 2
  store i8* %8, i8** %name3, align 8
  %10 = load %struct.xoptContext*, %struct.xoptContext** %ctx, align 8
  %doubledash = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %10, i32 0, i32 3
  store i8 0, i8* %doubledash, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.xoptContext*, %struct.xoptContext** %ctx, align 8
  ret %struct.xoptContext* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_xopt_set_err(i8** noundef %err, i8* noundef %fmt, ...) #0 {
entry:
  %err.addr = alloca i8**, align 8
  %fmt.addr = alloca i8*, align 8
  %list = alloca [1 x %struct.__va_list_tag], align 16
  store i8** %err, i8*** %err.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %list, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %list, i64 0, i64 0
  %call = call i32 @rpl_vsnprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @errbuf, i64 0, i64 0), i64 noundef 4096, i8* noundef %0, %struct.__va_list_tag* noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %list, i64 0, i64 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i8**, i8*** %err.addr, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @errbuf, i64 0, i64 0), i8** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xopt_parse(%struct.xoptContext* noundef %ctx, i32 noundef %argc, i8** noundef %argv, i8* noundef %data, i8*** noundef %inextras, i8** noundef %err) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.xoptContext*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %inextras.addr = alloca i8***, align 8
  %err.addr = alloca i8**, align 8
  %argi = alloca i32, align 4
  %extrasCount = alloca i32, align 4
  %extrasCapac = alloca i64, align 8
  %extras = alloca i8**, align 8
  %parseResult = alloca i8, align 1
  store %struct.xoptContext* %ctx, %struct.xoptContext** %ctx.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8*** %inextras, i8**** %inextras.addr, align 8
  store i8** %err, i8*** %err.addr, align 8
  %0 = load i8**, i8*** %err.addr, align 8
  store i8* null, i8** %0, align 8
  store i32 0, i32* %argi, align 4
  store i32 0, i32* %extrasCount, align 4
  store i64 10, i64* %extrasCapac, align 8
  %call = call noalias i8* @malloc(i64 noundef 80) #7
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %extras, align 8
  %2 = load i8**, i8*** %extras, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %err.addr, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %3, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %end

if.end:                                           ; preds = %entry
  %4 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %flags = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %4, i32 0, i32 1
  %5 = load i64, i64* %flags, align 8
  %and = and i64 %5, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %argi, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %argi, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %7 = load i32, i32* %argi, align 4
  %8 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %10 = load i32, i32* %argc.addr, align 4
  %11 = load i8**, i8*** %argv.addr, align 8
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i8**, i8*** %err.addr, align 8
  %call4 = call zeroext i1 @_xopt_parse_arg(%struct.xoptContext* noundef %9, i32 noundef %10, i8** noundef %11, i32* noundef %argi, i8* noundef %12, i8** noundef %13)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %parseResult, align 1
  %14 = load i8**, i8*** %err.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %tobool5 = icmp ne i8* %15, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %for.end

if.end7:                                          ; preds = %for.body
  %16 = load i8, i8* %parseResult, align 1
  %tobool8 = trunc i8 %16 to i1
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %17 = load i32, i32* %extrasCount, align 4
  %18 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_assert_increment(i8*** noundef %extras, i32 noundef %17, i64* noundef %extrasCapac, i8** noundef %18)
  %19 = load i8**, i8*** %err.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %tobool10 = icmp ne i8* %20, null
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  br label %for.end

if.end12:                                         ; preds = %if.then9
  %21 = load i8**, i8*** %argv.addr, align 8
  %22 = load i32, i32* %argi, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8
  %24 = load i8**, i8*** %extras, align 8
  %25 = load i32, i32* %extrasCount, align 4
  %inc13 = add nsw i32 %25, 1
  store i32 %inc13, i32* %extrasCount, align 4
  %idxprom14 = sext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds i8*, i8** %24, i64 %idxprom14
  store i8* %23, i8** %arrayidx15, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end7
  %26 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %flags16 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %26, i32 0, i32 1
  %27 = load i64, i64* %flags16, align 8
  %and17 = and i64 %27, 2
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.else
  %28 = load i32, i32* %extrasCount, align 4
  %tobool19 = icmp ne i32 %28, 0
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  %29 = load i8**, i8*** %err.addr, align 8
  %30 = load i8**, i8*** %argv.addr, align 8
  %31 = load i32, i32* %argi, align 4
  %idxprom21 = sext i32 %31 to i64
  %arrayidx22 = getelementptr inbounds i8*, i8** %30, i64 %idxprom21
  %32 = load i8*, i8** %arrayidx22, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %29, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i8* noundef %32)
  br label %for.end

if.end23:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end12
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %33 = load i32, i32* %argi, align 4
  %inc25 = add nsw i32 %33, 1
  store i32 %inc25, i32* %argi, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %if.then20, %if.then11, %if.then6, %for.cond
  br label %end

end:                                              ; preds = %for.end, %if.then
  %34 = load i8**, i8*** %err.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %tobool26 = icmp ne i8* %35, null
  br i1 %tobool26, label %if.end33, label %if.then27

if.then27:                                        ; preds = %end
  %36 = load i32, i32* %extrasCount, align 4
  %37 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_assert_increment(i8*** noundef %extras, i32 noundef %36, i64* noundef %extrasCapac, i8** noundef %37)
  %38 = load i8**, i8*** %err.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %tobool28 = icmp ne i8* %39, null
  br i1 %tobool28, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.then27
  %40 = load i8**, i8*** %extras, align 8
  %41 = load i32, i32* %extrasCount, align 4
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds i8*, i8** %40, i64 %idxprom30
  store i8* null, i8** %arrayidx31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %end
  %42 = load i8**, i8*** %err.addr, align 8
  %43 = load i8*, i8** %42, align 8
  %tobool34 = icmp ne i8* %43, null
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end33
  %44 = load i8**, i8*** %extras, align 8
  %45 = bitcast i8** %44 to i8*
  call void @free(i8* noundef %45) #7
  %46 = load i8***, i8**** %inextras.addr, align 8
  store i8** null, i8*** %46, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end33
  %47 = load i8**, i8*** %extras, align 8
  %48 = load i8***, i8**** %inextras.addr, align 8
  store i8** %47, i8*** %48, align 8
  %49 = load i32, i32* %extrasCount, align 4
  store i32 %49, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then35
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @_xopt_parse_arg(%struct.xoptContext* noundef %ctx, i32 noundef %argc, i8** noundef %argv, i32* noundef %argi, i8* noundef %data, i8** noundef %err) #0 {
entry:
  %retval = alloca i1, align 1
  %ctx.addr = alloca %struct.xoptContext*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argi.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %err.addr = alloca i8**, align 8
  %size = alloca i32, align 4
  %length = alloca i64, align 8
  %isExtra = alloca i8, align 1
  %arg = alloca i8*, align 8
  %option = alloca %struct.xoptOption*, align 8
  %argRequirement = alloca i32, align 4
  %valStart = alloca i8*, align 8
  store %struct.xoptContext* %ctx, %struct.xoptContext** %ctx.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32* %argi, i32** %argi.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8** %err, i8*** %err.addr, align 8
  store i8 0, i8* %isExtra, align 1
  %0 = load i8**, i8*** %argv.addr, align 8
  %1 = load i32*, i32** %argi.addr, align 8
  %2 = load i32, i32* %1, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %arg, align 8
  %4 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %doubledash = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %4, i32 0, i32 3
  %5 = load i8, i8* %doubledash, align 8
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %arg, align 8
  %call = call i32 @_xopt_get_size(i8* noundef %6)
  store i32 %call, i32* %size, align 4
  %7 = load i32, i32* %size, align 4
  %8 = load i8*, i8** %arg, align 8
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %arg, align 8
  %9 = load i8*, i8** %arg, align 8
  %call1 = call i64 @strlen(i8* noundef %9) #8
  store i64 %call1, i64* %length, align 8
  %10 = load i32, i32* %size, align 4
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %11 = load i64, i64* %length, align 8
  %cmp2 = icmp eq i64 %11, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i32, i32* %size, align 4
  %cmp5 = icmp eq i32 %12, 2
  br i1 %cmp5, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %if.end4
  %13 = load i64, i64* %length, align 8
  %cmp7 = icmp eq i64 %13, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true6
  %14 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %doubledash9 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %14, i32 0, i32 3
  store i8 1, i8* %doubledash9, align 8
  store i1 false, i1* %retval, align 1
  br label %return

if.end10:                                         ; preds = %land.lhs.true6, %if.end4
  %15 = load i32, i32* %size, align 4
  switch i32 %15, label %sw.epilog130 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb102
    i32 0, label %sw.bb129
  ]

sw.bb:                                            ; preds = %if.end10
  %16 = load i64, i64* %length, align 8
  %cmp11 = icmp ugt i64 %16, 1
  br i1 %cmp11, label %land.lhs.true12, label %if.else

land.lhs.true12:                                  ; preds = %sw.bb
  %17 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %flags = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %17, i32 0, i32 1
  %18 = load i64, i64* %flags, align 8
  %and = and i64 %18, 4
  %tobool13 = icmp ne i64 %and, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %land.lhs.true12
  %19 = load i8**, i8*** %err.addr, align 8
  %20 = load i8**, i8*** %argv.addr, align 8
  %21 = load i32*, i32** %argi.addr, align 8
  %22 = load i32, i32* %21, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds i8*, i8** %20, i64 %idxprom15
  %23 = load i8*, i8** %arrayidx16, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %19, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8* noundef %23)
  br label %if.end101

if.else:                                          ; preds = %land.lhs.true12, %sw.bb
  %24 = load i64, i64* %length, align 8
  %cmp17 = icmp ugt i64 %24, 1
  br i1 %cmp17, label %land.lhs.true18, label %if.else42

land.lhs.true18:                                  ; preds = %if.else
  %25 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %flags19 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %25, i32 0, i32 1
  %26 = load i64, i64* %flags19, align 8
  %and20 = and i64 %26, 12
  %tobool21 = icmp ne i64 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.else42

if.then22:                                        ; preds = %land.lhs.true18
  %27 = load i8*, i8** %arg, align 8
  %28 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %28, i32 0, i32 0
  %29 = load %struct.xoptOption*, %struct.xoptOption** %options, align 8
  %30 = load i32, i32* %size, align 4
  %call23 = call i32 @_xopt_get_arg(i8* noundef %27, i64 noundef 1, %struct.xoptOption* noundef %29, i32 noundef %30, %struct.xoptOption** noundef %option)
  store i32 %call23, i32* %argRequirement, align 4
  %31 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %tobool24 = icmp ne %struct.xoptOption* %31, null
  br i1 %tobool24, label %if.end32, label %if.then25

if.then25:                                        ; preds = %if.then22
  %32 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %flags26 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %32, i32 0, i32 1
  %33 = load i64, i64* %flags26, align 8
  %and27 = and i64 %33, 16
  %tobool28 = icmp ne i64 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then25
  %34 = load i8**, i8*** %err.addr, align 8
  %35 = load i8*, i8** %arg, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx30, align 1
  %conv = sext i8 %36 to i32
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %34, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then25
  br label %sw.epilog130

if.end32:                                         ; preds = %if.then22
  %37 = load i32, i32* %argRequirement, align 4
  %tobool33 = icmp ne i32 %37, 0
  br i1 %tobool33, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end32
  %38 = load i8**, i8*** %err.addr, align 8
  %39 = load i8*, i8** %arg, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %40 to i32
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %38, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv36)
  br label %sw.epilog130

if.end37:                                         ; preds = %if.end32
  %41 = load i8*, i8** %data.addr, align 8
  %42 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %43 = load i8*, i8** %arg, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_set(i8* noundef %41, %struct.xoptOption* noundef %42, i8* noundef %add.ptr38, i1 noundef zeroext false, i8** noundef %44)
  %45 = load i8**, i8*** %err.addr, align 8
  %46 = load i8*, i8** %45, align 8
  %tobool39 = icmp ne i8* %46, null
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  br label %sw.epilog130

if.end41:                                         ; preds = %if.end37
  br label %if.end100

if.else42:                                        ; preds = %land.lhs.true18, %if.else
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.else42
  %47 = load i64, i64* %length, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %length, align 8
  %tobool43 = icmp ne i64 %47, 0
  br i1 %tobool43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load i8*, i8** %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %arg, align 8
  %49 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options44 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %49, i32 0, i32 0
  %50 = load %struct.xoptOption*, %struct.xoptOption** %options44, align 8
  %51 = load i32, i32* %size, align 4
  %call45 = call i32 @_xopt_get_arg(i8* noundef %48, i64 noundef 1, %struct.xoptOption* noundef %50, i32 noundef %51, %struct.xoptOption** noundef %option)
  store i32 %call45, i32* %argRequirement, align 4
  %52 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %tobool46 = icmp ne %struct.xoptOption* %52, null
  br i1 %tobool46, label %if.end55, label %if.then47

if.then47:                                        ; preds = %while.body
  %53 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %flags48 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %53, i32 0, i32 1
  %54 = load i64, i64* %flags48, align 8
  %and49 = and i64 %54, 16
  %tobool50 = icmp ne i64 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then47
  %55 = load i8**, i8*** %err.addr, align 8
  %56 = load i8*, i8** %arg, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %56, i64 -1
  %57 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %57 to i32
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %55, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv53)
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.then47
  br label %while.end

if.end55:                                         ; preds = %while.body
  %58 = load i32, i32* %argRequirement, align 4
  switch i32 %58, label %sw.epilog [
    i32 0, label %sw.bb56
    i32 1, label %sw.bb57
    i32 2, label %sw.bb72
  ]

sw.bb56:                                          ; preds = %if.end55
  %59 = load i8*, i8** %data.addr, align 8
  %60 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %61 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_set(i8* noundef %59, %struct.xoptOption* noundef %60, i8* noundef null, i1 noundef zeroext false, i8** noundef %61)
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end55
  %62 = load i32*, i32** %argi.addr, align 8
  %63 = load i32, i32* %62, align 4
  %add = add nsw i32 %63, 1
  %64 = load i32, i32* %argc.addr, align 4
  %cmp58 = icmp slt i32 %add, %64
  br i1 %cmp58, label %land.lhs.true60, label %if.else70

land.lhs.true60:                                  ; preds = %sw.bb57
  %65 = load i8**, i8*** %argv.addr, align 8
  %66 = load i32*, i32** %argi.addr, align 8
  %67 = load i32, i32* %66, align 4
  %add61 = add nsw i32 %67, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds i8*, i8** %65, i64 %idxprom62
  %68 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i32 @_xopt_get_size(i8* noundef %68)
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.else70

if.then67:                                        ; preds = %land.lhs.true60
  %69 = load i8*, i8** %data.addr, align 8
  %70 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %71 = load i8**, i8*** %argv.addr, align 8
  %72 = load i32*, i32** %argi.addr, align 8
  %73 = load i32, i32* %72, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %72, align 4
  %idxprom68 = sext i32 %inc to i64
  %arrayidx69 = getelementptr inbounds i8*, i8** %71, i64 %idxprom68
  %74 = load i8*, i8** %arrayidx69, align 8
  %75 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_set(i8* noundef %69, %struct.xoptOption* noundef %70, i8* noundef %74, i1 noundef zeroext false, i8** noundef %75)
  br label %if.end71

if.else70:                                        ; preds = %land.lhs.true60, %sw.bb57
  %76 = load i8*, i8** %data.addr, align 8
  %77 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %78 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_set(i8* noundef %76, %struct.xoptOption* noundef %77, i8* noundef null, i1 noundef zeroext false, i8** noundef %78)
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then67
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end55
  %79 = load i64, i64* %length, align 8
  %cmp73 = icmp eq i64 %79, 0
  br i1 %cmp73, label %if.then75, label %if.else96

if.then75:                                        ; preds = %sw.bb72
  %80 = load i32*, i32** %argi.addr, align 8
  %81 = load i32, i32* %80, align 4
  %add76 = add nsw i32 %81, 1
  %82 = load i32, i32* %argc.addr, align 4
  %cmp77 = icmp slt i32 %add76, %82
  br i1 %cmp77, label %if.then79, label %if.else92

if.then79:                                        ; preds = %if.then75
  %83 = load i8**, i8*** %argv.addr, align 8
  %84 = load i32*, i32** %argi.addr, align 8
  %85 = load i32, i32* %84, align 4
  %add80 = add nsw i32 %85, 1
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds i8*, i8** %83, i64 %idxprom81
  %86 = load i8*, i8** %arrayidx82, align 8
  %call83 = call i32 @_xopt_get_size(i8* noundef %86)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else87

if.then85:                                        ; preds = %if.then79
  %87 = load i8**, i8*** %err.addr, align 8
  %88 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %shortArg = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %88, i32 0, i32 1
  %89 = load i8, i8* %shortArg, align 8
  %conv86 = sext i8 %89 to i32
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %87, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv86)
  br label %if.end91

if.else87:                                        ; preds = %if.then79
  %90 = load i8*, i8** %data.addr, align 8
  %91 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %92 = load i8**, i8*** %argv.addr, align 8
  %93 = load i32*, i32** %argi.addr, align 8
  %94 = load i32, i32* %93, align 4
  %inc88 = add nsw i32 %94, 1
  store i32 %inc88, i32* %93, align 4
  %idxprom89 = sext i32 %inc88 to i64
  %arrayidx90 = getelementptr inbounds i8*, i8** %92, i64 %idxprom89
  %95 = load i8*, i8** %arrayidx90, align 8
  %96 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_set(i8* noundef %90, %struct.xoptOption* noundef %91, i8* noundef %95, i1 noundef zeroext false, i8** noundef %96)
  br label %if.end91

if.end91:                                         ; preds = %if.else87, %if.then85
  br label %if.end95

if.else92:                                        ; preds = %if.then75
  %97 = load i8**, i8*** %err.addr, align 8
  %98 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %shortArg93 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %98, i32 0, i32 1
  %99 = load i8, i8* %shortArg93, align 8
  %conv94 = sext i8 %99 to i32
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %97, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv94)
  br label %if.end95

if.end95:                                         ; preds = %if.else92, %if.end91
  br label %if.end99

if.else96:                                        ; preds = %sw.bb72
  %100 = load i8**, i8*** %err.addr, align 8
  %101 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %shortArg97 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %101, i32 0, i32 1
  %102 = load i8, i8* %shortArg97, align 8
  %conv98 = sext i8 %102 to i32
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %100, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv98)
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.end95
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end55, %if.end99, %if.end71, %sw.bb56
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %if.end54, %while.cond
  br label %if.end100

if.end100:                                        ; preds = %while.end, %if.end41
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then14
  br label %sw.epilog130

sw.bb102:                                         ; preds = %if.end10
  %103 = load i8*, i8** %arg, align 8
  %call103 = call i8* @strchr(i8* noundef %103, i32 noundef 61) #8
  store i8* %call103, i8** %valStart, align 8
  %104 = load i8*, i8** %valStart, align 8
  %tobool104 = icmp ne i8* %104, null
  br i1 %tobool104, label %if.then105, label %if.end110

if.then105:                                       ; preds = %sw.bb102
  %105 = load i8*, i8** %valStart, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr106, i8** %valStart, align 8
  %106 = load i8*, i8** %arg, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %106 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %length, align 8
  %107 = load i8*, i8** %valStart, align 8
  %108 = load i8, i8* %107, align 1
  %tobool107 = icmp ne i8 %108, 0
  br i1 %tobool107, label %if.end109, label %if.then108

if.then108:                                       ; preds = %if.then105
  store i8* null, i8** %valStart, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.then105
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %sw.bb102
  %109 = load i8*, i8** %arg, align 8
  %110 = load i64, i64* %length, align 8
  %111 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options111 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %111, i32 0, i32 0
  %112 = load %struct.xoptOption*, %struct.xoptOption** %options111, align 8
  %113 = load i32, i32* %size, align 4
  %call112 = call i32 @_xopt_get_arg(i8* noundef %109, i64 noundef %110, %struct.xoptOption* noundef %112, i32 noundef %113, %struct.xoptOption** noundef %option)
  store i32 %call112, i32* %argRequirement, align 4
  %114 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %tobool113 = icmp ne %struct.xoptOption* %114, null
  br i1 %tobool113, label %if.else115, label %if.then114

if.then114:                                       ; preds = %if.end110
  %115 = load i8**, i8*** %err.addr, align 8
  %116 = load i64, i64* %length, align 8
  %117 = load i8*, i8** %arg, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %115, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i64 noundef %116, i8* noundef %117)
  br label %if.end128

if.else115:                                       ; preds = %if.end110
  %118 = load i32, i32* %argRequirement, align 4
  switch i32 %118, label %sw.epilog124 [
    i32 0, label %sw.bb116
    i32 2, label %sw.bb120
  ]

sw.bb116:                                         ; preds = %if.else115
  %119 = load i8*, i8** %valStart, align 8
  %tobool117 = icmp ne i8* %119, null
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %sw.bb116
  %120 = load i8**, i8*** %err.addr, align 8
  %121 = load i8*, i8** %arg, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %120, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i8* noundef %121)
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %sw.bb116
  %122 = load i8*, i8** %data.addr, align 8
  %123 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %124 = load i8*, i8** %valStart, align 8
  %125 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_set(i8* noundef %122, %struct.xoptOption* noundef %123, i8* noundef %124, i1 noundef zeroext true, i8** noundef %125)
  br label %sw.epilog124

sw.bb120:                                         ; preds = %if.else115
  %126 = load i8*, i8** %valStart, align 8
  %tobool121 = icmp ne i8* %126, null
  br i1 %tobool121, label %if.end123, label %if.then122

if.then122:                                       ; preds = %sw.bb120
  %127 = load i8**, i8*** %err.addr, align 8
  %128 = load i8*, i8** %arg, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %127, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* noundef %128)
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %sw.bb120
  br label %sw.epilog124

sw.epilog124:                                     ; preds = %if.else115, %if.end123, %if.end119
  %129 = load i8**, i8*** %err.addr, align 8
  %130 = load i8*, i8** %129, align 8
  %tobool125 = icmp ne i8* %130, null
  br i1 %tobool125, label %if.end127, label %if.then126

if.then126:                                       ; preds = %sw.epilog124
  %131 = load i8*, i8** %data.addr, align 8
  %132 = load %struct.xoptOption*, %struct.xoptOption** %option, align 8
  %133 = load i8*, i8** %valStart, align 8
  %134 = load i8**, i8*** %err.addr, align 8
  call void @_xopt_set(i8* noundef %131, %struct.xoptOption* noundef %132, i8* noundef %133, i1 noundef zeroext true, i8** noundef %134)
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %sw.epilog124
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then114
  br label %sw.epilog130

sw.bb129:                                         ; preds = %if.end10
  store i8 1, i8* %isExtra, align 1
  br label %sw.epilog130

sw.epilog130:                                     ; preds = %if.end10, %sw.bb129, %if.end128, %if.end101, %if.then40, %if.then34, %if.end31
  %135 = load i8, i8* %isExtra, align 1
  %tobool131 = trunc i8 %135 to i1
  store i1 %tobool131, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.epilog130, %if.then8, %if.then3, %if.then
  %136 = load i1, i1* %retval, align 1
  ret i1 %136
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_xopt_assert_increment(i8*** noundef %extras, i32 noundef %extrasCount, i64* noundef %extrasCapac, i8** noundef %err) #0 {
entry:
  %extras.addr = alloca i8***, align 8
  %extrasCount.addr = alloca i32, align 4
  %extrasCapac.addr = alloca i64*, align 8
  %err.addr = alloca i8**, align 8
  store i8*** %extras, i8**** %extras.addr, align 8
  store i32 %extrasCount, i32* %extrasCount.addr, align 4
  store i64* %extrasCapac, i64** %extrasCapac.addr, align 8
  store i8** %err, i8*** %err.addr, align 8
  %0 = load i32, i32* %extrasCount.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64*, i64** %extrasCapac.addr, align 8
  %2 = load i64, i64* %1, align 8
  %cmp = icmp eq i64 %conv, %2
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %extrasCapac.addr, align 8
  %4 = load i64, i64* %3, align 8
  %add = add i64 %4, 10
  store i64 %add, i64* %3, align 8
  %5 = load i8***, i8**** %extras.addr, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = bitcast i8** %6 to i8*
  %8 = load i64*, i64** %extrasCapac.addr, align 8
  %9 = load i64, i64* %8, align 8
  %mul = mul i64 8, %9
  %call = call i8* @realloc(i8* noundef %7, i64 noundef %mul) #7
  %10 = bitcast i8* %call to i8**
  %11 = load i8***, i8**** %extras.addr, align 8
  store i8** %10, i8*** %11, align 8
  %12 = load i8***, i8**** %extras.addr, align 8
  %13 = load i8**, i8*** %12, align 8
  %tobool = icmp ne i8** %13, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %14 = load i8**, i8*** %err.addr, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %14, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xopt_autohelp(%struct.xoptContext* noundef %ctx, %struct._IO_FILE* noundef %stream, %struct.xoptAutohelpOptions* noundef %options, i8** noundef %err) #0 {
entry:
  %ctx.addr = alloca %struct.xoptContext*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %options.addr = alloca %struct.xoptAutohelpOptions*, align 8
  %err.addr = alloca i8**, align 8
  %o = alloca %struct.xoptOption*, align 8
  %i = alloca i64, align 8
  %width = alloca i64, align 8
  %twidth = alloca i64, align 8
  %nl = alloca i8*, align 8
  %spacer = alloca i64, align 8
  store %struct.xoptContext* %ctx, %struct.xoptContext** %ctx.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.xoptAutohelpOptions* %options, %struct.xoptAutohelpOptions** %options.addr, align 8
  store i8** %err, i8*** %err.addr, align 8
  store i64 0, i64* %width, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8** %nl, align 8
  %0 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %tobool = icmp ne %struct.xoptAutohelpOptions* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %spacer1 = getelementptr inbounds %struct.xoptAutohelpOptions, %struct.xoptAutohelpOptions* %1, i32 0, i32 3
  %2 = load i64, i64* %spacer1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 2, %cond.false ]
  store i64 %cond, i64* %spacer, align 8
  %3 = load i8**, i8*** %err.addr, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %tobool2 = icmp ne %struct.xoptAutohelpOptions* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %5 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %usage = getelementptr inbounds %struct.xoptAutohelpOptions, %struct.xoptAutohelpOptions* %5, i32 0, i32 0
  %6 = load i8*, i8** %usage, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %8 = load i8*, i8** %nl, align 8
  %9 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %usage4 = getelementptr inbounds %struct.xoptAutohelpOptions, %struct.xoptAutohelpOptions* %9, i32 0, i32 0
  %10 = load i8*, i8** %usage4, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %8, i8* noundef %10)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %nl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %11 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %tobool5 = icmp ne %struct.xoptAutohelpOptions* %11, null
  br i1 %tobool5, label %land.lhs.true6, label %if.end11

land.lhs.true6:                                   ; preds = %if.end
  %12 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %prefix = getelementptr inbounds %struct.xoptAutohelpOptions, %struct.xoptAutohelpOptions* %12, i32 0, i32 1
  %13 = load i8*, i8** %prefix, align 8
  %tobool7 = icmp ne i8* %13, null
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %land.lhs.true6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %15 = load i8*, i8** %nl, align 8
  %16 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %prefix9 = getelementptr inbounds %struct.xoptAutohelpOptions, %struct.xoptAutohelpOptions* %16, i32 0, i32 1
  %17 = load i8*, i8** %prefix9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef %15, i8* noundef %17)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %nl, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true6, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %18 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options12 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %18, i32 0, i32 0
  %19 = load %struct.xoptOption*, %struct.xoptOption** %options12, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %19, i64 %20
  %longArg = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx, i32 0, i32 0
  %21 = load i8*, i8** %longArg, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %22 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options14 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %22, i32 0, i32 0
  %23 = load %struct.xoptOption*, %struct.xoptOption** %options14, align 8
  %24 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %23, i64 %24
  %shortArg = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx15, i32 0, i32 1
  %25 = load i8, i8* %shortArg, align 8
  %conv = sext i8 %25 to i32
  %tobool16 = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %26 = phi i1 [ true, %for.cond ], [ %tobool16, %lor.rhs ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %27 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options17 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %27, i32 0, i32 0
  %28 = load %struct.xoptOption*, %struct.xoptOption** %options17, align 8
  %29 = load i64, i64* %i, align 8
  %arrayidx18 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %28, i64 %29
  store %struct.xoptOption* %arrayidx18, %struct.xoptOption** %o, align 8
  store i64 0, i64* %twidth, align 8
  %30 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %longArg19 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %30, i32 0, i32 0
  %31 = load i8*, i8** %longArg19, align 8
  %tobool20 = icmp ne i8* %31, null
  br i1 %tobool20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %for.body
  %32 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %longArg22 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %32, i32 0, i32 0
  %33 = load i8*, i8** %longArg22, align 8
  %call23 = call i64 @strlen(i8* noundef %33) #8
  %add = add i64 2, %call23
  %34 = load i64, i64* %twidth, align 8
  %add24 = add i64 %34, %add
  store i64 %add24, i64* %twidth, align 8
  %35 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %argDescrip = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %35, i32 0, i32 5
  %36 = load i8*, i8** %argDescrip, align 8
  %tobool25 = icmp ne i8* %36, null
  br i1 %tobool25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.then21
  %37 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %argDescrip27 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %37, i32 0, i32 5
  %38 = load i8*, i8** %argDescrip27, align 8
  %call28 = call i64 @strlen(i8* noundef %38) #8
  %add29 = add i64 1, %call28
  %39 = load i64, i64* %twidth, align 8
  %add30 = add i64 %39, %add29
  store i64 %add30, i64* %twidth, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then21
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %for.body
  %40 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options33 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %40, i32 0, i32 0
  %41 = load %struct.xoptOption*, %struct.xoptOption** %options33, align 8
  %42 = load i64, i64* %i, align 8
  %arrayidx34 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %41, i64 %42
  %shortArg35 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx34, i32 0, i32 1
  %43 = load i8, i8* %shortArg35, align 8
  %tobool36 = icmp ne i8 %43, 0
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end32
  %44 = load i64, i64* %twidth, align 8
  %add38 = add i64 %44, 2
  store i64 %add38, i64* %twidth, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end32
  %45 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options40 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %45, i32 0, i32 0
  %46 = load %struct.xoptOption*, %struct.xoptOption** %options40, align 8
  %47 = load i64, i64* %i, align 8
  %arrayidx41 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %46, i64 %47
  %shortArg42 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx41, i32 0, i32 1
  %48 = load i8, i8* %shortArg42, align 8
  %conv43 = sext i8 %48 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %land.lhs.true45, label %if.end52

land.lhs.true45:                                  ; preds = %if.end39
  %49 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options46 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %49, i32 0, i32 0
  %50 = load %struct.xoptOption*, %struct.xoptOption** %options46, align 8
  %51 = load i64, i64* %i, align 8
  %arrayidx47 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %50, i64 %51
  %longArg48 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx47, i32 0, i32 0
  %52 = load i8*, i8** %longArg48, align 8
  %tobool49 = icmp ne i8* %52, null
  br i1 %tobool49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %land.lhs.true45
  %53 = load i64, i64* %twidth, align 8
  %add51 = add i64 %53, 2
  store i64 %add51, i64* %twidth, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %land.lhs.true45, %if.end39
  %54 = load i64, i64* %width, align 8
  %55 = load i64, i64* %twidth, align 8
  %cmp = icmp ugt i64 %54, %55
  br i1 %cmp, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %if.end52
  %56 = load i64, i64* %width, align 8
  br label %cond.end56

cond.false55:                                     ; preds = %if.end52
  %57 = load i64, i64* %twidth, align 8
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i64 [ %56, %cond.true54 ], [ %57, %cond.false55 ]
  store i64 %cond57, i64* %width, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end56
  %58 = load i64, i64* %i, align 8
  %inc = add i64 %58, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %lor.end
  store i64 0, i64* %i, align 8
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc125, %for.end
  %59 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options59 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %59, i32 0, i32 0
  %60 = load %struct.xoptOption*, %struct.xoptOption** %options59, align 8
  %61 = load i64, i64* %i, align 8
  %arrayidx60 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %60, i64 %61
  %longArg61 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx60, i32 0, i32 0
  %62 = load i8*, i8** %longArg61, align 8
  %tobool62 = icmp ne i8* %62, null
  br i1 %tobool62, label %lor.end69, label %lor.rhs63

lor.rhs63:                                        ; preds = %for.cond58
  %63 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options64 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %63, i32 0, i32 0
  %64 = load %struct.xoptOption*, %struct.xoptOption** %options64, align 8
  %65 = load i64, i64* %i, align 8
  %arrayidx65 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %64, i64 %65
  %shortArg66 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx65, i32 0, i32 1
  %66 = load i8, i8* %shortArg66, align 8
  %conv67 = sext i8 %66 to i32
  %tobool68 = icmp ne i32 %conv67, 0
  br label %lor.end69

lor.end69:                                        ; preds = %lor.rhs63, %for.cond58
  %67 = phi i1 [ true, %for.cond58 ], [ %tobool68, %lor.rhs63 ]
  br i1 %67, label %for.body70, label %for.end127

for.body70:                                       ; preds = %lor.end69
  %68 = load %struct.xoptContext*, %struct.xoptContext** %ctx.addr, align 8
  %options71 = getelementptr inbounds %struct.xoptContext, %struct.xoptContext* %68, i32 0, i32 0
  %69 = load %struct.xoptOption*, %struct.xoptOption** %options71, align 8
  %70 = load i64, i64* %i, align 8
  %arrayidx72 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %69, i64 %70
  store %struct.xoptOption* %arrayidx72, %struct.xoptOption** %o, align 8
  store i64 0, i64* %twidth, align 8
  %71 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %shortArg73 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %71, i32 0, i32 1
  %72 = load i8, i8* %shortArg73, align 8
  %tobool74 = icmp ne i8 %72, 0
  br i1 %tobool74, label %if.then75, label %if.end80

if.then75:                                        ; preds = %for.body70
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %74 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %shortArg76 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %74, i32 0, i32 1
  %75 = load i8, i8* %shortArg76, align 8
  %conv77 = sext i8 %75 to i32
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv77)
  %76 = load i64, i64* %twidth, align 8
  %add79 = add i64 %76, 2
  store i64 %add79, i64* %twidth, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %for.body70
  %77 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %shortArg81 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %77, i32 0, i32 1
  %78 = load i8, i8* %shortArg81, align 8
  %conv82 = sext i8 %78 to i32
  %tobool83 = icmp ne i32 %conv82, 0
  br i1 %tobool83, label %land.lhs.true84, label %if.end90

land.lhs.true84:                                  ; preds = %if.end80
  %79 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %longArg85 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %79, i32 0, i32 0
  %80 = load i8*, i8** %longArg85, align 8
  %tobool86 = icmp ne i8* %80, null
  br i1 %tobool86, label %if.then87, label %if.end90

if.then87:                                        ; preds = %land.lhs.true84
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %82 = load i64, i64* %twidth, align 8
  %add89 = add i64 %82, 2
  store i64 %add89, i64* %twidth, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %land.lhs.true84, %if.end80
  %83 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %longArg91 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %83, i32 0, i32 0
  %84 = load i8*, i8** %longArg91, align 8
  %tobool92 = icmp ne i8* %84, null
  br i1 %tobool92, label %if.then93, label %if.end110

if.then93:                                        ; preds = %if.end90
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %86 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %longArg94 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %86, i32 0, i32 0
  %87 = load i8*, i8** %longArg94, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef %87)
  %88 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %longArg96 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %88, i32 0, i32 0
  %89 = load i8*, i8** %longArg96, align 8
  %call97 = call i64 @strlen(i8* noundef %89) #8
  %add98 = add i64 2, %call97
  %90 = load i64, i64* %twidth, align 8
  %add99 = add i64 %90, %add98
  store i64 %add99, i64* %twidth, align 8
  %91 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %argDescrip100 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %91, i32 0, i32 5
  %92 = load i8*, i8** %argDescrip100, align 8
  %tobool101 = icmp ne i8* %92, null
  br i1 %tobool101, label %if.then102, label %if.end109

if.then102:                                       ; preds = %if.then93
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %94 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %argDescrip103 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %94, i32 0, i32 5
  %95 = load i8*, i8** %argDescrip103, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef %95)
  %96 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %argDescrip105 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %96, i32 0, i32 5
  %97 = load i8*, i8** %argDescrip105, align 8
  %call106 = call i64 @strlen(i8* noundef %97) #8
  %add107 = add i64 1, %call106
  %98 = load i64, i64* %twidth, align 8
  %add108 = add i64 %98, %add107
  store i64 %add108, i64* %twidth, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.then93
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end90
  %99 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %descrip = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %99, i32 0, i32 6
  %100 = load i8*, i8** %descrip, align 8
  %tobool111 = icmp ne i8* %100, null
  br i1 %tobool111, label %if.then112, label %if.end124

if.then112:                                       ; preds = %if.end110
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc119, %if.then112
  %101 = load i64, i64* %twidth, align 8
  %102 = load i64, i64* %width, align 8
  %103 = load i64, i64* %spacer, align 8
  %add114 = add i64 %102, %103
  %cmp115 = icmp ult i64 %101, %add114
  br i1 %cmp115, label %for.body117, label %for.end121

for.body117:                                      ; preds = %for.cond113
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %for.inc119

for.inc119:                                       ; preds = %for.body117
  %105 = load i64, i64* %twidth, align 8
  %inc120 = add i64 %105, 1
  store i64 %inc120, i64* %twidth, align 8
  br label %for.cond113, !llvm.loop !32

for.end121:                                       ; preds = %for.cond113
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %107 = load %struct.xoptOption*, %struct.xoptOption** %o, align 8
  %descrip122 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %107, i32 0, i32 6
  %108 = load i8*, i8** %descrip122, align 8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef %108)
  br label %if.end124

if.end124:                                        ; preds = %for.end121, %if.end110
  br label %for.inc125

for.inc125:                                       ; preds = %if.end124
  %109 = load i64, i64* %i, align 8
  %inc126 = add i64 %109, 1
  store i64 %inc126, i64* %i, align 8
  br label %for.cond58, !llvm.loop !33

for.end127:                                       ; preds = %lor.end69
  %110 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %tobool128 = icmp ne %struct.xoptAutohelpOptions* %110, null
  br i1 %tobool128, label %land.lhs.true129, label %if.end134

land.lhs.true129:                                 ; preds = %for.end127
  %111 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %suffix = getelementptr inbounds %struct.xoptAutohelpOptions, %struct.xoptAutohelpOptions* %111, i32 0, i32 2
  %112 = load i8*, i8** %suffix, align 8
  %tobool130 = icmp ne i8* %112, null
  br i1 %tobool130, label %if.then131, label %if.end134

if.then131:                                       ; preds = %land.lhs.true129
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %114 = load i8*, i8** %nl, align 8
  %115 = load %struct.xoptAutohelpOptions*, %struct.xoptAutohelpOptions** %options.addr, align 8
  %suffix132 = getelementptr inbounds %struct.xoptAutohelpOptions, %struct.xoptAutohelpOptions* %115, i32 0, i32 2
  %116 = load i8*, i8** %suffix132, align 8
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %114, i8* noundef %116)
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %land.lhs.true129, %for.end127
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_xopt_get_size(i8* noundef %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %size, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i32, i32* %size, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 45
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %size, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %size, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, i32* %size, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_xopt_get_arg(i8* noundef %arg, i64 noundef %len, %struct.xoptOption* noundef %options, i32 noundef %size, %struct.xoptOption** noundef %option) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %options.addr = alloca %struct.xoptOption*, align 8
  %size.addr = alloca i32, align 4
  %option.addr = alloca %struct.xoptOption**, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.xoptOption* %options, %struct.xoptOption** %options.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.xoptOption** %option, %struct.xoptOption*** %option.addr, align 8
  %0 = load %struct.xoptOption**, %struct.xoptOption*** %option.addr, align 8
  store %struct.xoptOption* null, %struct.xoptOption** %0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %arrayidx = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %1, i64 0
  %longArg = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %longArg, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %3 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %3, i64 0
  %shortArg = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx1, i32 0, i32 1
  %4 = load i8, i8* %shortArg, align 8
  %conv = sext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %5 = phi i1 [ true, %for.cond ], [ %tobool2, %lor.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %6 = load i32, i32* %size.addr, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %7, i64 0
  %shortArg5 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx4, i32 0, i32 1
  %8 = load i8, i8* %shortArg5, align 8
  %conv6 = sext i8 %8 to i32
  %9 = load i8*, i8** %arg.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %12 = load %struct.xoptOption**, %struct.xoptOption*** %option.addr, align 8
  store %struct.xoptOption* %11, %struct.xoptOption** %12, align 8
  br label %for.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %13 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %13, i64 0
  %longArg12 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx11, i32 0, i32 0
  %14 = load i8*, i8** %longArg12, align 8
  %call = call i64 @strlen(i8* noundef %14) #8
  %15 = load i64, i64* %len.addr, align 8
  %cmp13 = icmp eq i64 %call, %15
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %if.else
  %16 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %16, i64 0
  %longArg17 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %arrayidx16, i32 0, i32 0
  %17 = load i8*, i8** %longArg17, align 8
  %18 = load i8*, i8** %arg.addr, align 8
  %19 = load i64, i64* %len.addr, align 8
  %call18 = call i32 @strncmp(i8* noundef %17, i8* noundef %18, i64 noundef %19) #8
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end, label %if.then20

if.then20:                                        ; preds = %land.lhs.true15
  %20 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %21 = load %struct.xoptOption**, %struct.xoptOption*** %option.addr, align 8
  store %struct.xoptOption* %20, %struct.xoptOption** %21, align 8
  br label %for.end

if.end:                                           ; preds = %land.lhs.true15, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %22 = load %struct.xoptOption*, %struct.xoptOption** %options.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %22, i32 1
  store %struct.xoptOption* %incdec.ptr, %struct.xoptOption** %options.addr, align 8
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %if.then20, %if.then, %lor.end
  %23 = load %struct.xoptOption**, %struct.xoptOption*** %option.addr, align 8
  %24 = load %struct.xoptOption*, %struct.xoptOption** %23, align 8
  %tobool22 = icmp ne %struct.xoptOption* %24, null
  br i1 %tobool22, label %lor.lhs.false, label %if.then25

lor.lhs.false:                                    ; preds = %for.end
  %25 = load %struct.xoptOption**, %struct.xoptOption*** %option.addr, align 8
  %26 = load %struct.xoptOption*, %struct.xoptOption** %25, align 8
  %options23 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %26, i32 0, i32 4
  %27 = load i64, i64* %options23, align 8
  %and = and i64 %27, 32
  %tobool24 = icmp ne i64 %and, 0
  br i1 %tobool24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %lor.lhs.false, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.else26:                                        ; preds = %lor.lhs.false
  %28 = load %struct.xoptOption**, %struct.xoptOption*** %option.addr, align 8
  %29 = load %struct.xoptOption*, %struct.xoptOption** %28, align 8
  %options27 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %29, i32 0, i32 4
  %30 = load i64, i64* %options27, align 8
  %and28 = and i64 %30, 64
  %tobool29 = icmp ne i64 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else26
  store i32 1, i32* %retval, align 4
  br label %return

if.else31:                                        ; preds = %if.else26
  store i32 2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else31, %if.then30, %if.then25
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_xopt_set(i8* noundef %data, %struct.xoptOption* noundef %option, i8* noundef %val, i1 noundef zeroext %longArg, i8** noundef %err) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %option.addr = alloca %struct.xoptOption*, align 8
  %val.addr = alloca i8*, align 8
  %longArg.addr = alloca i8, align 1
  %err.addr = alloca i8**, align 8
  %callback = alloca void (i8*, i8*, %struct.xoptOption*, i1, i8**)*, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct.xoptOption* %option, %struct.xoptOption** %option.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %frombool = zext i1 %longArg to i8
  store i8 %frombool, i8* %longArg.addr, align 1
  store i8** %err, i8*** %err.addr, align 8
  %0 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %callback1 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %0, i32 0, i32 3
  %1 = load void (i8*, i8*, %struct.xoptOption*, i1, i8**)*, void (i8*, i8*, %struct.xoptOption*, i1, i8**)** %callback1, align 8
  %tobool = icmp ne void (i8*, i8*, %struct.xoptOption*, i1, i8**)* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %callback2 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %2, i32 0, i32 3
  %3 = load void (i8*, i8*, %struct.xoptOption*, i1, i8**)*, void (i8*, i8*, %struct.xoptOption*, i1, i8**)** %callback2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi void (i8*, i8*, %struct.xoptOption*, i1, i8**)* [ %3, %cond.true ], [ @_xopt_default_callback, %cond.false ]
  store void (i8*, i8*, %struct.xoptOption*, i1, i8**)* %cond, void (i8*, i8*, %struct.xoptOption*, i1, i8**)** %callback, align 8
  %4 = load void (i8*, i8*, %struct.xoptOption*, i1, i8**)*, void (i8*, i8*, %struct.xoptOption*, i1, i8**)** %callback, align 8
  %5 = load i8*, i8** %val.addr, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %8 = load i8, i8* %longArg.addr, align 1
  %tobool3 = trunc i8 %8 to i1
  %9 = load i8**, i8*** %err.addr, align 8
  call void %4(i8* noundef %5, i8* noundef %6, %struct.xoptOption* noundef %7, i1 noundef zeroext %tobool3, i8** noundef %9)
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #5

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_xopt_default_callback(i8* noundef %value, i8* noundef %data, %struct.xoptOption* noundef %option, i1 noundef zeroext %longArg, i8** noundef %err) #0 {
entry:
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %option.addr = alloca %struct.xoptOption*, align 8
  %longArg.addr = alloca i8, align 1
  %err.addr = alloca i8**, align 8
  %target = alloca i8*, align 8
  %parsePtr = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct.xoptOption* %option, %struct.xoptOption** %option.addr, align 8
  %frombool = zext i1 %longArg to i8
  store i8 %frombool, i8* %longArg.addr, align 1
  store i8** %err, i8*** %err.addr, align 8
  store i8* null, i8** %parsePtr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %call = call i64 @strlen(i8* noundef %1) #8
  %tobool1 = icmp ne i64 %call, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %options = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %2, i32 0, i32 4
  %3 = load i64, i64* %options, align 8
  %and = and i64 %3, 32
  %tobool2 = icmp ne i64 %and, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %if.end28

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %offset = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %5, i32 0, i32 2
  %6 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %add.ptr, i8** %target, align 8
  %7 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %options3 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %7, i32 0, i32 4
  %8 = load i64, i64* %options3, align 8
  %and4 = and i64 %8, 63
  switch i64 %and4, label %sw.default [
    i64 32, label %sw.bb
    i64 1, label %sw.bb5
    i64 2, label %sw.bb6
    i64 4, label %sw.bb8
    i64 8, label %sw.bb10
    i64 16, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load i8*, i8** %target, align 8
  store i8 1, i8* %9, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %10 = load i8*, i8** %value.addr, align 8
  %11 = load i8*, i8** %target, align 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %13 = load i8*, i8** %value.addr, align 8
  %call7 = call i64 @__isoc23_strtol(i8* noundef %13, i8** noundef %parsePtr, i32 noundef 0) #7
  %conv = trunc i64 %call7 to i32
  %14 = load i8*, i8** %target, align 8
  %15 = bitcast i8* %14 to i32*
  store i32 %conv, i32* %15, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %16 = load i8*, i8** %value.addr, align 8
  %call9 = call i64 @__isoc23_strtol(i8* noundef %16, i8** noundef %parsePtr, i32 noundef 0) #7
  %17 = load i8*, i8** %target, align 8
  %18 = bitcast i8* %17 to i64*
  store i64 %call9, i64* %18, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %19 = load i8*, i8** %value.addr, align 8
  %call11 = call double @strtod(i8* noundef %19, i8** noundef %parsePtr) #7
  %conv12 = fptrunc double %call11 to float
  %20 = load i8*, i8** %target, align 8
  %21 = bitcast i8* %20 to float*
  store float %conv12, float* %21, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %22 = load i8*, i8** %value.addr, align 8
  %call14 = call double @strtod(i8* noundef %22, i8** noundef %parsePtr) #7
  %23 = load i8*, i8** %target, align 8
  %24 = bitcast i8* %23 to double*
  store double %call14, double* %24, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %options15 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %26, i32 0, i32 4
  %27 = load i64, i64* %options15, align 8
  %and16 = and i64 %27, 47
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0), i64 noundef %and16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb
  %28 = load i8*, i8** %parsePtr, align 8
  %tobool18 = icmp ne i8* %28, null
  br i1 %tobool18, label %land.lhs.true19, label %if.end28

land.lhs.true19:                                  ; preds = %sw.epilog
  %29 = load i8*, i8** %parsePtr, align 8
  %30 = load i8, i8* %29, align 1
  %conv20 = sext i8 %30 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end28

if.then22:                                        ; preds = %land.lhs.true19
  %31 = load i8, i8* %longArg.addr, align 1
  %tobool23 = trunc i8 %31 to i1
  br i1 %tobool23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then22
  %32 = load i8**, i8*** %err.addr, align 8
  %33 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %longArg25 = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %33, i32 0, i32 0
  %34 = load i8*, i8** %longArg25, align 8
  %35 = load i8*, i8** %value.addr, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %32, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0), i8* noundef %34, i8* noundef %35)
  br label %if.end27

if.else:                                          ; preds = %if.then22
  %36 = load i8**, i8*** %err.addr, align 8
  %37 = load %struct.xoptOption*, %struct.xoptOption** %option.addr, align 8
  %shortArg = getelementptr inbounds %struct.xoptOption, %struct.xoptOption* %37, i32 0, i32 1
  %38 = load i8, i8* %shortArg, align 8
  %conv26 = sext i8 %38 to i32
  %39 = load i8*, i8** %value.addr, align 8
  call void (i8**, i8*, ...) @_xopt_set_err(i8** noundef %36, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv26, i8* noundef %39)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then24
  br label %if.end28

if.end28:                                         ; preds = %if.then, %if.end27, %land.lhs.true19, %sw.epilog
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @__isoc23_strtol(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
