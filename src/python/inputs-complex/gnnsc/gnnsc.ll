; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/gnnsc/gnnsc.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/gnnsc/gnnsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Matrix = type { float**, i32* }
%struct.PID = type { float, float, float, float, float, float, float, float, float, %struct.Signal*, float (float*)*, %struct.Signal*, float*, i32, float, float, float, float, float, i32, i32 }
%struct.Signal = type { float*, float, i32 }
%struct.Pop = type { float**, float**, i32, i32 }
%struct.SystemNN = type { %struct.NN*, %struct.Signal*, float (float*)*, %struct.Signal*, float*, i32, float (float*)*, float*, i32*, i32*, float, float, float, i32, i32 }
%struct.NN = type { %struct.Matrix**, %struct.Matrix**, i32*, i32, i32, float**, float**, float (float)*, i32*, i32**, %struct.Matrix** }
%struct.InputPop = type { i32, i32, float** }
%struct.NNInput = type { i32*, i32, float**, float**, i32*, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Error: Sizes of matrixes are incorect\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%f,%f,%f,%f,%f\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Please select the Signal:\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"1 - step\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"2 - customa\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Select: \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Please select the system:\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"1 - linear\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"2 - complexYDddot\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"3 - complexYDot\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Error: way should be 0 or 1\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"Please select the AF:\0A1 - tanh\0A2 - sigmoid\0ASelect: \00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Please select the AF:\0A1 - typeOne\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"2 - typeTwo (SD)\0A\00", align 1
@__const.findUForSystemAndSignal.forValueOne = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.000000e+04, float 1.000000e+03], align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"E - %f\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"U - %f\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Y - %f\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"dE - %f\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"dE2 - %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"iE - %f\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"dU - %f\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"dU2 - %f\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"iU - %f\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"dY - %f\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"dY2 - %f\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"iY - %f\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"%d - MAX: %f MIN: %f\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"%f,%f,%f,%f\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

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
define dso_local i32 @main() #0 {
entry:
  %call = call i64 @time(i64* noundef null) #6
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv) #6
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @createRandomFloat(float noundef %min, float noundef %max) #0 {
entry:
  %min.addr = alloca float, align 4
  %max.addr = alloca float, align 4
  %random = alloca float, align 4
  %diff = alloca float, align 4
  %r = alloca float, align 4
  store float %min, float* %min.addr, align 4
  store float %max, float* %max.addr, align 4
  %call = call i32 @rand() #6
  %conv = sitofp i32 %call to float
  %div = fdiv float %conv, 0x41E0000000000000
  store float %div, float* %random, align 4
  %0 = load float, float* %max.addr, align 4
  %1 = load float, float* %min.addr, align 4
  %sub = fsub float %0, %1
  store float %sub, float* %diff, align 4
  %2 = load float, float* %random, align 4
  %3 = load float, float* %diff, align 4
  %mul = fmul float %2, %3
  store float %mul, float* %r, align 4
  %4 = load float, float* %min.addr, align 4
  %5 = load float, float* %r, align 4
  %add = fadd float %4, %5
  ret float %add
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixDelete(%struct.Matrix* noundef %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.Matrix*, align 8
  %i = alloca i32, align 4
  store %struct.Matrix* %matrix, %struct.Matrix** %matrix.addr, align 8
  %0 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %tobool = icmp ne %struct.Matrix* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix1 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %5, i32 0, i32 0
  %6 = load float**, float*** %matrix1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds float*, float** %6, i64 %idxprom
  %8 = load float*, float** %arrayidx2, align 8
  %9 = bitcast float* %8 to i8*
  call void @free(i8* noundef %9) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %11 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix3 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %11, i32 0, i32 0
  %12 = load float**, float*** %matrix3, align 8
  %13 = bitcast float** %12 to i8*
  call void @free(i8* noundef %13) #6
  %14 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes4 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %14, i32 0, i32 1
  %15 = load i32*, i32** %sizes4, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* noundef %16) #6
  %17 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %18 = bitcast %struct.Matrix* %17 to i8*
  call void @free(i8* noundef %18) #6
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixDeleteOnlyData(%struct.Matrix* noundef %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.Matrix*, align 8
  %i = alloca i32, align 4
  store %struct.Matrix* %matrix, %struct.Matrix** %matrix.addr, align 8
  %0 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %tobool = icmp ne %struct.Matrix* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix1 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %5, i32 0, i32 0
  %6 = load float**, float*** %matrix1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds float*, float** %6, i64 %idxprom
  %8 = load float*, float** %arrayidx2, align 8
  %9 = bitcast float* %8 to i8*
  call void @free(i8* noundef %9) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix3 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %11, i32 0, i32 0
  %12 = load float**, float*** %matrix3, align 8
  %13 = bitcast float** %12 to i8*
  call void @free(i8* noundef %13) #6
  %14 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes4 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %14, i32 0, i32 1
  %15 = load i32*, i32** %sizes4, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* noundef %16) #6
  %17 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix5 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %17, i32 0, i32 0
  store float** null, float*** %matrix5, align 8
  %18 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes6 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %18, i32 0, i32 1
  store i32* null, i32** %sizes6, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createMatrix(%struct.Matrix* noundef %matrix, i32* noundef %sizes) #0 {
entry:
  %matrix.addr = alloca %struct.Matrix*, align 8
  %sizes.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.Matrix* %matrix, %struct.Matrix** %matrix.addr, align 8
  store i32* %sizes, i32** %sizes.addr, align 8
  %0 = load i32*, i32** %sizes.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %2 = bitcast i8* %call to float**
  %3 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix1 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %3, i32 0, i32 0
  store float** %2, float*** %matrix1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %sizes.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %sizes.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx4, align 4
  %conv5 = sext i32 %8 to i64
  %mul6 = mul i64 %conv5, 4
  %call7 = call noalias i8* @malloc(i64 noundef %mul6) #6
  %9 = bitcast i8* %call7 to float*
  %10 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix8 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %10, i32 0, i32 0
  %11 = load float**, float*** %matrix8, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds float*, float** %11, i64 %idxprom
  store float* %9, float** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call10 = call noalias i8* @malloc(i64 noundef 8) #6
  %14 = bitcast i8* %call10 to i32*
  %15 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes11 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %15, i32 0, i32 1
  store i32* %14, i32** %sizes11, align 8
  %16 = load i32*, i32** %sizes.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx12, align 4
  %18 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes13 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %18, i32 0, i32 1
  %19 = load i32*, i32** %sizes13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %17, i32* %arrayidx14, align 4
  %20 = load i32*, i32** %sizes.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx15, align 4
  %22 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes16 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %22, i32 0, i32 1
  %23 = load i32*, i32** %sizes16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %21, i32* %arrayidx17, align 4
  %24 = load i32*, i32** %sizes.addr, align 8
  %25 = bitcast i32* %24 to i8*
  call void @free(i8* noundef %25) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createMatrixFromPointer(%struct.Matrix* noundef %output, float* noundef %input, i32* noundef %size) #0 {
entry:
  %output.addr = alloca %struct.Matrix*, align 8
  %input.addr = alloca float*, align 8
  %size.addr = alloca i32*, align 8
  %globalIndex = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.Matrix* %output, %struct.Matrix** %output.addr, align 8
  store float* %input, float** %input.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  %0 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %1 = load i32*, i32** %size.addr, align 8
  call void @createMatrix(%struct.Matrix* noundef %0, i32* noundef %1)
  store i32 0, i32* %globalIndex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %3, i32 0, i32 1
  %4 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %sizes2 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %7, i32 0, i32 1
  %8 = load i32*, i32** %sizes2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %6, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond1
  %10 = load float*, float** %input.addr, align 8
  %11 = load i32, i32* %globalIndex, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds float, float* %10, i64 %idxprom
  %12 = load float, float* %arrayidx6, align 4
  %13 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %13, i32 0, i32 0
  %14 = load float**, float*** %matrix, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds float*, float** %14, i64 %idxprom7
  %16 = load float*, float** %arrayidx8, align 8
  %17 = load i32, i32* %y, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds float, float* %16, i64 %idxprom9
  store float %12, float* %arrayidx10, align 4
  %18 = load i32, i32* %globalIndex, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %globalIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %19 = load i32, i32* %y, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, i32* %y, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixMultiply(%struct.Matrix* noundef %A, %struct.Matrix* noundef %B, %struct.Matrix* noundef %output) #0 {
entry:
  %A.addr = alloca %struct.Matrix*, align 8
  %B.addr = alloca %struct.Matrix*, align 8
  %output.addr = alloca %struct.Matrix*, align 8
  %sizes3 = alloca i32*, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct.Matrix* %A, %struct.Matrix** %A.addr, align 8
  store %struct.Matrix* %B, %struct.Matrix** %B.addr, align 8
  store %struct.Matrix* %output, %struct.Matrix** %output.addr, align 8
  %0 = load %struct.Matrix*, %struct.Matrix** %A.addr, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %0, i32 0, i32 1
  %1 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 1
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load %struct.Matrix*, %struct.Matrix** %B.addr, align 8
  %sizes1 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %3, i32 0, i32 1
  %4 = load i32*, i32** %sizes1, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp ne i32 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call noalias i8* @malloc(i64 noundef 8) #6
  %7 = bitcast i8* %call4 to i32*
  store i32* %7, i32** %sizes3, align 8
  %8 = load %struct.Matrix*, %struct.Matrix** %A.addr, align 8
  %sizes5 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %8, i32 0, i32 1
  %9 = load i32*, i32** %sizes5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i32*, i32** %sizes3, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %10, i32* %arrayidx7, align 4
  %12 = load %struct.Matrix*, %struct.Matrix** %B.addr, align 8
  %sizes8 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %12, i32 0, i32 1
  %13 = load i32*, i32** %sizes8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 1
  %14 = load i32, i32* %arrayidx9, align 4
  %15 = load i32*, i32** %sizes3, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %14, i32* %arrayidx10, align 4
  %16 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %17 = load i32*, i32** %sizes3, align 8
  call void @createMatrix(%struct.Matrix* noundef %16, i32* noundef %17)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %if.end
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.Matrix*, %struct.Matrix** %B.addr, align 8
  %sizes11 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %19, i32 0, i32 1
  %20 = load i32*, i32** %sizes11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp slt i32 %18, %21
  br i1 %cmp13, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc42, %for.body
  %22 = load i32, i32* %y, align 4
  %23 = load %struct.Matrix*, %struct.Matrix** %A.addr, align 8
  %sizes15 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %23, i32 0, i32 1
  %24 = load i32*, i32** %sizes15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp slt i32 %22, %25
  br i1 %cmp17, label %for.body18, label %for.end44

for.body18:                                       ; preds = %for.cond14
  %26 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %26, i32 0, i32 0
  %27 = load float**, float*** %matrix, align 8
  %28 = load i32, i32* %y, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds float*, float** %27, i64 %idxprom
  %29 = load float*, float** %arrayidx19, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds float, float* %29, i64 %idxprom20
  store float 0.000000e+00, float* %arrayidx21, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body18
  %31 = load i32, i32* %x, align 4
  %32 = load %struct.Matrix*, %struct.Matrix** %A.addr, align 8
  %sizes23 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %32, i32 0, i32 1
  %33 = load i32*, i32** %sizes23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 1
  %34 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp slt i32 %31, %34
  br i1 %cmp25, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond22
  %35 = load %struct.Matrix*, %struct.Matrix** %A.addr, align 8
  %matrix27 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %35, i32 0, i32 0
  %36 = load float**, float*** %matrix27, align 8
  %37 = load i32, i32* %y, align 4
  %idxprom28 = sext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds float*, float** %36, i64 %idxprom28
  %38 = load float*, float** %arrayidx29, align 8
  %39 = load i32, i32* %x, align 4
  %idxprom30 = sext i32 %39 to i64
  %arrayidx31 = getelementptr inbounds float, float* %38, i64 %idxprom30
  %40 = load float, float* %arrayidx31, align 4
  %41 = load %struct.Matrix*, %struct.Matrix** %B.addr, align 8
  %matrix32 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %41, i32 0, i32 0
  %42 = load float**, float*** %matrix32, align 8
  %43 = load i32, i32* %x, align 4
  %idxprom33 = sext i32 %43 to i64
  %arrayidx34 = getelementptr inbounds float*, float** %42, i64 %idxprom33
  %44 = load float*, float** %arrayidx34, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %45 to i64
  %arrayidx36 = getelementptr inbounds float, float* %44, i64 %idxprom35
  %46 = load float, float* %arrayidx36, align 4
  %47 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %matrix37 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %47, i32 0, i32 0
  %48 = load float**, float*** %matrix37, align 8
  %49 = load i32, i32* %y, align 4
  %idxprom38 = sext i32 %49 to i64
  %arrayidx39 = getelementptr inbounds float*, float** %48, i64 %idxprom38
  %50 = load float*, float** %arrayidx39, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %51 to i64
  %arrayidx41 = getelementptr inbounds float, float* %50, i64 %idxprom40
  %52 = load float, float* %arrayidx41, align 4
  %53 = call float @llvm.fmuladd.f32(float %40, float %46, float %52)
  store float %53, float* %arrayidx41, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %54 = load i32, i32* %x, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond22, !llvm.loop !10

for.end:                                          ; preds = %for.cond22
  br label %for.inc42

for.inc42:                                        ; preds = %for.end
  %55 = load i32, i32* %y, align 4
  %inc43 = add nsw i32 %55, 1
  store i32 %inc43, i32* %y, align 4
  br label %for.cond14, !llvm.loop !11

for.end44:                                        ; preds = %for.cond14
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %56 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %56, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end47:                                        ; preds = %for.cond
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fullyCopyMatrix(%struct.Matrix* noundef %input, %struct.Matrix* noundef %output) #0 {
entry:
  %input.addr = alloca %struct.Matrix*, align 8
  %output.addr = alloca %struct.Matrix*, align 8
  %size = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.Matrix* %input, %struct.Matrix** %input.addr, align 8
  store %struct.Matrix* %output, %struct.Matrix** %output.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 8) #6
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %size, align 8
  %1 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %1, i32 0, i32 1
  %2 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %size, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 %3, i32* %arrayidx1, align 4
  %5 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %sizes2 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %5, i32 0, i32 1
  %6 = load i32*, i32** %sizes2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx3, align 4
  %8 = load i32*, i32** %size, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 %7, i32* %arrayidx4, align 4
  %9 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %10 = load i32*, i32** %size, align 8
  call void @createMatrix(%struct.Matrix* noundef %9, i32* noundef %10)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %sizes5 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %12, i32 0, i32 1
  %13 = load i32*, i32** %sizes5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx6, align 4
  %cmp = icmp slt i32 %11, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %15, i32 0, i32 0
  %16 = load float**, float*** %matrix, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds float*, float** %16, i64 %idxprom
  %18 = load float*, float** %arrayidx7, align 8
  %19 = bitcast float* %18 to i8*
  %20 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix8 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %20, i32 0, i32 0
  %21 = load float**, float*** %matrix8, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds float*, float** %21, i64 %idxprom9
  %23 = load float*, float** %arrayidx10, align 8
  %24 = bitcast float* %23 to i8*
  %25 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %sizes11 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %25, i32 0, i32 1
  %26 = load i32*, i32** %sizes11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %26, i64 1
  %27 = load i32, i32* %arrayidx12, align 4
  %conv = sext i32 %27 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %24, i64 %mul, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixSubstAdd(%struct.Matrix* noundef %A, %struct.Matrix* noundef %B, %struct.Matrix* noundef %output, i32 noundef %type) #0 {
entry:
  %A.addr = alloca %struct.Matrix*, align 8
  %B.addr = alloca %struct.Matrix*, align 8
  %output.addr = alloca %struct.Matrix*, align 8
  %type.addr = alloca i32, align 4
  %sizes = alloca i32*, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.Matrix* %A, %struct.Matrix** %A.addr, align 8
  store %struct.Matrix* %B, %struct.Matrix** %B.addr, align 8
  store %struct.Matrix* %output, %struct.Matrix** %output.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 8) #6
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %sizes, align 8
  %1 = load %struct.Matrix*, %struct.Matrix** %A.addr, align 8
  %sizes1 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %1, i32 0, i32 1
  %2 = load i32*, i32** %sizes1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %sizes, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 %3, i32* %arrayidx2, align 4
  %5 = load %struct.Matrix*, %struct.Matrix** %B.addr, align 8
  %sizes3 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %5, i32 0, i32 1
  %6 = load i32*, i32** %sizes3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx4, align 4
  %8 = load i32*, i32** %sizes, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 %7, i32* %arrayidx5, align 4
  %9 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %10 = load i32*, i32** %sizes, align 8
  call void @createMatrix(%struct.Matrix* noundef %9, i32* noundef %10)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %sizes6 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %12, i32 0, i32 1
  %13 = load i32*, i32** %sizes6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx7, align 4
  %cmp = icmp slt i32 %11, %14
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %15 = load i32, i32* %y, align 4
  %16 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %sizes9 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %16, i32 0, i32 1
  %17 = load i32*, i32** %sizes9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 1
  %18 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp slt i32 %15, %18
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond8
  %19 = load i32, i32* %type.addr, align 4
  %cmp13 = icmp eq i32 %19, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body12
  %20 = load %struct.Matrix*, %struct.Matrix** %A.addr, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %20, i32 0, i32 0
  %21 = load float**, float*** %matrix, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds float*, float** %21, i64 %idxprom
  %23 = load float*, float** %arrayidx14, align 8
  %24 = load i32, i32* %y, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds float, float* %23, i64 %idxprom15
  %25 = load float, float* %arrayidx16, align 4
  %26 = load %struct.Matrix*, %struct.Matrix** %B.addr, align 8
  %matrix17 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %26, i32 0, i32 0
  %27 = load float**, float*** %matrix17, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds float*, float** %27, i64 %idxprom18
  %29 = load float*, float** %arrayidx19, align 8
  %30 = load i32, i32* %y, align 4
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds float, float* %29, i64 %idxprom20
  %31 = load float, float* %arrayidx21, align 4
  %sub = fsub float %25, %31
  %32 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %matrix22 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %32, i32 0, i32 0
  %33 = load float**, float*** %matrix22, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %34 to i64
  %arrayidx24 = getelementptr inbounds float*, float** %33, i64 %idxprom23
  %35 = load float*, float** %arrayidx24, align 8
  %36 = load i32, i32* %y, align 4
  %idxprom25 = sext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds float, float* %35, i64 %idxprom25
  store float %sub, float* %arrayidx26, align 4
  br label %if.end

if.else:                                          ; preds = %for.body12
  %37 = load %struct.Matrix*, %struct.Matrix** %A.addr, align 8
  %matrix27 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %37, i32 0, i32 0
  %38 = load float**, float*** %matrix27, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %arrayidx29 = getelementptr inbounds float*, float** %38, i64 %idxprom28
  %40 = load float*, float** %arrayidx29, align 8
  %41 = load i32, i32* %y, align 4
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds float, float* %40, i64 %idxprom30
  %42 = load float, float* %arrayidx31, align 4
  %43 = load %struct.Matrix*, %struct.Matrix** %B.addr, align 8
  %matrix32 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %43, i32 0, i32 0
  %44 = load float**, float*** %matrix32, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %45 to i64
  %arrayidx34 = getelementptr inbounds float*, float** %44, i64 %idxprom33
  %46 = load float*, float** %arrayidx34, align 8
  %47 = load i32, i32* %y, align 4
  %idxprom35 = sext i32 %47 to i64
  %arrayidx36 = getelementptr inbounds float, float* %46, i64 %idxprom35
  %48 = load float, float* %arrayidx36, align 4
  %add = fadd float %42, %48
  %49 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %matrix37 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %49, i32 0, i32 0
  %50 = load float**, float*** %matrix37, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %51 to i64
  %arrayidx39 = getelementptr inbounds float*, float** %50, i64 %idxprom38
  %52 = load float*, float** %arrayidx39, align 8
  %53 = load i32, i32* %y, align 4
  %idxprom40 = sext i32 %53 to i64
  %arrayidx41 = getelementptr inbounds float, float* %52, i64 %idxprom40
  store float %add, float* %arrayidx41, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %54 = load i32, i32* %y, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond8, !llvm.loop !14

for.end:                                          ; preds = %for.cond8
  br label %for.inc42

for.inc42:                                        ; preds = %for.end
  %55 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %55, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixAllValuesFormula(%struct.Matrix* noundef %matrix, float (float)* noundef %func_ptr) #0 {
entry:
  %matrix.addr = alloca %struct.Matrix*, align 8
  %func_ptr.addr = alloca float (float)*, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.Matrix* %matrix, %struct.Matrix** %matrix.addr, align 8
  store float (float)* %func_ptr, float (float)** %func_ptr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %1, i32 0, i32 1
  %2 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %y, align 4
  %5 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %sizes2 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %5, i32 0, i32 1
  %6 = load i32*, i32** %sizes2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %4, %7
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond1
  %8 = load float (float)*, float (float)** %func_ptr.addr, align 8
  %9 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix6 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %9, i32 0, i32 0
  %10 = load float**, float*** %matrix6, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds float*, float** %10, i64 %idxprom
  %12 = load float*, float** %arrayidx7, align 8
  %13 = load i32, i32* %y, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds float, float* %12, i64 %idxprom8
  %14 = load float, float* %arrayidx9, align 4
  %call = call float %8(float noundef %14)
  %15 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %matrix10 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %15, i32 0, i32 0
  %16 = load float**, float*** %matrix10, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds float*, float** %16, i64 %idxprom11
  %18 = load float*, float** %arrayidx12, align 8
  %19 = load i32, i32* %y, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds float, float* %18, i64 %idxprom13
  store float %call, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %y, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond1, !llvm.loop !16

for.end:                                          ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createNewPidController(%struct.PID* noundef %pid) #0 {
entry:
  %pid.addr = alloca %struct.PID*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.PID* %pid, %struct.PID** %pid.addr, align 8
  %0 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Kp = getelementptr inbounds %struct.PID, %struct.PID* %0, i32 0, i32 0
  store float 0.000000e+00, float* %Kp, align 8
  %1 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Ki = getelementptr inbounds %struct.PID, %struct.PID* %1, i32 0, i32 1
  store float 0.000000e+00, float* %Ki, align 4
  %2 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Kd = getelementptr inbounds %struct.PID, %struct.PID* %2, i32 0, i32 2
  store float 0.000000e+00, float* %Kd, align 8
  %3 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %tauD = getelementptr inbounds %struct.PID, %struct.PID* %3, i32 0, i32 4
  store float 1.000000e+00, float* %tauD, align 8
  %4 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %tauI = getelementptr inbounds %struct.PID, %struct.PID* %4, i32 0, i32 3
  store float 1.000000e+00, float* %tauI, align 4
  %call = call noalias i8* @malloc(i64 noundef 16) #6
  %5 = bitcast i8* %call to %struct.Signal*
  %6 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal = getelementptr inbounds %struct.PID, %struct.PID* %6, i32 0, i32 9
  store %struct.Signal* %5, %struct.Signal** %signal, align 8
  %7 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal1 = getelementptr inbounds %struct.PID, %struct.PID* %7, i32 0, i32 9
  %8 = load %struct.Signal*, %struct.Signal** %signal1, align 8
  call void @cliSignalSelector(%struct.Signal* noundef %8)
  %9 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %func_system = getelementptr inbounds %struct.PID, %struct.PID* %9, i32 0, i32 10
  %call2 = call i32 @selectSystem(float (float*)** noundef %func_system)
  store i32 %call2, i32* %size, align 4
  %10 = load i32, i32* %size, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 %conv, 4
  %call3 = call noalias i8* @malloc(i64 noundef %mul) #6
  %11 = bitcast i8* %call3 to float*
  %12 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %dataSystem = getelementptr inbounds %struct.PID, %struct.PID* %12, i32 0, i32 12
  store float* %11, float** %dataSystem, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %dataSystem5 = getelementptr inbounds %struct.PID, %struct.PID* %15, i32 0, i32 12
  %16 = load float*, float** %dataSystem5, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds float, float* %16, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %size, align 4
  %20 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %sizeDataSystem = getelementptr inbounds %struct.PID, %struct.PID* %20, i32 0, i32 13
  store i32 %19, i32* %sizeDataSystem, align 8
  %call6 = call noalias i8* @malloc(i64 noundef 16) #6
  %21 = bitcast i8* %call6 to %struct.Signal*
  %22 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output = getelementptr inbounds %struct.PID, %struct.PID* %22, i32 0, i32 11
  store %struct.Signal* %21, %struct.Signal** %output, align 8
  %23 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal7 = getelementptr inbounds %struct.PID, %struct.PID* %23, i32 0, i32 9
  %24 = load %struct.Signal*, %struct.Signal** %signal7, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %24, i32 0, i32 2
  %25 = load i32, i32* %length, align 4
  %26 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output8 = getelementptr inbounds %struct.PID, %struct.PID* %26, i32 0, i32 11
  %27 = load %struct.Signal*, %struct.Signal** %output8, align 8
  %length9 = getelementptr inbounds %struct.Signal, %struct.Signal* %27, i32 0, i32 2
  store i32 %25, i32* %length9, align 4
  %28 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal10 = getelementptr inbounds %struct.PID, %struct.PID* %28, i32 0, i32 9
  %29 = load %struct.Signal*, %struct.Signal** %signal10, align 8
  %dt = getelementptr inbounds %struct.Signal, %struct.Signal* %29, i32 0, i32 1
  %30 = load float, float* %dt, align 8
  %31 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output11 = getelementptr inbounds %struct.PID, %struct.PID* %31, i32 0, i32 11
  %32 = load %struct.Signal*, %struct.Signal** %output11, align 8
  %dt12 = getelementptr inbounds %struct.Signal, %struct.Signal* %32, i32 0, i32 1
  store float %30, float* %dt12, align 8
  %33 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal13 = getelementptr inbounds %struct.PID, %struct.PID* %33, i32 0, i32 9
  %34 = load %struct.Signal*, %struct.Signal** %signal13, align 8
  %length14 = getelementptr inbounds %struct.Signal, %struct.Signal* %34, i32 0, i32 2
  %35 = load i32, i32* %length14, align 4
  %conv15 = sext i32 %35 to i64
  %mul16 = mul i64 %conv15, 4
  %call17 = call noalias i8* @malloc(i64 noundef %mul16) #6
  %36 = bitcast i8* %call17 to float*
  %37 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output18 = getelementptr inbounds %struct.PID, %struct.PID* %37, i32 0, i32 11
  %38 = load %struct.Signal*, %struct.Signal** %output18, align 8
  %signal19 = getelementptr inbounds %struct.Signal, %struct.Signal* %38, i32 0, i32 0
  store float* %36, float** %signal19, align 8
  %39 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %prevError = getelementptr inbounds %struct.PID, %struct.PID* %39, i32 0, i32 5
  store float 0.000000e+00, float* %prevError, align 4
  %40 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError = getelementptr inbounds %struct.PID, %struct.PID* %40, i32 0, i32 7
  store float 0.000000e+00, float* %integralError, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cliSignalSelector(%struct.Signal* noundef %signal) #0 {
entry:
  %signal.addr = alloca %struct.Signal*, align 8
  %userChoice = alloca i32, align 4
  store %struct.Signal* %signal, %struct.Signal** %signal.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %call4 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %userChoice)
  %0 = load i32, i32* %userChoice, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  call void @selectStepSignal(%struct.Signal* noundef %1)
  br label %if.end7

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %userChoice, align 4
  %cmp5 = icmp eq i32 %2, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %3 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  call void @selectCustomASignal(%struct.Signal* noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selectSystem(float (float*)** noundef %func_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %func_ptr.addr = alloca float (float*)**, align 8
  %userChoice = alloca i32, align 4
  store float (float*)** %func_ptr, float (float*)*** %func_ptr.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %call5 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %userChoice)
  %0 = load i32, i32* %userChoice, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float (float*)**, float (float*)*** %func_ptr.addr, align 8
  store float (float*)* @linear, float (float*)** %1, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %userChoice, align 4
  %cmp6 = icmp eq i32 %2, 2
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %3 = load float (float*)**, float (float*)*** %func_ptr.addr, align 8
  store float (float*)* @complexYDddot, float (float*)** %3, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else
  %4 = load i32, i32* %userChoice, align 4
  %cmp9 = icmp eq i32 %4, 3
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %5 = load float (float*)**, float (float*)*** %func_ptr.addr, align 8
  store float (float*)* @complexYDot, float (float*)** %5, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.else11:                                        ; preds = %if.else8
  call void @exit(i32 noundef 0) #7
  unreachable

return:                                           ; preds = %if.then10, %if.then7, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deletePid(%struct.PID* noundef %pid) #0 {
entry:
  %pid.addr = alloca %struct.PID*, align 8
  store %struct.PID* %pid, %struct.PID** %pid.addr, align 8
  %0 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal = getelementptr inbounds %struct.PID, %struct.PID* %0, i32 0, i32 9
  %1 = load %struct.Signal*, %struct.Signal** %signal, align 8
  call void @deleteSignal(%struct.Signal* noundef %1)
  %2 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output = getelementptr inbounds %struct.PID, %struct.PID* %2, i32 0, i32 11
  %3 = load %struct.Signal*, %struct.Signal** %output, align 8
  call void @deleteSignal(%struct.Signal* noundef %3)
  %4 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %dataSystem = getelementptr inbounds %struct.PID, %struct.PID* %4, i32 0, i32 12
  %5 = load float*, float** %dataSystem, align 8
  %6 = bitcast float* %5 to i8*
  call void @free(i8* noundef %6) #6
  %7 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %8 = bitcast %struct.PID* %7 to i8*
  call void @free(i8* noundef %8) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteSignal(%struct.Signal* noundef %signal) #0 {
entry:
  %signal.addr = alloca %struct.Signal*, align 8
  store %struct.Signal* %signal, %struct.Signal** %signal.addr, align 8
  %0 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal1 = getelementptr inbounds %struct.Signal, %struct.Signal* %0, i32 0, i32 0
  %1 = load float*, float** %signal1, align 8
  %2 = bitcast float* %1 to i8*
  call void @free(i8* noundef %2) #6
  %3 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %4 = bitcast %struct.Signal* %3 to i8*
  call void @free(i8* noundef %4) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resetOutputMemoryPid(%struct.PID* noundef %pid) #0 {
entry:
  %pid.addr = alloca %struct.PID*, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store %struct.PID* %pid, %struct.PID** %pid.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal = getelementptr inbounds %struct.PID, %struct.PID* %1, i32 0, i32 9
  %2 = load %struct.Signal*, %struct.Signal** %signal, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %2, i32 0, i32 2
  %3 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output = getelementptr inbounds %struct.PID, %struct.PID* %4, i32 0, i32 11
  %5 = load %struct.Signal*, %struct.Signal** %output, align 8
  %signal1 = getelementptr inbounds %struct.Signal, %struct.Signal* %5, i32 0, i32 0
  %6 = load float*, float** %signal1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %9 = load i32, i32* %i2, align 4
  %10 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %sizeDataSystem = getelementptr inbounds %struct.PID, %struct.PID* %10, i32 0, i32 13
  %11 = load i32, i32* %sizeDataSystem, align 8
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %12 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %dataSystem = getelementptr inbounds %struct.PID, %struct.PID* %12, i32 0, i32 12
  %13 = load float*, float** %dataSystem, align 8
  %14 = load i32, i32* %i2, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %15 = load i32, i32* %i2, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %i2, align 4
  br label %for.cond3, !llvm.loop !20

for.end10:                                        ; preds = %for.cond3
  %16 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal11 = getelementptr inbounds %struct.PID, %struct.PID* %16, i32 0, i32 9
  %17 = load %struct.Signal*, %struct.Signal** %signal11, align 8
  %dt = getelementptr inbounds %struct.Signal, %struct.Signal* %17, i32 0, i32 1
  %18 = load float, float* %dt, align 8
  %19 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %dataSystem12 = getelementptr inbounds %struct.PID, %struct.PID* %19, i32 0, i32 12
  %20 = load float*, float** %dataSystem12, align 8
  %arrayidx13 = getelementptr inbounds float, float* %20, i64 1
  store float %18, float* %arrayidx13, align 4
  %21 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %proportiError = getelementptr inbounds %struct.PID, %struct.PID* %21, i32 0, i32 6
  store float 0.000000e+00, float* %proportiError, align 8
  %22 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError = getelementptr inbounds %struct.PID, %struct.PID* %22, i32 0, i32 7
  store float 0.000000e+00, float* %integralError, align 4
  %23 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %differenError = getelementptr inbounds %struct.PID, %struct.PID* %23, i32 0, i32 8
  store float 0.000000e+00, float* %differenError, align 8
  %24 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %prevError = getelementptr inbounds %struct.PID, %struct.PID* %24, i32 0, i32 5
  store float 0.000000e+00, float* %prevError, align 4
  %25 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %steadyRiseCheck = getelementptr inbounds %struct.PID, %struct.PID* %25, i32 0, i32 19
  store i32 1, i32* %steadyRiseCheck, align 8
  %26 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %maxCounter = getelementptr inbounds %struct.PID, %struct.PID* %26, i32 0, i32 20
  store i32 0, i32* %maxCounter, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeSimulationOfSignal(%struct.PID* noundef %pid, %struct._IO_FILE* noundef %csvFile, i32 noundef %csv) #0 {
entry:
  %pid.addr = alloca %struct.PID*, align 8
  %csvFile.addr = alloca %struct._IO_FILE*, align 8
  %csv.addr = alloca i32, align 4
  %error = alloca float, align 4
  %i = alloca i32, align 4
  %diff = alloca float, align 4
  store %struct.PID* %pid, %struct.PID** %pid.addr, align 8
  store %struct._IO_FILE* %csvFile, %struct._IO_FILE** %csvFile.addr, align 8
  store i32 %csv, i32* %csv.addr, align 4
  %0 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  call void @resetOutputMemoryPid(%struct.PID* noundef %0)
  %1 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %fit = getelementptr inbounds %struct.PID, %struct.PID* %1, i32 0, i32 18
  store float 0.000000e+00, float* %fit, align 4
  %2 = load i32, i32* %csv.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %csvFile.addr, align 8
  %4 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %proportiError = getelementptr inbounds %struct.PID, %struct.PID* %4, i32 0, i32 6
  %5 = load float, float* %proportiError, align 8
  %conv = fpext float %5 to double
  %6 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError = getelementptr inbounds %struct.PID, %struct.PID* %6, i32 0, i32 7
  %7 = load float, float* %integralError, align 4
  %conv1 = fpext float %7 to double
  %8 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %differenError = getelementptr inbounds %struct.PID, %struct.PID* %8, i32 0, i32 8
  %9 = load float, float* %differenError, align 8
  %conv2 = fpext float %9 to double
  %10 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output = getelementptr inbounds %struct.PID, %struct.PID* %10, i32 0, i32 11
  %11 = load %struct.Signal*, %struct.Signal** %output, align 8
  %signal = getelementptr inbounds %struct.Signal, %struct.Signal* %11, i32 0, i32 0
  %12 = load float*, float** %signal, align 8
  %arrayidx = getelementptr inbounds float, float* %12, i64 0
  %13 = load float, float* %arrayidx, align 4
  %conv3 = fpext float %13 to double
  %14 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal4 = getelementptr inbounds %struct.PID, %struct.PID* %14, i32 0, i32 9
  %15 = load %struct.Signal*, %struct.Signal** %signal4, align 8
  %signal5 = getelementptr inbounds %struct.Signal, %struct.Signal* %15, i32 0, i32 0
  %16 = load float*, float** %signal5, align 8
  %arrayidx6 = getelementptr inbounds float, float* %16, i64 0
  %17 = load float, float* %arrayidx6, align 4
  %conv7 = fpext float %17 to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double noundef %conv, double noundef %conv1, double noundef %conv2, double noundef %conv3, double noundef %conv7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal8 = getelementptr inbounds %struct.PID, %struct.PID* %19, i32 0, i32 9
  %20 = load %struct.Signal*, %struct.Signal** %signal8, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %20, i32 0, i32 2
  %21 = load i32, i32* %length, align 4
  %cmp9 = icmp slt i32 %18, %21
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal11 = getelementptr inbounds %struct.PID, %struct.PID* %22, i32 0, i32 9
  %23 = load %struct.Signal*, %struct.Signal** %signal11, align 8
  %signal12 = getelementptr inbounds %struct.Signal, %struct.Signal* %23, i32 0, i32 0
  %24 = load float*, float** %signal12, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds float, float* %24, i64 %idxprom
  %26 = load float, float* %arrayidx13, align 4
  %27 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output14 = getelementptr inbounds %struct.PID, %struct.PID* %27, i32 0, i32 11
  %28 = load %struct.Signal*, %struct.Signal** %output14, align 8
  %signal15 = getelementptr inbounds %struct.Signal, %struct.Signal* %28, i32 0, i32 0
  %29 = load float*, float** %signal15, align 8
  %30 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %30, 1
  %idxprom16 = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds float, float* %29, i64 %idxprom16
  %31 = load float, float* %arrayidx17, align 4
  %sub18 = fsub float %26, %31
  store float %sub18, float* %error, align 4
  %32 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Kp = getelementptr inbounds %struct.PID, %struct.PID* %32, i32 0, i32 0
  %33 = load float, float* %Kp, align 8
  %34 = load float, float* %error, align 4
  %mul = fmul float %33, %34
  %35 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %proportiError19 = getelementptr inbounds %struct.PID, %struct.PID* %35, i32 0, i32 6
  store float %mul, float* %proportiError19, align 8
  %36 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError20 = getelementptr inbounds %struct.PID, %struct.PID* %36, i32 0, i32 7
  %37 = load float, float* %integralError20, align 4
  %38 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Ki = getelementptr inbounds %struct.PID, %struct.PID* %38, i32 0, i32 1
  %39 = load float, float* %Ki, align 4
  %mul21 = fmul float 5.000000e-01, %39
  %40 = load float, float* %error, align 4
  %41 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %prevError = getelementptr inbounds %struct.PID, %struct.PID* %41, i32 0, i32 5
  %42 = load float, float* %prevError, align 4
  %sub22 = fsub float %40, %42
  %mul23 = fmul float %mul21, %sub22
  %43 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal24 = getelementptr inbounds %struct.PID, %struct.PID* %43, i32 0, i32 9
  %44 = load %struct.Signal*, %struct.Signal** %signal24, align 8
  %dt = getelementptr inbounds %struct.Signal, %struct.Signal* %44, i32 0, i32 1
  %45 = load float, float* %dt, align 8
  %46 = call float @llvm.fmuladd.f32(float %mul23, float %45, float %37)
  %47 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError26 = getelementptr inbounds %struct.PID, %struct.PID* %47, i32 0, i32 7
  store float %46, float* %integralError26, align 4
  %48 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Kd = getelementptr inbounds %struct.PID, %struct.PID* %48, i32 0, i32 2
  %49 = load float, float* %Kd, align 8
  %mul27 = fmul float 2.000000e+00, %49
  %50 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output28 = getelementptr inbounds %struct.PID, %struct.PID* %50, i32 0, i32 11
  %51 = load %struct.Signal*, %struct.Signal** %output28, align 8
  %signal29 = getelementptr inbounds %struct.Signal, %struct.Signal* %51, i32 0, i32 0
  %52 = load float*, float** %signal29, align 8
  %53 = load i32, i32* %i, align 4
  %sub30 = sub nsw i32 %53, 1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds float, float* %52, i64 %idxprom31
  %54 = load float, float* %arrayidx32, align 4
  %55 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output33 = getelementptr inbounds %struct.PID, %struct.PID* %55, i32 0, i32 11
  %56 = load %struct.Signal*, %struct.Signal** %output33, align 8
  %signal34 = getelementptr inbounds %struct.Signal, %struct.Signal* %56, i32 0, i32 0
  %57 = load float*, float** %signal34, align 8
  %58 = load i32, i32* %i, align 4
  %sub35 = sub nsw i32 %58, 2
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds float, float* %57, i64 %idxprom36
  %59 = load float, float* %arrayidx37, align 4
  %sub38 = fsub float %54, %59
  %60 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %tauD = getelementptr inbounds %struct.PID, %struct.PID* %60, i32 0, i32 4
  %61 = load float, float* %tauD, align 8
  %62 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal41 = getelementptr inbounds %struct.PID, %struct.PID* %62, i32 0, i32 9
  %63 = load %struct.Signal*, %struct.Signal** %signal41, align 8
  %dt42 = getelementptr inbounds %struct.Signal, %struct.Signal* %63, i32 0, i32 1
  %64 = load float, float* %dt42, align 8
  %neg = fneg float %64
  %65 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %61, float %neg)
  %66 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %differenError43 = getelementptr inbounds %struct.PID, %struct.PID* %66, i32 0, i32 8
  %67 = load float, float* %differenError43, align 8
  %mul44 = fmul float %65, %67
  %68 = call float @llvm.fmuladd.f32(float %mul27, float %sub38, float %mul44)
  %fneg = fneg float %68
  %69 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %tauD45 = getelementptr inbounds %struct.PID, %struct.PID* %69, i32 0, i32 4
  %70 = load float, float* %tauD45, align 8
  %71 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal47 = getelementptr inbounds %struct.PID, %struct.PID* %71, i32 0, i32 9
  %72 = load %struct.Signal*, %struct.Signal** %signal47, align 8
  %dt48 = getelementptr inbounds %struct.Signal, %struct.Signal* %72, i32 0, i32 1
  %73 = load float, float* %dt48, align 8
  %74 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %70, float %73)
  %div = fdiv float %fneg, %74
  %75 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %differenError49 = getelementptr inbounds %struct.PID, %struct.PID* %75, i32 0, i32 8
  store float %div, float* %differenError49, align 8
  %76 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError50 = getelementptr inbounds %struct.PID, %struct.PID* %76, i32 0, i32 7
  %77 = load float, float* %integralError50, align 4
  %78 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %limMaxInt = getelementptr inbounds %struct.PID, %struct.PID* %78, i32 0, i32 14
  %79 = load float, float* %limMaxInt, align 4
  %cmp51 = fcmp ogt float %77, %79
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %for.body
  %80 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %limMaxInt54 = getelementptr inbounds %struct.PID, %struct.PID* %80, i32 0, i32 14
  %81 = load float, float* %limMaxInt54, align 4
  %82 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError55 = getelementptr inbounds %struct.PID, %struct.PID* %82, i32 0, i32 7
  store float %81, float* %integralError55, align 4
  br label %if.end63

if.else:                                          ; preds = %for.body
  %83 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError56 = getelementptr inbounds %struct.PID, %struct.PID* %83, i32 0, i32 7
  %84 = load float, float* %integralError56, align 4
  %85 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %limMinInt = getelementptr inbounds %struct.PID, %struct.PID* %85, i32 0, i32 15
  %86 = load float, float* %limMinInt, align 8
  %cmp57 = fcmp olt float %84, %86
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.else
  %87 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %limMinInt60 = getelementptr inbounds %struct.PID, %struct.PID* %87, i32 0, i32 15
  %88 = load float, float* %limMinInt60, align 8
  %89 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError61 = getelementptr inbounds %struct.PID, %struct.PID* %89, i32 0, i32 7
  store float %88, float* %integralError61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.else
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then53
  %90 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %proportiError64 = getelementptr inbounds %struct.PID, %struct.PID* %90, i32 0, i32 6
  %91 = load float, float* %proportiError64, align 8
  %92 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError65 = getelementptr inbounds %struct.PID, %struct.PID* %92, i32 0, i32 7
  %93 = load float, float* %integralError65, align 4
  %add = fadd float %91, %93
  %94 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %differenError66 = getelementptr inbounds %struct.PID, %struct.PID* %94, i32 0, i32 8
  %95 = load float, float* %differenError66, align 8
  %add67 = fadd float %add, %95
  %96 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %dataSystem = getelementptr inbounds %struct.PID, %struct.PID* %96, i32 0, i32 12
  %97 = load float*, float** %dataSystem, align 8
  %arrayidx68 = getelementptr inbounds float, float* %97, i64 0
  store float %add67, float* %arrayidx68, align 4
  %98 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %func_system = getelementptr inbounds %struct.PID, %struct.PID* %98, i32 0, i32 10
  %99 = load float (float*)*, float (float*)** %func_system, align 8
  %100 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %dataSystem69 = getelementptr inbounds %struct.PID, %struct.PID* %100, i32 0, i32 12
  %101 = load float*, float** %dataSystem69, align 8
  %call70 = call float %99(float* noundef %101)
  %102 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output71 = getelementptr inbounds %struct.PID, %struct.PID* %102, i32 0, i32 11
  %103 = load %struct.Signal*, %struct.Signal** %output71, align 8
  %signal72 = getelementptr inbounds %struct.Signal, %struct.Signal* %103, i32 0, i32 0
  %104 = load float*, float** %signal72, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %105 to i64
  %arrayidx74 = getelementptr inbounds float, float* %104, i64 %idxprom73
  store float %call70, float* %arrayidx74, align 4
  %106 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output75 = getelementptr inbounds %struct.PID, %struct.PID* %106, i32 0, i32 11
  %107 = load %struct.Signal*, %struct.Signal** %output75, align 8
  %signal76 = getelementptr inbounds %struct.Signal, %struct.Signal* %107, i32 0, i32 0
  %108 = load float*, float** %signal76, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %109 to i64
  %arrayidx78 = getelementptr inbounds float, float* %108, i64 %idxprom77
  %110 = load float, float* %arrayidx78, align 4
  %111 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %limMax = getelementptr inbounds %struct.PID, %struct.PID* %111, i32 0, i32 16
  %112 = load float, float* %limMax, align 4
  %cmp79 = fcmp ogt float %110, %112
  br i1 %cmp79, label %if.then81, label %if.else87

if.then81:                                        ; preds = %if.end63
  %113 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %limMax82 = getelementptr inbounds %struct.PID, %struct.PID* %113, i32 0, i32 16
  %114 = load float, float* %limMax82, align 4
  %115 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output83 = getelementptr inbounds %struct.PID, %struct.PID* %115, i32 0, i32 11
  %116 = load %struct.Signal*, %struct.Signal** %output83, align 8
  %signal84 = getelementptr inbounds %struct.Signal, %struct.Signal* %116, i32 0, i32 0
  %117 = load float*, float** %signal84, align 8
  %118 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %118 to i64
  %arrayidx86 = getelementptr inbounds float, float* %117, i64 %idxprom85
  store float %114, float* %arrayidx86, align 4
  %119 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %maxCounter = getelementptr inbounds %struct.PID, %struct.PID* %119, i32 0, i32 20
  %120 = load i32, i32* %maxCounter, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %maxCounter, align 4
  br label %if.end103

if.else87:                                        ; preds = %if.end63
  %121 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output88 = getelementptr inbounds %struct.PID, %struct.PID* %121, i32 0, i32 11
  %122 = load %struct.Signal*, %struct.Signal** %output88, align 8
  %signal89 = getelementptr inbounds %struct.Signal, %struct.Signal* %122, i32 0, i32 0
  %123 = load float*, float** %signal89, align 8
  %124 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %124 to i64
  %arrayidx91 = getelementptr inbounds float, float* %123, i64 %idxprom90
  %125 = load float, float* %arrayidx91, align 4
  %126 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %limMin = getelementptr inbounds %struct.PID, %struct.PID* %126, i32 0, i32 17
  %127 = load float, float* %limMin, align 8
  %cmp92 = fcmp olt float %125, %127
  br i1 %cmp92, label %if.then94, label %if.end102

if.then94:                                        ; preds = %if.else87
  %128 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %limMin95 = getelementptr inbounds %struct.PID, %struct.PID* %128, i32 0, i32 17
  %129 = load float, float* %limMin95, align 8
  %130 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output96 = getelementptr inbounds %struct.PID, %struct.PID* %130, i32 0, i32 11
  %131 = load %struct.Signal*, %struct.Signal** %output96, align 8
  %signal97 = getelementptr inbounds %struct.Signal, %struct.Signal* %131, i32 0, i32 0
  %132 = load float*, float** %signal97, align 8
  %133 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %133 to i64
  %arrayidx99 = getelementptr inbounds float, float* %132, i64 %idxprom98
  store float %129, float* %arrayidx99, align 4
  %134 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %maxCounter100 = getelementptr inbounds %struct.PID, %struct.PID* %134, i32 0, i32 20
  %135 = load i32, i32* %maxCounter100, align 4
  %inc101 = add nsw i32 %135, 1
  store i32 %inc101, i32* %maxCounter100, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then94, %if.else87
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then81
  %136 = load i32, i32* %csv.addr, align 4
  %cmp104 = icmp eq i32 %136, 1
  br i1 %cmp104, label %if.then106, label %if.end124

if.then106:                                       ; preds = %if.end103
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %csvFile.addr, align 8
  %138 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %proportiError107 = getelementptr inbounds %struct.PID, %struct.PID* %138, i32 0, i32 6
  %139 = load float, float* %proportiError107, align 8
  %conv108 = fpext float %139 to double
  %140 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %integralError109 = getelementptr inbounds %struct.PID, %struct.PID* %140, i32 0, i32 7
  %141 = load float, float* %integralError109, align 4
  %conv110 = fpext float %141 to double
  %142 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %differenError111 = getelementptr inbounds %struct.PID, %struct.PID* %142, i32 0, i32 8
  %143 = load float, float* %differenError111, align 8
  %conv112 = fpext float %143 to double
  %144 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output113 = getelementptr inbounds %struct.PID, %struct.PID* %144, i32 0, i32 11
  %145 = load %struct.Signal*, %struct.Signal** %output113, align 8
  %signal114 = getelementptr inbounds %struct.Signal, %struct.Signal* %145, i32 0, i32 0
  %146 = load float*, float** %signal114, align 8
  %147 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %147 to i64
  %arrayidx116 = getelementptr inbounds float, float* %146, i64 %idxprom115
  %148 = load float, float* %arrayidx116, align 4
  %conv117 = fpext float %148 to double
  %149 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal118 = getelementptr inbounds %struct.PID, %struct.PID* %149, i32 0, i32 9
  %150 = load %struct.Signal*, %struct.Signal** %signal118, align 8
  %signal119 = getelementptr inbounds %struct.Signal, %struct.Signal* %150, i32 0, i32 0
  %151 = load float*, float** %signal119, align 8
  %152 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %152 to i64
  %arrayidx121 = getelementptr inbounds float, float* %151, i64 %idxprom120
  %153 = load float, float* %arrayidx121, align 4
  %conv122 = fpext float %153 to double
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %137, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double noundef %conv108, double noundef %conv110, double noundef %conv112, double noundef %conv117, double noundef %conv122)
  br label %if.end124

if.end124:                                        ; preds = %if.then106, %if.end103
  %154 = load float, float* %error, align 4
  %155 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %prevError125 = getelementptr inbounds %struct.PID, %struct.PID* %155, i32 0, i32 5
  store float %154, float* %prevError125, align 4
  %156 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal126 = getelementptr inbounds %struct.PID, %struct.PID* %156, i32 0, i32 9
  %157 = load %struct.Signal*, %struct.Signal** %signal126, align 8
  %signal127 = getelementptr inbounds %struct.Signal, %struct.Signal* %157, i32 0, i32 0
  %158 = load float*, float** %signal127, align 8
  %159 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %159 to i64
  %arrayidx129 = getelementptr inbounds float, float* %158, i64 %idxprom128
  %160 = load float, float* %arrayidx129, align 4
  %161 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output130 = getelementptr inbounds %struct.PID, %struct.PID* %161, i32 0, i32 11
  %162 = load %struct.Signal*, %struct.Signal** %output130, align 8
  %signal131 = getelementptr inbounds %struct.Signal, %struct.Signal* %162, i32 0, i32 0
  %163 = load float*, float** %signal131, align 8
  %164 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %164 to i64
  %arrayidx133 = getelementptr inbounds float, float* %163, i64 %idxprom132
  %165 = load float, float* %arrayidx133, align 4
  %sub134 = fsub float %160, %165
  store float %sub134, float* %diff, align 4
  %166 = load float, float* %diff, align 4
  %cmp135 = fcmp ogt float %166, 0.000000e+00
  br i1 %cmp135, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end124
  %167 = load float, float* %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end124
  %168 = load float, float* %diff, align 4
  %mul137 = fmul float %168, -1.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %167, %cond.true ], [ %mul137, %cond.false ]
  %169 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %fit138 = getelementptr inbounds %struct.PID, %struct.PID* %169, i32 0, i32 18
  %170 = load float, float* %fit138, align 4
  %add139 = fadd float %170, %cond
  store float %add139, float* %fit138, align 4
  %171 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output140 = getelementptr inbounds %struct.PID, %struct.PID* %171, i32 0, i32 11
  %172 = load %struct.Signal*, %struct.Signal** %output140, align 8
  %signal141 = getelementptr inbounds %struct.Signal, %struct.Signal* %172, i32 0, i32 0
  %173 = load float*, float** %signal141, align 8
  %174 = load i32, i32* %i, align 4
  %sub142 = sub nsw i32 %174, 1
  %idxprom143 = sext i32 %sub142 to i64
  %arrayidx144 = getelementptr inbounds float, float* %173, i64 %idxprom143
  %175 = load float, float* %arrayidx144, align 4
  %176 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %output145 = getelementptr inbounds %struct.PID, %struct.PID* %176, i32 0, i32 11
  %177 = load %struct.Signal*, %struct.Signal** %output145, align 8
  %signal146 = getelementptr inbounds %struct.Signal, %struct.Signal* %177, i32 0, i32 0
  %178 = load float*, float** %signal146, align 8
  %179 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %179 to i64
  %arrayidx148 = getelementptr inbounds float, float* %178, i64 %idxprom147
  %180 = load float, float* %arrayidx148, align 4
  %cmp149 = fcmp ogt float %175, %180
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %cond.end
  %181 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %steadyRiseCheck = getelementptr inbounds %struct.PID, %struct.PID* %181, i32 0, i32 19
  store i32 0, i32* %steadyRiseCheck, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end152
  %182 = load i32, i32* %i, align 4
  %inc153 = add nsw i32 %182, 1
  store i32 %inc153, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %183 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %steadyRiseCheck154 = getelementptr inbounds %struct.PID, %struct.PID* %183, i32 0, i32 19
  %184 = load i32, i32* %steadyRiseCheck154, align 8
  %cmp155 = icmp eq i32 %184, 1
  br i1 %cmp155, label %if.then157, label %if.else159

if.then157:                                       ; preds = %for.end
  %185 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %fit158 = getelementptr inbounds %struct.PID, %struct.PID* %185, i32 0, i32 18
  store float 0x47EFFFFFE0000000, float* %fit158, align 4
  br label %if.end170

if.else159:                                       ; preds = %for.end
  %186 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %maxCounter160 = getelementptr inbounds %struct.PID, %struct.PID* %186, i32 0, i32 20
  %187 = load i32, i32* %maxCounter160, align 4
  %188 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %signal161 = getelementptr inbounds %struct.PID, %struct.PID* %188, i32 0, i32 9
  %189 = load %struct.Signal*, %struct.Signal** %signal161, align 8
  %length162 = getelementptr inbounds %struct.Signal, %struct.Signal* %189, i32 0, i32 2
  %190 = load i32, i32* %length162, align 4
  %mul163 = mul nsw i32 %190, 1
  %div164 = sdiv i32 %mul163, 100
  %cmp165 = icmp sgt i32 %187, %div164
  br i1 %cmp165, label %if.then167, label %if.end169

if.then167:                                       ; preds = %if.else159
  %191 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %fit168 = getelementptr inbounds %struct.PID, %struct.PID* %191, i32 0, i32 18
  store float 0x47EFFFFFE0000000, float* %fit168, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.else159
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then157
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selectStepSignal(%struct.Signal* noundef %signal) #0 {
entry:
  %signal.addr = alloca %struct.Signal*, align 8
  %globalIndex = alloca i32, align 4
  %i = alloca float, align 4
  %i7 = alloca float, align 4
  store %struct.Signal* %signal, %struct.Signal** %signal.addr, align 8
  %0 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %0, i32 0, i32 2
  store i32 1000, i32* %length, align 4
  %1 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt = getelementptr inbounds %struct.Signal, %struct.Signal* %1, i32 0, i32 1
  store float 0x3F847AE140000000, float* %dt, align 8
  %2 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %length1 = getelementptr inbounds %struct.Signal, %struct.Signal* %2, i32 0, i32 2
  %3 = load i32, i32* %length1, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %4 = bitcast i8* %call to float*
  %5 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal2 = getelementptr inbounds %struct.Signal, %struct.Signal* %5, i32 0, i32 0
  store float* %4, float** %signal2, align 8
  store i32 0, i32* %globalIndex, align 4
  store float 0.000000e+00, float* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load float, float* %i, align 4
  %conv3 = fpext float %6 to double
  %cmp = fcmp olt double %conv3, 3.000000e-01
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal5 = getelementptr inbounds %struct.Signal, %struct.Signal* %7, i32 0, i32 0
  %8 = load float*, float** %signal5, align 8
  %9 = load i32, i32* %globalIndex, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %10 = load i32, i32* %globalIndex, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %globalIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt6 = getelementptr inbounds %struct.Signal, %struct.Signal* %11, i32 0, i32 1
  %12 = load float, float* %dt6, align 8
  %13 = load float, float* %i, align 4
  %add = fadd float %13, %12
  store float %add, float* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %14 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt8 = getelementptr inbounds %struct.Signal, %struct.Signal* %14, i32 0, i32 1
  %15 = load float, float* %dt8, align 8
  %conv9 = fpext float %15 to double
  %add10 = fadd double 3.000000e-01, %conv9
  %conv11 = fptrunc double %add10 to float
  store float %conv11, float* %i7, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc21, %for.end
  %16 = load float, float* %i7, align 4
  %conv13 = fpext float %16 to double
  %cmp14 = fcmp olt double %conv13, 1.000000e+01
  br i1 %cmp14, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond12
  %17 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal17 = getelementptr inbounds %struct.Signal, %struct.Signal* %17, i32 0, i32 0
  %18 = load float*, float** %signal17, align 8
  %19 = load i32, i32* %globalIndex, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds float, float* %18, i64 %idxprom18
  store float 1.000000e+00, float* %arrayidx19, align 4
  %20 = load i32, i32* %globalIndex, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, i32* %globalIndex, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %21 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt22 = getelementptr inbounds %struct.Signal, %struct.Signal* %21, i32 0, i32 1
  %22 = load float, float* %dt22, align 8
  %23 = load float, float* %i7, align 4
  %add23 = fadd float %23, %22
  store float %add23, float* %i7, align 4
  br label %for.cond12, !llvm.loop !23

for.end24:                                        ; preds = %for.cond12
  %24 = load i32, i32* %globalIndex, align 4
  %25 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %length25 = getelementptr inbounds %struct.Signal, %struct.Signal* %25, i32 0, i32 2
  store i32 %24, i32* %length25, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selectCustomASignal(%struct.Signal* noundef %signal) #0 {
entry:
  %signal.addr = alloca %struct.Signal*, align 8
  %globalIndex = alloca i32, align 4
  %i = alloca float, align 4
  %i7 = alloca float, align 4
  %i21 = alloca float, align 4
  %i35 = alloca float, align 4
  %i49 = alloca float, align 4
  %i63 = alloca float, align 4
  store %struct.Signal* %signal, %struct.Signal** %signal.addr, align 8
  %0 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %0, i32 0, i32 2
  store i32 1002, i32* %length, align 4
  %1 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt = getelementptr inbounds %struct.Signal, %struct.Signal* %1, i32 0, i32 1
  store float 0x3F847AE140000000, float* %dt, align 8
  %2 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %length1 = getelementptr inbounds %struct.Signal, %struct.Signal* %2, i32 0, i32 2
  %3 = load i32, i32* %length1, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %4 = bitcast i8* %call to float*
  %5 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal2 = getelementptr inbounds %struct.Signal, %struct.Signal* %5, i32 0, i32 0
  store float* %4, float** %signal2, align 8
  store i32 0, i32* %globalIndex, align 4
  store float 0.000000e+00, float* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load float, float* %i, align 4
  %conv3 = fpext float %6 to double
  %cmp = fcmp olt double %conv3, 1.000000e+00
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal5 = getelementptr inbounds %struct.Signal, %struct.Signal* %7, i32 0, i32 0
  %8 = load float*, float** %signal5, align 8
  %9 = load i32, i32* %globalIndex, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %10 = load i32, i32* %globalIndex, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %globalIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt6 = getelementptr inbounds %struct.Signal, %struct.Signal* %11, i32 0, i32 1
  %12 = load float, float* %dt6, align 8
  %13 = load float, float* %i, align 4
  %add = fadd float %13, %12
  store float %add, float* %i, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  store float 1.000000e+00, float* %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc17, %for.end
  %14 = load float, float* %i7, align 4
  %conv9 = fpext float %14 to double
  %cmp10 = fcmp olt double %conv9, 3.000000e+00
  br i1 %cmp10, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond8
  %15 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal13 = getelementptr inbounds %struct.Signal, %struct.Signal* %15, i32 0, i32 0
  %16 = load float*, float** %signal13, align 8
  %17 = load i32, i32* %globalIndex, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds float, float* %16, i64 %idxprom14
  store float 3.000000e+01, float* %arrayidx15, align 4
  %18 = load i32, i32* %globalIndex, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* %globalIndex, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body12
  %19 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt18 = getelementptr inbounds %struct.Signal, %struct.Signal* %19, i32 0, i32 1
  %20 = load float, float* %dt18, align 8
  %21 = load float, float* %i7, align 4
  %add19 = fadd float %21, %20
  store float %add19, float* %i7, align 4
  br label %for.cond8, !llvm.loop !25

for.end20:                                        ; preds = %for.cond8
  store float 3.000000e+00, float* %i21, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc31, %for.end20
  %22 = load float, float* %i21, align 4
  %conv23 = fpext float %22 to double
  %cmp24 = fcmp olt double %conv23, 5.000000e+00
  br i1 %cmp24, label %for.body26, label %for.end34

for.body26:                                       ; preds = %for.cond22
  %23 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal27 = getelementptr inbounds %struct.Signal, %struct.Signal* %23, i32 0, i32 0
  %24 = load float*, float** %signal27, align 8
  %25 = load i32, i32* %globalIndex, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds float, float* %24, i64 %idxprom28
  store float 1.500000e+01, float* %arrayidx29, align 4
  %26 = load i32, i32* %globalIndex, align 4
  %inc30 = add nsw i32 %26, 1
  store i32 %inc30, i32* %globalIndex, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body26
  %27 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt32 = getelementptr inbounds %struct.Signal, %struct.Signal* %27, i32 0, i32 1
  %28 = load float, float* %dt32, align 8
  %29 = load float, float* %i21, align 4
  %add33 = fadd float %29, %28
  store float %add33, float* %i21, align 4
  br label %for.cond22, !llvm.loop !26

for.end34:                                        ; preds = %for.cond22
  store float 5.000000e+00, float* %i35, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc45, %for.end34
  %30 = load float, float* %i35, align 4
  %conv37 = fpext float %30 to double
  %cmp38 = fcmp olt double %conv37, 8.000000e+00
  br i1 %cmp38, label %for.body40, label %for.end48

for.body40:                                       ; preds = %for.cond36
  %31 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal41 = getelementptr inbounds %struct.Signal, %struct.Signal* %31, i32 0, i32 0
  %32 = load float*, float** %signal41, align 8
  %33 = load i32, i32* %globalIndex, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds float, float* %32, i64 %idxprom42
  store float 5.000000e+00, float* %arrayidx43, align 4
  %34 = load i32, i32* %globalIndex, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %globalIndex, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %for.body40
  %35 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt46 = getelementptr inbounds %struct.Signal, %struct.Signal* %35, i32 0, i32 1
  %36 = load float, float* %dt46, align 8
  %37 = load float, float* %i35, align 4
  %add47 = fadd float %37, %36
  store float %add47, float* %i35, align 4
  br label %for.cond36, !llvm.loop !27

for.end48:                                        ; preds = %for.cond36
  store float 8.000000e+00, float* %i49, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc59, %for.end48
  %38 = load float, float* %i49, align 4
  %conv51 = fpext float %38 to double
  %cmp52 = fcmp olt double %conv51, 9.000000e+00
  br i1 %cmp52, label %for.body54, label %for.end62

for.body54:                                       ; preds = %for.cond50
  %39 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal55 = getelementptr inbounds %struct.Signal, %struct.Signal* %39, i32 0, i32 0
  %40 = load float*, float** %signal55, align 8
  %41 = load i32, i32* %globalIndex, align 4
  %idxprom56 = sext i32 %41 to i64
  %arrayidx57 = getelementptr inbounds float, float* %40, i64 %idxprom56
  store float 2.500000e+01, float* %arrayidx57, align 4
  %42 = load i32, i32* %globalIndex, align 4
  %inc58 = add nsw i32 %42, 1
  store i32 %inc58, i32* %globalIndex, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %for.body54
  %43 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt60 = getelementptr inbounds %struct.Signal, %struct.Signal* %43, i32 0, i32 1
  %44 = load float, float* %dt60, align 8
  %45 = load float, float* %i49, align 4
  %add61 = fadd float %45, %44
  store float %add61, float* %i49, align 4
  br label %for.cond50, !llvm.loop !28

for.end62:                                        ; preds = %for.cond50
  store float 9.000000e+00, float* %i63, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc73, %for.end62
  %46 = load float, float* %i63, align 4
  %conv65 = fpext float %46 to double
  %cmp66 = fcmp olt double %conv65, 1.000000e+01
  br i1 %cmp66, label %for.body68, label %for.end76

for.body68:                                       ; preds = %for.cond64
  %47 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal69 = getelementptr inbounds %struct.Signal, %struct.Signal* %47, i32 0, i32 0
  %48 = load float*, float** %signal69, align 8
  %49 = load i32, i32* %globalIndex, align 4
  %idxprom70 = sext i32 %49 to i64
  %arrayidx71 = getelementptr inbounds float, float* %48, i64 %idxprom70
  store float 0.000000e+00, float* %arrayidx71, align 4
  %50 = load i32, i32* %globalIndex, align 4
  %inc72 = add nsw i32 %50, 1
  store i32 %inc72, i32* %globalIndex, align 4
  br label %for.inc73

for.inc73:                                        ; preds = %for.body68
  %51 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %dt74 = getelementptr inbounds %struct.Signal, %struct.Signal* %51, i32 0, i32 1
  %52 = load float, float* %dt74, align 8
  %53 = load float, float* %i63, align 4
  %add75 = fadd float %53, %52
  store float %add75, float* %i63, align 4
  br label %for.cond64, !llvm.loop !29

for.end76:                                        ; preds = %for.cond64
  %54 = load i32, i32* %globalIndex, align 4
  %55 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %length77 = getelementptr inbounds %struct.Signal, %struct.Signal* %55, i32 0, i32 2
  store i32 %54, i32* %length77, align 4
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quickSort(float* noundef %fit, i32* noundef %input, i32 noundef %length) #0 {
entry:
  %fit.addr = alloca float*, align 8
  %input.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %indexMore = alloca i32, align 4
  %indexLess = alloca i32, align 4
  %arrayMore = alloca i32*, align 8
  %arrayLess = alloca i32*, align 8
  %i = alloca i32, align 4
  %midle = alloca i32, align 4
  %indexGlobal = alloca i32, align 4
  %i55 = alloca i32, align 4
  %i71 = alloca i32, align 4
  store float* %fit, float** %fit.addr, align 8
  store i32* %input, i32** %input.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %index, align 4
  store i32 0, i32* %indexMore, align 4
  store i32 0, i32* %indexLess, align 4
  %1 = load i32, i32* %length.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %arrayMore, align 8
  %3 = load i32, i32* %length.addr, align 4
  %conv1 = sext i32 %3 to i64
  %mul2 = mul i64 %conv1, 4
  %call3 = call noalias i8* @malloc(i64 noundef %mul2) #6
  %4 = bitcast i8* %call3 to i32*
  store i32* %4, i32** %arrayLess, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %index, align 4
  %cmp5 = icmp ne i32 %7, %8
  br i1 %cmp5, label %if.then, label %if.end37

if.then:                                          ; preds = %for.body
  %9 = load float*, float** %fit.addr, align 8
  %10 = load i32*, i32** %input.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds float, float* %9, i64 %idxprom7
  %13 = load float, float* %arrayidx8, align 4
  %14 = load float*, float** %fit.addr, align 8
  %15 = load i32*, i32** %input.addr, align 8
  %16 = load i32, i32* %index, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds float, float* %14, i64 %idxprom11
  %18 = load float, float* %arrayidx12, align 4
  %cmp13 = fcmp oge float %13, %18
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then
  %19 = load i32*, i32** %input.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %19, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  %22 = load i32*, i32** %arrayMore, align 8
  %23 = load i32, i32* %indexMore, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  store i32 %21, i32* %arrayidx19, align 4
  %24 = load i32, i32* %indexMore, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %indexMore, align 4
  br label %if.end36

if.else:                                          ; preds = %if.then
  %25 = load float*, float** %fit.addr, align 8
  %26 = load i32*, i32** %input.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %26, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds float, float* %25, i64 %idxprom22
  %29 = load float, float* %arrayidx23, align 4
  %30 = load float*, float** %fit.addr, align 8
  %31 = load i32*, i32** %input.addr, align 8
  %32 = load i32, i32* %index, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %31, i64 %idxprom24
  %33 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %33 to i64
  %arrayidx27 = getelementptr inbounds float, float* %30, i64 %idxprom26
  %34 = load float, float* %arrayidx27, align 4
  %cmp28 = fcmp olt float %29, %34
  br i1 %cmp28, label %if.then30, label %if.end

if.then30:                                        ; preds = %if.else
  %35 = load i32*, i32** %input.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %35, i64 %idxprom31
  %37 = load i32, i32* %arrayidx32, align 4
  %38 = load i32*, i32** %arrayLess, align 8
  %39 = load i32, i32* %indexLess, align 4
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %38, i64 %idxprom33
  store i32 %37, i32* %arrayidx34, align 4
  %40 = load i32, i32* %indexLess, align 4
  %inc35 = add nsw i32 %40, 1
  store i32 %inc35, i32* %indexLess, align 4
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then15
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %41 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %41, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %42 = load i32*, i32** %arrayMore, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = load i32, i32* %indexMore, align 4
  %conv39 = sext i32 %44 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call i8* @realloc(i8* noundef %43, i64 noundef %mul40) #6
  %45 = bitcast i8* %call41 to i32*
  store i32* %45, i32** %arrayMore, align 8
  %46 = load i32*, i32** %arrayLess, align 8
  %47 = bitcast i32* %46 to i8*
  %48 = load i32, i32* %indexLess, align 4
  %conv42 = sext i32 %48 to i64
  %mul43 = mul i64 %conv42, 4
  %call44 = call i8* @realloc(i8* noundef %47, i64 noundef %mul43) #6
  %49 = bitcast i8* %call44 to i32*
  store i32* %49, i32** %arrayLess, align 8
  %50 = load i32, i32* %indexMore, align 4
  %cmp45 = icmp sgt i32 %50, 1
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.end
  %51 = load float*, float** %fit.addr, align 8
  %52 = load i32*, i32** %arrayMore, align 8
  %53 = load i32, i32* %indexMore, align 4
  call void @quickSort(float* noundef %51, i32* noundef %52, i32 noundef %53)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %for.end
  %54 = load i32, i32* %indexLess, align 4
  %cmp49 = icmp sgt i32 %54, 1
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  %55 = load float*, float** %fit.addr, align 8
  %56 = load i32*, i32** %arrayLess, align 8
  %57 = load i32, i32* %indexLess, align 4
  call void @quickSort(float* noundef %55, i32* noundef %56, i32 noundef %57)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48
  %58 = load i32*, i32** %input.addr, align 8
  %59 = load i32, i32* %index, align 4
  %idxprom53 = sext i32 %59 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %58, i64 %idxprom53
  %60 = load i32, i32* %arrayidx54, align 4
  store i32 %60, i32* %midle, align 4
  store i32 0, i32* %indexGlobal, align 4
  store i32 0, i32* %i55, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc65, %if.end52
  %61 = load i32, i32* %i55, align 4
  %62 = load i32, i32* %indexLess, align 4
  %cmp57 = icmp slt i32 %61, %62
  br i1 %cmp57, label %for.body59, label %for.end67

for.body59:                                       ; preds = %for.cond56
  %63 = load i32*, i32** %arrayLess, align 8
  %64 = load i32, i32* %i55, align 4
  %idxprom60 = sext i32 %64 to i64
  %arrayidx61 = getelementptr inbounds i32, i32* %63, i64 %idxprom60
  %65 = load i32, i32* %arrayidx61, align 4
  %66 = load i32*, i32** %input.addr, align 8
  %67 = load i32, i32* %indexGlobal, align 4
  %idxprom62 = sext i32 %67 to i64
  %arrayidx63 = getelementptr inbounds i32, i32* %66, i64 %idxprom62
  store i32 %65, i32* %arrayidx63, align 4
  %68 = load i32, i32* %indexGlobal, align 4
  %inc64 = add nsw i32 %68, 1
  store i32 %inc64, i32* %indexGlobal, align 4
  br label %for.inc65

for.inc65:                                        ; preds = %for.body59
  %69 = load i32, i32* %i55, align 4
  %inc66 = add nsw i32 %69, 1
  store i32 %inc66, i32* %i55, align 4
  br label %for.cond56, !llvm.loop !31

for.end67:                                        ; preds = %for.cond56
  %70 = load i32, i32* %midle, align 4
  %71 = load i32*, i32** %input.addr, align 8
  %72 = load i32, i32* %indexGlobal, align 4
  %idxprom68 = sext i32 %72 to i64
  %arrayidx69 = getelementptr inbounds i32, i32* %71, i64 %idxprom68
  store i32 %70, i32* %arrayidx69, align 4
  %73 = load i32, i32* %indexGlobal, align 4
  %inc70 = add nsw i32 %73, 1
  store i32 %inc70, i32* %indexGlobal, align 4
  store i32 0, i32* %i71, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc81, %for.end67
  %74 = load i32, i32* %i71, align 4
  %75 = load i32, i32* %indexMore, align 4
  %cmp73 = icmp slt i32 %74, %75
  br i1 %cmp73, label %for.body75, label %for.end83

for.body75:                                       ; preds = %for.cond72
  %76 = load i32*, i32** %arrayMore, align 8
  %77 = load i32, i32* %i71, align 4
  %idxprom76 = sext i32 %77 to i64
  %arrayidx77 = getelementptr inbounds i32, i32* %76, i64 %idxprom76
  %78 = load i32, i32* %arrayidx77, align 4
  %79 = load i32*, i32** %input.addr, align 8
  %80 = load i32, i32* %indexGlobal, align 4
  %idxprom78 = sext i32 %80 to i64
  %arrayidx79 = getelementptr inbounds i32, i32* %79, i64 %idxprom78
  store i32 %78, i32* %arrayidx79, align 4
  %81 = load i32, i32* %indexGlobal, align 4
  %inc80 = add nsw i32 %81, 1
  store i32 %inc80, i32* %indexGlobal, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.body75
  %82 = load i32, i32* %i71, align 4
  %inc82 = add nsw i32 %82, 1
  store i32 %inc82, i32* %i71, align 4
  br label %for.cond72, !llvm.loop !32

for.end83:                                        ; preds = %for.cond72
  %83 = load i32*, i32** %arrayLess, align 8
  %84 = bitcast i32* %83 to i8*
  call void @free(i8* noundef %84) #6
  %85 = load i32*, i32** %arrayMore, align 8
  %86 = bitcast i32* %85 to i8*
  call void @free(i8* noundef %86) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @linear(float* noundef %data) #0 {
entry:
  %data.addr = alloca float*, align 8
  store float* %data, float** %data.addr, align 8
  %0 = load float*, float** %data.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  %1 = load float, float* %arrayidx, align 4
  ret float %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @complexYDot(float* noundef %data) #0 {
entry:
  %data.addr = alloca float*, align 8
  store float* %data, float** %data.addr, align 8
  %0 = load float*, float** %data.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 2
  %1 = load float, float* %arrayidx, align 4
  %2 = load float*, float** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx1, align 4
  %4 = load float*, float** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %4, i64 1
  %5 = load float, float* %arrayidx2, align 4
  %6 = call float @llvm.fmuladd.f32(float %3, float %5, float %1)
  %7 = load float*, float** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %7, i64 2
  store float %6, float* %arrayidx3, align 4
  %8 = load float*, float** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 2
  %9 = load float, float* %arrayidx4, align 4
  ret float %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @complexYDddot(float* noundef %data) #0 {
entry:
  %data.addr = alloca float*, align 8
  store float* %data, float** %data.addr, align 8
  %0 = load float*, float** %data.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  %1 = load float, float* %arrayidx, align 4
  %2 = load float*, float** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %2, i64 2
  %3 = load float, float* %arrayidx1, align 4
  %4 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %3, float %1)
  %5 = load float*, float** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %5, i64 3
  %6 = load float, float* %arrayidx2, align 4
  %7 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %6, float %4)
  %8 = load float*, float** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %8, i64 4
  %9 = load float, float* %arrayidx3, align 4
  %10 = call float @llvm.fmuladd.f32(float -4.000000e+00, float %9, float %7)
  %11 = load float*, float** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %11, i64 5
  store float %10, float* %arrayidx4, align 4
  %12 = load float*, float** %data.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %12, i64 2
  %13 = load float, float* %arrayidx5, align 4
  %14 = load float*, float** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %14, i64 5
  %15 = load float, float* %arrayidx6, align 4
  %16 = load float*, float** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %16, i64 1
  %17 = load float, float* %arrayidx7, align 4
  %18 = call float @llvm.fmuladd.f32(float %15, float %17, float %13)
  %19 = load float*, float** %data.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %19, i64 2
  store float %18, float* %arrayidx8, align 4
  %20 = load float*, float** %data.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %20, i64 3
  %21 = load float, float* %arrayidx9, align 4
  %22 = load float*, float** %data.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %22, i64 2
  %23 = load float, float* %arrayidx10, align 4
  %24 = load float*, float** %data.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %24, i64 1
  %25 = load float, float* %arrayidx11, align 4
  %26 = call float @llvm.fmuladd.f32(float %23, float %25, float %21)
  %27 = load float*, float** %data.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %27, i64 3
  store float %26, float* %arrayidx12, align 4
  %28 = load float*, float** %data.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %28, i64 4
  %29 = load float, float* %arrayidx13, align 4
  %30 = load float*, float** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %30, i64 3
  %31 = load float, float* %arrayidx14, align 4
  %32 = load float*, float** %data.addr, align 8
  %arrayidx15 = getelementptr inbounds float, float* %32, i64 1
  %33 = load float, float* %arrayidx15, align 4
  %34 = call float @llvm.fmuladd.f32(float %31, float %33, float %29)
  %35 = load float*, float** %data.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %35, i64 4
  store float %34, float* %arrayidx16, align 4
  %36 = load float*, float** %data.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %36, i64 4
  %37 = load float, float* %arrayidx17, align 4
  ret float %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pidFitFunction(%struct.Pop* noundef %population, float* noundef %fit, %struct.PID* noundef %pid) #0 {
entry:
  %population.addr = alloca %struct.Pop*, align 8
  %fit.addr = alloca float*, align 8
  %pid.addr = alloca %struct.PID*, align 8
  %csv = alloca i32, align 4
  %trash = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  store float* %fit, float** %fit.addr, align 8
  store %struct.PID* %pid, %struct.PID** %pid.addr, align 8
  store i32 0, i32* %csv, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows = getelementptr inbounds %struct.Pop, %struct.Pop* %1, i32 0, i32 3
  %2 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %sizeDataSystem = getelementptr inbounds %struct.PID, %struct.PID* %4, i32 0, i32 13
  %5 = load i32, i32* %sizeDataSystem, align 8
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %dataSystem = getelementptr inbounds %struct.PID, %struct.PID* %6, i32 0, i32 12
  %7 = load float*, float** %dataSystem, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !33

for.end:                                          ; preds = %for.cond1
  %10 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %10, i32 0, i32 0
  %11 = load float**, float*** %pop, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds float*, float** %11, i64 %idxprom4
  %13 = load float*, float** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds float, float* %13, i64 0
  %14 = load float, float* %arrayidx6, align 4
  %15 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Kp = getelementptr inbounds %struct.PID, %struct.PID* %15, i32 0, i32 0
  store float %14, float* %Kp, align 8
  %16 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop7 = getelementptr inbounds %struct.Pop, %struct.Pop* %16, i32 0, i32 0
  %17 = load float**, float*** %pop7, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds float*, float** %17, i64 %idxprom8
  %19 = load float*, float** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds float, float* %19, i64 1
  %20 = load float, float* %arrayidx10, align 4
  %21 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Ki = getelementptr inbounds %struct.PID, %struct.PID* %21, i32 0, i32 1
  store float %20, float* %Ki, align 4
  %22 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop11 = getelementptr inbounds %struct.Pop, %struct.Pop* %22, i32 0, i32 0
  %23 = load float**, float*** %pop11, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds float*, float** %23, i64 %idxprom12
  %25 = load float*, float** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds float, float* %25, i64 2
  %26 = load float, float* %arrayidx14, align 4
  %27 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %Kd = getelementptr inbounds %struct.PID, %struct.PID* %27, i32 0, i32 2
  store float %26, float* %Kd, align 8
  %28 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop15 = getelementptr inbounds %struct.Pop, %struct.Pop* %28, i32 0, i32 0
  %29 = load float**, float*** %pop15, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds float*, float** %29, i64 %idxprom16
  %31 = load float*, float** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds float, float* %31, i64 3
  %32 = load float, float* %arrayidx18, align 4
  %33 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %tauD = getelementptr inbounds %struct.PID, %struct.PID* %33, i32 0, i32 4
  store float %32, float* %tauD, align 8
  %34 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %trash, align 8
  %36 = load i32, i32* %csv, align 4
  call void @makeSimulationOfSignal(%struct.PID* noundef %34, %struct._IO_FILE* noundef %35, i32 noundef %36)
  %37 = load %struct.PID*, %struct.PID** %pid.addr, align 8
  %fit19 = getelementptr inbounds %struct.PID, %struct.PID* %37, i32 0, i32 18
  %38 = load float, float* %fit19, align 4
  %39 = load float*, float** %fit.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %40 to i64
  %arrayidx21 = getelementptr inbounds float, float* %39, i64 %idxprom20
  store float %38, float* %arrayidx21, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %41 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %41, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end24:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nnFitFunction(%struct.Pop* noundef %population, float* noundef %fit, %struct.SystemNN* noundef %systemNN) #0 {
entry:
  %population.addr = alloca %struct.Pop*, align 8
  %fit.addr = alloca float*, align 8
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %trash = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  store float* %fit, float** %fit.addr, align 8
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows = getelementptr inbounds %struct.Pop, %struct.Pop* %1, i32 0, i32 3
  %2 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %sizeDataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %4, i32 0, i32 5
  %5 = load i32, i32* %sizeDataSystem, align 8
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %6, i32 0, i32 4
  %7 = load float*, float** %dataSystem, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !35

for.end:                                          ; preds = %for.cond1
  %10 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %10, i32 0, i32 0
  %11 = load %struct.NN*, %struct.NN** %neuralNetwork, align 8
  %12 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %12, i32 0, i32 0
  %13 = load float**, float*** %pop, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds float*, float** %13, i64 %idxprom4
  %15 = load float*, float** %arrayidx5, align 8
  call void @fillMatrixesNN(%struct.NN* noundef %11, float* noundef %15)
  %16 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %trash, align 8
  call void @makeSimulationOfSignalNN(%struct.SystemNN* noundef %16, %struct._IO_FILE* noundef %17, i32 noundef 0)
  %18 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %fit6 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %18, i32 0, i32 12
  %19 = load float, float* %fit6, align 8
  %20 = load float*, float** %fit.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds float, float* %20, i64 %idxprom7
  store float %19, float* %arrayidx8, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %22, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !36

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fillMatrixesNN(%struct.NN* noundef %neuralNetwork, float* noundef %population) #0 {
entry:
  %neuralNetwork.addr = alloca %struct.NN*, align 8
  %population.addr = alloca float*, align 8
  %globalIndex = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x29 = alloca i32, align 4
  %y37 = alloca i32, align 4
  store %struct.NN* %neuralNetwork, %struct.NN** %neuralNetwork.addr, align 8
  store float* %population, float** %population.addr, align 8
  store i32 0, i32* %globalIndex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc63, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber = getelementptr inbounds %struct.NN, %struct.NN* %1, i32 0, i32 3
  %2 = load i32, i32* %layerNumber, align 8
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end65

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.body
  %3 = load i32, i32* %x, align 4
  %4 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW = getelementptr inbounds %struct.NN, %struct.NN* %4, i32 0, i32 0
  %5 = load %struct.Matrix**, %struct.Matrix*** %AW, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %5, i64 %idxprom
  %7 = load %struct.Matrix*, %struct.Matrix** %arrayidx, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %7, i32 0, i32 1
  %8 = load i32*, i32** %sizes, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %3, %9
  br i1 %cmp3, label %for.body4, label %for.end25

for.body4:                                        ; preds = %for.cond1
  store i32 0, i32* %y, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %10 = load i32, i32* %y, align 4
  %11 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW6 = getelementptr inbounds %struct.NN, %struct.NN* %11, i32 0, i32 0
  %12 = load %struct.Matrix**, %struct.Matrix*** %AW6, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %12, i64 %idxprom7
  %14 = load %struct.Matrix*, %struct.Matrix** %arrayidx8, align 8
  %sizes9 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %14, i32 0, i32 1
  %15 = load i32*, i32** %sizes9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp slt i32 %10, %16
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond5
  %17 = load float*, float** %population.addr, align 8
  %18 = load i32, i32* %globalIndex, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds float, float* %17, i64 %idxprom13
  %19 = load float, float* %arrayidx14, align 4
  %20 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW15 = getelementptr inbounds %struct.NN, %struct.NN* %20, i32 0, i32 0
  %21 = load %struct.Matrix**, %struct.Matrix*** %AW15, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %21, i64 %idxprom16
  %23 = load %struct.Matrix*, %struct.Matrix** %arrayidx17, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %23, i32 0, i32 0
  %24 = load float**, float*** %matrix, align 8
  %25 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds float*, float** %24, i64 %idxprom18
  %26 = load float*, float** %arrayidx19, align 8
  %27 = load i32, i32* %y, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds float, float* %26, i64 %idxprom20
  store float %19, float* %arrayidx21, align 4
  %28 = load i32, i32* %globalIndex, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %globalIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %29 = load i32, i32* %y, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %y, align 4
  br label %for.cond5, !llvm.loop !37

for.end:                                          ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %30 = load i32, i32* %x, align 4
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, i32* %x, align 4
  br label %for.cond1, !llvm.loop !38

for.end25:                                        ; preds = %for.cond1
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber26 = getelementptr inbounds %struct.NN, %struct.NN* %32, i32 0, i32 3
  %33 = load i32, i32* %layerNumber26, align 8
  %sub27 = sub nsw i32 %33, 2
  %cmp28 = icmp slt i32 %31, %sub27
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.end25
  store i32 0, i32* %x29, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc60, %if.then
  %34 = load i32, i32* %x29, align 4
  %35 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW = getelementptr inbounds %struct.NN, %struct.NN* %35, i32 0, i32 1
  %36 = load %struct.Matrix**, %struct.Matrix*** %BW, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %36, i64 %idxprom31
  %38 = load %struct.Matrix*, %struct.Matrix** %arrayidx32, align 8
  %sizes33 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %38, i32 0, i32 1
  %39 = load i32*, i32** %sizes33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp slt i32 %34, %40
  br i1 %cmp35, label %for.body36, label %for.end62

for.body36:                                       ; preds = %for.cond30
  store i32 0, i32* %y37, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %for.body36
  %41 = load i32, i32* %y37, align 4
  %42 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW39 = getelementptr inbounds %struct.NN, %struct.NN* %42, i32 0, i32 1
  %43 = load %struct.Matrix**, %struct.Matrix*** %BW39, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %43, i64 %idxprom40
  %45 = load %struct.Matrix*, %struct.Matrix** %arrayidx41, align 8
  %sizes42 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %45, i32 0, i32 1
  %46 = load i32*, i32** %sizes42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %46, i64 1
  %47 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp slt i32 %41, %47
  br i1 %cmp44, label %for.body45, label %for.end59

for.body45:                                       ; preds = %for.cond38
  %48 = load float*, float** %population.addr, align 8
  %49 = load i32, i32* %globalIndex, align 4
  %idxprom46 = sext i32 %49 to i64
  %arrayidx47 = getelementptr inbounds float, float* %48, i64 %idxprom46
  %50 = load float, float* %arrayidx47, align 4
  %51 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW48 = getelementptr inbounds %struct.NN, %struct.NN* %51, i32 0, i32 1
  %52 = load %struct.Matrix**, %struct.Matrix*** %BW48, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %53 to i64
  %arrayidx50 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %52, i64 %idxprom49
  %54 = load %struct.Matrix*, %struct.Matrix** %arrayidx50, align 8
  %matrix51 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %54, i32 0, i32 0
  %55 = load float**, float*** %matrix51, align 8
  %56 = load i32, i32* %x29, align 4
  %idxprom52 = sext i32 %56 to i64
  %arrayidx53 = getelementptr inbounds float*, float** %55, i64 %idxprom52
  %57 = load float*, float** %arrayidx53, align 8
  %58 = load i32, i32* %y37, align 4
  %idxprom54 = sext i32 %58 to i64
  %arrayidx55 = getelementptr inbounds float, float* %57, i64 %idxprom54
  store float %50, float* %arrayidx55, align 4
  %59 = load i32, i32* %globalIndex, align 4
  %inc56 = add nsw i32 %59, 1
  store i32 %inc56, i32* %globalIndex, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body45
  %60 = load i32, i32* %y37, align 4
  %inc58 = add nsw i32 %60, 1
  store i32 %inc58, i32* %y37, align 4
  br label %for.cond38, !llvm.loop !39

for.end59:                                        ; preds = %for.cond38
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %61 = load i32, i32* %x29, align 4
  %inc61 = add nsw i32 %61, 1
  store i32 %inc61, i32* %x29, align 4
  br label %for.cond30, !llvm.loop !40

for.end62:                                        ; preds = %for.cond30
  br label %if.end

if.end:                                           ; preds = %for.end62, %for.end25
  br label %for.inc63

for.inc63:                                        ; preds = %if.end
  %62 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %62, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond, !llvm.loop !41

for.end65:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeSimulationOfSignalNN(%struct.SystemNN* noundef %systemNN, %struct._IO_FILE* noundef %csvFile, i32 noundef %csv) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %csvFile.addr = alloca %struct._IO_FILE*, align 8
  %csv.addr = alloca i32, align 4
  %error = alloca float, align 4
  %diff = alloca float, align 4
  %neuralOutput = alloca float, align 4
  %systemOutput = alloca float, align 4
  %matrixIndex = alloca i32, align 4
  %max = alloca float, align 4
  %i = alloca i32, align 4
  %inputMatrix = alloca %struct.Matrix*, align 8
  %outputMatrix = alloca %struct.Matrix*, align 8
  %inputSize = alloca i32*, align 8
  %j = alloca i32, align 4
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  store %struct._IO_FILE* %csvFile, %struct._IO_FILE** %csvFile.addr, align 8
  store i32 %csv, i32* %csv.addr, align 4
  %0 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  call void @cleanNNSystem(%struct.SystemNN* noundef %0)
  %1 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %1, i32 0, i32 0
  %2 = load %struct.NN*, %struct.NN** %neuralNetwork, align 8
  call void @clearSDMemory(%struct.NN* noundef %2)
  store float 0.000000e+00, float* %neuralOutput, align 4
  store float 0.000000e+00, float* %systemOutput, align 4
  store float 0.000000e+00, float* %max, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc131, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %4, i32 0, i32 1
  %5 = load %struct.Signal*, %struct.Signal** %signal, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %5, i32 0, i32 2
  %6 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %3, %6
  br i1 %cmp, label %for.body, label %for.end133

for.body:                                         ; preds = %for.cond
  %7 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal1 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %7, i32 0, i32 1
  %8 = load %struct.Signal*, %struct.Signal** %signal1, align 8
  %signal2 = getelementptr inbounds %struct.Signal, %struct.Signal* %8, i32 0, i32 0
  %9 = load float*, float** %signal2, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds float, float* %9, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4
  %12 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %12, i32 0, i32 3
  %13 = load %struct.Signal*, %struct.Signal** %output, align 8
  %signal3 = getelementptr inbounds %struct.Signal, %struct.Signal* %13, i32 0, i32 0
  %14 = load float*, float** %signal3, align 8
  %15 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds float, float* %14, i64 %idxprom4
  %16 = load float, float* %arrayidx5, align 4
  %sub6 = fsub float %11, %16
  store float %sub6, float* %error, align 4
  %17 = load float, float* %error, align 4
  %18 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %18, i32 0, i32 7
  %19 = load float*, float** %inputData, align 8
  %arrayidx7 = getelementptr inbounds float, float* %19, i64 1
  store float %17, float* %arrayidx7, align 4
  %20 = load float, float* %neuralOutput, align 4
  %21 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData8 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %21, i32 0, i32 7
  %22 = load float*, float** %inputData8, align 8
  %arrayidx9 = getelementptr inbounds float, float* %22, i64 2
  store float %20, float* %arrayidx9, align 4
  %23 = load float, float* %systemOutput, align 4
  %24 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData10 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %24, i32 0, i32 7
  %25 = load float*, float** %inputData10, align 8
  %arrayidx11 = getelementptr inbounds float, float* %25, i64 3
  store float %23, float* %arrayidx11, align 4
  %26 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %input_sys = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %26, i32 0, i32 6
  %27 = load float (float*)*, float (float*)** %input_sys, align 8
  %28 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData12 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %28, i32 0, i32 7
  %29 = load float*, float** %inputData12, align 8
  %call = call float %27(float* noundef %29)
  %call13 = call noalias i8* @malloc(i64 noundef 16) #6
  %30 = bitcast i8* %call13 to %struct.Matrix*
  store %struct.Matrix* %30, %struct.Matrix** %inputMatrix, align 8
  %call14 = call noalias i8* @malloc(i64 noundef 16) #6
  %31 = bitcast i8* %call14 to %struct.Matrix*
  store %struct.Matrix* %31, %struct.Matrix** %outputMatrix, align 8
  %call15 = call noalias i8* @malloc(i64 noundef 8) #6
  %32 = bitcast i8* %call15 to i32*
  store i32* %32, i32** %inputSize, align 8
  %33 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork16 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %33, i32 0, i32 0
  %34 = load %struct.NN*, %struct.NN** %neuralNetwork16, align 8
  %neuronsSize = getelementptr inbounds %struct.NN, %struct.NN* %34, i32 0, i32 2
  %35 = load i32*, i32** %neuronsSize, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx17, align 4
  %37 = load i32*, i32** %inputSize, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %arrayidx18, align 4
  %38 = load i32*, i32** %inputSize, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 1, i32* %arrayidx19, align 4
  %39 = load %struct.Matrix*, %struct.Matrix** %inputMatrix, align 8
  %40 = load i32*, i32** %inputSize, align 8
  call void @createMatrix(%struct.Matrix* noundef %39, i32* noundef %40)
  store i32 0, i32* %matrixIndex, align 4
  %41 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %41, i32 0, i32 8
  %42 = load i32*, i32** %inputDataSize, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %42, i64 1
  %43 = load i32, i32* %arrayidx20, align 4
  store i32 %43, i32* %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %44 = load i32, i32* %j, align 4
  %45 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize22 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %45, i32 0, i32 8
  %46 = load i32*, i32** %inputDataSize22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %46, i64 2
  %47 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp slt i32 %44, %47
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond21
  %48 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData26 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %48, i32 0, i32 7
  %49 = load float*, float** %inputData26, align 8
  %50 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %50 to i64
  %arrayidx28 = getelementptr inbounds float, float* %49, i64 %idxprom27
  %51 = load float, float* %arrayidx28, align 4
  %52 = load %struct.Matrix*, %struct.Matrix** %inputMatrix, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %52, i32 0, i32 0
  %53 = load float**, float*** %matrix, align 8
  %54 = load i32, i32* %matrixIndex, align 4
  %idxprom29 = sext i32 %54 to i64
  %arrayidx30 = getelementptr inbounds float*, float** %53, i64 %idxprom29
  %55 = load float*, float** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds float, float* %55, i64 0
  store float %51, float* %arrayidx31, align 4
  %56 = load i32, i32* %matrixIndex, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %matrixIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body25
  %57 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %57, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond21, !llvm.loop !42

for.end:                                          ; preds = %for.cond21
  %58 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork33 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %58, i32 0, i32 0
  %59 = load %struct.NN*, %struct.NN** %neuralNetwork33, align 8
  %60 = load %struct.Matrix*, %struct.Matrix** %inputMatrix, align 8
  %61 = load %struct.Matrix*, %struct.Matrix** %outputMatrix, align 8
  call void @oneCalculation(%struct.NN* noundef %59, %struct.Matrix* noundef %60, %struct.Matrix* noundef %61)
  %62 = load %struct.Matrix*, %struct.Matrix** %outputMatrix, align 8
  %matrix34 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %62, i32 0, i32 0
  %63 = load float**, float*** %matrix34, align 8
  %arrayidx35 = getelementptr inbounds float*, float** %63, i64 0
  %64 = load float*, float** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds float, float* %64, i64 0
  %65 = load float, float* %arrayidx36, align 4
  %66 = load float, float* %max, align 4
  %cmp37 = fcmp ogt float %65, %66
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %67 = load %struct.Matrix*, %struct.Matrix** %outputMatrix, align 8
  %matrix38 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %67, i32 0, i32 0
  %68 = load float**, float*** %matrix38, align 8
  %arrayidx39 = getelementptr inbounds float*, float** %68, i64 0
  %69 = load float*, float** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds float, float* %69, i64 0
  %70 = load float, float* %arrayidx40, align 4
  store float %70, float* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %71 = load %struct.Matrix*, %struct.Matrix** %outputMatrix, align 8
  %matrix41 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %71, i32 0, i32 0
  %72 = load float**, float*** %matrix41, align 8
  %arrayidx42 = getelementptr inbounds float*, float** %72, i64 0
  %73 = load float*, float** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds float, float* %73, i64 0
  %74 = load float, float* %arrayidx43, align 4
  %75 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %75, i32 0, i32 4
  %76 = load float*, float** %dataSystem, align 8
  %arrayidx44 = getelementptr inbounds float, float* %76, i64 0
  store float %74, float* %arrayidx44, align 4
  %77 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem45 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %77, i32 0, i32 4
  %78 = load float*, float** %dataSystem45, align 8
  %arrayidx46 = getelementptr inbounds float, float* %78, i64 0
  %79 = load float, float* %arrayidx46, align 4
  store float %79, float* %neuralOutput, align 4
  %80 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %func_system = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %80, i32 0, i32 2
  %81 = load float (float*)*, float (float*)** %func_system, align 8
  %82 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem47 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %82, i32 0, i32 4
  %83 = load float*, float** %dataSystem47, align 8
  %call48 = call float %81(float* noundef %83)
  %84 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output49 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %84, i32 0, i32 3
  %85 = load %struct.Signal*, %struct.Signal** %output49, align 8
  %signal50 = getelementptr inbounds %struct.Signal, %struct.Signal* %85, i32 0, i32 0
  %86 = load float*, float** %signal50, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %87 to i64
  %arrayidx52 = getelementptr inbounds float, float* %86, i64 %idxprom51
  store float %call48, float* %arrayidx52, align 4
  %88 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output53 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %88, i32 0, i32 3
  %89 = load %struct.Signal*, %struct.Signal** %output53, align 8
  %signal54 = getelementptr inbounds %struct.Signal, %struct.Signal* %89, i32 0, i32 0
  %90 = load float*, float** %signal54, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %91 to i64
  %arrayidx56 = getelementptr inbounds float, float* %90, i64 %idxprom55
  %92 = load float, float* %arrayidx56, align 4
  %93 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %maxSys = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %93, i32 0, i32 10
  %94 = load float, float* %maxSys, align 8
  %cmp57 = fcmp ogt float %92, %94
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end
  %95 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %maxSys59 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %95, i32 0, i32 10
  %96 = load float, float* %maxSys59, align 8
  %97 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output60 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %97, i32 0, i32 3
  %98 = load %struct.Signal*, %struct.Signal** %output60, align 8
  %signal61 = getelementptr inbounds %struct.Signal, %struct.Signal* %98, i32 0, i32 0
  %99 = load float*, float** %signal61, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %100 to i64
  %arrayidx63 = getelementptr inbounds float, float* %99, i64 %idxprom62
  store float %96, float* %arrayidx63, align 4
  %101 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %maxCounter = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %101, i32 0, i32 14
  %102 = load i32, i32* %maxCounter, align 8
  %inc64 = add nsw i32 %102, 1
  store i32 %inc64, i32* %maxCounter, align 8
  br label %if.end79

if.else:                                          ; preds = %if.end
  %103 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output65 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %103, i32 0, i32 3
  %104 = load %struct.Signal*, %struct.Signal** %output65, align 8
  %signal66 = getelementptr inbounds %struct.Signal, %struct.Signal* %104, i32 0, i32 0
  %105 = load float*, float** %signal66, align 8
  %106 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %106 to i64
  %arrayidx68 = getelementptr inbounds float, float* %105, i64 %idxprom67
  %107 = load float, float* %arrayidx68, align 4
  %108 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %minSys = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %108, i32 0, i32 11
  %109 = load float, float* %minSys, align 4
  %cmp69 = fcmp olt float %107, %109
  br i1 %cmp69, label %if.then70, label %if.end78

if.then70:                                        ; preds = %if.else
  %110 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %minSys71 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %110, i32 0, i32 11
  %111 = load float, float* %minSys71, align 4
  %112 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output72 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %112, i32 0, i32 3
  %113 = load %struct.Signal*, %struct.Signal** %output72, align 8
  %signal73 = getelementptr inbounds %struct.Signal, %struct.Signal* %113, i32 0, i32 0
  %114 = load float*, float** %signal73, align 8
  %115 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %115 to i64
  %arrayidx75 = getelementptr inbounds float, float* %114, i64 %idxprom74
  store float %111, float* %arrayidx75, align 4
  %116 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %maxCounter76 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %116, i32 0, i32 14
  %117 = load i32, i32* %maxCounter76, align 8
  %inc77 = add nsw i32 %117, 1
  store i32 %inc77, i32* %maxCounter76, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %if.else
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then58
  %118 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output80 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %118, i32 0, i32 3
  %119 = load %struct.Signal*, %struct.Signal** %output80, align 8
  %signal81 = getelementptr inbounds %struct.Signal, %struct.Signal* %119, i32 0, i32 0
  %120 = load float*, float** %signal81, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %121 to i64
  %arrayidx83 = getelementptr inbounds float, float* %120, i64 %idxprom82
  %122 = load float, float* %arrayidx83, align 4
  store float %122, float* %systemOutput, align 4
  %123 = load i32, i32* %csv.addr, align 4
  %cmp84 = icmp eq i32 %123, 1
  br i1 %cmp84, label %if.then85, label %if.end105

if.then85:                                        ; preds = %if.end79
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %csvFile.addr, align 8
  %125 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output86 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %125, i32 0, i32 3
  %126 = load %struct.Signal*, %struct.Signal** %output86, align 8
  %signal87 = getelementptr inbounds %struct.Signal, %struct.Signal* %126, i32 0, i32 0
  %127 = load float*, float** %signal87, align 8
  %128 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %128 to i64
  %arrayidx89 = getelementptr inbounds float, float* %127, i64 %idxprom88
  %129 = load float, float* %arrayidx89, align 4
  %conv = fpext float %129 to double
  %130 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal90 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %130, i32 0, i32 1
  %131 = load %struct.Signal*, %struct.Signal** %signal90, align 8
  %signal91 = getelementptr inbounds %struct.Signal, %struct.Signal* %131, i32 0, i32 0
  %132 = load float*, float** %signal91, align 8
  %133 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %133 to i64
  %arrayidx93 = getelementptr inbounds float, float* %132, i64 %idxprom92
  %134 = load float, float* %arrayidx93, align 4
  %conv94 = fpext float %134 to double
  %135 = load %struct.Matrix*, %struct.Matrix** %outputMatrix, align 8
  %matrix95 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %135, i32 0, i32 0
  %136 = load float**, float*** %matrix95, align 8
  %arrayidx96 = getelementptr inbounds float*, float** %136, i64 0
  %137 = load float*, float** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds float, float* %137, i64 0
  %138 = load float, float* %arrayidx97, align 4
  %conv98 = fpext float %138 to double
  %139 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output99 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %139, i32 0, i32 3
  %140 = load %struct.Signal*, %struct.Signal** %output99, align 8
  %signal100 = getelementptr inbounds %struct.Signal, %struct.Signal* %140, i32 0, i32 0
  %141 = load float*, float** %signal100, align 8
  %142 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %142 to i64
  %arrayidx102 = getelementptr inbounds float, float* %141, i64 %idxprom101
  %143 = load float, float* %arrayidx102, align 4
  %conv103 = fpext float %143 to double
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), double noundef %conv, double noundef %conv94, double noundef %conv98, double noundef %conv103)
  br label %if.end105

if.end105:                                        ; preds = %if.then85, %if.end79
  %144 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal106 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %144, i32 0, i32 1
  %145 = load %struct.Signal*, %struct.Signal** %signal106, align 8
  %signal107 = getelementptr inbounds %struct.Signal, %struct.Signal* %145, i32 0, i32 0
  %146 = load float*, float** %signal107, align 8
  %147 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %147 to i64
  %arrayidx109 = getelementptr inbounds float, float* %146, i64 %idxprom108
  %148 = load float, float* %arrayidx109, align 4
  %149 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output110 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %149, i32 0, i32 3
  %150 = load %struct.Signal*, %struct.Signal** %output110, align 8
  %signal111 = getelementptr inbounds %struct.Signal, %struct.Signal* %150, i32 0, i32 0
  %151 = load float*, float** %signal111, align 8
  %152 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %152 to i64
  %arrayidx113 = getelementptr inbounds float, float* %151, i64 %idxprom112
  %153 = load float, float* %arrayidx113, align 4
  %sub114 = fsub float %148, %153
  %conv115 = fpext float %sub114 to double
  %154 = call double @llvm.fabs.f64(double %conv115)
  %conv116 = fptrunc double %154 to float
  store float %conv116, float* %diff, align 4
  %155 = load float, float* %diff, align 4
  %156 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %fit = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %156, i32 0, i32 12
  %157 = load float, float* %fit, align 8
  %add = fadd float %157, %155
  store float %add, float* %fit, align 8
  %158 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output117 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %158, i32 0, i32 3
  %159 = load %struct.Signal*, %struct.Signal** %output117, align 8
  %signal118 = getelementptr inbounds %struct.Signal, %struct.Signal* %159, i32 0, i32 0
  %160 = load float*, float** %signal118, align 8
  %161 = load i32, i32* %i, align 4
  %sub119 = sub nsw i32 %161, 1
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds float, float* %160, i64 %idxprom120
  %162 = load float, float* %arrayidx121, align 4
  %163 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output122 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %163, i32 0, i32 3
  %164 = load %struct.Signal*, %struct.Signal** %output122, align 8
  %signal123 = getelementptr inbounds %struct.Signal, %struct.Signal* %164, i32 0, i32 0
  %165 = load float*, float** %signal123, align 8
  %166 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %166 to i64
  %arrayidx125 = getelementptr inbounds float, float* %165, i64 %idxprom124
  %167 = load float, float* %arrayidx125, align 4
  %cmp126 = fcmp ogt float %162, %167
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.end105
  %168 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %steadyRiseCheck = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %168, i32 0, i32 13
  %169 = load i32, i32* %steadyRiseCheck, align 4
  %inc129 = add nsw i32 %169, 1
  store i32 %inc129, i32* %steadyRiseCheck, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end105
  %170 = load %struct.Matrix*, %struct.Matrix** %outputMatrix, align 8
  call void @matrixDelete(%struct.Matrix* noundef %170)
  br label %for.inc131

for.inc131:                                       ; preds = %if.end130
  %171 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %171, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond, !llvm.loop !43

for.end133:                                       ; preds = %for.cond
  %172 = load i32, i32* %csv.addr, align 4
  %cmp134 = icmp eq i32 %172, 1
  br i1 %cmp134, label %if.then136, label %if.end139

if.then136:                                       ; preds = %for.end133
  %173 = load float, float* %max, align 4
  %conv137 = fpext float %173 to double
  %call138 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), double noundef %conv137)
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %for.end133
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_input_pop_custom(%struct.InputPop* noundef %inputPop, i32 noundef %rows, %struct.Pop* noundef %population) #0 {
entry:
  %inputPop.addr = alloca %struct.InputPop*, align 8
  %rows.addr = alloca i32, align 4
  %population.addr = alloca %struct.Pop*, align 8
  store %struct.InputPop* %inputPop, %struct.InputPop** %inputPop.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  %0 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols = getelementptr inbounds %struct.Pop, %struct.Pop* %0, i32 0, i32 2
  %1 = load i32, i32* %cols, align 8
  %2 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols1 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %2, i32 0, i32 0
  store i32 %1, i32* %cols1, align 8
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %rows2 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %4, i32 0, i32 1
  store i32 %3, i32* %rows2, align 4
  %call = call noalias i8* @malloc(i64 noundef 16) #6
  %5 = bitcast i8* %call to float**
  %6 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S = getelementptr inbounds %struct.InputPop, %struct.InputPop* %6, i32 0, i32 2
  store float** %5, float*** %S, align 8
  %7 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols3 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %7, i32 0, i32 0
  %8 = load i32, i32* %cols3, align 8
  %conv = sext i32 %8 to i64
  %mul = mul i64 %conv, 4
  %call4 = call noalias i8* @malloc(i64 noundef %mul) #6
  %9 = bitcast i8* %call4 to float*
  %10 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S5 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %10, i32 0, i32 2
  %11 = load float**, float*** %S5, align 8
  %arrayidx = getelementptr inbounds float*, float** %11, i64 0
  store float* %9, float** %arrayidx, align 8
  %12 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols6 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %12, i32 0, i32 0
  %13 = load i32, i32* %cols6, align 8
  %conv7 = sext i32 %13 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call noalias i8* @malloc(i64 noundef %mul8) #6
  %14 = bitcast i8* %call9 to float*
  %15 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S10 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %15, i32 0, i32 2
  %16 = load float**, float*** %S10, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %16, i64 1
  store float* %14, float** %arrayidx11, align 8
  %17 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S12 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %17, i32 0, i32 2
  %18 = load float**, float*** %S12, align 8
  %arrayidx13 = getelementptr inbounds float*, float** %18, i64 0
  %19 = load float*, float** %arrayidx13, align 8
  %20 = bitcast float* %19 to i8*
  %21 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S14 = getelementptr inbounds %struct.Pop, %struct.Pop* %21, i32 0, i32 1
  %22 = load float**, float*** %S14, align 8
  %arrayidx15 = getelementptr inbounds float*, float** %22, i64 0
  %23 = load float*, float** %arrayidx15, align 8
  %24 = bitcast float* %23 to i8*
  %25 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols16 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %25, i32 0, i32 0
  %26 = load i32, i32* %cols16, align 8
  %conv17 = sext i32 %26 to i64
  %mul18 = mul i64 %conv17, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %24, i64 %mul18, i1 false)
  %27 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S19 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %27, i32 0, i32 2
  %28 = load float**, float*** %S19, align 8
  %arrayidx20 = getelementptr inbounds float*, float** %28, i64 1
  %29 = load float*, float** %arrayidx20, align 8
  %30 = bitcast float* %29 to i8*
  %31 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S21 = getelementptr inbounds %struct.Pop, %struct.Pop* %31, i32 0, i32 1
  %32 = load float**, float*** %S21, align 8
  %arrayidx22 = getelementptr inbounds float*, float** %32, i64 1
  %33 = load float*, float** %arrayidx22, align 8
  %34 = bitcast float* %33 to i8*
  %35 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols23 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %35, i32 0, i32 0
  %36 = load i32, i32* %cols23, align 8
  %conv24 = sext i32 %36 to i64
  %mul25 = mul i64 %conv24, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %34, i64 %mul25, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selbest(float* noundef %fit, i32 noundef %fitLength, %struct.Pop* noundef %population, %struct.Pop* noundef %newPopulation, i32* noundef %selects, i32 noundef %selectsLength, i32 noundef %way) #0 {
entry:
  %fit.addr = alloca float*, align 8
  %fitLength.addr = alloca i32, align 4
  %population.addr = alloca %struct.Pop*, align 8
  %newPopulation.addr = alloca %struct.Pop*, align 8
  %selects.addr = alloca i32*, align 8
  %selectsLength.addr = alloca i32, align 4
  %way.addr = alloca i32, align 4
  %rows = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %resultIndex = alloca i32, align 4
  %inputPop = alloca %struct.InputPop*, align 8
  %globalIndex = alloca i32, align 4
  %i20 = alloca i32, align 4
  %num = alloca i32, align 4
  %y = alloca i32, align 4
  store float* %fit, float** %fit.addr, align 8
  store i32 %fitLength, i32* %fitLength.addr, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  store %struct.Pop* %newPopulation, %struct.Pop** %newPopulation.addr, align 8
  store i32* %selects, i32** %selects.addr, align 8
  store i32 %selectsLength, i32* %selectsLength.addr, align 4
  store i32 %way, i32* %way.addr, align 4
  store i32 0, i32* %rows, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %selectsLength.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %selects.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %rows, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %rows, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %fitLength.addr, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** %result, align 8
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %9 = load i32, i32* %i1, align 4
  %10 = load i32, i32* %fitLength.addr, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond2
  %11 = load i32, i32* %i1, align 4
  %12 = load i32*, i32** %result, align 8
  %13 = load i32, i32* %i1, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  store i32 %11, i32* %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %14 = load i32, i32* %i1, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %i1, align 4
  br label %for.cond2, !llvm.loop !45

for.end10:                                        ; preds = %for.cond2
  %15 = load float*, float** %fit.addr, align 8
  %16 = load i32*, i32** %result, align 8
  %17 = load i32, i32* %fitLength.addr, align 4
  call void @quickSort(float* noundef %15, i32* noundef %16, i32 noundef %17)
  store i32 0, i32* %resultIndex, align 4
  %18 = load i32, i32* %way.addr, align 4
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.end10
  %19 = load i32, i32* %fitLength.addr, align 4
  %sub = sub nsw i32 %19, 1
  store i32 %sub, i32* %resultIndex, align 4
  br label %if.end18

if.else:                                          ; preds = %for.end10
  %20 = load i32, i32* %way.addr, align 4
  %cmp13 = icmp eq i32 %20, 1
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  store i32 0, i32* %resultIndex, align 4
  br label %if.end

if.else16:                                        ; preds = %if.else
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %if.then15
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %call19 = call noalias i8* @malloc(i64 noundef 16) #6
  %22 = bitcast i8* %call19 to %struct.InputPop*
  store %struct.InputPop* %22, %struct.InputPop** %inputPop, align 8
  %23 = load %struct.InputPop*, %struct.InputPop** %inputPop, align 8
  %24 = load i32, i32* %rows, align 4
  %25 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  call void @create_input_pop_custom(%struct.InputPop* noundef %23, i32 noundef %24, %struct.Pop* noundef %25)
  %26 = load %struct.InputPop*, %struct.InputPop** %inputPop, align 8
  %27 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  call void @createStructure(%struct.InputPop* noundef %26, %struct.Pop* noundef %27)
  store i32 0, i32* %globalIndex, align 4
  store i32 0, i32* %i20, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc50, %if.end18
  %28 = load i32, i32* %i20, align 4
  %29 = load i32, i32* %selectsLength.addr, align 4
  %cmp22 = icmp slt i32 %28, %29
  br i1 %cmp22, label %for.body24, label %for.end52

for.body24:                                       ; preds = %for.cond21
  %30 = load i32*, i32** %selects.addr, align 8
  %31 = load i32, i32* %i20, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %30, i64 %idxprom25
  %32 = load i32, i32* %arrayidx26, align 4
  store i32 %32, i32* %num, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc41, %for.body24
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %num, align 4
  %cmp28 = icmp slt i32 %33, %34
  br i1 %cmp28, label %for.body30, label %for.end43

for.body30:                                       ; preds = %for.cond27
  %35 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %35, i32 0, i32 0
  %36 = load float**, float*** %pop, align 8
  %37 = load i32, i32* %globalIndex, align 4
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds float*, float** %36, i64 %idxprom31
  %38 = load float*, float** %arrayidx32, align 8
  %39 = bitcast float* %38 to i8*
  %40 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop33 = getelementptr inbounds %struct.Pop, %struct.Pop* %40, i32 0, i32 0
  %41 = load float**, float*** %pop33, align 8
  %42 = load i32*, i32** %result, align 8
  %43 = load i32, i32* %resultIndex, align 4
  %idxprom34 = sext i32 %43 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %42, i64 %idxprom34
  %44 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %44 to i64
  %arrayidx37 = getelementptr inbounds float*, float** %41, i64 %idxprom36
  %45 = load float*, float** %arrayidx37, align 8
  %46 = bitcast float* %45 to i8*
  %47 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  %cols = getelementptr inbounds %struct.Pop, %struct.Pop* %47, i32 0, i32 2
  %48 = load i32, i32* %cols, align 8
  %conv38 = sext i32 %48 to i64
  %mul39 = mul i64 %conv38, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %46, i64 %mul39, i1 false)
  %49 = load i32, i32* %globalIndex, align 4
  %inc40 = add nsw i32 %49, 1
  store i32 %inc40, i32* %globalIndex, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body30
  %50 = load i32, i32* %y, align 4
  %inc42 = add nsw i32 %50, 1
  store i32 %inc42, i32* %y, align 4
  br label %for.cond27, !llvm.loop !46

for.end43:                                        ; preds = %for.cond27
  %51 = load i32, i32* %way.addr, align 4
  %cmp44 = icmp eq i32 %51, 0
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %for.end43
  %52 = load i32, i32* %resultIndex, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %resultIndex, align 4
  br label %if.end49

if.else47:                                        ; preds = %for.end43
  %53 = load i32, i32* %resultIndex, align 4
  %inc48 = add nsw i32 %53, 1
  store i32 %inc48, i32* %resultIndex, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then46
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %54 = load i32, i32* %i20, align 4
  %inc51 = add nsw i32 %54, 1
  store i32 %inc51, i32* %i20, align 4
  br label %for.cond21, !llvm.loop !47

for.end52:                                        ; preds = %for.cond21
  %55 = load i32*, i32** %result, align 8
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* noundef %56) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createStructure(%struct.InputPop* noundef %input, %struct.Pop* noundef %population) #0 {
entry:
  %input.addr = alloca %struct.InputPop*, align 8
  %population.addr = alloca %struct.Pop*, align 8
  store %struct.InputPop* %input, %struct.InputPop** %input.addr, align 8
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  %0 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %1 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  call void @alocatePopulation(%struct.InputPop* noundef %0, %struct.Pop* noundef %1)
  %2 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  call void @generateRandomPopulation(%struct.Pop* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selrand(%struct.Pop* noundef %population, %struct.Pop* noundef %newPopulation, i32 noundef %rows) #0 {
entry:
  %population.addr = alloca %struct.Pop*, align 8
  %newPopulation.addr = alloca %struct.Pop*, align 8
  %rows.addr = alloca i32, align 4
  %inputPop = alloca %struct.InputPop*, align 8
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  store %struct.Pop* %newPopulation, %struct.Pop** %newPopulation.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 16) #6
  %0 = bitcast i8* %call to %struct.InputPop*
  store %struct.InputPop* %0, %struct.InputPop** %inputPop, align 8
  %1 = load %struct.InputPop*, %struct.InputPop** %inputPop, align 8
  %2 = load i32, i32* %rows.addr, align 4
  %3 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  call void @create_input_pop_custom(%struct.InputPop* noundef %1, i32 noundef %2, %struct.Pop* noundef %3)
  %4 = load %struct.InputPop*, %struct.InputPop** %inputPop, align 8
  %5 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  call void @createStructure(%struct.InputPop* noundef %4, %struct.Pop* noundef %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @rand() #6
  %8 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows2 = getelementptr inbounds %struct.Pop, %struct.Pop* %8, i32 0, i32 3
  %9 = load i32, i32* %rows2, align 4
  %rem = srem i32 %call1, %9
  store i32 %rem, i32* %index, align 4
  %10 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %10, i32 0, i32 0
  %11 = load float**, float*** %pop, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds float*, float** %11, i64 %idxprom
  %13 = load float*, float** %arrayidx, align 8
  %14 = bitcast float* %13 to i8*
  %15 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop3 = getelementptr inbounds %struct.Pop, %struct.Pop* %15, i32 0, i32 0
  %16 = load float**, float*** %pop3, align 8
  %17 = load i32, i32* %index, align 4
  %idxprom4 = sext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds float*, float** %16, i64 %idxprom4
  %18 = load float*, float** %arrayidx5, align 8
  %19 = bitcast float* %18 to i8*
  %20 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols = getelementptr inbounds %struct.Pop, %struct.Pop* %20, i32 0, i32 2
  %21 = load i32, i32* %cols, align 8
  %conv = sext i32 %21 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %19, i64 %mul, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selturn(%struct.Pop* noundef %population, float* noundef %fit, %struct.Pop* noundef %newPopulation, i32 noundef %rows) #0 {
entry:
  %population.addr = alloca %struct.Pop*, align 8
  %fit.addr = alloca float*, align 8
  %newPopulation.addr = alloca %struct.Pop*, align 8
  %rows.addr = alloca i32, align 4
  %inputPop = alloca %struct.InputPop*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  store float* %fit, float** %fit.addr, align 8
  store %struct.Pop* %newPopulation, %struct.Pop** %newPopulation.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 16) #6
  %0 = bitcast i8* %call to %struct.InputPop*
  store %struct.InputPop* %0, %struct.InputPop** %inputPop, align 8
  %1 = load %struct.InputPop*, %struct.InputPop** %inputPop, align 8
  %2 = load i32, i32* %rows.addr, align 4
  %3 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  call void @create_input_pop_custom(%struct.InputPop* noundef %1, i32 noundef %2, %struct.Pop* noundef %3)
  %4 = load %struct.InputPop*, %struct.InputPop** %inputPop, align 8
  %5 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  call void @createStructure(%struct.InputPop* noundef %4, %struct.Pop* noundef %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @rand() #6
  %8 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows2 = getelementptr inbounds %struct.Pop, %struct.Pop* %8, i32 0, i32 3
  %9 = load i32, i32* %rows2, align 4
  %rem = srem i32 %call1, %9
  store i32 %rem, i32* %j, align 4
  %call3 = call i32 @rand() #6
  %10 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows4 = getelementptr inbounds %struct.Pop, %struct.Pop* %10, i32 0, i32 3
  %11 = load i32, i32* %rows4, align 4
  %rem5 = srem i32 %call3, %11
  store i32 %rem5, i32* %k, align 4
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %k, align 4
  %cmp6 = icmp eq i32 %12, %13
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %14 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %14, i32 0, i32 0
  %15 = load float**, float*** %pop, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds float*, float** %15, i64 %idxprom
  %17 = load float*, float** %arrayidx, align 8
  %18 = bitcast float* %17 to i8*
  %19 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop7 = getelementptr inbounds %struct.Pop, %struct.Pop* %19, i32 0, i32 0
  %20 = load float**, float*** %pop7, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds float*, float** %20, i64 %idxprom8
  %22 = load float*, float** %arrayidx9, align 8
  %23 = bitcast float* %22 to i8*
  %24 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols = getelementptr inbounds %struct.Pop, %struct.Pop* %24, i32 0, i32 2
  %25 = load i32, i32* %cols, align 8
  %conv = sext i32 %25 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %23, i64 %mul, i1 false)
  br label %if.end36

if.else:                                          ; preds = %for.body
  %26 = load float*, float** %fit.addr, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %27 to i64
  %arrayidx11 = getelementptr inbounds float, float* %26, i64 %idxprom10
  %28 = load float, float* %arrayidx11, align 4
  %29 = load float*, float** %fit.addr, align 8
  %30 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %30 to i64
  %arrayidx13 = getelementptr inbounds float, float* %29, i64 %idxprom12
  %31 = load float, float* %arrayidx13, align 4
  %cmp14 = fcmp ole float %28, %31
  br i1 %cmp14, label %if.then16, label %if.else26

if.then16:                                        ; preds = %if.else
  %32 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  %pop17 = getelementptr inbounds %struct.Pop, %struct.Pop* %32, i32 0, i32 0
  %33 = load float**, float*** %pop17, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %34 to i64
  %arrayidx19 = getelementptr inbounds float*, float** %33, i64 %idxprom18
  %35 = load float*, float** %arrayidx19, align 8
  %36 = bitcast float* %35 to i8*
  %37 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop20 = getelementptr inbounds %struct.Pop, %struct.Pop* %37, i32 0, i32 0
  %38 = load float**, float*** %pop20, align 8
  %39 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %39 to i64
  %arrayidx22 = getelementptr inbounds float*, float** %38, i64 %idxprom21
  %40 = load float*, float** %arrayidx22, align 8
  %41 = bitcast float* %40 to i8*
  %42 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols23 = getelementptr inbounds %struct.Pop, %struct.Pop* %42, i32 0, i32 2
  %43 = load i32, i32* %cols23, align 8
  %conv24 = sext i32 %43 to i64
  %mul25 = mul i64 %conv24, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %41, i64 %mul25, i1 false)
  br label %if.end

if.else26:                                        ; preds = %if.else
  %44 = load %struct.Pop*, %struct.Pop** %newPopulation.addr, align 8
  %pop27 = getelementptr inbounds %struct.Pop, %struct.Pop* %44, i32 0, i32 0
  %45 = load float**, float*** %pop27, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %46 to i64
  %arrayidx29 = getelementptr inbounds float*, float** %45, i64 %idxprom28
  %47 = load float*, float** %arrayidx29, align 8
  %48 = bitcast float* %47 to i8*
  %49 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop30 = getelementptr inbounds %struct.Pop, %struct.Pop* %49, i32 0, i32 0
  %50 = load float**, float*** %pop30, align 8
  %51 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %51 to i64
  %arrayidx32 = getelementptr inbounds float*, float** %50, i64 %idxprom31
  %52 = load float*, float** %arrayidx32, align 8
  %53 = bitcast float* %52 to i8*
  %54 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols33 = getelementptr inbounds %struct.Pop, %struct.Pop* %54, i32 0, i32 2
  %55 = load i32, i32* %cols33, align 8
  %conv34 = sext i32 %55 to i64
  %mul35 = mul i64 %conv34, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %53, i64 %mul35, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else26, %if.then16
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crosov(%struct.Pop* noundef %population, i32* noundef %selects, i32 noundef %selectsLength) #0 {
entry:
  %population.addr = alloca %struct.Pop*, align 8
  %selects.addr = alloca i32*, align 8
  %selectsLength.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %globalIndex = alloca i32, align 4
  %additionaSaving = alloca float*, align 8
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %x29 = alloca i32, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  store i32* %selects, i32** %selects.addr, align 8
  store i32 %selectsLength, i32* %selectsLength.addr, align 4
  %0 = load i32, i32* %selectsLength.addr, align 4
  %rem = srem i32 %0, 2
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %selects.addr, align 8
  %2 = bitcast i32* %1 to i8*
  %3 = load i32, i32* %selectsLength.addr, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @realloc(i8* noundef %2, i64 noundef %mul) #6
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** %selects.addr, align 8
  %5 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols = getelementptr inbounds %struct.Pop, %struct.Pop* %5, i32 0, i32 2
  %6 = load i32, i32* %cols, align 8
  %7 = load i32*, i32** %selects.addr, align 8
  %8 = load i32, i32* %selectsLength.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  %9 = load i32, i32* %selectsLength.addr, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %selectsLength.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 noundef 4) #6
  %10 = bitcast i8* %call1 to float*
  store float* %10, float** %additionaSaving, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %if.end
  %11 = load i32, i32* %index, align 4
  %12 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows = getelementptr inbounds %struct.Pop, %struct.Pop* %12, i32 0, i32 3
  %13 = load i32, i32* %rows, align 4
  %sub = sub nsw i32 %13, 1
  %cmp2 = icmp slt i32 %11, %sub
  br i1 %cmp2, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc57, %for.body
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %selectsLength.addr, align 4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %for.body7, label %for.end59

for.body7:                                        ; preds = %for.cond4
  %16 = load i32*, i32** %selects.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  store i32 %18, i32* %start, align 4
  %19 = load i32*, i32** %selects.addr, align 8
  %20 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %20, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom11
  %21 = load i32, i32* %arrayidx12, align 4
  store i32 %21, i32* %end, align 4
  %22 = load float*, float** %additionaSaving, align 8
  %23 = bitcast float* %22 to i8*
  %24 = load i32, i32* %end, align 4
  %25 = load i32, i32* %start, align 4
  %sub13 = sub nsw i32 %24, %25
  %conv14 = sext i32 %sub13 to i64
  %mul15 = mul i64 %conv14, 4
  %call16 = call i8* @realloc(i8* noundef %23, i64 noundef %mul15) #6
  %26 = bitcast i8* %call16 to float*
  store float* %26, float** %additionaSaving, align 8
  store i32 0, i32* %globalIndex, align 4
  %27 = load i32, i32* %start, align 4
  store i32 %27, i32* %x, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body7
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %end, align 4
  %cmp18 = icmp slt i32 %28, %29
  br i1 %cmp18, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond17
  %30 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %30, i32 0, i32 0
  %31 = load float**, float*** %pop, align 8
  %32 = load i32, i32* %index, align 4
  %idxprom21 = sext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds float*, float** %31, i64 %idxprom21
  %33 = load float*, float** %arrayidx22, align 8
  %34 = load i32, i32* %x, align 4
  %idxprom23 = sext i32 %34 to i64
  %arrayidx24 = getelementptr inbounds float, float* %33, i64 %idxprom23
  %35 = load float, float* %arrayidx24, align 4
  %36 = load float*, float** %additionaSaving, align 8
  %37 = load i32, i32* %globalIndex, align 4
  %idxprom25 = sext i32 %37 to i64
  %arrayidx26 = getelementptr inbounds float, float* %36, i64 %idxprom25
  store float %35, float* %arrayidx26, align 4
  %38 = load i32, i32* %globalIndex, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %globalIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body20
  %39 = load i32, i32* %x, align 4
  %inc28 = add nsw i32 %39, 1
  store i32 %inc28, i32* %x, align 4
  br label %for.cond17, !llvm.loop !50

for.end:                                          ; preds = %for.cond17
  store i32 0, i32* %globalIndex, align 4
  %40 = load i32, i32* %start, align 4
  store i32 %40, i32* %x29, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc54, %for.end
  %41 = load i32, i32* %x29, align 4
  %42 = load i32, i32* %end, align 4
  %cmp31 = icmp slt i32 %41, %42
  br i1 %cmp31, label %for.body33, label %for.end56

for.body33:                                       ; preds = %for.cond30
  %43 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop34 = getelementptr inbounds %struct.Pop, %struct.Pop* %43, i32 0, i32 0
  %44 = load float**, float*** %pop34, align 8
  %45 = load i32, i32* %index, align 4
  %add35 = add nsw i32 %45, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds float*, float** %44, i64 %idxprom36
  %46 = load float*, float** %arrayidx37, align 8
  %47 = load i32, i32* %x29, align 4
  %idxprom38 = sext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds float, float* %46, i64 %idxprom38
  %48 = load float, float* %arrayidx39, align 4
  %49 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop40 = getelementptr inbounds %struct.Pop, %struct.Pop* %49, i32 0, i32 0
  %50 = load float**, float*** %pop40, align 8
  %51 = load i32, i32* %index, align 4
  %idxprom41 = sext i32 %51 to i64
  %arrayidx42 = getelementptr inbounds float*, float** %50, i64 %idxprom41
  %52 = load float*, float** %arrayidx42, align 8
  %53 = load i32, i32* %x29, align 4
  %idxprom43 = sext i32 %53 to i64
  %arrayidx44 = getelementptr inbounds float, float* %52, i64 %idxprom43
  store float %48, float* %arrayidx44, align 4
  %54 = load float*, float** %additionaSaving, align 8
  %55 = load i32, i32* %globalIndex, align 4
  %idxprom45 = sext i32 %55 to i64
  %arrayidx46 = getelementptr inbounds float, float* %54, i64 %idxprom45
  %56 = load float, float* %arrayidx46, align 4
  %57 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop47 = getelementptr inbounds %struct.Pop, %struct.Pop* %57, i32 0, i32 0
  %58 = load float**, float*** %pop47, align 8
  %59 = load i32, i32* %index, align 4
  %add48 = add nsw i32 %59, 1
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds float*, float** %58, i64 %idxprom49
  %60 = load float*, float** %arrayidx50, align 8
  %61 = load i32, i32* %x29, align 4
  %idxprom51 = sext i32 %61 to i64
  %arrayidx52 = getelementptr inbounds float, float* %60, i64 %idxprom51
  store float %56, float* %arrayidx52, align 4
  %62 = load i32, i32* %globalIndex, align 4
  %inc53 = add nsw i32 %62, 1
  store i32 %inc53, i32* %globalIndex, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body33
  %63 = load i32, i32* %x29, align 4
  %inc55 = add nsw i32 %63, 1
  store i32 %inc55, i32* %x29, align 4
  br label %for.cond30, !llvm.loop !51

for.end56:                                        ; preds = %for.cond30
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %64 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %64, 2
  store i32 %add58, i32* %i, align 4
  br label %for.cond4, !llvm.loop !52

for.end59:                                        ; preds = %for.cond4
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %65 = load i32, i32* %index, align 4
  %add61 = add nsw i32 %65, 2
  store i32 %add61, i32* %index, align 4
  br label %for.cond, !llvm.loop !53

for.end62:                                        ; preds = %for.cond
  %66 = load float*, float** %additionaSaving, align 8
  %67 = bitcast float* %66 to i8*
  call void @free(i8* noundef %67) #6
  %68 = load i32*, i32** %selects.addr, align 8
  %69 = bitcast i32* %68 to i8*
  call void @free(i8* noundef %69) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mutx(%struct.Pop* noundef %population, float noundef %chance) #0 {
entry:
  %population.addr = alloca %struct.Pop*, align 8
  %chance.addr = alloca float, align 4
  %randomFloat = alloca float, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  store float %chance, float* %chance.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows = getelementptr inbounds %struct.Pop, %struct.Pop* %1, i32 0, i32 3
  %2 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %y, align 4
  %4 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols = getelementptr inbounds %struct.Pop, %struct.Pop* %4, i32 0, i32 2
  %5 = load i32, i32* %cols, align 8
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #6
  %conv = sitofp i32 %call to float
  %div = fdiv float %conv, 0x41E0000000000000
  store float %div, float* %randomFloat, align 4
  %6 = load float, float* %randomFloat, align 4
  %7 = load float, float* %chance.addr, align 4
  %cmp4 = fcmp olt float %6, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %8 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S = getelementptr inbounds %struct.Pop, %struct.Pop* %8, i32 0, i32 1
  %9 = load float**, float*** %S, align 8
  %arrayidx = getelementptr inbounds float*, float** %9, i64 1
  %10 = load float*, float** %arrayidx, align 8
  %11 = load i32, i32* %y, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds float, float* %10, i64 %idxprom
  %12 = load float, float* %arrayidx6, align 4
  %13 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S7 = getelementptr inbounds %struct.Pop, %struct.Pop* %13, i32 0, i32 1
  %14 = load float**, float*** %S7, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %14, i64 0
  %15 = load float*, float** %arrayidx8, align 8
  %16 = load i32, i32* %y, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds float, float* %15, i64 %idxprom9
  %17 = load float, float* %arrayidx10, align 4
  %call11 = call float @createRandomFloat(float noundef %12, float noundef %17)
  store float %call11, float* %randomFloat, align 4
  %18 = load float, float* %randomFloat, align 4
  %19 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %19, i32 0, i32 0
  %20 = load float**, float*** %pop, align 8
  %21 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds float*, float** %20, i64 %idxprom12
  %22 = load float*, float** %arrayidx13, align 8
  %23 = load i32, i32* %y, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds float, float* %22, i64 %idxprom14
  store float %18, float* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %y, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond1, !llvm.loop !54

for.end:                                          ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %25 = load i32, i32* %x, align 4
  %inc17 = add nsw i32 %25, 1
  store i32 %inc17, i32* %x, align 4
  br label %for.cond, !llvm.loop !55

for.end18:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearInputPop(%struct.InputPop* noundef %input) #0 {
entry:
  %input.addr = alloca %struct.InputPop*, align 8
  store %struct.InputPop* %input, %struct.InputPop** %input.addr, align 8
  %0 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %tobool = icmp ne %struct.InputPop* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %S = getelementptr inbounds %struct.InputPop, %struct.InputPop* %1, i32 0, i32 2
  %2 = load float**, float*** %S, align 8
  %arrayidx = getelementptr inbounds float*, float** %2, i64 0
  %3 = load float*, float** %arrayidx, align 8
  %4 = bitcast float* %3 to i8*
  call void @free(i8* noundef %4) #6
  %5 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %S1 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %5, i32 0, i32 2
  %6 = load float**, float*** %S1, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %6, i64 1
  %7 = load float*, float** %arrayidx2, align 8
  %8 = bitcast float* %7 to i8*
  call void @free(i8* noundef %8) #6
  %9 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %S3 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %9, i32 0, i32 2
  %10 = load float**, float*** %S3, align 8
  %11 = bitcast float** %10 to i8*
  call void @free(i8* noundef %11) #6
  %12 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %13 = bitcast %struct.InputPop* %12 to i8*
  call void @free(i8* noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createInputPop(%struct.InputPop* noundef %inputPop, float* noundef %max, float* noundef %min, i32* noundef %size) #0 {
entry:
  %inputPop.addr = alloca %struct.InputPop*, align 8
  %max.addr = alloca float*, align 8
  %min.addr = alloca float*, align 8
  %size.addr = alloca i32*, align 8
  store %struct.InputPop* %inputPop, %struct.InputPop** %inputPop.addr, align 8
  store float* %max, float** %max.addr, align 8
  store float* %min, float** %min.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  %0 = load i32*, i32** %size.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols = getelementptr inbounds %struct.InputPop, %struct.InputPop* %2, i32 0, i32 0
  store i32 %1, i32* %cols, align 8
  %3 = load i32*, i32** %size.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %rows = getelementptr inbounds %struct.InputPop, %struct.InputPop* %5, i32 0, i32 1
  store i32 %4, i32* %rows, align 4
  %call = call noalias i8* @malloc(i64 noundef 16) #6
  %6 = bitcast i8* %call to float**
  %7 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S = getelementptr inbounds %struct.InputPop, %struct.InputPop* %7, i32 0, i32 2
  store float** %6, float*** %S, align 8
  %8 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols2 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %8, i32 0, i32 0
  %9 = load i32, i32* %cols2, align 8
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 4
  %call3 = call noalias i8* @malloc(i64 noundef %mul) #6
  %10 = bitcast i8* %call3 to float*
  %11 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S4 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %11, i32 0, i32 2
  %12 = load float**, float*** %S4, align 8
  %arrayidx5 = getelementptr inbounds float*, float** %12, i64 0
  store float* %10, float** %arrayidx5, align 8
  %13 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols6 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %13, i32 0, i32 0
  %14 = load i32, i32* %cols6, align 8
  %conv7 = sext i32 %14 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call noalias i8* @malloc(i64 noundef %mul8) #6
  %15 = bitcast i8* %call9 to float*
  %16 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S10 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %16, i32 0, i32 2
  %17 = load float**, float*** %S10, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %17, i64 1
  store float* %15, float** %arrayidx11, align 8
  %18 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S12 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %18, i32 0, i32 2
  %19 = load float**, float*** %S12, align 8
  %arrayidx13 = getelementptr inbounds float*, float** %19, i64 0
  %20 = load float*, float** %arrayidx13, align 8
  %21 = bitcast float* %20 to i8*
  %22 = load float*, float** %max.addr, align 8
  %23 = bitcast float* %22 to i8*
  %24 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols14 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %24, i32 0, i32 0
  %25 = load i32, i32* %cols14, align 8
  %conv15 = sext i32 %25 to i64
  %mul16 = mul i64 %conv15, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %23, i64 %mul16, i1 false)
  %26 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %S17 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %26, i32 0, i32 2
  %27 = load float**, float*** %S17, align 8
  %arrayidx18 = getelementptr inbounds float*, float** %27, i64 1
  %28 = load float*, float** %arrayidx18, align 8
  %29 = bitcast float* %28 to i8*
  %30 = load float*, float** %min.addr, align 8
  %31 = bitcast float* %30 to i8*
  %32 = load %struct.InputPop*, %struct.InputPop** %inputPop.addr, align 8
  %cols19 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %32, i32 0, i32 0
  %33 = load i32, i32* %cols19, align 8
  %conv20 = sext i32 %33 to i64
  %mul21 = mul i64 %conv20, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %31, i64 %mul21, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alocatePopulation(%struct.InputPop* noundef %input, %struct.Pop* noundef %population) #0 {
entry:
  %input.addr = alloca %struct.InputPop*, align 8
  %population.addr = alloca %struct.Pop*, align 8
  %i = alloca i32, align 4
  store %struct.InputPop* %input, %struct.InputPop** %input.addr, align 8
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  %0 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %cols = getelementptr inbounds %struct.InputPop, %struct.InputPop* %0, i32 0, i32 0
  %1 = load i32, i32* %cols, align 8
  %2 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols1 = getelementptr inbounds %struct.Pop, %struct.Pop* %2, i32 0, i32 2
  store i32 %1, i32* %cols1, align 8
  %3 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %rows = getelementptr inbounds %struct.InputPop, %struct.InputPop* %3, i32 0, i32 1
  %4 = load i32, i32* %rows, align 4
  %5 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows2 = getelementptr inbounds %struct.Pop, %struct.Pop* %5, i32 0, i32 3
  store i32 %4, i32* %rows2, align 4
  %6 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows3 = getelementptr inbounds %struct.Pop, %struct.Pop* %6, i32 0, i32 3
  %7 = load i32, i32* %rows3, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %8 = bitcast i8* %call to float**
  %9 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %9, i32 0, i32 0
  store float** %8, float*** %pop, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows4 = getelementptr inbounds %struct.Pop, %struct.Pop* %11, i32 0, i32 3
  %12 = load i32, i32* %rows4, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols6 = getelementptr inbounds %struct.Pop, %struct.Pop* %13, i32 0, i32 2
  %14 = load i32, i32* %cols6, align 8
  %conv7 = sext i32 %14 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call noalias i8* @malloc(i64 noundef %mul8) #6
  %15 = bitcast i8* %call9 to float*
  %16 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop10 = getelementptr inbounds %struct.Pop, %struct.Pop* %16, i32 0, i32 0
  %17 = load float**, float*** %pop10, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds float*, float** %17, i64 %idxprom
  store float* %15, float** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  %call11 = call noalias i8* @malloc(i64 noundef 16) #6
  %20 = bitcast i8* %call11 to float**
  %21 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S = getelementptr inbounds %struct.Pop, %struct.Pop* %21, i32 0, i32 1
  store float** %20, float*** %S, align 8
  %22 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols12 = getelementptr inbounds %struct.Pop, %struct.Pop* %22, i32 0, i32 2
  %23 = load i32, i32* %cols12, align 8
  %conv13 = sext i32 %23 to i64
  %mul14 = mul i64 %conv13, 4
  %call15 = call noalias i8* @malloc(i64 noundef %mul14) #6
  %24 = bitcast i8* %call15 to float*
  %25 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S16 = getelementptr inbounds %struct.Pop, %struct.Pop* %25, i32 0, i32 1
  %26 = load float**, float*** %S16, align 8
  %arrayidx17 = getelementptr inbounds float*, float** %26, i64 0
  store float* %24, float** %arrayidx17, align 8
  %27 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols18 = getelementptr inbounds %struct.Pop, %struct.Pop* %27, i32 0, i32 2
  %28 = load i32, i32* %cols18, align 8
  %conv19 = sext i32 %28 to i64
  %mul20 = mul i64 %conv19, 4
  %call21 = call noalias i8* @malloc(i64 noundef %mul20) #6
  %29 = bitcast i8* %call21 to float*
  %30 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S22 = getelementptr inbounds %struct.Pop, %struct.Pop* %30, i32 0, i32 1
  %31 = load float**, float*** %S22, align 8
  %arrayidx23 = getelementptr inbounds float*, float** %31, i64 1
  store float* %29, float** %arrayidx23, align 8
  %32 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S24 = getelementptr inbounds %struct.Pop, %struct.Pop* %32, i32 0, i32 1
  %33 = load float**, float*** %S24, align 8
  %arrayidx25 = getelementptr inbounds float*, float** %33, i64 0
  %34 = load float*, float** %arrayidx25, align 8
  %35 = bitcast float* %34 to i8*
  %36 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %S26 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %36, i32 0, i32 2
  %37 = load float**, float*** %S26, align 8
  %arrayidx27 = getelementptr inbounds float*, float** %37, i64 0
  %38 = load float*, float** %arrayidx27, align 8
  %39 = bitcast float* %38 to i8*
  %40 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols28 = getelementptr inbounds %struct.Pop, %struct.Pop* %40, i32 0, i32 2
  %41 = load i32, i32* %cols28, align 8
  %conv29 = sext i32 %41 to i64
  %mul30 = mul i64 %conv29, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %39, i64 %mul30, i1 false)
  %42 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S31 = getelementptr inbounds %struct.Pop, %struct.Pop* %42, i32 0, i32 1
  %43 = load float**, float*** %S31, align 8
  %arrayidx32 = getelementptr inbounds float*, float** %43, i64 1
  %44 = load float*, float** %arrayidx32, align 8
  %45 = bitcast float* %44 to i8*
  %46 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  %S33 = getelementptr inbounds %struct.InputPop, %struct.InputPop* %46, i32 0, i32 2
  %47 = load float**, float*** %S33, align 8
  %arrayidx34 = getelementptr inbounds float*, float** %47, i64 1
  %48 = load float*, float** %arrayidx34, align 8
  %49 = bitcast float* %48 to i8*
  %50 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols35 = getelementptr inbounds %struct.Pop, %struct.Pop* %50, i32 0, i32 2
  %51 = load i32, i32* %cols35, align 8
  %conv36 = sext i32 %51 to i64
  %mul37 = mul i64 %conv36, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %49, i64 %mul37, i1 false)
  %52 = load %struct.InputPop*, %struct.InputPop** %input.addr, align 8
  call void @clearInputPop(%struct.InputPop* noundef %52)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearPopulation(%struct.Pop* noundef %population) #0 {
entry:
  %population.addr = alloca %struct.Pop*, align 8
  %i = alloca i32, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  %0 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %tobool = icmp ne %struct.Pop* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows = getelementptr inbounds %struct.Pop, %struct.Pop* %2, i32 0, i32 3
  %3 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %4, i32 0, i32 0
  %5 = load float**, float*** %pop, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom
  %7 = load float*, float** %arrayidx, align 8
  %8 = bitcast float* %7 to i8*
  call void @free(i8* noundef %8) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %10 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop1 = getelementptr inbounds %struct.Pop, %struct.Pop* %10, i32 0, i32 0
  %11 = load float**, float*** %pop1, align 8
  %12 = bitcast float** %11 to i8*
  call void @free(i8* noundef %12) #6
  %13 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S = getelementptr inbounds %struct.Pop, %struct.Pop* %13, i32 0, i32 1
  %14 = load float**, float*** %S, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %14, i64 0
  %15 = load float*, float** %arrayidx2, align 8
  %16 = bitcast float* %15 to i8*
  call void @free(i8* noundef %16) #6
  %17 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S3 = getelementptr inbounds %struct.Pop, %struct.Pop* %17, i32 0, i32 1
  %18 = load float**, float*** %S3, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %18, i64 1
  %19 = load float*, float** %arrayidx4, align 8
  %20 = bitcast float* %19 to i8*
  call void @free(i8* noundef %20) #6
  %21 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S5 = getelementptr inbounds %struct.Pop, %struct.Pop* %21, i32 0, i32 1
  %22 = load float**, float*** %S5, align 8
  %23 = bitcast float** %22 to i8*
  call void @free(i8* noundef %23) #6
  %24 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %25 = bitcast %struct.Pop* %24 to i8*
  call void @free(i8* noundef %25) #6
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generateRandomPopulation(%struct.Pop* noundef %population) #0 {
entry:
  %population.addr = alloca %struct.Pop*, align 8
  %newValue = alloca float, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Pop* %population, %struct.Pop** %population.addr, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %rows = getelementptr inbounds %struct.Pop, %struct.Pop* %1, i32 0, i32 3
  %2 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %cols = getelementptr inbounds %struct.Pop, %struct.Pop* %4, i32 0, i32 2
  %5 = load i32, i32* %cols, align 8
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S = getelementptr inbounds %struct.Pop, %struct.Pop* %6, i32 0, i32 1
  %7 = load float**, float*** %S, align 8
  %arrayidx = getelementptr inbounds float*, float** %7, i64 1
  %8 = load float*, float** %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 %idxprom
  %10 = load float, float* %arrayidx4, align 4
  %11 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %S5 = getelementptr inbounds %struct.Pop, %struct.Pop* %11, i32 0, i32 1
  %12 = load float**, float*** %S5, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %12, i64 0
  %13 = load float*, float** %arrayidx6, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds float, float* %13, i64 %idxprom7
  %15 = load float, float* %arrayidx8, align 4
  %call = call float @createRandomFloat(float noundef %10, float noundef %15)
  store float %call, float* %newValue, align 4
  %16 = load float, float* %newValue, align 4
  %17 = load %struct.Pop*, %struct.Pop** %population.addr, align 8
  %pop = getelementptr inbounds %struct.Pop, %struct.Pop* %17, i32 0, i32 0
  %18 = load float**, float*** %pop, align 8
  %19 = load i32, i32* %y, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds float*, float** %18, i64 %idxprom9
  %20 = load float*, float** %arrayidx10, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds float, float* %20, i64 %idxprom11
  store float %16, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !58

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %23 = load i32, i32* %y, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, i32* %y, align 4
  br label %for.cond, !llvm.loop !59

for.end15:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @placePartOfPop(%struct.Pop* noundef %pop, %struct.Pop* noundef %source, i32* noundef %indexes) #0 {
entry:
  %pop.addr = alloca %struct.Pop*, align 8
  %source.addr = alloca %struct.Pop*, align 8
  %indexes.addr = alloca i32*, align 8
  %globalIndex = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Pop* %pop, %struct.Pop** %pop.addr, align 8
  store %struct.Pop* %source, %struct.Pop** %source.addr, align 8
  store i32* %indexes, i32** %indexes.addr, align 8
  store i32 0, i32* %globalIndex, align 4
  %0 = load i32*, i32** %indexes.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %indexes.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 1
  %4 = load i32, i32* %arrayidx1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Pop*, %struct.Pop** %pop.addr, align 8
  %pop2 = getelementptr inbounds %struct.Pop, %struct.Pop* %5, i32 0, i32 0
  %6 = load float**, float*** %pop2, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds float*, float** %6, i64 %idxprom
  %8 = load float*, float** %arrayidx3, align 8
  %9 = bitcast float* %8 to i8*
  %10 = load %struct.Pop*, %struct.Pop** %source.addr, align 8
  %pop4 = getelementptr inbounds %struct.Pop, %struct.Pop* %10, i32 0, i32 0
  %11 = load float**, float*** %pop4, align 8
  %12 = load i32, i32* %globalIndex, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds float*, float** %11, i64 %idxprom5
  %13 = load float*, float** %arrayidx6, align 8
  %14 = bitcast float* %13 to i8*
  %15 = load %struct.Pop*, %struct.Pop** %source.addr, align 8
  %cols = getelementptr inbounds %struct.Pop, %struct.Pop* %15, i32 0, i32 2
  %16 = load i32, i32* %cols, align 8
  %conv = sext i32 %16 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %14, i64 %mul, i1 false)
  %17 = load i32, i32* %globalIndex, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %globalIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %18, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @tangenth(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float 5.000000e+00, %0
  %conv = fpext float %mul to double
  %call = call double @tanh(double noundef %conv) #6
  %conv1 = fptrunc double %call to float
  ret float %conv1
}

; Function Attrs: nounwind
declare dso_local double @tanh(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @sigmoid(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %fneg = fneg float %0
  %conv = fpext float %fneg to double
  %call = call double @exp(double noundef %conv) #6
  %add = fadd double 1.000000e+00, %call
  %div = fdiv double 1.000000e+00, %add
  %conv1 = fptrunc double %div to float
  ret float %conv1
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selectTangActivationFunction(float (float)** noundef %func_ptr) #0 {
entry:
  %func_ptr.addr = alloca float (float)**, align 8
  store float (float)** %func_ptr, float (float)*** %func_ptr.addr, align 8
  %0 = load float (float)**, float (float)*** %func_ptr.addr, align 8
  store float (float)* @tangenth, float (float)** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selectSigmActivationFunction(float (float)** noundef %func_ptr) #0 {
entry:
  %func_ptr.addr = alloca float (float)**, align 8
  store float (float)** %func_ptr, float (float)*** %func_ptr.addr, align 8
  %0 = load float (float)**, float (float)*** %func_ptr.addr, align 8
  store float (float)* @sigmoid, float (float)** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selectActivationFunction(float (float)** noundef %func_ptr) #0 {
entry:
  %func_ptr.addr = alloca float (float)**, align 8
  %userChoice = alloca i32, align 4
  store float (float)** %func_ptr, float (float)*** %func_ptr.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %userChoice)
  %0 = load i32, i32* %userChoice, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float (float)**, float (float)*** %func_ptr.addr, align 8
  store float (float)* @tangenth, float (float)** %1, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %userChoice, align 4
  %cmp2 = icmp eq i32 %2, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %3 = load float (float)**, float (float)*** %func_ptr.addr, align 8
  store float (float)* @sigmoid, float (float)** %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typeOne(float* noundef %data) #0 {
entry:
  %data.addr = alloca float*, align 8
  store float* %data, float** %data.addr, align 8
  %0 = load float*, float** %data.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 1
  %1 = load float, float* %arrayidx, align 4
  %2 = load float*, float** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %2, i64 9
  %3 = load float, float* %arrayidx1, align 4
  %sub = fsub float %1, %3
  %4 = load float*, float** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %4, i64 0
  %5 = load float, float* %arrayidx2, align 4
  %div = fdiv float %sub, %5
  %6 = load float*, float** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %6, i64 4
  store float %div, float* %arrayidx3, align 4
  %7 = load float*, float** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %7, i64 1
  %8 = load float, float* %arrayidx4, align 4
  %9 = load float*, float** %data.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 5
  %10 = load float, float* %arrayidx5, align 4
  %add = fadd float %10, %8
  store float %add, float* %arrayidx5, align 4
  %11 = load float*, float** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 1
  %12 = load float, float* %arrayidx6, align 4
  %13 = load float*, float** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 9
  store float %12, float* %arrayidx7, align 4
  %14 = load float*, float** %data.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %14, i64 2
  %15 = load float, float* %arrayidx8, align 4
  %16 = load float*, float** %data.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %16, i64 10
  %17 = load float, float* %arrayidx9, align 4
  %sub10 = fsub float %15, %17
  %18 = load float*, float** %data.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 0
  %19 = load float, float* %arrayidx11, align 4
  %div12 = fdiv float %sub10, %19
  %20 = load float*, float** %data.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %20, i64 8
  store float %div12, float* %arrayidx13, align 4
  %21 = load float*, float** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %21, i64 2
  %22 = load float, float* %arrayidx14, align 4
  %23 = load float*, float** %data.addr, align 8
  %arrayidx15 = getelementptr inbounds float, float* %23, i64 10
  store float %22, float* %arrayidx15, align 4
  %24 = load float*, float** %data.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %24, i64 3
  %25 = load float, float* %arrayidx16, align 4
  %26 = load float*, float** %data.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %26, i64 11
  %27 = load float, float* %arrayidx17, align 4
  %sub18 = fsub float %25, %27
  %28 = load float*, float** %data.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %28, i64 0
  %29 = load float, float* %arrayidx19, align 4
  %div20 = fdiv float %sub18, %29
  %30 = load float*, float** %data.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %30, i64 6
  store float %div20, float* %arrayidx21, align 4
  %31 = load float*, float** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %31, i64 6
  %32 = load float, float* %arrayidx22, align 4
  %33 = load float*, float** %data.addr, align 8
  %arrayidx23 = getelementptr inbounds float, float* %33, i64 12
  %34 = load float, float* %arrayidx23, align 4
  %sub24 = fsub float %32, %34
  %35 = load float*, float** %data.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %35, i64 0
  %36 = load float, float* %arrayidx25, align 4
  %div26 = fdiv float %sub24, %36
  %37 = load float*, float** %data.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %37, i64 7
  store float %div26, float* %arrayidx27, align 4
  %38 = load float*, float** %data.addr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %38, i64 3
  %39 = load float, float* %arrayidx28, align 4
  %40 = load float*, float** %data.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %40, i64 11
  store float %39, float* %arrayidx29, align 4
  %41 = load float*, float** %data.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %41, i64 6
  %42 = load float, float* %arrayidx30, align 4
  %43 = load float*, float** %data.addr, align 8
  %arrayidx31 = getelementptr inbounds float, float* %43, i64 12
  store float %42, float* %arrayidx31, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typeTwo(float* noundef %data) #0 {
entry:
  %data.addr = alloca float*, align 8
  store float* %data, float** %data.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeInputDataSystem(%struct.SystemNN* noundef %systemNN, i32 noundef %size, i32 noundef %full) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %size.addr = alloca i32, align 4
  %full.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %full, i32* %full.addr, align 4
  %0 = load i32, i32* %full.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %1 = bitcast i8* %call to float*
  %2 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %2, i32 0, i32 7
  store float* %1, float** %inputData, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %full.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData2 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %5, i32 0, i32 7
  %6 = load float*, float** %inputData2, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %call3 = call noalias i8* @malloc(i64 noundef 12) #6
  %9 = bitcast i8* %call3 to i32*
  %10 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %10, i32 0, i32 8
  store i32* %9, i32** %inputDataSize, align 8
  %11 = load i32, i32* %full.addr, align 4
  %12 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize4 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %12, i32 0, i32 8
  %13 = load i32*, i32** %inputDataSize4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %11, i32* %arrayidx5, align 4
  %14 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize6 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %14, i32 0, i32 8
  %15 = load i32*, i32** %inputDataSize6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 1, i32* %arrayidx7, align 4
  %16 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %16, 1
  %17 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize8 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %17, i32 0, i32 8
  %18 = load i32*, i32** %inputDataSize8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %add, i32* %arrayidx9, align 4
  %19 = load i32, i32* %size.addr, align 4
  %conv10 = sext i32 %19 to i64
  %mul11 = mul i64 %conv10, 4
  %call12 = call noalias i8* @malloc(i64 noundef %mul11) #6
  %20 = bitcast i8* %call12 to i32*
  %21 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %21, i32 0, i32 9
  store i32* %20, i32** %inputTypes, align 8
  %22 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes13 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %22, i32 0, i32 9
  %23 = load i32*, i32** %inputTypes13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %arrayidx14, align 4
  %24 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes15 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %24, i32 0, i32 9
  %25 = load i32*, i32** %inputTypes15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 1, i32* %arrayidx16, align 4
  %26 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes17 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %26, i32 0, i32 9
  %27 = load i32*, i32** %inputTypes17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 2, i32* %arrayidx18, align 4
  %28 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes19 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %28, i32 0, i32 9
  %29 = load i32*, i32** %inputTypes19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 4, i32* %arrayidx20, align 4
  %30 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes21 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %30, i32 0, i32 9
  %31 = load i32*, i32** %inputTypes21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 4
  store i32 5, i32* %arrayidx22, align 4
  %32 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes23 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %32, i32 0, i32 9
  %33 = load i32*, i32** %inputTypes23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 5
  store i32 9, i32* %arrayidx24, align 4
  %34 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes25 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %34, i32 0, i32 9
  %35 = load i32*, i32** %inputTypes25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %35, i64 6
  store i32 10, i32* %arrayidx26, align 4
  %36 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes27 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %36, i32 0, i32 9
  %37 = load i32*, i32** %inputTypes27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %37, i64 7
  store i32 6, i32* %arrayidx28, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeInputDataSystemTwo(%struct.SystemNN* noundef %systemNN, i32 noundef %size, i32 noundef %full) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %size.addr = alloca i32, align 4
  %full.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %full, i32* %full.addr, align 4
  %0 = load i32, i32* %full.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %1 = bitcast i8* %call to float*
  %2 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %2, i32 0, i32 7
  store float* %1, float** %inputData, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %full.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData2 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %5, i32 0, i32 7
  %6 = load float*, float** %inputData2, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  %call3 = call noalias i8* @malloc(i64 noundef 12) #6
  %9 = bitcast i8* %call3 to i32*
  %10 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %10, i32 0, i32 8
  store i32* %9, i32** %inputDataSize, align 8
  %11 = load i32, i32* %full.addr, align 4
  %12 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize4 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %12, i32 0, i32 8
  %13 = load i32*, i32** %inputDataSize4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %11, i32* %arrayidx5, align 4
  %14 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize6 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %14, i32 0, i32 8
  %15 = load i32*, i32** %inputDataSize6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 1, i32* %arrayidx7, align 4
  %16 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %16, 1
  %17 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize8 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %17, i32 0, i32 8
  %18 = load i32*, i32** %inputDataSize8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %add, i32* %arrayidx9, align 4
  %19 = load i32, i32* %size.addr, align 4
  %conv10 = sext i32 %19 to i64
  %mul11 = mul i64 %conv10, 4
  %call12 = call noalias i8* @malloc(i64 noundef %mul11) #6
  %20 = bitcast i8* %call12 to i32*
  %21 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %21, i32 0, i32 9
  store i32* %20, i32** %inputTypes, align 8
  %22 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes13 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %22, i32 0, i32 9
  %23 = load i32*, i32** %inputTypes13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %arrayidx14, align 4
  %24 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes15 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %24, i32 0, i32 9
  %25 = load i32*, i32** %inputTypes15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 1, i32* %arrayidx16, align 4
  %26 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes17 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %26, i32 0, i32 9
  %27 = load i32*, i32** %inputTypes17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 2, i32* %arrayidx18, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selectInputNNFunction(void (float*)** noundef %func_ptr, %struct.SystemNN* noundef %systemNN) #0 {
entry:
  %func_ptr.addr = alloca void (float*)**, align 8
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %userChoice = alloca i32, align 4
  store void (float*)** %func_ptr, void (float*)*** %func_ptr.addr, align 8
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %userChoice)
  %0 = load i32, i32* %userChoice, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load void (float*)**, void (float*)*** %func_ptr.addr, align 8
  store void (float*)* @typeOne, void (float*)** %1, align 8
  %2 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  call void @makeInputDataSystem(%struct.SystemNN* noundef %2, i32 noundef 8, i32 noundef 13)
  br label %if.end6

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %userChoice, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %4 = load void (float*)**, void (float*)*** %func_ptr.addr, align 8
  store void (float*)* @typeTwo, void (float*)** %4, align 8
  %5 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  call void @makeInputDataSystemTwo(%struct.SystemNN* noundef %5, i32 noundef 3, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createNNSystem(%struct.SystemNN* noundef %systemNN, %struct.NNInput* noundef %input) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %input.addr = alloca %struct.NNInput*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  store %struct.NNInput* %input, %struct.NNInput** %input.addr, align 8
  %0 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %input_sys = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %0, i32 0, i32 6
  %1 = bitcast float (float*)** %input_sys to void (float*)**
  %2 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  call void @selectInputNNFunction(void (float*)** noundef %1, %struct.SystemNN* noundef %2)
  %3 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %3, i32 0, i32 8
  %4 = load i32*, i32** %inputDataSize, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 2
  %5 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %neuronsSize = getelementptr inbounds %struct.NNInput, %struct.NNInput* %6, i32 0, i32 0
  %7 = load i32*, i32** %neuronsSize, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %sub, i32* %arrayidx1, align 4
  %call = call noalias i8* @malloc(i64 noundef 16) #6
  %8 = bitcast i8* %call to float**
  %9 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %normalizationMatrix = getelementptr inbounds %struct.NNInput, %struct.NNInput* %9, i32 0, i32 2
  store float** %8, float*** %normalizationMatrix, align 8
  %call2 = call noalias i8* @malloc(i64 noundef 16) #6
  %10 = bitcast i8* %call2 to float**
  %11 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %denormalizationMatrix = getelementptr inbounds %struct.NNInput, %struct.NNInput* %11, i32 0, i32 3
  store float** %10, float*** %denormalizationMatrix, align 8
  %12 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %neuronsSize3 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %12, i32 0, i32 0
  %13 = load i32*, i32** %neuronsSize3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx4, align 4
  %conv = sext i32 %14 to i64
  %mul = mul i64 %conv, 4
  %call5 = call noalias i8* @malloc(i64 noundef %mul) #6
  %15 = bitcast i8* %call5 to float*
  %16 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %normalizationMatrix6 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %16, i32 0, i32 2
  %17 = load float**, float*** %normalizationMatrix6, align 8
  %arrayidx7 = getelementptr inbounds float*, float** %17, i64 0
  store float* %15, float** %arrayidx7, align 8
  %18 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %neuronsSize8 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %18, i32 0, i32 0
  %19 = load i32*, i32** %neuronsSize8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx9, align 4
  %conv10 = sext i32 %20 to i64
  %mul11 = mul i64 %conv10, 4
  %call12 = call noalias i8* @malloc(i64 noundef %mul11) #6
  %21 = bitcast i8* %call12 to float*
  %22 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %normalizationMatrix13 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %22, i32 0, i32 2
  %23 = load float**, float*** %normalizationMatrix13, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %23, i64 1
  store float* %21, float** %arrayidx14, align 8
  %call15 = call noalias i8* @malloc(i64 noundef 4) #6
  %24 = bitcast i8* %call15 to float*
  %25 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %denormalizationMatrix16 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %25, i32 0, i32 3
  %26 = load float**, float*** %denormalizationMatrix16, align 8
  %arrayidx17 = getelementptr inbounds float*, float** %26, i64 0
  store float* %24, float** %arrayidx17, align 8
  %call18 = call noalias i8* @malloc(i64 noundef 4) #6
  %27 = bitcast i8* %call18 to float*
  %28 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %denormalizationMatrix19 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %28, i32 0, i32 3
  %29 = load float**, float*** %denormalizationMatrix19, align 8
  %arrayidx20 = getelementptr inbounds float*, float** %29, i64 1
  store float* %27, float** %arrayidx20, align 8
  %call21 = call noalias i8* @malloc(i64 noundef 80) #6
  %30 = bitcast i8* %call21 to %struct.NN*
  %31 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %31, i32 0, i32 0
  store %struct.NN* %30, %struct.NN** %neuralNetwork, align 8
  %32 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %33 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork22 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %33, i32 0, i32 0
  %34 = load %struct.NN*, %struct.NN** %neuralNetwork22, align 8
  call void @createNeuralNetwork(%struct.NNInput* noundef %32, %struct.NN* noundef %34)
  %call23 = call noalias i8* @malloc(i64 noundef 16) #6
  %35 = bitcast i8* %call23 to %struct.Signal*
  %36 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %36, i32 0, i32 1
  store %struct.Signal* %35, %struct.Signal** %signal, align 8
  %37 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal24 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %37, i32 0, i32 1
  %38 = load %struct.Signal*, %struct.Signal** %signal24, align 8
  call void @cliSignalSelector(%struct.Signal* noundef %38)
  %39 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %func_system = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %39, i32 0, i32 2
  %call25 = call i32 @selectSystem(float (float*)** noundef %func_system)
  store i32 %call25, i32* %size, align 4
  %40 = load i32, i32* %size, align 4
  %conv26 = sext i32 %40 to i64
  %mul27 = mul i64 %conv26, 4
  %call28 = call noalias i8* @malloc(i64 noundef %mul27) #6
  %41 = bitcast i8* %call28 to float*
  %42 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %42, i32 0, i32 4
  store float* %41, float** %dataSystem, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %43, %44
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem30 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %45, i32 0, i32 4
  %46 = load float*, float** %dataSystem30, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom = sext i32 %47 to i64
  %arrayidx31 = getelementptr inbounds float, float* %46, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %size, align 4
  %50 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %sizeDataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %50, i32 0, i32 5
  store i32 %49, i32* %sizeDataSystem, align 8
  %call32 = call noalias i8* @malloc(i64 noundef 16) #6
  %51 = bitcast i8* %call32 to %struct.Signal*
  %52 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %52, i32 0, i32 3
  store %struct.Signal* %51, %struct.Signal** %output, align 8
  %53 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal33 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %53, i32 0, i32 1
  %54 = load %struct.Signal*, %struct.Signal** %signal33, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %54, i32 0, i32 2
  %55 = load i32, i32* %length, align 4
  %56 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output34 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %56, i32 0, i32 3
  %57 = load %struct.Signal*, %struct.Signal** %output34, align 8
  %length35 = getelementptr inbounds %struct.Signal, %struct.Signal* %57, i32 0, i32 2
  store i32 %55, i32* %length35, align 4
  %58 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal36 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %58, i32 0, i32 1
  %59 = load %struct.Signal*, %struct.Signal** %signal36, align 8
  %dt = getelementptr inbounds %struct.Signal, %struct.Signal* %59, i32 0, i32 1
  %60 = load float, float* %dt, align 8
  %61 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output37 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %61, i32 0, i32 3
  %62 = load %struct.Signal*, %struct.Signal** %output37, align 8
  %dt38 = getelementptr inbounds %struct.Signal, %struct.Signal* %62, i32 0, i32 1
  store float %60, float* %dt38, align 8
  %63 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal39 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %63, i32 0, i32 1
  %64 = load %struct.Signal*, %struct.Signal** %signal39, align 8
  %length40 = getelementptr inbounds %struct.Signal, %struct.Signal* %64, i32 0, i32 2
  %65 = load i32, i32* %length40, align 4
  %conv41 = sext i32 %65 to i64
  %mul42 = mul i64 %conv41, 4
  %call43 = call noalias i8* @malloc(i64 noundef %mul42) #6
  %66 = bitcast i8* %call43 to float*
  %67 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output44 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %67, i32 0, i32 3
  %68 = load %struct.Signal*, %struct.Signal** %output44, align 8
  %signal45 = getelementptr inbounds %struct.Signal, %struct.Signal* %68, i32 0, i32 0
  store float* %66, float** %signal45, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createNeuralNetwork(%struct.NNInput* noundef %input, %struct.NN* noundef %neuralNetwork) #0 {
entry:
  %input.addr = alloca %struct.NNInput*, align 8
  %neuralNetwork.addr = alloca %struct.NN*, align 8
  %globalIndexSD = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %midIndexSlice = alloca i32, align 4
  %j62 = alloca i32, align 4
  %j79 = alloca i32, align 4
  %sizesSDMatrix = alloca i32*, align 8
  %j108 = alloca i32, align 4
  %i131 = alloca i32, align 4
  %layerIndex = alloca i32, align 4
  %i191 = alloca i32, align 4
  %sizesAW = alloca i32*, align 8
  %sizesBW = alloca i32*, align 8
  %indexBWLast = alloca i32, align 4
  %i255 = alloca i32, align 4
  %j264 = alloca i32, align 4
  store %struct.NNInput* %input, %struct.NNInput** %input.addr, align 8
  store %struct.NN* %neuralNetwork, %struct.NN** %neuralNetwork.addr, align 8
  %0 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %layerNumber = getelementptr inbounds %struct.NNInput, %struct.NNInput* %0, i32 0, i32 1
  %1 = load i32, i32* %layerNumber, align 8
  %2 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber1 = getelementptr inbounds %struct.NN, %struct.NN* %2, i32 0, i32 3
  store i32 %1, i32* %layerNumber1, align 8
  %3 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %layerNumber2 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %3, i32 0, i32 1
  %4 = load i32, i32* %layerNumber2, align 8
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %5 = bitcast i8* %call to i32*
  %6 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize = getelementptr inbounds %struct.NN, %struct.NN* %6, i32 0, i32 2
  store i32* %5, i32** %neuronsSize, align 8
  %7 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize3 = getelementptr inbounds %struct.NN, %struct.NN* %7, i32 0, i32 2
  %8 = load i32*, i32** %neuronsSize3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %neuronsSize4 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %10, i32 0, i32 0
  %11 = load i32*, i32** %neuronsSize4, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber5 = getelementptr inbounds %struct.NN, %struct.NN* %13, i32 0, i32 3
  %14 = load i32, i32* %layerNumber5, align 8
  %conv6 = sext i32 %14 to i64
  %mul7 = mul i64 %conv6, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %12, i64 %mul7, i1 false)
  %15 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber8 = getelementptr inbounds %struct.NN, %struct.NN* %15, i32 0, i32 3
  %16 = load i32, i32* %layerNumber8, align 8
  %conv9 = sext i32 %16 to i64
  %mul10 = mul i64 %conv9, 4
  %call11 = call noalias i8* @malloc(i64 noundef %mul10) #6
  %17 = bitcast i8* %call11 to i32*
  %18 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerType = getelementptr inbounds %struct.NN, %struct.NN* %18, i32 0, i32 8
  store i32* %17, i32** %layerType, align 8
  %19 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerType12 = getelementptr inbounds %struct.NN, %struct.NN* %19, i32 0, i32 8
  %20 = load i32*, i32** %layerType12, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %layerType13 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %22, i32 0, i32 4
  %23 = load i32*, i32** %layerType13, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber14 = getelementptr inbounds %struct.NN, %struct.NN* %25, i32 0, i32 3
  %26 = load i32, i32* %layerNumber14, align 8
  %conv15 = sext i32 %26 to i64
  %mul16 = mul i64 %conv15, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %24, i64 %mul16, i1 false)
  %27 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %sdNumber = getelementptr inbounds %struct.NNInput, %struct.NNInput* %27, i32 0, i32 5
  %28 = load i32, i32* %sdNumber, align 8
  %conv17 = sext i32 %28 to i64
  %mul18 = mul i64 %conv17, 8
  %call19 = call noalias i8* @malloc(i64 noundef %mul18) #6
  %29 = bitcast i8* %call19 to i32**
  %30 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes = getelementptr inbounds %struct.NN, %struct.NN* %30, i32 0, i32 9
  store i32** %29, i32*** %sdNeuronsTypes, align 8
  %31 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %sdNumber20 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %31, i32 0, i32 5
  %32 = load i32, i32* %sdNumber20, align 8
  %conv21 = sext i32 %32 to i64
  %mul22 = mul i64 %conv21, 8
  %call23 = call noalias i8* @malloc(i64 noundef %mul22) #6
  %33 = bitcast i8* %call23 to %struct.Matrix**
  %34 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory = getelementptr inbounds %struct.NN, %struct.NN* %34, i32 0, i32 10
  store %struct.Matrix** %33, %struct.Matrix*** %SDMemory, align 8
  store i32 0, i32* %globalIndexSD, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc126, %entry
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber24 = getelementptr inbounds %struct.NN, %struct.NN* %36, i32 0, i32 3
  %37 = load i32, i32* %layerNumber24, align 8
  %cmp = icmp slt i32 %35, %37
  br i1 %cmp, label %for.body, label %for.end128

for.body:                                         ; preds = %for.cond
  %38 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerType26 = getelementptr inbounds %struct.NN, %struct.NN* %38, i32 0, i32 8
  %39 = load i32*, i32** %layerType26, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds i32, i32* %39, i64 %idxprom
  %41 = load i32, i32* %arrayidx, align 4
  %cmp27 = icmp eq i32 %41, 1
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %42 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize29 = getelementptr inbounds %struct.NN, %struct.NN* %42, i32 0, i32 2
  %43 = load i32*, i32** %neuronsSize29, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %44 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %43, i64 %idxprom30
  %45 = load i32, i32* %arrayidx31, align 4
  %conv32 = sext i32 %45 to i64
  %mul33 = mul i64 %conv32, 4
  %call34 = call noalias i8* @malloc(i64 noundef %mul33) #6
  %46 = bitcast i8* %call34 to i32*
  %47 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes35 = getelementptr inbounds %struct.NN, %struct.NN* %47, i32 0, i32 9
  %48 = load i32**, i32*** %sdNeuronsTypes35, align 8
  %49 = load i32, i32* %globalIndexSD, align 4
  %idxprom36 = sext i32 %49 to i64
  %arrayidx37 = getelementptr inbounds i32*, i32** %48, i64 %idxprom36
  store i32* %46, i32** %arrayidx37, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %if.then
  %50 = load i32, i32* %j, align 4
  %51 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize39 = getelementptr inbounds %struct.NN, %struct.NN* %51, i32 0, i32 2
  %52 = load i32*, i32** %neuronsSize39, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %53 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %52, i64 %idxprom40
  %54 = load i32, i32* %arrayidx41, align 4
  %div = sdiv i32 %54, 2
  %cmp42 = icmp slt i32 %50, %div
  br i1 %cmp42, label %for.body44, label %for.end

for.body44:                                       ; preds = %for.cond38
  %55 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes45 = getelementptr inbounds %struct.NN, %struct.NN* %55, i32 0, i32 9
  %56 = load i32**, i32*** %sdNeuronsTypes45, align 8
  %57 = load i32, i32* %globalIndexSD, align 4
  %idxprom46 = sext i32 %57 to i64
  %arrayidx47 = getelementptr inbounds i32*, i32** %56, i64 %idxprom46
  %58 = load i32*, i32** %arrayidx47, align 8
  %59 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %59 to i64
  %arrayidx49 = getelementptr inbounds i32, i32* %58, i64 %idxprom48
  store i32 0, i32* %arrayidx49, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body44
  %60 = load i32, i32* %j, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond38, !llvm.loop !64

for.end:                                          ; preds = %for.cond38
  %61 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize50 = getelementptr inbounds %struct.NN, %struct.NN* %61, i32 0, i32 2
  %62 = load i32*, i32** %neuronsSize50, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %63 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %62, i64 %idxprom51
  %64 = load i32, i32* %arrayidx52, align 4
  %div53 = sdiv i32 %64, 2
  %65 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize54 = getelementptr inbounds %struct.NN, %struct.NN* %65, i32 0, i32 2
  %66 = load i32*, i32** %neuronsSize54, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %67 to i64
  %arrayidx56 = getelementptr inbounds i32, i32* %66, i64 %idxprom55
  %68 = load i32, i32* %arrayidx56, align 4
  %69 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize57 = getelementptr inbounds %struct.NN, %struct.NN* %69, i32 0, i32 2
  %70 = load i32*, i32** %neuronsSize57, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %71 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %70, i64 %idxprom58
  %72 = load i32, i32* %arrayidx59, align 4
  %div60 = sdiv i32 %72, 2
  %sub = sub nsw i32 %68, %div60
  %div61 = sdiv i32 %sub, 2
  %add = add nsw i32 %div53, %div61
  store i32 %add, i32* %midIndexSlice, align 4
  %73 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize63 = getelementptr inbounds %struct.NN, %struct.NN* %73, i32 0, i32 2
  %74 = load i32*, i32** %neuronsSize63, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %75 to i64
  %arrayidx65 = getelementptr inbounds i32, i32* %74, i64 %idxprom64
  %76 = load i32, i32* %arrayidx65, align 4
  %div66 = sdiv i32 %76, 2
  store i32 %div66, i32* %j62, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc76, %for.end
  %77 = load i32, i32* %j62, align 4
  %78 = load i32, i32* %midIndexSlice, align 4
  %cmp68 = icmp slt i32 %77, %78
  br i1 %cmp68, label %for.body70, label %for.end78

for.body70:                                       ; preds = %for.cond67
  %79 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes71 = getelementptr inbounds %struct.NN, %struct.NN* %79, i32 0, i32 9
  %80 = load i32**, i32*** %sdNeuronsTypes71, align 8
  %81 = load i32, i32* %globalIndexSD, align 4
  %idxprom72 = sext i32 %81 to i64
  %arrayidx73 = getelementptr inbounds i32*, i32** %80, i64 %idxprom72
  %82 = load i32*, i32** %arrayidx73, align 8
  %83 = load i32, i32* %j62, align 4
  %idxprom74 = sext i32 %83 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %82, i64 %idxprom74
  store i32 1, i32* %arrayidx75, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.body70
  %84 = load i32, i32* %j62, align 4
  %inc77 = add nsw i32 %84, 1
  store i32 %inc77, i32* %j62, align 4
  br label %for.cond67, !llvm.loop !65

for.end78:                                        ; preds = %for.cond67
  %85 = load i32, i32* %midIndexSlice, align 4
  store i32 %85, i32* %j79, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc92, %for.end78
  %86 = load i32, i32* %j79, align 4
  %87 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize81 = getelementptr inbounds %struct.NN, %struct.NN* %87, i32 0, i32 2
  %88 = load i32*, i32** %neuronsSize81, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %89 to i64
  %arrayidx83 = getelementptr inbounds i32, i32* %88, i64 %idxprom82
  %90 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp slt i32 %86, %90
  br i1 %cmp84, label %for.body86, label %for.end94

for.body86:                                       ; preds = %for.cond80
  %91 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes87 = getelementptr inbounds %struct.NN, %struct.NN* %91, i32 0, i32 9
  %92 = load i32**, i32*** %sdNeuronsTypes87, align 8
  %93 = load i32, i32* %globalIndexSD, align 4
  %idxprom88 = sext i32 %93 to i64
  %arrayidx89 = getelementptr inbounds i32*, i32** %92, i64 %idxprom88
  %94 = load i32*, i32** %arrayidx89, align 8
  %95 = load i32, i32* %j79, align 4
  %idxprom90 = sext i32 %95 to i64
  %arrayidx91 = getelementptr inbounds i32, i32* %94, i64 %idxprom90
  store i32 2, i32* %arrayidx91, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %for.body86
  %96 = load i32, i32* %j79, align 4
  %inc93 = add nsw i32 %96, 1
  store i32 %inc93, i32* %j79, align 4
  br label %for.cond80, !llvm.loop !66

for.end94:                                        ; preds = %for.cond80
  %call95 = call noalias i8* @malloc(i64 noundef 16) #6
  %97 = bitcast i8* %call95 to %struct.Matrix*
  %98 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory96 = getelementptr inbounds %struct.NN, %struct.NN* %98, i32 0, i32 10
  %99 = load %struct.Matrix**, %struct.Matrix*** %SDMemory96, align 8
  %100 = load i32, i32* %globalIndexSD, align 4
  %idxprom97 = sext i32 %100 to i64
  %arrayidx98 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %99, i64 %idxprom97
  store %struct.Matrix* %97, %struct.Matrix** %arrayidx98, align 8
  %call99 = call noalias i8* @malloc(i64 noundef 8) #6
  %101 = bitcast i8* %call99 to i32*
  store i32* %101, i32** %sizesSDMatrix, align 8
  %102 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize100 = getelementptr inbounds %struct.NN, %struct.NN* %102, i32 0, i32 2
  %103 = load i32*, i32** %neuronsSize100, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %104 to i64
  %arrayidx102 = getelementptr inbounds i32, i32* %103, i64 %idxprom101
  %105 = load i32, i32* %arrayidx102, align 4
  %106 = load i32*, i32** %sizesSDMatrix, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %105, i32* %arrayidx103, align 4
  %107 = load i32*, i32** %sizesSDMatrix, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 1, i32* %arrayidx104, align 4
  %108 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory105 = getelementptr inbounds %struct.NN, %struct.NN* %108, i32 0, i32 10
  %109 = load %struct.Matrix**, %struct.Matrix*** %SDMemory105, align 8
  %110 = load i32, i32* %globalIndexSD, align 4
  %idxprom106 = sext i32 %110 to i64
  %arrayidx107 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %109, i64 %idxprom106
  %111 = load %struct.Matrix*, %struct.Matrix** %arrayidx107, align 8
  %112 = load i32*, i32** %sizesSDMatrix, align 8
  call void @createMatrix(%struct.Matrix* noundef %111, i32* noundef %112)
  store i32 0, i32* %j108, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc122, %for.end94
  %113 = load i32, i32* %j108, align 4
  %114 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize110 = getelementptr inbounds %struct.NN, %struct.NN* %114, i32 0, i32 2
  %115 = load i32*, i32** %neuronsSize110, align 8
  %116 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %116 to i64
  %arrayidx112 = getelementptr inbounds i32, i32* %115, i64 %idxprom111
  %117 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp slt i32 %113, %117
  br i1 %cmp113, label %for.body115, label %for.end124

for.body115:                                      ; preds = %for.cond109
  %118 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory116 = getelementptr inbounds %struct.NN, %struct.NN* %118, i32 0, i32 10
  %119 = load %struct.Matrix**, %struct.Matrix*** %SDMemory116, align 8
  %120 = load i32, i32* %globalIndexSD, align 4
  %idxprom117 = sext i32 %120 to i64
  %arrayidx118 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %119, i64 %idxprom117
  %121 = load %struct.Matrix*, %struct.Matrix** %arrayidx118, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %121, i32 0, i32 0
  %122 = load float**, float*** %matrix, align 8
  %123 = load i32, i32* %j108, align 4
  %idxprom119 = sext i32 %123 to i64
  %arrayidx120 = getelementptr inbounds float*, float** %122, i64 %idxprom119
  %124 = load float*, float** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds float, float* %124, i64 0
  store float 0.000000e+00, float* %arrayidx121, align 4
  br label %for.inc122

for.inc122:                                       ; preds = %for.body115
  %125 = load i32, i32* %j108, align 4
  %inc123 = add nsw i32 %125, 1
  store i32 %inc123, i32* %j108, align 4
  br label %for.cond109, !llvm.loop !67

for.end124:                                       ; preds = %for.cond109
  %126 = load i32, i32* %globalIndexSD, align 4
  %inc125 = add nsw i32 %126, 1
  store i32 %inc125, i32* %globalIndexSD, align 4
  br label %if.end

if.end:                                           ; preds = %for.end124, %for.body
  br label %for.inc126

for.inc126:                                       ; preds = %if.end
  %127 = load i32, i32* %i, align 4
  %inc127 = add nsw i32 %127, 1
  store i32 %inc127, i32* %i, align 4
  br label %for.cond, !llvm.loop !68

for.end128:                                       ; preds = %for.cond
  %call129 = call noalias i8* @malloc(i64 noundef 16) #6
  %128 = bitcast i8* %call129 to float**
  %129 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %normalizationMatrix = getelementptr inbounds %struct.NN, %struct.NN* %129, i32 0, i32 5
  store float** %128, float*** %normalizationMatrix, align 8
  %call130 = call noalias i8* @malloc(i64 noundef 16) #6
  %130 = bitcast i8* %call130 to float**
  %131 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix = getelementptr inbounds %struct.NN, %struct.NN* %131, i32 0, i32 6
  store float** %130, float*** %denormalizationMatrix, align 8
  store i32 0, i32* %i131, align 4
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc178, %for.end128
  %132 = load i32, i32* %i131, align 4
  %cmp133 = icmp slt i32 %132, 2
  br i1 %cmp133, label %for.body135, label %for.end180

for.body135:                                      ; preds = %for.cond132
  %133 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize136 = getelementptr inbounds %struct.NN, %struct.NN* %133, i32 0, i32 2
  %134 = load i32*, i32** %neuronsSize136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %134, i64 0
  %135 = load i32, i32* %arrayidx137, align 4
  %conv138 = sext i32 %135 to i64
  %mul139 = mul i64 %conv138, 4
  %call140 = call noalias i8* @malloc(i64 noundef %mul139) #6
  %136 = bitcast i8* %call140 to float*
  %137 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %normalizationMatrix141 = getelementptr inbounds %struct.NN, %struct.NN* %137, i32 0, i32 5
  %138 = load float**, float*** %normalizationMatrix141, align 8
  %139 = load i32, i32* %i131, align 4
  %idxprom142 = sext i32 %139 to i64
  %arrayidx143 = getelementptr inbounds float*, float** %138, i64 %idxprom142
  store float* %136, float** %arrayidx143, align 8
  %140 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize144 = getelementptr inbounds %struct.NN, %struct.NN* %140, i32 0, i32 2
  %141 = load i32*, i32** %neuronsSize144, align 8
  %142 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber145 = getelementptr inbounds %struct.NN, %struct.NN* %142, i32 0, i32 3
  %143 = load i32, i32* %layerNumber145, align 8
  %sub146 = sub nsw i32 %143, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds i32, i32* %141, i64 %idxprom147
  %144 = load i32, i32* %arrayidx148, align 4
  %conv149 = sext i32 %144 to i64
  %mul150 = mul i64 %conv149, 4
  %call151 = call noalias i8* @malloc(i64 noundef %mul150) #6
  %145 = bitcast i8* %call151 to float*
  %146 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix152 = getelementptr inbounds %struct.NN, %struct.NN* %146, i32 0, i32 6
  %147 = load float**, float*** %denormalizationMatrix152, align 8
  %148 = load i32, i32* %i131, align 4
  %idxprom153 = sext i32 %148 to i64
  %arrayidx154 = getelementptr inbounds float*, float** %147, i64 %idxprom153
  store float* %145, float** %arrayidx154, align 8
  %149 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %normalizationMatrix155 = getelementptr inbounds %struct.NN, %struct.NN* %149, i32 0, i32 5
  %150 = load float**, float*** %normalizationMatrix155, align 8
  %151 = load i32, i32* %i131, align 4
  %idxprom156 = sext i32 %151 to i64
  %arrayidx157 = getelementptr inbounds float*, float** %150, i64 %idxprom156
  %152 = load float*, float** %arrayidx157, align 8
  %153 = bitcast float* %152 to i8*
  %154 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %normalizationMatrix158 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %154, i32 0, i32 2
  %155 = load float**, float*** %normalizationMatrix158, align 8
  %156 = load i32, i32* %i131, align 4
  %idxprom159 = sext i32 %156 to i64
  %arrayidx160 = getelementptr inbounds float*, float** %155, i64 %idxprom159
  %157 = load float*, float** %arrayidx160, align 8
  %158 = bitcast float* %157 to i8*
  %159 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize161 = getelementptr inbounds %struct.NN, %struct.NN* %159, i32 0, i32 2
  %160 = load i32*, i32** %neuronsSize161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %160, i64 0
  %161 = load i32, i32* %arrayidx162, align 4
  %conv163 = sext i32 %161 to i64
  %mul164 = mul i64 %conv163, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 %158, i64 %mul164, i1 false)
  %162 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix165 = getelementptr inbounds %struct.NN, %struct.NN* %162, i32 0, i32 6
  %163 = load float**, float*** %denormalizationMatrix165, align 8
  %164 = load i32, i32* %i131, align 4
  %idxprom166 = sext i32 %164 to i64
  %arrayidx167 = getelementptr inbounds float*, float** %163, i64 %idxprom166
  %165 = load float*, float** %arrayidx167, align 8
  %166 = bitcast float* %165 to i8*
  %167 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %denormalizationMatrix168 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %167, i32 0, i32 3
  %168 = load float**, float*** %denormalizationMatrix168, align 8
  %169 = load i32, i32* %i131, align 4
  %idxprom169 = sext i32 %169 to i64
  %arrayidx170 = getelementptr inbounds float*, float** %168, i64 %idxprom169
  %170 = load float*, float** %arrayidx170, align 8
  %171 = bitcast float* %170 to i8*
  %172 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize171 = getelementptr inbounds %struct.NN, %struct.NN* %172, i32 0, i32 2
  %173 = load i32*, i32** %neuronsSize171, align 8
  %174 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber172 = getelementptr inbounds %struct.NN, %struct.NN* %174, i32 0, i32 3
  %175 = load i32, i32* %layerNumber172, align 8
  %sub173 = sub nsw i32 %175, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds i32, i32* %173, i64 %idxprom174
  %176 = load i32, i32* %arrayidx175, align 4
  %conv176 = sext i32 %176 to i64
  %mul177 = mul i64 %conv176, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %171, i64 %mul177, i1 false)
  br label %for.inc178

for.inc178:                                       ; preds = %for.body135
  %177 = load i32, i32* %i131, align 4
  %inc179 = add nsw i32 %177, 1
  store i32 %inc179, i32* %i131, align 4
  br label %for.cond132, !llvm.loop !69

for.end180:                                       ; preds = %for.cond132
  %178 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %func_ptr = getelementptr inbounds %struct.NN, %struct.NN* %178, i32 0, i32 7
  call void @selectActivationFunction(float (float)** noundef %func_ptr)
  %179 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  call void @clearNNInput(%struct.NNInput* noundef %179)
  %180 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber181 = getelementptr inbounds %struct.NN, %struct.NN* %180, i32 0, i32 3
  %181 = load i32, i32* %layerNumber181, align 8
  %sub182 = sub nsw i32 %181, 1
  %conv183 = sext i32 %sub182 to i64
  %mul184 = mul i64 %conv183, 8
  %call185 = call noalias i8* @malloc(i64 noundef %mul184) #6
  %182 = bitcast i8* %call185 to %struct.Matrix**
  %183 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW = getelementptr inbounds %struct.NN, %struct.NN* %183, i32 0, i32 0
  store %struct.Matrix** %182, %struct.Matrix*** %AW, align 8
  %184 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber186 = getelementptr inbounds %struct.NN, %struct.NN* %184, i32 0, i32 3
  %185 = load i32, i32* %layerNumber186, align 8
  %sub187 = sub nsw i32 %185, 1
  %conv188 = sext i32 %sub187 to i64
  %mul189 = mul i64 %conv188, 8
  %call190 = call noalias i8* @malloc(i64 noundef %mul189) #6
  %186 = bitcast i8* %call190 to %struct.Matrix**
  %187 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW = getelementptr inbounds %struct.NN, %struct.NN* %187, i32 0, i32 1
  store %struct.Matrix** %186, %struct.Matrix*** %BW, align 8
  store i32 0, i32* %layerIndex, align 4
  %188 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %countOfValues = getelementptr inbounds %struct.NN, %struct.NN* %188, i32 0, i32 4
  store i32 0, i32* %countOfValues, align 4
  store i32 0, i32* %i191, align 4
  br label %for.cond192

for.cond192:                                      ; preds = %for.inc245, %for.end180
  %189 = load i32, i32* %i191, align 4
  %190 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber193 = getelementptr inbounds %struct.NN, %struct.NN* %190, i32 0, i32 3
  %191 = load i32, i32* %layerNumber193, align 8
  %sub194 = sub nsw i32 %191, 1
  %cmp195 = icmp slt i32 %189, %sub194
  br i1 %cmp195, label %for.body197, label %for.end247

for.body197:                                      ; preds = %for.cond192
  %call198 = call noalias i8* @malloc(i64 noundef 16) #6
  %192 = bitcast i8* %call198 to %struct.Matrix*
  %193 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW199 = getelementptr inbounds %struct.NN, %struct.NN* %193, i32 0, i32 0
  %194 = load %struct.Matrix**, %struct.Matrix*** %AW199, align 8
  %195 = load i32, i32* %i191, align 4
  %idxprom200 = sext i32 %195 to i64
  %arrayidx201 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %194, i64 %idxprom200
  store %struct.Matrix* %192, %struct.Matrix** %arrayidx201, align 8
  %call202 = call noalias i8* @malloc(i64 noundef 16) #6
  %196 = bitcast i8* %call202 to %struct.Matrix*
  %197 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW203 = getelementptr inbounds %struct.NN, %struct.NN* %197, i32 0, i32 1
  %198 = load %struct.Matrix**, %struct.Matrix*** %BW203, align 8
  %199 = load i32, i32* %i191, align 4
  %idxprom204 = sext i32 %199 to i64
  %arrayidx205 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %198, i64 %idxprom204
  store %struct.Matrix* %196, %struct.Matrix** %arrayidx205, align 8
  %call206 = call noalias i8* @malloc(i64 noundef 8) #6
  %200 = bitcast i8* %call206 to i32*
  store i32* %200, i32** %sizesAW, align 8
  %call207 = call noalias i8* @malloc(i64 noundef 8) #6
  %201 = bitcast i8* %call207 to i32*
  store i32* %201, i32** %sizesBW, align 8
  %202 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize208 = getelementptr inbounds %struct.NN, %struct.NN* %202, i32 0, i32 2
  %203 = load i32*, i32** %neuronsSize208, align 8
  %204 = load i32, i32* %layerIndex, align 4
  %add209 = add nsw i32 %204, 1
  %idxprom210 = sext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds i32, i32* %203, i64 %idxprom210
  %205 = load i32, i32* %arrayidx211, align 4
  %206 = load i32*, i32** %sizesAW, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %205, i32* %arrayidx212, align 4
  %207 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize213 = getelementptr inbounds %struct.NN, %struct.NN* %207, i32 0, i32 2
  %208 = load i32*, i32** %neuronsSize213, align 8
  %209 = load i32, i32* %layerIndex, align 4
  %idxprom214 = sext i32 %209 to i64
  %arrayidx215 = getelementptr inbounds i32, i32* %208, i64 %idxprom214
  %210 = load i32, i32* %arrayidx215, align 4
  %211 = load i32*, i32** %sizesAW, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %211, i64 1
  store i32 %210, i32* %arrayidx216, align 4
  %212 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize217 = getelementptr inbounds %struct.NN, %struct.NN* %212, i32 0, i32 2
  %213 = load i32*, i32** %neuronsSize217, align 8
  %214 = load i32, i32* %layerIndex, align 4
  %add218 = add nsw i32 %214, 1
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds i32, i32* %213, i64 %idxprom219
  %215 = load i32, i32* %arrayidx220, align 4
  %216 = load i32*, i32** %sizesBW, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 %215, i32* %arrayidx221, align 4
  %217 = load i32*, i32** %sizesBW, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 1, i32* %arrayidx222, align 4
  %218 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize223 = getelementptr inbounds %struct.NN, %struct.NN* %218, i32 0, i32 2
  %219 = load i32*, i32** %neuronsSize223, align 8
  %220 = load i32, i32* %layerIndex, align 4
  %add224 = add nsw i32 %220, 1
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds i32, i32* %219, i64 %idxprom225
  %221 = load i32, i32* %arrayidx226, align 4
  %222 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize227 = getelementptr inbounds %struct.NN, %struct.NN* %222, i32 0, i32 2
  %223 = load i32*, i32** %neuronsSize227, align 8
  %224 = load i32, i32* %layerIndex, align 4
  %idxprom228 = sext i32 %224 to i64
  %arrayidx229 = getelementptr inbounds i32, i32* %223, i64 %idxprom228
  %225 = load i32, i32* %arrayidx229, align 4
  %mul230 = mul nsw i32 %221, %225
  %226 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize231 = getelementptr inbounds %struct.NN, %struct.NN* %226, i32 0, i32 2
  %227 = load i32*, i32** %neuronsSize231, align 8
  %228 = load i32, i32* %layerIndex, align 4
  %add232 = add nsw i32 %228, 1
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds i32, i32* %227, i64 %idxprom233
  %229 = load i32, i32* %arrayidx234, align 4
  %add235 = add nsw i32 %mul230, %229
  %230 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %countOfValues236 = getelementptr inbounds %struct.NN, %struct.NN* %230, i32 0, i32 4
  %231 = load i32, i32* %countOfValues236, align 4
  %add237 = add nsw i32 %231, %add235
  store i32 %add237, i32* %countOfValues236, align 4
  %232 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW238 = getelementptr inbounds %struct.NN, %struct.NN* %232, i32 0, i32 0
  %233 = load %struct.Matrix**, %struct.Matrix*** %AW238, align 8
  %234 = load i32, i32* %i191, align 4
  %idxprom239 = sext i32 %234 to i64
  %arrayidx240 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %233, i64 %idxprom239
  %235 = load %struct.Matrix*, %struct.Matrix** %arrayidx240, align 8
  %236 = load i32*, i32** %sizesAW, align 8
  call void @createMatrix(%struct.Matrix* noundef %235, i32* noundef %236)
  %237 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW241 = getelementptr inbounds %struct.NN, %struct.NN* %237, i32 0, i32 1
  %238 = load %struct.Matrix**, %struct.Matrix*** %BW241, align 8
  %239 = load i32, i32* %i191, align 4
  %idxprom242 = sext i32 %239 to i64
  %arrayidx243 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %238, i64 %idxprom242
  %240 = load %struct.Matrix*, %struct.Matrix** %arrayidx243, align 8
  %241 = load i32*, i32** %sizesBW, align 8
  call void @createMatrix(%struct.Matrix* noundef %240, i32* noundef %241)
  %242 = load i32, i32* %layerIndex, align 4
  %add244 = add nsw i32 %242, 1
  store i32 %add244, i32* %layerIndex, align 4
  br label %for.inc245

for.inc245:                                       ; preds = %for.body197
  %243 = load i32, i32* %i191, align 4
  %inc246 = add nsw i32 %243, 1
  store i32 %inc246, i32* %i191, align 4
  br label %for.cond192, !llvm.loop !70

for.end247:                                       ; preds = %for.cond192
  %244 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize248 = getelementptr inbounds %struct.NN, %struct.NN* %244, i32 0, i32 2
  %245 = load i32*, i32** %neuronsSize248, align 8
  %246 = load i32, i32* %layerIndex, align 4
  %idxprom249 = sext i32 %246 to i64
  %arrayidx250 = getelementptr inbounds i32, i32* %245, i64 %idxprom249
  %247 = load i32, i32* %arrayidx250, align 4
  %248 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %countOfValues251 = getelementptr inbounds %struct.NN, %struct.NN* %248, i32 0, i32 4
  %249 = load i32, i32* %countOfValues251, align 4
  %sub252 = sub nsw i32 %249, %247
  store i32 %sub252, i32* %countOfValues251, align 4
  %250 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber253 = getelementptr inbounds %struct.NN, %struct.NN* %250, i32 0, i32 3
  %251 = load i32, i32* %layerNumber253, align 8
  %sub254 = sub nsw i32 %251, 2
  store i32 %sub254, i32* %indexBWLast, align 4
  store i32 0, i32* %i255, align 4
  br label %for.cond256

for.cond256:                                      ; preds = %for.inc285, %for.end247
  %252 = load i32, i32* %i255, align 4
  %253 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW257 = getelementptr inbounds %struct.NN, %struct.NN* %253, i32 0, i32 1
  %254 = load %struct.Matrix**, %struct.Matrix*** %BW257, align 8
  %255 = load i32, i32* %indexBWLast, align 4
  %idxprom258 = sext i32 %255 to i64
  %arrayidx259 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %254, i64 %idxprom258
  %256 = load %struct.Matrix*, %struct.Matrix** %arrayidx259, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %256, i32 0, i32 1
  %257 = load i32*, i32** %sizes, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %257, i64 0
  %258 = load i32, i32* %arrayidx260, align 4
  %cmp261 = icmp slt i32 %252, %258
  br i1 %cmp261, label %for.body263, label %for.end287

for.body263:                                      ; preds = %for.cond256
  store i32 0, i32* %j264, align 4
  br label %for.cond265

for.cond265:                                      ; preds = %for.inc282, %for.body263
  %259 = load i32, i32* %j264, align 4
  %260 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW266 = getelementptr inbounds %struct.NN, %struct.NN* %260, i32 0, i32 1
  %261 = load %struct.Matrix**, %struct.Matrix*** %BW266, align 8
  %262 = load i32, i32* %indexBWLast, align 4
  %idxprom267 = sext i32 %262 to i64
  %arrayidx268 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %261, i64 %idxprom267
  %263 = load %struct.Matrix*, %struct.Matrix** %arrayidx268, align 8
  %sizes269 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %263, i32 0, i32 1
  %264 = load i32*, i32** %sizes269, align 8
  %arrayidx270 = getelementptr inbounds i32, i32* %264, i64 0
  %265 = load i32, i32* %arrayidx270, align 4
  %cmp271 = icmp slt i32 %259, %265
  br i1 %cmp271, label %for.body273, label %for.end284

for.body273:                                      ; preds = %for.cond265
  %266 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW274 = getelementptr inbounds %struct.NN, %struct.NN* %266, i32 0, i32 1
  %267 = load %struct.Matrix**, %struct.Matrix*** %BW274, align 8
  %268 = load i32, i32* %indexBWLast, align 4
  %idxprom275 = sext i32 %268 to i64
  %arrayidx276 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %267, i64 %idxprom275
  %269 = load %struct.Matrix*, %struct.Matrix** %arrayidx276, align 8
  %matrix277 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %269, i32 0, i32 0
  %270 = load float**, float*** %matrix277, align 8
  %271 = load i32, i32* %i255, align 4
  %idxprom278 = sext i32 %271 to i64
  %arrayidx279 = getelementptr inbounds float*, float** %270, i64 %idxprom278
  %272 = load float*, float** %arrayidx279, align 8
  %273 = load i32, i32* %j264, align 4
  %idxprom280 = sext i32 %273 to i64
  %arrayidx281 = getelementptr inbounds float, float* %272, i64 %idxprom280
  store float 0.000000e+00, float* %arrayidx281, align 4
  br label %for.inc282

for.inc282:                                       ; preds = %for.body273
  %274 = load i32, i32* %j264, align 4
  %inc283 = add nsw i32 %274, 1
  store i32 %inc283, i32* %j264, align 4
  br label %for.cond265, !llvm.loop !71

for.end284:                                       ; preds = %for.cond265
  br label %for.inc285

for.inc285:                                       ; preds = %for.end284
  %275 = load i32, i32* %i255, align 4
  %inc286 = add nsw i32 %275, 1
  store i32 %inc286, i32* %i255, align 4
  br label %for.cond256, !llvm.loop !72

for.end287:                                       ; preds = %for.cond256
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearNNSystem(%struct.SystemNN* noundef %systemNN) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  %0 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %0, i32 0, i32 0
  %1 = load %struct.NN*, %struct.NN** %neuralNetwork, align 8
  call void @clearNeuralNetwork(%struct.NN* noundef %1)
  %2 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %2, i32 0, i32 1
  %3 = load %struct.Signal*, %struct.Signal** %signal, align 8
  call void @deleteSignal(%struct.Signal* noundef %3)
  %4 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %4, i32 0, i32 3
  %5 = load %struct.Signal*, %struct.Signal** %output, align 8
  call void @deleteSignal(%struct.Signal* noundef %5)
  %6 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %6, i32 0, i32 4
  %7 = load float*, float** %dataSystem, align 8
  %8 = bitcast float* %7 to i8*
  call void @free(i8* noundef %8) #6
  %9 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %9, i32 0, i32 7
  %10 = load float*, float** %inputData, align 8
  %11 = bitcast float* %10 to i8*
  call void @free(i8* noundef %11) #6
  %12 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %12, i32 0, i32 8
  %13 = load i32*, i32** %inputDataSize, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* noundef %14) #6
  %15 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %16 = bitcast %struct.SystemNN* %15 to i8*
  call void @free(i8* noundef %16) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearNeuralNetwork(%struct.NN* noundef %neuralNetwork) #0 {
entry:
  %neuralNetwork.addr = alloca %struct.NN*, align 8
  %i = alloca i32, align 4
  %i5 = alloca i32, align 4
  %indexSD = alloca i32, align 4
  %i18 = alloca i32, align 4
  store %struct.NN* %neuralNetwork, %struct.NN** %neuralNetwork.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber = getelementptr inbounds %struct.NN, %struct.NN* %1, i32 0, i32 3
  %2 = load i32, i32* %layerNumber, align 8
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW = getelementptr inbounds %struct.NN, %struct.NN* %3, i32 0, i32 0
  %4 = load %struct.Matrix**, %struct.Matrix*** %AW, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %4, i64 %idxprom
  %6 = load %struct.Matrix*, %struct.Matrix** %arrayidx, align 8
  call void @matrixDelete(%struct.Matrix* noundef %6)
  %7 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW = getelementptr inbounds %struct.NN, %struct.NN* %7, i32 0, i32 1
  %8 = load %struct.Matrix**, %struct.Matrix*** %BW, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %8, i64 %idxprom1
  %10 = load %struct.Matrix*, %struct.Matrix** %arrayidx2, align 8
  call void @matrixDelete(%struct.Matrix* noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  %12 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW3 = getelementptr inbounds %struct.NN, %struct.NN* %12, i32 0, i32 0
  %13 = load %struct.Matrix**, %struct.Matrix*** %AW3, align 8
  %14 = bitcast %struct.Matrix** %13 to i8*
  call void @free(i8* noundef %14) #6
  %15 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW4 = getelementptr inbounds %struct.NN, %struct.NN* %15, i32 0, i32 1
  %16 = load %struct.Matrix**, %struct.Matrix*** %BW4, align 8
  %17 = bitcast %struct.Matrix** %16 to i8*
  call void @free(i8* noundef %17) #6
  store i32 0, i32* %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.end
  %18 = load i32, i32* %i5, align 4
  %cmp7 = icmp slt i32 %18, 2
  br i1 %cmp7, label %for.body8, label %for.end15

for.body8:                                        ; preds = %for.cond6
  %19 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %normalizationMatrix = getelementptr inbounds %struct.NN, %struct.NN* %19, i32 0, i32 5
  %20 = load float**, float*** %normalizationMatrix, align 8
  %21 = load i32, i32* %i5, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds float*, float** %20, i64 %idxprom9
  %22 = load float*, float** %arrayidx10, align 8
  %23 = bitcast float* %22 to i8*
  call void @free(i8* noundef %23) #6
  %24 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix = getelementptr inbounds %struct.NN, %struct.NN* %24, i32 0, i32 6
  %25 = load float**, float*** %denormalizationMatrix, align 8
  %26 = load i32, i32* %i5, align 4
  %idxprom11 = sext i32 %26 to i64
  %arrayidx12 = getelementptr inbounds float*, float** %25, i64 %idxprom11
  %27 = load float*, float** %arrayidx12, align 8
  %28 = bitcast float* %27 to i8*
  call void @free(i8* noundef %28) #6
  br label %for.inc13

for.inc13:                                        ; preds = %for.body8
  %29 = load i32, i32* %i5, align 4
  %inc14 = add nsw i32 %29, 1
  store i32 %inc14, i32* %i5, align 4
  br label %for.cond6, !llvm.loop !74

for.end15:                                        ; preds = %for.cond6
  %30 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %normalizationMatrix16 = getelementptr inbounds %struct.NN, %struct.NN* %30, i32 0, i32 5
  %31 = load float**, float*** %normalizationMatrix16, align 8
  %32 = bitcast float** %31 to i8*
  call void @free(i8* noundef %32) #6
  %33 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix17 = getelementptr inbounds %struct.NN, %struct.NN* %33, i32 0, i32 6
  %34 = load float**, float*** %denormalizationMatrix17, align 8
  %35 = bitcast float** %34 to i8*
  call void @free(i8* noundef %35) #6
  %36 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize = getelementptr inbounds %struct.NN, %struct.NN* %36, i32 0, i32 2
  %37 = load i32*, i32** %neuronsSize, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* noundef %38) #6
  store i32 0, i32* %indexSD, align 4
  store i32 0, i32* %i18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc31, %for.end15
  %39 = load i32, i32* %i18, align 4
  %40 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber20 = getelementptr inbounds %struct.NN, %struct.NN* %40, i32 0, i32 3
  %41 = load i32, i32* %layerNumber20, align 8
  %cmp21 = icmp slt i32 %39, %41
  br i1 %cmp21, label %for.body22, label %for.end33

for.body22:                                       ; preds = %for.cond19
  %42 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerType = getelementptr inbounds %struct.NN, %struct.NN* %42, i32 0, i32 8
  %43 = load i32*, i32** %layerType, align 8
  %44 = load i32, i32* %i18, align 4
  %idxprom23 = sext i32 %44 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %43, i64 %idxprom23
  %45 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %45, 1
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  %46 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes = getelementptr inbounds %struct.NN, %struct.NN* %46, i32 0, i32 9
  %47 = load i32**, i32*** %sdNeuronsTypes, align 8
  %48 = load i32, i32* %indexSD, align 4
  %idxprom26 = sext i32 %48 to i64
  %arrayidx27 = getelementptr inbounds i32*, i32** %47, i64 %idxprom26
  %49 = load i32*, i32** %arrayidx27, align 8
  %50 = bitcast i32* %49 to i8*
  call void @free(i8* noundef %50) #6
  %51 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory = getelementptr inbounds %struct.NN, %struct.NN* %51, i32 0, i32 10
  %52 = load %struct.Matrix**, %struct.Matrix*** %SDMemory, align 8
  %53 = load i32, i32* %indexSD, align 4
  %idxprom28 = sext i32 %53 to i64
  %arrayidx29 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %52, i64 %idxprom28
  %54 = load %struct.Matrix*, %struct.Matrix** %arrayidx29, align 8
  call void @matrixDelete(%struct.Matrix* noundef %54)
  %55 = load i32, i32* %indexSD, align 4
  %inc30 = add nsw i32 %55, 1
  store i32 %inc30, i32* %indexSD, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  br label %for.inc31

for.inc31:                                        ; preds = %if.end
  %56 = load i32, i32* %i18, align 4
  %inc32 = add nsw i32 %56, 1
  store i32 %inc32, i32* %i18, align 4
  br label %for.cond19, !llvm.loop !75

for.end33:                                        ; preds = %for.cond19
  %57 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes34 = getelementptr inbounds %struct.NN, %struct.NN* %57, i32 0, i32 9
  %58 = load i32**, i32*** %sdNeuronsTypes34, align 8
  %59 = bitcast i32** %58 to i8*
  call void @free(i8* noundef %59) #6
  %60 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory35 = getelementptr inbounds %struct.NN, %struct.NN* %60, i32 0, i32 10
  %61 = load %struct.Matrix**, %struct.Matrix*** %SDMemory35, align 8
  %62 = bitcast %struct.Matrix** %61 to i8*
  call void @free(i8* noundef %62) #6
  %63 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerType36 = getelementptr inbounds %struct.NN, %struct.NN* %63, i32 0, i32 8
  %64 = load i32*, i32** %layerType36, align 8
  %65 = bitcast i32* %64 to i8*
  call void @free(i8* noundef %65) #6
  %66 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %67 = bitcast %struct.NN* %66 to i8*
  call void @free(i8* noundef %67) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanNNSystem(%struct.SystemNN* noundef %systemNN) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i14 = alloca i32, align 4
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %1, i32 0, i32 1
  %2 = load %struct.Signal*, %struct.Signal** %signal, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %2, i32 0, i32 2
  %3 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %4, i32 0, i32 3
  %5 = load %struct.Signal*, %struct.Signal** %output, align 8
  %signal1 = getelementptr inbounds %struct.Signal, %struct.Signal* %5, i32 0, i32 0
  %6 = load float*, float** %signal1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %9 = load i32, i32* %i2, align 4
  %10 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %sizeDataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %10, i32 0, i32 5
  %11 = load i32, i32* %sizeDataSystem, align 8
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %12 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %12, i32 0, i32 4
  %13 = load float*, float** %dataSystem, align 8
  %14 = load i32, i32* %i2, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %15 = load i32, i32* %i2, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %i2, align 4
  br label %for.cond3, !llvm.loop !77

for.end10:                                        ; preds = %for.cond3
  %16 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal11 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %16, i32 0, i32 1
  %17 = load %struct.Signal*, %struct.Signal** %signal11, align 8
  %dt = getelementptr inbounds %struct.Signal, %struct.Signal* %17, i32 0, i32 1
  %18 = load float, float* %dt, align 8
  %19 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem12 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %19, i32 0, i32 4
  %20 = load float*, float** %dataSystem12, align 8
  %arrayidx13 = getelementptr inbounds float, float* %20, i64 1
  store float %18, float* %arrayidx13, align 4
  store i32 0, i32* %i14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc21, %for.end10
  %21 = load i32, i32* %i14, align 4
  %22 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %22, i32 0, i32 8
  %23 = load i32*, i32** %inputDataSize, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp slt i32 %21, %24
  br i1 %cmp17, label %for.body18, label %for.end23

for.body18:                                       ; preds = %for.cond15
  %25 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %25, i32 0, i32 7
  %26 = load float*, float** %inputData, align 8
  %27 = load i32, i32* %i14, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds float, float* %26, i64 %idxprom19
  store float 0.000000e+00, float* %arrayidx20, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %for.body18
  %28 = load i32, i32* %i14, align 4
  %inc22 = add nsw i32 %28, 1
  store i32 %inc22, i32* %i14, align 4
  br label %for.cond15, !llvm.loop !78

for.end23:                                        ; preds = %for.cond15
  %29 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal24 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %29, i32 0, i32 1
  %30 = load %struct.Signal*, %struct.Signal** %signal24, align 8
  %dt25 = getelementptr inbounds %struct.Signal, %struct.Signal* %30, i32 0, i32 1
  %31 = load float, float* %dt25, align 8
  %32 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputData26 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %32, i32 0, i32 7
  %33 = load float*, float** %inputData26, align 8
  %arrayidx27 = getelementptr inbounds float, float* %33, i64 0
  store float %31, float* %arrayidx27, align 4
  %34 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %steadyRiseCheck = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %34, i32 0, i32 13
  store i32 0, i32* %steadyRiseCheck, align 4
  %35 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %maxCounter = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %35, i32 0, i32 14
  store i32 0, i32* %maxCounter, align 8
  %36 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %fit = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %36, i32 0, i32 12
  store float 0.000000e+00, float* %fit, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getMaxMinSignalValues(%struct.Signal* noundef %signal, float* noundef %max, float* noundef %min) #0 {
entry:
  %signal.addr = alloca %struct.Signal*, align 8
  %max.addr = alloca float*, align 8
  %min.addr = alloca float*, align 8
  %i = alloca i32, align 4
  store %struct.Signal* %signal, %struct.Signal** %signal.addr, align 8
  store float* %max, float** %max.addr, align 8
  store float* %min, float** %min.addr, align 8
  %0 = load float*, float** %max.addr, align 8
  store float 0.000000e+00, float* %0, align 4
  %1 = load float*, float** %min.addr, align 8
  store float 0.000000e+00, float* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %3, i32 0, i32 2
  %4 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal1 = getelementptr inbounds %struct.Signal, %struct.Signal* %5, i32 0, i32 0
  %6 = load float*, float** %signal1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4
  %9 = load float*, float** %max.addr, align 8
  %10 = load float, float* %9, align 4
  %cmp2 = fcmp ogt float %8, %10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal3 = getelementptr inbounds %struct.Signal, %struct.Signal* %11, i32 0, i32 0
  %12 = load float*, float** %signal3, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds float, float* %12, i64 %idxprom4
  %14 = load float, float* %arrayidx5, align 4
  %15 = load float*, float** %max.addr, align 8
  store float %14, float* %15, align 4
  br label %if.end14

if.else:                                          ; preds = %for.body
  %16 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal6 = getelementptr inbounds %struct.Signal, %struct.Signal* %16, i32 0, i32 0
  %17 = load float*, float** %signal6, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds float, float* %17, i64 %idxprom7
  %19 = load float, float* %arrayidx8, align 4
  %20 = load float*, float** %min.addr, align 8
  %21 = load float, float* %20, align 4
  %cmp9 = fcmp olt float %19, %21
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %22 = load %struct.Signal*, %struct.Signal** %signal.addr, align 8
  %signal11 = getelementptr inbounds %struct.Signal, %struct.Signal* %22, i32 0, i32 0
  %23 = load float*, float** %signal11, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds float, float* %23, i64 %idxprom12
  %25 = load float, float* %arrayidx13, align 4
  %26 = load float*, float** %min.addr, align 8
  store float %25, float* %26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findUOneRound(%struct.SystemNN* noundef %systemNN, float* noundef %forValues, float* noundef %Data) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %forValues.addr = alloca float*, align 8
  %Data.addr = alloca float*, align 8
  %analyzedValue = alloca float, align 4
  %maxY = alloca float, align 4
  %maxDDY = alloca float, align 4
  %maxE = alloca float, align 4
  %maxDY = alloca float, align 4
  %finValue = alloca float, align 4
  %sysOutput = alloca float, align 4
  %dy = alloca float, align 4
  %ddy = alloca float, align 4
  %iy = alloca float, align 4
  %preY = alloca float, align 4
  %preDY = alloca float, align 4
  %du = alloca float, align 4
  %ddu = alloca float, align 4
  %iu = alloca float, align 4
  %preU = alloca float, align 4
  %preDU = alloca float, align 4
  %min = alloca float, align 4
  %penalty = alloca float, align 4
  %de = alloca float, align 4
  %dde = alloca float, align 4
  %ie = alloca float, align 4
  %preE = alloca float, align 4
  %preDE = alloca float, align 4
  %maxDE = alloca float, align 4
  %maxDDE = alloca float, align 4
  %sum = alloca float, align 4
  %count = alloca i32, align 4
  %maxSig = alloca float, align 4
  %minSig = alloca float, align 4
  %curValue = alloca float, align 4
  %j = alloca i32, align 4
  %j9 = alloca float, align 4
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  store float* %forValues, float** %forValues.addr, align 8
  store float* %Data, float** %Data.addr, align 8
  store float 0x47EFFFFFE0000000, float* %min, align 4
  %0 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %0, i32 0, i32 1
  %1 = load %struct.Signal*, %struct.Signal** %signal, align 8
  call void @getMaxMinSignalValues(%struct.Signal* noundef %1, float* noundef %maxSig, float* noundef %minSig)
  %2 = load float*, float** %forValues.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  store float %3, float* %curValue, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc135, %entry
  %4 = load float, float* %curValue, align 4
  %5 = load float*, float** %forValues.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 1
  %6 = load float, float* %arrayidx1, align 4
  %cmp = fcmp olt float %4, %6
  br i1 %cmp, label %for.body, label %for.end138

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, float* %maxY, align 4
  store float 0.000000e+00, float* %maxDY, align 4
  store float 0.000000e+00, float* %maxDDY, align 4
  store float 0.000000e+00, float* %maxE, align 4
  store float 0.000000e+00, float* %maxDE, align 4
  store float 0.000000e+00, float* %maxDDE, align 4
  store i32 0, i32* %count, align 4
  store float 0.000000e+00, float* %preY, align 4
  store float 0.000000e+00, float* %preDY, align 4
  store float 0.000000e+00, float* %iy, align 4
  store float 0.000000e+00, float* %preU, align 4
  store float 0.000000e+00, float* %preDU, align 4
  store float 0.000000e+00, float* %iu, align 4
  store float 0.000000e+00, float* %preE, align 4
  store float 0.000000e+00, float* %preDE, align 4
  store float 0.000000e+00, float* %ie, align 4
  store float 0.000000e+00, float* %penalty, align 4
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %sizeDataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %8, i32 0, i32 5
  %9 = load i32, i32* %sizeDataSystem, align 8
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %10, i32 0, i32 4
  %11 = load float*, float** %dataSystem, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds float, float* %11, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !80

for.end:                                          ; preds = %for.cond2
  %14 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal6 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %14, i32 0, i32 1
  %15 = load %struct.Signal*, %struct.Signal** %signal6, align 8
  %dt = getelementptr inbounds %struct.Signal, %struct.Signal* %15, i32 0, i32 1
  %16 = load float, float* %dt, align 8
  %17 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem7 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %17, i32 0, i32 4
  %18 = load float*, float** %dataSystem7, align 8
  %arrayidx8 = getelementptr inbounds float, float* %18, i64 1
  store float %16, float* %arrayidx8, align 4
  store float 0.000000e+00, float* %j9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc84, %for.end
  %19 = load float, float* %j9, align 4
  %20 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal11 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %20, i32 0, i32 1
  %21 = load %struct.Signal*, %struct.Signal** %signal11, align 8
  %length = getelementptr inbounds %struct.Signal, %struct.Signal* %21, i32 0, i32 2
  %22 = load i32, i32* %length, align 4
  %conv = sitofp i32 %22 to float
  %cmp12 = fcmp olt float %19, %conv
  br i1 %cmp12, label %for.body14, label %for.end88

for.body14:                                       ; preds = %for.cond10
  %23 = load float, float* %j9, align 4
  %conv15 = fpext float %23 to double
  %cmp16 = fcmp olt double %conv15, 1.000000e+00
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body14
  %24 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem18 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %24, i32 0, i32 4
  %25 = load float*, float** %dataSystem18, align 8
  %arrayidx19 = getelementptr inbounds float, float* %25, i64 0
  store float 0.000000e+00, float* %arrayidx19, align 4
  br label %if.end

if.else:                                          ; preds = %for.body14
  %26 = load float, float* %curValue, align 4
  %27 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem20 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %27, i32 0, i32 4
  %28 = load float*, float** %dataSystem20, align 8
  %arrayidx21 = getelementptr inbounds float, float* %28, i64 0
  store float %26, float* %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %func_system = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %29, i32 0, i32 2
  %30 = load float (float*)*, float (float*)** %func_system, align 8
  %31 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %dataSystem22 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %31, i32 0, i32 4
  %32 = load float*, float** %dataSystem22, align 8
  %call = call float %30(float* noundef %32)
  store float %call, float* %sysOutput, align 4
  %33 = load float, float* %sysOutput, align 4
  %34 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %maxSys = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %34, i32 0, i32 10
  %35 = load float, float* %maxSys, align 8
  %cmp23 = fcmp ogt float %33, %35
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end
  store float 5.000000e+04, float* %penalty, align 4
  br label %if.end31

if.else26:                                        ; preds = %if.end
  %36 = load float, float* %sysOutput, align 4
  %37 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %minSys = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %37, i32 0, i32 11
  %38 = load float, float* %minSys, align 4
  %cmp27 = fcmp olt float %36, %38
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else26
  store float 5.000000e+04, float* %penalty, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then25
  %39 = load float, float* %sysOutput, align 4
  %40 = load float, float* %preY, align 4
  %sub = fsub float %39, %40
  %41 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %41, i32 0, i32 3
  %42 = load %struct.Signal*, %struct.Signal** %output, align 8
  %dt32 = getelementptr inbounds %struct.Signal, %struct.Signal* %42, i32 0, i32 1
  %43 = load float, float* %dt32, align 8
  %div = fdiv float %sub, %43
  store float %div, float* %dy, align 4
  %44 = load float, float* %dy, align 4
  %45 = load float, float* %preDY, align 4
  %sub33 = fsub float %44, %45
  %46 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output34 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %46, i32 0, i32 3
  %47 = load %struct.Signal*, %struct.Signal** %output34, align 8
  %dt35 = getelementptr inbounds %struct.Signal, %struct.Signal* %47, i32 0, i32 1
  %48 = load float, float* %dt35, align 8
  %div36 = fdiv float %sub33, %48
  store float %div36, float* %ddy, align 4
  %49 = load float, float* %maxSig, align 4
  %50 = load float, float* %sysOutput, align 4
  %sub37 = fsub float %49, %50
  %51 = load float, float* %preE, align 4
  %sub38 = fsub float %sub37, %51
  %52 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output39 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %52, i32 0, i32 3
  %53 = load %struct.Signal*, %struct.Signal** %output39, align 8
  %dt40 = getelementptr inbounds %struct.Signal, %struct.Signal* %53, i32 0, i32 1
  %54 = load float, float* %dt40, align 8
  %div41 = fdiv float %sub38, %54
  store float %div41, float* %de, align 4
  %55 = load float, float* %de, align 4
  %56 = load float, float* %preDE, align 4
  %sub42 = fsub float %55, %56
  %57 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output43 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %57, i32 0, i32 3
  %58 = load %struct.Signal*, %struct.Signal** %output43, align 8
  %dt44 = getelementptr inbounds %struct.Signal, %struct.Signal* %58, i32 0, i32 1
  %59 = load float, float* %dt44, align 8
  %div45 = fdiv float %sub42, %59
  store float %div45, float* %dde, align 4
  %60 = load float, float* %sysOutput, align 4
  store float %60, float* %preY, align 4
  %61 = load float, float* %dy, align 4
  store float %61, float* %preDY, align 4
  %62 = load float, float* %maxSig, align 4
  %63 = load float, float* %sysOutput, align 4
  %sub46 = fsub float %62, %63
  store float %sub46, float* %preE, align 4
  %64 = load float, float* %de, align 4
  store float %64, float* %preDE, align 4
  %65 = load float, float* %sysOutput, align 4
  %66 = load float, float* %maxY, align 4
  %cmp47 = fcmp ogt float %65, %66
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end31
  %67 = load float, float* %sysOutput, align 4
  store float %67, float* %maxY, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end31
  %68 = load float, float* %preE, align 4
  %69 = load float, float* %maxE, align 4
  %cmp51 = fcmp ogt float %68, %69
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  %70 = load float, float* %preE, align 4
  store float %70, float* %maxE, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %71 = load float, float* %dy, align 4
  %72 = load float, float* %maxDY, align 4
  %cmp55 = fcmp ogt float %71, %72
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  %73 = load float, float* %dy, align 4
  store float %73, float* %maxDY, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54
  %74 = load float, float* %ddy, align 4
  %75 = load float, float* %maxDDY, align 4
  %cmp59 = fcmp ogt float %74, %75
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end58
  %76 = load float, float* %ddy, align 4
  store float %76, float* %maxDDY, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end58
  %77 = load float, float* %de, align 4
  %78 = load float, float* %maxDE, align 4
  %cmp63 = fcmp ogt float %77, %78
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  %79 = load float, float* %de, align 4
  store float %79, float* %maxDE, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end62
  %80 = load float, float* %dde, align 4
  %81 = load float, float* %maxDDE, align 4
  %cmp67 = fcmp ogt float %80, %81
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end66
  %82 = load float, float* %dde, align 4
  store float %82, float* %maxDDE, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66
  %83 = load float, float* %sysOutput, align 4
  %84 = load float, float* %iy, align 4
  %add = fadd float %84, %83
  store float %add, float* %iy, align 4
  %85 = load float, float* %curValue, align 4
  %86 = load float, float* %iu, align 4
  %add71 = fadd float %86, %85
  store float %add71, float* %iu, align 4
  %87 = load float, float* %preE, align 4
  %88 = load float, float* %ie, align 4
  %add72 = fadd float %88, %87
  store float %add72, float* %ie, align 4
  %89 = load float, float* %j9, align 4
  %conv73 = fpext float %89 to double
  %90 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal74 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %90, i32 0, i32 1
  %91 = load %struct.Signal*, %struct.Signal** %signal74, align 8
  %length75 = getelementptr inbounds %struct.Signal, %struct.Signal* %91, i32 0, i32 2
  %92 = load i32, i32* %length75, align 4
  %conv76 = sitofp i32 %92 to double
  %sub77 = fsub double %conv76, 1.000000e+00
  %cmp78 = fcmp ogt double %conv73, %sub77
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end70
  %93 = load float, float* %sysOutput, align 4
  %94 = load float, float* %sum, align 4
  %add81 = fadd float %94, %93
  store float %add81, float* %sum, align 4
  %95 = load i32, i32* %count, align 4
  %inc82 = add nsw i32 %95, 1
  store i32 %inc82, i32* %count, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end70
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %96 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %signal85 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %96, i32 0, i32 1
  %97 = load %struct.Signal*, %struct.Signal** %signal85, align 8
  %dt86 = getelementptr inbounds %struct.Signal, %struct.Signal* %97, i32 0, i32 1
  %98 = load float, float* %dt86, align 8
  %99 = load float, float* %j9, align 4
  %add87 = fadd float %99, %98
  store float %add87, float* %j9, align 4
  br label %for.cond10, !llvm.loop !81

for.end88:                                        ; preds = %for.cond10
  %100 = load float, float* %maxSig, align 4
  %101 = load float, float* %sum, align 4
  %102 = load i32, i32* %count, align 4
  %conv89 = sitofp i32 %102 to float
  %div90 = fdiv float %101, %conv89
  %sub91 = fsub float %100, %div90
  %103 = load float, float* %penalty, align 4
  %add92 = fadd float %sub91, %103
  store float %add92, float* %analyzedValue, align 4
  %104 = load float, float* %analyzedValue, align 4
  %cmp93 = fcmp olt float %104, 0.000000e+00
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %for.end88
  %105 = load float, float* %analyzedValue, align 4
  %mul = fmul float %105, -1.000000e+00
  store float %mul, float* %analyzedValue, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %for.end88
  %106 = load float, float* %iy, align 4
  %cmp97 = fcmp olt float %106, 0.000000e+00
  br i1 %cmp97, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end96
  %107 = load float, float* %iy, align 4
  %mul100 = fmul float %107, -1.000000e+00
  store float %mul100, float* %iy, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end96
  %108 = load float, float* %iu, align 4
  %cmp102 = fcmp olt float %108, 0.000000e+00
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end101
  %109 = load float, float* %iu, align 4
  %mul105 = fmul float %109, -1.000000e+00
  store float %mul105, float* %iu, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end101
  %110 = load float, float* %ie, align 4
  %cmp107 = fcmp olt float %110, 0.000000e+00
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end106
  %111 = load float, float* %ie, align 4
  %mul110 = fmul float %111, -1.000000e+00
  store float %mul110, float* %ie, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end106
  %112 = load float, float* %analyzedValue, align 4
  %113 = load float, float* %min, align 4
  %cmp112 = fcmp olt float %112, %113
  br i1 %cmp112, label %if.then114, label %if.end134

if.then114:                                       ; preds = %if.end111
  %114 = load float, float* %analyzedValue, align 4
  store float %114, float* %min, align 4
  %115 = load float, float* %maxE, align 4
  %116 = load float*, float** %Data.addr, align 8
  %arrayidx115 = getelementptr inbounds float, float* %116, i64 0
  store float %115, float* %arrayidx115, align 4
  %117 = load float, float* %curValue, align 4
  %118 = load float*, float** %Data.addr, align 8
  %arrayidx116 = getelementptr inbounds float, float* %118, i64 1
  store float %117, float* %arrayidx116, align 4
  %119 = load float, float* %maxY, align 4
  %120 = load float*, float** %Data.addr, align 8
  %arrayidx117 = getelementptr inbounds float, float* %120, i64 2
  store float %119, float* %arrayidx117, align 4
  %121 = load float, float* %maxDE, align 4
  %122 = load float*, float** %Data.addr, align 8
  %arrayidx118 = getelementptr inbounds float, float* %122, i64 3
  store float %121, float* %arrayidx118, align 4
  %123 = load float, float* %maxDDE, align 4
  %124 = load float*, float** %Data.addr, align 8
  %arrayidx119 = getelementptr inbounds float, float* %124, i64 4
  store float %123, float* %arrayidx119, align 4
  %125 = load float, float* %ie, align 4
  %126 = load float*, float** %Data.addr, align 8
  %arrayidx120 = getelementptr inbounds float, float* %126, i64 5
  store float %125, float* %arrayidx120, align 4
  %127 = load float, float* %curValue, align 4
  %128 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output121 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %128, i32 0, i32 3
  %129 = load %struct.Signal*, %struct.Signal** %output121, align 8
  %dt122 = getelementptr inbounds %struct.Signal, %struct.Signal* %129, i32 0, i32 1
  %130 = load float, float* %dt122, align 8
  %div123 = fdiv float %127, %130
  %131 = load float*, float** %Data.addr, align 8
  %arrayidx124 = getelementptr inbounds float, float* %131, i64 6
  store float %div123, float* %arrayidx124, align 4
  %132 = load float*, float** %Data.addr, align 8
  %arrayidx125 = getelementptr inbounds float, float* %132, i64 7
  %133 = load float, float* %arrayidx125, align 4
  %134 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %output126 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %134, i32 0, i32 3
  %135 = load %struct.Signal*, %struct.Signal** %output126, align 8
  %dt127 = getelementptr inbounds %struct.Signal, %struct.Signal* %135, i32 0, i32 1
  %136 = load float, float* %dt127, align 8
  %div128 = fdiv float %133, %136
  %137 = load float*, float** %Data.addr, align 8
  %arrayidx129 = getelementptr inbounds float, float* %137, i64 7
  store float %div128, float* %arrayidx129, align 4
  %138 = load float, float* %iu, align 4
  %139 = load float*, float** %Data.addr, align 8
  %arrayidx130 = getelementptr inbounds float, float* %139, i64 8
  store float %138, float* %arrayidx130, align 4
  %140 = load float, float* %maxDY, align 4
  %141 = load float*, float** %Data.addr, align 8
  %arrayidx131 = getelementptr inbounds float, float* %141, i64 9
  store float %140, float* %arrayidx131, align 4
  %142 = load float, float* %maxDDY, align 4
  %143 = load float*, float** %Data.addr, align 8
  %arrayidx132 = getelementptr inbounds float, float* %143, i64 10
  store float %142, float* %arrayidx132, align 4
  %144 = load float, float* %iy, align 4
  %145 = load float*, float** %Data.addr, align 8
  %arrayidx133 = getelementptr inbounds float, float* %145, i64 11
  store float %144, float* %arrayidx133, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then114, %if.end111
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %146 = load float*, float** %forValues.addr, align 8
  %arrayidx136 = getelementptr inbounds float, float* %146, i64 2
  %147 = load float, float* %arrayidx136, align 4
  %148 = load float, float* %curValue, align 4
  %add137 = fadd float %148, %147
  store float %add137, float* %curValue, align 4
  br label %for.cond, !llvm.loop !82

for.end138:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findUForSystemAndSignal(%struct.SystemNN* noundef %systemNN, float* noundef %Data) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %Data.addr = alloca float*, align 8
  %forValueOne = alloca [3 x float], align 4
  %forValueTwo = alloca [3 x float], align 4
  %forValueThree = alloca [3 x float], align 4
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  store float* %Data, float** %Data.addr, align 8
  %0 = bitcast [3 x float]* %forValueOne to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x float]* @__const.findUForSystemAndSignal.forValueOne to i8*), i64 12, i1 false)
  %1 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %2 = bitcast [3 x float]* %forValueOne to float*
  %3 = load float*, float** %Data.addr, align 8
  call void @findUOneRound(%struct.SystemNN* noundef %1, float* noundef %2, float* noundef %3)
  %arrayinit.begin = getelementptr inbounds [3 x float], [3 x float]* %forValueTwo, i64 0, i64 0
  %4 = load float*, float** %Data.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 1
  %5 = load float, float* %arrayidx, align 4
  %conv = fpext float %5 to double
  %sub = fsub double %conv, 1.000000e+02
  %conv1 = fptrunc double %sub to float
  store float %conv1, float* %arrayinit.begin, align 4
  %arrayinit.element = getelementptr inbounds float, float* %arrayinit.begin, i64 1
  %6 = load float*, float** %Data.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 1
  %7 = load float, float* %arrayidx2, align 4
  %conv3 = fpext float %7 to double
  %add = fadd double %conv3, 1.000000e+02
  %conv4 = fptrunc double %add to float
  store float %conv4, float* %arrayinit.element, align 4
  %arrayinit.element5 = getelementptr inbounds float, float* %arrayinit.element, i64 1
  store float 1.000000e+01, float* %arrayinit.element5, align 4
  %8 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %9 = bitcast [3 x float]* %forValueTwo to float*
  %10 = load float*, float** %Data.addr, align 8
  call void @findUOneRound(%struct.SystemNN* noundef %8, float* noundef %9, float* noundef %10)
  %arrayinit.begin6 = getelementptr inbounds [3 x float], [3 x float]* %forValueThree, i64 0, i64 0
  %11 = load float*, float** %Data.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 1
  %12 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %12 to double
  %sub9 = fsub double %conv8, 1.000000e+01
  %conv10 = fptrunc double %sub9 to float
  store float %conv10, float* %arrayinit.begin6, align 4
  %arrayinit.element11 = getelementptr inbounds float, float* %arrayinit.begin6, i64 1
  %13 = load float*, float** %Data.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %13, i64 1
  %14 = load float, float* %arrayidx12, align 4
  %conv13 = fpext float %14 to double
  %add14 = fadd double %conv13, 1.000000e+01
  %conv15 = fptrunc double %add14 to float
  store float %conv15, float* %arrayinit.element11, align 4
  %arrayinit.element16 = getelementptr inbounds float, float* %arrayinit.element11, i64 1
  store float 1.000000e+00, float* %arrayinit.element16, align 4
  %15 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %16 = bitcast [3 x float]* %forValueThree to float*
  %17 = load float*, float** %Data.addr, align 8
  call void @findUOneRound(%struct.SystemNN* noundef %15, float* noundef %16, float* noundef %17)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal float @makeDerivation(float* noundef %x, float* noundef %x_t, float* noundef %dt) #0 {
entry:
  %x.addr = alloca float*, align 8
  %x_t.addr = alloca float*, align 8
  %dt.addr = alloca float*, align 8
  store float* %x, float** %x.addr, align 8
  store float* %x_t, float** %x_t.addr, align 8
  store float* %dt, float** %dt.addr, align 8
  %0 = load float*, float** %x.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load float*, float** %x_t.addr, align 8
  %3 = load float, float* %2, align 4
  %sub = fsub float %1, %3
  %4 = load float*, float** %dt.addr, align 8
  %5 = load float, float* %4, align 4
  %div = fdiv float %sub, %5
  ret float %div
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createDeNormalization(%struct.SystemNN* noundef %systemNN) #0 {
entry:
  %systemNN.addr = alloca %struct.SystemNN*, align 8
  %normalization = alloca float**, align 8
  %Data = alloca float*, align 8
  %i = alloca i32, align 4
  store %struct.SystemNN* %systemNN, %struct.SystemNN** %systemNN.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #6
  %0 = bitcast i8* %call to float**
  store float** %0, float*** %normalization, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 48) #6
  %1 = bitcast i8* %call1 to float*
  %2 = load float**, float*** %normalization, align 8
  %arrayidx = getelementptr inbounds float*, float** %2, i64 0
  store float* %1, float** %arrayidx, align 8
  %call2 = call noalias i8* @malloc(i64 noundef 48) #6
  %3 = bitcast i8* %call2 to float*
  %4 = load float**, float*** %normalization, align 8
  %arrayidx3 = getelementptr inbounds float*, float** %4, i64 1
  store float* %3, float** %arrayidx3, align 8
  %call4 = call noalias i8* @malloc(i64 noundef 48) #6
  %5 = bitcast i8* %call4 to float*
  store float* %5, float** %Data, align 8
  %6 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %7 = load float*, float** %Data, align 8
  call void @findUForSystemAndSignal(%struct.SystemNN* noundef %6, float* noundef %7)
  %8 = load float*, float** %Data, align 8
  %arrayidx5 = getelementptr inbounds float, float* %8, i64 0
  %9 = load float, float* %arrayidx5, align 4
  %10 = load float**, float*** %normalization, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %10, i64 0
  %11 = load float*, float** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 0
  store float %9, float* %arrayidx7, align 4
  %12 = load float*, float** %Data, align 8
  %arrayidx8 = getelementptr inbounds float, float* %12, i64 0
  %13 = load float, float* %arrayidx8, align 4
  %mul = fmul float %13, -1.000000e+00
  %14 = load float**, float*** %normalization, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %14, i64 1
  %15 = load float*, float** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds float, float* %15, i64 0
  store float %mul, float* %arrayidx10, align 4
  %16 = load float*, float** %Data, align 8
  %arrayidx11 = getelementptr inbounds float, float* %16, i64 0
  %17 = load float, float* %arrayidx11, align 4
  %conv = fpext float %17 to double
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), double noundef %conv)
  %18 = load float*, float** %Data, align 8
  %arrayidx13 = getelementptr inbounds float, float* %18, i64 1
  %19 = load float, float* %arrayidx13, align 4
  %20 = load float**, float*** %normalization, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %20, i64 0
  %21 = load float*, float** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds float, float* %21, i64 1
  store float %19, float* %arrayidx15, align 4
  %22 = load float*, float** %Data, align 8
  %arrayidx16 = getelementptr inbounds float, float* %22, i64 1
  %23 = load float, float* %arrayidx16, align 4
  %mul17 = fmul float %23, -1.000000e+00
  %24 = load float**, float*** %normalization, align 8
  %arrayidx18 = getelementptr inbounds float*, float** %24, i64 1
  %25 = load float*, float** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds float, float* %25, i64 1
  store float %mul17, float* %arrayidx19, align 4
  %26 = load float*, float** %Data, align 8
  %arrayidx20 = getelementptr inbounds float, float* %26, i64 1
  %27 = load float, float* %arrayidx20, align 4
  %conv21 = fpext float %27 to double
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), double noundef %conv21)
  %28 = load float*, float** %Data, align 8
  %arrayidx23 = getelementptr inbounds float, float* %28, i64 2
  %29 = load float, float* %arrayidx23, align 4
  %30 = load float**, float*** %normalization, align 8
  %arrayidx24 = getelementptr inbounds float*, float** %30, i64 0
  %31 = load float*, float** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds float, float* %31, i64 2
  store float %29, float* %arrayidx25, align 4
  %32 = load float*, float** %Data, align 8
  %arrayidx26 = getelementptr inbounds float, float* %32, i64 2
  %33 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %33, -1.000000e+00
  %34 = load float**, float*** %normalization, align 8
  %arrayidx28 = getelementptr inbounds float*, float** %34, i64 1
  %35 = load float*, float** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds float, float* %35, i64 2
  store float %mul27, float* %arrayidx29, align 4
  %36 = load float*, float** %Data, align 8
  %arrayidx30 = getelementptr inbounds float, float* %36, i64 2
  %37 = load float, float* %arrayidx30, align 4
  %conv31 = fpext float %37 to double
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), double noundef %conv31)
  %38 = load float*, float** %Data, align 8
  %arrayidx33 = getelementptr inbounds float, float* %38, i64 3
  %39 = load float, float* %arrayidx33, align 4
  %40 = load float**, float*** %normalization, align 8
  %arrayidx34 = getelementptr inbounds float*, float** %40, i64 0
  %41 = load float*, float** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds float, float* %41, i64 3
  store float %39, float* %arrayidx35, align 4
  %42 = load float*, float** %Data, align 8
  %arrayidx36 = getelementptr inbounds float, float* %42, i64 3
  %43 = load float, float* %arrayidx36, align 4
  %mul37 = fmul float %43, -1.000000e+00
  %44 = load float**, float*** %normalization, align 8
  %arrayidx38 = getelementptr inbounds float*, float** %44, i64 1
  %45 = load float*, float** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds float, float* %45, i64 3
  store float %mul37, float* %arrayidx39, align 4
  %46 = load float*, float** %Data, align 8
  %arrayidx40 = getelementptr inbounds float, float* %46, i64 3
  %47 = load float, float* %arrayidx40, align 4
  %conv41 = fpext float %47 to double
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), double noundef %conv41)
  %48 = load float*, float** %Data, align 8
  %arrayidx43 = getelementptr inbounds float, float* %48, i64 4
  %49 = load float, float* %arrayidx43, align 4
  %50 = load float**, float*** %normalization, align 8
  %arrayidx44 = getelementptr inbounds float*, float** %50, i64 0
  %51 = load float*, float** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds float, float* %51, i64 4
  store float %49, float* %arrayidx45, align 4
  %52 = load float*, float** %Data, align 8
  %arrayidx46 = getelementptr inbounds float, float* %52, i64 4
  %53 = load float, float* %arrayidx46, align 4
  %mul47 = fmul float %53, -1.000000e+00
  %54 = load float**, float*** %normalization, align 8
  %arrayidx48 = getelementptr inbounds float*, float** %54, i64 1
  %55 = load float*, float** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds float, float* %55, i64 4
  store float %mul47, float* %arrayidx49, align 4
  %56 = load float*, float** %Data, align 8
  %arrayidx50 = getelementptr inbounds float, float* %56, i64 4
  %57 = load float, float* %arrayidx50, align 4
  %conv51 = fpext float %57 to double
  %call52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), double noundef %conv51)
  %58 = load float*, float** %Data, align 8
  %arrayidx53 = getelementptr inbounds float, float* %58, i64 5
  %59 = load float, float* %arrayidx53, align 4
  %60 = load float**, float*** %normalization, align 8
  %arrayidx54 = getelementptr inbounds float*, float** %60, i64 0
  %61 = load float*, float** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds float, float* %61, i64 5
  store float %59, float* %arrayidx55, align 4
  %62 = load float*, float** %Data, align 8
  %arrayidx56 = getelementptr inbounds float, float* %62, i64 5
  %63 = load float, float* %arrayidx56, align 4
  %mul57 = fmul float %63, -1.000000e+00
  %64 = load float**, float*** %normalization, align 8
  %arrayidx58 = getelementptr inbounds float*, float** %64, i64 1
  %65 = load float*, float** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds float, float* %65, i64 5
  store float %mul57, float* %arrayidx59, align 4
  %66 = load float*, float** %Data, align 8
  %arrayidx60 = getelementptr inbounds float, float* %66, i64 5
  %67 = load float, float* %arrayidx60, align 4
  %conv61 = fpext float %67 to double
  %call62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), double noundef %conv61)
  %68 = load float*, float** %Data, align 8
  %arrayidx63 = getelementptr inbounds float, float* %68, i64 6
  %69 = load float, float* %arrayidx63, align 4
  %70 = load float**, float*** %normalization, align 8
  %arrayidx64 = getelementptr inbounds float*, float** %70, i64 0
  %71 = load float*, float** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds float, float* %71, i64 6
  store float %69, float* %arrayidx65, align 4
  %72 = load float*, float** %Data, align 8
  %arrayidx66 = getelementptr inbounds float, float* %72, i64 6
  %73 = load float, float* %arrayidx66, align 4
  %mul67 = fmul float %73, -1.000000e+00
  %74 = load float**, float*** %normalization, align 8
  %arrayidx68 = getelementptr inbounds float*, float** %74, i64 1
  %75 = load float*, float** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds float, float* %75, i64 6
  store float %mul67, float* %arrayidx69, align 4
  %76 = load float*, float** %Data, align 8
  %arrayidx70 = getelementptr inbounds float, float* %76, i64 6
  %77 = load float, float* %arrayidx70, align 4
  %conv71 = fpext float %77 to double
  %call72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), double noundef %conv71)
  %78 = load float*, float** %Data, align 8
  %arrayidx73 = getelementptr inbounds float, float* %78, i64 7
  %79 = load float, float* %arrayidx73, align 4
  %80 = load float**, float*** %normalization, align 8
  %arrayidx74 = getelementptr inbounds float*, float** %80, i64 0
  %81 = load float*, float** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds float, float* %81, i64 7
  store float %79, float* %arrayidx75, align 4
  %82 = load float*, float** %Data, align 8
  %arrayidx76 = getelementptr inbounds float, float* %82, i64 7
  %83 = load float, float* %arrayidx76, align 4
  %mul77 = fmul float %83, -1.000000e+00
  %84 = load float**, float*** %normalization, align 8
  %arrayidx78 = getelementptr inbounds float*, float** %84, i64 1
  %85 = load float*, float** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds float, float* %85, i64 7
  store float %mul77, float* %arrayidx79, align 4
  %86 = load float*, float** %Data, align 8
  %arrayidx80 = getelementptr inbounds float, float* %86, i64 7
  %87 = load float, float* %arrayidx80, align 4
  %conv81 = fpext float %87 to double
  %call82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), double noundef %conv81)
  %88 = load float*, float** %Data, align 8
  %arrayidx83 = getelementptr inbounds float, float* %88, i64 8
  %89 = load float, float* %arrayidx83, align 4
  %90 = load float**, float*** %normalization, align 8
  %arrayidx84 = getelementptr inbounds float*, float** %90, i64 0
  %91 = load float*, float** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds float, float* %91, i64 8
  store float %89, float* %arrayidx85, align 4
  %92 = load float*, float** %Data, align 8
  %arrayidx86 = getelementptr inbounds float, float* %92, i64 8
  %93 = load float, float* %arrayidx86, align 4
  %mul87 = fmul float %93, -1.000000e+00
  %94 = load float**, float*** %normalization, align 8
  %arrayidx88 = getelementptr inbounds float*, float** %94, i64 1
  %95 = load float*, float** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds float, float* %95, i64 8
  store float %mul87, float* %arrayidx89, align 4
  %96 = load float*, float** %Data, align 8
  %arrayidx90 = getelementptr inbounds float, float* %96, i64 8
  %97 = load float, float* %arrayidx90, align 4
  %conv91 = fpext float %97 to double
  %call92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), double noundef %conv91)
  %98 = load float*, float** %Data, align 8
  %arrayidx93 = getelementptr inbounds float, float* %98, i64 9
  %99 = load float, float* %arrayidx93, align 4
  %100 = load float**, float*** %normalization, align 8
  %arrayidx94 = getelementptr inbounds float*, float** %100, i64 0
  %101 = load float*, float** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds float, float* %101, i64 9
  store float %99, float* %arrayidx95, align 4
  %102 = load float*, float** %Data, align 8
  %arrayidx96 = getelementptr inbounds float, float* %102, i64 9
  %103 = load float, float* %arrayidx96, align 4
  %mul97 = fmul float %103, -1.000000e+00
  %104 = load float**, float*** %normalization, align 8
  %arrayidx98 = getelementptr inbounds float*, float** %104, i64 1
  %105 = load float*, float** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds float, float* %105, i64 9
  store float %mul97, float* %arrayidx99, align 4
  %106 = load float*, float** %Data, align 8
  %arrayidx100 = getelementptr inbounds float, float* %106, i64 9
  %107 = load float, float* %arrayidx100, align 4
  %conv101 = fpext float %107 to double
  %call102 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), double noundef %conv101)
  %108 = load float*, float** %Data, align 8
  %arrayidx103 = getelementptr inbounds float, float* %108, i64 10
  %109 = load float, float* %arrayidx103, align 4
  %110 = load float**, float*** %normalization, align 8
  %arrayidx104 = getelementptr inbounds float*, float** %110, i64 0
  %111 = load float*, float** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds float, float* %111, i64 10
  store float %109, float* %arrayidx105, align 4
  %112 = load float*, float** %Data, align 8
  %arrayidx106 = getelementptr inbounds float, float* %112, i64 10
  %113 = load float, float* %arrayidx106, align 4
  %mul107 = fmul float %113, -1.000000e+00
  %114 = load float**, float*** %normalization, align 8
  %arrayidx108 = getelementptr inbounds float*, float** %114, i64 1
  %115 = load float*, float** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds float, float* %115, i64 10
  store float %mul107, float* %arrayidx109, align 4
  %116 = load float*, float** %Data, align 8
  %arrayidx110 = getelementptr inbounds float, float* %116, i64 10
  %117 = load float, float* %arrayidx110, align 4
  %conv111 = fpext float %117 to double
  %call112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), double noundef %conv111)
  %118 = load float*, float** %Data, align 8
  %arrayidx113 = getelementptr inbounds float, float* %118, i64 11
  %119 = load float, float* %arrayidx113, align 4
  %120 = load float**, float*** %normalization, align 8
  %arrayidx114 = getelementptr inbounds float*, float** %120, i64 0
  %121 = load float*, float** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds float, float* %121, i64 11
  store float %119, float* %arrayidx115, align 4
  %122 = load float*, float** %Data, align 8
  %arrayidx116 = getelementptr inbounds float, float* %122, i64 11
  %123 = load float, float* %arrayidx116, align 4
  %mul117 = fmul float %123, -1.000000e+00
  %124 = load float**, float*** %normalization, align 8
  %arrayidx118 = getelementptr inbounds float*, float** %124, i64 1
  %125 = load float*, float** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds float, float* %125, i64 11
  store float %mul117, float* %arrayidx119, align 4
  %126 = load float*, float** %Data, align 8
  %arrayidx120 = getelementptr inbounds float, float* %126, i64 11
  %127 = load float, float* %arrayidx120, align 4
  %conv121 = fpext float %127 to double
  %call122 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), double noundef %conv121)
  %128 = load float**, float*** %normalization, align 8
  %arrayidx123 = getelementptr inbounds float*, float** %128, i64 0
  %129 = load float*, float** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds float, float* %129, i64 1
  %130 = load float, float* %arrayidx124, align 4
  %conv125 = fpext float %130 to double
  %mul126 = fmul double %conv125, 1.000000e+01
  %conv127 = fptrunc double %mul126 to float
  store float %conv127, float* %arrayidx124, align 4
  %131 = load float**, float*** %normalization, align 8
  %arrayidx128 = getelementptr inbounds float*, float** %131, i64 1
  %132 = load float*, float** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds float, float* %132, i64 1
  %133 = load float, float* %arrayidx129, align 4
  %conv130 = fpext float %133 to double
  %mul131 = fmul double %conv130, 1.000000e+01
  %conv132 = fptrunc double %mul131 to float
  store float %conv132, float* %arrayidx129, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %134 = load i32, i32* %i, align 4
  %135 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputDataSize = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %135, i32 0, i32 8
  %136 = load i32*, i32** %inputDataSize, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %136, i64 2
  %137 = load i32, i32* %arrayidx133, align 4
  %sub = sub nsw i32 %137, 1
  %cmp = icmp slt i32 %134, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %138 = load float**, float*** %normalization, align 8
  %arrayidx135 = getelementptr inbounds float*, float** %138, i64 0
  %139 = load float*, float** %arrayidx135, align 8
  %140 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %140, i32 0, i32 9
  %141 = load i32*, i32** %inputTypes, align 8
  %142 = load i32, i32* %i, align 4
  %idxprom = sext i32 %142 to i64
  %arrayidx136 = getelementptr inbounds i32, i32* %141, i64 %idxprom
  %143 = load i32, i32* %arrayidx136, align 4
  %idxprom137 = sext i32 %143 to i64
  %arrayidx138 = getelementptr inbounds float, float* %139, i64 %idxprom137
  %144 = load float, float* %arrayidx138, align 4
  %145 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %145, i32 0, i32 0
  %146 = load %struct.NN*, %struct.NN** %neuralNetwork, align 8
  %normalizationMatrix = getelementptr inbounds %struct.NN, %struct.NN* %146, i32 0, i32 5
  %147 = load float**, float*** %normalizationMatrix, align 8
  %arrayidx139 = getelementptr inbounds float*, float** %147, i64 0
  %148 = load float*, float** %arrayidx139, align 8
  %149 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %149 to i64
  %arrayidx141 = getelementptr inbounds float, float* %148, i64 %idxprom140
  store float %144, float* %arrayidx141, align 4
  %150 = load float**, float*** %normalization, align 8
  %arrayidx142 = getelementptr inbounds float*, float** %150, i64 1
  %151 = load float*, float** %arrayidx142, align 8
  %152 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes143 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %152, i32 0, i32 9
  %153 = load i32*, i32** %inputTypes143, align 8
  %154 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %154 to i64
  %arrayidx145 = getelementptr inbounds i32, i32* %153, i64 %idxprom144
  %155 = load i32, i32* %arrayidx145, align 4
  %idxprom146 = sext i32 %155 to i64
  %arrayidx147 = getelementptr inbounds float, float* %151, i64 %idxprom146
  %156 = load float, float* %arrayidx147, align 4
  %157 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork148 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %157, i32 0, i32 0
  %158 = load %struct.NN*, %struct.NN** %neuralNetwork148, align 8
  %normalizationMatrix149 = getelementptr inbounds %struct.NN, %struct.NN* %158, i32 0, i32 5
  %159 = load float**, float*** %normalizationMatrix149, align 8
  %arrayidx150 = getelementptr inbounds float*, float** %159, i64 1
  %160 = load float*, float** %arrayidx150, align 8
  %161 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %161 to i64
  %arrayidx152 = getelementptr inbounds float, float* %160, i64 %idxprom151
  store float %156, float* %arrayidx152, align 4
  %162 = load i32, i32* %i, align 4
  %163 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork153 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %163, i32 0, i32 0
  %164 = load %struct.NN*, %struct.NN** %neuralNetwork153, align 8
  %normalizationMatrix154 = getelementptr inbounds %struct.NN, %struct.NN* %164, i32 0, i32 5
  %165 = load float**, float*** %normalizationMatrix154, align 8
  %arrayidx155 = getelementptr inbounds float*, float** %165, i64 0
  %166 = load float*, float** %arrayidx155, align 8
  %167 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %167 to i64
  %arrayidx157 = getelementptr inbounds float, float* %166, i64 %idxprom156
  %168 = load float, float* %arrayidx157, align 4
  %conv158 = fpext float %168 to double
  %169 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork159 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %169, i32 0, i32 0
  %170 = load %struct.NN*, %struct.NN** %neuralNetwork159, align 8
  %normalizationMatrix160 = getelementptr inbounds %struct.NN, %struct.NN* %170, i32 0, i32 5
  %171 = load float**, float*** %normalizationMatrix160, align 8
  %arrayidx161 = getelementptr inbounds float*, float** %171, i64 1
  %172 = load float*, float** %arrayidx161, align 8
  %173 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %173 to i64
  %arrayidx163 = getelementptr inbounds float, float* %172, i64 %idxprom162
  %174 = load float, float* %arrayidx163, align 4
  %conv164 = fpext float %174 to double
  %call165 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 noundef %162, double noundef %conv158, double noundef %conv164)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %175 = load i32, i32* %i, align 4
  %inc = add nsw i32 %175, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  %176 = load float**, float*** %normalization, align 8
  %arrayidx166 = getelementptr inbounds float*, float** %176, i64 0
  %177 = load float*, float** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds float, float* %177, i64 1
  %178 = load float, float* %arrayidx167, align 4
  %179 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork168 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %179, i32 0, i32 0
  %180 = load %struct.NN*, %struct.NN** %neuralNetwork168, align 8
  %denormalizationMatrix = getelementptr inbounds %struct.NN, %struct.NN* %180, i32 0, i32 6
  %181 = load float**, float*** %denormalizationMatrix, align 8
  %arrayidx169 = getelementptr inbounds float*, float** %181, i64 0
  %182 = load float*, float** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds float, float* %182, i64 0
  store float %178, float* %arrayidx170, align 4
  %183 = load float**, float*** %normalization, align 8
  %arrayidx171 = getelementptr inbounds float*, float** %183, i64 1
  %184 = load float*, float** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds float, float* %184, i64 1
  %185 = load float, float* %arrayidx172, align 4
  %186 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %neuralNetwork173 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %186, i32 0, i32 0
  %187 = load %struct.NN*, %struct.NN** %neuralNetwork173, align 8
  %denormalizationMatrix174 = getelementptr inbounds %struct.NN, %struct.NN* %187, i32 0, i32 6
  %188 = load float**, float*** %denormalizationMatrix174, align 8
  %arrayidx175 = getelementptr inbounds float*, float** %188, i64 1
  %189 = load float*, float** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds float, float* %189, i64 0
  store float %185, float* %arrayidx176, align 4
  %190 = load float**, float*** %normalization, align 8
  %arrayidx177 = getelementptr inbounds float*, float** %190, i64 0
  %191 = load float*, float** %arrayidx177, align 8
  %192 = bitcast float* %191 to i8*
  call void @free(i8* noundef %192) #6
  %193 = load float**, float*** %normalization, align 8
  %arrayidx178 = getelementptr inbounds float*, float** %193, i64 1
  %194 = load float*, float** %arrayidx178, align 8
  %195 = bitcast float* %194 to i8*
  call void @free(i8* noundef %195) #6
  %196 = load float**, float*** %normalization, align 8
  %197 = bitcast float** %196 to i8*
  call void @free(i8* noundef %197) #6
  %198 = load float*, float** %Data, align 8
  %199 = bitcast float* %198 to i8*
  call void @free(i8* noundef %199) #6
  %200 = load %struct.SystemNN*, %struct.SystemNN** %systemNN.addr, align 8
  %inputTypes179 = getelementptr inbounds %struct.SystemNN, %struct.SystemNN* %200, i32 0, i32 9
  %201 = load i32*, i32** %inputTypes179, align 8
  %202 = bitcast i32* %201 to i8*
  call void @free(i8* noundef %202) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearSDMemory(%struct.NN* noundef %neuralNetwork) #0 {
entry:
  %neuralNetwork.addr = alloca %struct.NN*, align 8
  %globalIndex = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.NN* %neuralNetwork, %struct.NN** %neuralNetwork.addr, align 8
  store i32 0, i32* %globalIndex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber = getelementptr inbounds %struct.NN, %struct.NN* %1, i32 0, i32 3
  %2 = load i32, i32* %layerNumber, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %3 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerType = getelementptr inbounds %struct.NN, %struct.NN* %3, i32 0, i32 8
  %4 = load i32*, i32** %layerType, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize = getelementptr inbounds %struct.NN, %struct.NN* %8, i32 0, i32 2
  %9 = load i32*, i32** %neuronsSize, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp slt i32 %7, %11
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %12 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory = getelementptr inbounds %struct.NN, %struct.NN* %12, i32 0, i32 10
  %13 = load %struct.Matrix**, %struct.Matrix*** %SDMemory, align 8
  %14 = load i32, i32* %globalIndex, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %13, i64 %idxprom7
  %15 = load %struct.Matrix*, %struct.Matrix** %arrayidx8, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %15, i32 0, i32 0
  %16 = load float**, float*** %matrix, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds float*, float** %16, i64 %idxprom9
  %18 = load float*, float** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 0
  store float 0.000000e+00, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !84

for.end:                                          ; preds = %for.cond2
  %20 = load i32, i32* %globalIndex, align 4
  %inc12 = add nsw i32 %20, 1
  store i32 %inc12, i32* %globalIndex, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !85

for.end15:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oneCalculation(%struct.NN* noundef %neuralNetwork, %struct.Matrix* noundef %input, %struct.Matrix* noundef %output) #0 {
entry:
  %neuralNetwork.addr = alloca %struct.NN*, align 8
  %input.addr = alloca %struct.Matrix*, align 8
  %output.addr = alloca %struct.Matrix*, align 8
  %sdIndex = alloca i32, align 4
  %layerIndex = alloca i32, align 4
  %i = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct.NN* %neuralNetwork, %struct.NN** %neuralNetwork.addr, align 8
  store %struct.Matrix* %input, %struct.Matrix** %input.addr, align 8
  store %struct.Matrix* %output, %struct.Matrix** %output.addr, align 8
  store i32 0, i32* %sdIndex, align 4
  %0 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %1 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  call void @deNormalizationProcess(%struct.NN* noundef %0, %struct.Matrix* noundef %1, i32 noundef 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerNumber = getelementptr inbounds %struct.NN, %struct.NN* %3, i32 0, i32 3
  %4 = load i32, i32* %layerNumber, align 8
  %sub = sub nsw i32 %4, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %AW = getelementptr inbounds %struct.NN, %struct.NN* %5, i32 0, i32 0
  %6 = load %struct.Matrix**, %struct.Matrix*** %AW, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %6, i64 %idxprom
  %8 = load %struct.Matrix*, %struct.Matrix** %arrayidx, align 8
  %9 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %10 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  call void @matrixMultiply(%struct.Matrix* noundef %8, %struct.Matrix* noundef %9, %struct.Matrix* noundef %10)
  %11 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  call void @matrixDeleteOnlyData(%struct.Matrix* noundef %11)
  store i32 0, i32* %type, align 4
  %12 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  %13 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %BW = getelementptr inbounds %struct.NN, %struct.NN* %13, i32 0, i32 1
  %14 = load %struct.Matrix**, %struct.Matrix*** %BW, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %15 to i64
  %arrayidx2 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %14, i64 %idxprom1
  %16 = load %struct.Matrix*, %struct.Matrix** %arrayidx2, align 8
  %17 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %18 = load i32, i32* %type, align 4
  call void @matrixSubstAdd(%struct.Matrix* noundef %12, %struct.Matrix* noundef %16, %struct.Matrix* noundef %17, i32 noundef %18)
  %19 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  call void @matrixDeleteOnlyData(%struct.Matrix* noundef %19)
  %20 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %21 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %func_ptr = getelementptr inbounds %struct.NN, %struct.NN* %21, i32 0, i32 7
  %22 = load float (float)*, float (float)** %func_ptr, align 8
  call void @matrixAllValuesFormula(%struct.Matrix* noundef %20, float (float)* noundef %22)
  %23 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %layerType = getelementptr inbounds %struct.NN, %struct.NN* %23, i32 0, i32 8
  %24 = load i32*, i32** %layerType, align 8
  %25 = load i32, i32* %i, align 4
  %add = add nsw i32 %25, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %24, i64 %idxprom3
  %26 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %26, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %27, 1
  store i32 %add6, i32* %layerIndex, align 4
  %28 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %29 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %30 = load i32, i32* %sdIndex, align 4
  %31 = load i32, i32* %layerIndex, align 4
  call void @makeSDLayerAction(%struct.NN* noundef %28, %struct.Matrix* noundef %29, i32 noundef %30, i32 noundef %31)
  %32 = load i32, i32* %sdIndex, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %sdIndex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %33, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  %34 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %35 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  call void @fullyCopyMatrix(%struct.Matrix* noundef %34, %struct.Matrix* noundef %35)
  %36 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  call void @matrixDelete(%struct.Matrix* noundef %36)
  %37 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %38 = load %struct.Matrix*, %struct.Matrix** %output.addr, align 8
  call void @deNormalizationProcess(%struct.NN* noundef %37, %struct.Matrix* noundef %38, i32 noundef 1)
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearNNInput(%struct.NNInput* noundef %input) #0 {
entry:
  %input.addr = alloca %struct.NNInput*, align 8
  %i = alloca i32, align 4
  store %struct.NNInput* %input, %struct.NNInput** %input.addr, align 8
  %0 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %neuronsSize = getelementptr inbounds %struct.NNInput, %struct.NNInput* %0, i32 0, i32 0
  %1 = load i32*, i32** %neuronsSize, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* noundef %2) #6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %normalizationMatrix = getelementptr inbounds %struct.NNInput, %struct.NNInput* %4, i32 0, i32 2
  %5 = load float**, float*** %normalizationMatrix, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom
  %7 = load float*, float** %arrayidx, align 8
  %8 = bitcast float* %7 to i8*
  call void @free(i8* noundef %8) #6
  %9 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %denormalizationMatrix = getelementptr inbounds %struct.NNInput, %struct.NNInput* %9, i32 0, i32 3
  %10 = load float**, float*** %denormalizationMatrix, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds float*, float** %10, i64 %idxprom1
  %12 = load float*, float** %arrayidx2, align 8
  %13 = bitcast float* %12 to i8*
  call void @free(i8* noundef %13) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  %15 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %normalizationMatrix3 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %15, i32 0, i32 2
  %16 = load float**, float*** %normalizationMatrix3, align 8
  %17 = bitcast float** %16 to i8*
  call void @free(i8* noundef %17) #6
  %18 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %denormalizationMatrix4 = getelementptr inbounds %struct.NNInput, %struct.NNInput* %18, i32 0, i32 3
  %19 = load float**, float*** %denormalizationMatrix4, align 8
  %20 = bitcast float** %19 to i8*
  call void @free(i8* noundef %20) #6
  %21 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %layerType = getelementptr inbounds %struct.NNInput, %struct.NNInput* %21, i32 0, i32 4
  %22 = load i32*, i32** %layerType, align 8
  %23 = bitcast i32* %22 to i8*
  call void @free(i8* noundef %23) #6
  %24 = load %struct.NNInput*, %struct.NNInput** %input.addr, align 8
  %25 = bitcast %struct.NNInput* %24 to i8*
  call void @free(i8* noundef %25) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deNormalizationProcess(%struct.NN* noundef %neuralNetwork, %struct.Matrix* noundef %input, i32 noundef %way) #0 {
entry:
  %neuralNetwork.addr = alloca %struct.NN*, align 8
  %input.addr = alloca %struct.Matrix*, align 8
  %way.addr = alloca i32, align 4
  %rMin = alloca float, align 4
  %rMax = alloca float, align 4
  %tMin = alloca float, align 4
  %tMax = alloca float, align 4
  %i = alloca i32, align 4
  store %struct.NN* %neuralNetwork, %struct.NN** %neuralNetwork.addr, align 8
  store %struct.Matrix* %input, %struct.Matrix** %input.addr, align 8
  store i32 %way, i32* %way.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %sizes = getelementptr inbounds %struct.Matrix, %struct.Matrix* %1, i32 0, i32 1
  %2 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %way.addr, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %normalizationMatrix = getelementptr inbounds %struct.NN, %struct.NN* %5, i32 0, i32 5
  %6 = load float**, float*** %normalizationMatrix, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %6, i64 1
  %7 = load float*, float** %arrayidx2, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds float, float* %7, i64 %idxprom
  %9 = load float, float* %arrayidx3, align 4
  store float %9, float* %rMin, align 4
  %10 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %normalizationMatrix4 = getelementptr inbounds %struct.NN, %struct.NN* %10, i32 0, i32 5
  %11 = load float**, float*** %normalizationMatrix4, align 8
  %arrayidx5 = getelementptr inbounds float*, float** %11, i64 0
  %12 = load float*, float** %arrayidx5, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds float, float* %12, i64 %idxprom6
  %14 = load float, float* %arrayidx7, align 4
  store float %14, float* %rMax, align 4
  store float -1.000000e+00, float* %tMin, align 4
  store float 1.000000e+00, float* %tMax, align 4
  br label %if.end17

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %way.addr, align 4
  %cmp8 = icmp eq i32 %15, 1
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  store float -1.000000e+00, float* %rMin, align 4
  store float 1.000000e+00, float* %rMax, align 4
  %16 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix = getelementptr inbounds %struct.NN, %struct.NN* %16, i32 0, i32 6
  %17 = load float**, float*** %denormalizationMatrix, align 8
  %arrayidx10 = getelementptr inbounds float*, float** %17, i64 1
  %18 = load float*, float** %arrayidx10, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds float, float* %18, i64 %idxprom11
  %20 = load float, float* %arrayidx12, align 4
  store float %20, float* %tMin, align 4
  %21 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix13 = getelementptr inbounds %struct.NN, %struct.NN* %21, i32 0, i32 6
  %22 = load float**, float*** %denormalizationMatrix13, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %22, i64 0
  %23 = load float*, float** %arrayidx14, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds float, float* %23, i64 %idxprom15
  %25 = load float, float* %arrayidx16, align 4
  store float %25, float* %tMax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %26 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %26, i32 0, i32 0
  %27 = load float**, float*** %matrix, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds float*, float** %27, i64 %idxprom18
  %29 = load float*, float** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds float, float* %29, i64 0
  %30 = load float, float* %arrayidx20, align 4
  %31 = load float, float* %rMin, align 4
  %sub = fsub float %30, %31
  %32 = load float, float* %rMax, align 4
  %33 = load float, float* %rMin, align 4
  %sub21 = fsub float %32, %33
  %div = fdiv float %sub, %sub21
  %34 = load float, float* %tMax, align 4
  %35 = load float, float* %tMin, align 4
  %sub22 = fsub float %34, %35
  %36 = load float, float* %tMin, align 4
  %37 = call float @llvm.fmuladd.f32(float %div, float %sub22, float %36)
  %38 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix23 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %38, i32 0, i32 0
  %39 = load float**, float*** %matrix23, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %40 to i64
  %arrayidx25 = getelementptr inbounds float*, float** %39, i64 %idxprom24
  %41 = load float*, float** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds float, float* %41, i64 0
  store float %37, float* %arrayidx26, align 4
  %42 = load i32, i32* %way.addr, align 4
  %cmp27 = icmp eq i32 %42, 0
  br i1 %cmp27, label %if.then28, label %if.else55

if.then28:                                        ; preds = %if.end17
  %43 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix29 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %43, i32 0, i32 0
  %44 = load float**, float*** %matrix29, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %45 to i64
  %arrayidx31 = getelementptr inbounds float*, float** %44, i64 %idxprom30
  %46 = load float*, float** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds float, float* %46, i64 0
  %47 = load float, float* %arrayidx32, align 4
  %conv = fpext float %47 to double
  %cmp33 = fcmp ogt double %conv, 1.000000e+00
  br i1 %cmp33, label %if.then35, label %if.else40

if.then35:                                        ; preds = %if.then28
  %48 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix36 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %48, i32 0, i32 0
  %49 = load float**, float*** %matrix36, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %50 to i64
  %arrayidx38 = getelementptr inbounds float*, float** %49, i64 %idxprom37
  %51 = load float*, float** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds float, float* %51, i64 0
  store float 1.000000e+00, float* %arrayidx39, align 4
  br label %if.end54

if.else40:                                        ; preds = %if.then28
  %52 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix41 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %52, i32 0, i32 0
  %53 = load float**, float*** %matrix41, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %54 to i64
  %arrayidx43 = getelementptr inbounds float*, float** %53, i64 %idxprom42
  %55 = load float*, float** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds float, float* %55, i64 0
  %56 = load float, float* %arrayidx44, align 4
  %conv45 = fpext float %56 to double
  %cmp46 = fcmp olt double %conv45, -1.000000e+00
  br i1 %cmp46, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.else40
  %57 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix49 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %57, i32 0, i32 0
  %58 = load float**, float*** %matrix49, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %59 to i64
  %arrayidx51 = getelementptr inbounds float*, float** %58, i64 %idxprom50
  %60 = load float*, float** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds float, float* %60, i64 0
  store float -1.000000e+00, float* %arrayidx52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.else40
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then35
  br label %if.end101

if.else55:                                        ; preds = %if.end17
  %61 = load i32, i32* %way.addr, align 4
  %cmp56 = icmp eq i32 %61, 1
  br i1 %cmp56, label %if.then58, label %if.end100

if.then58:                                        ; preds = %if.else55
  %62 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix59 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %62, i32 0, i32 0
  %63 = load float**, float*** %matrix59, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %64 to i64
  %arrayidx61 = getelementptr inbounds float*, float** %63, i64 %idxprom60
  %65 = load float*, float** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds float, float* %65, i64 0
  %66 = load float, float* %arrayidx62, align 4
  %67 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix63 = getelementptr inbounds %struct.NN, %struct.NN* %67, i32 0, i32 6
  %68 = load float**, float*** %denormalizationMatrix63, align 8
  %arrayidx64 = getelementptr inbounds float*, float** %68, i64 0
  %69 = load float*, float** %arrayidx64, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %70 to i64
  %arrayidx66 = getelementptr inbounds float, float* %69, i64 %idxprom65
  %71 = load float, float* %arrayidx66, align 4
  %cmp67 = fcmp ogt float %66, %71
  br i1 %cmp67, label %if.then69, label %if.else78

if.then69:                                        ; preds = %if.then58
  %72 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix70 = getelementptr inbounds %struct.NN, %struct.NN* %72, i32 0, i32 6
  %73 = load float**, float*** %denormalizationMatrix70, align 8
  %arrayidx71 = getelementptr inbounds float*, float** %73, i64 0
  %74 = load float*, float** %arrayidx71, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %75 to i64
  %arrayidx73 = getelementptr inbounds float, float* %74, i64 %idxprom72
  %76 = load float, float* %arrayidx73, align 4
  %77 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix74 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %77, i32 0, i32 0
  %78 = load float**, float*** %matrix74, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %79 to i64
  %arrayidx76 = getelementptr inbounds float*, float** %78, i64 %idxprom75
  %80 = load float*, float** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds float, float* %80, i64 0
  store float %76, float* %arrayidx77, align 4
  br label %if.end99

if.else78:                                        ; preds = %if.then58
  %81 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix79 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %81, i32 0, i32 0
  %82 = load float**, float*** %matrix79, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %83 to i64
  %arrayidx81 = getelementptr inbounds float*, float** %82, i64 %idxprom80
  %84 = load float*, float** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds float, float* %84, i64 0
  %85 = load float, float* %arrayidx82, align 4
  %86 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix83 = getelementptr inbounds %struct.NN, %struct.NN* %86, i32 0, i32 6
  %87 = load float**, float*** %denormalizationMatrix83, align 8
  %arrayidx84 = getelementptr inbounds float*, float** %87, i64 1
  %88 = load float*, float** %arrayidx84, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %89 to i64
  %arrayidx86 = getelementptr inbounds float, float* %88, i64 %idxprom85
  %90 = load float, float* %arrayidx86, align 4
  %cmp87 = fcmp olt float %85, %90
  br i1 %cmp87, label %if.then89, label %if.end98

if.then89:                                        ; preds = %if.else78
  %91 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %denormalizationMatrix90 = getelementptr inbounds %struct.NN, %struct.NN* %91, i32 0, i32 6
  %92 = load float**, float*** %denormalizationMatrix90, align 8
  %arrayidx91 = getelementptr inbounds float*, float** %92, i64 1
  %93 = load float*, float** %arrayidx91, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %94 to i64
  %arrayidx93 = getelementptr inbounds float, float* %93, i64 %idxprom92
  %95 = load float, float* %arrayidx93, align 4
  %96 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix94 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %96, i32 0, i32 0
  %97 = load float**, float*** %matrix94, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %98 to i64
  %arrayidx96 = getelementptr inbounds float*, float** %97, i64 %idxprom95
  %99 = load float*, float** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds float, float* %99, i64 0
  store float %95, float* %arrayidx97, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then89, %if.else78
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then69
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.else55
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end54
  br label %for.inc

for.inc:                                          ; preds = %if.end101
  %100 = load i32, i32* %i, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeSDLayerAction(%struct.NN* noundef %neuralNetwork, %struct.Matrix* noundef %input, i32 noundef %sdIndex, i32 noundef %layerIndex) #0 {
entry:
  %neuralNetwork.addr = alloca %struct.NN*, align 8
  %input.addr = alloca %struct.Matrix*, align 8
  %sdIndex.addr = alloca i32, align 4
  %layerIndex.addr = alloca i32, align 4
  %DSDMemory = alloca float*, align 8
  %dNeuronsCount = alloca i32, align 4
  %i = alloca i32, align 4
  %type = alloca i32, align 4
  %output = alloca %struct.Matrix*, align 8
  %indexD = alloca i32, align 4
  %i17 = alloca i32, align 4
  %i46 = alloca i32, align 4
  store %struct.NN* %neuralNetwork, %struct.NN** %neuralNetwork.addr, align 8
  store %struct.Matrix* %input, %struct.Matrix** %input.addr, align 8
  store i32 %sdIndex, i32* %sdIndex.addr, align 4
  store i32 %layerIndex, i32* %layerIndex.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 4) #6
  %0 = bitcast i8* %call to float*
  store float* %0, float** %DSDMemory, align 8
  store i32 0, i32* %dNeuronsCount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize = getelementptr inbounds %struct.NN, %struct.NN* %2, i32 0, i32 2
  %3 = load i32*, i32** %neuronsSize, align 8
  %4 = load i32, i32* %layerIndex.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes = getelementptr inbounds %struct.NN, %struct.NN* %6, i32 0, i32 9
  %7 = load i32**, i32*** %sdNeuronsTypes, align 8
  %8 = load i32, i32* %sdIndex.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32*, i32** %7, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx2, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %11, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %dNeuronsCount, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %dNeuronsCount, align 4
  %13 = load float*, float** %DSDMemory, align 8
  %14 = bitcast float* %13 to i8*
  %15 = load i32, i32* %dNeuronsCount, align 4
  %conv = sext i32 %15 to i64
  %mul = mul i64 %conv, 4
  %call6 = call i8* @realloc(i8* noundef %14, i64 noundef %mul) #6
  %16 = bitcast i8* %call6 to float*
  store float* %16, float** %DSDMemory, align 8
  %17 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %matrix = getelementptr inbounds %struct.Matrix, %struct.Matrix* %17, i32 0, i32 0
  %18 = load float**, float*** %matrix, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds float*, float** %18, i64 %idxprom7
  %20 = load float*, float** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds float, float* %20, i64 0
  %21 = load float, float* %arrayidx9, align 4
  %mul10 = fmul float -1.000000e+00, %21
  %22 = load float*, float** %DSDMemory, align 8
  %23 = load i32, i32* %dNeuronsCount, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds float, float* %22, i64 %idxprom11
  store float %mul10, float* %arrayidx12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %24, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %type, align 4
  %call14 = call noalias i8* @malloc(i64 noundef 16) #6
  %25 = bitcast i8* %call14 to %struct.Matrix*
  store %struct.Matrix* %25, %struct.Matrix** %output, align 8
  %26 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  %27 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory = getelementptr inbounds %struct.NN, %struct.NN* %27, i32 0, i32 10
  %28 = load %struct.Matrix**, %struct.Matrix*** %SDMemory, align 8
  %29 = load i32, i32* %sdIndex.addr, align 4
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %28, i64 %idxprom15
  %30 = load %struct.Matrix*, %struct.Matrix** %arrayidx16, align 8
  %31 = load %struct.Matrix*, %struct.Matrix** %output, align 8
  %32 = load i32, i32* %type, align 4
  call void @matrixSubstAdd(%struct.Matrix* noundef %26, %struct.Matrix* noundef %30, %struct.Matrix* noundef %31, i32 noundef %32)
  store i32 0, i32* %indexD, align 4
  store i32 0, i32* %i17, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc43, %for.end
  %33 = load i32, i32* %i17, align 4
  %34 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize19 = getelementptr inbounds %struct.NN, %struct.NN* %34, i32 0, i32 2
  %35 = load i32*, i32** %neuronsSize19, align 8
  %36 = load i32, i32* %layerIndex.addr, align 4
  %idxprom20 = sext i32 %36 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %35, i64 %idxprom20
  %37 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp slt i32 %33, %37
  br i1 %cmp22, label %for.body24, label %for.end45

for.body24:                                       ; preds = %for.cond18
  %38 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes25 = getelementptr inbounds %struct.NN, %struct.NN* %38, i32 0, i32 9
  %39 = load i32**, i32*** %sdNeuronsTypes25, align 8
  %40 = load i32, i32* %sdIndex.addr, align 4
  %idxprom26 = sext i32 %40 to i64
  %arrayidx27 = getelementptr inbounds i32*, i32** %39, i64 %idxprom26
  %41 = load i32*, i32** %arrayidx27, align 8
  %42 = load i32, i32* %i17, align 4
  %idxprom28 = sext i32 %42 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %41, i64 %idxprom28
  %43 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %43, 2
  br i1 %cmp30, label %if.then32, label %if.end42

if.then32:                                        ; preds = %for.body24
  %44 = load float*, float** %DSDMemory, align 8
  %45 = load i32, i32* %indexD, align 4
  %idxprom33 = sext i32 %45 to i64
  %arrayidx34 = getelementptr inbounds float, float* %44, i64 %idxprom33
  %46 = load float, float* %arrayidx34, align 4
  %47 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory35 = getelementptr inbounds %struct.NN, %struct.NN* %47, i32 0, i32 10
  %48 = load %struct.Matrix**, %struct.Matrix*** %SDMemory35, align 8
  %49 = load i32, i32* %sdIndex.addr, align 4
  %idxprom36 = sext i32 %49 to i64
  %arrayidx37 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %48, i64 %idxprom36
  %50 = load %struct.Matrix*, %struct.Matrix** %arrayidx37, align 8
  %matrix38 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %50, i32 0, i32 0
  %51 = load float**, float*** %matrix38, align 8
  %52 = load i32, i32* %i17, align 4
  %idxprom39 = sext i32 %52 to i64
  %arrayidx40 = getelementptr inbounds float*, float** %51, i64 %idxprom39
  %53 = load float*, float** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds float, float* %53, i64 0
  store float %46, float* %arrayidx41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then32, %for.body24
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %54 = load i32, i32* %i17, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* %i17, align 4
  br label %for.cond18, !llvm.loop !90

for.end45:                                        ; preds = %for.cond18
  store i32 0, i32* %i46, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc74, %for.end45
  %55 = load i32, i32* %i46, align 4
  %56 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %neuronsSize48 = getelementptr inbounds %struct.NN, %struct.NN* %56, i32 0, i32 2
  %57 = load i32*, i32** %neuronsSize48, align 8
  %58 = load i32, i32* %layerIndex.addr, align 4
  %idxprom49 = sext i32 %58 to i64
  %arrayidx50 = getelementptr inbounds i32, i32* %57, i64 %idxprom49
  %59 = load i32, i32* %arrayidx50, align 4
  %cmp51 = icmp slt i32 %55, %59
  br i1 %cmp51, label %for.body53, label %for.end76

for.body53:                                       ; preds = %for.cond47
  %60 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %sdNeuronsTypes54 = getelementptr inbounds %struct.NN, %struct.NN* %60, i32 0, i32 9
  %61 = load i32**, i32*** %sdNeuronsTypes54, align 8
  %62 = load i32, i32* %sdIndex.addr, align 4
  %idxprom55 = sext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds i32*, i32** %61, i64 %idxprom55
  %63 = load i32*, i32** %arrayidx56, align 8
  %64 = load i32, i32* %i46, align 4
  %idxprom57 = sext i32 %64 to i64
  %arrayidx58 = getelementptr inbounds i32, i32* %63, i64 %idxprom57
  %65 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %65, 1
  br i1 %cmp59, label %if.then61, label %if.end73

if.then61:                                        ; preds = %for.body53
  %66 = load %struct.Matrix*, %struct.Matrix** %output, align 8
  %matrix62 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %66, i32 0, i32 0
  %67 = load float**, float*** %matrix62, align 8
  %68 = load i32, i32* %i46, align 4
  %idxprom63 = sext i32 %68 to i64
  %arrayidx64 = getelementptr inbounds float*, float** %67, i64 %idxprom63
  %69 = load float*, float** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds float, float* %69, i64 0
  %70 = load float, float* %arrayidx65, align 4
  %71 = load %struct.NN*, %struct.NN** %neuralNetwork.addr, align 8
  %SDMemory66 = getelementptr inbounds %struct.NN, %struct.NN* %71, i32 0, i32 10
  %72 = load %struct.Matrix**, %struct.Matrix*** %SDMemory66, align 8
  %73 = load i32, i32* %sdIndex.addr, align 4
  %idxprom67 = sext i32 %73 to i64
  %arrayidx68 = getelementptr inbounds %struct.Matrix*, %struct.Matrix** %72, i64 %idxprom67
  %74 = load %struct.Matrix*, %struct.Matrix** %arrayidx68, align 8
  %matrix69 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %74, i32 0, i32 0
  %75 = load float**, float*** %matrix69, align 8
  %76 = load i32, i32* %i46, align 4
  %idxprom70 = sext i32 %76 to i64
  %arrayidx71 = getelementptr inbounds float*, float** %75, i64 %idxprom70
  %77 = load float*, float** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds float, float* %77, i64 0
  store float %70, float* %arrayidx72, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then61, %for.body53
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %78 = load i32, i32* %i46, align 4
  %inc75 = add nsw i32 %78, 1
  store i32 %inc75, i32* %i46, align 4
  br label %for.cond47, !llvm.loop !91

for.end76:                                        ; preds = %for.cond47
  %79 = load float*, float** %DSDMemory, align 8
  %80 = bitcast float* %79 to i8*
  call void @free(i8* noundef %80) #6
  %81 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  call void @matrixDeleteOnlyData(%struct.Matrix* noundef %81)
  %82 = load %struct.Matrix*, %struct.Matrix** %output, align 8
  %83 = load %struct.Matrix*, %struct.Matrix** %input.addr, align 8
  call void @fullyCopyMatrix(%struct.Matrix* noundef %82, %struct.Matrix* noundef %83)
  %84 = load %struct.Matrix*, %struct.Matrix** %output, align 8
  call void @matrixDelete(%struct.Matrix* noundef %84)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
