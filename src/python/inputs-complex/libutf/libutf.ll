; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/libutf.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libutf/libutf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_string_s = type { i8*, i64, %union.anon }
%union.anon = type { i64 }

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
define dso_local zeroext i1 @ascii_validate(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %pos, align 8
  %add = add i64 %0, 16
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ule i64 %add, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast i64* %v1 to i8*
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 1 %add.ptr, i64 8, i1 false)
  %5 = bitcast i64* %v2 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 %7
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %add.ptr2, i64 8, i1 false)
  %8 = load i64, i64* %v1, align 8
  %9 = load i64, i64* %v2, align 8
  %or = or i64 %8, %9
  store i64 %or, i64* %v, align 8
  %10 = load i64, i64* %v, align 8
  %and = and i64 %10, -9187201950435737472
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %pos, align 8
  %add4 = add i64 %11, 16
  store i64 %add4, i64* %pos, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %12 = load i64, i64* %pos, align 8
  %13 = load i64, i64* %len.addr, align 8
  %cmp6 = icmp ult i64 %12, %13
  br i1 %cmp6, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond5
  %14 = load i8*, i8** %data.addr, align 8
  %15 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %cmp8 = icmp sge i32 %conv, 128
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body7
  store i1 false, i1* %retval, align 1
  br label %return

if.end11:                                         ; preds = %for.body7
  br label %for.inc12

for.inc12:                                        ; preds = %if.end11
  %17 = load i64, i64* %pos, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %pos, align 8
  br label %for.cond5, !llvm.loop !6

for.end13:                                        ; preds = %for.cond5
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end13, %if.then10, %if.then
  %18 = load i1, i1* %retval, align 1
  ret i1 %18
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @utf_endianness() #2

declare dso_local zeroext i1 @utf_is_le() #2

declare dso_local zeroext i1 @utf_is_be() #2

declare dso_local zeroext i16 @utf_swap_uint16(i16 noundef zeroext) #2

declare dso_local i32 @utf_swap_uint32(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @latin1_convert_to_utf16le(i8* noundef %data, i64 noundef %len, i16* noundef %result) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i16*, align 8
  %pos = alloca i64, align 8
  %start = alloca i16*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i16* %result, i16** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i16*, i16** %result.addr, align 8
  store i16* %0, i16** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i16
  %call1 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %conv)
  %conv2 = zext i16 %call1 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i16
  %9 = load i16*, i16** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %result.addr, align 8
  store i16 %conv5, i16* %9, align 2
  %10 = load i64, i64* %pos, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %11 = load i16*, i16** %result.addr, align 8
  %12 = load i16*, i16** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @latin1_convert_to_utf32(i8* noundef %data, i64 noundef %len, i32* noundef %result) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i32*, align 8
  %start = alloca i32*, align 8
  %i = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32* %result, i32** %result.addr, align 8
  %0 = load i32*, i32** %result.addr, align 8
  store i32* %0, i32** %start, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32*, i32** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %result.addr, align 8
  store i32 %conv, i32* %6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %8 = load i32*, i32** %result.addr, align 8
  %9 = load i32*, i32** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @latin1_convert_to_utf8(i8* noundef %data, i64 noundef %len, i8* noundef %result) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %start = alloca i8*, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v = alloca i64, align 8
  %final_pos = alloca i64, align 8
  %byte = alloca i8, align 1
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i8*, i8** %result.addr, align 8
  store i8* %0, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %while.end, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end29

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %pos, align 8
  %add = add i64 %3, 16
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ule i64 %add, %4
  br i1 %cmp1, label %if.then, label %if.end10

if.then:                                          ; preds = %while.body
  %5 = bitcast i64* %v1 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %add.ptr, i64 8, i1 false)
  %8 = bitcast i64* %v2 to i8*
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %pos, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %10
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 1 %add.ptr3, i64 8, i1 false)
  %11 = load i64, i64* %v1, align 8
  %12 = load i64, i64* %v2, align 8
  %or = or i64 %11, %12
  store i64 %or, i64* %v, align 8
  %13 = load i64, i64* %v, align 8
  %and = and i64 %13, -9187201950435737472
  %cmp4 = icmp eq i64 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %14 = load i64, i64* %pos, align 8
  %add6 = add i64 %14, 16
  store i64 %add6, i64* %final_pos, align 8
  br label %while.cond7

while.cond7:                                      ; preds = %while.body9, %if.then5
  %15 = load i64, i64* %pos, align 8
  %16 = load i64, i64* %final_pos, align 8
  %cmp8 = icmp ult i64 %15, %16
  br i1 %cmp8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond7
  %17 = load i8*, i8** %data.addr, align 8
  %18 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx, align 1
  %20 = load i8*, i8** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %result.addr, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i64, i64* %pos, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond7, !llvm.loop !9

while.end:                                        ; preds = %while.cond7
  br label %while.cond, !llvm.loop !10

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %while.body
  %22 = load i8*, i8** %data.addr, align 8
  %23 = load i64, i64* %pos, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = load i8, i8* %arrayidx11, align 1
  store i8 %24, i8* %byte, align 1
  %25 = load i8, i8* %byte, align 1
  %conv = zext i8 %25 to i32
  %and12 = and i32 %conv, 128
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  %26 = load i8, i8* %byte, align 1
  %27 = load i8*, i8** %result.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr16, i8** %result.addr, align 8
  store i8 %26, i8* %27, align 1
  %28 = load i64, i64* %pos, align 8
  %inc17 = add i64 %28, 1
  store i64 %inc17, i64* %pos, align 8
  br label %if.end28

if.else:                                          ; preds = %if.end10
  %29 = load i8, i8* %byte, align 1
  %conv18 = zext i8 %29 to i32
  %shr = ashr i32 %conv18, 6
  %or19 = or i32 %shr, 192
  %conv20 = trunc i32 %or19 to i8
  %30 = load i8*, i8** %result.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr21, i8** %result.addr, align 8
  store i8 %conv20, i8* %30, align 1
  %31 = load i8, i8* %byte, align 1
  %conv22 = zext i8 %31 to i32
  %and23 = and i32 %conv22, 63
  %or24 = or i32 %and23, 128
  %conv25 = trunc i32 %or24 to i8
  %32 = load i8*, i8** %result.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr26, i8** %result.addr, align 8
  store i8 %conv25, i8* %32, align 1
  %33 = load i64, i64* %pos, align 8
  %inc27 = add i64 %33, 1
  store i64 %inc27, i64* %pos, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then15
  br label %while.cond, !llvm.loop !10

while.end29:                                      ; preds = %while.cond
  %34 = load i8*, i8** %result.addr, align 8
  %35 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @latin1_length_from_utf16le(i16* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i16*, align 8
  %len.addr = alloca i64, align 8
  store i16* %data, i16** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @latin1_length_from_utf32(i32* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @latin1_length_from_utf8(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %counter, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp sgt i32 %conv, -65
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %counter, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %counter, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %i, align 8
  %inc3 = add i64 %6, 1
  store i64 %inc3, i64* %i, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %counter, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf16le_convert_to_latin1(i16* noundef %data, i64 noundef %len, i8* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i16*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %word = alloca i16, align 2
  %overflow = alloca i16, align 2
  %start = alloca i8*, align 8
  store i16* %data, i16** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  store i16 0, i16* %overflow, align 2
  %0 = load i8*, i8** %result.addr, align 8
  store i8* %0, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %3 = load i16*, i16** %data.addr, align 8
  %4 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %4
  %5 = load i16, i16* %arrayidx, align 2
  %call1 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %5)
  %conv = zext i16 %call1 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %6 = load i16*, i16** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %7
  %8 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, i16* %word, align 2
  %9 = load i16, i16* %word, align 2
  %conv5 = zext i16 %9 to i32
  %10 = load i16, i16* %overflow, align 2
  %conv6 = zext i16 %10 to i32
  %or = or i32 %conv6, %conv5
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %overflow, align 2
  %11 = load i16, i16* %word, align 2
  %conv8 = zext i16 %11 to i32
  %and = and i32 %conv8, 255
  %conv9 = trunc i32 %and to i8
  %12 = load i8*, i8** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %result.addr, align 8
  store i8 %conv9, i8* %12, align 1
  %13 = load i64, i64* %pos, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %14 = load i16, i16* %overflow, align 2
  %conv10 = zext i16 %14 to i32
  %and11 = and i32 %conv10, 65280
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %while.end
  %15 = load i8*, i8** %result.addr, align 8
  %16 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i64, i64* %retval, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf16le_convert_to_utf32(i16* noundef %data, i64 noundef %len, i32* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i16*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i32*, align 8
  %pos = alloca i64, align 8
  %word = alloca i16, align 2
  %diff = alloca i16, align 2
  %start = alloca i32*, align 8
  %value = alloca i32, align 4
  store i16* %data, i16** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32* %result, i32** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i32*, i32** %result.addr, align 8
  store i32* %0, i32** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %3 = load i16*, i16** %data.addr, align 8
  %4 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %4
  %5 = load i16, i16* %arrayidx, align 2
  %call1 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %5)
  %conv = zext i16 %call1 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %6 = load i16*, i16** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %7
  %8 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, i16* %word, align 2
  %9 = load i16, i16* %word, align 2
  %conv5 = zext i16 %9 to i32
  %and = and i32 %conv5, 63488
  %cmp6 = icmp ne i32 %and, 55296
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %10 = load i16, i16* %word, align 2
  %conv8 = zext i16 %10 to i32
  %11 = load i32*, i32** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %result.addr, align 8
  store i32 %conv8, i32* %11, align 4
  %12 = load i64, i64* %pos, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %pos, align 8
  br label %if.end48

if.else:                                          ; preds = %cond.end
  %13 = load i16, i16* %word, align 2
  %conv9 = zext i16 %13 to i32
  %sub = sub nsw i32 %conv9, 55296
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %diff, align 2
  %14 = load i16, i16* %diff, align 2
  %conv11 = zext i16 %14 to i32
  %cmp12 = icmp sgt i32 %conv11, 1023
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  %15 = load i64, i64* %pos, align 8
  %add = add i64 %15, 1
  %16 = load i64, i64* %len.addr, align 8
  %cmp15 = icmp uge i64 %add, %16
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  store i64 0, i64* %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end
  %call19 = call zeroext i1 @utf_is_be()
  br i1 %call19, label %cond.true21, label %cond.false26

cond.true21:                                      ; preds = %if.end18
  %17 = load i16*, i16** %data.addr, align 8
  %18 = load i64, i64* %pos, align 8
  %add22 = add i64 %18, 1
  %arrayidx23 = getelementptr inbounds i16, i16* %17, i64 %add22
  %19 = load i16, i16* %arrayidx23, align 2
  %call24 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %19)
  %conv25 = zext i16 %call24 to i32
  br label %cond.end30

cond.false26:                                     ; preds = %if.end18
  %20 = load i16*, i16** %data.addr, align 8
  %21 = load i64, i64* %pos, align 8
  %add27 = add i64 %21, 1
  %arrayidx28 = getelementptr inbounds i16, i16* %20, i64 %add27
  %22 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %22 to i32
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false26, %cond.true21
  %cond31 = phi i32 [ %conv25, %cond.true21 ], [ %conv29, %cond.false26 ]
  %conv32 = trunc i32 %cond31 to i16
  store i16 %conv32, i16* %word, align 2
  %23 = load i16, i16* %diff, align 2
  %conv33 = zext i16 %23 to i32
  %shl = shl i32 %conv33, 10
  %24 = load i16, i16* %word, align 2
  %conv34 = zext i16 %24 to i32
  %sub35 = sub nsw i32 %conv34, 56320
  %add36 = add nsw i32 %shl, %sub35
  %add37 = add nsw i32 %add36, 65536
  store i32 %add37, i32* %value, align 4
  %25 = load i16, i16* %word, align 2
  %conv38 = zext i16 %25 to i32
  %sub39 = sub nsw i32 %conv38, 56320
  %conv40 = trunc i32 %sub39 to i16
  store i16 %conv40, i16* %diff, align 2
  %26 = load i16, i16* %diff, align 2
  %conv41 = zext i16 %26 to i32
  %cmp42 = icmp sgt i32 %conv41, 1023
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %cond.end30
  store i64 0, i64* %retval, align 8
  br label %return

if.end45:                                         ; preds = %cond.end30
  %27 = load i32, i32* %value, align 4
  %28 = load i32*, i32** %result.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr46, i32** %result.addr, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i64, i64* %pos, align 8
  %add47 = add i64 %29, 2
  store i64 %add47, i64* %pos, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %if.then
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %30 = load i32*, i32** %result.addr, align 8
  %31 = load i32*, i32** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then44, %if.then17, %if.then14
  %32 = load i64, i64* %retval, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf16le_convert_to_utf8(i16* noundef %data, i64 noundef %len, i8* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i16*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %word = alloca i16, align 2
  %diff = alloca i16, align 2
  %start = alloca i8*, align 8
  %v = alloca i64, align 8
  %final_pos = alloca i64, align 8
  %value = alloca i32, align 4
  store i16* %data, i16** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i8*, i8** %result.addr, align 8
  store i8* %0, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end124, %while.end, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end125

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %pos, align 8
  %add = add i64 %3, 4
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ule i64 %add, %4
  br i1 %cmp1, label %if.then, label %if.end15

if.then:                                          ; preds = %while.body
  %5 = bitcast i64* %v to i8*
  %6 = load i16*, i16** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i16, i16* %6, i64 %7
  %8 = bitcast i16* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 2 %8, i64 8, i1 false)
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %9 = load i64, i64* %v, align 8
  %shr = lshr i64 %9, 8
  %10 = load i64, i64* %v, align 8
  %shl = shl i64 %10, 56
  %or = or i64 %shr, %shl
  store i64 %or, i64* %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load i64, i64* %v, align 8
  %and = and i64 %11, -35747867511423104
  %cmp3 = icmp eq i64 %and, 0
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end
  %12 = load i64, i64* %pos, align 8
  %add5 = add i64 %12, 4
  store i64 %add5, i64* %final_pos, align 8
  br label %while.cond6

while.cond6:                                      ; preds = %cond.end, %if.then4
  %13 = load i64, i64* %pos, align 8
  %14 = load i64, i64* %final_pos, align 8
  %cmp7 = icmp ult i64 %13, %14
  br i1 %cmp7, label %while.body8, label %while.end

while.body8:                                      ; preds = %while.cond6
  %call9 = call zeroext i1 @utf_is_be()
  br i1 %call9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body8
  %15 = load i16*, i16** %data.addr, align 8
  %16 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %16
  %17 = load i16, i16* %arrayidx, align 2
  %call10 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %17)
  %conv = zext i16 %call10 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body8
  %18 = load i16*, i16** %data.addr, align 8
  %19 = load i64, i64* %pos, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %18, i64 %19
  %20 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv12, %cond.false ]
  %conv13 = trunc i32 %cond to i8
  %21 = load i8*, i8** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %result.addr, align 8
  store i8 %conv13, i8* %21, align 1
  %22 = load i64, i64* %pos, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond6, !llvm.loop !14

while.end:                                        ; preds = %while.cond6
  br label %while.cond, !llvm.loop !15

if.end14:                                         ; preds = %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %while.body
  %call16 = call zeroext i1 @utf_is_be()
  br i1 %call16, label %cond.true18, label %cond.false22

cond.true18:                                      ; preds = %if.end15
  %23 = load i16*, i16** %data.addr, align 8
  %24 = load i64, i64* %pos, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %23, i64 %24
  %25 = load i16, i16* %arrayidx19, align 2
  %call20 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %25)
  %conv21 = zext i16 %call20 to i32
  br label %cond.end25

cond.false22:                                     ; preds = %if.end15
  %26 = load i16*, i16** %data.addr, align 8
  %27 = load i64, i64* %pos, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %26, i64 %27
  %28 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %28 to i32
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false22, %cond.true18
  %cond26 = phi i32 [ %conv21, %cond.true18 ], [ %conv24, %cond.false22 ]
  %conv27 = trunc i32 %cond26 to i16
  store i16 %conv27, i16* %word, align 2
  %29 = load i16, i16* %word, align 2
  %conv28 = zext i16 %29 to i32
  %and29 = and i32 %conv28, 65408
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %cond.end25
  %30 = load i16, i16* %word, align 2
  %conv33 = trunc i16 %30 to i8
  %31 = load i8*, i8** %result.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr34, i8** %result.addr, align 8
  store i8 %conv33, i8* %31, align 1
  %32 = load i64, i64* %pos, align 8
  %inc35 = add i64 %32, 1
  store i64 %inc35, i64* %pos, align 8
  br label %if.end124

if.else:                                          ; preds = %cond.end25
  %33 = load i16, i16* %word, align 2
  %conv36 = zext i16 %33 to i32
  %and37 = and i32 %conv36, 63488
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then40, label %if.else52

if.then40:                                        ; preds = %if.else
  %34 = load i16, i16* %word, align 2
  %conv41 = zext i16 %34 to i32
  %shr42 = ashr i32 %conv41, 6
  %or43 = or i32 %shr42, 192
  %conv44 = trunc i32 %or43 to i8
  %35 = load i8*, i8** %result.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr45, i8** %result.addr, align 8
  store i8 %conv44, i8* %35, align 1
  %36 = load i16, i16* %word, align 2
  %conv46 = zext i16 %36 to i32
  %and47 = and i32 %conv46, 63
  %or48 = or i32 %and47, 128
  %conv49 = trunc i32 %or48 to i8
  %37 = load i8*, i8** %result.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr50, i8** %result.addr, align 8
  store i8 %conv49, i8* %37, align 1
  %38 = load i64, i64* %pos, align 8
  %inc51 = add i64 %38, 1
  store i64 %inc51, i64* %pos, align 8
  br label %if.end123

if.else52:                                        ; preds = %if.else
  %39 = load i16, i16* %word, align 2
  %conv53 = zext i16 %39 to i32
  %and54 = and i32 %conv53, 63488
  %cmp55 = icmp ne i32 %and54, 55296
  br i1 %cmp55, label %if.then57, label %if.else75

if.then57:                                        ; preds = %if.else52
  %40 = load i16, i16* %word, align 2
  %conv58 = zext i16 %40 to i32
  %shr59 = ashr i32 %conv58, 12
  %or60 = or i32 %shr59, 224
  %conv61 = trunc i32 %or60 to i8
  %41 = load i8*, i8** %result.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr62, i8** %result.addr, align 8
  store i8 %conv61, i8* %41, align 1
  %42 = load i16, i16* %word, align 2
  %conv63 = zext i16 %42 to i32
  %shr64 = ashr i32 %conv63, 6
  %and65 = and i32 %shr64, 63
  %or66 = or i32 %and65, 128
  %conv67 = trunc i32 %or66 to i8
  %43 = load i8*, i8** %result.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr68, i8** %result.addr, align 8
  store i8 %conv67, i8* %43, align 1
  %44 = load i16, i16* %word, align 2
  %conv69 = zext i16 %44 to i32
  %and70 = and i32 %conv69, 63
  %or71 = or i32 %and70, 128
  %conv72 = trunc i32 %or71 to i8
  %45 = load i8*, i8** %result.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr73, i8** %result.addr, align 8
  store i8 %conv72, i8* %45, align 1
  %46 = load i64, i64* %pos, align 8
  %inc74 = add i64 %46, 1
  store i64 %inc74, i64* %pos, align 8
  br label %if.end122

if.else75:                                        ; preds = %if.else52
  %47 = load i16, i16* %word, align 2
  %conv76 = zext i16 %47 to i32
  %sub = sub nsw i32 %conv76, 55296
  %conv77 = trunc i32 %sub to i16
  store i16 %conv77, i16* %diff, align 2
  %48 = load i64, i64* %pos, align 8
  %add78 = add i64 %48, 1
  %49 = load i64, i64* %len.addr, align 8
  %cmp79 = icmp uge i64 %add78, %49
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.else75
  store i64 0, i64* %retval, align 8
  br label %return

if.end82:                                         ; preds = %if.else75
  %call83 = call zeroext i1 @utf_is_be()
  br i1 %call83, label %cond.true85, label %cond.false90

cond.true85:                                      ; preds = %if.end82
  %50 = load i16*, i16** %data.addr, align 8
  %51 = load i64, i64* %pos, align 8
  %add86 = add i64 %51, 1
  %arrayidx87 = getelementptr inbounds i16, i16* %50, i64 %add86
  %52 = load i16, i16* %arrayidx87, align 2
  %call88 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %52)
  %conv89 = zext i16 %call88 to i32
  br label %cond.end94

cond.false90:                                     ; preds = %if.end82
  %53 = load i16*, i16** %data.addr, align 8
  %54 = load i64, i64* %pos, align 8
  %add91 = add i64 %54, 1
  %arrayidx92 = getelementptr inbounds i16, i16* %53, i64 %add91
  %55 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %55 to i32
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false90, %cond.true85
  %cond95 = phi i32 [ %conv89, %cond.true85 ], [ %conv93, %cond.false90 ]
  %conv96 = trunc i32 %cond95 to i16
  store i16 %conv96, i16* %word, align 2
  %56 = load i16, i16* %diff, align 2
  %conv97 = zext i16 %56 to i32
  %shl98 = shl i32 %conv97, 10
  %57 = load i16, i16* %word, align 2
  %conv99 = zext i16 %57 to i32
  %sub100 = sub nsw i32 %conv99, 56320
  %add101 = add nsw i32 %shl98, %sub100
  %add102 = add nsw i32 %add101, 65536
  store i32 %add102, i32* %value, align 4
  %58 = load i32, i32* %value, align 4
  %shr103 = lshr i32 %58, 18
  %or104 = or i32 %shr103, 240
  %conv105 = trunc i32 %or104 to i8
  %59 = load i8*, i8** %result.addr, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr106, i8** %result.addr, align 8
  store i8 %conv105, i8* %59, align 1
  %60 = load i32, i32* %value, align 4
  %shr107 = lshr i32 %60, 12
  %and108 = and i32 %shr107, 63
  %or109 = or i32 %and108, 128
  %conv110 = trunc i32 %or109 to i8
  %61 = load i8*, i8** %result.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr111, i8** %result.addr, align 8
  store i8 %conv110, i8* %61, align 1
  %62 = load i32, i32* %value, align 4
  %shr112 = lshr i32 %62, 6
  %and113 = and i32 %shr112, 63
  %or114 = or i32 %and113, 128
  %conv115 = trunc i32 %or114 to i8
  %63 = load i8*, i8** %result.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr116, i8** %result.addr, align 8
  store i8 %conv115, i8* %63, align 1
  %64 = load i32, i32* %value, align 4
  %and117 = and i32 %64, 63
  %or118 = or i32 %and117, 128
  %conv119 = trunc i32 %or118 to i8
  %65 = load i8*, i8** %result.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr120, i8** %result.addr, align 8
  store i8 %conv119, i8* %65, align 1
  %66 = load i64, i64* %pos, align 8
  %add121 = add i64 %66, 2
  store i64 %add121, i64* %pos, align 8
  br label %if.end122

if.end122:                                        ; preds = %cond.end94, %if.then57
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then40
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then32
  br label %while.cond, !llvm.loop !15

while.end125:                                     ; preds = %while.cond
  %67 = load i8*, i8** %result.addr, align 8
  %68 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %68 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end125, %if.then81
  %69 = load i64, i64* %retval, align 8
  ret i64 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf16_length_from_latin1(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf16_length_from_utf32(i32* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %i = alloca i64, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %counter, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %counter, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %counter, align 8
  %3 = load i32*, i32** %data.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %4
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ugt i32 %5, 65535
  %conv = zext i1 %cmp1 to i32
  %conv2 = sext i32 %conv to i64
  %6 = load i64, i64* %counter, align 8
  %add = add i64 %6, %conv2
  store i64 %add, i64* %counter, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc3 = add i64 %7, 1
  store i64 %inc3, i64* %i, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %counter, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf16_length_from_utf8(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %counter, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp sgt i32 %conv, -65
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %counter, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %counter, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp sge i32 %conv4, 240
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %9 = load i64, i64* %counter, align 8
  %inc8 = add i64 %9, 1
  store i64 %inc8, i64* %counter, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %10 = load i64, i64* %i, align 8
  %inc10 = add i64 %10, 1
  store i64 %inc10, i64* %i, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %counter, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @utf16le_validate(i16* noundef %data, i64 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %data.addr = alloca i16*, align 8
  %len.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %word = alloca i16, align 2
  %diff = alloca i16, align 2
  store i16* %data, i16** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %entry
  %0 = load i64, i64* %pos, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %2 = load i16*, i16** %data.addr, align 8
  %3 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %3
  %4 = load i16, i16* %arrayidx, align 2
  %call1 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %4)
  %conv = zext i16 %call1 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i16*, i16** %data.addr, align 8
  %6 = load i64, i64* %pos, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 %6
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, i16* %word, align 2
  %8 = load i16, i16* %word, align 2
  %conv5 = zext i16 %8 to i32
  %and = and i32 %conv5, 63488
  %cmp6 = icmp eq i32 %and, 55296
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %9 = load i64, i64* %pos, align 8
  %add = add i64 %9, 1
  %10 = load i64, i64* %len.addr, align 8
  %cmp8 = icmp uge i64 %add, %10
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i16, i16* %word, align 2
  %conv11 = zext i16 %11 to i32
  %sub = sub nsw i32 %conv11, 55296
  %conv12 = trunc i32 %sub to i16
  store i16 %conv12, i16* %diff, align 2
  %12 = load i16, i16* %diff, align 2
  %conv13 = zext i16 %12 to i32
  %cmp14 = icmp sgt i32 %conv13, 1023
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end17:                                         ; preds = %if.end
  %call18 = call zeroext i1 @utf_is_be()
  br i1 %call18, label %cond.true20, label %cond.false25

cond.true20:                                      ; preds = %if.end17
  %13 = load i16*, i16** %data.addr, align 8
  %14 = load i64, i64* %pos, align 8
  %add21 = add i64 %14, 1
  %arrayidx22 = getelementptr inbounds i16, i16* %13, i64 %add21
  %15 = load i16, i16* %arrayidx22, align 2
  %call23 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %15)
  %conv24 = zext i16 %call23 to i32
  br label %cond.end29

cond.false25:                                     ; preds = %if.end17
  %16 = load i16*, i16** %data.addr, align 8
  %17 = load i64, i64* %pos, align 8
  %add26 = add i64 %17, 1
  %arrayidx27 = getelementptr inbounds i16, i16* %16, i64 %add26
  %18 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %18 to i32
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false25, %cond.true20
  %cond30 = phi i32 [ %conv24, %cond.true20 ], [ %conv28, %cond.false25 ]
  %conv31 = trunc i32 %cond30 to i16
  store i16 %conv31, i16* %word, align 2
  %19 = load i16, i16* %word, align 2
  %conv32 = zext i16 %19 to i32
  %sub33 = sub nsw i32 %conv32, 56320
  %conv34 = trunc i32 %sub33 to i16
  store i16 %conv34, i16* %diff, align 2
  %20 = load i16, i16* %diff, align 2
  %conv35 = zext i16 %20 to i32
  %cmp36 = icmp sgt i32 %conv35, 1023
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %cond.end29
  store i1 false, i1* %retval, align 1
  br label %return

if.end39:                                         ; preds = %cond.end29
  %21 = load i64, i64* %pos, align 8
  %add40 = add i64 %21, 2
  store i64 %add40, i64* %pos, align 8
  br label %if.end41

if.else:                                          ; preds = %cond.end
  %22 = load i64, i64* %pos, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %pos, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end39
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then38, %if.then16, %if.then10
  %23 = load i1, i1* %retval, align 1
  ret i1 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf32_convert_to_latin1(i32* noundef %data, i64 noundef %len, i8* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %word = alloca i32, align 4
  %overflow = alloca i32, align 4
  %start = alloca i8*, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  store i32 0, i32* %overflow, align 4
  %0 = load i8*, i8** %result.addr, align 8
  store i8* %0, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %data.addr, align 8
  %4 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %4
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %word, align 4
  %6 = load i32, i32* %word, align 4
  %7 = load i32, i32* %overflow, align 4
  %or = or i32 %7, %6
  store i32 %or, i32* %overflow, align 4
  %8 = load i32, i32* %word, align 4
  %and = and i32 %8, 255
  %conv = trunc i32 %and to i8
  %9 = load i8*, i8** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %result.addr, align 8
  store i8 %conv, i8* %9, align 1
  %10 = load i64, i64* %pos, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %overflow, align 4
  %and1 = and i32 %11, -256
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %while.end
  %12 = load i8*, i8** %result.addr, align 8
  %13 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i64, i64* %retval, align 8
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf32_convert_to_utf16le(i32* noundef %data, i64 noundef %len, i16* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i16*, align 8
  %pos = alloca i64, align 8
  %word = alloca i32, align 4
  %start = alloca i16*, align 8
  %high_surrogate = alloca i16, align 2
  %low_surrogate = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i16* %result, i16** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i16*, i16** %result.addr, align 8
  store i16* %0, i16** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %data.addr, align 8
  %4 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %4
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %word, align 4
  %6 = load i32, i32* %word, align 4
  %and = and i32 %6, -65536
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %word, align 4
  %cmp2 = icmp uge i32 %7, 55296
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load i32, i32* %word, align 4
  %cmp3 = icmp ule i32 %8, 57343
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load i32*, i32** %data.addr, align 8
  %10 = load i64, i64* %pos, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %10
  %11 = load i32, i32* %arrayidx5, align 4
  %conv = trunc i32 %11 to i16
  %call6 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %conv)
  %conv7 = zext i16 %call6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i32*, i32** %data.addr, align 8
  %13 = load i64, i64* %pos, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %13
  %14 = load i32, i32* %arrayidx8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %14, %cond.false ]
  %conv9 = trunc i32 %cond to i16
  %15 = load i16*, i16** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %incdec.ptr, i16** %result.addr, align 8
  store i16 %conv9, i16* %15, align 2
  br label %if.end25

if.else:                                          ; preds = %while.body
  %16 = load i32, i32* %word, align 4
  %cmp10 = icmp ugt i32 %16, 1114111
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.else
  store i64 0, i64* %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.else
  %17 = load i32, i32* %word, align 4
  %sub = sub i32 %17, 65536
  store i32 %sub, i32* %word, align 4
  %18 = load i32, i32* %word, align 4
  %shr = lshr i32 %18, 10
  %add = add i32 55296, %shr
  %conv14 = trunc i32 %add to i16
  store i16 %conv14, i16* %high_surrogate, align 2
  %19 = load i32, i32* %word, align 4
  %and15 = and i32 %19, 1023
  %add16 = add i32 56320, %and15
  %conv17 = trunc i32 %add16 to i16
  store i16 %conv17, i16* %low_surrogate, align 2
  %call18 = call zeroext i1 @utf_is_be()
  br i1 %call18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end13
  %20 = load i16, i16* %high_surrogate, align 2
  %call20 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %20)
  store i16 %call20, i16* %high_surrogate, align 2
  %21 = load i16, i16* %low_surrogate, align 2
  %call21 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %21)
  store i16 %call21, i16* %low_surrogate, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end13
  %22 = load i16, i16* %high_surrogate, align 2
  %23 = load i16*, i16** %result.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr23, i16** %result.addr, align 8
  store i16 %22, i16* %23, align 2
  %24 = load i16, i16* %low_surrogate, align 2
  %25 = load i16*, i16** %result.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr24, i16** %result.addr, align 8
  store i16 %24, i16* %25, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %cond.end
  %26 = load i64, i64* %pos, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %27 = load i16*, i16** %result.addr, align 8
  %28 = load i16*, i16** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  store i64 %sub.ptr.div, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then12, %if.then4
  %29 = load i64, i64* %retval, align 8
  ret i64 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf32_convert_to_utf8(i32* noundef %data, i64 noundef %len, i8* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %word = alloca i32, align 4
  %start = alloca i8*, align 8
  %v = alloca i64, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i8*, i8** %result.addr, align 8
  store i8* %0, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end79, %if.then3, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %pos, align 8
  %add = add i64 %3, 2
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ule i64 %add, %4
  br i1 %cmp1, label %if.then, label %if.end9

if.then:                                          ; preds = %while.body
  %5 = bitcast i64* %v to i8*
  %6 = load i32*, i32** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %7
  %8 = bitcast i32* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 4 %8, i64 8, i1 false)
  %9 = load i64, i64* %v, align 8
  %and = and i64 %9, -545460846720
  %cmp2 = icmp eq i64 %and, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %10 = load i32*, i32** %data.addr, align 8
  %11 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %11
  %12 = load i32, i32* %arrayidx, align 4
  %conv = trunc i32 %12 to i8
  %13 = load i8*, i8** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %result.addr, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load i32*, i32** %data.addr, align 8
  %15 = load i64, i64* %pos, align 8
  %add4 = add i64 %15, 1
  %arrayidx5 = getelementptr inbounds i32, i32* %14, i64 %add4
  %16 = load i32, i32* %arrayidx5, align 4
  %conv6 = trunc i32 %16 to i8
  %17 = load i8*, i8** %result.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr7, i8** %result.addr, align 8
  store i8 %conv6, i8* %17, align 1
  %18 = load i64, i64* %pos, align 8
  %add8 = add i64 %18, 2
  store i64 %add8, i64* %pos, align 8
  br label %while.cond, !llvm.loop !21

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %while.body
  %19 = load i32*, i32** %data.addr, align 8
  %20 = load i64, i64* %pos, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 %20
  %21 = load i32, i32* %arrayidx10, align 4
  store i32 %21, i32* %word, align 4
  %22 = load i32, i32* %word, align 4
  %and11 = and i32 %22, -128
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  %23 = load i32, i32* %word, align 4
  %conv15 = trunc i32 %23 to i8
  %24 = load i8*, i8** %result.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr16, i8** %result.addr, align 8
  store i8 %conv15, i8* %24, align 1
  %25 = load i64, i64* %pos, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %pos, align 8
  br label %if.end79

if.else:                                          ; preds = %if.end9
  %26 = load i32, i32* %word, align 4
  %and17 = and i32 %26, -2048
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %if.then20, label %if.else28

if.then20:                                        ; preds = %if.else
  %27 = load i32, i32* %word, align 4
  %shr = lshr i32 %27, 6
  %or = or i32 %shr, 192
  %conv21 = trunc i32 %or to i8
  %28 = load i8*, i8** %result.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr22, i8** %result.addr, align 8
  store i8 %conv21, i8* %28, align 1
  %29 = load i32, i32* %word, align 4
  %and23 = and i32 %29, 63
  %or24 = or i32 %and23, 128
  %conv25 = trunc i32 %or24 to i8
  %30 = load i8*, i8** %result.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr26, i8** %result.addr, align 8
  store i8 %conv25, i8* %30, align 1
  %31 = load i64, i64* %pos, align 8
  %inc27 = add i64 %31, 1
  store i64 %inc27, i64* %pos, align 8
  br label %if.end78

if.else28:                                        ; preds = %if.else
  %32 = load i32, i32* %word, align 4
  %and29 = and i32 %32, -65536
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then32, label %if.else53

if.then32:                                        ; preds = %if.else28
  %33 = load i32, i32* %word, align 4
  %cmp33 = icmp uge i32 %33, 55296
  br i1 %cmp33, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then32
  %34 = load i32, i32* %word, align 4
  %cmp35 = icmp ule i32 %34, 57343
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true
  store i64 0, i64* %retval, align 8
  br label %return

if.end38:                                         ; preds = %land.lhs.true, %if.then32
  %35 = load i32, i32* %word, align 4
  %shr39 = lshr i32 %35, 12
  %or40 = or i32 %shr39, 224
  %conv41 = trunc i32 %or40 to i8
  %36 = load i8*, i8** %result.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr42, i8** %result.addr, align 8
  store i8 %conv41, i8* %36, align 1
  %37 = load i32, i32* %word, align 4
  %shr43 = lshr i32 %37, 6
  %and44 = and i32 %shr43, 63
  %or45 = or i32 %and44, 128
  %conv46 = trunc i32 %or45 to i8
  %38 = load i8*, i8** %result.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr47, i8** %result.addr, align 8
  store i8 %conv46, i8* %38, align 1
  %39 = load i32, i32* %word, align 4
  %and48 = and i32 %39, 63
  %or49 = or i32 %and48, 128
  %conv50 = trunc i32 %or49 to i8
  %40 = load i8*, i8** %result.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr51, i8** %result.addr, align 8
  store i8 %conv50, i8* %40, align 1
  %41 = load i64, i64* %pos, align 8
  %inc52 = add i64 %41, 1
  store i64 %inc52, i64* %pos, align 8
  br label %if.end77

if.else53:                                        ; preds = %if.else28
  %42 = load i32, i32* %word, align 4
  %cmp54 = icmp ugt i32 %42, 1114111
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.else53
  store i64 0, i64* %retval, align 8
  br label %return

if.end57:                                         ; preds = %if.else53
  %43 = load i32, i32* %word, align 4
  %shr58 = lshr i32 %43, 18
  %or59 = or i32 %shr58, 240
  %conv60 = trunc i32 %or59 to i8
  %44 = load i8*, i8** %result.addr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr61, i8** %result.addr, align 8
  store i8 %conv60, i8* %44, align 1
  %45 = load i32, i32* %word, align 4
  %shr62 = lshr i32 %45, 12
  %and63 = and i32 %shr62, 63
  %or64 = or i32 %and63, 128
  %conv65 = trunc i32 %or64 to i8
  %46 = load i8*, i8** %result.addr, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr66, i8** %result.addr, align 8
  store i8 %conv65, i8* %46, align 1
  %47 = load i32, i32* %word, align 4
  %shr67 = lshr i32 %47, 6
  %and68 = and i32 %shr67, 63
  %or69 = or i32 %and68, 128
  %conv70 = trunc i32 %or69 to i8
  %48 = load i8*, i8** %result.addr, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr71, i8** %result.addr, align 8
  store i8 %conv70, i8* %48, align 1
  %49 = load i32, i32* %word, align 4
  %and72 = and i32 %49, 63
  %or73 = or i32 %and72, 128
  %conv74 = trunc i32 %or73 to i8
  %50 = load i8*, i8** %result.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr75, i8** %result.addr, align 8
  store i8 %conv74, i8* %50, align 1
  %51 = load i64, i64* %pos, align 8
  %inc76 = add i64 %51, 1
  store i64 %inc76, i64* %pos, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end57, %if.end38
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then20
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then14
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %52 = load i8*, i8** %result.addr, align 8
  %53 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then56, %if.then37
  %54 = load i64, i64* %retval, align 8
  ret i64 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf32_length_from_latin1(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf32_length_from_utf16le(i16* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i16*, align 8
  %len.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %i = alloca i64, align 8
  %word = alloca i16, align 2
  store i16* %data, i16** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %counter, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %2 = load i16*, i16** %data.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %3
  %4 = load i16, i16* %arrayidx, align 2
  %call1 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %4)
  %conv = zext i16 %call1 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load i16*, i16** %data.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 %6
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, i16* %word, align 2
  %8 = load i16, i16* %word, align 2
  %conv5 = zext i16 %8 to i32
  %and = and i32 %conv5, 64512
  %cmp6 = icmp ne i32 %and, 56320
  %conv7 = zext i1 %cmp6 to i32
  %conv8 = sext i32 %conv7 to i64
  %9 = load i64, i64* %counter, align 8
  %add = add i64 %9, %conv8
  store i64 %add, i64* %counter, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %counter, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf32_length_from_utf8(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %counter, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp sgt i32 %conv, -65
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %counter, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %counter, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %i, align 8
  %inc3 = add i64 %6, 1
  store i64 %inc3, i64* %i, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %counter, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @utf32_validate(i32* noundef %data, i64 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %word = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %pos, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %3
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %word, align 4
  %5 = load i32, i32* %word, align 4
  %cmp1 = icmp ugt i32 %5, 1114111
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, i32* %word, align 4
  %cmp2 = icmp uge i32 %6, 55296
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i32, i32* %word, align 4
  %cmp3 = icmp ule i32 %7, 57343
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load i64, i64* %pos, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_convert_to_latin1(i8* noundef %data, i64 noundef %len, i8* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %start = alloca i8*, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v = alloca i64, align 8
  %final_pos = alloca i64, align 8
  %leading_byte = alloca i8, align 1
  %code_point = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i8*, i8** %result.addr, align 8
  store i8* %0, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %while.end, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end54

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %pos, align 8
  %add = add i64 %3, 16
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ule i64 %add, %4
  br i1 %cmp1, label %if.then, label %if.end10

if.then:                                          ; preds = %while.body
  %5 = bitcast i64* %v1 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %add.ptr, i64 8, i1 false)
  %8 = bitcast i64* %v2 to i8*
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %pos, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %10
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 1 %add.ptr3, i64 8, i1 false)
  %11 = load i64, i64* %v1, align 8
  %12 = load i64, i64* %v2, align 8
  %or = or i64 %11, %12
  store i64 %or, i64* %v, align 8
  %13 = load i64, i64* %v, align 8
  %and = and i64 %13, -9187201950435737472
  %cmp4 = icmp eq i64 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %14 = load i64, i64* %pos, align 8
  %add6 = add i64 %14, 16
  store i64 %add6, i64* %final_pos, align 8
  br label %while.cond7

while.cond7:                                      ; preds = %while.body9, %if.then5
  %15 = load i64, i64* %pos, align 8
  %16 = load i64, i64* %final_pos, align 8
  %cmp8 = icmp ult i64 %15, %16
  br i1 %cmp8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond7
  %17 = load i8*, i8** %data.addr, align 8
  %18 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx, align 1
  %20 = load i8*, i8** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %result.addr, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i64, i64* %pos, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond7, !llvm.loop !25

while.end:                                        ; preds = %while.cond7
  br label %while.cond, !llvm.loop !26

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %while.body
  %22 = load i8*, i8** %data.addr, align 8
  %23 = load i64, i64* %pos, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = load i8, i8* %arrayidx11, align 1
  store i8 %24, i8* %leading_byte, align 1
  %25 = load i8, i8* %leading_byte, align 1
  %conv = zext i8 %25 to i32
  %cmp12 = icmp slt i32 %conv, 128
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  %26 = load i8, i8* %leading_byte, align 1
  %27 = load i8*, i8** %result.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr15, i8** %result.addr, align 8
  store i8 %26, i8* %27, align 1
  %28 = load i64, i64* %pos, align 8
  %inc16 = add i64 %28, 1
  store i64 %inc16, i64* %pos, align 8
  br label %if.end53

if.else:                                          ; preds = %if.end10
  %29 = load i8, i8* %leading_byte, align 1
  %conv17 = zext i8 %29 to i32
  %and18 = and i32 %conv17, 224
  %cmp19 = icmp eq i32 %and18, 192
  br i1 %cmp19, label %if.then21, label %if.else51

if.then21:                                        ; preds = %if.else
  %30 = load i64, i64* %pos, align 8
  %add22 = add i64 %30, 1
  %31 = load i64, i64* %len.addr, align 8
  %cmp23 = icmp uge i64 %add22, %31
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  store i64 0, i64* %retval, align 8
  br label %return

if.end26:                                         ; preds = %if.then21
  %32 = load i8*, i8** %data.addr, align 8
  %33 = load i64, i64* %pos, align 8
  %add27 = add i64 %33, 1
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 %add27
  %34 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %34 to i32
  %and30 = and i32 %conv29, 192
  %cmp31 = icmp ne i32 %and30, 128
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end26
  store i64 0, i64* %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.end26
  %35 = load i8, i8* %leading_byte, align 1
  %conv35 = zext i8 %35 to i32
  %and36 = and i32 %conv35, 31
  %shl = shl i32 %and36, 6
  %36 = load i8*, i8** %data.addr, align 8
  %37 = load i64, i64* %pos, align 8
  %add37 = add i64 %37, 1
  %arrayidx38 = getelementptr inbounds i8, i8* %36, i64 %add37
  %38 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %38 to i32
  %and40 = and i32 %conv39, 63
  %or41 = or i32 %shl, %and40
  store i32 %or41, i32* %code_point, align 4
  %39 = load i32, i32* %code_point, align 4
  %cmp42 = icmp ult i32 %39, 128
  br i1 %cmp42, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %40 = load i32, i32* %code_point, align 4
  %cmp44 = icmp ult i32 255, %40
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false, %if.end34
  store i64 0, i64* %retval, align 8
  br label %return

if.end47:                                         ; preds = %lor.lhs.false
  %41 = load i32, i32* %code_point, align 4
  %conv48 = trunc i32 %41 to i8
  %42 = load i8*, i8** %result.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr49, i8** %result.addr, align 8
  store i8 %conv48, i8* %42, align 1
  %43 = load i64, i64* %pos, align 8
  %add50 = add i64 %43, 2
  store i64 %add50, i64* %pos, align 8
  br label %if.end52

if.else51:                                        ; preds = %if.else
  store i64 0, i64* %retval, align 8
  br label %return

if.end52:                                         ; preds = %if.end47
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then14
  br label %while.cond, !llvm.loop !26

while.end54:                                      ; preds = %while.cond
  %44 = load i8*, i8** %result.addr, align 8
  %45 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end54, %if.else51, %if.then46, %if.then33, %if.then25
  %46 = load i64, i64* %retval, align 8
  ret i64 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_convert_to_utf16le(i8* noundef %data, i64 noundef %len, i16* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i16*, align 8
  %pos = alloca i64, align 8
  %start = alloca i16*, align 8
  %v = alloca i64, align 8
  %final_pos = alloca i64, align 8
  %leading_byte = alloca i8, align 1
  %code_point = alloca i16, align 2
  %code_point66 = alloca i16, align 2
  %code_point99 = alloca i32, align 4
  %high_surrogate = alloca i16, align 2
  %low_surrogate = alloca i16, align 2
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i16* %result, i16** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i16*, i16** %result.addr, align 8
  store i16* %0, i16** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end137, %while.end, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end138

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %pos, align 8
  %add = add i64 %3, 8
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ule i64 %add, %4
  br i1 %cmp1, label %if.then, label %if.end13

if.then:                                          ; preds = %while.body
  %5 = bitcast i64* %v to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %add.ptr, i64 8, i1 false)
  %8 = load i64, i64* %v, align 8
  %and = and i64 %8, -9187201950435737472
  %cmp2 = icmp eq i64 %and, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load i64, i64* %pos, align 8
  %add4 = add i64 %9, 8
  store i64 %add4, i64* %final_pos, align 8
  br label %while.cond5

while.cond5:                                      ; preds = %cond.end, %if.then3
  %10 = load i64, i64* %pos, align 8
  %11 = load i64, i64* %final_pos, align 8
  %cmp6 = icmp ult i64 %10, %11
  br i1 %cmp6, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond5
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body7
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i16
  %call8 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %conv)
  %conv9 = zext i16 %call8 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body7
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i64, i64* %pos, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv11, %cond.false ]
  %conv12 = trunc i32 %cond to i16
  %18 = load i16*, i16** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr, i16** %result.addr, align 8
  store i16 %conv12, i16* %18, align 2
  %19 = load i64, i64* %pos, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond5, !llvm.loop !27

while.end:                                        ; preds = %while.cond5
  br label %while.cond, !llvm.loop !28

if.end:                                           ; preds = %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %while.body
  %20 = load i8*, i8** %data.addr, align 8
  %21 = load i64, i64* %pos, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load i8, i8* %arrayidx14, align 1
  store i8 %22, i8* %leading_byte, align 1
  %23 = load i8, i8* %leading_byte, align 1
  %conv15 = zext i8 %23 to i32
  %cmp16 = icmp slt i32 %conv15, 128
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end13
  %call19 = call zeroext i1 @utf_is_be()
  br i1 %call19, label %cond.true21, label %cond.false25

cond.true21:                                      ; preds = %if.then18
  %24 = load i8, i8* %leading_byte, align 1
  %conv22 = zext i8 %24 to i16
  %call23 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %conv22)
  %conv24 = zext i16 %call23 to i32
  br label %cond.end27

cond.false25:                                     ; preds = %if.then18
  %25 = load i8, i8* %leading_byte, align 1
  %conv26 = zext i8 %25 to i32
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true21
  %cond28 = phi i32 [ %conv24, %cond.true21 ], [ %conv26, %cond.false25 ]
  %conv29 = trunc i32 %cond28 to i16
  %26 = load i16*, i16** %result.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr30, i16** %result.addr, align 8
  store i16 %conv29, i16* %26, align 2
  %27 = load i64, i64* %pos, align 8
  %inc31 = add i64 %27, 1
  store i64 %inc31, i64* %pos, align 8
  br label %if.end137

if.else:                                          ; preds = %if.end13
  %28 = load i8, i8* %leading_byte, align 1
  %conv32 = zext i8 %28 to i32
  %and33 = and i32 %conv32, 224
  %cmp34 = icmp eq i32 %and33, 192
  br i1 %cmp34, label %if.then36, label %if.else55

if.then36:                                        ; preds = %if.else
  %29 = load i64, i64* %pos, align 8
  %add37 = add i64 %29, 1
  %30 = load i64, i64* %len.addr, align 8
  %cmp38 = icmp uge i64 %add37, %30
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then36
  br label %while.end138

if.end41:                                         ; preds = %if.then36
  %31 = load i8, i8* %leading_byte, align 1
  %conv42 = zext i8 %31 to i32
  %and43 = and i32 %conv42, 31
  %shl = shl i32 %and43, 6
  %32 = load i8*, i8** %data.addr, align 8
  %33 = load i64, i64* %pos, align 8
  %add44 = add i64 %33, 1
  %arrayidx45 = getelementptr inbounds i8, i8* %32, i64 %add44
  %34 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %34 to i32
  %and47 = and i32 %conv46, 63
  %or = or i32 %shl, %and47
  %conv48 = trunc i32 %or to i16
  store i16 %conv48, i16* %code_point, align 2
  %call49 = call zeroext i1 @utf_is_be()
  br i1 %call49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end41
  %35 = load i16, i16* %code_point, align 2
  %call51 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %35)
  store i16 %call51, i16* %code_point, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end41
  %36 = load i16, i16* %code_point, align 2
  %37 = load i16*, i16** %result.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %incdec.ptr53, i16** %result.addr, align 8
  store i16 %36, i16* %37, align 2
  %38 = load i64, i64* %pos, align 8
  %add54 = add i64 %38, 2
  store i64 %add54, i64* %pos, align 8
  br label %if.end136

if.else55:                                        ; preds = %if.else
  %39 = load i8, i8* %leading_byte, align 1
  %conv56 = zext i8 %39 to i32
  %and57 = and i32 %conv56, 240
  %cmp58 = icmp eq i32 %and57, 224
  br i1 %cmp58, label %if.then60, label %if.else88

if.then60:                                        ; preds = %if.else55
  %40 = load i64, i64* %pos, align 8
  %add61 = add i64 %40, 2
  %41 = load i64, i64* %len.addr, align 8
  %cmp62 = icmp uge i64 %add61, %41
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then60
  br label %while.end138

if.end65:                                         ; preds = %if.then60
  %42 = load i8, i8* %leading_byte, align 1
  %conv67 = zext i8 %42 to i32
  %and68 = and i32 %conv67, 15
  %shl69 = shl i32 %and68, 12
  %43 = load i8*, i8** %data.addr, align 8
  %44 = load i64, i64* %pos, align 8
  %add70 = add i64 %44, 1
  %arrayidx71 = getelementptr inbounds i8, i8* %43, i64 %add70
  %45 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %45 to i32
  %and73 = and i32 %conv72, 63
  %shl74 = shl i32 %and73, 6
  %or75 = or i32 %shl69, %shl74
  %46 = load i8*, i8** %data.addr, align 8
  %47 = load i64, i64* %pos, align 8
  %add76 = add i64 %47, 2
  %arrayidx77 = getelementptr inbounds i8, i8* %46, i64 %add76
  %48 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %48 to i32
  %and79 = and i32 %conv78, 63
  %or80 = or i32 %or75, %and79
  %conv81 = trunc i32 %or80 to i16
  store i16 %conv81, i16* %code_point66, align 2
  %call82 = call zeroext i1 @utf_is_be()
  br i1 %call82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end65
  %49 = load i16, i16* %code_point66, align 2
  %call84 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %49)
  store i16 %call84, i16* %code_point66, align 2
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end65
  %50 = load i16, i16* %code_point66, align 2
  %51 = load i16*, i16** %result.addr, align 8
  %incdec.ptr86 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr86, i16** %result.addr, align 8
  store i16 %50, i16* %51, align 2
  %52 = load i64, i64* %pos, align 8
  %add87 = add i64 %52, 3
  store i64 %add87, i64* %pos, align 8
  br label %if.end135

if.else88:                                        ; preds = %if.else55
  %53 = load i8, i8* %leading_byte, align 1
  %conv89 = zext i8 %53 to i32
  %and90 = and i32 %conv89, 248
  %cmp91 = icmp eq i32 %and90, 240
  br i1 %cmp91, label %if.then93, label %if.else133

if.then93:                                        ; preds = %if.else88
  %54 = load i64, i64* %pos, align 8
  %add94 = add i64 %54, 3
  %55 = load i64, i64* %len.addr, align 8
  %cmp95 = icmp uge i64 %add94, %55
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then93
  br label %while.end138

if.end98:                                         ; preds = %if.then93
  %56 = load i8, i8* %leading_byte, align 1
  %conv100 = zext i8 %56 to i32
  %and101 = and i32 %conv100, 7
  %shl102 = shl i32 %and101, 18
  %57 = load i8*, i8** %data.addr, align 8
  %58 = load i64, i64* %pos, align 8
  %add103 = add i64 %58, 1
  %arrayidx104 = getelementptr inbounds i8, i8* %57, i64 %add103
  %59 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %59 to i32
  %and106 = and i32 %conv105, 63
  %shl107 = shl i32 %and106, 12
  %or108 = or i32 %shl102, %shl107
  %60 = load i8*, i8** %data.addr, align 8
  %61 = load i64, i64* %pos, align 8
  %add109 = add i64 %61, 2
  %arrayidx110 = getelementptr inbounds i8, i8* %60, i64 %add109
  %62 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %62 to i32
  %and112 = and i32 %conv111, 63
  %shl113 = shl i32 %and112, 6
  %or114 = or i32 %or108, %shl113
  %63 = load i8*, i8** %data.addr, align 8
  %64 = load i64, i64* %pos, align 8
  %add115 = add i64 %64, 3
  %arrayidx116 = getelementptr inbounds i8, i8* %63, i64 %add115
  %65 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %65 to i32
  %and118 = and i32 %conv117, 63
  %or119 = or i32 %or114, %and118
  store i32 %or119, i32* %code_point99, align 4
  %66 = load i32, i32* %code_point99, align 4
  %sub = sub i32 %66, 65536
  store i32 %sub, i32* %code_point99, align 4
  %67 = load i32, i32* %code_point99, align 4
  %shr = lshr i32 %67, 10
  %add120 = add i32 55296, %shr
  %conv121 = trunc i32 %add120 to i16
  store i16 %conv121, i16* %high_surrogate, align 2
  %68 = load i32, i32* %code_point99, align 4
  %and122 = and i32 %68, 1023
  %add123 = add i32 56320, %and122
  %conv124 = trunc i32 %add123 to i16
  store i16 %conv124, i16* %low_surrogate, align 2
  %call125 = call zeroext i1 @utf_is_be()
  br i1 %call125, label %if.then126, label %if.end129

if.then126:                                       ; preds = %if.end98
  %69 = load i16, i16* %high_surrogate, align 2
  %call127 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %69)
  store i16 %call127, i16* %high_surrogate, align 2
  %70 = load i16, i16* %low_surrogate, align 2
  %call128 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %70)
  store i16 %call128, i16* %low_surrogate, align 2
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end98
  %71 = load i16, i16* %high_surrogate, align 2
  %72 = load i16*, i16** %result.addr, align 8
  %incdec.ptr130 = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %incdec.ptr130, i16** %result.addr, align 8
  store i16 %71, i16* %72, align 2
  %73 = load i16, i16* %low_surrogate, align 2
  %74 = load i16*, i16** %result.addr, align 8
  %incdec.ptr131 = getelementptr inbounds i16, i16* %74, i32 1
  store i16* %incdec.ptr131, i16** %result.addr, align 8
  store i16 %73, i16* %74, align 2
  %75 = load i64, i64* %pos, align 8
  %add132 = add i64 %75, 4
  store i64 %add132, i64* %pos, align 8
  br label %if.end134

if.else133:                                       ; preds = %if.else88
  store i64 0, i64* %retval, align 8
  br label %return

if.end134:                                        ; preds = %if.end129
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end85
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end52
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %cond.end27
  br label %while.cond, !llvm.loop !28

while.end138:                                     ; preds = %if.then97, %if.then64, %if.then40, %while.cond
  %76 = load i16*, i16** %result.addr, align 8
  %77 = load i16*, i16** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %76 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  store i64 %sub.ptr.div, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end138, %if.else133
  %78 = load i64, i64* %retval, align 8
  ret i64 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_convert_to_utf32(i8* noundef %data, i64 noundef %len, i32* noundef %result) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %result.addr = alloca i32*, align 8
  %pos = alloca i64, align 8
  %start = alloca i32*, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v = alloca i64, align 8
  %final_pos = alloca i64, align 8
  %leading_byte = alloca i8, align 1
  %code_point = alloca i32, align 4
  %code_point79 = alloca i32, align 4
  %code_point143 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32* %result, i32** %result.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i32*, i32** %result.addr, align 8
  store i32* %0, i32** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end177, %while.end, %entry
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end178

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %pos, align 8
  %add = add i64 %3, 16
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ule i64 %add, %4
  br i1 %cmp1, label %if.then, label %if.end10

if.then:                                          ; preds = %while.body
  %5 = bitcast i64* %v1 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %add.ptr, i64 8, i1 false)
  %8 = bitcast i64* %v2 to i8*
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %pos, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %10
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 1 %add.ptr3, i64 8, i1 false)
  %11 = load i64, i64* %v1, align 8
  %12 = load i64, i64* %v2, align 8
  %or = or i64 %11, %12
  store i64 %or, i64* %v, align 8
  %13 = load i64, i64* %v, align 8
  %and = and i64 %13, -9187201950435737472
  %cmp4 = icmp eq i64 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %14 = load i64, i64* %pos, align 8
  %add6 = add i64 %14, 16
  store i64 %add6, i64* %final_pos, align 8
  br label %while.cond7

while.cond7:                                      ; preds = %while.body9, %if.then5
  %15 = load i64, i64* %pos, align 8
  %16 = load i64, i64* %final_pos, align 8
  %cmp8 = icmp ult i64 %15, %16
  br i1 %cmp8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond7
  %17 = load i8*, i8** %data.addr, align 8
  %18 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32*, i32** %result.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr, i32** %result.addr, align 8
  store i32 %conv, i32* %20, align 4
  %21 = load i64, i64* %pos, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond7, !llvm.loop !29

while.end:                                        ; preds = %while.cond7
  br label %while.cond, !llvm.loop !30

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %while.body
  %22 = load i8*, i8** %data.addr, align 8
  %23 = load i64, i64* %pos, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = load i8, i8* %arrayidx11, align 1
  store i8 %24, i8* %leading_byte, align 1
  %25 = load i8, i8* %leading_byte, align 1
  %conv12 = zext i8 %25 to i32
  %cmp13 = icmp slt i32 %conv12, 128
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  %26 = load i8, i8* %leading_byte, align 1
  %conv16 = zext i8 %26 to i32
  %27 = load i32*, i32** %result.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %incdec.ptr17, i32** %result.addr, align 8
  store i32 %conv16, i32* %27, align 4
  %28 = load i64, i64* %pos, align 8
  %inc18 = add i64 %28, 1
  store i64 %inc18, i64* %pos, align 8
  br label %if.end177

if.else:                                          ; preds = %if.end10
  %29 = load i8, i8* %leading_byte, align 1
  %conv19 = zext i8 %29 to i32
  %and20 = and i32 %conv19, 224
  %cmp21 = icmp eq i32 %and20, 192
  br i1 %cmp21, label %if.then23, label %if.else52

if.then23:                                        ; preds = %if.else
  %30 = load i64, i64* %pos, align 8
  %add24 = add i64 %30, 1
  %31 = load i64, i64* %len.addr, align 8
  %cmp25 = icmp uge i64 %add24, %31
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  store i64 0, i64* %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.then23
  %32 = load i8*, i8** %data.addr, align 8
  %33 = load i64, i64* %pos, align 8
  %add29 = add i64 %33, 1
  %arrayidx30 = getelementptr inbounds i8, i8* %32, i64 %add29
  %34 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %34 to i32
  %and32 = and i32 %conv31, 192
  %cmp33 = icmp ne i32 %and32, 128
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end28
  store i64 0, i64* %retval, align 8
  br label %return

if.end36:                                         ; preds = %if.end28
  %35 = load i8, i8* %leading_byte, align 1
  %conv37 = zext i8 %35 to i32
  %and38 = and i32 %conv37, 31
  %shl = shl i32 %and38, 6
  %36 = load i8*, i8** %data.addr, align 8
  %37 = load i64, i64* %pos, align 8
  %add39 = add i64 %37, 1
  %arrayidx40 = getelementptr inbounds i8, i8* %36, i64 %add39
  %38 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %38 to i32
  %and42 = and i32 %conv41, 63
  %or43 = or i32 %shl, %and42
  store i32 %or43, i32* %code_point, align 4
  %39 = load i32, i32* %code_point, align 4
  %cmp44 = icmp ult i32 %39, 128
  br i1 %cmp44, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %40 = load i32, i32* %code_point, align 4
  %cmp46 = icmp ult i32 2047, %40
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false, %if.end36
  store i64 0, i64* %retval, align 8
  br label %return

if.end49:                                         ; preds = %lor.lhs.false
  %41 = load i32, i32* %code_point, align 4
  %42 = load i32*, i32** %result.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %incdec.ptr50, i32** %result.addr, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* %pos, align 8
  %add51 = add i64 %43, 2
  store i64 %add51, i64* %pos, align 8
  br label %if.end176

if.else52:                                        ; preds = %if.else
  %44 = load i8, i8* %leading_byte, align 1
  %conv53 = zext i8 %44 to i32
  %and54 = and i32 %conv53, 240
  %cmp55 = icmp eq i32 %and54, 224
  br i1 %cmp55, label %if.then57, label %if.else108

if.then57:                                        ; preds = %if.else52
  %45 = load i64, i64* %pos, align 8
  %add58 = add i64 %45, 2
  %46 = load i64, i64* %len.addr, align 8
  %cmp59 = icmp uge i64 %add58, %46
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then57
  store i64 0, i64* %retval, align 8
  br label %return

if.end62:                                         ; preds = %if.then57
  %47 = load i8*, i8** %data.addr, align 8
  %48 = load i64, i64* %pos, align 8
  %add63 = add i64 %48, 1
  %arrayidx64 = getelementptr inbounds i8, i8* %47, i64 %add63
  %49 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %49 to i32
  %and66 = and i32 %conv65, 192
  %cmp67 = icmp ne i32 %and66, 128
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end62
  store i64 0, i64* %retval, align 8
  br label %return

if.end70:                                         ; preds = %if.end62
  %50 = load i8*, i8** %data.addr, align 8
  %51 = load i64, i64* %pos, align 8
  %add71 = add i64 %51, 2
  %arrayidx72 = getelementptr inbounds i8, i8* %50, i64 %add71
  %52 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %52 to i32
  %and74 = and i32 %conv73, 192
  %cmp75 = icmp ne i32 %and74, 128
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end70
  store i64 0, i64* %retval, align 8
  br label %return

if.end78:                                         ; preds = %if.end70
  %53 = load i8, i8* %leading_byte, align 1
  %conv80 = zext i8 %53 to i32
  %and81 = and i32 %conv80, 15
  %shl82 = shl i32 %and81, 12
  %54 = load i8*, i8** %data.addr, align 8
  %55 = load i64, i64* %pos, align 8
  %add83 = add i64 %55, 1
  %arrayidx84 = getelementptr inbounds i8, i8* %54, i64 %add83
  %56 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %56 to i32
  %and86 = and i32 %conv85, 63
  %shl87 = shl i32 %and86, 6
  %or88 = or i32 %shl82, %shl87
  %57 = load i8*, i8** %data.addr, align 8
  %58 = load i64, i64* %pos, align 8
  %add89 = add i64 %58, 2
  %arrayidx90 = getelementptr inbounds i8, i8* %57, i64 %add89
  %59 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %59 to i32
  %and92 = and i32 %conv91, 63
  %or93 = or i32 %or88, %and92
  store i32 %or93, i32* %code_point79, align 4
  %60 = load i32, i32* %code_point79, align 4
  %cmp94 = icmp ult i32 %60, 2048
  br i1 %cmp94, label %if.then104, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.end78
  %61 = load i32, i32* %code_point79, align 4
  %cmp97 = icmp ult i32 65535, %61
  br i1 %cmp97, label %if.then104, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %lor.lhs.false96
  %62 = load i32, i32* %code_point79, align 4
  %cmp100 = icmp ult i32 55295, %62
  br i1 %cmp100, label %land.lhs.true, label %if.end105

land.lhs.true:                                    ; preds = %lor.lhs.false99
  %63 = load i32, i32* %code_point79, align 4
  %cmp102 = icmp ult i32 %63, 57344
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %land.lhs.true, %lor.lhs.false96, %if.end78
  store i64 0, i64* %retval, align 8
  br label %return

if.end105:                                        ; preds = %land.lhs.true, %lor.lhs.false99
  %64 = load i32, i32* %code_point79, align 4
  %65 = load i32*, i32** %result.addr, align 8
  %incdec.ptr106 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %incdec.ptr106, i32** %result.addr, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i64, i64* %pos, align 8
  %add107 = add i64 %66, 3
  store i64 %add107, i64* %pos, align 8
  br label %if.end175

if.else108:                                       ; preds = %if.else52
  %67 = load i8, i8* %leading_byte, align 1
  %conv109 = zext i8 %67 to i32
  %and110 = and i32 %conv109, 248
  %cmp111 = icmp eq i32 %and110, 240
  br i1 %cmp111, label %if.then113, label %if.else173

if.then113:                                       ; preds = %if.else108
  %68 = load i64, i64* %pos, align 8
  %add114 = add i64 %68, 3
  %69 = load i64, i64* %len.addr, align 8
  %cmp115 = icmp uge i64 %add114, %69
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.then113
  store i64 0, i64* %retval, align 8
  br label %return

if.end118:                                        ; preds = %if.then113
  %70 = load i8*, i8** %data.addr, align 8
  %71 = load i64, i64* %pos, align 8
  %add119 = add i64 %71, 1
  %arrayidx120 = getelementptr inbounds i8, i8* %70, i64 %add119
  %72 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %72 to i32
  %and122 = and i32 %conv121, 192
  %cmp123 = icmp ne i32 %and122, 128
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end118
  store i64 0, i64* %retval, align 8
  br label %return

if.end126:                                        ; preds = %if.end118
  %73 = load i8*, i8** %data.addr, align 8
  %74 = load i64, i64* %pos, align 8
  %add127 = add i64 %74, 2
  %arrayidx128 = getelementptr inbounds i8, i8* %73, i64 %add127
  %75 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %75 to i32
  %and130 = and i32 %conv129, 192
  %cmp131 = icmp ne i32 %and130, 128
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end126
  store i64 0, i64* %retval, align 8
  br label %return

if.end134:                                        ; preds = %if.end126
  %76 = load i8*, i8** %data.addr, align 8
  %77 = load i64, i64* %pos, align 8
  %add135 = add i64 %77, 3
  %arrayidx136 = getelementptr inbounds i8, i8* %76, i64 %add135
  %78 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %78 to i32
  %and138 = and i32 %conv137, 192
  %cmp139 = icmp ne i32 %and138, 128
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end134
  store i64 0, i64* %retval, align 8
  br label %return

if.end142:                                        ; preds = %if.end134
  %79 = load i8, i8* %leading_byte, align 1
  %conv144 = zext i8 %79 to i32
  %and145 = and i32 %conv144, 7
  %shl146 = shl i32 %and145, 18
  %80 = load i8*, i8** %data.addr, align 8
  %81 = load i64, i64* %pos, align 8
  %add147 = add i64 %81, 1
  %arrayidx148 = getelementptr inbounds i8, i8* %80, i64 %add147
  %82 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %82 to i32
  %and150 = and i32 %conv149, 63
  %shl151 = shl i32 %and150, 12
  %or152 = or i32 %shl146, %shl151
  %83 = load i8*, i8** %data.addr, align 8
  %84 = load i64, i64* %pos, align 8
  %add153 = add i64 %84, 2
  %arrayidx154 = getelementptr inbounds i8, i8* %83, i64 %add153
  %85 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %85 to i32
  %and156 = and i32 %conv155, 63
  %shl157 = shl i32 %and156, 6
  %or158 = or i32 %or152, %shl157
  %86 = load i8*, i8** %data.addr, align 8
  %87 = load i64, i64* %pos, align 8
  %add159 = add i64 %87, 3
  %arrayidx160 = getelementptr inbounds i8, i8* %86, i64 %add159
  %88 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %88 to i32
  %and162 = and i32 %conv161, 63
  %or163 = or i32 %or158, %and162
  store i32 %or163, i32* %code_point143, align 4
  %89 = load i32, i32* %code_point143, align 4
  %cmp164 = icmp ule i32 %89, 65535
  br i1 %cmp164, label %if.then169, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %if.end142
  %90 = load i32, i32* %code_point143, align 4
  %cmp167 = icmp ult i32 1114111, %90
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %lor.lhs.false166, %if.end142
  store i64 0, i64* %retval, align 8
  br label %return

if.end170:                                        ; preds = %lor.lhs.false166
  %91 = load i32, i32* %code_point143, align 4
  %92 = load i32*, i32** %result.addr, align 8
  %incdec.ptr171 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %incdec.ptr171, i32** %result.addr, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i64, i64* %pos, align 8
  %add172 = add i64 %93, 4
  store i64 %add172, i64* %pos, align 8
  br label %if.end174

if.else173:                                       ; preds = %if.else108
  store i64 0, i64* %retval, align 8
  br label %return

if.end174:                                        ; preds = %if.end170
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.end105
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end49
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.then15
  br label %while.cond, !llvm.loop !30

while.end178:                                     ; preds = %while.cond
  %94 = load i32*, i32** %result.addr, align 8
  %95 = load i32*, i32** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %94 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %95 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end178, %if.else173, %if.then169, %if.then141, %if.then133, %if.then125, %if.then117, %if.then104, %if.then77, %if.then69, %if.then61, %if.then48, %if.then35, %if.then27
  %96 = load i64, i64* %retval, align 8
  ret i64 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_length_from_latin1(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  store i64 %0, i64* %counter, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shr = ashr i32 %conv, 7
  %conv1 = sext i32 %shr to i64
  %6 = load i64, i64* %counter, align 8
  %add = add i64 %6, %conv1
  store i64 %add, i64* %counter, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %counter, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_length_from_utf16le(i16* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i16*, align 8
  %len.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %word = alloca i16, align 2
  %i = alloca i64, align 8
  store i16* %data, i16** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %counter, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call zeroext i1 @utf_is_be()
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %2 = load i16*, i16** %data.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %3
  %4 = load i16, i16* %arrayidx, align 2
  %call1 = call zeroext i16 @utf_swap_uint16(i16 noundef zeroext %4)
  %conv = zext i16 %call1 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load i16*, i16** %data.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 %6
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, i16* %word, align 2
  %8 = load i16, i16* %word, align 2
  %conv5 = zext i16 %8 to i32
  %cmp6 = icmp sle i32 %conv5, 127
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %9 = load i64, i64* %counter, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %counter, align 8
  br label %if.end24

if.else:                                          ; preds = %cond.end
  %10 = load i16, i16* %word, align 2
  %conv8 = zext i16 %10 to i32
  %cmp9 = icmp sle i32 %conv8, 2047
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %11 = load i64, i64* %counter, align 8
  %add = add i64 %11, 2
  store i64 %add, i64* %counter, align 8
  br label %if.end23

if.else12:                                        ; preds = %if.else
  %12 = load i16, i16* %word, align 2
  %conv13 = zext i16 %12 to i32
  %cmp14 = icmp sle i32 %conv13, 55295
  br i1 %cmp14, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else12
  %13 = load i16, i16* %word, align 2
  %conv16 = zext i16 %13 to i32
  %cmp17 = icmp sge i32 %conv16, 57344
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %lor.lhs.false, %if.else12
  %14 = load i64, i64* %counter, align 8
  %add20 = add i64 %14, 3
  store i64 %add20, i64* %counter, align 8
  br label %if.end

if.else21:                                        ; preds = %lor.lhs.false
  %15 = load i64, i64* %counter, align 8
  %add22 = add i64 %15, 2
  store i64 %add22, i64* %counter, align 8
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then19
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then11
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %16 = load i64, i64* %i, align 8
  %inc25 = add i64 %16, 1
  store i64 %inc25, i64* %i, align 8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* %counter, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_length_from_utf32(i32* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %i = alloca i64, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %counter, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %counter, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %counter, align 8
  %3 = load i32*, i32** %data.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %4
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ugt i32 %5, 127
  %conv = zext i1 %cmp1 to i32
  %conv2 = sext i32 %conv to i64
  %6 = load i64, i64* %counter, align 8
  %add = add i64 %6, %conv2
  store i64 %add, i64* %counter, align 8
  %7 = load i32*, i32** %data.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %8
  %9 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp ugt i32 %9, 2047
  %conv5 = zext i1 %cmp4 to i32
  %conv6 = sext i32 %conv5 to i64
  %10 = load i64, i64* %counter, align 8
  %add7 = add i64 %10, %conv6
  store i64 %add7, i64* %counter, align 8
  %11 = load i32*, i32** %data.addr, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %12
  %13 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ugt i32 %13, 65535
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %14 = load i64, i64* %counter, align 8
  %add12 = add i64 %14, %conv11
  store i64 %add12, i64* %counter, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc13 = add i64 %15, 1
  store i64 %inc13, i64* %i, align 8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %counter, align 8
  ret i64 %16
}

declare dso_local void @utf8_string_init(%struct.utf8_string_s* noundef) #2

declare dso_local { i8*, i64 } @utf8_string_view_init(i8* noundef, i64 noundef) #2

declare dso_local void @utf8_string_destroy(%struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_reserve(%struct.utf8_string_s* noundef, i64 noundef) #2

declare dso_local i32 @utf8_string_shrink_to_fit(%struct.utf8_string_s* noundef) #2

declare dso_local { i8*, i64 } @utf8_string_view(%struct.utf8_string_s* noundef) #2

declare dso_local void @utf8_string_clear(%struct.utf8_string_s* noundef) #2

declare dso_local zeroext i1 @utf8_string_empty(%struct.utf8_string_s* noundef) #2

declare dso_local zeroext i1 @utf8_string_view_empty(i8*, i64) #2

declare dso_local i32 @utf8_string_copy(%struct.utf8_string_s* noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_view_copy(i8*, i64, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_append(%struct.utf8_string_s* noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_append_view(%struct.utf8_string_s* noundef, i8*, i64) #2

declare dso_local i32 @utf8_string_append_character(%struct.utf8_string_s* noundef, i8 noundef zeroext) #2

declare dso_local i32 @utf8_string_append_literal(%struct.utf8_string_s* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @utf8_string_prepend(%struct.utf8_string_s* noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_prepend_view(%struct.utf8_string_s* noundef, i8*, i64) #2

declare dso_local i32 @utf8_string_prepend_character(%struct.utf8_string_s* noundef, i8 noundef zeroext) #2

declare dso_local i32 @utf8_string_prepend_literal(%struct.utf8_string_s* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @utf8_string_insert(%struct.utf8_string_s* noundef, i64 noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_insert_view(%struct.utf8_string_s* noundef, i64 noundef, i8*, i64) #2

declare dso_local i32 @utf8_string_insert_character(%struct.utf8_string_s* noundef, i64 noundef, i8 noundef zeroext) #2

declare dso_local i32 @utf8_string_insert_literal(%struct.utf8_string_s* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @utf8_string_replace(%struct.utf8_string_s* noundef, i64 noundef, i64 noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_replace_view(%struct.utf8_string_s* noundef, i64 noundef, i64 noundef, i8*, i64) #2

declare dso_local i32 @utf8_string_replace_character(%struct.utf8_string_s* noundef, i64 noundef, i64 noundef, i8 noundef zeroext) #2

declare dso_local i32 @utf8_string_replace_literal(%struct.utf8_string_s* noundef, i64 noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @utf8_string_erase(%struct.utf8_string_s* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @utf8_string_concat(%struct.utf8_string_s* noundef, %struct.utf8_string_s* noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_view_concat(i8*, i64, %struct.utf8_string_s* noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_concat_view(%struct.utf8_string_s* noundef, i8*, i64, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_view_concat_view(i8*, i64, i8*, i64, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_concat_character(%struct.utf8_string_s* noundef, i8 noundef zeroext, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_view_concat_character(i8*, i64, i8 noundef zeroext, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_concat_literal(%struct.utf8_string_s* noundef, i8* noundef, i64 noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_view_concat_literal(i8*, i64, i8* noundef, i64 noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_compare(%struct.utf8_string_s* noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_view_compare(i8*, i64, i8*, i64) #2

declare dso_local i32 @utf8_string_compare_literal(%struct.utf8_string_s* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @utf8_string_view_compare_literal(i8*, i64, i8* noundef, i64 noundef) #2

declare dso_local { i8*, i64 } @utf8_string_substring(%struct.utf8_string_s* noundef, i64 noundef, i64 noundef) #2

declare dso_local { i8*, i64 } @utf8_string_view_substring(i8*, i64, i64 noundef, i64 noundef) #2

declare dso_local i32 @utf8_string_substring_copy(%struct.utf8_string_s* noundef, i64 noundef, i64 noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i32 @utf8_string_view_substring_copy(i8*, i64, i64 noundef, i64 noundef, %struct.utf8_string_s* noundef) #2

declare dso_local i64 @utf8_string_index_of_character(%struct.utf8_string_s* noundef, i64 noundef, i8 noundef zeroext) #2

declare dso_local i64 @utf8_string_view_index_of_character(i8*, i64, i64 noundef, i8 noundef zeroext) #2

declare dso_local i64 @utf8_string_last_index_of_character(%struct.utf8_string_s* noundef, i64 noundef, i8 noundef zeroext) #2

declare dso_local i64 @utf8_string_view_last_index_of_character(i8*, i64, i64 noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @utf8_validate(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %word = alloca i8, align 1
  %next_pos = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v = alloca i64, align 8
  %code_point = alloca i32, align 4
  %code_point73 = alloca i32, align 4
  %code_point135 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end166, %if.then5, %entry
  %0 = load i64, i64* %pos, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end167

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %pos, align 8
  %add = add i64 %2, 16
  store i64 %add, i64* %next_pos, align 8
  %3 = load i64, i64* %next_pos, align 8
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ule i64 %3, %4
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %while.body
  %5 = bitcast i64* %v1 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %add.ptr, i64 8, i1 false)
  %8 = bitcast i64* %v2 to i8*
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %pos, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %10
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 1 %add.ptr3, i64 8, i1 false)
  %11 = load i64, i64* %v1, align 8
  %12 = load i64, i64* %v2, align 8
  %or = or i64 %11, %12
  store i64 %or, i64* %v, align 8
  %13 = load i64, i64* %v, align 8
  %and = and i64 %13, -9187201950435737472
  %cmp4 = icmp eq i64 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %14 = load i64, i64* %next_pos, align 8
  store i64 %14, i64* %pos, align 8
  br label %while.cond, !llvm.loop !34

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %while.body
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i8, i8* %arrayidx, align 1
  store i8 %17, i8* %word, align 1
  br label %while.cond7

while.cond7:                                      ; preds = %if.end14, %if.end6
  %18 = load i8, i8* %word, align 1
  %conv = zext i8 %18 to i32
  %cmp8 = icmp slt i32 %conv, 128
  br i1 %cmp8, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond7
  %19 = load i64, i64* %pos, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %pos, align 8
  %20 = load i64, i64* %len.addr, align 8
  %cmp11 = icmp eq i64 %inc, %20
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body10
  store i1 true, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %while.body10
  %21 = load i8*, i8** %data.addr, align 8
  %22 = load i64, i64* %pos, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 %22
  %23 = load i8, i8* %arrayidx15, align 1
  store i8 %23, i8* %word, align 1
  br label %while.cond7, !llvm.loop !35

while.end:                                        ; preds = %while.cond7
  %24 = load i8, i8* %word, align 1
  %conv16 = zext i8 %24 to i32
  %and17 = and i32 %conv16, 224
  %cmp18 = icmp eq i32 %and17, 192
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %while.end
  %25 = load i64, i64* %pos, align 8
  %add21 = add i64 %25, 2
  store i64 %add21, i64* %next_pos, align 8
  %26 = load i64, i64* %next_pos, align 8
  %27 = load i64, i64* %len.addr, align 8
  %cmp22 = icmp ugt i64 %26, %27
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  store i1 false, i1* %retval, align 1
  br label %return

if.end25:                                         ; preds = %if.then20
  %28 = load i8*, i8** %data.addr, align 8
  %29 = load i64, i64* %pos, align 8
  %add26 = add i64 %29, 1
  %arrayidx27 = getelementptr inbounds i8, i8* %28, i64 %add26
  %30 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %30 to i32
  %and29 = and i32 %conv28, 192
  %cmp30 = icmp ne i32 %and29, 128
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end25
  store i1 false, i1* %retval, align 1
  br label %return

if.end33:                                         ; preds = %if.end25
  %31 = load i8, i8* %word, align 1
  %conv34 = zext i8 %31 to i32
  %and35 = and i32 %conv34, 31
  %shl = shl i32 %and35, 6
  %32 = load i8*, i8** %data.addr, align 8
  %33 = load i64, i64* %pos, align 8
  %add36 = add i64 %33, 1
  %arrayidx37 = getelementptr inbounds i8, i8* %32, i64 %add36
  %34 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %34 to i32
  %and39 = and i32 %conv38, 63
  %or40 = or i32 %shl, %and39
  store i32 %or40, i32* %code_point, align 4
  %35 = load i32, i32* %code_point, align 4
  %cmp41 = icmp ult i32 %35, 128
  br i1 %cmp41, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end33
  %36 = load i32, i32* %code_point, align 4
  %cmp43 = icmp ult i32 2047, %36
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false, %if.end33
  store i1 false, i1* %retval, align 1
  br label %return

if.end46:                                         ; preds = %lor.lhs.false
  br label %if.end166

if.else:                                          ; preds = %while.end
  %37 = load i8, i8* %word, align 1
  %conv47 = zext i8 %37 to i32
  %and48 = and i32 %conv47, 240
  %cmp49 = icmp eq i32 %and48, 224
  br i1 %cmp49, label %if.then51, label %if.else100

if.then51:                                        ; preds = %if.else
  %38 = load i64, i64* %pos, align 8
  %add52 = add i64 %38, 3
  store i64 %add52, i64* %next_pos, align 8
  %39 = load i64, i64* %next_pos, align 8
  %40 = load i64, i64* %len.addr, align 8
  %cmp53 = icmp ugt i64 %39, %40
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then51
  store i1 false, i1* %retval, align 1
  br label %return

if.end56:                                         ; preds = %if.then51
  %41 = load i8*, i8** %data.addr, align 8
  %42 = load i64, i64* %pos, align 8
  %add57 = add i64 %42, 1
  %arrayidx58 = getelementptr inbounds i8, i8* %41, i64 %add57
  %43 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %43 to i32
  %and60 = and i32 %conv59, 192
  %cmp61 = icmp ne i32 %and60, 128
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end56
  store i1 false, i1* %retval, align 1
  br label %return

if.end64:                                         ; preds = %if.end56
  %44 = load i8*, i8** %data.addr, align 8
  %45 = load i64, i64* %pos, align 8
  %add65 = add i64 %45, 2
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %add65
  %46 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %46 to i32
  %and68 = and i32 %conv67, 192
  %cmp69 = icmp ne i32 %and68, 128
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end64
  store i1 false, i1* %retval, align 1
  br label %return

if.end72:                                         ; preds = %if.end64
  %47 = load i8, i8* %word, align 1
  %conv74 = zext i8 %47 to i32
  %and75 = and i32 %conv74, 15
  %shl76 = shl i32 %and75, 12
  %48 = load i8*, i8** %data.addr, align 8
  %49 = load i64, i64* %pos, align 8
  %add77 = add i64 %49, 1
  %arrayidx78 = getelementptr inbounds i8, i8* %48, i64 %add77
  %50 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %50 to i32
  %and80 = and i32 %conv79, 63
  %shl81 = shl i32 %and80, 6
  %or82 = or i32 %shl76, %shl81
  %51 = load i8*, i8** %data.addr, align 8
  %52 = load i64, i64* %pos, align 8
  %add83 = add i64 %52, 2
  %arrayidx84 = getelementptr inbounds i8, i8* %51, i64 %add83
  %53 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %53 to i32
  %and86 = and i32 %conv85, 63
  %or87 = or i32 %or82, %and86
  store i32 %or87, i32* %code_point73, align 4
  %54 = load i32, i32* %code_point73, align 4
  %cmp88 = icmp ult i32 %54, 2048
  br i1 %cmp88, label %if.then98, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.end72
  %55 = load i32, i32* %code_point73, align 4
  %cmp91 = icmp ult i32 65535, %55
  br i1 %cmp91, label %if.then98, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false90
  %56 = load i32, i32* %code_point73, align 4
  %cmp94 = icmp ult i32 55295, %56
  br i1 %cmp94, label %land.lhs.true, label %if.end99

land.lhs.true:                                    ; preds = %lor.lhs.false93
  %57 = load i32, i32* %code_point73, align 4
  %cmp96 = icmp ult i32 %57, 57344
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %land.lhs.true, %lor.lhs.false90, %if.end72
  store i1 false, i1* %retval, align 1
  br label %return

if.end99:                                         ; preds = %land.lhs.true, %lor.lhs.false93
  br label %if.end165

if.else100:                                       ; preds = %if.else
  %58 = load i8, i8* %word, align 1
  %conv101 = zext i8 %58 to i32
  %and102 = and i32 %conv101, 248
  %cmp103 = icmp eq i32 %and102, 240
  br i1 %cmp103, label %if.then105, label %if.else163

if.then105:                                       ; preds = %if.else100
  %59 = load i64, i64* %pos, align 8
  %add106 = add i64 %59, 4
  store i64 %add106, i64* %next_pos, align 8
  %60 = load i64, i64* %next_pos, align 8
  %61 = load i64, i64* %len.addr, align 8
  %cmp107 = icmp ugt i64 %60, %61
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.then105
  store i1 false, i1* %retval, align 1
  br label %return

if.end110:                                        ; preds = %if.then105
  %62 = load i8*, i8** %data.addr, align 8
  %63 = load i64, i64* %pos, align 8
  %add111 = add i64 %63, 1
  %arrayidx112 = getelementptr inbounds i8, i8* %62, i64 %add111
  %64 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %64 to i32
  %and114 = and i32 %conv113, 192
  %cmp115 = icmp ne i32 %and114, 128
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end110
  store i1 false, i1* %retval, align 1
  br label %return

if.end118:                                        ; preds = %if.end110
  %65 = load i8*, i8** %data.addr, align 8
  %66 = load i64, i64* %pos, align 8
  %add119 = add i64 %66, 2
  %arrayidx120 = getelementptr inbounds i8, i8* %65, i64 %add119
  %67 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %67 to i32
  %and122 = and i32 %conv121, 192
  %cmp123 = icmp ne i32 %and122, 128
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end118
  store i1 false, i1* %retval, align 1
  br label %return

if.end126:                                        ; preds = %if.end118
  %68 = load i8*, i8** %data.addr, align 8
  %69 = load i64, i64* %pos, align 8
  %add127 = add i64 %69, 3
  %arrayidx128 = getelementptr inbounds i8, i8* %68, i64 %add127
  %70 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %70 to i32
  %and130 = and i32 %conv129, 192
  %cmp131 = icmp ne i32 %and130, 128
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end126
  store i1 false, i1* %retval, align 1
  br label %return

if.end134:                                        ; preds = %if.end126
  %71 = load i8, i8* %word, align 1
  %conv136 = zext i8 %71 to i32
  %and137 = and i32 %conv136, 7
  %shl138 = shl i32 %and137, 18
  %72 = load i8*, i8** %data.addr, align 8
  %73 = load i64, i64* %pos, align 8
  %add139 = add i64 %73, 1
  %arrayidx140 = getelementptr inbounds i8, i8* %72, i64 %add139
  %74 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %74 to i32
  %and142 = and i32 %conv141, 63
  %shl143 = shl i32 %and142, 12
  %or144 = or i32 %shl138, %shl143
  %75 = load i8*, i8** %data.addr, align 8
  %76 = load i64, i64* %pos, align 8
  %add145 = add i64 %76, 2
  %arrayidx146 = getelementptr inbounds i8, i8* %75, i64 %add145
  %77 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %77 to i32
  %and148 = and i32 %conv147, 63
  %shl149 = shl i32 %and148, 6
  %or150 = or i32 %or144, %shl149
  %78 = load i8*, i8** %data.addr, align 8
  %79 = load i64, i64* %pos, align 8
  %add151 = add i64 %79, 3
  %arrayidx152 = getelementptr inbounds i8, i8* %78, i64 %add151
  %80 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %80 to i32
  %and154 = and i32 %conv153, 63
  %or155 = or i32 %or150, %and154
  store i32 %or155, i32* %code_point135, align 4
  %81 = load i32, i32* %code_point135, align 4
  %cmp156 = icmp ule i32 %81, 65535
  br i1 %cmp156, label %if.then161, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %if.end134
  %82 = load i32, i32* %code_point135, align 4
  %cmp159 = icmp ult i32 1114111, %82
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %lor.lhs.false158, %if.end134
  store i1 false, i1* %retval, align 1
  br label %return

if.end162:                                        ; preds = %lor.lhs.false158
  br label %if.end164

if.else163:                                       ; preds = %if.else100
  store i1 false, i1* %retval, align 1
  br label %return

if.end164:                                        ; preds = %if.end162
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end99
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.end46
  %83 = load i64, i64* %next_pos, align 8
  store i64 %83, i64* %pos, align 8
  br label %while.cond, !llvm.loop !34

while.end167:                                     ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end167, %if.else163, %if.then161, %if.then133, %if.then125, %if.then117, %if.then109, %if.then98, %if.then71, %if.then63, %if.then55, %if.then45, %if.then32, %if.then24, %if.then13
  %84 = load i1, i1* %retval, align 1
  ret i1 %84
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
