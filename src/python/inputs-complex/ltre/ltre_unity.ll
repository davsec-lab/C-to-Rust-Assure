; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/ltre/ltre_unity.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/ltre/ltre_unity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstate = type { [32 x i8], %struct.nstate*, %struct.nstate*, %struct.nstate*, %struct.nstate*, i32 }
%struct.nfa = type { %struct.nstate*, %struct.nstate*, i8 }
%struct.dstate = type { [256 x %struct.dstate*], i8, i8, i32, %struct.dstate*, [0 x i8] }
%struct.arrow = type { i8*, i32 }

@symset_fmt.buf = internal global [1024 x i8] zeroinitializer, align 16
@symset_fmt.nbuf = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"\\.-^$*+?{}[]<>()|&~\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\\x%02hhx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"graph LR\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"  I( ) --> %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"  %d --> F( )\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"  %d --> %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"  %d --\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\\\22#&{}()xo=- \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"#%hhu;\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"--> %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"expected natural number\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"natural number overflow\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"expected hex digit\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"unknown escape\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"expected symbol\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"unexpected metacharacter\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"unexpected nonprintable character\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"expected shorthand class\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"expected ']'\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"expected '>'\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"expected ')'\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"expected '}'\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"misbounded quantifier\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c")|&\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"expected end of input\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"^-\\\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"[]\00", align 1

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
define internal zeroext i1 @bitset_get(i8* noundef %bitset, i32 noundef %id) #0 {
entry:
  %bitset.addr = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  store i8* %bitset, i8** %bitset.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load i8*, i8** %bitset.addr, align 8
  %1 = load i32, i32* %id.addr, align 4
  %div = udiv i32 %1, 8
  %idxprom = zext i32 %div to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %id.addr, align 4
  %rem = urem i32 %3, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv, %shl
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitset_set(i8* noundef %bitset, i32 noundef %id) #0 {
entry:
  %bitset.addr = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  store i8* %bitset, i8** %bitset.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load i32, i32* %id.addr, align 4
  %rem = urem i32 %0, 8
  %shl = shl i32 1, %rem
  %1 = load i8*, i8** %bitset.addr, align 8
  %2 = load i32, i32* %id.addr, align 4
  %div = udiv i32 %2, 8
  %idxprom = zext i32 %div to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %or = or i32 %conv, %shl
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @symset_fmt(i8* noundef %symset) #0 {
entry:
  %retval = alloca i8*, align 8
  %symset.addr = alloca i8*, align 8
  %bufp = alloca i8*, align 8
  %nbufp = alloca i8*, align 8
  %nsym = alloca i32, align 4
  %nnsym = alloca i32, align 4
  %chr = alloca i32, align 4
  %p = alloca i8**, align 8
  %is_metachar = alloca i8, align 1
  %start = alloca i32, align 4
  store i8* %symset, i8** %symset.addr, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @symset_fmt.buf, i64 0, i64 0), i8** %bufp, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @symset_fmt.nbuf, i64 0, i64 0), i8** %nbufp, align 8
  store i32 0, i32* %nsym, align 4
  store i32 0, i32* %nnsym, align 4
  %0 = load i8*, i8** %nbufp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %nbufp, align 8
  store i8 94, i8* %0, align 1
  %1 = load i8*, i8** %nbufp, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr1, i8** %nbufp, align 8
  store i8 91, i8* %1, align 1
  %2 = load i8*, i8** %bufp, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr2, i8** %bufp, align 8
  store i8 91, i8* %2, align 1
  store i32 0, i32* %chr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %chr, align 4
  %cmp = icmp slt i32 %3, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %append_chr

append_chr:                                       ; preds = %if.then47, %for.body
  %4 = load i8*, i8** %symset.addr, align 8
  %5 = load i32, i32* %chr, align 4
  %call = call zeroext i1 @bitset_get(i8* noundef %4, i32 noundef %5)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %append_chr
  %6 = load i32, i32* %nsym, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nsym, align 4
  br label %cond.end

cond.false:                                       ; preds = %append_chr
  %7 = load i32, i32* %nnsym, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %nnsym, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  %8 = load i8*, i8** %symset.addr, align 8
  %9 = load i32, i32* %chr, align 4
  %call4 = call zeroext i1 @bitset_get(i8* noundef %8, i32 noundef %9)
  br i1 %call4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i8** [ %bufp, %cond.true5 ], [ %nbufp, %cond.false6 ]
  store i8** %cond8, i8*** %p, align 8
  %10 = load i32, i32* %chr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end7
  %11 = load i32, i32* %chr, align 4
  %call9 = call i8* @strchr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %11) #9
  %tobool10 = icmp ne i8* %call9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end7
  %12 = phi i1 [ false, %cond.end7 ], [ %tobool10, %land.rhs ]
  %frombool = zext i1 %12 to i8
  store i8 %frombool, i8* %is_metachar, align 1
  %call11 = call i16** @__ctype_b_loc() #10
  %13 = load i16*, i16** %call11, align 8
  %14 = load i32, i32* %chr, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 16384
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %16 = load i8, i8* %is_metachar, align 1
  %tobool13 = trunc i8 %16 to i1
  br i1 %tobool13, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %17 = load i8**, i8*** %p, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %chr, align 4
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %18, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %19) #11
  %20 = load i8**, i8*** %p, align 8
  %21 = load i8*, i8** %20, align 8
  %idx.ext = sext i32 %call14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %20, align 8
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true, %land.end
  %22 = load i8, i8* %is_metachar, align 1
  %tobool15 = trunc i8 %22 to i1
  br i1 %tobool15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.else
  %23 = load i8**, i8*** %p, align 8
  %24 = load i8*, i8** %23, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr17, i8** %23, align 8
  store i8 92, i8* %24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.else
  %25 = load i32, i32* %chr, align 4
  %conv18 = trunc i32 %25 to i8
  %26 = load i8**, i8*** %p, align 8
  %27 = load i8*, i8** %26, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr19, i8** %26, align 8
  store i8 %conv18, i8* %27, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  %28 = load i32, i32* %chr, align 4
  store i32 %28, i32* %start, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end20
  %29 = load i32, i32* %chr, align 4
  %cmp21 = icmp slt i32 %29, 255
  br i1 %cmp21, label %land.rhs23, label %land.end30

land.rhs23:                                       ; preds = %while.cond
  %30 = load i8*, i8** %symset.addr, align 8
  %31 = load i32, i32* %chr, align 4
  %call24 = call zeroext i1 @bitset_get(i8* noundef %30, i32 noundef %31)
  %conv25 = zext i1 %call24 to i32
  %32 = load i8*, i8** %symset.addr, align 8
  %33 = load i32, i32* %chr, align 4
  %add = add nsw i32 %33, 1
  %call26 = call zeroext i1 @bitset_get(i8* noundef %32, i32 noundef %add)
  %conv27 = zext i1 %call26 to i32
  %cmp28 = icmp eq i32 %conv25, %conv27
  br label %land.end30

land.end30:                                       ; preds = %land.rhs23, %while.cond
  %34 = phi i1 [ false, %while.cond ], [ %cmp28, %land.rhs23 ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end30
  %35 = load i32, i32* %chr, align 4
  %inc31 = add nsw i32 %35, 1
  store i32 %inc31, i32* %chr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end30
  %36 = load i32, i32* %chr, align 4
  %37 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %36, %37
  %cmp32 = icmp sge i32 %sub, 2
  br i1 %cmp32, label %if.then34, label %if.end43

if.then34:                                        ; preds = %while.end
  %38 = load i8**, i8*** %p, align 8
  %39 = load i8*, i8** %38, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr35, i8** %38, align 8
  store i8 45, i8* %39, align 1
  %40 = load i8*, i8** %symset.addr, align 8
  %41 = load i32, i32* %chr, align 4
  %call36 = call zeroext i1 @bitset_get(i8* noundef %40, i32 noundef %41)
  br i1 %call36, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %if.then34
  %42 = load i32, i32* %nsym, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %nsym, align 4
  br label %cond.end41

cond.false39:                                     ; preds = %if.then34
  %43 = load i32, i32* %nnsym, align 4
  %dec40 = add nsw i32 %43, -1
  store i32 %dec40, i32* %nnsym, align 4
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false39, %cond.true38
  %cond42 = phi i32 [ %42, %cond.true38 ], [ %43, %cond.false39 ]
  br label %if.end43

if.end43:                                         ; preds = %cond.end41, %while.end
  %44 = load i32, i32* %chr, align 4
  %45 = load i32, i32* %start, align 4
  %sub44 = sub nsw i32 %44, %45
  %cmp45 = icmp sge i32 %sub44, 1
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  br label %append_chr

if.end48:                                         ; preds = %if.end43
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %46 = load i32, i32* %chr, align 4
  %inc49 = add nsw i32 %46, 1
  store i32 %inc49, i32* %chr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %47 = load i8*, i8** %nbufp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr50, i8** %nbufp, align 8
  store i8 93, i8* %47, align 1
  %48 = load i8*, i8** %bufp, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr51, i8** %bufp, align 8
  store i8 93, i8* %48, align 1
  %49 = load i8*, i8** %nbufp, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr52, i8** %nbufp, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %bufp, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr53, i8** %bufp, align 8
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* %nnsym, align 4
  %cmp54 = icmp eq i32 %51, 0
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.else57:                                        ; preds = %for.end
  %52 = load i32, i32* %nsym, align 4
  %cmp58 = icmp eq i32 %52, 1
  br i1 %cmp58, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.else57
  %53 = load i8*, i8** %bufp, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %53, i64 -2
  store i8 0, i8* %arrayidx61, align 1
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @symset_fmt.buf, i64 0, i64 1), i8** %retval, align 8
  br label %return

if.else62:                                        ; preds = %if.else57
  %54 = load i32, i32* %nnsym, align 4
  %cmp63 = icmp eq i32 %54, 1
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.else62
  %55 = load i8*, i8** %nbufp, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %55, i64 -2
  store i8 0, i8* %arrayidx66, align 1
  store i8 94, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @symset_fmt.nbuf, i64 0, i64 1), align 1
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @symset_fmt.nbuf, i64 0, i64 1), i8** %retval, align 8
  br label %return

if.end67:                                         ; preds = %if.else62
  br label %if.end68

if.end68:                                         ; preds = %if.end67
  br label %if.end69

if.end69:                                         ; preds = %if.end68
  %56 = load i8*, i8** %bufp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %56 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([1024 x i8]* @symset_fmt.buf to i64)
  %57 = load i8*, i8** %nbufp, align 8
  %sub.ptr.lhs.cast70 = ptrtoint i8* %57 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast70, ptrtoint ([1024 x i8]* @symset_fmt.nbuf to i64)
  %cmp72 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub71
  %58 = zext i1 %cmp72 to i64
  %cond74 = select i1 %cmp72, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @symset_fmt.buf, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @symset_fmt.nbuf, i64 0, i64 0)
  store i8* %cond74, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end69, %if.then65, %if.then60, %if.then56
  %59 = load i8*, i8** %retval, align 8
  ret i8* %59
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nstate* @nstate_alloc() #0 {
entry:
  %nstate = alloca %struct.nstate*, align 8
  %.compoundliteral = alloca %struct.nstate, align 8
  %call = call noalias i8* @malloc(i64 noundef 72) #11
  %0 = bitcast i8* %call to %struct.nstate*
  store %struct.nstate* %0, %struct.nstate** %nstate, align 8
  %1 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %2 = bitcast %struct.nstate* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 72, i1 false)
  %id = getelementptr inbounds %struct.nstate, %struct.nstate* %.compoundliteral, i32 0, i32 5
  store i32 -1, i32* %id, align 8
  %3 = bitcast %struct.nstate* %1 to i8*
  %4 = bitcast %struct.nstate* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 72, i1 false)
  %5 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  ret %struct.nstate* %5
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa) #0 {
entry:
  %next = alloca %struct.nstate*, align 8
  %nstate = alloca %struct.nstate*, align 8
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %0 = load %struct.nstate*, %struct.nstate** %initial, align 8
  store %struct.nstate* %0, %struct.nstate** %nstate, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %tobool = icmp ne %struct.nstate* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next1 = getelementptr inbounds %struct.nstate, %struct.nstate* %2, i32 0, i32 4
  %3 = load %struct.nstate*, %struct.nstate** %next1, align 8
  store %struct.nstate* %3, %struct.nstate** %next, align 8
  %4 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %5 = bitcast %struct.nstate* %4 to i8*
  call void @free(i8* noundef %5) #11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.nstate*, %struct.nstate** %next, align 8
  store %struct.nstate* %6, %struct.nstate** %nstate, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfa_get_size(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa) #0 {
entry:
  %nfa_size = alloca i32, align 4
  %nstate = alloca %struct.nstate*, align 8
  store i32 0, i32* %nfa_size, align 4
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %0 = load %struct.nstate*, %struct.nstate** %initial, align 8
  store %struct.nstate* %0, %struct.nstate** %nstate, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %tobool = icmp ne %struct.nstate* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %nfa_size, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nfa_size, align 4
  %3 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id = getelementptr inbounds %struct.nstate, %struct.nstate* %3, i32 0, i32 5
  store i32 %2, i32* %id, align 8
  %cmp = icmp eq i32 %2, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #12
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %4, i32 0, i32 4
  %5 = load %struct.nstate*, %struct.nstate** %next, align 8
  store %struct.nstate* %5, %struct.nstate** %nstate, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %nfa_size, align 4
  ret i32 %6
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfa_clone(%struct.nfa* noalias sret(%struct.nfa) align 8 %agg.result, %struct.nfa* noundef byval(%struct.nfa) align 8 %nfa) #0 {
entry:
  %nfa_size = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %id = alloca i32, align 4
  %nstate = alloca %struct.nstate*, align 8
  %call = call i32 @nfa_get_size(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa)
  store i32 %call, i32* %nfa_size, align 4
  %0 = load i32, i32* %nfa_size, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca %struct.nstate*, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %id, align 4
  %4 = load i32, i32* %nfa_size, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call %struct.nstate* @nstate_alloc()
  %5 = load i32, i32* %id, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom
  store %struct.nstate* %call1, %struct.nstate** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %id, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %7 = load %struct.nstate*, %struct.nstate** %initial, align 8
  store %struct.nstate* %7, %struct.nstate** %nstate, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc51, %for.end
  %8 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %tobool = icmp ne %struct.nstate* %8, null
  br i1 %tobool, label %for.body3, label %for.end53

for.body3:                                        ; preds = %for.cond2
  %9 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id4 = getelementptr inbounds %struct.nstate, %struct.nstate* %9, i32 0, i32 5
  %10 = load i32, i32* %id4, align 8
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom5
  %11 = load %struct.nstate*, %struct.nstate** %arrayidx6, align 8
  %label = getelementptr inbounds %struct.nstate, %struct.nstate* %11, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %label, i64 0, i64 0
  %12 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %label7 = getelementptr inbounds %struct.nstate, %struct.nstate* %12, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %label7, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay, i8* align 8 %arraydecay8, i64 32, i1 false)
  %13 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %target = getelementptr inbounds %struct.nstate, %struct.nstate* %13, i32 0, i32 1
  %14 = load %struct.nstate*, %struct.nstate** %target, align 8
  %tobool9 = icmp ne %struct.nstate* %14, null
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %15 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %target10 = getelementptr inbounds %struct.nstate, %struct.nstate* %15, i32 0, i32 1
  %16 = load %struct.nstate*, %struct.nstate** %target10, align 8
  %id11 = getelementptr inbounds %struct.nstate, %struct.nstate* %16, i32 0, i32 5
  %17 = load i32, i32* %id11, align 8
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom12
  %18 = load %struct.nstate*, %struct.nstate** %arrayidx13, align 8
  %19 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id14 = getelementptr inbounds %struct.nstate, %struct.nstate* %19, i32 0, i32 5
  %20 = load i32, i32* %id14, align 8
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom15
  %21 = load %struct.nstate*, %struct.nstate** %arrayidx16, align 8
  %target17 = getelementptr inbounds %struct.nstate, %struct.nstate* %21, i32 0, i32 1
  store %struct.nstate* %18, %struct.nstate** %target17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %22 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %epsilon0 = getelementptr inbounds %struct.nstate, %struct.nstate* %22, i32 0, i32 2
  %23 = load %struct.nstate*, %struct.nstate** %epsilon0, align 8
  %tobool18 = icmp ne %struct.nstate* %23, null
  br i1 %tobool18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end
  %24 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %epsilon020 = getelementptr inbounds %struct.nstate, %struct.nstate* %24, i32 0, i32 2
  %25 = load %struct.nstate*, %struct.nstate** %epsilon020, align 8
  %id21 = getelementptr inbounds %struct.nstate, %struct.nstate* %25, i32 0, i32 5
  %26 = load i32, i32* %id21, align 8
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom22
  %27 = load %struct.nstate*, %struct.nstate** %arrayidx23, align 8
  %28 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id24 = getelementptr inbounds %struct.nstate, %struct.nstate* %28, i32 0, i32 5
  %29 = load i32, i32* %id24, align 8
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom25
  %30 = load %struct.nstate*, %struct.nstate** %arrayidx26, align 8
  %epsilon027 = getelementptr inbounds %struct.nstate, %struct.nstate* %30, i32 0, i32 2
  store %struct.nstate* %27, %struct.nstate** %epsilon027, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.end
  %31 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %epsilon1 = getelementptr inbounds %struct.nstate, %struct.nstate* %31, i32 0, i32 3
  %32 = load %struct.nstate*, %struct.nstate** %epsilon1, align 8
  %tobool29 = icmp ne %struct.nstate* %32, null
  br i1 %tobool29, label %if.then30, label %if.end39

if.then30:                                        ; preds = %if.end28
  %33 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %epsilon131 = getelementptr inbounds %struct.nstate, %struct.nstate* %33, i32 0, i32 3
  %34 = load %struct.nstate*, %struct.nstate** %epsilon131, align 8
  %id32 = getelementptr inbounds %struct.nstate, %struct.nstate* %34, i32 0, i32 5
  %35 = load i32, i32* %id32, align 8
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom33
  %36 = load %struct.nstate*, %struct.nstate** %arrayidx34, align 8
  %37 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id35 = getelementptr inbounds %struct.nstate, %struct.nstate* %37, i32 0, i32 5
  %38 = load i32, i32* %id35, align 8
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom36
  %39 = load %struct.nstate*, %struct.nstate** %arrayidx37, align 8
  %epsilon138 = getelementptr inbounds %struct.nstate, %struct.nstate* %39, i32 0, i32 3
  store %struct.nstate* %36, %struct.nstate** %epsilon138, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %if.end28
  %40 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %40, i32 0, i32 4
  %41 = load %struct.nstate*, %struct.nstate** %next, align 8
  %tobool40 = icmp ne %struct.nstate* %41, null
  br i1 %tobool40, label %if.then41, label %if.end50

if.then41:                                        ; preds = %if.end39
  %42 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next42 = getelementptr inbounds %struct.nstate, %struct.nstate* %42, i32 0, i32 4
  %43 = load %struct.nstate*, %struct.nstate** %next42, align 8
  %id43 = getelementptr inbounds %struct.nstate, %struct.nstate* %43, i32 0, i32 5
  %44 = load i32, i32* %id43, align 8
  %idxprom44 = sext i32 %44 to i64
  %arrayidx45 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom44
  %45 = load %struct.nstate*, %struct.nstate** %arrayidx45, align 8
  %46 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id46 = getelementptr inbounds %struct.nstate, %struct.nstate* %46, i32 0, i32 5
  %47 = load i32, i32* %id46, align 8
  %idxprom47 = sext i32 %47 to i64
  %arrayidx48 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom47
  %48 = load %struct.nstate*, %struct.nstate** %arrayidx48, align 8
  %next49 = getelementptr inbounds %struct.nstate, %struct.nstate* %48, i32 0, i32 4
  store %struct.nstate* %45, %struct.nstate** %next49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.end39
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %49 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next52 = getelementptr inbounds %struct.nstate, %struct.nstate* %49, i32 0, i32 4
  %50 = load %struct.nstate*, %struct.nstate** %next52, align 8
  store %struct.nstate* %50, %struct.nstate** %nstate, align 8
  br label %for.cond2, !llvm.loop !10

for.end53:                                        ; preds = %for.cond2
  %initial54 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 0
  %initial55 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %51 = load %struct.nstate*, %struct.nstate** %initial55, align 8
  %id56 = getelementptr inbounds %struct.nstate, %struct.nstate* %51, i32 0, i32 5
  %52 = load i32, i32* %id56, align 8
  %idxprom57 = sext i32 %52 to i64
  %arrayidx58 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom57
  %53 = load %struct.nstate*, %struct.nstate** %arrayidx58, align 8
  store %struct.nstate* %53, %struct.nstate** %initial54, align 8
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  %final59 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 1
  %54 = load %struct.nstate*, %struct.nstate** %final59, align 8
  %id60 = getelementptr inbounds %struct.nstate, %struct.nstate* %54, i32 0, i32 5
  %55 = load i32, i32* %id60, align 8
  %idxprom61 = sext i32 %55 to i64
  %arrayidx62 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom61
  %56 = load %struct.nstate*, %struct.nstate** %arrayidx62, align 8
  store %struct.nstate* %56, %struct.nstate** %final, align 8
  %complemented = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 2
  %complemented63 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 2
  %57 = load i8, i8* %complemented63, align 8
  %tobool64 = trunc i8 %57 to i1
  %frombool = zext i1 %tobool64 to i8
  store i8 %frombool, i8* %complemented, align 8
  %58 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfa_concat(%struct.nfa* noundef %nfap, %struct.nfa* noundef byval(%struct.nfa) align 8 %nfa) #0 {
entry:
  %nfap.addr = alloca %struct.nfa*, align 8
  store %struct.nfa* %nfap, %struct.nfa** %nfap.addr, align 8
  %0 = load %struct.nfa*, %struct.nfa** %nfap.addr, align 8
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %0, i32 0, i32 0
  %1 = load %struct.nstate*, %struct.nstate** %initial, align 8
  %2 = load %struct.nfa*, %struct.nfa** %nfap.addr, align 8
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %2, i32 0, i32 1
  %3 = load %struct.nstate*, %struct.nstate** %final, align 8
  %cmp = icmp eq %struct.nstate* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.nfa*, %struct.nfa** %nfap.addr, align 8
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %4)
  %5 = load %struct.nfa*, %struct.nfa** %nfap.addr, align 8
  %6 = bitcast %struct.nfa* %5 to i8*
  %7 = bitcast %struct.nfa* %nfa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  br label %if.end10

if.else:                                          ; preds = %entry
  %initial1 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %8 = load %struct.nstate*, %struct.nstate** %initial1, align 8
  %final2 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 1
  %9 = load %struct.nstate*, %struct.nstate** %final2, align 8
  %cmp3 = icmp ne %struct.nstate* %8, %9
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %10 = load %struct.nfa*, %struct.nfa** %nfap.addr, align 8
  %final5 = getelementptr inbounds %struct.nfa, %struct.nfa* %10, i32 0, i32 1
  %11 = load %struct.nstate*, %struct.nstate** %final5, align 8
  %12 = bitcast %struct.nstate* %11 to i8*
  %initial6 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %13 = load %struct.nstate*, %struct.nstate** %initial6, align 8
  %14 = bitcast %struct.nstate* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %14, i64 72, i1 false)
  %final7 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 1
  %15 = load %struct.nstate*, %struct.nstate** %final7, align 8
  %16 = load %struct.nfa*, %struct.nfa** %nfap.addr, align 8
  %final8 = getelementptr inbounds %struct.nfa, %struct.nfa* %16, i32 0, i32 1
  store %struct.nstate* %15, %struct.nstate** %final8, align 8
  %initial9 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %17 = load %struct.nstate*, %struct.nstate** %initial9, align 8
  %18 = bitcast %struct.nstate* %17 to i8*
  call void @free(i8* noundef %18) #11
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfa_pad_initial(%struct.nfa* noundef %nfa) #0 {
entry:
  %nfa.addr = alloca %struct.nfa*, align 8
  %initial = alloca %struct.nstate*, align 8
  store %struct.nfa* %nfa, %struct.nfa** %nfa.addr, align 8
  %call = call %struct.nstate* @nstate_alloc()
  store %struct.nstate* %call, %struct.nstate** %initial, align 8
  %0 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %initial1 = getelementptr inbounds %struct.nfa, %struct.nfa* %0, i32 0, i32 0
  %1 = load %struct.nstate*, %struct.nstate** %initial1, align 8
  %2 = load %struct.nstate*, %struct.nstate** %initial, align 8
  %epsilon0 = getelementptr inbounds %struct.nstate, %struct.nstate* %2, i32 0, i32 2
  store %struct.nstate* %1, %struct.nstate** %epsilon0, align 8
  %3 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %initial2 = getelementptr inbounds %struct.nfa, %struct.nfa* %3, i32 0, i32 0
  %4 = load %struct.nstate*, %struct.nstate** %initial2, align 8
  %5 = load %struct.nstate*, %struct.nstate** %initial, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %5, i32 0, i32 4
  store %struct.nstate* %4, %struct.nstate** %next, align 8
  %6 = load %struct.nstate*, %struct.nstate** %initial, align 8
  %7 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %initial3 = getelementptr inbounds %struct.nfa, %struct.nfa* %7, i32 0, i32 0
  store %struct.nstate* %6, %struct.nstate** %initial3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfa_pad_final(%struct.nfa* noundef %nfa) #0 {
entry:
  %nfa.addr = alloca %struct.nfa*, align 8
  %final = alloca %struct.nstate*, align 8
  store %struct.nfa* %nfa, %struct.nfa** %nfa.addr, align 8
  %call = call %struct.nstate* @nstate_alloc()
  store %struct.nstate* %call, %struct.nstate** %final, align 8
  %0 = load %struct.nstate*, %struct.nstate** %final, align 8
  %1 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %final1 = getelementptr inbounds %struct.nfa, %struct.nfa* %1, i32 0, i32 1
  %2 = load %struct.nstate*, %struct.nstate** %final1, align 8
  %epsilon0 = getelementptr inbounds %struct.nstate, %struct.nstate* %2, i32 0, i32 2
  store %struct.nstate* %0, %struct.nstate** %epsilon0, align 8
  %3 = load %struct.nstate*, %struct.nstate** %final, align 8
  %4 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %final2 = getelementptr inbounds %struct.nfa, %struct.nfa* %4, i32 0, i32 1
  %5 = load %struct.nstate*, %struct.nstate** %final2, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %5, i32 0, i32 4
  store %struct.nstate* %3, %struct.nstate** %next, align 8
  %6 = load %struct.nstate*, %struct.nstate** %final, align 8
  %7 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %final3 = getelementptr inbounds %struct.nfa, %struct.nfa* %7, i32 0, i32 1
  store %struct.nstate* %6, %struct.nstate** %final3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfa_uncomplement(%struct.nfa* noundef %nfa) #0 {
entry:
  %nfa.addr = alloca %struct.nfa*, align 8
  %dfa = alloca %struct.dstate*, align 8
  %uncomplemented = alloca %struct.nfa, align 8
  store %struct.nfa* %nfa, %struct.nfa** %nfa.addr, align 8
  %0 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %complemented = getelementptr inbounds %struct.nfa, %struct.nfa* %0, i32 0, i32 2
  %1 = load i8, i8* %complemented, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %call = call %struct.dstate* @ltre_compile(%struct.nfa* noundef byval(%struct.nfa) align 8 %2)
  store %struct.dstate* %call, %struct.dstate** %dfa, align 8
  %3 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  call void @ltre_uncompile(%struct.nfa* sret(%struct.nfa) align 8 %uncomplemented, %struct.dstate* noundef %3)
  %4 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  call void @dfa_free(%struct.dstate* noundef %4)
  %5 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %5)
  %6 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %7 = bitcast %struct.nfa* %6 to i8*
  %8 = bitcast %struct.nfa* %uncomplemented to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dstate* @ltre_compile(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa) #0 {
entry:
  %nfa_size = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %nstate = alloca %struct.nstate*, align 8
  %dfa = alloca %struct.dstate*, align 8
  %dstate = alloca %struct.dstate*, align 8
  %chr = alloca i32, align 4
  %dfa_size = alloca i32, align 4
  %__vla_expr1 = alloca i64, align 8
  %dstate13 = alloca %struct.dstate*, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %ds1 = alloca %struct.dstate*, align 8
  %ds2 = alloca %struct.dstate*, align 8
  %done = alloca i8, align 1
  %id1 = alloca i32, align 4
  %id2 = alloca i32, align 4
  %chr68 = alloca i32, align 4
  %ds1118 = alloca %struct.dstate*, align 8
  %prev = alloca %struct.dstate*, align 8
  %ds2125 = alloca %struct.dstate*, align 8
  %dstate137 = alloca %struct.dstate*, align 8
  %chr141 = alloca i32, align 4
  %chr168 = alloca i32, align 4
  %call = call i32 @nfa_get_size(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa)
  store i32 %call, i32* %nfa_size, align 4
  %0 = load i32, i32* %nfa_size, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca %struct.nstate*, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %3 = load %struct.nstate*, %struct.nstate** %initial, align 8
  store %struct.nstate* %3, %struct.nstate** %nstate, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %tobool = icmp ne %struct.nstate* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %6 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id = getelementptr inbounds %struct.nstate, %struct.nstate* %6, i32 0, i32 5
  %7 = load i32, i32* %id, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom
  store %struct.nstate* %5, %struct.nstate** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %8, i32 0, i32 4
  %9 = load %struct.nstate*, %struct.nstate** %next, align 8
  store %struct.nstate* %9, %struct.nstate** %nstate, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store %struct.dstate* null, %struct.dstate** %dfa, align 8
  %10 = load i32, i32* %nfa_size, align 4
  call void @dfa_step(%struct.dstate** noundef %dfa, %struct.dstate* noundef null, i8 noundef zeroext 0, %struct.nfa* noundef byval(%struct.nfa) align 8 %nfa, i32 noundef %10, %struct.nstate** noundef %vla)
  %11 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  store %struct.dstate* %11, %struct.dstate** %dstate, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc8, %for.end
  %12 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %tobool2 = icmp ne %struct.dstate* %12, null
  br i1 %tobool2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %chr, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc6, %for.body3
  %13 = load i32, i32* %chr, align 4
  %cmp = icmp slt i32 %13, 256
  br i1 %cmp, label %for.body5, label %for.end7

for.body5:                                        ; preds = %for.cond4
  %14 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %15 = load i32, i32* %chr, align 4
  %conv = trunc i32 %15 to i8
  %16 = load i32, i32* %nfa_size, align 4
  call void @dfa_step(%struct.dstate** noundef %dfa, %struct.dstate* noundef %14, i8 noundef zeroext %conv, %struct.nfa* noundef byval(%struct.nfa) align 8 %nfa, i32 noundef %16, %struct.nstate** noundef %vla)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body5
  %17 = load i32, i32* %chr, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %chr, align 4
  br label %for.cond4, !llvm.loop !12

for.end7:                                         ; preds = %for.cond4
  br label %for.inc8

for.inc8:                                         ; preds = %for.end7
  %18 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %next9 = getelementptr inbounds %struct.dstate, %struct.dstate* %18, i32 0, i32 4
  %19 = load %struct.dstate*, %struct.dstate** %next9, align 8
  store %struct.dstate* %19, %struct.dstate** %dstate, align 8
  br label %for.cond1, !llvm.loop !13

for.end10:                                        ; preds = %for.cond1
  %20 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  %call11 = call i32 @dfa_get_size(%struct.dstate* noundef %20)
  store i32 %call11, i32* %dfa_size, align 4
  %21 = load i32, i32* %dfa_size, align 4
  %22 = zext i32 %21 to i64
  %vla12 = alloca %struct.dstate*, i64 %22, align 16
  store i64 %22, i64* %__vla_expr1, align 8
  %23 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  store %struct.dstate* %23, %struct.dstate** %dstate13, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc20, %for.end10
  %24 = load %struct.dstate*, %struct.dstate** %dstate13, align 8
  %tobool15 = icmp ne %struct.dstate* %24, null
  br i1 %tobool15, label %for.body16, label %for.end22

for.body16:                                       ; preds = %for.cond14
  %25 = load %struct.dstate*, %struct.dstate** %dstate13, align 8
  %26 = load %struct.dstate*, %struct.dstate** %dstate13, align 8
  %id17 = getelementptr inbounds %struct.dstate, %struct.dstate* %26, i32 0, i32 3
  %27 = load i32, i32* %id17, align 4
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla12, i64 %idxprom18
  store %struct.dstate* %25, %struct.dstate** %arrayidx19, align 8
  br label %for.inc20

for.inc20:                                        ; preds = %for.body16
  %28 = load %struct.dstate*, %struct.dstate** %dstate13, align 8
  %next21 = getelementptr inbounds %struct.dstate, %struct.dstate* %28, i32 0, i32 4
  %29 = load %struct.dstate*, %struct.dstate** %next21, align 8
  store %struct.dstate* %29, %struct.dstate** %dstate13, align 8
  br label %for.cond14, !llvm.loop !14

for.end22:                                        ; preds = %for.cond14
  %30 = load i32, i32* %dfa_size, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* %dfa_size, align 4
  %add = add nsw i32 %32, 7
  %div = sdiv i32 %add, 8
  %33 = zext i32 %div to i64
  %34 = mul nuw i64 %31, %33
  %vla23 = alloca i8, i64 %34, align 16
  store i64 %31, i64* %__vla_expr2, align 8
  store i64 %33, i64* %__vla_expr3, align 8
  %35 = mul nuw i64 %31, %33
  call void @llvm.memset.p0i8.i64(i8* align 16 %vla23, i8 0, i64 %35, i1 false)
  %36 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  store %struct.dstate* %36, %struct.dstate** %ds1, align 8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc49, %for.end22
  %37 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %tobool25 = icmp ne %struct.dstate* %37, null
  br i1 %tobool25, label %for.body26, label %for.end51

for.body26:                                       ; preds = %for.cond24
  %38 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %next27 = getelementptr inbounds %struct.dstate, %struct.dstate* %38, i32 0, i32 4
  %39 = load %struct.dstate*, %struct.dstate** %next27, align 8
  store %struct.dstate* %39, %struct.dstate** %ds2, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc46, %for.body26
  %40 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %tobool29 = icmp ne %struct.dstate* %40, null
  br i1 %tobool29, label %for.body30, label %for.end48

for.body30:                                       ; preds = %for.cond28
  %41 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %41, i32 0, i32 1
  %42 = load i8, i8* %accepting, align 8
  %tobool31 = trunc i8 %42 to i1
  %conv32 = zext i1 %tobool31 to i32
  %43 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %accepting33 = getelementptr inbounds %struct.dstate, %struct.dstate* %43, i32 0, i32 1
  %44 = load i8, i8* %accepting33, align 8
  %tobool34 = trunc i8 %44 to i1
  %conv35 = zext i1 %tobool34 to i32
  %cmp36 = icmp ne i32 %conv32, %conv35
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %for.body30
  %45 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id38 = getelementptr inbounds %struct.dstate, %struct.dstate* %45, i32 0, i32 3
  %46 = load i32, i32* %id38, align 4
  %idxprom39 = sext i32 %46 to i64
  %47 = mul nsw i64 %idxprom39, %33
  %arrayidx40 = getelementptr inbounds i8, i8* %vla23, i64 %47
  %48 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %id41 = getelementptr inbounds %struct.dstate, %struct.dstate* %48, i32 0, i32 3
  %49 = load i32, i32* %id41, align 4
  call void @bitset_set(i8* noundef %arrayidx40, i32 noundef %49)
  %50 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %id42 = getelementptr inbounds %struct.dstate, %struct.dstate* %50, i32 0, i32 3
  %51 = load i32, i32* %id42, align 4
  %idxprom43 = sext i32 %51 to i64
  %52 = mul nsw i64 %idxprom43, %33
  %arrayidx44 = getelementptr inbounds i8, i8* %vla23, i64 %52
  %53 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id45 = getelementptr inbounds %struct.dstate, %struct.dstate* %53, i32 0, i32 3
  %54 = load i32, i32* %id45, align 4
  call void @bitset_set(i8* noundef %arrayidx44, i32 noundef %54)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body30
  br label %for.inc46

for.inc46:                                        ; preds = %if.end
  %55 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %next47 = getelementptr inbounds %struct.dstate, %struct.dstate* %55, i32 0, i32 4
  %56 = load %struct.dstate*, %struct.dstate** %next47, align 8
  store %struct.dstate* %56, %struct.dstate** %ds2, align 8
  br label %for.cond28, !llvm.loop !15

for.end48:                                        ; preds = %for.cond28
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %57 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %next50 = getelementptr inbounds %struct.dstate, %struct.dstate* %57, i32 0, i32 4
  %58 = load %struct.dstate*, %struct.dstate** %next50, align 8
  store %struct.dstate* %58, %struct.dstate** %ds1, align 8
  br label %for.cond24, !llvm.loop !16

for.end51:                                        ; preds = %for.cond24
  store i8 0, i8* %done, align 1
  br label %for.cond52

for.cond52:                                       ; preds = %for.end116, %for.end51
  %59 = load i8, i8* %done, align 1
  %tobool53 = trunc i8 %59 to i1
  %lnot = xor i1 %tobool53, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %done, align 1
  br i1 %lnot, label %for.body54, label %for.end117

for.body54:                                       ; preds = %for.cond52
  store i32 0, i32* %id1, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc114, %for.body54
  %60 = load i32, i32* %id1, align 4
  %61 = load i32, i32* %dfa_size, align 4
  %cmp56 = icmp slt i32 %60, %61
  br i1 %cmp56, label %for.body58, label %for.end116

for.body58:                                       ; preds = %for.cond55
  %62 = load i32, i32* %id1, align 4
  %add59 = add nsw i32 %62, 1
  store i32 %add59, i32* %id2, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc111, %for.body58
  %63 = load i32, i32* %id2, align 4
  %64 = load i32, i32* %dfa_size, align 4
  %cmp61 = icmp slt i32 %63, %64
  br i1 %cmp61, label %for.body63, label %for.end113

for.body63:                                       ; preds = %for.cond60
  %65 = load i32, i32* %id1, align 4
  %idxprom64 = sext i32 %65 to i64
  %66 = mul nsw i64 %idxprom64, %33
  %arrayidx65 = getelementptr inbounds i8, i8* %vla23, i64 %66
  %67 = load i32, i32* %id2, align 4
  %call66 = call zeroext i1 @bitset_get(i8* noundef %arrayidx65, i32 noundef %67)
  br i1 %call66, label %if.end110, label %if.then67

if.then67:                                        ; preds = %for.body63
  store i32 0, i32* %chr68, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc107, %if.then67
  %68 = load i32, i32* %chr68, align 4
  %cmp70 = icmp slt i32 %68, 256
  br i1 %cmp70, label %for.body72, label %for.end109

for.body72:                                       ; preds = %for.cond69
  %69 = load i32, i32* %id1, align 4
  %idxprom73 = sext i32 %69 to i64
  %arrayidx74 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla12, i64 %idxprom73
  %70 = load %struct.dstate*, %struct.dstate** %arrayidx74, align 8
  %transitions = getelementptr inbounds %struct.dstate, %struct.dstate* %70, i32 0, i32 0
  %71 = load i32, i32* %chr68, align 4
  %idxprom75 = sext i32 %71 to i64
  %arrayidx76 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions, i64 0, i64 %idxprom75
  %72 = load %struct.dstate*, %struct.dstate** %arrayidx76, align 8
  %73 = load i32, i32* %id2, align 4
  %idxprom77 = sext i32 %73 to i64
  %arrayidx78 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla12, i64 %idxprom77
  %74 = load %struct.dstate*, %struct.dstate** %arrayidx78, align 8
  %transitions79 = getelementptr inbounds %struct.dstate, %struct.dstate* %74, i32 0, i32 0
  %75 = load i32, i32* %chr68, align 4
  %idxprom80 = sext i32 %75 to i64
  %arrayidx81 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions79, i64 0, i64 %idxprom80
  %76 = load %struct.dstate*, %struct.dstate** %arrayidx81, align 8
  %cmp82 = icmp ne %struct.dstate* %72, %76
  br i1 %cmp82, label %if.then84, label %if.end106

if.then84:                                        ; preds = %for.body72
  %77 = load i32, i32* %id1, align 4
  %idxprom85 = sext i32 %77 to i64
  %arrayidx86 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla12, i64 %idxprom85
  %78 = load %struct.dstate*, %struct.dstate** %arrayidx86, align 8
  %transitions87 = getelementptr inbounds %struct.dstate, %struct.dstate* %78, i32 0, i32 0
  %79 = load i32, i32* %chr68, align 4
  %idxprom88 = sext i32 %79 to i64
  %arrayidx89 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions87, i64 0, i64 %idxprom88
  %80 = load %struct.dstate*, %struct.dstate** %arrayidx89, align 8
  %id90 = getelementptr inbounds %struct.dstate, %struct.dstate* %80, i32 0, i32 3
  %81 = load i32, i32* %id90, align 4
  %idxprom91 = sext i32 %81 to i64
  %82 = mul nsw i64 %idxprom91, %33
  %arrayidx92 = getelementptr inbounds i8, i8* %vla23, i64 %82
  %83 = load i32, i32* %id2, align 4
  %idxprom93 = sext i32 %83 to i64
  %arrayidx94 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla12, i64 %idxprom93
  %84 = load %struct.dstate*, %struct.dstate** %arrayidx94, align 8
  %transitions95 = getelementptr inbounds %struct.dstate, %struct.dstate* %84, i32 0, i32 0
  %85 = load i32, i32* %chr68, align 4
  %idxprom96 = sext i32 %85 to i64
  %arrayidx97 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions95, i64 0, i64 %idxprom96
  %86 = load %struct.dstate*, %struct.dstate** %arrayidx97, align 8
  %id98 = getelementptr inbounds %struct.dstate, %struct.dstate* %86, i32 0, i32 3
  %87 = load i32, i32* %id98, align 4
  %call99 = call zeroext i1 @bitset_get(i8* noundef %arrayidx92, i32 noundef %87)
  br i1 %call99, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.then84
  %88 = load i32, i32* %id1, align 4
  %idxprom101 = sext i32 %88 to i64
  %89 = mul nsw i64 %idxprom101, %33
  %arrayidx102 = getelementptr inbounds i8, i8* %vla23, i64 %89
  %90 = load i32, i32* %id2, align 4
  call void @bitset_set(i8* noundef %arrayidx102, i32 noundef %90)
  %91 = load i32, i32* %id2, align 4
  %idxprom103 = sext i32 %91 to i64
  %92 = mul nsw i64 %idxprom103, %33
  %arrayidx104 = getelementptr inbounds i8, i8* %vla23, i64 %92
  %93 = load i32, i32* %id1, align 4
  call void @bitset_set(i8* noundef %arrayidx104, i32 noundef %93)
  store i8 0, i8* %done, align 1
  br label %for.end109

if.end105:                                        ; preds = %if.then84
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %for.body72
  br label %for.inc107

for.inc107:                                       ; preds = %if.end106
  %94 = load i32, i32* %chr68, align 4
  %inc108 = add nsw i32 %94, 1
  store i32 %inc108, i32* %chr68, align 4
  br label %for.cond69, !llvm.loop !17

for.end109:                                       ; preds = %if.then100, %for.cond69
  br label %if.end110

if.end110:                                        ; preds = %for.end109, %for.body63
  br label %for.inc111

for.inc111:                                       ; preds = %if.end110
  %95 = load i32, i32* %id2, align 4
  %inc112 = add nsw i32 %95, 1
  store i32 %inc112, i32* %id2, align 4
  br label %for.cond60, !llvm.loop !18

for.end113:                                       ; preds = %for.cond60
  br label %for.inc114

for.inc114:                                       ; preds = %for.end113
  %96 = load i32, i32* %id1, align 4
  %inc115 = add nsw i32 %96, 1
  store i32 %inc115, i32* %id1, align 4
  br label %for.cond55, !llvm.loop !19

for.end116:                                       ; preds = %for.cond55
  br label %for.cond52, !llvm.loop !20

for.end117:                                       ; preds = %for.cond52
  %97 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  store %struct.dstate* %97, %struct.dstate** %ds1118, align 8
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc184, %for.end117
  %98 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  %tobool120 = icmp ne %struct.dstate* %98, null
  br i1 %tobool120, label %for.body121, label %for.end186

for.body121:                                      ; preds = %for.cond119
  %99 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  store %struct.dstate* %99, %struct.dstate** %prev, align 8
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc165, %for.body121
  %100 = load %struct.dstate*, %struct.dstate** %prev, align 8
  %tobool123 = icmp ne %struct.dstate* %100, null
  br i1 %tobool123, label %for.body124, label %for.end167

for.body124:                                      ; preds = %for.cond122
  br label %for.cond126

for.cond126:                                      ; preds = %for.end161, %for.body124
  %101 = load %struct.dstate*, %struct.dstate** %prev, align 8
  %next127 = getelementptr inbounds %struct.dstate, %struct.dstate* %101, i32 0, i32 4
  %102 = load %struct.dstate*, %struct.dstate** %next127, align 8
  store %struct.dstate* %102, %struct.dstate** %ds2125, align 8
  %tobool128 = icmp ne %struct.dstate* %102, null
  br i1 %tobool128, label %for.body129, label %for.end164

for.body129:                                      ; preds = %for.cond126
  %103 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  %id130 = getelementptr inbounds %struct.dstate, %struct.dstate* %103, i32 0, i32 3
  %104 = load i32, i32* %id130, align 4
  %idxprom131 = sext i32 %104 to i64
  %105 = mul nsw i64 %idxprom131, %33
  %arrayidx132 = getelementptr inbounds i8, i8* %vla23, i64 %105
  %106 = load %struct.dstate*, %struct.dstate** %ds2125, align 8
  %id133 = getelementptr inbounds %struct.dstate, %struct.dstate* %106, i32 0, i32 3
  %107 = load i32, i32* %id133, align 4
  %call134 = call zeroext i1 @bitset_get(i8* noundef %arrayidx132, i32 noundef %107)
  br i1 %call134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %for.body129
  br label %for.end164

if.end136:                                        ; preds = %for.body129
  %108 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  store %struct.dstate* %108, %struct.dstate** %dstate137, align 8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc159, %if.end136
  %109 = load %struct.dstate*, %struct.dstate** %dstate137, align 8
  %tobool139 = icmp ne %struct.dstate* %109, null
  br i1 %tobool139, label %for.body140, label %for.end161

for.body140:                                      ; preds = %for.cond138
  store i32 0, i32* %chr141, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc156, %for.body140
  %110 = load i32, i32* %chr141, align 4
  %cmp143 = icmp slt i32 %110, 256
  br i1 %cmp143, label %for.body145, label %for.end158

for.body145:                                      ; preds = %for.cond142
  %111 = load %struct.dstate*, %struct.dstate** %dstate137, align 8
  %transitions146 = getelementptr inbounds %struct.dstate, %struct.dstate* %111, i32 0, i32 0
  %112 = load i32, i32* %chr141, align 4
  %idxprom147 = sext i32 %112 to i64
  %arrayidx148 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions146, i64 0, i64 %idxprom147
  %113 = load %struct.dstate*, %struct.dstate** %arrayidx148, align 8
  %114 = load %struct.dstate*, %struct.dstate** %ds2125, align 8
  %cmp149 = icmp eq %struct.dstate* %113, %114
  br i1 %cmp149, label %if.then151, label %if.end155

if.then151:                                       ; preds = %for.body145
  %115 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  %116 = load %struct.dstate*, %struct.dstate** %dstate137, align 8
  %transitions152 = getelementptr inbounds %struct.dstate, %struct.dstate* %116, i32 0, i32 0
  %117 = load i32, i32* %chr141, align 4
  %idxprom153 = sext i32 %117 to i64
  %arrayidx154 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions152, i64 0, i64 %idxprom153
  store %struct.dstate* %115, %struct.dstate** %arrayidx154, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then151, %for.body145
  br label %for.inc156

for.inc156:                                       ; preds = %if.end155
  %118 = load i32, i32* %chr141, align 4
  %inc157 = add nsw i32 %118, 1
  store i32 %inc157, i32* %chr141, align 4
  br label %for.cond142, !llvm.loop !21

for.end158:                                       ; preds = %for.cond142
  br label %for.inc159

for.inc159:                                       ; preds = %for.end158
  %119 = load %struct.dstate*, %struct.dstate** %dstate137, align 8
  %next160 = getelementptr inbounds %struct.dstate, %struct.dstate* %119, i32 0, i32 4
  %120 = load %struct.dstate*, %struct.dstate** %next160, align 8
  store %struct.dstate* %120, %struct.dstate** %dstate137, align 8
  br label %for.cond138, !llvm.loop !22

for.end161:                                       ; preds = %for.cond138
  %121 = load %struct.dstate*, %struct.dstate** %ds2125, align 8
  %next162 = getelementptr inbounds %struct.dstate, %struct.dstate* %121, i32 0, i32 4
  %122 = load %struct.dstate*, %struct.dstate** %next162, align 8
  %123 = load %struct.dstate*, %struct.dstate** %prev, align 8
  %next163 = getelementptr inbounds %struct.dstate, %struct.dstate* %123, i32 0, i32 4
  store %struct.dstate* %122, %struct.dstate** %next163, align 8
  %124 = load %struct.dstate*, %struct.dstate** %ds2125, align 8
  %125 = bitcast %struct.dstate* %124 to i8*
  call void @free(i8* noundef %125) #11
  br label %for.cond126, !llvm.loop !23

for.end164:                                       ; preds = %if.then135, %for.cond126
  br label %for.inc165

for.inc165:                                       ; preds = %for.end164
  %126 = load %struct.dstate*, %struct.dstate** %prev, align 8
  %next166 = getelementptr inbounds %struct.dstate, %struct.dstate* %126, i32 0, i32 4
  %127 = load %struct.dstate*, %struct.dstate** %next166, align 8
  store %struct.dstate* %127, %struct.dstate** %prev, align 8
  br label %for.cond122, !llvm.loop !24

for.end167:                                       ; preds = %for.cond122
  %128 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  %terminating = getelementptr inbounds %struct.dstate, %struct.dstate* %128, i32 0, i32 2
  store i8 1, i8* %terminating, align 1
  store i32 0, i32* %chr168, align 4
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc181, %for.end167
  %129 = load i32, i32* %chr168, align 4
  %cmp170 = icmp slt i32 %129, 256
  br i1 %cmp170, label %for.body172, label %for.end183

for.body172:                                      ; preds = %for.cond169
  %130 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  %transitions173 = getelementptr inbounds %struct.dstate, %struct.dstate* %130, i32 0, i32 0
  %131 = load i32, i32* %chr168, align 4
  %idxprom174 = sext i32 %131 to i64
  %arrayidx175 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions173, i64 0, i64 %idxprom174
  %132 = load %struct.dstate*, %struct.dstate** %arrayidx175, align 8
  %133 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  %cmp176 = icmp ne %struct.dstate* %132, %133
  br i1 %cmp176, label %if.then178, label %if.end180

if.then178:                                       ; preds = %for.body172
  %134 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  %terminating179 = getelementptr inbounds %struct.dstate, %struct.dstate* %134, i32 0, i32 2
  store i8 0, i8* %terminating179, align 1
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %for.body172
  br label %for.inc181

for.inc181:                                       ; preds = %if.end180
  %135 = load i32, i32* %chr168, align 4
  %inc182 = add nsw i32 %135, 1
  store i32 %inc182, i32* %chr168, align 4
  br label %for.cond169, !llvm.loop !25

for.end183:                                       ; preds = %for.cond169
  br label %for.inc184

for.inc184:                                       ; preds = %for.end183
  %136 = load %struct.dstate*, %struct.dstate** %ds1118, align 8
  %next185 = getelementptr inbounds %struct.dstate, %struct.dstate* %136, i32 0, i32 4
  %137 = load %struct.dstate*, %struct.dstate** %next185, align 8
  store %struct.dstate* %137, %struct.dstate** %ds1118, align 8
  br label %for.cond119, !llvm.loop !26

for.end186:                                       ; preds = %for.cond119
  %138 = load %struct.dstate*, %struct.dstate** %dfa, align 8
  %139 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %139)
  ret %struct.dstate* %138
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltre_uncompile(%struct.nfa* noalias sret(%struct.nfa) align 8 %agg.result, %struct.dstate* noundef %dfa) #0 {
entry:
  %dfa.addr = alloca %struct.dstate*, align 8
  %dfa_size = alloca i32, align 4
  %tail = alloca %struct.nstate*, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %id = alloca i32, align 4
  %dstate = alloca %struct.dstate*, align 8
  %ds1 = alloca %struct.dstate*, align 8
  %free = alloca %struct.nstate*, align 8
  %ds2 = alloca %struct.dstate*, align 8
  %empty = alloca i8, align 1
  %transitions = alloca [32 x i8], align 16
  %chr = alloca i32, align 4
  %src = alloca %struct.nstate*, align 8
  store %struct.dstate* %dfa, %struct.dstate** %dfa.addr, align 8
  %0 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %call = call i32 @dfa_get_size(%struct.dstate* noundef %0)
  store i32 %call, i32* %dfa_size, align 4
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 0
  %call1 = call %struct.nstate* @nstate_alloc()
  store %struct.nstate* %call1, %struct.nstate** %initial, align 8
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  %call2 = call %struct.nstate* @nstate_alloc()
  store %struct.nstate* %call2, %struct.nstate** %final, align 8
  %complemented = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 2
  store i8 0, i8* %complemented, align 8
  %initial3 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 0
  %1 = load %struct.nstate*, %struct.nstate** %initial3, align 8
  store %struct.nstate* %1, %struct.nstate** %tail, align 8
  %2 = load i32, i32* %dfa_size, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %vla = alloca %struct.nstate*, i64 %3, align 16
  store i64 %3, i64* %__vla_expr0, align 8
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %id, align 4
  %6 = load i32, i32* %dfa_size, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call %struct.nstate* @nstate_alloc()
  %7 = load %struct.nstate*, %struct.nstate** %tail, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %7, i32 0, i32 4
  store %struct.nstate* %call4, %struct.nstate** %next, align 8
  %8 = load i32, i32* %id, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom
  store %struct.nstate* %call4, %struct.nstate** %arrayidx, align 8
  %9 = load %struct.nstate*, %struct.nstate** %tail, align 8
  %next5 = getelementptr inbounds %struct.nstate, %struct.nstate* %9, i32 0, i32 4
  %10 = load %struct.nstate*, %struct.nstate** %next5, align 8
  store %struct.nstate* %10, %struct.nstate** %tail, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %id, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %12 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %id6 = getelementptr inbounds %struct.dstate, %struct.dstate* %12, i32 0, i32 3
  %13 = load i32, i32* %id6, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom7
  %14 = load %struct.nstate*, %struct.nstate** %arrayidx8, align 8
  %initial9 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 0
  %15 = load %struct.nstate*, %struct.nstate** %initial9, align 8
  %epsilon1 = getelementptr inbounds %struct.nstate, %struct.nstate* %15, i32 0, i32 3
  store %struct.nstate* %14, %struct.nstate** %epsilon1, align 8
  %16 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %16, %struct.dstate** %dstate, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %for.end
  %17 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %tobool = icmp ne %struct.dstate* %17, null
  br i1 %tobool, label %for.body11, label %for.end20

for.body11:                                       ; preds = %for.cond10
  %18 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %18, i32 0, i32 1
  %19 = load i8, i8* %accepting, align 8
  %tobool12 = trunc i8 %19 to i1
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body11
  %final13 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  %20 = load %struct.nstate*, %struct.nstate** %final13, align 8
  %21 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %id14 = getelementptr inbounds %struct.dstate, %struct.dstate* %21, i32 0, i32 3
  %22 = load i32, i32* %id14, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom15
  %23 = load %struct.nstate*, %struct.nstate** %arrayidx16, align 8
  %epsilon117 = getelementptr inbounds %struct.nstate, %struct.nstate* %23, i32 0, i32 3
  store %struct.nstate* %20, %struct.nstate** %epsilon117, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body11
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %24 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %next19 = getelementptr inbounds %struct.dstate, %struct.dstate* %24, i32 0, i32 4
  %25 = load %struct.dstate*, %struct.dstate** %next19, align 8
  store %struct.dstate* %25, %struct.dstate** %dstate, align 8
  br label %for.cond10, !llvm.loop !28

for.end20:                                        ; preds = %for.cond10
  %26 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %26, %struct.dstate** %ds1, align 8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc65, %for.end20
  %27 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %tobool22 = icmp ne %struct.dstate* %27, null
  br i1 %tobool22, label %for.body23, label %for.end67

for.body23:                                       ; preds = %for.cond21
  store %struct.nstate* null, %struct.nstate** %free, align 8
  %28 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %28, %struct.dstate** %ds2, align 8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc62, %for.body23
  %29 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %tobool25 = icmp ne %struct.dstate* %29, null
  br i1 %tobool25, label %for.body26, label %for.end64

for.body26:                                       ; preds = %for.cond24
  store i8 1, i8* %empty, align 1
  %30 = bitcast [32 x i8]* %transitions to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 32, i1 false)
  store i32 0, i32* %chr, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc36, %for.body26
  %31 = load i32, i32* %chr, align 4
  %cmp28 = icmp slt i32 %31, 256
  br i1 %cmp28, label %for.body29, label %for.end38

for.body29:                                       ; preds = %for.cond27
  %32 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %transitions30 = getelementptr inbounds %struct.dstate, %struct.dstate* %32, i32 0, i32 0
  %33 = load i32, i32* %chr, align 4
  %idxprom31 = sext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions30, i64 0, i64 %idxprom31
  %34 = load %struct.dstate*, %struct.dstate** %arrayidx32, align 8
  %35 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %cmp33 = icmp eq %struct.dstate* %34, %35
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body29
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %transitions, i64 0, i64 0
  %36 = load i32, i32* %chr, align 4
  call void @bitset_set(i8* noundef %arraydecay, i32 noundef %36)
  store i8 0, i8* %empty, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.body29
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %37 = load i32, i32* %chr, align 4
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, i32* %chr, align 4
  br label %for.cond27, !llvm.loop !29

for.end38:                                        ; preds = %for.cond27
  %38 = load i8, i8* %empty, align 1
  %tobool39 = trunc i8 %38 to i1
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.end38
  br label %for.inc62

if.end41:                                         ; preds = %for.end38
  %39 = load %struct.nstate*, %struct.nstate** %free, align 8
  %cmp42 = icmp eq %struct.nstate* %39, null
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end41
  %40 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id44 = getelementptr inbounds %struct.dstate, %struct.dstate* %40, i32 0, i32 3
  %41 = load i32, i32* %id44, align 4
  %idxprom45 = sext i32 %41 to i64
  %arrayidx46 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom45
  %42 = load %struct.nstate*, %struct.nstate** %arrayidx46, align 8
  store %struct.nstate* %42, %struct.nstate** %free, align 8
  %43 = load %struct.nstate*, %struct.nstate** %free, align 8
  store %struct.nstate* %43, %struct.nstate** %src, align 8
  br label %if.end56

if.else:                                          ; preds = %if.end41
  %call47 = call %struct.nstate* @nstate_alloc()
  %44 = load %struct.nstate*, %struct.nstate** %tail, align 8
  %next48 = getelementptr inbounds %struct.nstate, %struct.nstate* %44, i32 0, i32 4
  store %struct.nstate* %call47, %struct.nstate** %next48, align 8
  store %struct.nstate* %call47, %struct.nstate** %src, align 8
  %45 = load %struct.nstate*, %struct.nstate** %tail, align 8
  %next49 = getelementptr inbounds %struct.nstate, %struct.nstate* %45, i32 0, i32 4
  %46 = load %struct.nstate*, %struct.nstate** %next49, align 8
  store %struct.nstate* %46, %struct.nstate** %tail, align 8
  %47 = load %struct.nstate*, %struct.nstate** %free, align 8
  %epsilon150 = getelementptr inbounds %struct.nstate, %struct.nstate* %47, i32 0, i32 3
  %48 = load %struct.nstate*, %struct.nstate** %epsilon150, align 8
  %tobool51 = icmp ne %struct.nstate* %48, null
  br i1 %tobool51, label %if.else54, label %if.then52

if.then52:                                        ; preds = %if.else
  %49 = load %struct.nstate*, %struct.nstate** %tail, align 8
  %50 = load %struct.nstate*, %struct.nstate** %free, align 8
  %epsilon153 = getelementptr inbounds %struct.nstate, %struct.nstate* %50, i32 0, i32 3
  store %struct.nstate* %49, %struct.nstate** %epsilon153, align 8
  br label %if.end55

if.else54:                                        ; preds = %if.else
  %51 = load %struct.nstate*, %struct.nstate** %tail, align 8
  %52 = load %struct.nstate*, %struct.nstate** %free, align 8
  %epsilon0 = getelementptr inbounds %struct.nstate, %struct.nstate* %52, i32 0, i32 2
  store %struct.nstate* %51, %struct.nstate** %epsilon0, align 8
  %53 = load %struct.nstate*, %struct.nstate** %tail, align 8
  store %struct.nstate* %53, %struct.nstate** %free, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then52
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then43
  %54 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %id57 = getelementptr inbounds %struct.dstate, %struct.dstate* %54, i32 0, i32 3
  %55 = load i32, i32* %id57, align 4
  %idxprom58 = sext i32 %55 to i64
  %arrayidx59 = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom58
  %56 = load %struct.nstate*, %struct.nstate** %arrayidx59, align 8
  %57 = load %struct.nstate*, %struct.nstate** %src, align 8
  %target = getelementptr inbounds %struct.nstate, %struct.nstate* %57, i32 0, i32 1
  store %struct.nstate* %56, %struct.nstate** %target, align 8
  %58 = load %struct.nstate*, %struct.nstate** %src, align 8
  %label = getelementptr inbounds %struct.nstate, %struct.nstate* %58, i32 0, i32 0
  %arraydecay60 = getelementptr inbounds [32 x i8], [32 x i8]* %label, i64 0, i64 0
  %arraydecay61 = getelementptr inbounds [32 x i8], [32 x i8]* %transitions, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay60, i8* align 16 %arraydecay61, i64 32, i1 false)
  br label %for.inc62

for.inc62:                                        ; preds = %if.end56, %if.then40
  %59 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %next63 = getelementptr inbounds %struct.dstate, %struct.dstate* %59, i32 0, i32 4
  %60 = load %struct.dstate*, %struct.dstate** %next63, align 8
  store %struct.dstate* %60, %struct.dstate** %ds2, align 8
  br label %for.cond24, !llvm.loop !30

for.end64:                                        ; preds = %for.cond24
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %61 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %next66 = getelementptr inbounds %struct.dstate, %struct.dstate* %61, i32 0, i32 4
  %62 = load %struct.dstate*, %struct.dstate** %next66, align 8
  store %struct.dstate* %62, %struct.dstate** %ds1, align 8
  br label %for.cond21, !llvm.loop !31

for.end67:                                        ; preds = %for.cond21
  %final68 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  %63 = load %struct.nstate*, %struct.nstate** %final68, align 8
  %64 = load %struct.nstate*, %struct.nstate** %tail, align 8
  %next69 = getelementptr inbounds %struct.nstate, %struct.nstate* %64, i32 0, i32 4
  store %struct.nstate* %63, %struct.nstate** %next69, align 8
  %65 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfa_free(%struct.dstate* noundef %dstate) #0 {
entry:
  %dstate.addr = alloca %struct.dstate*, align 8
  %next = alloca %struct.dstate*, align 8
  store %struct.dstate* %dstate, %struct.dstate** %dstate.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.dstate*, %struct.dstate** %dstate.addr, align 8
  %tobool = icmp ne %struct.dstate* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.dstate*, %struct.dstate** %dstate.addr, align 8
  %next1 = getelementptr inbounds %struct.dstate, %struct.dstate* %1, i32 0, i32 4
  %2 = load %struct.dstate*, %struct.dstate** %next1, align 8
  store %struct.dstate* %2, %struct.dstate** %next, align 8
  %3 = load %struct.dstate*, %struct.dstate** %dstate.addr, align 8
  %4 = bitcast %struct.dstate* %3 to i8*
  call void @free(i8* noundef %4) #11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.dstate*, %struct.dstate** %next, align 8
  store %struct.dstate* %5, %struct.dstate** %dstate.addr, align 8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfa_dump(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa) #0 {
entry:
  %nstate = alloca %struct.nstate*, align 8
  %empty = alloca i8, align 1
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %call = call i32 @nfa_get_size(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa)
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %0 = load %struct.nstate*, %struct.nstate** %initial, align 8
  %id = getelementptr inbounds %struct.nstate, %struct.nstate* %0, i32 0, i32 5
  %1 = load i32, i32* %id, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef %1)
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 1
  %2 = load %struct.nstate*, %struct.nstate** %final, align 8
  %id3 = getelementptr inbounds %struct.nstate, %struct.nstate* %2, i32 0, i32 5
  %3 = load i32, i32* %id3, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 noundef %3)
  %initial5 = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %4 = load %struct.nstate*, %struct.nstate** %initial5, align 8
  store %struct.nstate* %4, %struct.nstate** %nstate, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %5 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %tobool = icmp ne %struct.nstate* %5, null
  br i1 %tobool, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  %6 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %epsilon0 = getelementptr inbounds %struct.nstate, %struct.nstate* %6, i32 0, i32 2
  %7 = load %struct.nstate*, %struct.nstate** %epsilon0, align 8
  %tobool6 = icmp ne %struct.nstate* %7, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id7 = getelementptr inbounds %struct.nstate, %struct.nstate* %8, i32 0, i32 5
  %9 = load i32, i32* %id7, align 8
  %10 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %epsilon08 = getelementptr inbounds %struct.nstate, %struct.nstate* %10, i32 0, i32 2
  %11 = load %struct.nstate*, %struct.nstate** %epsilon08, align 8
  %id9 = getelementptr inbounds %struct.nstate, %struct.nstate* %11, i32 0, i32 5
  %12 = load i32, i32* %id9, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 noundef %9, i32 noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %epsilon1 = getelementptr inbounds %struct.nstate, %struct.nstate* %13, i32 0, i32 3
  %14 = load %struct.nstate*, %struct.nstate** %epsilon1, align 8
  %tobool11 = icmp ne %struct.nstate* %14, null
  br i1 %tobool11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end
  %15 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id13 = getelementptr inbounds %struct.nstate, %struct.nstate* %15, i32 0, i32 5
  %16 = load i32, i32* %id13, align 8
  %17 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %epsilon114 = getelementptr inbounds %struct.nstate, %struct.nstate* %17, i32 0, i32 3
  %18 = load %struct.nstate*, %struct.nstate** %epsilon114, align 8
  %id15 = getelementptr inbounds %struct.nstate, %struct.nstate* %18, i32 0, i32 5
  %19 = load i32, i32* %id15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 noundef %16, i32 noundef %19)
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end
  store i8 1, i8* %empty, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %if.end17
  %20 = load i32, i32* %i, align 4
  %conv = sext i32 %20 to i64
  %cmp = icmp ult i64 %conv, 32
  br i1 %cmp, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond18
  %21 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %label = getelementptr inbounds %struct.nstate, %struct.nstate* %21, i32 0, i32 0
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %label, i64 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %tobool21 = icmp ne i8 %23, 0
  %lnot = xor i1 %tobool21, true
  %lnot.ext = zext i1 %lnot to i32
  %24 = load i8, i8* %empty, align 1
  %tobool22 = trunc i8 %24 to i1
  %conv23 = zext i1 %tobool22 to i32
  %and = and i32 %conv23, %lnot.ext
  %tobool24 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool24 to i8
  store i8 %frombool, i8* %empty, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body20
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond18, !llvm.loop !33

for.end:                                          ; preds = %for.cond18
  %26 = load i8, i8* %empty, align 1
  %tobool25 = trunc i8 %26 to i1
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end
  br label %for.inc44

if.end27:                                         ; preds = %for.end
  %27 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id28 = getelementptr inbounds %struct.nstate, %struct.nstate* %27, i32 0, i32 5
  %28 = load i32, i32* %id28, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %28)
  %29 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %label30 = getelementptr inbounds %struct.nstate, %struct.nstate* %29, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %label30, i64 0, i64 0
  %call31 = call i8* @symset_fmt(i8* noundef %arraydecay)
  store i8* %call31, i8** %fmt, align 8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc40, %if.end27
  %30 = load i8*, i8** %fmt, align 8
  %31 = load i8, i8* %30, align 1
  %tobool33 = icmp ne i8 %31, 0
  br i1 %tobool33, label %for.body34, label %for.end41

for.body34:                                       ; preds = %for.cond32
  %32 = load i8*, i8** %fmt, align 8
  %33 = load i8, i8* %32, align 1
  %conv35 = sext i8 %33 to i32
  %call36 = call i8* @strchr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv35) #9
  %tobool37 = icmp ne i8* %call36, null
  %34 = zext i1 %tobool37 to i64
  %cond = select i1 %tobool37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %35 = load i8*, i8** %fmt, align 8
  %36 = load i8, i8* %35, align 1
  %conv38 = sext i8 %36 to i32
  %call39 = call i32 (i8*, ...) @printf(i8* noundef %cond, i32 noundef %conv38)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body34
  %37 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  br label %for.cond32, !llvm.loop !34

for.end41:                                        ; preds = %for.cond32
  %38 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %target = getelementptr inbounds %struct.nstate, %struct.nstate* %38, i32 0, i32 1
  %39 = load %struct.nstate*, %struct.nstate** %target, align 8
  %id42 = getelementptr inbounds %struct.nstate, %struct.nstate* %39, i32 0, i32 5
  %40 = load i32, i32* %id42, align 8
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 noundef %40)
  br label %for.inc44

for.inc44:                                        ; preds = %for.end41, %if.then26
  %41 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %41, i32 0, i32 4
  %42 = load %struct.nstate*, %struct.nstate** %next, align 8
  store %struct.nstate* %42, %struct.nstate** %nstate, align 8
  br label %for.cond, !llvm.loop !35

for.end45:                                        ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dstate* @dstate_alloc(i32 noundef %bitset_size) #0 {
entry:
  %bitset_size.addr = alloca i32, align 4
  %dstate = alloca %struct.dstate*, align 8
  %.compoundliteral = alloca %struct.dstate, align 8
  store i32 %bitset_size, i32* %bitset_size.addr, align 4
  %0 = load i32, i32* %bitset_size.addr, align 4
  %conv = sext i32 %0 to i64
  %add = add i64 2064, %conv
  %call = call noalias i8* @malloc(i64 noundef %add) #11
  %1 = bitcast i8* %call to %struct.dstate*
  store %struct.dstate* %1, %struct.dstate** %dstate, align 8
  %2 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %3 = bitcast %struct.dstate* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 2064, i1 false)
  %id = getelementptr inbounds %struct.dstate, %struct.dstate* %.compoundliteral, i32 0, i32 3
  store i32 -1, i32* %id, align 4
  %4 = bitcast %struct.dstate* %2 to i8*
  %5 = bitcast %struct.dstate* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 2064, i1 false)
  %6 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %bitset = getelementptr inbounds %struct.dstate, %struct.dstate* %6, i32 0, i32 5
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %bitset, i64 0, i64 0
  %7 = load i32, i32* %bitset_size.addr, align 4
  %conv1 = sext i32 %7 to i64
  call void @llvm.memset.p0i8.i64(i8* align 8 %arraydecay, i8 0, i64 %conv1, i1 false)
  %8 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  ret %struct.dstate* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfa_get_size(%struct.dstate* noundef %dfa) #0 {
entry:
  %dfa.addr = alloca %struct.dstate*, align 8
  %dfa_size = alloca i32, align 4
  %dstate = alloca %struct.dstate*, align 8
  store %struct.dstate* %dfa, %struct.dstate** %dfa.addr, align 8
  store i32 0, i32* %dfa_size, align 4
  %0 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %0, %struct.dstate** %dstate, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %tobool = icmp ne %struct.dstate* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %dfa_size, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %dfa_size, align 4
  %3 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %id = getelementptr inbounds %struct.dstate, %struct.dstate* %3, i32 0, i32 3
  store i32 %2, i32* %id, align 4
  %cmp = icmp eq i32 %2, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #12
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %next = getelementptr inbounds %struct.dstate, %struct.dstate* %4, i32 0, i32 4
  %5 = load %struct.dstate*, %struct.dstate** %next, align 8
  store %struct.dstate* %5, %struct.dstate** %dstate, align 8
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %dfa_size, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leb128_put(i8** noundef %p, i32 noundef %n) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %n.addr = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %0, 7
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %n.addr, align 4
  %and = and i32 %1, 127
  %or = or i32 %and, 128
  %conv = trunc i32 %or to i8
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %2, align 8
  store i8 %conv, i8* %3, align 1
  %4 = load i32, i32* %n.addr, align 4
  %shr1 = ashr i32 %4, 7
  store i32 %shr1, i32* %n.addr, align 4
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %n.addr, align 4
  %conv2 = trunc i32 %5 to i8
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr3, i8** %6, align 8
  store i8 %conv2, i8* %7, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leb128_get(i8** noundef %p) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 127
  %3 = load i32, i32* %c, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %c, align 4
  %mul = mul nsw i32 %3, 7
  %shl = shl i32 %and, %mul
  %4 = load i32, i32* %n, align 4
  %or = or i32 %4, %shl
  store i32 %or, i32* %n, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %conv1 = zext i8 %7 to i32
  %and2 = and i32 %conv1, 128
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !38

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %n, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dfa_serialize(%struct.dstate* noundef %dfa, i64* noundef %size) #0 {
entry:
  %dfa.addr = alloca %struct.dstate*, align 8
  %size.addr = alloca i64*, align 8
  %dfa_size = alloca i32, align 4
  %ceil_log128 = alloca i32, align 4
  %s = alloca i32, align 4
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %dstate = alloca %struct.dstate*, align 8
  %len = alloca i64, align 8
  %new = alloca i8*, align 8
  %chr = alloca i32, align 4
  %start = alloca i32, align 4
  store %struct.dstate* %dfa, %struct.dstate** %dfa.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %call = call i32 @dfa_get_size(%struct.dstate* noundef %0)
  store i32 %call, i32* %dfa_size, align 4
  store i32 0, i32* %ceil_log128, align 4
  %1 = load i32, i32* %dfa_size, align 4
  store i32 %1, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32, i32* %s, align 4
  %shr = ashr i32 %2, 7
  store i32 %shr, i32* %s, align 4
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ceil_log128, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %ceil_log128, align 4
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %ceil_log128, align 4
  %inc1 = add nsw i32 %4, 1
  store i32 %inc1, i32* %ceil_log128, align 4
  %5 = load i32, i32* %ceil_log128, align 4
  %conv = sext i32 %5 to i64
  %call2 = call noalias i8* @malloc(i64 noundef %conv) #11
  store i8* %call2, i8** %buf, align 8
  %6 = load i8*, i8** %buf, align 8
  store i8* %6, i8** %p, align 8
  %7 = load i32, i32* %dfa_size, align 4
  call void @leb128_put(i8** noundef %p, i32 noundef %7)
  %8 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %8, %struct.dstate** %dstate, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.end
  %9 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %tobool4 = icmp ne %struct.dstate* %9, null
  br i1 %tobool4, label %for.body5, label %for.end34

for.body5:                                        ; preds = %for.cond3
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %len, align 8
  %add = add nsw i64 %13, 1
  %14 = load i32, i32* %ceil_log128, align 4
  %add6 = add nsw i32 1, %14
  %mul = mul nsw i32 256, %add6
  %conv7 = sext i32 %mul to i64
  %add8 = add nsw i64 %add, %conv7
  %call9 = call i8* @realloc(i8* noundef %12, i64 noundef %add8) #11
  store i8* %call9, i8** %new, align 8
  %15 = load i8*, i8** %new, align 8
  store i8* %15, i8** %buf, align 8
  %16 = load i8*, i8** %new, align 8
  %17 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %add.ptr, i8** %p, align 8
  %18 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %18, i32 0, i32 1
  %19 = load i8, i8* %accepting, align 8
  %tobool10 = trunc i8 %19 to i1
  %conv11 = zext i1 %tobool10 to i32
  %shl = shl i32 %conv11, 1
  %20 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %terminating = getelementptr inbounds %struct.dstate, %struct.dstate* %20, i32 0, i32 2
  %21 = load i8, i8* %terminating, align 1
  %tobool12 = trunc i8 %21 to i1
  %conv13 = zext i1 %tobool12 to i32
  %or = or i32 %shl, %conv13
  %conv14 = trunc i32 %or to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv14, i8* %22, align 1
  store i32 0, i32* %chr, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %while.end, %for.body5
  %23 = load i32, i32* %chr, align 4
  %cmp = icmp slt i32 %23, 256
  br i1 %cmp, label %for.body17, label %for.end33

for.body17:                                       ; preds = %for.cond15
  %24 = load i32, i32* %chr, align 4
  store i32 %24, i32* %start, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body17
  %25 = load i32, i32* %chr, align 4
  %cmp18 = icmp slt i32 %25, 255
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %transitions = getelementptr inbounds %struct.dstate, %struct.dstate* %26, i32 0, i32 0
  %27 = load i32, i32* %chr, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions, i64 0, i64 %idxprom
  %28 = load %struct.dstate*, %struct.dstate** %arrayidx, align 8
  %29 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %transitions20 = getelementptr inbounds %struct.dstate, %struct.dstate* %29, i32 0, i32 0
  %30 = load i32, i32* %chr, align 4
  %add21 = add nsw i32 %30, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions20, i64 0, i64 %idxprom22
  %31 = load %struct.dstate*, %struct.dstate** %arrayidx23, align 8
  %cmp24 = icmp eq %struct.dstate* %28, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load i32, i32* %chr, align 4
  %inc26 = add nsw i32 %33, 1
  store i32 %inc26, i32* %chr, align 4
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %land.end
  %34 = load i32, i32* %chr, align 4
  %35 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %34, %35
  %conv27 = trunc i32 %sub to i8
  %36 = load i8*, i8** %p, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8
  store i8 %conv27, i8* %36, align 1
  %37 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %transitions29 = getelementptr inbounds %struct.dstate, %struct.dstate* %37, i32 0, i32 0
  %38 = load i32, i32* %chr, align 4
  %inc30 = add nsw i32 %38, 1
  store i32 %inc30, i32* %chr, align 4
  %idxprom31 = sext i32 %38 to i64
  %arrayidx32 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions29, i64 0, i64 %idxprom31
  %39 = load %struct.dstate*, %struct.dstate** %arrayidx32, align 8
  %id = getelementptr inbounds %struct.dstate, %struct.dstate* %39, i32 0, i32 3
  %40 = load i32, i32* %id, align 4
  call void @leb128_put(i8** noundef %p, i32 noundef %40)
  br label %for.cond15, !llvm.loop !41

for.end33:                                        ; preds = %for.cond15
  br label %for.inc

for.inc:                                          ; preds = %for.end33
  %41 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %next = getelementptr inbounds %struct.dstate, %struct.dstate* %41, i32 0, i32 4
  %42 = load %struct.dstate*, %struct.dstate** %next, align 8
  store %struct.dstate* %42, %struct.dstate** %dstate, align 8
  br label %for.cond3, !llvm.loop !42

for.end34:                                        ; preds = %for.cond3
  %43 = load i8*, i8** %p, align 8
  %44 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast35 = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast36 = ptrtoint i8* %44 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %45 = load i64*, i64** %size.addr, align 8
  store i64 %sub.ptr.sub37, i64* %45, align 8
  %46 = load i8*, i8** %buf, align 8
  %47 = load i8*, i8** %p, align 8
  %48 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast38 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %48 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %call41 = call i8* @realloc(i8* noundef %46, i64 noundef %sub.ptr.sub40) #11
  ret i8* %call41
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dstate* @dfa_deserialize(i8* noundef %buf, i64* noundef %size) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %dfa_size = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %id = alloca i32, align 4
  %id2 = alloca i32, align 4
  %chr = alloca i32, align 4
  %len = alloca i32, align 4
  %target = alloca %struct.dstate*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %call = call i32 @leb128_get(i8** noundef %p)
  store i32 %call, i32* %dfa_size, align 4
  %1 = load i32, i32* %dfa_size, align 4
  %2 = zext i32 %1 to i64
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** %saved_stack, align 8
  %vla = alloca %struct.dstate*, i64 %2, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %id, align 4
  %5 = load i32, i32* %dfa_size, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call %struct.dstate* @dstate_alloc(i32 noundef 0)
  %6 = load i32, i32* %id, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla, i64 %idxprom
  store %struct.dstate* %call1, %struct.dstate** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %id, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %id2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc36, %for.end
  %8 = load i32, i32* %id2, align 4
  %9 = load i32, i32* %dfa_size, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end38

for.body5:                                        ; preds = %for.cond3
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %shr = ashr i32 %conv, 1
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  %12 = load i32, i32* %id2, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla, i64 %idxprom6
  %13 = load %struct.dstate*, %struct.dstate** %arrayidx7, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %13, i32 0, i32 1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %accepting, align 8
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv8 = zext i8 %15 to i32
  %and9 = and i32 %conv8, 1
  %tobool10 = icmp ne i32 %and9, 0
  %16 = load i32, i32* %id2, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla, i64 %idxprom11
  %17 = load %struct.dstate*, %struct.dstate** %arrayidx12, align 8
  %terminating = getelementptr inbounds %struct.dstate, %struct.dstate* %17, i32 0, i32 2
  %frombool13 = zext i1 %tobool10 to i8
  store i8 %frombool13, i8* %terminating, align 1
  store i32 0, i32* %chr, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %do.end, %for.body5
  %18 = load i32, i32* %chr, align 4
  %cmp15 = icmp slt i32 %18, 256
  br i1 %cmp15, label %for.body17, label %for.end29

for.body17:                                       ; preds = %for.cond14
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv19 = zext i8 %20 to i32
  store i32 %conv19, i32* %len, align 4
  %call20 = call i32 @leb128_get(i8** noundef %p)
  %idxprom21 = sext i32 %call20 to i64
  %arrayidx22 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla, i64 %idxprom21
  %21 = load %struct.dstate*, %struct.dstate** %arrayidx22, align 8
  store %struct.dstate* %21, %struct.dstate** %target, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body17
  %22 = load %struct.dstate*, %struct.dstate** %target, align 8
  %23 = load i32, i32* %id2, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla, i64 %idxprom23
  %24 = load %struct.dstate*, %struct.dstate** %arrayidx24, align 8
  %transitions = getelementptr inbounds %struct.dstate, %struct.dstate* %24, i32 0, i32 0
  %25 = load i32, i32* %chr, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, i32* %chr, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions, i64 0, i64 %idxprom26
  store %struct.dstate* %22, %struct.dstate** %arrayidx27, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %26 = load i32, i32* %len, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %len, align 4
  %tobool28 = icmp ne i32 %26, 0
  br i1 %tobool28, label %do.body, label %do.end, !llvm.loop !44

do.end:                                           ; preds = %do.cond
  br label %for.cond14, !llvm.loop !45

for.end29:                                        ; preds = %for.cond14
  %27 = load i32, i32* %id2, align 4
  %cmp30 = icmp ne i32 %27, 0
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.end29
  %28 = load i32, i32* %id2, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla, i64 %idxprom32
  %29 = load %struct.dstate*, %struct.dstate** %arrayidx33, align 8
  %30 = load i32, i32* %id2, align 4
  %sub = sub nsw i32 %30, 1
  %idxprom34 = sext i32 %sub to i64
  %arrayidx35 = getelementptr inbounds %struct.dstate*, %struct.dstate** %vla, i64 %idxprom34
  %31 = load %struct.dstate*, %struct.dstate** %arrayidx35, align 8
  %next = getelementptr inbounds %struct.dstate, %struct.dstate* %31, i32 0, i32 4
  store %struct.dstate* %29, %struct.dstate** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end29
  br label %for.inc36

for.inc36:                                        ; preds = %if.end
  %32 = load i32, i32* %id2, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %id2, align 4
  br label %for.cond3, !llvm.loop !46

for.end38:                                        ; preds = %for.cond3
  %33 = load i8*, i8** %p, align 8
  %34 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %35 = load i64*, i64** %size.addr, align 8
  store i64 %sub.ptr.sub, i64* %35, align 8
  %36 = load %struct.dstate*, %struct.dstate** %vla, align 16
  %37 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %37)
  ret %struct.dstate* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfa_dump(%struct.dstate* noundef %dfa) #0 {
entry:
  %dfa.addr = alloca %struct.dstate*, align 8
  %ds1 = alloca %struct.dstate*, align 8
  %ds2 = alloca %struct.dstate*, align 8
  %empty = alloca i8, align 1
  %transitions = alloca [32 x i8], align 16
  %chr = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.dstate* %dfa, %struct.dstate** %dfa.addr, align 8
  %0 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %call = call i32 @dfa_get_size(%struct.dstate* noundef %0)
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %1 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %id = getelementptr inbounds %struct.dstate, %struct.dstate* %1, i32 0, i32 3
  %2 = load i32, i32* %id, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2)
  %3 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %3, %struct.dstate** %ds1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %4 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %tobool = icmp ne %struct.dstate* %4, null
  br i1 %tobool, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  %5 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %5, i32 0, i32 1
  %6 = load i8, i8* %accepting, align 8
  %tobool3 = trunc i8 %6 to i1
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id4 = getelementptr inbounds %struct.dstate, %struct.dstate* %7, i32 0, i32 3
  %8 = load i32, i32* %id4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %9, %struct.dstate** %ds2, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc33, %if.end
  %10 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %tobool7 = icmp ne %struct.dstate* %10, null
  br i1 %tobool7, label %for.body8, label %for.end34

for.body8:                                        ; preds = %for.cond6
  store i8 1, i8* %empty, align 1
  %11 = bitcast [32 x i8]* %transitions to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  store i32 0, i32* %chr, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body8
  %12 = load i32, i32* %chr, align 4
  %cmp = icmp slt i32 %12, 256
  br i1 %cmp, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond9
  %13 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %transitions11 = getelementptr inbounds %struct.dstate, %struct.dstate* %13, i32 0, i32 0
  %14 = load i32, i32* %chr, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions11, i64 0, i64 %idxprom
  %15 = load %struct.dstate*, %struct.dstate** %arrayidx, align 8
  %16 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %cmp12 = icmp eq %struct.dstate* %15, %16
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body10
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %transitions, i64 0, i64 0
  %17 = load i32, i32* %chr, align 4
  call void @bitset_set(i8* noundef %arraydecay, i32 noundef %17)
  store i8 0, i8* %empty, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %18 = load i32, i32* %chr, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %chr, align 4
  br label %for.cond9, !llvm.loop !47

for.end:                                          ; preds = %for.cond9
  %19 = load i8, i8* %empty, align 1
  %tobool15 = trunc i8 %19 to i1
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  br label %for.inc33

if.end17:                                         ; preds = %for.end
  %20 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id18 = getelementptr inbounds %struct.dstate, %struct.dstate* %20, i32 0, i32 3
  %21 = load i32, i32* %id18, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %21)
  %arraydecay20 = getelementptr inbounds [32 x i8], [32 x i8]* %transitions, i64 0, i64 0
  %call21 = call i8* @symset_fmt(i8* noundef %arraydecay20)
  store i8* %call21, i8** %fmt, align 8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc29, %if.end17
  %22 = load i8*, i8** %fmt, align 8
  %23 = load i8, i8* %22, align 1
  %tobool23 = icmp ne i8 %23, 0
  br i1 %tobool23, label %for.body24, label %for.end30

for.body24:                                       ; preds = %for.cond22
  %24 = load i8*, i8** %fmt, align 8
  %25 = load i8, i8* %24, align 1
  %conv = sext i8 %25 to i32
  %call25 = call i8* @strchr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv) #9
  %tobool26 = icmp ne i8* %call25, null
  %26 = zext i1 %tobool26 to i64
  %cond = select i1 %tobool26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %27 = load i8*, i8** %fmt, align 8
  %28 = load i8, i8* %27, align 1
  %conv27 = sext i8 %28 to i32
  %call28 = call i32 (i8*, ...) @printf(i8* noundef %cond, i32 noundef %conv27)
  br label %for.inc29

for.inc29:                                        ; preds = %for.body24
  %29 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  br label %for.cond22, !llvm.loop !48

for.end30:                                        ; preds = %for.cond22
  %30 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %id31 = getelementptr inbounds %struct.dstate, %struct.dstate* %30, i32 0, i32 3
  %31 = load i32, i32* %id31, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 noundef %31)
  br label %for.inc33

for.inc33:                                        ; preds = %for.end30, %if.then16
  %32 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %next = getelementptr inbounds %struct.dstate, %struct.dstate* %32, i32 0, i32 4
  %33 = load %struct.dstate*, %struct.dstate** %next, align 8
  store %struct.dstate* %33, %struct.dstate** %ds2, align 8
  br label %for.cond6, !llvm.loop !49

for.end34:                                        ; preds = %for.cond6
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %34 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %next36 = getelementptr inbounds %struct.dstate, %struct.dstate* %34, i32 0, i32 4
  %35 = load %struct.dstate*, %struct.dstate** %next36, align 8
  store %struct.dstate* %35, %struct.dstate** %ds1, align 8
  br label %for.cond, !llvm.loop !50

for.end37:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_natural(i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %retval = alloca i32, align 4
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %natural = alloca i32, align 4
  %digit = alloca i32, align 4
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  %call = call i16** @__ctype_b_loc() #10
  %0 = load i16*, i16** %call, align 8
  %1 = load i8**, i8*** %regex.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %natural, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %call2 = call i16** @__ctype_b_loc() #10
  %6 = load i16*, i16** %call2, align 8
  %7 = load i8**, i8*** %regex.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 %idxprom4
  %10 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %10 to i32
  %and7 = and i32 %conv6, 2048
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8**, i8*** %regex.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %sub = sub nsw i32 %conv9, 48
  store i32 %sub, i32* %digit, align 4
  %14 = load i32, i32* %natural, align 4
  %cmp = icmp ugt i32 %14, 429496729
  br i1 %cmp, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i32, i32* %natural, align 4
  %mul = mul i32 %15, 10
  %16 = load i32, i32* %digit, align 4
  %sub11 = sub i32 -1, %16
  %cmp12 = icmp ugt i32 %mul, %sub11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %for.body
  %17 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8** %17, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false
  %18 = load i32, i32* %natural, align 4
  %mul16 = mul i32 %18, 10
  store i32 %mul16, i32* %natural, align 4
  %19 = load i32, i32* %digit, align 4
  %20 = load i32, i32* %natural, align 4
  %add = add i32 %20, %19
  store i32 %add, i32* %natural, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %21 = load i8**, i8*** %regex.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %21, align 8
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %natural, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then14, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parse_hexbyte(i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %retval = alloca i8, align 1
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %byte = alloca i8, align 1
  %i = alloca i32, align 4
  %chr = alloca i8, align 1
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  store i8 0, i8* %byte, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %byte, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 4
  %conv1 = trunc i32 %shl to i8
  store i8 %conv1, i8* %byte, align 1
  %2 = load i8**, i8*** %regex.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %chr, align 1
  %call = call i16** @__ctype_b_loc() #10
  %5 = load i16*, i16** %call, align 8
  %6 = load i8, i8* %chr, align 1
  %conv2 = sext i8 %6 to i32
  %idxprom = sext i32 %conv2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %7 to i32
  %and = and i32 %conv3, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i8, i8* %chr, align 1
  %conv4 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv4, 48
  %9 = load i8, i8* %byte, align 1
  %conv5 = zext i8 %9 to i32
  %or = or i32 %conv5, %sub
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %byte, align 1
  br label %if.end22

if.else:                                          ; preds = %for.body
  %call7 = call i16** @__ctype_b_loc() #10
  %10 = load i16*, i16** %call7, align 8
  %11 = load i8, i8* %chr, align 1
  %conv8 = sext i8 %11 to i32
  %idxprom9 = sext i32 %conv8 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 %idxprom9
  %12 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %12 to i32
  %and12 = and i32 %conv11, 4096
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.else21

if.then14:                                        ; preds = %if.else
  %13 = load i8, i8* %chr, align 1
  %conv15 = sext i8 %13 to i32
  %call16 = call i32 @tolower(i32 noundef %conv15) #9
  %sub17 = sub nsw i32 %call16, 97
  %add = add nsw i32 %sub17, 10
  %14 = load i8, i8* %byte, align 1
  %conv18 = zext i8 %14 to i32
  %or19 = or i32 %conv18, %add
  %conv20 = trunc i32 %or19 to i8
  store i8 %conv20, i8* %byte, align 1
  br label %if.end

if.else21:                                        ; preds = %if.else
  %15 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** %15, align 8
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then
  %16 = load i8**, i8*** %regex.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %16, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %19 = load i8, i8* %byte, align 1
  store i8 %19, i8* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.else21
  %20 = load i8, i8* %retval, align 1
  ret i8 %20
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parse_escape(i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %retval = alloca i8, align 1
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %chr = alloca i8, align 1
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  %0 = load i8**, i8*** %regex.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %call = call i8* @strchr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %conv) #9
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %regex.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8**, i8*** %regex.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr1, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  switch i32 %conv2, label %sw.epilog [
    i32 97, label %sw.bb
    i32 98, label %sw.bb3
    i32 102, label %sw.bb4
    i32 110, label %sw.bb5
    i32 114, label %sw.bb6
    i32 116, label %sw.bb7
    i32 118, label %sw.bb8
    i32 120, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  store i8 7, i8* %retval, align 1
  br label %return

sw.bb3:                                           ; preds = %if.end
  store i8 8, i8* %retval, align 1
  br label %return

sw.bb4:                                           ; preds = %if.end
  store i8 12, i8* %retval, align 1
  br label %return

sw.bb5:                                           ; preds = %if.end
  store i8 10, i8* %retval, align 1
  br label %return

sw.bb6:                                           ; preds = %if.end
  store i8 13, i8* %retval, align 1
  br label %return

sw.bb7:                                           ; preds = %if.end
  store i8 9, i8* %retval, align 1
  br label %return

sw.bb8:                                           ; preds = %if.end
  store i8 11, i8* %retval, align 1
  br label %return

sw.bb9:                                           ; preds = %if.end
  %9 = load i8**, i8*** %regex.addr, align 8
  %10 = load i8**, i8*** %error.addr, align 8
  %call10 = call zeroext i8 @parse_hexbyte(i8** noundef %9, i8** noundef %10)
  store i8 %call10, i8* %chr, align 1
  %11 = load i8**, i8*** %error.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %tobool11 = icmp ne i8* %12, null
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb9
  store i8 0, i8* %retval, align 1
  br label %return

if.end13:                                         ; preds = %sw.bb9
  %13 = load i8, i8* %chr, align 1
  store i8 %13, i8* %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %if.end
  %14 = load i8**, i8*** %regex.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr14, i8** %14, align 8
  %16 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %16, align 8
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %if.end13, %if.then12, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb, %if.then
  %17 = load i8, i8* %retval, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parse_symbol(i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %retval = alloca i8, align 1
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %escape = alloca i8, align 1
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  %0 = load i8**, i8*** %regex.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %regex.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8
  %5 = load i8**, i8*** %regex.addr, align 8
  %6 = load i8**, i8*** %error.addr, align 8
  %call = call zeroext i8 @parse_escape(i8** noundef %5, i8** noundef %6)
  store i8 %call, i8* %escape, align 1
  %7 = load i8**, i8*** %error.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load i8, i8* %escape, align 1
  store i8 %9, i8* %retval, align 1
  br label %return

if.end3:                                          ; preds = %entry
  %10 = load i8**, i8*** %regex.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv4 = sext i8 %12 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  %13 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %13, align 8
  store i8 0, i8* %retval, align 1
  br label %return

if.end8:                                          ; preds = %if.end3
  %14 = load i8**, i8*** %regex.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %conv9 = sext i8 %16 to i32
  %call10 = call i8* @strchr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %conv9) #9
  %tobool11 = icmp ne i8* %call10, null
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  %17 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8** %17, align 8
  store i8 0, i8* %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end8
  %call14 = call i16** @__ctype_b_loc() #10
  %18 = load i16*, i16** %call14, align 8
  %19 = load i8**, i8*** %regex.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %conv15 = sext i8 %21 to i32
  %idxprom = sext i32 %conv15 to i64
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %22 = load i16, i16* %arrayidx, align 2
  %conv16 = zext i16 %22 to i32
  %and = and i32 %conv16, 16384
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end13
  %23 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8** %23, align 8
  store i8 0, i8* %retval, align 1
  br label %return

if.end19:                                         ; preds = %if.end13
  %24 = load i8**, i8*** %regex.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr20, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then12, %if.then7, %if.end, %if.then2
  %27 = load i8, i8* %retval, align 1
  ret i8 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_shorthand(i8* noundef %symset, i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %symset.addr = alloca i8*, align 8
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %chr = alloca i32, align 4
  %chr9 = alloca i32, align 4
  %chr26 = alloca i32, align 4
  %chr43 = alloca i32, align 4
  %chr60 = alloca i32, align 4
  %chr79 = alloca i32, align 4
  %chr105 = alloca i32, align 4
  store i8* %symset, i8** %symset.addr, align 8
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  %0 = load i8*, i8** %symset.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 32, i1 false)
  %1 = load i8**, i8*** %regex.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.end99

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %regex.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %4, align 8
  %6 = load i8**, i8*** %regex.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr2, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  switch i32 %conv3, label %sw.epilog [
    i32 100, label %sw.bb
    i32 68, label %sw.bb8
    i32 115, label %sw.bb25
    i32 83, label %sw.bb42
    i32 119, label %sw.bb59
    i32 87, label %sw.bb78
  ]

sw.bb:                                            ; preds = %if.then
  store i32 0, i32* %chr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %9 = load i32, i32* %chr, align 4
  %cmp4 = icmp slt i32 %9, 256
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i16** @__ctype_b_loc() #10
  %10 = load i16*, i16** %call, align 8
  %11 = load i32, i32* %chr, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %12 to i32
  %and = and i32 %conv6, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  %13 = load i8*, i8** %symset.addr, align 8
  %14 = load i32, i32* %chr, align 4
  call void @bitset_set(i8* noundef %13, i32 noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %chr, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %chr, align 4
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  br label %return

sw.bb8:                                           ; preds = %if.then
  store i32 0, i32* %chr9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc22, %sw.bb8
  %16 = load i32, i32* %chr9, align 4
  %cmp11 = icmp slt i32 %16, 256
  br i1 %cmp11, label %for.body13, label %for.end24

for.body13:                                       ; preds = %for.cond10
  %call14 = call i16** @__ctype_b_loc() #10
  %17 = load i16*, i16** %call14, align 8
  %18 = load i32, i32* %chr9, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds i16, i16* %17, i64 %idxprom15
  %19 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %19 to i32
  %and18 = and i32 %conv17, 2048
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %for.body13
  %20 = load i8*, i8** %symset.addr, align 8
  %21 = load i32, i32* %chr9, align 4
  call void @bitset_set(i8* noundef %20, i32 noundef %21)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %for.body13
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21
  %22 = load i32, i32* %chr9, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %chr9, align 4
  br label %for.cond10, !llvm.loop !54

for.end24:                                        ; preds = %for.cond10
  br label %return

sw.bb25:                                          ; preds = %if.then
  store i32 0, i32* %chr26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc39, %sw.bb25
  %23 = load i32, i32* %chr26, align 4
  %cmp28 = icmp slt i32 %23, 256
  br i1 %cmp28, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond27
  %call31 = call i16** @__ctype_b_loc() #10
  %24 = load i16*, i16** %call31, align 8
  %25 = load i32, i32* %chr26, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds i16, i16* %24, i64 %idxprom32
  %26 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %26 to i32
  %and35 = and i32 %conv34, 8192
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body30
  %27 = load i8*, i8** %symset.addr, align 8
  %28 = load i32, i32* %chr26, align 4
  call void @bitset_set(i8* noundef %27, i32 noundef %28)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %for.body30
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %29 = load i32, i32* %chr26, align 4
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, i32* %chr26, align 4
  br label %for.cond27, !llvm.loop !55

for.end41:                                        ; preds = %for.cond27
  br label %return

sw.bb42:                                          ; preds = %if.then
  store i32 0, i32* %chr43, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc56, %sw.bb42
  %30 = load i32, i32* %chr43, align 4
  %cmp45 = icmp slt i32 %30, 256
  br i1 %cmp45, label %for.body47, label %for.end58

for.body47:                                       ; preds = %for.cond44
  %call48 = call i16** @__ctype_b_loc() #10
  %31 = load i16*, i16** %call48, align 8
  %32 = load i32, i32* %chr43, align 4
  %idxprom49 = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds i16, i16* %31, i64 %idxprom49
  %33 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %33 to i32
  %and52 = and i32 %conv51, 8192
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %for.body47
  %34 = load i8*, i8** %symset.addr, align 8
  %35 = load i32, i32* %chr43, align 4
  call void @bitset_set(i8* noundef %34, i32 noundef %35)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %for.body47
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %36 = load i32, i32* %chr43, align 4
  %inc57 = add nsw i32 %36, 1
  store i32 %inc57, i32* %chr43, align 4
  br label %for.cond44, !llvm.loop !56

for.end58:                                        ; preds = %for.cond44
  br label %return

sw.bb59:                                          ; preds = %if.then
  store i32 0, i32* %chr60, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc75, %sw.bb59
  %37 = load i32, i32* %chr60, align 4
  %cmp62 = icmp slt i32 %37, 256
  br i1 %cmp62, label %for.body64, label %for.end77

for.body64:                                       ; preds = %for.cond61
  %38 = load i32, i32* %chr60, align 4
  %cmp65 = icmp eq i32 %38, 95
  br i1 %cmp65, label %if.then73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body64
  %call67 = call i16** @__ctype_b_loc() #10
  %39 = load i16*, i16** %call67, align 8
  %40 = load i32, i32* %chr60, align 4
  %idxprom68 = sext i32 %40 to i64
  %arrayidx69 = getelementptr inbounds i16, i16* %39, i64 %idxprom68
  %41 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %41 to i32
  %and71 = and i32 %conv70, 8
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %lor.lhs.false, %for.body64
  %42 = load i8*, i8** %symset.addr, align 8
  %43 = load i32, i32* %chr60, align 4
  call void @bitset_set(i8* noundef %42, i32 noundef %43)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %lor.lhs.false
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74
  %44 = load i32, i32* %chr60, align 4
  %inc76 = add nsw i32 %44, 1
  store i32 %inc76, i32* %chr60, align 4
  br label %for.cond61, !llvm.loop !57

for.end77:                                        ; preds = %for.cond61
  br label %return

sw.bb78:                                          ; preds = %if.then
  store i32 0, i32* %chr79, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc94, %sw.bb78
  %45 = load i32, i32* %chr79, align 4
  %cmp81 = icmp slt i32 %45, 256
  br i1 %cmp81, label %for.body83, label %for.end96

for.body83:                                       ; preds = %for.cond80
  %46 = load i32, i32* %chr79, align 4
  %cmp84 = icmp ne i32 %46, 95
  br i1 %cmp84, label %land.lhs.true, label %if.end93

land.lhs.true:                                    ; preds = %for.body83
  %call86 = call i16** @__ctype_b_loc() #10
  %47 = load i16*, i16** %call86, align 8
  %48 = load i32, i32* %chr79, align 4
  %idxprom87 = sext i32 %48 to i64
  %arrayidx88 = getelementptr inbounds i16, i16* %47, i64 %idxprom87
  %49 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %49 to i32
  %and90 = and i32 %conv89, 8
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %land.lhs.true
  %50 = load i8*, i8** %symset.addr, align 8
  %51 = load i32, i32* %chr79, align 4
  call void @bitset_set(i8* noundef %50, i32 noundef %51)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %land.lhs.true, %for.body83
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %52 = load i32, i32* %chr79, align 4
  %inc95 = add nsw i32 %52, 1
  store i32 %inc95, i32* %chr79, align 4
  br label %for.cond80, !llvm.loop !58

for.end96:                                        ; preds = %for.cond80
  br label %return

sw.epilog:                                        ; preds = %if.then
  %53 = load i8**, i8*** %regex.addr, align 8
  %54 = load i8*, i8** %53, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %incdec.ptr97, i8** %53, align 8
  %55 = load i8**, i8*** %regex.addr, align 8
  %56 = load i8*, i8** %55, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %incdec.ptr98, i8** %55, align 8
  br label %if.end99

if.end99:                                         ; preds = %sw.epilog, %entry
  %57 = load i8**, i8*** %regex.addr, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %conv100 = sext i8 %59 to i32
  %cmp101 = icmp eq i32 %conv100, 46
  br i1 %cmp101, label %if.then103, label %if.end117

if.then103:                                       ; preds = %if.end99
  %60 = load i8**, i8*** %regex.addr, align 8
  %61 = load i8*, i8** %60, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr104, i8** %60, align 8
  store i32 0, i32* %chr105, align 4
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc114, %if.then103
  %62 = load i32, i32* %chr105, align 4
  %cmp107 = icmp slt i32 %62, 256
  br i1 %cmp107, label %for.body109, label %for.end116

for.body109:                                      ; preds = %for.cond106
  %63 = load i32, i32* %chr105, align 4
  %cmp110 = icmp ne i32 %63, 10
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %for.body109
  %64 = load i8*, i8** %symset.addr, align 8
  %65 = load i32, i32* %chr105, align 4
  call void @bitset_set(i8* noundef %64, i32 noundef %65)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %for.body109
  br label %for.inc114

for.inc114:                                       ; preds = %if.end113
  %66 = load i32, i32* %chr105, align 4
  %inc115 = add nsw i32 %66, 1
  store i32 %inc115, i32* %chr105, align 4
  br label %for.cond106, !llvm.loop !59

for.end116:                                       ; preds = %for.cond106
  br label %return

if.end117:                                        ; preds = %if.end99
  %67 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8** %67, align 8
  br label %return

return:                                           ; preds = %if.end117, %for.end116, %for.end96, %for.end77, %for.end58, %for.end41, %for.end24, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_symset(i8* noundef %symset, i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %symset.addr = alloca i8*, align 8
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %complement = alloca i8, align 1
  %last_regex = alloca i8*, align 8
  %sub = alloca [32 x i8], align 16
  %i = alloca i32, align 4
  %sub40 = alloca [32 x i8], align 16
  %i45 = alloca i32, align 4
  %begin = alloca i8, align 1
  %end = alloca i8, align 1
  %chr = alloca i8, align 1
  %i92 = alloca i32, align 4
  store i8* %symset, i8** %symset.addr, align 8
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  store i8 0, i8* %complement, align 1
  %0 = load i8**, i8*** %regex.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 94
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %regex.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8
  store i8 1, i8* %complement, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8**, i8*** %regex.addr, align 8
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %last_regex, align 8
  %7 = load i8*, i8** %symset.addr, align 8
  %8 = load i8**, i8*** %regex.addr, align 8
  %9 = load i8**, i8*** %error.addr, align 8
  call void @parse_shorthand(i8* noundef %7, i8** noundef %8, i8** noundef %9)
  %10 = load i8**, i8*** %error.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %process_complement

if.end3:                                          ; preds = %if.end
  %12 = load i8**, i8*** %error.addr, align 8
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %last_regex, align 8
  %14 = load i8**, i8*** %regex.addr, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i8**, i8*** %regex.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %conv4 = sext i8 %17 to i32
  %cmp5 = icmp eq i32 %conv4, 91
  br i1 %cmp5, label %if.then7, label %if.end28

if.then7:                                         ; preds = %if.end3
  %18 = load i8**, i8*** %regex.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr8, i8** %18, align 8
  %20 = load i8*, i8** %symset.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 32, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then7
  %21 = load i8**, i8*** %regex.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %conv9 = sext i8 %23 to i32
  %call = call i8* @strchr(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv9) #9
  %tobool10 = icmp ne i8* %call, null
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %sub, i64 0, i64 0
  %24 = load i8**, i8*** %regex.addr, align 8
  %25 = load i8**, i8*** %error.addr, align 8
  call void @parse_symset(i8* noundef %arraydecay, i8** noundef %24, i8** noundef %25)
  %26 = load i8**, i8*** %error.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %tobool11 = icmp ne i8* %27, null
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.body
  br label %return

if.end13:                                         ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %28 = load i32, i32* %i, align 4
  %conv14 = sext i32 %28 to i64
  %cmp15 = icmp ult i64 %conv14, 32
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %sub, i64 0, i64 %idxprom
  %30 = load i8, i8* %arrayidx, align 1
  %conv17 = zext i8 %30 to i32
  %31 = load i8*, i8** %symset.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %32 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %31, i64 %idxprom18
  %33 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %33 to i32
  %or = or i32 %conv20, %conv17
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %arrayidx19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !61

while.end:                                        ; preds = %while.cond
  %35 = load i8**, i8*** %regex.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %conv22 = sext i8 %37 to i32
  %cmp23 = icmp ne i32 %conv22, 93
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %while.end
  %38 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8** %38, align 8
  br label %return

if.end26:                                         ; preds = %while.end
  %39 = load i8**, i8*** %regex.addr, align 8
  %40 = load i8*, i8** %39, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr27, i8** %39, align 8
  br label %process_complement

if.end28:                                         ; preds = %if.end3
  %41 = load i8*, i8** %last_regex, align 8
  %42 = load i8**, i8*** %regex.addr, align 8
  store i8* %41, i8** %42, align 8
  %43 = load i8**, i8*** %regex.addr, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %conv29 = sext i8 %45 to i32
  %cmp30 = icmp eq i32 %conv29, 60
  br i1 %cmp30, label %if.then32, label %if.end68

if.then32:                                        ; preds = %if.end28
  %46 = load i8**, i8*** %regex.addr, align 8
  %47 = load i8*, i8** %46, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr33, i8** %46, align 8
  %48 = load i8*, i8** %symset.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %48, i8 -1, i64 32, i1 false)
  br label %while.cond34

while.cond34:                                     ; preds = %for.end60, %if.then32
  %49 = load i8**, i8*** %regex.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %conv35 = sext i8 %51 to i32
  %call36 = call i8* @strchr(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv35) #9
  %tobool37 = icmp ne i8* %call36, null
  %lnot38 = xor i1 %tobool37, true
  br i1 %lnot38, label %while.body39, label %while.end61

while.body39:                                     ; preds = %while.cond34
  %arraydecay41 = getelementptr inbounds [32 x i8], [32 x i8]* %sub40, i64 0, i64 0
  %52 = load i8**, i8*** %regex.addr, align 8
  %53 = load i8**, i8*** %error.addr, align 8
  call void @parse_symset(i8* noundef %arraydecay41, i8** noundef %52, i8** noundef %53)
  %54 = load i8**, i8*** %error.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %tobool42 = icmp ne i8* %55, null
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %while.body39
  br label %return

if.end44:                                         ; preds = %while.body39
  store i32 0, i32* %i45, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc58, %if.end44
  %56 = load i32, i32* %i45, align 4
  %conv47 = sext i32 %56 to i64
  %cmp48 = icmp ult i64 %conv47, 32
  br i1 %cmp48, label %for.body50, label %for.end60

for.body50:                                       ; preds = %for.cond46
  %57 = load i32, i32* %i45, align 4
  %idxprom51 = sext i32 %57 to i64
  %arrayidx52 = getelementptr inbounds [32 x i8], [32 x i8]* %sub40, i64 0, i64 %idxprom51
  %58 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %58 to i32
  %59 = load i8*, i8** %symset.addr, align 8
  %60 = load i32, i32* %i45, align 4
  %idxprom54 = sext i32 %60 to i64
  %arrayidx55 = getelementptr inbounds i8, i8* %59, i64 %idxprom54
  %61 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %61 to i32
  %and = and i32 %conv56, %conv53
  %conv57 = trunc i32 %and to i8
  store i8 %conv57, i8* %arrayidx55, align 1
  br label %for.inc58

for.inc58:                                        ; preds = %for.body50
  %62 = load i32, i32* %i45, align 4
  %inc59 = add nsw i32 %62, 1
  store i32 %inc59, i32* %i45, align 4
  br label %for.cond46, !llvm.loop !62

for.end60:                                        ; preds = %for.cond46
  br label %while.cond34, !llvm.loop !63

while.end61:                                      ; preds = %while.cond34
  %63 = load i8**, i8*** %regex.addr, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %conv62 = sext i8 %65 to i32
  %cmp63 = icmp ne i32 %conv62, 62
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %while.end61
  %66 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8** %66, align 8
  br label %return

if.end66:                                         ; preds = %while.end61
  %67 = load i8**, i8*** %regex.addr, align 8
  %68 = load i8*, i8** %67, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr67, i8** %67, align 8
  br label %process_complement

if.end68:                                         ; preds = %if.end28
  %69 = load i8*, i8** %last_regex, align 8
  %70 = load i8**, i8*** %regex.addr, align 8
  store i8* %69, i8** %70, align 8
  %71 = load i8**, i8*** %regex.addr, align 8
  %72 = load i8**, i8*** %error.addr, align 8
  %call69 = call zeroext i8 @parse_symbol(i8** noundef %71, i8** noundef %72)
  store i8 %call69, i8* %begin, align 1
  %73 = load i8**, i8*** %error.addr, align 8
  %74 = load i8*, i8** %73, align 8
  %tobool70 = icmp ne i8* %74, null
  br i1 %tobool70, label %if.end89, label %if.then71

if.then71:                                        ; preds = %if.end68
  %75 = load i8, i8* %begin, align 1
  store i8 %75, i8* %end, align 1
  %76 = load i8**, i8*** %regex.addr, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %conv72 = sext i8 %78 to i32
  %cmp73 = icmp eq i32 %conv72, 45
  br i1 %cmp73, label %if.then75, label %if.end81

if.then75:                                        ; preds = %if.then71
  %79 = load i8**, i8*** %regex.addr, align 8
  %80 = load i8*, i8** %79, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr76, i8** %79, align 8
  %81 = load i8**, i8*** %regex.addr, align 8
  %82 = load i8**, i8*** %error.addr, align 8
  %call77 = call zeroext i8 @parse_symbol(i8** noundef %81, i8** noundef %82)
  store i8 %call77, i8* %end, align 1
  %83 = load i8**, i8*** %error.addr, align 8
  %84 = load i8*, i8** %83, align 8
  %tobool78 = icmp ne i8* %84, null
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.then75
  br label %return

if.end80:                                         ; preds = %if.then75
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then71
  %85 = load i8, i8* %end, align 1
  %inc82 = add i8 %85, 1
  store i8 %inc82, i8* %end, align 1
  %86 = load i8*, i8** %symset.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %86, i8 0, i64 32, i1 false)
  %87 = load i8, i8* %begin, align 1
  store i8 %87, i8* %chr, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end81
  %88 = load i8*, i8** %symset.addr, align 8
  %89 = load i8, i8* %chr, align 1
  %conv83 = zext i8 %89 to i32
  call void @bitset_set(i8* noundef %88, i32 noundef %conv83)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %90 = load i8, i8* %chr, align 1
  %inc84 = add i8 %90, 1
  store i8 %inc84, i8* %chr, align 1
  %conv85 = zext i8 %inc84 to i32
  %91 = load i8, i8* %end, align 1
  %conv86 = zext i8 %91 to i32
  %cmp87 = icmp ne i32 %conv85, %conv86
  br i1 %cmp87, label %do.body, label %do.end, !llvm.loop !64

do.end:                                           ; preds = %do.cond
  br label %process_complement

if.end89:                                         ; preds = %if.end68
  br label %return

process_complement:                               ; preds = %do.end, %if.end66, %if.end26, %if.then2
  %92 = load i8, i8* %complement, align 1
  %tobool90 = trunc i8 %92 to i1
  br i1 %tobool90, label %if.then91, label %if.end107

if.then91:                                        ; preds = %process_complement
  store i32 0, i32* %i92, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc104, %if.then91
  %93 = load i32, i32* %i92, align 4
  %conv94 = sext i32 %93 to i64
  %cmp95 = icmp ult i64 %conv94, 32
  br i1 %cmp95, label %for.body97, label %for.end106

for.body97:                                       ; preds = %for.cond93
  %94 = load i8*, i8** %symset.addr, align 8
  %95 = load i32, i32* %i92, align 4
  %idxprom98 = sext i32 %95 to i64
  %arrayidx99 = getelementptr inbounds i8, i8* %94, i64 %idxprom98
  %96 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %96 to i32
  %neg = xor i32 %conv100, -1
  %conv101 = trunc i32 %neg to i8
  %97 = load i8*, i8** %symset.addr, align 8
  %98 = load i32, i32* %i92, align 4
  %idxprom102 = sext i32 %98 to i64
  %arrayidx103 = getelementptr inbounds i8, i8* %97, i64 %idxprom102
  store i8 %conv101, i8* %arrayidx103, align 1
  br label %for.inc104

for.inc104:                                       ; preds = %for.body97
  %99 = load i32, i32* %i92, align 4
  %inc105 = add nsw i32 %99, 1
  store i32 %inc105, i32* %i92, align 4
  br label %for.cond93, !llvm.loop !65

for.end106:                                       ; preds = %for.cond93
  br label %if.end107

if.end107:                                        ; preds = %for.end106, %process_complement
  br label %return

return:                                           ; preds = %if.end107, %if.end89, %if.then79, %if.then65, %if.then43, %if.then25, %if.then12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_atom(%struct.nfa* noalias sret(%struct.nfa) align 8 %agg.result, i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %sub = alloca %struct.nfa, align 8
  %chars = alloca %struct.nfa, align 8
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  %0 = load i8**, i8*** %regex.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %regex.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8
  %5 = load i8**, i8*** %regex.addr, align 8
  %6 = load i8**, i8*** %error.addr, align 8
  call void @parse_regex(%struct.nfa* sret(%struct.nfa) align 8 %sub, i8** noundef %5, i8** noundef %6)
  %7 = load i8**, i8*** %error.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %9 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i8**, i8*** %regex.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv3 = sext i8 %12 to i32
  %cmp4 = icmp ne i32 %conv3, 41
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %13 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8** %13, align 8
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %sub)
  %14 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  br label %return

if.end7:                                          ; preds = %if.end
  %15 = load i8**, i8*** %regex.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr8, i8** %15, align 8
  %17 = bitcast %struct.nfa* %agg.result to i8*
  %18 = bitcast %struct.nfa* %sub to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  br label %return

if.end9:                                          ; preds = %entry
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %chars, i32 0, i32 0
  %call = call %struct.nstate* @nstate_alloc()
  store %struct.nstate* %call, %struct.nstate** %initial, align 8
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %chars, i32 0, i32 1
  %call10 = call %struct.nstate* @nstate_alloc()
  store %struct.nstate* %call10, %struct.nstate** %final, align 8
  %complemented = getelementptr inbounds %struct.nfa, %struct.nfa* %chars, i32 0, i32 2
  store i8 0, i8* %complemented, align 8
  %final11 = getelementptr inbounds %struct.nfa, %struct.nfa* %chars, i32 0, i32 1
  %19 = load %struct.nstate*, %struct.nstate** %final11, align 8
  %initial12 = getelementptr inbounds %struct.nfa, %struct.nfa* %chars, i32 0, i32 0
  %20 = load %struct.nstate*, %struct.nstate** %initial12, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %20, i32 0, i32 4
  store %struct.nstate* %19, %struct.nstate** %next, align 8
  %final13 = getelementptr inbounds %struct.nfa, %struct.nfa* %chars, i32 0, i32 1
  %21 = load %struct.nstate*, %struct.nstate** %final13, align 8
  %initial14 = getelementptr inbounds %struct.nfa, %struct.nfa* %chars, i32 0, i32 0
  %22 = load %struct.nstate*, %struct.nstate** %initial14, align 8
  %target = getelementptr inbounds %struct.nstate, %struct.nstate* %22, i32 0, i32 1
  store %struct.nstate* %21, %struct.nstate** %target, align 8
  %initial15 = getelementptr inbounds %struct.nfa, %struct.nfa* %chars, i32 0, i32 0
  %23 = load %struct.nstate*, %struct.nstate** %initial15, align 8
  %label = getelementptr inbounds %struct.nstate, %struct.nstate* %23, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %label, i64 0, i64 0
  %24 = load i8**, i8*** %regex.addr, align 8
  %25 = load i8**, i8*** %error.addr, align 8
  call void @parse_symset(i8* noundef %arraydecay, i8** noundef %24, i8** noundef %25)
  %26 = load i8**, i8*** %error.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %tobool16 = icmp ne i8* %27, null
  br i1 %tobool16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end9
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %chars)
  %28 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 24, i1 false)
  br label %return

if.end21:                                         ; preds = %if.end9
  %29 = bitcast %struct.nfa* %agg.result to i8*
  %30 = bitcast %struct.nfa* %chars to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 24, i1 false)
  br label %return

return:                                           ; preds = %if.end21, %if.then17, %if.end7, %if.then6, %if.then2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_regex(%struct.nfa* noalias sret(%struct.nfa) align 8 %agg.result, i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %re = alloca %struct.nfa, align 8
  %intersect = alloca i8, align 1
  %alt = alloca %struct.nfa, align 8
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  %0 = load i8**, i8*** %regex.addr, align 8
  %1 = load i8**, i8*** %error.addr, align 8
  call void @parse_term(%struct.nfa* sret(%struct.nfa) align 8 %re, i8** noundef %0, i8** noundef %1)
  %2 = load i8**, i8*** %error.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %5 = load i8**, i8*** %regex.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 124
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %8 = load i8**, i8*** %regex.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %conv2 = sext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv2, 38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %11 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %12 = load i8**, i8*** %regex.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %conv5 = sext i8 %14 to i32
  %cmp6 = icmp eq i32 %conv5, 38
  %frombool = zext i1 %cmp6 to i8
  store i8 %frombool, i8* %intersect, align 1
  %15 = load i8**, i8*** %regex.addr, align 8
  %16 = load i8**, i8*** %error.addr, align 8
  call void @parse_term(%struct.nfa* sret(%struct.nfa) align 8 %alt, i8** noundef %15, i8** noundef %16)
  %17 = load i8**, i8*** %error.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %tobool8 = icmp ne i8* %18, null
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %re)
  %19 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  br label %return

if.end10:                                         ; preds = %while.body
  %20 = load i8, i8* %intersect, align 1
  %tobool11 = trunc i8 %20 to i1
  %conv12 = zext i1 %tobool11 to i32
  %complemented = getelementptr inbounds %struct.nfa, %struct.nfa* %re, i32 0, i32 2
  %21 = load i8, i8* %complemented, align 8
  %tobool13 = trunc i8 %21 to i1
  %conv14 = zext i1 %tobool13 to i32
  %xor = xor i32 %conv14, %conv12
  %tobool15 = icmp ne i32 %xor, 0
  %frombool16 = zext i1 %tobool15 to i8
  store i8 %frombool16, i8* %complemented, align 8
  %22 = load i8, i8* %intersect, align 1
  %tobool17 = trunc i8 %22 to i1
  %conv18 = zext i1 %tobool17 to i32
  %complemented19 = getelementptr inbounds %struct.nfa, %struct.nfa* %alt, i32 0, i32 2
  %23 = load i8, i8* %complemented19, align 8
  %tobool20 = trunc i8 %23 to i1
  %conv21 = zext i1 %tobool20 to i32
  %xor22 = xor i32 %conv21, %conv18
  %tobool23 = icmp ne i32 %xor22, 0
  %frombool24 = zext i1 %tobool23 to i8
  store i8 %frombool24, i8* %complemented19, align 8
  call void @nfa_uncomplement(%struct.nfa* noundef %re)
  call void @nfa_uncomplement(%struct.nfa* noundef %alt)
  call void @nfa_pad_initial(%struct.nfa* noundef %re)
  call void @nfa_pad_final(%struct.nfa* noundef %alt)
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %alt, i32 0, i32 0
  %24 = load %struct.nstate*, %struct.nstate** %initial, align 8
  %initial25 = getelementptr inbounds %struct.nfa, %struct.nfa* %re, i32 0, i32 0
  %25 = load %struct.nstate*, %struct.nstate** %initial25, align 8
  %epsilon1 = getelementptr inbounds %struct.nstate, %struct.nstate* %25, i32 0, i32 3
  store %struct.nstate* %24, %struct.nstate** %epsilon1, align 8
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %alt, i32 0, i32 1
  %26 = load %struct.nstate*, %struct.nstate** %final, align 8
  %final26 = getelementptr inbounds %struct.nfa, %struct.nfa* %re, i32 0, i32 1
  %27 = load %struct.nstate*, %struct.nstate** %final26, align 8
  %epsilon0 = getelementptr inbounds %struct.nstate, %struct.nstate* %27, i32 0, i32 2
  store %struct.nstate* %26, %struct.nstate** %epsilon0, align 8
  %initial27 = getelementptr inbounds %struct.nfa, %struct.nfa* %alt, i32 0, i32 0
  %28 = load %struct.nstate*, %struct.nstate** %initial27, align 8
  %final28 = getelementptr inbounds %struct.nfa, %struct.nfa* %re, i32 0, i32 1
  %29 = load %struct.nstate*, %struct.nstate** %final28, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %29, i32 0, i32 4
  store %struct.nstate* %28, %struct.nstate** %next, align 8
  %final29 = getelementptr inbounds %struct.nfa, %struct.nfa* %alt, i32 0, i32 1
  %30 = load %struct.nstate*, %struct.nstate** %final29, align 8
  %final30 = getelementptr inbounds %struct.nfa, %struct.nfa* %re, i32 0, i32 1
  store %struct.nstate* %30, %struct.nstate** %final30, align 8
  %31 = load i8, i8* %intersect, align 1
  %tobool31 = trunc i8 %31 to i1
  %conv32 = zext i1 %tobool31 to i32
  %complemented33 = getelementptr inbounds %struct.nfa, %struct.nfa* %re, i32 0, i32 2
  %32 = load i8, i8* %complemented33, align 8
  %tobool34 = trunc i8 %32 to i1
  %conv35 = zext i1 %tobool34 to i32
  %xor36 = xor i32 %conv35, %conv32
  %tobool37 = icmp ne i32 %xor36, 0
  %frombool38 = zext i1 %tobool37 to i8
  store i8 %frombool38, i8* %complemented33, align 8
  br label %while.cond, !llvm.loop !66

while.end:                                        ; preds = %lor.end
  %33 = bitcast %struct.nfa* %agg.result to i8*
  %34 = bitcast %struct.nfa* %re to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 24, i1 false)
  br label %return

return:                                           ; preds = %while.end, %if.then9, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_factor(%struct.nfa* noalias sret(%struct.nfa) align 8 %agg.result, i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %atom = alloca %struct.nfa, align 8
  %last_regex = alloca i8*, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %max_unbounded = alloca i8, align 1
  %atoms = alloca %struct.nfa, align 8
  %i = alloca i32, align 4
  %clone = alloca %struct.nfa, align 8
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  %0 = load i8**, i8*** %regex.addr, align 8
  %1 = load i8**, i8*** %error.addr, align 8
  call void @parse_atom(%struct.nfa* sret(%struct.nfa) align 8 %atom, i8** noundef %0, i8** noundef %1)
  %2 = load i8**, i8*** %error.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %regex.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %8 = load i8**, i8*** %regex.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %8, align 8
  call void @nfa_uncomplement(%struct.nfa* noundef %atom)
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 0
  %10 = load %struct.nstate*, %struct.nstate** %initial, align 8
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 1
  %11 = load %struct.nstate*, %struct.nstate** %final, align 8
  %epsilon1 = getelementptr inbounds %struct.nstate, %struct.nstate* %11, i32 0, i32 3
  store %struct.nstate* %10, %struct.nstate** %epsilon1, align 8
  call void @nfa_pad_initial(%struct.nfa* noundef %atom)
  call void @nfa_pad_final(%struct.nfa* noundef %atom)
  %final3 = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 1
  %12 = load %struct.nstate*, %struct.nstate** %final3, align 8
  %initial4 = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 0
  %13 = load %struct.nstate*, %struct.nstate** %initial4, align 8
  %epsilon15 = getelementptr inbounds %struct.nstate, %struct.nstate* %13, i32 0, i32 3
  store %struct.nstate* %12, %struct.nstate** %epsilon15, align 8
  %14 = bitcast %struct.nfa* %agg.result to i8*
  %15 = bitcast %struct.nfa* %atom to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  br label %return

if.end6:                                          ; preds = %if.end
  %16 = load i8**, i8*** %regex.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %conv7 = sext i8 %18 to i32
  %cmp8 = icmp eq i32 %conv7, 43
  br i1 %cmp8, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end6
  %19 = load i8**, i8*** %regex.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr11, i8** %19, align 8
  call void @nfa_uncomplement(%struct.nfa* noundef %atom)
  %initial12 = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 0
  %21 = load %struct.nstate*, %struct.nstate** %initial12, align 8
  %final13 = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 1
  %22 = load %struct.nstate*, %struct.nstate** %final13, align 8
  %epsilon114 = getelementptr inbounds %struct.nstate, %struct.nstate* %22, i32 0, i32 3
  store %struct.nstate* %21, %struct.nstate** %epsilon114, align 8
  call void @nfa_pad_initial(%struct.nfa* noundef %atom)
  call void @nfa_pad_final(%struct.nfa* noundef %atom)
  %23 = bitcast %struct.nfa* %agg.result to i8*
  %24 = bitcast %struct.nfa* %atom to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 24, i1 false)
  br label %return

if.end15:                                         ; preds = %if.end6
  %25 = load i8**, i8*** %regex.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %conv16 = sext i8 %27 to i32
  %cmp17 = icmp eq i32 %conv16, 63
  br i1 %cmp17, label %if.then19, label %if.end29

if.then19:                                        ; preds = %if.end15
  %28 = load i8**, i8*** %regex.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr20, i8** %28, align 8
  call void @nfa_uncomplement(%struct.nfa* noundef %atom)
  %initial21 = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 0
  %30 = load %struct.nstate*, %struct.nstate** %initial21, align 8
  %epsilon122 = getelementptr inbounds %struct.nstate, %struct.nstate* %30, i32 0, i32 3
  %31 = load %struct.nstate*, %struct.nstate** %epsilon122, align 8
  %tobool23 = icmp ne %struct.nstate* %31, null
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then19
  call void @nfa_pad_initial(%struct.nfa* noundef %atom)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then19
  %final26 = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 1
  %32 = load %struct.nstate*, %struct.nstate** %final26, align 8
  %initial27 = getelementptr inbounds %struct.nfa, %struct.nfa* %atom, i32 0, i32 0
  %33 = load %struct.nstate*, %struct.nstate** %initial27, align 8
  %epsilon128 = getelementptr inbounds %struct.nstate, %struct.nstate* %33, i32 0, i32 3
  store %struct.nstate* %32, %struct.nstate** %epsilon128, align 8
  %34 = bitcast %struct.nfa* %agg.result to i8*
  %35 = bitcast %struct.nfa* %atom to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false)
  br label %return

if.end29:                                         ; preds = %if.end15
  %36 = load i8**, i8*** %regex.addr, align 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %last_regex, align 8
  %38 = load i8**, i8*** %regex.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %conv30 = sext i8 %40 to i32
  %cmp31 = icmp eq i32 %conv30, 123
  br i1 %cmp31, label %if.then33, label %if.end107

if.then33:                                        ; preds = %if.end29
  %41 = load i8**, i8*** %regex.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr34, i8** %41, align 8
  call void @nfa_uncomplement(%struct.nfa* noundef %atom)
  %43 = load i8**, i8*** %regex.addr, align 8
  %44 = load i8**, i8*** %error.addr, align 8
  %call = call i32 @parse_natural(i8** noundef %43, i8** noundef %44)
  store i32 %call, i32* %min, align 4
  %45 = load i8**, i8*** %error.addr, align 8
  %46 = load i8*, i8** %45, align 8
  %tobool35 = icmp ne i8* %46, null
  br i1 %tobool35, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then33
  %47 = load i32, i32* %min, align 4
  %cmp36 = icmp eq i32 %47, -1
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %land.lhs.true
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %atom)
  %48 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 24, i1 false)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then33
  %49 = load i8**, i8*** %error.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %tobool41 = icmp ne i8* %50, null
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.else
  store i32 0, i32* %min, align 4
  %51 = load i8**, i8*** %error.addr, align 8
  store i8* null, i8** %51, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.else
  br label %if.end44

if.end44:                                         ; preds = %if.end43
  %52 = load i32, i32* %min, align 4
  store i32 %52, i32* %max, align 4
  store i8 0, i8* %max_unbounded, align 1
  %53 = load i8**, i8*** %regex.addr, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %conv45 = sext i8 %55 to i32
  %cmp46 = icmp eq i32 %conv45, 44
  br i1 %cmp46, label %if.then48, label %if.end63

if.then48:                                        ; preds = %if.end44
  %56 = load i8**, i8*** %regex.addr, align 8
  %57 = load i8*, i8** %56, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr49, i8** %56, align 8
  %58 = load i8**, i8*** %regex.addr, align 8
  %59 = load i8**, i8*** %error.addr, align 8
  %call50 = call i32 @parse_natural(i8** noundef %58, i8** noundef %59)
  store i32 %call50, i32* %max, align 4
  %60 = load i8**, i8*** %error.addr, align 8
  %61 = load i8*, i8** %60, align 8
  %tobool51 = icmp ne i8* %61, null
  br i1 %tobool51, label %land.lhs.true52, label %if.else58

land.lhs.true52:                                  ; preds = %if.then48
  %62 = load i32, i32* %max, align 4
  %cmp53 = icmp eq i32 %62, -1
  br i1 %cmp53, label %if.then55, label %if.else58

if.then55:                                        ; preds = %land.lhs.true52
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %atom)
  %63 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %63, i8 0, i64 24, i1 false)
  br label %return

if.else58:                                        ; preds = %land.lhs.true52, %if.then48
  %64 = load i8**, i8*** %error.addr, align 8
  %65 = load i8*, i8** %64, align 8
  %tobool59 = icmp ne i8* %65, null
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.else58
  store i8 1, i8* %max_unbounded, align 1
  %66 = load i8**, i8*** %error.addr, align 8
  store i8* null, i8** %66, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.else58
  br label %if.end62

if.end62:                                         ; preds = %if.end61
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end44
  %67 = load i8**, i8*** %regex.addr, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  %conv64 = sext i8 %69 to i32
  %cmp65 = icmp ne i32 %conv64, 125
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end63
  %70 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8** %70, align 8
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %atom)
  %71 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %71, i8 0, i64 24, i1 false)
  br label %return

if.end70:                                         ; preds = %if.end63
  %72 = load i8**, i8*** %regex.addr, align 8
  %73 = load i8*, i8** %72, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr71, i8** %72, align 8
  %74 = load i32, i32* %min, align 4
  %75 = load i32, i32* %max, align 4
  %cmp72 = icmp ugt i32 %74, %75
  br i1 %cmp72, label %land.lhs.true74, label %if.end79

land.lhs.true74:                                  ; preds = %if.end70
  %76 = load i8, i8* %max_unbounded, align 1
  %tobool75 = trunc i8 %76 to i1
  br i1 %tobool75, label %if.end79, label %if.then76

if.then76:                                        ; preds = %land.lhs.true74
  %77 = load i8*, i8** %last_regex, align 8
  %78 = load i8**, i8*** %regex.addr, align 8
  store i8* %77, i8** %78, align 8
  %79 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i8** %79, align 8
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %atom)
  %80 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %80, i8 0, i64 24, i1 false)
  br label %return

if.end79:                                         ; preds = %land.lhs.true74, %if.end70
  %81 = bitcast %struct.nfa* %atoms to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %81, i8 0, i64 24, i1 false)
  %call80 = call %struct.nstate* @nstate_alloc()
  %final81 = getelementptr inbounds %struct.nfa, %struct.nfa* %atoms, i32 0, i32 1
  store %struct.nstate* %call80, %struct.nstate** %final81, align 8
  %initial82 = getelementptr inbounds %struct.nfa, %struct.nfa* %atoms, i32 0, i32 0
  store %struct.nstate* %call80, %struct.nstate** %initial82, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end79
  %82 = load i8, i8* %max_unbounded, align 1
  %tobool83 = trunc i8 %82 to i1
  br i1 %tobool83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %min, align 4
  %cmp85 = icmp ule i32 %83, %84
  %conv86 = zext i1 %cmp85 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %max, align 4
  %cmp87 = icmp ult i32 %85, %86
  %conv88 = zext i1 %cmp87 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv86, %cond.true ], [ %conv88, %cond.false ]
  %tobool89 = icmp ne i32 %cond, 0
  br i1 %tobool89, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  call void @nfa_clone(%struct.nfa* sret(%struct.nfa) align 8 %clone, %struct.nfa* noundef byval(%struct.nfa) align 8 %atom)
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %min, align 4
  %cmp90 = icmp uge i32 %87, %88
  br i1 %cmp90, label %if.then92, label %if.end102

if.then92:                                        ; preds = %for.body
  %89 = load i8, i8* %max_unbounded, align 1
  %tobool93 = trunc i8 %89 to i1
  br i1 %tobool93, label %if.then94, label %if.end98

if.then94:                                        ; preds = %if.then92
  %initial95 = getelementptr inbounds %struct.nfa, %struct.nfa* %clone, i32 0, i32 0
  %90 = load %struct.nstate*, %struct.nstate** %initial95, align 8
  %final96 = getelementptr inbounds %struct.nfa, %struct.nfa* %clone, i32 0, i32 1
  %91 = load %struct.nstate*, %struct.nstate** %final96, align 8
  %epsilon197 = getelementptr inbounds %struct.nstate, %struct.nstate* %91, i32 0, i32 3
  store %struct.nstate* %90, %struct.nstate** %epsilon197, align 8
  call void @nfa_pad_initial(%struct.nfa* noundef %clone)
  call void @nfa_pad_final(%struct.nfa* noundef %clone)
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.then92
  %final99 = getelementptr inbounds %struct.nfa, %struct.nfa* %clone, i32 0, i32 1
  %92 = load %struct.nstate*, %struct.nstate** %final99, align 8
  %initial100 = getelementptr inbounds %struct.nfa, %struct.nfa* %clone, i32 0, i32 0
  %93 = load %struct.nstate*, %struct.nstate** %initial100, align 8
  %epsilon1101 = getelementptr inbounds %struct.nstate, %struct.nstate* %93, i32 0, i32 3
  store %struct.nstate* %92, %struct.nstate** %epsilon1101, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.end98, %for.body
  call void @nfa_concat(%struct.nfa* noundef %atoms, %struct.nfa* noundef byval(%struct.nfa) align 8 %clone)
  %94 = load i32, i32* %i, align 4
  %cmp103 = icmp eq i32 %94, -1
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end102
  br label %for.end

if.end106:                                        ; preds = %if.end102
  br label %for.inc

for.inc:                                          ; preds = %if.end106
  %95 = load i32, i32* %i, align 4
  %inc = add i32 %95, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %if.then105, %cond.end
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %atom)
  %96 = bitcast %struct.nfa* %agg.result to i8*
  %97 = bitcast %struct.nfa* %atoms to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 24, i1 false)
  br label %return

if.end107:                                        ; preds = %if.end29
  %98 = bitcast %struct.nfa* %agg.result to i8*
  %99 = bitcast %struct.nfa* %atom to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 24, i1 false)
  br label %return

return:                                           ; preds = %if.end107, %for.end, %if.then76, %if.then67, %if.then55, %if.then38, %if.end25, %if.then10, %if.then2, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_term(%struct.nfa* noalias sret(%struct.nfa) align 8 %agg.result, i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %complement = alloca i8, align 1
  %term = alloca %struct.nfa, align 8
  %factor = alloca %struct.nfa, align 8
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  store i8 0, i8* %complement, align 1
  %0 = load i8**, i8*** %regex.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 126
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %regex.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8
  store i8 1, i8* %complement, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast %struct.nfa* %term to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %call = call %struct.nstate* @nstate_alloc()
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %term, i32 0, i32 1
  store %struct.nstate* %call, %struct.nstate** %final, align 8
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %term, i32 0, i32 0
  store %struct.nstate* %call, %struct.nstate** %initial, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end
  %6 = load i8**, i8*** %regex.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %call3 = call i8* @strchr(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv2) #9
  %tobool = icmp ne i8* %call3, null
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8**, i8*** %regex.addr, align 8
  %10 = load i8**, i8*** %error.addr, align 8
  call void @parse_factor(%struct.nfa* sret(%struct.nfa) align 8 %factor, i8** noundef %9, i8** noundef %10)
  %11 = load i8**, i8*** %error.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %tobool4 = icmp ne i8* %12, null
  br i1 %tobool4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %while.body
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %term)
  %13 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  br label %return

if.end8:                                          ; preds = %while.body
  call void @nfa_uncomplement(%struct.nfa* noundef %factor)
  call void @nfa_concat(%struct.nfa* noundef %term, %struct.nfa* noundef byval(%struct.nfa) align 8 %factor)
  br label %while.cond, !llvm.loop !68

while.end:                                        ; preds = %while.cond
  %14 = load i8, i8* %complement, align 1
  %tobool9 = trunc i8 %14 to i1
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.end
  %complemented = getelementptr inbounds %struct.nfa, %struct.nfa* %term, i32 0, i32 2
  store i8 1, i8* %complemented, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %while.end
  %15 = bitcast %struct.nfa* %agg.result to i8*
  %16 = bitcast %struct.nfa* %term to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  br label %return

return:                                           ; preds = %if.end11, %if.then5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltre_parse(%struct.nfa* noalias sret(%struct.nfa) align 8 %agg.result, i8** noundef %regex, i8** noundef %error) #0 {
entry:
  %regex.addr = alloca i8**, align 8
  %error.addr = alloca i8**, align 8
  %e = alloca i8*, align 8
  %r = alloca i8*, align 8
  %nfa = alloca %struct.nfa, align 8
  store i8** %regex, i8*** %regex.addr, align 8
  store i8** %error, i8*** %error.addr, align 8
  %0 = load i8**, i8*** %regex.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %r, align 8
  %2 = load i8**, i8*** %error.addr, align 8
  %cmp = icmp eq i8** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8** %e, i8*** %error.addr, align 8
  store i8** %r, i8*** %regex.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8**, i8*** %error.addr, align 8
  store i8* null, i8** %3, align 8
  %4 = load i8**, i8*** %regex.addr, align 8
  %5 = load i8**, i8*** %error.addr, align 8
  call void @parse_regex(%struct.nfa* sret(%struct.nfa) align 8 %nfa, i8** noundef %4, i8** noundef %5)
  %6 = load i8**, i8*** %error.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %8 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  br label %return

if.end2:                                          ; preds = %if.end
  %9 = load i8**, i8*** %regex.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  %12 = load i8**, i8*** %error.addr, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i8** %12, align 8
  call void @nfa_free(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa)
  %13 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  br label %return

if.end6:                                          ; preds = %if.end2
  %14 = bitcast %struct.nfa* %agg.result to i8*
  %15 = bitcast %struct.nfa* %nfa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltre_fixed_string(%struct.nfa* noalias sret(%struct.nfa) align 8 %agg.result, i8* noundef %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %initial1 = alloca %struct.nstate*, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = bitcast %struct.nfa* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false)
  %call = call %struct.nstate* @nstate_alloc()
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  store %struct.nstate* %call, %struct.nstate** %final, align 8
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 0
  store %struct.nstate* %call, %struct.nstate** %initial, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %final2 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  %3 = load %struct.nstate*, %struct.nstate** %final2, align 8
  store %struct.nstate* %3, %struct.nstate** %initial1, align 8
  %call3 = call %struct.nstate* @nstate_alloc()
  %final4 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  store %struct.nstate* %call3, %struct.nstate** %final4, align 8
  %final5 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  %4 = load %struct.nstate*, %struct.nstate** %final5, align 8
  %5 = load %struct.nstate*, %struct.nstate** %initial1, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %5, i32 0, i32 4
  store %struct.nstate* %4, %struct.nstate** %next, align 8
  %final6 = getelementptr inbounds %struct.nfa, %struct.nfa* %agg.result, i32 0, i32 1
  %6 = load %struct.nstate*, %struct.nstate** %final6, align 8
  %7 = load %struct.nstate*, %struct.nstate** %initial1, align 8
  %target = getelementptr inbounds %struct.nstate, %struct.nstate* %7, i32 0, i32 1
  store %struct.nstate* %6, %struct.nstate** %target, align 8
  %8 = load %struct.nstate*, %struct.nstate** %initial1, align 8
  %label = getelementptr inbounds %struct.nstate, %struct.nstate* %8, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %label, i64 0, i64 0
  %9 = load i8*, i8** %string.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  call void @bitset_set(i8* noundef %arraydecay, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltre_partial(%struct.nfa* noundef %nfa) #0 {
entry:
  %nfa.addr = alloca %struct.nfa*, align 8
  store %struct.nfa* %nfa, %struct.nfa** %nfa.addr, align 8
  %0 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  call void @nfa_uncomplement(%struct.nfa* noundef %0)
  %1 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  call void @nfa_pad_initial(%struct.nfa* noundef %1)
  %2 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  call void @nfa_pad_final(%struct.nfa* noundef %2)
  %3 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %3, i32 0, i32 0
  %4 = load %struct.nstate*, %struct.nstate** %initial, align 8
  %5 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %initial1 = getelementptr inbounds %struct.nfa, %struct.nfa* %5, i32 0, i32 0
  %6 = load %struct.nstate*, %struct.nstate** %initial1, align 8
  %target = getelementptr inbounds %struct.nstate, %struct.nstate* %6, i32 0, i32 1
  store %struct.nstate* %4, %struct.nstate** %target, align 8
  %7 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %7, i32 0, i32 1
  %8 = load %struct.nstate*, %struct.nstate** %final, align 8
  %9 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %final2 = getelementptr inbounds %struct.nfa, %struct.nfa* %9, i32 0, i32 1
  %10 = load %struct.nstate*, %struct.nstate** %final2, align 8
  %target3 = getelementptr inbounds %struct.nstate, %struct.nstate* %10, i32 0, i32 1
  store %struct.nstate* %8, %struct.nstate** %target3, align 8
  %11 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %initial4 = getelementptr inbounds %struct.nfa, %struct.nfa* %11, i32 0, i32 0
  %12 = load %struct.nstate*, %struct.nstate** %initial4, align 8
  %label = getelementptr inbounds %struct.nstate, %struct.nstate* %12, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %label, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %arraydecay, i8 -1, i64 32, i1 false)
  %13 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %final5 = getelementptr inbounds %struct.nfa, %struct.nfa* %13, i32 0, i32 1
  %14 = load %struct.nstate*, %struct.nstate** %final5, align 8
  %label6 = getelementptr inbounds %struct.nstate, %struct.nstate* %14, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %label6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %arraydecay7, i8 -1, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltre_ignorecase(%struct.nfa* noundef %nfa) #0 {
entry:
  %nfa.addr = alloca %struct.nfa*, align 8
  %nstate = alloca %struct.nstate*, align 8
  %chr = alloca i32, align 4
  store %struct.nfa* %nfa, %struct.nfa** %nfa.addr, align 8
  %0 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  call void @nfa_uncomplement(%struct.nfa* noundef %0)
  %1 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %1, i32 0, i32 0
  %2 = load %struct.nstate*, %struct.nstate** %initial, align 8
  store %struct.nstate* %2, %struct.nstate** %nstate, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %3 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %tobool = icmp ne %struct.nstate* %3, null
  br i1 %tobool, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %chr, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %chr, align 4
  %cmp = icmp slt i32 %4, 256
  br i1 %cmp, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %5 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %label = getelementptr inbounds %struct.nstate, %struct.nstate* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %label, i64 0, i64 0
  %6 = load i32, i32* %chr, align 4
  %call = call zeroext i1 @bitset_get(i8* noundef %arraydecay, i32 noundef %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body2
  %7 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %label3 = getelementptr inbounds %struct.nstate, %struct.nstate* %7, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %label3, i64 0, i64 0
  %8 = load i32, i32* %chr, align 4
  %call5 = call i32 @tolower(i32 noundef %8) #9
  call void @bitset_set(i8* noundef %arraydecay4, i32 noundef %call5)
  %9 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %label6 = getelementptr inbounds %struct.nstate, %struct.nstate* %9, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %label6, i64 0, i64 0
  %10 = load i32, i32* %chr, align 4
  %call8 = call i32 @toupper(i32 noundef %10) #9
  call void @bitset_set(i8* noundef %arraydecay7, i32 noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %chr, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %chr, align 4
  br label %for.cond1, !llvm.loop !70

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %12 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %12, i32 0, i32 4
  %13 = load %struct.nstate*, %struct.nstate** %next, align 8
  store %struct.nstate* %13, %struct.nstate** %nstate, align 8
  br label %for.cond, !llvm.loop !71

for.end10:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltre_complement(%struct.nfa* noundef %nfa) #0 {
entry:
  %nfa.addr = alloca %struct.nfa*, align 8
  store %struct.nfa* %nfa, %struct.nfa** %nfa.addr, align 8
  %0 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %complemented = getelementptr inbounds %struct.nfa, %struct.nfa* %0, i32 0, i32 2
  %1 = load i8, i8* %complemented, align 8
  %tobool = trunc i8 %1 to i1
  %lnot = xor i1 %tobool, true
  %2 = load %struct.nfa*, %struct.nfa** %nfa.addr, align 8
  %complemented1 = getelementptr inbounds %struct.nfa, %struct.nfa* %2, i32 0, i32 2
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %complemented1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epsilon_closure(%struct.nstate* noundef %nstate, i8* noundef %bitset) #0 {
entry:
  %nstate.addr = alloca %struct.nstate*, align 8
  %bitset.addr = alloca i8*, align 8
  store %struct.nstate* %nstate, %struct.nstate** %nstate.addr, align 8
  store i8* %bitset, i8** %bitset.addr, align 8
  %0 = load %struct.nstate*, %struct.nstate** %nstate.addr, align 8
  %tobool = icmp ne %struct.nstate* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %bitset.addr, align 8
  %2 = load %struct.nstate*, %struct.nstate** %nstate.addr, align 8
  %id = getelementptr inbounds %struct.nstate, %struct.nstate* %2, i32 0, i32 5
  %3 = load i32, i32* %id, align 8
  %call = call zeroext i1 @bitset_get(i8* noundef %1, i32 noundef %3)
  br i1 %call, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %return

if.end2:                                          ; preds = %if.end
  %4 = load i8*, i8** %bitset.addr, align 8
  %5 = load %struct.nstate*, %struct.nstate** %nstate.addr, align 8
  %id3 = getelementptr inbounds %struct.nstate, %struct.nstate* %5, i32 0, i32 5
  %6 = load i32, i32* %id3, align 8
  call void @bitset_set(i8* noundef %4, i32 noundef %6)
  %7 = load %struct.nstate*, %struct.nstate** %nstate.addr, align 8
  %epsilon0 = getelementptr inbounds %struct.nstate, %struct.nstate* %7, i32 0, i32 2
  %8 = load %struct.nstate*, %struct.nstate** %epsilon0, align 8
  %9 = load i8*, i8** %bitset.addr, align 8
  call void @epsilon_closure(%struct.nstate* noundef %8, i8* noundef %9)
  %10 = load %struct.nstate*, %struct.nstate** %nstate.addr, align 8
  %epsilon1 = getelementptr inbounds %struct.nstate, %struct.nstate* %10, i32 0, i32 3
  %11 = load %struct.nstate*, %struct.nstate** %epsilon1, align 8
  %12 = load i8*, i8** %bitset.addr, align 8
  call void @epsilon_closure(%struct.nstate* noundef %11, i8* noundef %12)
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfa_step(%struct.dstate** noundef %dfap, %struct.dstate* noundef %dstate, i8 noundef zeroext %chr, %struct.nfa* noundef byval(%struct.nfa) align 8 %nfa, i32 noundef %nfa_size, %struct.nstate** noundef %nstates) #0 {
entry:
  %dfap.addr = alloca %struct.dstate**, align 8
  %dstate.addr = alloca %struct.dstate*, align 8
  %chr.addr = alloca i8, align 1
  %nfa_size.addr = alloca i32, align 4
  %nstates.addr = alloca %struct.nstate**, align 8
  %bitset_size = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %id = alloca i32, align 4
  %dstatep = alloca %struct.dstate**, align 8
  store %struct.dstate** %dfap, %struct.dstate*** %dfap.addr, align 8
  store %struct.dstate* %dstate, %struct.dstate** %dstate.addr, align 8
  store i8 %chr, i8* %chr.addr, align 1
  store i32 %nfa_size, i32* %nfa_size.addr, align 4
  store %struct.nstate** %nstates, %struct.nstate*** %nstates.addr, align 8
  %0 = load i32, i32* %nfa_size.addr, align 4
  %add = add nsw i32 %0, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %bitset_size, align 4
  %1 = load i32, i32* %bitset_size, align 4
  %2 = zext i32 %1 to i64
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %2, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  %4 = load i32, i32* %bitset_size, align 4
  %conv = sext i32 %4 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 %vla, i8 0, i64 %conv, i1 false)
  %5 = load %struct.dstate*, %struct.dstate** %dstate.addr, align 8
  %tobool = icmp ne %struct.dstate* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %id, align 4
  %7 = load i32, i32* %nfa_size.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.dstate*, %struct.dstate** %dstate.addr, align 8
  %bitset = getelementptr inbounds %struct.dstate, %struct.dstate* %8, i32 0, i32 5
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %bitset, i64 0, i64 0
  %9 = load i32, i32* %id, align 4
  %call = call zeroext i1 @bitset_get(i8* noundef %arraydecay, i32 noundef %9)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.nstate**, %struct.nstate*** %nstates.addr, align 8
  %11 = load i32, i32* %id, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.nstate*, %struct.nstate** %10, i64 %idxprom
  %12 = load %struct.nstate*, %struct.nstate** %arrayidx, align 8
  %label = getelementptr inbounds %struct.nstate, %struct.nstate* %12, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %label, i64 0, i64 0
  %13 = load i8, i8* %chr.addr, align 1
  %conv4 = zext i8 %13 to i32
  %call5 = call zeroext i1 @bitset_get(i8* noundef %arraydecay3, i32 noundef %conv4)
  br i1 %call5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %14 = load %struct.nstate**, %struct.nstate*** %nstates.addr, align 8
  %15 = load i32, i32* %id, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct.nstate*, %struct.nstate** %14, i64 %idxprom8
  %16 = load %struct.nstate*, %struct.nstate** %arrayidx9, align 8
  %target = getelementptr inbounds %struct.nstate, %struct.nstate* %16, i32 0, i32 1
  %17 = load %struct.nstate*, %struct.nstate** %target, align 8
  call void @epsilon_closure(%struct.nstate* noundef %17, i8* noundef %vla)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %id, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.else:                                          ; preds = %entry
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %19 = load %struct.nstate*, %struct.nstate** %initial, align 8
  call void @epsilon_closure(%struct.nstate* noundef %19, i8* noundef %vla)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %for.end
  %20 = load %struct.dstate**, %struct.dstate*** %dfap.addr, align 8
  store %struct.dstate** %20, %struct.dstate*** %dstatep, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end10
  %21 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  %22 = load %struct.dstate*, %struct.dstate** %21, align 8
  %tobool11 = icmp ne %struct.dstate* %22, null
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  %24 = load %struct.dstate*, %struct.dstate** %23, align 8
  %bitset12 = getelementptr inbounds %struct.dstate, %struct.dstate* %24, i32 0, i32 5
  %arraydecay13 = getelementptr inbounds [0 x i8], [0 x i8]* %bitset12, i64 0, i64 0
  %25 = load i32, i32* %bitset_size, align 4
  %conv14 = sext i32 %25 to i64
  %call15 = call i32 @memcmp(i8* noundef %arraydecay13, i8* noundef %vla, i64 noundef %conv14) #9
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %tobool16, %land.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %27 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  %28 = load %struct.dstate*, %struct.dstate** %27, align 8
  %next = getelementptr inbounds %struct.dstate, %struct.dstate* %28, i32 0, i32 4
  store %struct.dstate** %next, %struct.dstate*** %dstatep, align 8
  br label %while.cond, !llvm.loop !73

while.end:                                        ; preds = %land.end
  %29 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  %30 = load %struct.dstate*, %struct.dstate** %29, align 8
  %tobool17 = icmp ne %struct.dstate* %30, null
  br i1 %tobool17, label %if.end32, label %if.then18

if.then18:                                        ; preds = %while.end
  %31 = load i32, i32* %bitset_size, align 4
  %call19 = call %struct.dstate* @dstate_alloc(i32 noundef %31)
  %32 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  store %struct.dstate* %call19, %struct.dstate** %32, align 8
  %33 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  %34 = load %struct.dstate*, %struct.dstate** %33, align 8
  %bitset20 = getelementptr inbounds %struct.dstate, %struct.dstate* %34, i32 0, i32 5
  %arraydecay21 = getelementptr inbounds [0 x i8], [0 x i8]* %bitset20, i64 0, i64 0
  %35 = load i32, i32* %bitset_size, align 4
  %conv22 = sext i32 %35 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay21, i8* align 16 %vla, i64 %conv22, i1 false)
  %final = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 1
  %36 = load %struct.nstate*, %struct.nstate** %final, align 8
  %id23 = getelementptr inbounds %struct.nstate, %struct.nstate* %36, i32 0, i32 5
  %37 = load i32, i32* %id23, align 8
  %call24 = call zeroext i1 @bitset_get(i8* noundef %vla, i32 noundef %37)
  %38 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  %39 = load %struct.dstate*, %struct.dstate** %38, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %39, i32 0, i32 1
  %frombool = zext i1 %call24 to i8
  store i8 %frombool, i8* %accepting, align 8
  %complemented = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 2
  %40 = load i8, i8* %complemented, align 8
  %tobool25 = trunc i8 %40 to i1
  %conv26 = zext i1 %tobool25 to i32
  %41 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  %42 = load %struct.dstate*, %struct.dstate** %41, align 8
  %accepting27 = getelementptr inbounds %struct.dstate, %struct.dstate* %42, i32 0, i32 1
  %43 = load i8, i8* %accepting27, align 8
  %tobool28 = trunc i8 %43 to i1
  %conv29 = zext i1 %tobool28 to i32
  %xor = xor i32 %conv29, %conv26
  %tobool30 = icmp ne i32 %xor, 0
  %frombool31 = zext i1 %tobool30 to i8
  store i8 %frombool31, i8* %accepting27, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then18, %while.end
  %44 = load %struct.dstate*, %struct.dstate** %dstate.addr, align 8
  %tobool33 = icmp ne %struct.dstate* %44, null
  br i1 %tobool33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end32
  %45 = load %struct.dstate**, %struct.dstate*** %dstatep, align 8
  %46 = load %struct.dstate*, %struct.dstate** %45, align 8
  %47 = load %struct.dstate*, %struct.dstate** %dstate.addr, align 8
  %transitions = getelementptr inbounds %struct.dstate, %struct.dstate* %47, i32 0, i32 0
  %48 = load i8, i8* %chr.addr, align 1
  %idxprom35 = zext i8 %48 to i64
  %arrayidx36 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions, i64 0, i64 %idxprom35
  store %struct.dstate* %46, %struct.dstate** %arrayidx36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32
  %49 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @ltre_matches(%struct.dstate* noundef %dfa, i8* noundef %input) #0 {
entry:
  %dfa.addr = alloca %struct.dstate*, align 8
  %input.addr = alloca i8*, align 8
  store %struct.dstate* %dfa, %struct.dstate** %dfa.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %terminating = getelementptr inbounds %struct.dstate, %struct.dstate* %0, i32 0, i32 2
  %1 = load i8, i8* %terminating, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %transitions = getelementptr inbounds %struct.dstate, %struct.dstate* %5, i32 0, i32 0
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions, i64 0, i64 %idxprom
  %8 = load %struct.dstate*, %struct.dstate** %arrayidx, align 8
  store %struct.dstate* %8, %struct.dstate** %dfa.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %land.end
  %10 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %10, i32 0, i32 1
  %11 = load i8, i8* %accepting, align 8
  %tobool2 = trunc i8 %11 to i1
  ret i1 %tobool2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @ltre_matches_lazy(%struct.dstate** noundef %dfap, %struct.nfa* noundef byval(%struct.nfa) align 8 %nfa, i8* noundef %input) #0 {
entry:
  %dfap.addr = alloca %struct.dstate**, align 8
  %input.addr = alloca i8*, align 8
  %nfa_size = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %nstate = alloca %struct.nstate*, align 8
  %dstate = alloca %struct.dstate*, align 8
  store %struct.dstate** %dfap, %struct.dstate*** %dfap.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  %call = call i32 @nfa_get_size(%struct.nfa* noundef byval(%struct.nfa) align 8 %nfa)
  store i32 %call, i32* %nfa_size, align 4
  %0 = load i32, i32* %nfa_size, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca %struct.nstate*, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  %initial = getelementptr inbounds %struct.nfa, %struct.nfa* %nfa, i32 0, i32 0
  %3 = load %struct.nstate*, %struct.nstate** %initial, align 8
  store %struct.nstate* %3, %struct.nstate** %nstate, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %tobool = icmp ne %struct.nstate* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %6 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %id = getelementptr inbounds %struct.nstate, %struct.nstate* %6, i32 0, i32 5
  %7 = load i32, i32* %id, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.nstate*, %struct.nstate** %vla, i64 %idxprom
  store %struct.nstate* %5, %struct.nstate** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.nstate*, %struct.nstate** %nstate, align 8
  %next = getelementptr inbounds %struct.nstate, %struct.nstate* %8, i32 0, i32 4
  %9 = load %struct.nstate*, %struct.nstate** %next, align 8
  store %struct.nstate* %9, %struct.nstate** %nstate, align 8
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %10 = load %struct.dstate**, %struct.dstate*** %dfap.addr, align 8
  %11 = load i32, i32* %nfa_size, align 4
  call void @dfa_step(%struct.dstate** noundef %10, %struct.dstate* noundef null, i8 noundef zeroext 0, %struct.nfa* noundef byval(%struct.nfa) align 8 %nfa, i32 noundef %11, %struct.nstate** noundef %vla)
  %12 = load %struct.dstate**, %struct.dstate*** %dfap.addr, align 8
  %13 = load %struct.dstate*, %struct.dstate** %12, align 8
  store %struct.dstate* %13, %struct.dstate** %dstate, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %14 = load i8*, i8** %input.addr, align 8
  %15 = load i8, i8* %14, align 1
  %tobool2 = icmp ne i8 %15, 0
  br i1 %tobool2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  %16 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %transitions = getelementptr inbounds %struct.dstate, %struct.dstate* %16, i32 0, i32 0
  %17 = load i8*, i8** %input.addr, align 8
  %18 = load i8, i8* %17, align 1
  %idxprom4 = zext i8 %18 to i64
  %arrayidx5 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions, i64 0, i64 %idxprom4
  %19 = load %struct.dstate*, %struct.dstate** %arrayidx5, align 8
  %tobool6 = icmp ne %struct.dstate* %19, null
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body3
  %20 = load %struct.dstate**, %struct.dstate*** %dfap.addr, align 8
  %21 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %22 = load i8*, i8** %input.addr, align 8
  %23 = load i8, i8* %22, align 1
  %24 = load i32, i32* %nfa_size, align 4
  call void @dfa_step(%struct.dstate** noundef %20, %struct.dstate* noundef %21, i8 noundef zeroext %23, %struct.nfa* noundef byval(%struct.nfa) align 8 %nfa, i32 noundef %24, %struct.nstate** noundef %vla)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc7

for.inc7:                                         ; preds = %if.end
  %25 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %transitions8 = getelementptr inbounds %struct.dstate, %struct.dstate* %25, i32 0, i32 0
  %26 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  %27 = load i8, i8* %26, align 1
  %idxprom9 = zext i8 %27 to i64
  %arrayidx10 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions8, i64 0, i64 %idxprom9
  %28 = load %struct.dstate*, %struct.dstate** %arrayidx10, align 8
  store %struct.dstate* %28, %struct.dstate** %dstate, align 8
  br label %for.cond1, !llvm.loop !76

for.end11:                                        ; preds = %for.cond1
  %29 = load %struct.dstate*, %struct.dstate** %dstate, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %29, i32 0, i32 1
  %30 = load i8, i8* %accepting, align 8
  %tobool12 = trunc i8 %30 to i1
  %31 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %31)
  ret i1 %tobool12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ltre_decompile(%struct.dstate* noundef %dfa) #0 {
entry:
  %dfa.addr = alloca %struct.dstate*, align 8
  %dfa_size = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %id = alloca i32, align 4
  %ds1 = alloca %struct.dstate*, align 8
  %ds2 = alloca %struct.dstate*, align 8
  %empty = alloca i8, align 1
  %transitions = alloca [32 x i8], align 16
  %chr = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %best_fit = alloca i32, align 4
  %min_degree = alloca i32, align 4
  %id1 = alloca i32, align 4
  %degree = alloca i32, align 4
  %id2 = alloca i32, align 4
  %id1145 = alloca i32, align 4
  %id2154 = alloca i32, align 4
  %in = alloca %struct.arrow, align 8
  %out = alloca %struct.arrow, align 8
  %self = alloca %struct.arrow, align 8
  %existing = alloca %struct.arrow, align 8
  %first = alloca %struct.arrow, align 8
  %second = alloca %struct.arrow, align 8
  %diff = alloca i64, align 8
  %p = alloca i8*, align 8
  %p351 = alloca i8*, align 8
  %p404 = alloca i8*, align 8
  %bypass = alloca %struct.arrow, align 8
  %p463 = alloca i8*, align 8
  %merged = alloca %struct.arrow, align 8
  %p542 = alloca i8*, align 8
  %p574 = alloca i8*, align 8
  %id640 = alloca i32, align 4
  %regex = alloca i8*, align 8
  store %struct.dstate* %dfa, %struct.dstate** %dfa.addr, align 8
  %0 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %call = call i32 @dfa_get_size(%struct.dstate* noundef %0)
  store i32 %call, i32* %dfa_size, align 4
  %1 = load i32, i32* %dfa_size, align 4
  %add = add nsw i32 %1, 1
  %2 = zext i32 %add to i64
  %3 = load i32, i32* %dfa_size, align 4
  %add1 = add nsw i32 %3, 1
  %4 = zext i32 %add1 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %saved_stack, align 8
  %6 = mul nuw i64 %2, %4
  %vla = alloca %struct.arrow, i64 %6, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  store i64 %4, i64* %__vla_expr1, align 8
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %id, align 4
  %8 = load i32, i32* %dfa_size, align 4
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %id, align 4
  %idxprom = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom, %4
  %arrayidx = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %10
  %11 = load i32, i32* %dfa_size, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx, i64 %idxprom2
  %label = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx3, i32 0, i32 0
  store i8* null, i8** %label, align 16
  %12 = load i32, i32* %dfa_size, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = mul nsw i64 %idxprom4, %4
  %arrayidx5 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %13
  %14 = load i32, i32* %id, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx5, i64 %idxprom6
  %label8 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx7, i32 0, i32 0
  store i8* null, i8** %label8, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %id, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  %call9 = call noalias i8* @malloc(i64 noundef 1) #11
  %16 = load i32, i32* %dfa_size, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = mul nsw i64 %idxprom10, %4
  %arrayidx11 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %17
  %18 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %id12 = getelementptr inbounds %struct.dstate, %struct.dstate* %18, i32 0, i32 3
  %19 = load i32, i32* %id12, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx11, i64 %idxprom13
  %label15 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx14, i32 0, i32 0
  store i8* %call9, i8** %label15, align 16
  %20 = load i32, i32* %dfa_size, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = mul nsw i64 %idxprom16, %4
  %arrayidx17 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %21
  %22 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %id18 = getelementptr inbounds %struct.dstate, %struct.dstate* %22, i32 0, i32 3
  %23 = load i32, i32* %id18, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx17, i64 %idxprom19
  %label21 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx20, i32 0, i32 0
  %24 = load i8*, i8** %label21, align 16
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %dfa_size, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = mul nsw i64 %idxprom22, %4
  %arrayidx23 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %26
  %27 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  %id24 = getelementptr inbounds %struct.dstate, %struct.dstate* %27, i32 0, i32 3
  %28 = load i32, i32* %id24, align 4
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx23, i64 %idxprom25
  %prec = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx26, i32 0, i32 1
  store i32 3, i32* %prec, align 8
  %29 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %29, %struct.dstate** %ds1, align 8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc103, %for.end
  %30 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %tobool = icmp ne %struct.dstate* %30, null
  br i1 %tobool, label %for.body28, label %for.end105

for.body28:                                       ; preds = %for.cond27
  %31 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %accepting = getelementptr inbounds %struct.dstate, %struct.dstate* %31, i32 0, i32 1
  %32 = load i8, i8* %accepting, align 8
  %tobool29 = trunc i8 %32 to i1
  br i1 %tobool29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body28
  %call30 = call noalias i8* @malloc(i64 noundef 1) #11
  %33 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id31 = getelementptr inbounds %struct.dstate, %struct.dstate* %33, i32 0, i32 3
  %34 = load i32, i32* %id31, align 4
  %idxprom32 = sext i32 %34 to i64
  %35 = mul nsw i64 %idxprom32, %4
  %arrayidx33 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %35
  %36 = load i32, i32* %dfa_size, align 4
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx33, i64 %idxprom34
  %label36 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx35, i32 0, i32 0
  store i8* %call30, i8** %label36, align 16
  %37 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id37 = getelementptr inbounds %struct.dstate, %struct.dstate* %37, i32 0, i32 3
  %38 = load i32, i32* %id37, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = mul nsw i64 %idxprom38, %4
  %arrayidx39 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %39
  %40 = load i32, i32* %dfa_size, align 4
  %idxprom40 = sext i32 %40 to i64
  %arrayidx41 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx39, i64 %idxprom40
  %label42 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx41, i32 0, i32 0
  %41 = load i8*, i8** %label42, align 16
  store i8 0, i8* %41, align 1
  %42 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id43 = getelementptr inbounds %struct.dstate, %struct.dstate* %42, i32 0, i32 3
  %43 = load i32, i32* %id43, align 4
  %idxprom44 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom44, %4
  %arrayidx45 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %44
  %45 = load i32, i32* %dfa_size, align 4
  %idxprom46 = sext i32 %45 to i64
  %arrayidx47 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx45, i64 %idxprom46
  %prec48 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx47, i32 0, i32 1
  store i32 3, i32* %prec48, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body28
  %46 = load %struct.dstate*, %struct.dstate** %dfa.addr, align 8
  store %struct.dstate* %46, %struct.dstate** %ds2, align 8
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc101, %if.end
  %47 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %tobool50 = icmp ne %struct.dstate* %47, null
  br i1 %tobool50, label %for.body51, label %for.end102

for.body51:                                       ; preds = %for.cond49
  store i8 1, i8* %empty, align 1
  %48 = bitcast [32 x i8]* %transitions to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %48, i8 0, i64 32, i1 false)
  store i32 0, i32* %chr, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc61, %for.body51
  %49 = load i32, i32* %chr, align 4
  %cmp53 = icmp slt i32 %49, 256
  br i1 %cmp53, label %for.body54, label %for.end63

for.body54:                                       ; preds = %for.cond52
  %50 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %transitions55 = getelementptr inbounds %struct.dstate, %struct.dstate* %50, i32 0, i32 0
  %51 = load i32, i32* %chr, align 4
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds [256 x %struct.dstate*], [256 x %struct.dstate*]* %transitions55, i64 0, i64 %idxprom56
  %52 = load %struct.dstate*, %struct.dstate** %arrayidx57, align 8
  %53 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %cmp58 = icmp eq %struct.dstate* %52, %53
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %for.body54
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %transitions, i64 0, i64 0
  %54 = load i32, i32* %chr, align 4
  call void @bitset_set(i8* noundef %arraydecay, i32 noundef %54)
  store i8 0, i8* %empty, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %for.body54
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %55 = load i32, i32* %chr, align 4
  %inc62 = add nsw i32 %55, 1
  store i32 %inc62, i32* %chr, align 4
  br label %for.cond52, !llvm.loop !78

for.end63:                                        ; preds = %for.cond52
  %56 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id64 = getelementptr inbounds %struct.dstate, %struct.dstate* %56, i32 0, i32 3
  %57 = load i32, i32* %id64, align 4
  %idxprom65 = sext i32 %57 to i64
  %58 = mul nsw i64 %idxprom65, %4
  %arrayidx66 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %58
  %59 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %id67 = getelementptr inbounds %struct.dstate, %struct.dstate* %59, i32 0, i32 3
  %60 = load i32, i32* %id67, align 4
  %idxprom68 = sext i32 %60 to i64
  %arrayidx69 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx66, i64 %idxprom68
  %label70 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx69, i32 0, i32 0
  store i8* null, i8** %label70, align 16
  %61 = load i8, i8* %empty, align 1
  %tobool71 = trunc i8 %61 to i1
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %for.end63
  br label %for.inc101

if.end73:                                         ; preds = %for.end63
  %arraydecay74 = getelementptr inbounds [32 x i8], [32 x i8]* %transitions, i64 0, i64 0
  %call75 = call i8* @symset_fmt(i8* noundef %arraydecay74)
  store i8* %call75, i8** %fmt, align 8
  %62 = load i8*, i8** %fmt, align 8
  %call76 = call i64 @strlen(i8* noundef %62) #9
  %add77 = add i64 %call76, 1
  %call78 = call noalias i8* @malloc(i64 noundef %add77) #11
  %63 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id79 = getelementptr inbounds %struct.dstate, %struct.dstate* %63, i32 0, i32 3
  %64 = load i32, i32* %id79, align 4
  %idxprom80 = sext i32 %64 to i64
  %65 = mul nsw i64 %idxprom80, %4
  %arrayidx81 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %65
  %66 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %id82 = getelementptr inbounds %struct.dstate, %struct.dstate* %66, i32 0, i32 3
  %67 = load i32, i32* %id82, align 4
  %idxprom83 = sext i32 %67 to i64
  %arrayidx84 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx81, i64 %idxprom83
  %label85 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx84, i32 0, i32 0
  store i8* %call78, i8** %label85, align 16
  %68 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id86 = getelementptr inbounds %struct.dstate, %struct.dstate* %68, i32 0, i32 3
  %69 = load i32, i32* %id86, align 4
  %idxprom87 = sext i32 %69 to i64
  %70 = mul nsw i64 %idxprom87, %4
  %arrayidx88 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %70
  %71 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %id89 = getelementptr inbounds %struct.dstate, %struct.dstate* %71, i32 0, i32 3
  %72 = load i32, i32* %id89, align 4
  %idxprom90 = sext i32 %72 to i64
  %arrayidx91 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx88, i64 %idxprom90
  %label92 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx91, i32 0, i32 0
  %73 = load i8*, i8** %label92, align 16
  %74 = load i8*, i8** %fmt, align 8
  %call93 = call i8* @strcpy(i8* noundef %73, i8* noundef %74) #11
  %75 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %id94 = getelementptr inbounds %struct.dstate, %struct.dstate* %75, i32 0, i32 3
  %76 = load i32, i32* %id94, align 4
  %idxprom95 = sext i32 %76 to i64
  %77 = mul nsw i64 %idxprom95, %4
  %arrayidx96 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %77
  %78 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %id97 = getelementptr inbounds %struct.dstate, %struct.dstate* %78, i32 0, i32 3
  %79 = load i32, i32* %id97, align 4
  %idxprom98 = sext i32 %79 to i64
  %arrayidx99 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx96, i64 %idxprom98
  %prec100 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx99, i32 0, i32 1
  store i32 3, i32* %prec100, align 8
  br label %for.inc101

for.inc101:                                       ; preds = %if.end73, %if.then72
  %80 = load %struct.dstate*, %struct.dstate** %ds2, align 8
  %next = getelementptr inbounds %struct.dstate, %struct.dstate* %80, i32 0, i32 4
  %81 = load %struct.dstate*, %struct.dstate** %next, align 8
  store %struct.dstate* %81, %struct.dstate** %ds2, align 8
  br label %for.cond49, !llvm.loop !79

for.end102:                                       ; preds = %for.cond49
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %82 = load %struct.dstate*, %struct.dstate** %ds1, align 8
  %next104 = getelementptr inbounds %struct.dstate, %struct.dstate* %82, i32 0, i32 4
  %83 = load %struct.dstate*, %struct.dstate** %next104, align 8
  store %struct.dstate* %83, %struct.dstate** %ds1, align 8
  br label %for.cond27, !llvm.loop !80

for.end105:                                       ; preds = %for.cond27
  br label %while.cond

while.cond:                                       ; preds = %for.end667, %for.end105
  br label %while.body

while.body:                                       ; preds = %while.cond
  store i32 2147483647, i32* %min_degree, align 4
  store i32 0, i32* %id1, align 4
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc138, %while.body
  %84 = load i32, i32* %id1, align 4
  %85 = load i32, i32* %dfa_size, align 4
  %cmp107 = icmp slt i32 %84, %85
  br i1 %cmp107, label %for.body108, label %for.end140

for.body108:                                      ; preds = %for.cond106
  store i32 0, i32* %degree, align 4
  store i32 0, i32* %id2, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc127, %for.body108
  %86 = load i32, i32* %id2, align 4
  %87 = load i32, i32* %dfa_size, align 4
  %cmp110 = icmp slt i32 %86, %87
  br i1 %cmp110, label %for.body111, label %for.end129

for.body111:                                      ; preds = %for.cond109
  %88 = load i32, i32* %id1, align 4
  %idxprom112 = sext i32 %88 to i64
  %89 = mul nsw i64 %idxprom112, %4
  %arrayidx113 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %89
  %90 = load i32, i32* %id2, align 4
  %idxprom114 = sext i32 %90 to i64
  %arrayidx115 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx113, i64 %idxprom114
  %label116 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx115, i32 0, i32 0
  %91 = load i8*, i8** %label116, align 16
  %cmp117 = icmp ne i8* %91, null
  %conv = zext i1 %cmp117 to i32
  %92 = load i32, i32* %id2, align 4
  %idxprom118 = sext i32 %92 to i64
  %93 = mul nsw i64 %idxprom118, %4
  %arrayidx119 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %93
  %94 = load i32, i32* %id1, align 4
  %idxprom120 = sext i32 %94 to i64
  %arrayidx121 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx119, i64 %idxprom120
  %label122 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx121, i32 0, i32 0
  %95 = load i8*, i8** %label122, align 16
  %cmp123 = icmp ne i8* %95, null
  %conv124 = zext i1 %cmp123 to i32
  %add125 = add nsw i32 %conv, %conv124
  %96 = load i32, i32* %degree, align 4
  %add126 = add nsw i32 %96, %add125
  store i32 %add126, i32* %degree, align 4
  br label %for.inc127

for.inc127:                                       ; preds = %for.body111
  %97 = load i32, i32* %id2, align 4
  %inc128 = add nsw i32 %97, 1
  store i32 %inc128, i32* %id2, align 4
  br label %for.cond109, !llvm.loop !81

for.end129:                                       ; preds = %for.cond109
  %98 = load i32, i32* %degree, align 4
  %cmp130 = icmp eq i32 %98, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %for.end129
  br label %for.inc138

if.end133:                                        ; preds = %for.end129
  %99 = load i32, i32* %degree, align 4
  %100 = load i32, i32* %min_degree, align 4
  %cmp134 = icmp slt i32 %99, %100
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end133
  %101 = load i32, i32* %degree, align 4
  store i32 %101, i32* %min_degree, align 4
  %102 = load i32, i32* %id1, align 4
  store i32 %102, i32* %best_fit, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end133
  br label %for.inc138

for.inc138:                                       ; preds = %if.end137, %if.then132
  %103 = load i32, i32* %id1, align 4
  %inc139 = add nsw i32 %103, 1
  store i32 %inc139, i32* %id1, align 4
  br label %for.cond106, !llvm.loop !82

for.end140:                                       ; preds = %for.cond106
  %104 = load i32, i32* %min_degree, align 4
  %cmp141 = icmp eq i32 %104, 2147483647
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %for.end140
  br label %while.end

if.end144:                                        ; preds = %for.end140
  store i32 0, i32* %id1145, align 4
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc637, %if.end144
  %105 = load i32, i32* %id1145, align 4
  %106 = load i32, i32* %dfa_size, align 4
  %cmp147 = icmp sle i32 %105, %106
  br i1 %cmp147, label %for.body149, label %for.end639

for.body149:                                      ; preds = %for.cond146
  %107 = load i32, i32* %id1145, align 4
  %108 = load i32, i32* %best_fit, align 4
  %cmp150 = icmp eq i32 %107, %108
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %for.body149
  br label %for.inc637

if.end153:                                        ; preds = %for.body149
  store i32 0, i32* %id2154, align 4
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc634, %if.end153
  %109 = load i32, i32* %id2154, align 4
  %110 = load i32, i32* %dfa_size, align 4
  %cmp156 = icmp sle i32 %109, %110
  br i1 %cmp156, label %for.body158, label %for.end636

for.body158:                                      ; preds = %for.cond155
  %111 = load i32, i32* %id2154, align 4
  %112 = load i32, i32* %best_fit, align 4
  %cmp159 = icmp eq i32 %111, %112
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %for.body158
  br label %for.inc634

if.end162:                                        ; preds = %for.body158
  %113 = load i32, i32* %id1145, align 4
  %idxprom163 = sext i32 %113 to i64
  %114 = mul nsw i64 %idxprom163, %4
  %arrayidx164 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %114
  %115 = load i32, i32* %best_fit, align 4
  %idxprom165 = sext i32 %115 to i64
  %arrayidx166 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx164, i64 %idxprom165
  %116 = bitcast %struct.arrow* %in to i8*
  %117 = bitcast %struct.arrow* %arrayidx166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 16 %117, i64 16, i1 false)
  %118 = load i32, i32* %best_fit, align 4
  %idxprom167 = sext i32 %118 to i64
  %119 = mul nsw i64 %idxprom167, %4
  %arrayidx168 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %119
  %120 = load i32, i32* %id2154, align 4
  %idxprom169 = sext i32 %120 to i64
  %arrayidx170 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx168, i64 %idxprom169
  %121 = bitcast %struct.arrow* %out to i8*
  %122 = bitcast %struct.arrow* %arrayidx170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 16 %122, i64 16, i1 false)
  %123 = load i32, i32* %best_fit, align 4
  %idxprom171 = sext i32 %123 to i64
  %124 = mul nsw i64 %idxprom171, %4
  %arrayidx172 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %124
  %125 = load i32, i32* %best_fit, align 4
  %idxprom173 = sext i32 %125 to i64
  %arrayidx174 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx172, i64 %idxprom173
  %126 = bitcast %struct.arrow* %self to i8*
  %127 = bitcast %struct.arrow* %arrayidx174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 16 %127, i64 16, i1 false)
  %128 = load i32, i32* %id1145, align 4
  %idxprom175 = sext i32 %128 to i64
  %129 = mul nsw i64 %idxprom175, %4
  %arrayidx176 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %129
  %130 = load i32, i32* %id2154, align 4
  %idxprom177 = sext i32 %130 to i64
  %arrayidx178 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx176, i64 %idxprom177
  %131 = bitcast %struct.arrow* %existing to i8*
  %132 = bitcast %struct.arrow* %arrayidx178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 16 %132, i64 16, i1 false)
  %label179 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %133 = load i8*, i8** %label179, align 8
  %tobool180 = icmp ne i8* %133, null
  br i1 %tobool180, label %lor.lhs.false, label %if.then183

lor.lhs.false:                                    ; preds = %if.end162
  %label181 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %134 = load i8*, i8** %label181, align 8
  %tobool182 = icmp ne i8* %134, null
  br i1 %tobool182, label %if.end184, label %if.then183

if.then183:                                       ; preds = %lor.lhs.false, %if.end162
  br label %for.inc634

if.end184:                                        ; preds = %lor.lhs.false
  %label185 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %135 = load i8*, i8** %label185, align 8
  %tobool186 = icmp ne i8* %135, null
  br i1 %tobool186, label %lor.lhs.false187, label %if.then190

lor.lhs.false187:                                 ; preds = %if.end184
  %label188 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %136 = load i8*, i8** %label188, align 8
  %137 = load i8, i8* %136, align 1
  %tobool189 = icmp ne i8 %137, 0
  br i1 %tobool189, label %if.else, label %if.then190

if.then190:                                       ; preds = %lor.lhs.false187, %if.end184
  %138 = bitcast %struct.arrow* %first to i8*
  %139 = bitcast %struct.arrow* %in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 16, i1 false)
  %140 = bitcast %struct.arrow* %second to i8*
  %141 = bitcast %struct.arrow* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  br label %if.end445

if.else:                                          ; preds = %lor.lhs.false187
  %prec191 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 1
  %142 = load i32, i32* %prec191, align 8
  %cmp192 = icmp uge i32 %142, 1
  br i1 %cmp192, label %land.lhs.true, label %if.else320

land.lhs.true:                                    ; preds = %if.else
  %prec194 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 1
  %143 = load i32, i32* %prec194, align 8
  %cmp195 = icmp uge i32 %143, 1
  br i1 %cmp195, label %land.lhs.true197, label %if.else320

land.lhs.true197:                                 ; preds = %land.lhs.true
  %label198 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %144 = load i8*, i8** %label198, align 8
  %call199 = call i64 @strlen(i8* noundef %144) #9
  %label200 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %145 = load i8*, i8** %label200, align 8
  %call201 = call i64 @strlen(i8* noundef %145) #9
  %sub = sub i64 %call199, %call201
  store i64 %sub, i64* %diff, align 8
  %cmp202 = icmp sge i64 %sub, 0
  br i1 %cmp202, label %land.lhs.true204, label %if.else320

land.lhs.true204:                                 ; preds = %land.lhs.true197
  %label205 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %146 = load i8*, i8** %label205, align 8
  %147 = load i64, i64* %diff, align 8
  %add.ptr = getelementptr inbounds i8, i8* %146, i64 %147
  %label206 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %148 = load i8*, i8** %label206, align 8
  %call207 = call i32 @strcmp(i8* noundef %add.ptr, i8* noundef %148) #9
  %cmp208 = icmp eq i32 %call207, 0
  br i1 %cmp208, label %if.then210, label %if.else320

if.then210:                                       ; preds = %land.lhs.true204
  %149 = load i64, i64* %diff, align 8
  %cmp211 = icmp sge i64 %149, 1
  br i1 %cmp211, label %land.lhs.true213, label %if.end231

land.lhs.true213:                                 ; preds = %if.then210
  %label214 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %150 = load i8*, i8** %label214, align 8
  %151 = load i64, i64* %diff, align 8
  %sub215 = sub nsw i64 %151, 1
  %arrayidx216 = getelementptr inbounds i8, i8* %150, i64 %sub215
  %152 = load i8, i8* %arrayidx216, align 1
  %conv217 = sext i8 %152 to i32
  %call218 = call i8* @strchr(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv217) #9
  %tobool219 = icmp ne i8* %call218, null
  br i1 %tobool219, label %land.lhs.true220, label %if.end231

land.lhs.true220:                                 ; preds = %land.lhs.true213
  %153 = load i64, i64* %diff, align 8
  %cmp221 = icmp eq i64 %153, 1
  br i1 %cmp221, label %if.then230, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %land.lhs.true220
  %label224 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %154 = load i8*, i8** %label224, align 8
  %155 = load i64, i64* %diff, align 8
  %sub225 = sub nsw i64 %155, 2
  %arrayidx226 = getelementptr inbounds i8, i8* %154, i64 %sub225
  %156 = load i8, i8* %arrayidx226, align 1
  %conv227 = sext i8 %156 to i32
  %cmp228 = icmp ne i32 %conv227, 92
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %lor.lhs.false223, %land.lhs.true220
  br label %nevermind

if.end231:                                        ; preds = %lor.lhs.false223, %land.lhs.true213, %if.then210
  %157 = load i64, i64* %diff, align 8
  %cmp232 = icmp sge i64 %157, 2
  br i1 %cmp232, label %land.lhs.true234, label %if.end252

land.lhs.true234:                                 ; preds = %if.end231
  %label235 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %158 = load i8*, i8** %label235, align 8
  %159 = load i64, i64* %diff, align 8
  %sub236 = sub nsw i64 %159, 2
  %arrayidx237 = getelementptr inbounds i8, i8* %158, i64 %sub236
  %call238 = call i32 @strncmp(i8* noundef %arrayidx237, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 noundef 2) #9
  %cmp239 = icmp eq i32 %call238, 0
  br i1 %cmp239, label %land.lhs.true241, label %if.end252

land.lhs.true241:                                 ; preds = %land.lhs.true234
  %160 = load i64, i64* %diff, align 8
  %cmp242 = icmp eq i64 %160, 2
  br i1 %cmp242, label %if.then251, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %land.lhs.true241
  %label245 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %161 = load i8*, i8** %label245, align 8
  %162 = load i64, i64* %diff, align 8
  %sub246 = sub nsw i64 %162, 3
  %arrayidx247 = getelementptr inbounds i8, i8* %161, i64 %sub246
  %163 = load i8, i8* %arrayidx247, align 1
  %conv248 = sext i8 %163 to i32
  %cmp249 = icmp ne i32 %conv248, 92
  br i1 %cmp249, label %if.then251, label %if.end252

if.then251:                                       ; preds = %lor.lhs.false244, %land.lhs.true241
  br label %nevermind

if.end252:                                        ; preds = %lor.lhs.false244, %land.lhs.true234, %if.end231
  %164 = load i64, i64* %diff, align 8
  %cmp253 = icmp sge i64 %164, 3
  br i1 %cmp253, label %land.lhs.true255, label %if.end273

land.lhs.true255:                                 ; preds = %if.end252
  %label256 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %165 = load i8*, i8** %label256, align 8
  %166 = load i64, i64* %diff, align 8
  %sub257 = sub nsw i64 %166, 3
  %arrayidx258 = getelementptr inbounds i8, i8* %165, i64 %sub257
  %call259 = call i32 @strncmp(i8* noundef %arrayidx258, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 noundef 2) #9
  %cmp260 = icmp eq i32 %call259, 0
  br i1 %cmp260, label %land.lhs.true262, label %if.end273

land.lhs.true262:                                 ; preds = %land.lhs.true255
  %167 = load i64, i64* %diff, align 8
  %cmp263 = icmp eq i64 %167, 3
  br i1 %cmp263, label %if.then272, label %lor.lhs.false265

lor.lhs.false265:                                 ; preds = %land.lhs.true262
  %label266 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %168 = load i8*, i8** %label266, align 8
  %169 = load i64, i64* %diff, align 8
  %sub267 = sub nsw i64 %169, 4
  %arrayidx268 = getelementptr inbounds i8, i8* %168, i64 %sub267
  %170 = load i8, i8* %arrayidx268, align 1
  %conv269 = sext i8 %170 to i32
  %cmp270 = icmp ne i32 %conv269, 92
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %lor.lhs.false265, %land.lhs.true262
  br label %nevermind

if.end273:                                        ; preds = %lor.lhs.false265, %land.lhs.true255, %if.end252
  %label274 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %171 = load i8*, i8** %label274, align 8
  %call275 = call i64 @strlen(i8* noundef %171) #9
  %add276 = add i64 %call275, 5
  %add277 = add i64 %add276, 1
  %call278 = call noalias i8* @malloc(i64 noundef %add277) #11
  %label279 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  store i8* %call278, i8** %label279, align 8
  %label280 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %172 = load i8*, i8** %label280, align 8
  store i8* %172, i8** %p, align 8
  %173 = load i64, i64* %diff, align 8
  %cmp281 = icmp ne i64 %173, 0
  br i1 %cmp281, label %land.lhs.true283, label %if.end288

land.lhs.true283:                                 ; preds = %if.end273
  %prec284 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 1
  %174 = load i32, i32* %prec284, align 8
  %cmp285 = icmp ult i32 %174, 1
  br i1 %cmp285, label %if.then287, label %if.end288

if.then287:                                       ; preds = %land.lhs.true283
  %175 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 40, i8* %175, align 1
  br label %if.end288

if.end288:                                        ; preds = %if.then287, %land.lhs.true283, %if.end273
  %176 = load i8*, i8** %p, align 8
  %label289 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %177 = load i8*, i8** %label289, align 8
  %178 = load i64, i64* %diff, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %176, i8* align 1 %177, i64 %178, i1 false)
  %179 = load i64, i64* %diff, align 8
  %180 = load i8*, i8** %p, align 8
  %add.ptr290 = getelementptr inbounds i8, i8* %180, i64 %179
  store i8* %add.ptr290, i8** %p, align 8
  %181 = load i64, i64* %diff, align 8
  %cmp291 = icmp ne i64 %181, 0
  br i1 %cmp291, label %land.lhs.true293, label %if.end299

land.lhs.true293:                                 ; preds = %if.end288
  %prec294 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 1
  %182 = load i32, i32* %prec294, align 8
  %cmp295 = icmp ult i32 %182, 1
  br i1 %cmp295, label %if.then297, label %if.end299

if.then297:                                       ; preds = %land.lhs.true293
  %183 = load i8*, i8** %p, align 8
  %incdec.ptr298 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr298, i8** %p, align 8
  store i8 41, i8* %183, align 1
  br label %if.end299

if.end299:                                        ; preds = %if.then297, %land.lhs.true293, %if.end288
  %prec300 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 1
  %184 = load i32, i32* %prec300, align 8
  %cmp301 = icmp ule i32 %184, 2
  br i1 %cmp301, label %if.then303, label %if.end305

if.then303:                                       ; preds = %if.end299
  %185 = load i8*, i8** %p, align 8
  %incdec.ptr304 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr304, i8** %p, align 8
  store i8 40, i8* %185, align 1
  br label %if.end305

if.end305:                                        ; preds = %if.then303, %if.end299
  %186 = load i8*, i8** %p, align 8
  %label306 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %187 = load i8*, i8** %label306, align 8
  %call307 = call i8* @strcpy(i8* noundef %186, i8* noundef %187) #11
  %label308 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %188 = load i8*, i8** %label308, align 8
  %call309 = call i64 @strlen(i8* noundef %188) #9
  %189 = load i8*, i8** %p, align 8
  %add.ptr310 = getelementptr inbounds i8, i8* %189, i64 %call309
  store i8* %add.ptr310, i8** %p, align 8
  %prec311 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 1
  %190 = load i32, i32* %prec311, align 8
  %cmp312 = icmp ule i32 %190, 2
  br i1 %cmp312, label %if.then314, label %if.end316

if.then314:                                       ; preds = %if.end305
  %191 = load i8*, i8** %p, align 8
  %incdec.ptr315 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr315, i8** %p, align 8
  store i8 41, i8* %191, align 1
  br label %if.end316

if.end316:                                        ; preds = %if.then314, %if.end305
  %192 = load i8*, i8** %p, align 8
  %incdec.ptr317 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %incdec.ptr317, i8** %p, align 8
  store i8 43, i8* %192, align 1
  %193 = load i8*, i8** %p, align 8
  %incdec.ptr318 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr318, i8** %p, align 8
  store i8 0, i8* %193, align 1
  %prec319 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 1
  store i32 1, i32* %prec319, align 8
  %194 = bitcast %struct.arrow* %second to i8*
  %195 = bitcast %struct.arrow* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 8 %195, i64 16, i1 false)
  br label %if.end444

if.else320:                                       ; preds = %land.lhs.true204, %land.lhs.true197, %land.lhs.true, %if.else
  br label %nevermind

nevermind:                                        ; preds = %if.else320, %if.then272, %if.then251, %if.then230
  %prec321 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 1
  %196 = load i32, i32* %prec321, align 8
  %cmp322 = icmp uge i32 %196, 1
  br i1 %cmp322, label %land.lhs.true324, label %if.else394

land.lhs.true324:                                 ; preds = %nevermind
  %prec325 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 1
  %197 = load i32, i32* %prec325, align 8
  %cmp326 = icmp uge i32 %197, 1
  br i1 %cmp326, label %land.lhs.true328, label %if.else394

land.lhs.true328:                                 ; preds = %land.lhs.true324
  %label329 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %198 = load i8*, i8** %label329, align 8
  %call330 = call i64 @strlen(i8* noundef %198) #9
  %label331 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %199 = load i8*, i8** %label331, align 8
  %call332 = call i64 @strlen(i8* noundef %199) #9
  %sub333 = sub i64 %call330, %call332
  store i64 %sub333, i64* %diff, align 8
  %cmp334 = icmp sge i64 %sub333, 0
  br i1 %cmp334, label %land.lhs.true336, label %if.else394

land.lhs.true336:                                 ; preds = %land.lhs.true328
  %label337 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %200 = load i8*, i8** %label337, align 8
  %label338 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %201 = load i8*, i8** %label338, align 8
  %label339 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %202 = load i8*, i8** %label339, align 8
  %call340 = call i64 @strlen(i8* noundef %202) #9
  %call341 = call i32 @strncmp(i8* noundef %200, i8* noundef %201, i64 noundef %call340) #9
  %cmp342 = icmp eq i32 %call341, 0
  br i1 %cmp342, label %if.then344, label %if.else394

if.then344:                                       ; preds = %land.lhs.true336
  %label345 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %203 = load i8*, i8** %label345, align 8
  %call346 = call i64 @strlen(i8* noundef %203) #9
  %add347 = add i64 %call346, 5
  %add348 = add i64 %add347, 1
  %call349 = call noalias i8* @malloc(i64 noundef %add348) #11
  %label350 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  store i8* %call349, i8** %label350, align 8
  %label352 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %204 = load i8*, i8** %label352, align 8
  store i8* %204, i8** %p351, align 8
  %prec353 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 1
  %205 = load i32, i32* %prec353, align 8
  %cmp354 = icmp ule i32 %205, 2
  br i1 %cmp354, label %if.then356, label %if.end358

if.then356:                                       ; preds = %if.then344
  %206 = load i8*, i8** %p351, align 8
  %incdec.ptr357 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr357, i8** %p351, align 8
  store i8 40, i8* %206, align 1
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %if.then344
  %207 = load i8*, i8** %p351, align 8
  %label359 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %208 = load i8*, i8** %label359, align 8
  %call360 = call i8* @strcpy(i8* noundef %207, i8* noundef %208) #11
  %label361 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %209 = load i8*, i8** %label361, align 8
  %call362 = call i64 @strlen(i8* noundef %209) #9
  %210 = load i8*, i8** %p351, align 8
  %add.ptr363 = getelementptr inbounds i8, i8* %210, i64 %call362
  store i8* %add.ptr363, i8** %p351, align 8
  %prec364 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 1
  %211 = load i32, i32* %prec364, align 8
  %cmp365 = icmp ule i32 %211, 2
  br i1 %cmp365, label %if.then367, label %if.end369

if.then367:                                       ; preds = %if.end358
  %212 = load i8*, i8** %p351, align 8
  %incdec.ptr368 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr368, i8** %p351, align 8
  store i8 41, i8* %212, align 1
  br label %if.end369

if.end369:                                        ; preds = %if.then367, %if.end358
  %213 = load i8*, i8** %p351, align 8
  %incdec.ptr370 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr370, i8** %p351, align 8
  store i8 43, i8* %213, align 1
  %214 = load i64, i64* %diff, align 8
  %cmp371 = icmp ne i64 %214, 0
  br i1 %cmp371, label %land.lhs.true373, label %if.end379

land.lhs.true373:                                 ; preds = %if.end369
  %prec374 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 1
  %215 = load i32, i32* %prec374, align 8
  %cmp375 = icmp ult i32 %215, 1
  br i1 %cmp375, label %if.then377, label %if.end379

if.then377:                                       ; preds = %land.lhs.true373
  %216 = load i8*, i8** %p351, align 8
  %incdec.ptr378 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr378, i8** %p351, align 8
  store i8 40, i8* %216, align 1
  br label %if.end379

if.end379:                                        ; preds = %if.then377, %land.lhs.true373, %if.end369
  %217 = load i8*, i8** %p351, align 8
  %label380 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %218 = load i8*, i8** %label380, align 8
  %219 = load i64, i64* %diff, align 8
  %add.ptr381 = getelementptr inbounds i8, i8* %218, i64 %219
  %220 = load i64, i64* %diff, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %217, i8* align 1 %add.ptr381, i64 %220, i1 false)
  %221 = load i64, i64* %diff, align 8
  %222 = load i8*, i8** %p351, align 8
  %add.ptr382 = getelementptr inbounds i8, i8* %222, i64 %221
  store i8* %add.ptr382, i8** %p351, align 8
  %223 = load i64, i64* %diff, align 8
  %cmp383 = icmp ne i64 %223, 0
  br i1 %cmp383, label %land.lhs.true385, label %if.end391

land.lhs.true385:                                 ; preds = %if.end379
  %prec386 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 1
  %224 = load i32, i32* %prec386, align 8
  %cmp387 = icmp ult i32 %224, 1
  br i1 %cmp387, label %if.then389, label %if.end391

if.then389:                                       ; preds = %land.lhs.true385
  %225 = load i8*, i8** %p351, align 8
  %incdec.ptr390 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr390, i8** %p351, align 8
  store i8 41, i8* %225, align 1
  br label %if.end391

if.end391:                                        ; preds = %if.then389, %land.lhs.true385, %if.end379
  %226 = load i8*, i8** %p351, align 8
  %incdec.ptr392 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %incdec.ptr392, i8** %p351, align 8
  store i8 0, i8* %226, align 1
  %prec393 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 1
  store i32 1, i32* %prec393, align 8
  %227 = bitcast %struct.arrow* %first to i8*
  %228 = bitcast %struct.arrow* %in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %227, i8* align 8 %228, i64 16, i1 false)
  br label %if.end443

if.else394:                                       ; preds = %land.lhs.true336, %land.lhs.true328, %land.lhs.true324, %nevermind
  %label395 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %229 = load i8*, i8** %label395, align 8
  %call396 = call i64 @strlen(i8* noundef %229) #9
  %label397 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %230 = load i8*, i8** %label397, align 8
  %call398 = call i64 @strlen(i8* noundef %230) #9
  %add399 = add i64 %call396, %call398
  %add400 = add i64 %add399, 5
  %add401 = add i64 %add400, 1
  %call402 = call noalias i8* @malloc(i64 noundef %add401) #11
  %label403 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  store i8* %call402, i8** %label403, align 8
  %label405 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %231 = load i8*, i8** %label405, align 8
  store i8* %231, i8** %p404, align 8
  %prec406 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 1
  %232 = load i32, i32* %prec406, align 8
  %cmp407 = icmp ule i32 %232, 2
  br i1 %cmp407, label %if.then409, label %if.end411

if.then409:                                       ; preds = %if.else394
  %233 = load i8*, i8** %p404, align 8
  %incdec.ptr410 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr410, i8** %p404, align 8
  store i8 40, i8* %233, align 1
  br label %if.end411

if.end411:                                        ; preds = %if.then409, %if.else394
  %234 = load i8*, i8** %p404, align 8
  %label412 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %235 = load i8*, i8** %label412, align 8
  %call413 = call i8* @strcpy(i8* noundef %234, i8* noundef %235) #11
  %label414 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 0
  %236 = load i8*, i8** %label414, align 8
  %call415 = call i64 @strlen(i8* noundef %236) #9
  %237 = load i8*, i8** %p404, align 8
  %add.ptr416 = getelementptr inbounds i8, i8* %237, i64 %call415
  store i8* %add.ptr416, i8** %p404, align 8
  %prec417 = getelementptr inbounds %struct.arrow, %struct.arrow* %self, i32 0, i32 1
  %238 = load i32, i32* %prec417, align 8
  %cmp418 = icmp ule i32 %238, 2
  br i1 %cmp418, label %if.then420, label %if.end422

if.then420:                                       ; preds = %if.end411
  %239 = load i8*, i8** %p404, align 8
  %incdec.ptr421 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr421, i8** %p404, align 8
  store i8 41, i8* %239, align 1
  br label %if.end422

if.end422:                                        ; preds = %if.then420, %if.end411
  %240 = load i8*, i8** %p404, align 8
  %incdec.ptr423 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %incdec.ptr423, i8** %p404, align 8
  store i8 42, i8* %240, align 1
  %prec424 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 1
  %241 = load i32, i32* %prec424, align 8
  %cmp425 = icmp ult i32 %241, 1
  br i1 %cmp425, label %if.then427, label %if.end429

if.then427:                                       ; preds = %if.end422
  %242 = load i8*, i8** %p404, align 8
  %incdec.ptr428 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %incdec.ptr428, i8** %p404, align 8
  store i8 40, i8* %242, align 1
  br label %if.end429

if.end429:                                        ; preds = %if.then427, %if.end422
  %243 = load i8*, i8** %p404, align 8
  %label430 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %244 = load i8*, i8** %label430, align 8
  %call431 = call i8* @strcpy(i8* noundef %243, i8* noundef %244) #11
  %label432 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %245 = load i8*, i8** %label432, align 8
  %call433 = call i64 @strlen(i8* noundef %245) #9
  %246 = load i8*, i8** %p404, align 8
  %add.ptr434 = getelementptr inbounds i8, i8* %246, i64 %call433
  store i8* %add.ptr434, i8** %p404, align 8
  %prec435 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 1
  %247 = load i32, i32* %prec435, align 8
  %cmp436 = icmp ult i32 %247, 1
  br i1 %cmp436, label %if.then438, label %if.end440

if.then438:                                       ; preds = %if.end429
  %248 = load i8*, i8** %p404, align 8
  %incdec.ptr439 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr439, i8** %p404, align 8
  store i8 41, i8* %248, align 1
  br label %if.end440

if.end440:                                        ; preds = %if.then438, %if.end429
  %249 = load i8*, i8** %p404, align 8
  %incdec.ptr441 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %incdec.ptr441, i8** %p404, align 8
  store i8 0, i8* %249, align 1
  %prec442 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 1
  store i32 1, i32* %prec442, align 8
  %250 = bitcast %struct.arrow* %first to i8*
  %251 = bitcast %struct.arrow* %in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %250, i8* align 8 %251, i64 16, i1 false)
  br label %if.end443

if.end443:                                        ; preds = %if.end440, %if.end391
  br label %if.end444

if.end444:                                        ; preds = %if.end443, %if.end316
  br label %if.end445

if.end445:                                        ; preds = %if.end444, %if.then190
  %label446 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %252 = load i8*, i8** %label446, align 8
  %253 = load i8, i8* %252, align 1
  %tobool447 = icmp ne i8 %253, 0
  br i1 %tobool447, label %if.else449, label %if.then448

if.then448:                                       ; preds = %if.end445
  %254 = bitcast %struct.arrow* %bypass to i8*
  %255 = bitcast %struct.arrow* %second to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %254, i8* align 8 %255, i64 16, i1 false)
  br label %if.end502

if.else449:                                       ; preds = %if.end445
  %label450 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %256 = load i8*, i8** %label450, align 8
  %257 = load i8, i8* %256, align 1
  %tobool451 = icmp ne i8 %257, 0
  br i1 %tobool451, label %if.else453, label %if.then452

if.then452:                                       ; preds = %if.else449
  %258 = bitcast %struct.arrow* %bypass to i8*
  %259 = bitcast %struct.arrow* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %258, i8* align 8 %259, i64 16, i1 false)
  br label %if.end501

if.else453:                                       ; preds = %if.else449
  %label454 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %260 = load i8*, i8** %label454, align 8
  %call455 = call i64 @strlen(i8* noundef %260) #9
  %label456 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %261 = load i8*, i8** %label456, align 8
  %call457 = call i64 @strlen(i8* noundef %261) #9
  %add458 = add i64 %call455, %call457
  %add459 = add i64 %add458, 4
  %add460 = add i64 %add459, 1
  %call461 = call noalias i8* @malloc(i64 noundef %add460) #11
  %label462 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  store i8* %call461, i8** %label462, align 8
  %label464 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %262 = load i8*, i8** %label464, align 8
  store i8* %262, i8** %p463, align 8
  %prec465 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 1
  %263 = load i32, i32* %prec465, align 8
  %cmp466 = icmp ult i32 %263, 1
  br i1 %cmp466, label %if.then468, label %if.end470

if.then468:                                       ; preds = %if.else453
  %264 = load i8*, i8** %p463, align 8
  %incdec.ptr469 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr469, i8** %p463, align 8
  store i8 40, i8* %264, align 1
  br label %if.end470

if.end470:                                        ; preds = %if.then468, %if.else453
  %265 = load i8*, i8** %p463, align 8
  %label471 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %266 = load i8*, i8** %label471, align 8
  %call472 = call i8* @strcpy(i8* noundef %265, i8* noundef %266) #11
  %label473 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %267 = load i8*, i8** %label473, align 8
  %call474 = call i64 @strlen(i8* noundef %267) #9
  %268 = load i8*, i8** %p463, align 8
  %add.ptr475 = getelementptr inbounds i8, i8* %268, i64 %call474
  store i8* %add.ptr475, i8** %p463, align 8
  %prec476 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 1
  %269 = load i32, i32* %prec476, align 8
  %cmp477 = icmp ult i32 %269, 1
  br i1 %cmp477, label %if.then479, label %if.end481

if.then479:                                       ; preds = %if.end470
  %270 = load i8*, i8** %p463, align 8
  %incdec.ptr480 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %incdec.ptr480, i8** %p463, align 8
  store i8 41, i8* %270, align 1
  br label %if.end481

if.end481:                                        ; preds = %if.then479, %if.end470
  %prec482 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 1
  %271 = load i32, i32* %prec482, align 8
  %cmp483 = icmp ult i32 %271, 1
  br i1 %cmp483, label %if.then485, label %if.end487

if.then485:                                       ; preds = %if.end481
  %272 = load i8*, i8** %p463, align 8
  %incdec.ptr486 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %incdec.ptr486, i8** %p463, align 8
  store i8 40, i8* %272, align 1
  br label %if.end487

if.end487:                                        ; preds = %if.then485, %if.end481
  %273 = load i8*, i8** %p463, align 8
  %label488 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %274 = load i8*, i8** %label488, align 8
  %call489 = call i8* @strcpy(i8* noundef %273, i8* noundef %274) #11
  %label490 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %275 = load i8*, i8** %label490, align 8
  %call491 = call i64 @strlen(i8* noundef %275) #9
  %276 = load i8*, i8** %p463, align 8
  %add.ptr492 = getelementptr inbounds i8, i8* %276, i64 %call491
  store i8* %add.ptr492, i8** %p463, align 8
  %prec493 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 1
  %277 = load i32, i32* %prec493, align 8
  %cmp494 = icmp ult i32 %277, 1
  br i1 %cmp494, label %if.then496, label %if.end498

if.then496:                                       ; preds = %if.end487
  %278 = load i8*, i8** %p463, align 8
  %incdec.ptr497 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %incdec.ptr497, i8** %p463, align 8
  store i8 41, i8* %278, align 1
  br label %if.end498

if.end498:                                        ; preds = %if.then496, %if.end487
  %279 = load i8*, i8** %p463, align 8
  %incdec.ptr499 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %incdec.ptr499, i8** %p463, align 8
  store i8 0, i8* %279, align 1
  %prec500 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 1
  store i32 1, i32* %prec500, align 8
  br label %if.end501

if.end501:                                        ; preds = %if.end498, %if.then452
  br label %if.end502

if.end502:                                        ; preds = %if.end501, %if.then448
  %label503 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %280 = load i8*, i8** %label503, align 8
  %tobool504 = icmp ne i8* %280, null
  br i1 %tobool504, label %if.else506, label %if.then505

if.then505:                                       ; preds = %if.end502
  %281 = bitcast %struct.arrow* %merged to i8*
  %282 = bitcast %struct.arrow* %existing to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %281, i8* align 8 %282, i64 16, i1 false)
  br label %if.end591

if.else506:                                       ; preds = %if.end502
  %label507 = getelementptr inbounds %struct.arrow, %struct.arrow* %existing, i32 0, i32 0
  %283 = load i8*, i8** %label507, align 8
  %tobool508 = icmp ne i8* %283, null
  br i1 %tobool508, label %if.else532, label %if.then509

if.then509:                                       ; preds = %if.else506
  %label510 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %284 = load i8*, i8** %label510, align 8
  %label511 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %285 = load i8*, i8** %label511, align 8
  %cmp512 = icmp eq i8* %284, %285
  br i1 %cmp512, label %if.then519, label %lor.lhs.false514

lor.lhs.false514:                                 ; preds = %if.then509
  %label515 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %286 = load i8*, i8** %label515, align 8
  %label516 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %287 = load i8*, i8** %label516, align 8
  %cmp517 = icmp eq i8* %286, %287
  br i1 %cmp517, label %if.then519, label %if.else530

if.then519:                                       ; preds = %lor.lhs.false514, %if.then509
  %label520 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %288 = load i8*, i8** %label520, align 8
  %call521 = call i64 @strlen(i8* noundef %288) #9
  %add522 = add i64 %call521, 1
  %call523 = call noalias i8* @malloc(i64 noundef %add522) #11
  %label524 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 0
  store i8* %call523, i8** %label524, align 8
  %label525 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 0
  %289 = load i8*, i8** %label525, align 8
  %label526 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %290 = load i8*, i8** %label526, align 8
  %call527 = call i8* @strcpy(i8* noundef %289, i8* noundef %290) #11
  %prec528 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 1
  %291 = load i32, i32* %prec528, align 8
  %prec529 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 1
  store i32 %291, i32* %prec529, align 8
  br label %if.end531

if.else530:                                       ; preds = %lor.lhs.false514
  %292 = bitcast %struct.arrow* %merged to i8*
  %293 = bitcast %struct.arrow* %bypass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %292, i8* align 8 %293, i64 16, i1 false)
  br label %if.end531

if.end531:                                        ; preds = %if.else530, %if.then519
  br label %if.end590

if.else532:                                       ; preds = %if.else506
  %label533 = getelementptr inbounds %struct.arrow, %struct.arrow* %existing, i32 0, i32 0
  %294 = load i8*, i8** %label533, align 8
  %295 = load i8, i8* %294, align 1
  %tobool534 = icmp ne i8 %295, 0
  br i1 %tobool534, label %if.else564, label %if.then535

if.then535:                                       ; preds = %if.else532
  %label536 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %296 = load i8*, i8** %label536, align 8
  %call537 = call i64 @strlen(i8* noundef %296) #9
  %add538 = add i64 %call537, 3
  %add539 = add i64 %add538, 1
  %call540 = call noalias i8* @malloc(i64 noundef %add539) #11
  %label541 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 0
  store i8* %call540, i8** %label541, align 8
  %label543 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 0
  %297 = load i8*, i8** %label543, align 8
  store i8* %297, i8** %p542, align 8
  %prec544 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 1
  %298 = load i32, i32* %prec544, align 8
  %cmp545 = icmp ule i32 %298, 2
  br i1 %cmp545, label %if.then547, label %if.end549

if.then547:                                       ; preds = %if.then535
  %299 = load i8*, i8** %p542, align 8
  %incdec.ptr548 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %incdec.ptr548, i8** %p542, align 8
  store i8 40, i8* %299, align 1
  br label %if.end549

if.end549:                                        ; preds = %if.then547, %if.then535
  %300 = load i8*, i8** %p542, align 8
  %label550 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %301 = load i8*, i8** %label550, align 8
  %call551 = call i8* @strcpy(i8* noundef %300, i8* noundef %301) #11
  %label552 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %302 = load i8*, i8** %label552, align 8
  %call553 = call i64 @strlen(i8* noundef %302) #9
  %303 = load i8*, i8** %p542, align 8
  %add.ptr554 = getelementptr inbounds i8, i8* %303, i64 %call553
  store i8* %add.ptr554, i8** %p542, align 8
  %prec555 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 1
  %304 = load i32, i32* %prec555, align 8
  %cmp556 = icmp ule i32 %304, 2
  br i1 %cmp556, label %if.then558, label %if.end560

if.then558:                                       ; preds = %if.end549
  %305 = load i8*, i8** %p542, align 8
  %incdec.ptr559 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %incdec.ptr559, i8** %p542, align 8
  store i8 41, i8* %305, align 1
  br label %if.end560

if.end560:                                        ; preds = %if.then558, %if.end549
  %306 = load i8*, i8** %p542, align 8
  %incdec.ptr561 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %incdec.ptr561, i8** %p542, align 8
  store i8 63, i8* %306, align 1
  %307 = load i8*, i8** %p542, align 8
  %incdec.ptr562 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr562, i8** %p542, align 8
  store i8 0, i8* %307, align 1
  %prec563 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 1
  store i32 2, i32* %prec563, align 8
  br label %if.end589

if.else564:                                       ; preds = %if.else532
  %label565 = getelementptr inbounds %struct.arrow, %struct.arrow* %existing, i32 0, i32 0
  %308 = load i8*, i8** %label565, align 8
  %call566 = call i64 @strlen(i8* noundef %308) #9
  %label567 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %309 = load i8*, i8** %label567, align 8
  %call568 = call i64 @strlen(i8* noundef %309) #9
  %add569 = add i64 %call566, %call568
  %add570 = add i64 %add569, 1
  %add571 = add i64 %add570, 1
  %call572 = call noalias i8* @malloc(i64 noundef %add571) #11
  %label573 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 0
  store i8* %call572, i8** %label573, align 8
  %label575 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 0
  %310 = load i8*, i8** %label575, align 8
  store i8* %310, i8** %p574, align 8
  %311 = load i8*, i8** %p574, align 8
  %label576 = getelementptr inbounds %struct.arrow, %struct.arrow* %existing, i32 0, i32 0
  %312 = load i8*, i8** %label576, align 8
  %call577 = call i8* @strcpy(i8* noundef %311, i8* noundef %312) #11
  %label578 = getelementptr inbounds %struct.arrow, %struct.arrow* %existing, i32 0, i32 0
  %313 = load i8*, i8** %label578, align 8
  %call579 = call i64 @strlen(i8* noundef %313) #9
  %314 = load i8*, i8** %p574, align 8
  %add.ptr580 = getelementptr inbounds i8, i8* %314, i64 %call579
  store i8* %add.ptr580, i8** %p574, align 8
  %315 = load i8*, i8** %p574, align 8
  %incdec.ptr581 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %incdec.ptr581, i8** %p574, align 8
  store i8 124, i8* %315, align 1
  %316 = load i8*, i8** %p574, align 8
  %label582 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %317 = load i8*, i8** %label582, align 8
  %call583 = call i8* @strcpy(i8* noundef %316, i8* noundef %317) #11
  %label584 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %318 = load i8*, i8** %label584, align 8
  %call585 = call i64 @strlen(i8* noundef %318) #9
  %319 = load i8*, i8** %p574, align 8
  %add.ptr586 = getelementptr inbounds i8, i8* %319, i64 %call585
  store i8* %add.ptr586, i8** %p574, align 8
  %320 = load i8*, i8** %p574, align 8
  %incdec.ptr587 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %incdec.ptr587, i8** %p574, align 8
  store i8 0, i8* %320, align 1
  %prec588 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 1
  store i32 0, i32* %prec588, align 8
  br label %if.end589

if.end589:                                        ; preds = %if.else564, %if.end560
  br label %if.end590

if.end590:                                        ; preds = %if.end589, %if.end531
  br label %if.end591

if.end591:                                        ; preds = %if.end590, %if.then505
  %label592 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %321 = load i8*, i8** %label592, align 8
  %label593 = getelementptr inbounds %struct.arrow, %struct.arrow* %in, i32 0, i32 0
  %322 = load i8*, i8** %label593, align 8
  %cmp594 = icmp ne i8* %321, %322
  br i1 %cmp594, label %if.then596, label %if.end598

if.then596:                                       ; preds = %if.end591
  %label597 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %323 = load i8*, i8** %label597, align 8
  call void @free(i8* noundef %323) #11
  br label %if.end598

if.end598:                                        ; preds = %if.then596, %if.end591
  %label599 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %324 = load i8*, i8** %label599, align 8
  %label600 = getelementptr inbounds %struct.arrow, %struct.arrow* %out, i32 0, i32 0
  %325 = load i8*, i8** %label600, align 8
  %cmp601 = icmp ne i8* %324, %325
  br i1 %cmp601, label %if.then603, label %if.end605

if.then603:                                       ; preds = %if.end598
  %label604 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %326 = load i8*, i8** %label604, align 8
  call void @free(i8* noundef %326) #11
  br label %if.end605

if.end605:                                        ; preds = %if.then603, %if.end598
  %label606 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %327 = load i8*, i8** %label606, align 8
  %label607 = getelementptr inbounds %struct.arrow, %struct.arrow* %first, i32 0, i32 0
  %328 = load i8*, i8** %label607, align 8
  %cmp608 = icmp ne i8* %327, %328
  br i1 %cmp608, label %land.lhs.true610, label %if.end622

land.lhs.true610:                                 ; preds = %if.end605
  %label611 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %329 = load i8*, i8** %label611, align 8
  %label612 = getelementptr inbounds %struct.arrow, %struct.arrow* %second, i32 0, i32 0
  %330 = load i8*, i8** %label612, align 8
  %cmp613 = icmp ne i8* %329, %330
  br i1 %cmp613, label %land.lhs.true615, label %if.end622

land.lhs.true615:                                 ; preds = %land.lhs.true610
  %label616 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %331 = load i8*, i8** %label616, align 8
  %label617 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 0
  %332 = load i8*, i8** %label617, align 8
  %cmp618 = icmp ne i8* %331, %332
  br i1 %cmp618, label %if.then620, label %if.end622

if.then620:                                       ; preds = %land.lhs.true615
  %label621 = getelementptr inbounds %struct.arrow, %struct.arrow* %bypass, i32 0, i32 0
  %333 = load i8*, i8** %label621, align 8
  call void @free(i8* noundef %333) #11
  br label %if.end622

if.end622:                                        ; preds = %if.then620, %land.lhs.true615, %land.lhs.true610, %if.end605
  %label623 = getelementptr inbounds %struct.arrow, %struct.arrow* %existing, i32 0, i32 0
  %334 = load i8*, i8** %label623, align 8
  %label624 = getelementptr inbounds %struct.arrow, %struct.arrow* %merged, i32 0, i32 0
  %335 = load i8*, i8** %label624, align 8
  %cmp625 = icmp ne i8* %334, %335
  br i1 %cmp625, label %if.then627, label %if.end629

if.then627:                                       ; preds = %if.end622
  %label628 = getelementptr inbounds %struct.arrow, %struct.arrow* %existing, i32 0, i32 0
  %336 = load i8*, i8** %label628, align 8
  call void @free(i8* noundef %336) #11
  br label %if.end629

if.end629:                                        ; preds = %if.then627, %if.end622
  %337 = load i32, i32* %id1145, align 4
  %idxprom630 = sext i32 %337 to i64
  %338 = mul nsw i64 %idxprom630, %4
  %arrayidx631 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %338
  %339 = load i32, i32* %id2154, align 4
  %idxprom632 = sext i32 %339 to i64
  %arrayidx633 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx631, i64 %idxprom632
  %340 = bitcast %struct.arrow* %arrayidx633 to i8*
  %341 = bitcast %struct.arrow* %merged to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %340, i8* align 8 %341, i64 16, i1 false)
  br label %for.inc634

for.inc634:                                       ; preds = %if.end629, %if.then183, %if.then161
  %342 = load i32, i32* %id2154, align 4
  %inc635 = add nsw i32 %342, 1
  store i32 %inc635, i32* %id2154, align 4
  br label %for.cond155, !llvm.loop !83

for.end636:                                       ; preds = %for.cond155
  br label %for.inc637

for.inc637:                                       ; preds = %for.end636, %if.then152
  %343 = load i32, i32* %id1145, align 4
  %inc638 = add nsw i32 %343, 1
  store i32 %inc638, i32* %id1145, align 4
  br label %for.cond146, !llvm.loop !84

for.end639:                                       ; preds = %for.cond146
  store i32 0, i32* %id640, align 4
  br label %for.cond641

for.cond641:                                      ; preds = %for.inc665, %for.end639
  %344 = load i32, i32* %id640, align 4
  %345 = load i32, i32* %dfa_size, align 4
  %cmp642 = icmp sle i32 %344, %345
  br i1 %cmp642, label %for.body644, label %for.end667

for.body644:                                      ; preds = %for.cond641
  %346 = load i32, i32* %id640, align 4
  %idxprom645 = sext i32 %346 to i64
  %347 = mul nsw i64 %idxprom645, %4
  %arrayidx646 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %347
  %348 = load i32, i32* %best_fit, align 4
  %idxprom647 = sext i32 %348 to i64
  %arrayidx648 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx646, i64 %idxprom647
  %label649 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx648, i32 0, i32 0
  %349 = load i8*, i8** %label649, align 16
  call void @free(i8* noundef %349) #11
  %350 = load i32, i32* %id640, align 4
  %idxprom650 = sext i32 %350 to i64
  %351 = mul nsw i64 %idxprom650, %4
  %arrayidx651 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %351
  %352 = load i32, i32* %best_fit, align 4
  %idxprom652 = sext i32 %352 to i64
  %arrayidx653 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx651, i64 %idxprom652
  %label654 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx653, i32 0, i32 0
  store i8* null, i8** %label654, align 16
  %353 = load i32, i32* %best_fit, align 4
  %idxprom655 = sext i32 %353 to i64
  %354 = mul nsw i64 %idxprom655, %4
  %arrayidx656 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %354
  %355 = load i32, i32* %id640, align 4
  %idxprom657 = sext i32 %355 to i64
  %arrayidx658 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx656, i64 %idxprom657
  %label659 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx658, i32 0, i32 0
  %356 = load i8*, i8** %label659, align 16
  call void @free(i8* noundef %356) #11
  %357 = load i32, i32* %best_fit, align 4
  %idxprom660 = sext i32 %357 to i64
  %358 = mul nsw i64 %idxprom660, %4
  %arrayidx661 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %358
  %359 = load i32, i32* %id640, align 4
  %idxprom662 = sext i32 %359 to i64
  %arrayidx663 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx661, i64 %idxprom662
  %label664 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx663, i32 0, i32 0
  store i8* null, i8** %label664, align 16
  br label %for.inc665

for.inc665:                                       ; preds = %for.body644
  %360 = load i32, i32* %id640, align 4
  %inc666 = add nsw i32 %360, 1
  store i32 %inc666, i32* %id640, align 4
  br label %for.cond641, !llvm.loop !85

for.end667:                                       ; preds = %for.cond641
  br label %while.cond

while.end:                                        ; preds = %if.then143
  %361 = load i32, i32* %dfa_size, align 4
  %idxprom668 = sext i32 %361 to i64
  %362 = mul nsw i64 %idxprom668, %4
  %arrayidx669 = getelementptr inbounds %struct.arrow, %struct.arrow* %vla, i64 %362
  %363 = load i32, i32* %dfa_size, align 4
  %idxprom670 = sext i32 %363 to i64
  %arrayidx671 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx669, i64 %idxprom670
  %label672 = getelementptr inbounds %struct.arrow, %struct.arrow* %arrayidx671, i32 0, i32 0
  %364 = load i8*, i8** %label672, align 16
  store i8* %364, i8** %regex, align 8
  %365 = load i8*, i8** %regex, align 8
  %tobool673 = icmp ne i8* %365, null
  br i1 %tobool673, label %if.end677, label %if.then674

if.then674:                                       ; preds = %while.end
  %call675 = call noalias i8* @malloc(i64 noundef 3) #11
  store i8* %call675, i8** %regex, align 8
  %366 = load i8*, i8** %regex, align 8
  %call676 = call i8* @strcpy(i8* noundef %366, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)) #11
  br label %if.end677

if.end677:                                        ; preds = %if.then674, %while.end
  %367 = load i8*, i8** %regex, align 8
  %368 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %368)
  ret i8* %367
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
