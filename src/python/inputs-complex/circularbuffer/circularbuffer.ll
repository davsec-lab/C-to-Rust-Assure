; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/circularbuffer/circularbuffer.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/circularbuffer/circularbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_circularBuffer = type { i64, i64, i64, i64, i8* }

@.str = private unnamed_addr constant [6 x i8] c"%02X|\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c|\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"CircularBuffer: %s <size %zu dataSize:%zu>\0A\00", align 1

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
define dso_local %struct.s_circularBuffer* @CircularBufferCreate(i64 noundef %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %totalSize = alloca i64, align 8
  %p = alloca i8*, align 8
  %buffer = alloca %struct.s_circularBuffer*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %add = add i64 40, %0
  store i64 %add, i64* %totalSize, align 8
  %1 = load i64, i64* %totalSize, align 8
  %call = call noalias i8* @malloc(i64 noundef %1) #4
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = bitcast i8* %2 to %struct.s_circularBuffer*
  store %struct.s_circularBuffer* %3, %struct.s_circularBuffer** %buffer, align 8
  %4 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 40
  %5 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %buffer, align 8
  %buffer1 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %5, i32 0, i32 4
  store i8* %add.ptr, i8** %buffer1, align 8
  %6 = load i64, i64* %size.addr, align 8
  %7 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %buffer, align 8
  %size2 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %7, i32 0, i32 0
  store i64 %6, i64* %size2, align 8
  %8 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %buffer, align 8
  call void @CircularBufferReset(%struct.s_circularBuffer* noundef %8)
  %9 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %buffer, align 8
  ret %struct.s_circularBuffer* %9
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CircularBufferReset(%struct.s_circularBuffer* noundef %cBuf) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %0, i32 0, i32 3
  store i64 -1, i64* %headOffset, align 8
  %1 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %1, i32 0, i32 2
  store i64 -1, i64* %tailOffset, align 8
  %2 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %2, i32 0, i32 1
  store i64 0, i64* %dataSize, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CircularBufferFree(%struct.s_circularBuffer* noundef %cBuf) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  call void @CircularBufferReset(%struct.s_circularBuffer* noundef %0)
  %1 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %1, i32 0, i32 0
  store i64 0, i64* %size, align 8
  %2 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %2, i32 0, i32 1
  store i64 0, i64* %dataSize, align 8
  %3 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %3, i32 0, i32 4
  store i8* null, i8** %buffer, align 8
  %4 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %5 = bitcast %struct.s_circularBuffer* %4 to i8*
  call void @free(i8* noundef %5) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CircularBufferGetCapacity(%struct.s_circularBuffer* noundef %cBuf) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %0, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CircularBufferGetSize(%struct.s_circularBuffer* noundef %cBuf) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %0, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CircularBufferGetDataSize(%struct.s_circularBuffer* noundef %cBuf) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %0, i32 0, i32 1
  %1 = load i64, i64* %dataSize, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CircularBufferPush(%struct.s_circularBuffer* noundef %cBuf, i8* noundef %src, i64 noundef %length) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  %src.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %writableLen = alloca i64, align 8
  %pSrc = alloca i8*, align 8
  %overFlowLen = alloca i64, align 8
  %resetHead = alloca i8, align 1
  %remainSize = alloca i64, align 8
  %coverSize = alloca i64, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end82

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %length.addr, align 8
  store i64 %1, i64* %writableLen, align 8
  %2 = load i8*, i8** %src.addr, align 8
  store i8* %2, i8** %pSrc, align 8
  %3 = load i64, i64* %writableLen, align 8
  %4 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %4, i32 0, i32 0
  %5 = load i64, i64* %size, align 8
  %cmp1 = icmp ugt i64 %3, %5
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %6 = load i64, i64* %writableLen, align 8
  %7 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size3 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %7, i32 0, i32 0
  %8 = load i64, i64* %size3, align 8
  %sub = sub i64 %6, %8
  store i64 %sub, i64* %overFlowLen, align 8
  %9 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size4 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %9, i32 0, i32 0
  %10 = load i64, i64* %size4, align 8
  store i64 %10, i64* %writableLen, align 8
  %11 = load i8*, i8** %src.addr, align 8
  %12 = load i64, i64* %overFlowLen, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 %12
  store i8* %add.ptr, i8** %pSrc, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  store i8 0, i8* %resetHead, align 1
  %13 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %13, i32 0, i32 2
  %14 = load i64, i64* %tailOffset, align 8
  %15 = load i64, i64* %writableLen, align 8
  %add = add i64 %14, %15
  %16 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size6 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %16, i32 0, i32 0
  %17 = load i64, i64* %size6, align 8
  %cmp7 = icmp ult i64 %add, %17
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %18 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %18, i32 0, i32 4
  %19 = load i8*, i8** %buffer, align 8
  %20 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset9 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %20, i32 0, i32 2
  %21 = load i64, i64* %tailOffset9, align 8
  %add10 = add i64 %21, 1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %add10
  %22 = load i8*, i8** %pSrc, align 8
  %23 = load i64, i64* %writableLen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 1 %22, i64 %23, i1 false)
  %24 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset11 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %24, i32 0, i32 2
  %25 = load i64, i64* %tailOffset11, align 8
  %26 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %26, i32 0, i32 3
  %27 = load i64, i64* %headOffset, align 8
  %cmp12 = icmp ult i64 %25, %27
  br i1 %cmp12, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.then8
  %28 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset13 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %28, i32 0, i32 2
  %29 = load i64, i64* %tailOffset13, align 8
  %30 = load i64, i64* %writableLen, align 8
  %add14 = add i64 %29, %30
  %31 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset15 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %31, i32 0, i32 3
  %32 = load i64, i64* %headOffset15, align 8
  %cmp16 = icmp uge i64 %add14, %32
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  store i8 1, i8* %resetHead, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.then8
  %33 = load i64, i64* %writableLen, align 8
  %34 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset19 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %34, i32 0, i32 2
  %35 = load i64, i64* %tailOffset19, align 8
  %add20 = add i64 %35, %33
  store i64 %add20, i64* %tailOffset19, align 8
  br label %if.end44

if.else:                                          ; preds = %if.end5
  %36 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size21 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %36, i32 0, i32 0
  %37 = load i64, i64* %size21, align 8
  %38 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset22 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %38, i32 0, i32 2
  %39 = load i64, i64* %tailOffset22, align 8
  %sub23 = sub i64 %37, %39
  %sub24 = sub i64 %sub23, 1
  store i64 %sub24, i64* %remainSize, align 8
  %40 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer25 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %40, i32 0, i32 4
  %41 = load i8*, i8** %buffer25, align 8
  %42 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset26 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %42, i32 0, i32 2
  %43 = load i64, i64* %tailOffset26, align 8
  %add27 = add i64 %43, 1
  %arrayidx28 = getelementptr inbounds i8, i8* %41, i64 %add27
  %44 = load i8*, i8** %pSrc, align 8
  %45 = load i64, i64* %remainSize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx28, i8* align 1 %44, i64 %45, i1 false)
  %46 = load i64, i64* %writableLen, align 8
  %47 = load i64, i64* %remainSize, align 8
  %sub29 = sub i64 %46, %47
  store i64 %sub29, i64* %coverSize, align 8
  %48 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer30 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %48, i32 0, i32 4
  %49 = load i8*, i8** %buffer30, align 8
  %50 = load i8*, i8** %pSrc, align 8
  %51 = load i64, i64* %remainSize, align 8
  %add.ptr31 = getelementptr i8, i8* %50, i64 %51
  %52 = load i64, i64* %coverSize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %add.ptr31, i64 %52, i1 false)
  %53 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset32 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %53, i32 0, i32 2
  %54 = load i64, i64* %tailOffset32, align 8
  %55 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset33 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %55, i32 0, i32 3
  %56 = load i64, i64* %headOffset33, align 8
  %cmp34 = icmp ult i64 %54, %56
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else
  store i8 1, i8* %resetHead, align 1
  br label %if.end41

if.else36:                                        ; preds = %if.else
  %57 = load i64, i64* %coverSize, align 8
  %58 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset37 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %58, i32 0, i32 3
  %59 = load i64, i64* %headOffset37, align 8
  %cmp38 = icmp ugt i64 %57, %59
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.else36
  store i8 1, i8* %resetHead, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.else36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then35
  %60 = load i64, i64* %coverSize, align 8
  %sub42 = sub i64 %60, 1
  %61 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset43 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %61, i32 0, i32 2
  store i64 %sub42, i64* %tailOffset43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.end18
  %62 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset45 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %62, i32 0, i32 3
  %63 = load i64, i64* %headOffset45, align 8
  %cmp46 = icmp eq i64 %63, -1
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  %64 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset48 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %64, i32 0, i32 3
  store i64 0, i64* %headOffset48, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end44
  %65 = load i8, i8* %resetHead, align 1
  %tobool = trunc i8 %65 to i1
  br i1 %tobool, label %if.then50, label %if.else63

if.then50:                                        ; preds = %if.end49
  %66 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset51 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %66, i32 0, i32 2
  %67 = load i64, i64* %tailOffset51, align 8
  %add52 = add i64 %67, 1
  %68 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size53 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %68, i32 0, i32 0
  %69 = load i64, i64* %size53, align 8
  %cmp54 = icmp ult i64 %add52, %69
  br i1 %cmp54, label %if.then55, label %if.else59

if.then55:                                        ; preds = %if.then50
  %70 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset56 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %70, i32 0, i32 2
  %71 = load i64, i64* %tailOffset56, align 8
  %add57 = add i64 %71, 1
  %72 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset58 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %72, i32 0, i32 3
  store i64 %add57, i64* %headOffset58, align 8
  br label %if.end61

if.else59:                                        ; preds = %if.then50
  %73 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset60 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %73, i32 0, i32 3
  store i64 0, i64* %headOffset60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then55
  %74 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size62 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %74, i32 0, i32 0
  %75 = load i64, i64* %size62, align 8
  %76 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %76, i32 0, i32 1
  store i64 %75, i64* %dataSize, align 8
  br label %if.end82

if.else63:                                        ; preds = %if.end49
  %77 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset64 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %77, i32 0, i32 2
  %78 = load i64, i64* %tailOffset64, align 8
  %79 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset65 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %79, i32 0, i32 3
  %80 = load i64, i64* %headOffset65, align 8
  %cmp66 = icmp uge i64 %78, %80
  br i1 %cmp66, label %if.then67, label %if.else73

if.then67:                                        ; preds = %if.else63
  %81 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset68 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %81, i32 0, i32 2
  %82 = load i64, i64* %tailOffset68, align 8
  %83 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset69 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %83, i32 0, i32 3
  %84 = load i64, i64* %headOffset69, align 8
  %sub70 = sub i64 %82, %84
  %add71 = add i64 %sub70, 1
  %85 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize72 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %85, i32 0, i32 1
  store i64 %add71, i64* %dataSize72, align 8
  br label %if.end81

if.else73:                                        ; preds = %if.else63
  %86 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size74 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %86, i32 0, i32 0
  %87 = load i64, i64* %size74, align 8
  %88 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset75 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %88, i32 0, i32 3
  %89 = load i64, i64* %headOffset75, align 8
  %90 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset76 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %90, i32 0, i32 2
  %91 = load i64, i64* %tailOffset76, align 8
  %sub77 = sub i64 %89, %91
  %sub78 = sub i64 %sub77, 1
  %sub79 = sub i64 %87, %sub78
  %92 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize80 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %92, i32 0, i32 1
  store i64 %sub79, i64* %dataSize80, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.else73, %if.then67
  br label %if.end82

if.end82:                                         ; preds = %if.then, %if.end81, %if.end61
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @inter_circularBuffer_read(%struct.s_circularBuffer* noundef %cBuf, i64 noundef %length, i8* noundef %dataOut, i1 noundef zeroext %resetHead) #0 {
entry:
  %retval = alloca i64, align 8
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  %length.addr = alloca i64, align 8
  %dataOut.addr = alloca i8*, align 8
  %resetHead.addr = alloca i8, align 1
  %rdLen = alloca i64, align 8
  %frg1Len = alloca i64, align 8
  %frg2len = alloca i64, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %dataOut, i8** %dataOut.addr, align 8
  %frombool = zext i1 %resetHead to i8
  store i8 %frombool, i8* %resetHead.addr, align 1
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %0, i32 0, i32 1
  %1 = load i64, i64* %dataSize, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %length.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %length.addr, align 8
  store i64 %3, i64* %rdLen, align 8
  %4 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize2 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %4, i32 0, i32 1
  %5 = load i64, i64* %dataSize2, align 8
  %6 = load i64, i64* %rdLen, align 8
  %cmp3 = icmp ult i64 %5, %6
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize5 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %7, i32 0, i32 1
  %8 = load i64, i64* %dataSize5, align 8
  store i64 %8, i64* %rdLen, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %9 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %9, i32 0, i32 3
  %10 = load i64, i64* %headOffset, align 8
  %11 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %11, i32 0, i32 2
  %12 = load i64, i64* %tailOffset, align 8
  %cmp7 = icmp ule i64 %10, %12
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %13 = load i8*, i8** %dataOut.addr, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then8
  %14 = load i8*, i8** %dataOut.addr, align 8
  %15 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %15, i32 0, i32 4
  %16 = load i8*, i8** %buffer, align 8
  %17 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset10 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %17, i32 0, i32 3
  %18 = load i64, i64* %headOffset10, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %18
  %19 = load i64, i64* %rdLen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %arrayidx, i64 %19, i1 false)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then8
  %20 = load i8, i8* %resetHead.addr, align 1
  %tobool12 = trunc i8 %20 to i1
  br i1 %tobool12, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.end11
  %21 = load i64, i64* %rdLen, align 8
  %22 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset14 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %22, i32 0, i32 3
  %23 = load i64, i64* %headOffset14, align 8
  %add = add i64 %23, %21
  store i64 %add, i64* %headOffset14, align 8
  %24 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset15 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %24, i32 0, i32 3
  %25 = load i64, i64* %headOffset15, align 8
  %26 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset16 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %26, i32 0, i32 2
  %27 = load i64, i64* %tailOffset16, align 8
  %cmp17 = icmp ugt i64 %25, %27
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then13
  %28 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset19 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %28, i32 0, i32 3
  store i64 -1, i64* %headOffset19, align 8
  %29 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset20 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %29, i32 0, i32 2
  store i64 -1, i64* %tailOffset20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end11
  br label %if.end70

if.else:                                          ; preds = %if.end6
  %30 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset23 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %30, i32 0, i32 3
  %31 = load i64, i64* %headOffset23, align 8
  %32 = load i64, i64* %rdLen, align 8
  %add24 = add i64 %31, %32
  %33 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %33, i32 0, i32 0
  %34 = load i64, i64* %size, align 8
  %cmp25 = icmp ule i64 %add24, %34
  br i1 %cmp25, label %if.then26, label %if.else44

if.then26:                                        ; preds = %if.else
  %35 = load i8*, i8** %dataOut.addr, align 8
  %tobool27 = icmp ne i8* %35, null
  br i1 %tobool27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.then26
  %36 = load i8*, i8** %dataOut.addr, align 8
  %37 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer29 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %37, i32 0, i32 4
  %38 = load i8*, i8** %buffer29, align 8
  %39 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset30 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %39, i32 0, i32 3
  %40 = load i64, i64* %headOffset30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %38, i64 %40
  %41 = load i64, i64* %rdLen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %arrayidx31, i64 %41, i1 false)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then26
  %42 = load i8, i8* %resetHead.addr, align 1
  %tobool33 = trunc i8 %42 to i1
  br i1 %tobool33, label %if.then34, label %if.end43

if.then34:                                        ; preds = %if.end32
  %43 = load i64, i64* %rdLen, align 8
  %44 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset35 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %44, i32 0, i32 3
  %45 = load i64, i64* %headOffset35, align 8
  %add36 = add i64 %45, %43
  store i64 %add36, i64* %headOffset35, align 8
  %46 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset37 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %46, i32 0, i32 3
  %47 = load i64, i64* %headOffset37, align 8
  %48 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size38 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %48, i32 0, i32 0
  %49 = load i64, i64* %size38, align 8
  %cmp39 = icmp eq i64 %47, %49
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then34
  %50 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset41 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %50, i32 0, i32 3
  store i64 0, i64* %headOffset41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then34
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end32
  br label %if.end69

if.else44:                                        ; preds = %if.else
  %51 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %size45 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %51, i32 0, i32 0
  %52 = load i64, i64* %size45, align 8
  %53 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset46 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %53, i32 0, i32 3
  %54 = load i64, i64* %headOffset46, align 8
  %sub = sub i64 %52, %54
  store i64 %sub, i64* %frg1Len, align 8
  %55 = load i8*, i8** %dataOut.addr, align 8
  %tobool47 = icmp ne i8* %55, null
  br i1 %tobool47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.else44
  %56 = load i8*, i8** %dataOut.addr, align 8
  %57 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer49 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %57, i32 0, i32 4
  %58 = load i8*, i8** %buffer49, align 8
  %59 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset50 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %59, i32 0, i32 3
  %60 = load i64, i64* %headOffset50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %58, i64 %60
  %61 = load i64, i64* %frg1Len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %56, i8* align 1 %arrayidx51, i64 %61, i1 false)
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.else44
  %62 = load i64, i64* %rdLen, align 8
  %63 = load i64, i64* %frg1Len, align 8
  %sub53 = sub i64 %62, %63
  store i64 %sub53, i64* %frg2len, align 8
  %64 = load i8*, i8** %dataOut.addr, align 8
  %tobool54 = icmp ne i8* %64, null
  br i1 %tobool54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  %65 = load i8*, i8** %dataOut.addr, align 8
  %66 = load i64, i64* %frg1Len, align 8
  %add.ptr = getelementptr i8, i8* %65, i64 %66
  %67 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer56 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %67, i32 0, i32 4
  %68 = load i8*, i8** %buffer56, align 8
  %69 = load i64, i64* %frg2len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %68, i64 %69, i1 false)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52
  %70 = load i8, i8* %resetHead.addr, align 1
  %tobool58 = trunc i8 %70 to i1
  br i1 %tobool58, label %if.then59, label %if.end68

if.then59:                                        ; preds = %if.end57
  %71 = load i64, i64* %frg2len, align 8
  %72 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset60 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %72, i32 0, i32 3
  store i64 %71, i64* %headOffset60, align 8
  %73 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset61 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %73, i32 0, i32 3
  %74 = load i64, i64* %headOffset61, align 8
  %75 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset62 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %75, i32 0, i32 2
  %76 = load i64, i64* %tailOffset62, align 8
  %cmp63 = icmp ugt i64 %74, %76
  br i1 %cmp63, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.then59
  %77 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset65 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %77, i32 0, i32 3
  store i64 -1, i64* %headOffset65, align 8
  %78 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset66 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %78, i32 0, i32 2
  store i64 -1, i64* %tailOffset66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.then59
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end57
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end43
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end22
  %79 = load i8, i8* %resetHead.addr, align 1
  %tobool71 = trunc i8 %79 to i1
  br i1 %tobool71, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end70
  %80 = load i64, i64* %rdLen, align 8
  %81 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %dataSize73 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %81, i32 0, i32 1
  %82 = load i64, i64* %dataSize73, align 8
  %sub74 = sub i64 %82, %80
  store i64 %sub74, i64* %dataSize73, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end70
  %83 = load i64, i64* %rdLen, align 8
  store i64 %83, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end75, %if.then
  %84 = load i64, i64* %retval, align 8
  ret i64 %84
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CircularBufferPop(%struct.s_circularBuffer* noundef %cBuf, i64 noundef %length, i8* noundef %dataOut) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  %length.addr = alloca i64, align 8
  %dataOut.addr = alloca i8*, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %dataOut, i8** %dataOut.addr, align 8
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %dataOut.addr, align 8
  %call = call i64 @inter_circularBuffer_read(%struct.s_circularBuffer* noundef %0, i64 noundef %1, i8* noundef %2, i1 noundef zeroext true)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CircularBufferRead(%struct.s_circularBuffer* noundef %cBuf, i64 noundef %length, i8* noundef %dataOut) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  %length.addr = alloca i64, align 8
  %dataOut.addr = alloca i8*, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %dataOut, i8** %dataOut.addr, align 8
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %dataOut.addr, align 8
  %call = call i64 @inter_circularBuffer_read(%struct.s_circularBuffer* noundef %0, i64 noundef %1, i8* noundef %2, i1 noundef zeroext false)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CircularBufferPrint(%struct.s_circularBuffer* noundef %cBuf, i1 noundef zeroext %hex) #0 {
entry:
  %cBuf.addr = alloca %struct.s_circularBuffer*, align 8
  %hex.addr = alloca i8, align 1
  %b = alloca i8*, align 8
  %cSize = alloca i64, align 8
  %str = alloca i8*, align 8
  %c = alloca i8, align 1
  %i = alloca i64, align 8
  store %struct.s_circularBuffer* %cBuf, %struct.s_circularBuffer** %cBuf.addr, align 8
  %frombool = zext i1 %hex to i8
  store i8 %frombool, i8* %hex.addr, align 1
  %0 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %buffer = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %0, i32 0, i32 4
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %b, align 8
  %2 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %call = call i64 @CircularBufferGetSize(%struct.s_circularBuffer* noundef %2)
  store i64 %call, i64* %cSize, align 8
  %3 = load i64, i64* %cSize, align 8
  %mul = mul i64 2, %3
  %add = add i64 %mul, 1
  %call1 = call noalias i8* @malloc(i64 noundef %add) #4
  store i8* %call1, i8** %str, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %cSize, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %call2 = call i64 @CircularBufferGetDataSize(%struct.s_circularBuffer* noundef %6)
  %cmp3 = icmp eq i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 95, i8* %c, align 1
  br label %if.end22

if.else:                                          ; preds = %for.body
  %7 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %7, i32 0, i32 2
  %8 = load i64, i64* %tailOffset, align 8
  %9 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %9, i32 0, i32 3
  %10 = load i64, i64* %headOffset, align 8
  %cmp4 = icmp ult i64 %8, %10
  br i1 %cmp4, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.else
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset6 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %12, i32 0, i32 2
  %13 = load i64, i64* %tailOffset6, align 8
  %cmp7 = icmp ugt i64 %11, %13
  br i1 %cmp7, label %land.lhs.true, label %if.else11

land.lhs.true:                                    ; preds = %if.then5
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset8 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %15, i32 0, i32 3
  %16 = load i64, i64* %headOffset8, align 8
  %cmp9 = icmp ult i64 %14, %16
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %land.lhs.true
  store i8 95, i8* %c, align 1
  br label %if.end

if.else11:                                        ; preds = %land.lhs.true, %if.then5
  %17 = load i8*, i8** %b, align 8
  %18 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx, align 1
  store i8 %19, i8* %c, align 1
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end21

if.else12:                                        ; preds = %if.else
  %20 = load i64, i64* %i, align 8
  %21 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %tailOffset13 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %21, i32 0, i32 2
  %22 = load i64, i64* %tailOffset13, align 8
  %cmp14 = icmp ugt i64 %20, %22
  br i1 %cmp14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else12
  %23 = load i64, i64* %i, align 8
  %24 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %headOffset15 = getelementptr inbounds %struct.s_circularBuffer, %struct.s_circularBuffer* %24, i32 0, i32 3
  %25 = load i64, i64* %headOffset15, align 8
  %cmp16 = icmp ult i64 %23, %25
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false, %if.else12
  store i8 95, i8* %c, align 1
  br label %if.end20

if.else18:                                        ; preds = %lor.lhs.false
  %26 = load i8*, i8** %b, align 8
  %27 = load i64, i64* %i, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load i8, i8* %arrayidx19, align 1
  store i8 %28, i8* %c, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then17
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %29 = load i8, i8* %hex.addr, align 1
  %tobool = trunc i8 %29 to i1
  br i1 %tobool, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.end22
  %30 = load i8*, i8** %str, align 8
  %31 = load i64, i64* %i, align 8
  %mul24 = mul i64 %31, 2
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %mul24
  %32 = load i8, i8* %c, align 1
  %conv = sext i8 %32 to i32
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %conv) #4
  br label %if.end31

if.else26:                                        ; preds = %if.end22
  %33 = load i8*, i8** %str, align 8
  %34 = load i64, i64* %i, align 8
  %mul27 = mul i64 %34, 2
  %add.ptr28 = getelementptr inbounds i8, i8* %33, i64 %mul27
  %35 = load i8, i8* %c, align 1
  %conv29 = sext i8 %35 to i32
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv29) #4
  br label %if.end31

if.end31:                                         ; preds = %if.else26, %if.then23
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %36 = load i64, i64* %i, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %37 = load i8*, i8** %str, align 8
  %38 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %call32 = call i64 @CircularBufferGetSize(%struct.s_circularBuffer* noundef %38)
  %39 = load %struct.s_circularBuffer*, %struct.s_circularBuffer** %cBuf.addr, align 8
  %call33 = call i64 @CircularBufferGetDataSize(%struct.s_circularBuffer* noundef %39)
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* noundef %37, i64 noundef %call32, i64 noundef %call33)
  %40 = load i8*, i8** %str, align 8
  call void @free(i8* noundef %40) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
