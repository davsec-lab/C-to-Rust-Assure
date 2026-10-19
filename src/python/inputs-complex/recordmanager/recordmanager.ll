; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/recordmanager.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/recordmanager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.BM_BufferPool = type { i8*, i32, i32, i8* }
%struct.SM_FileHandle = type { i8*, i32, i32, i8* }
%struct.Bufferpool = type { i32, i32, i32, i32, i32, i32*, i16*, i32*, i32*, i32*, i8*, %struct.SM_FileHandle }
%struct.BM_PageHandle = type { i32, i8* }
%struct.Value = type { i32, %union.v }
%union.v = type { i8* }
%struct.Record = type { %struct.RID, i8* }
%struct.RID = type { i32, i32 }
%struct.Schema = type { i32, i8**, i32*, i32*, i32*, i32 }
%struct.Expr = type { i32, %union.expr }
%union.expr = type { %struct.Value* }
%struct.Operator = type { i32, %struct.Expr** }
%struct.TableManager = type { i32, i32, i32, i32, i32, %struct.BM_BufferPool*, %struct.BM_PageHandle* }
%struct.RM_TableData = type { i8*, %struct.Schema*, i8* }
%struct.PageHeader = type { i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.RM_ScanHandle = type { %struct.RM_TableData*, i8* }
%struct.ScanManager = type { i32, i32, i32, i32, %struct.Expr*, %struct.BM_PageHandle* }
%struct.VarString = type { i8*, i32, i32 }

@pageFound = dso_local global i16 0, align 2
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Simulated writing of page %d to disk at position %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Page %d not found in buffer pool.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Buffer pool pointer is null.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Management data is null.\0A\00", align 1
@getFixCounts.noFixes = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"All pages are available. No fixes are present.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Returning fix counts for pages in use.\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" %i}: \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%s[%i%s%i]\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"[Page %i]\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%02X%s%s\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"LRU\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"CLOCK\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"LFU\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"LRU-K\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@RC_message = dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"EC (%i), \22%s\22\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"EC (%i)\0A\00", align 1
@.str.25 = private unnamed_addr constant [67 x i8] c"equality comparison only supported for values of the same datatype\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"boolean NOT requires boolean input\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"boolean AND requires boolean inputs\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"boolean OR requires boolean inputs\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"[%s-L%i-%s] ERROR: Operation returned error: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [99 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/recordmanager/expr.c\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"21:54:24\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Initializing Record Manager...\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Shutting down Record Manager...\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"Record Manager shutdown successfully.\0A\00", align 1
@__const.getAttrPos.sizes = private unnamed_addr constant [4 x i32] [i32 4, i32 4, i32 0, i32 2], align 16
@.str.35 = private unnamed_addr constant [30 x i8] c"TABLE <%s> with <%i> tuples:\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Schema with <%i> attributes (\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"%s%s: \00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"STRING[%i]\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"BOOL\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c" with keys: (\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"[%i-%i] (\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"%s:%i\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"%s:%f\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"NO SERIALIZER FOR DATATYPE\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@pageFile = dso_local global %struct._IO_FILE* null, align 8
@.str.58 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"Action %d to read the first block failed. Retrying...\0A\00", align 1

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
define dso_local i32 @initBufferPool(%struct.BM_BufferPool* noundef %bm, i8* noundef %pageFileName, i32 noundef %numPages, i32 noundef %strategy, i8* noundef %stratData) #0 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %pageFileName.addr = alloca i8*, align 8
  %numPages.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %stratData.addr = alloca i8*, align 8
  %fh = alloca %struct.SM_FileHandle, align 8
  %bp = alloca %struct.Bufferpool*, align 8
  %rcode = alloca i32, align 4
  %i = alloca i32, align 4
  %arraySize = alloca i32, align 4
  %boolArraySize = alloca i16, align 2
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  store i8* %pageFileName, i8** %pageFileName.addr, align 8
  store i32 %numPages, i32* %numPages.addr, align 4
  store i32 %strategy, i32* %strategy.addr, align 4
  store i8* %stratData, i8** %stratData.addr, align 8
  %0 = load i8*, i8** %pageFileName.addr, align 8
  %call = call i32 @openPageFile(i8* noundef %0, %struct.SM_FileHandle* noundef %fh)
  store i32 %call, i32* %rcode, align 4
  %1 = load i32, i32* %rcode, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %rcode, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 96) #7
  %3 = bitcast i8* %call1 to %struct.Bufferpool*
  store %struct.Bufferpool* %3, %struct.Bufferpool** %bp, align 8
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %tobool = icmp ne %struct.Bufferpool* %4, null
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 401, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %numPages.addr, align 4
  %6 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %6, i32 0, i32 2
  store i32 %5, i32* %totalPages, align 8
  %7 = load i32, i32* %numPages.addr, align 4
  %mul = mul nsw i32 %7, 4096
  %conv = sext i32 %mul to i64
  %call4 = call noalias i8* @calloc(i64 noundef %conv, i64 noundef 1) #7
  %8 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %pagedata = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %8, i32 0, i32 10
  store i8* %call4, i8** %pagedata, align 8
  %9 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %numRead = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %9, i32 0, i32 0
  store i32 0, i32* %numRead, align 8
  %10 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %numWrite = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %10, i32 0, i32 1
  store i32 0, i32* %numWrite, align 4
  %11 = load i32, i32* %numPages.addr, align 4
  %conv5 = sext i32 %11 to i64
  %call6 = call noalias i8* @calloc(i64 noundef %conv5, i64 noundef 4) #7
  %12 = bitcast i8* %call6 to i32*
  %13 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %updatedOrder = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %13, i32 0, i32 5
  store i32* %12, i32** %updatedOrder, align 8
  %14 = load i32, i32* %numPages.addr, align 4
  %conv7 = sext i32 %14 to i64
  %call8 = call noalias i8* @calloc(i64 noundef %conv7, i64 noundef 2) #7
  %15 = bitcast i8* %call8 to i16*
  %16 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %16, i32 0, i32 6
  store i16* %15, i16** %bitdirty, align 8
  %17 = load i32, i32* %numPages.addr, align 4
  %18 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %free_space = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %18, i32 0, i32 4
  store i32 %17, i32* %free_space, align 8
  %19 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %fhl = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %19, i32 0, i32 11
  %20 = bitcast %struct.SM_FileHandle* %fhl to i8*
  %21 = bitcast %struct.SM_FileHandle* %fh to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load i32, i32* %numPages.addr, align 4
  %conv9 = sext i32 %22 to i64
  %call10 = call noalias i8* @calloc(i64 noundef %conv9, i64 noundef 4) #7
  %23 = bitcast i8* %call10 to i32*
  %24 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %24, i32 0, i32 9
  store i32* %23, i32** %pagenum, align 8
  %25 = load i32, i32* %numPages.addr, align 4
  %conv11 = sext i32 %25 to i64
  %mul12 = mul i64 %conv11, 4
  %conv13 = trunc i64 %mul12 to i32
  store i32 %conv13, i32* %arraySize, align 4
  %26 = load i32, i32* %numPages.addr, align 4
  %conv14 = sext i32 %26 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i16
  store i16 %conv16, i16* %boolArraySize, align 2
  %27 = load i32, i32* %numPages.addr, align 4
  %conv17 = sext i32 %27 to i64
  %call18 = call noalias i8* @calloc(i64 noundef %conv17, i64 noundef 4) #7
  %28 = bitcast i8* %call18 to i32*
  %29 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %fix_count = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %29, i32 0, i32 7
  store i32* %28, i32** %fix_count, align 8
  %30 = load i32, i32* %strategy.addr, align 4
  %31 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %updatedStrategy = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %31, i32 0, i32 3
  store i32 %30, i32* %updatedStrategy, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %numPages.addr, align 4
  %cmp19 = icmp slt i32 %32, %33
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %bitdirty21 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %34, i32 0, i32 6
  %35 = load i16*, i16** %bitdirty21, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds i16, i16* %35, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc29, %for.end
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %numPages.addr, align 4
  %cmp23 = icmp slt i32 %38, %39
  br i1 %cmp23, label %for.body25, label %for.end31

for.body25:                                       ; preds = %for.cond22
  %40 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %fix_count26 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %40, i32 0, i32 7
  %41 = load i32*, i32** %fix_count26, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %42 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %41, i64 %idxprom27
  store i32 0, i32* %arrayidx28, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %for.body25
  %43 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %43, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond22, !llvm.loop !6

for.end31:                                        ; preds = %for.cond22
  store i32 0, i32* %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc39, %for.end31
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %numPages.addr, align 4
  %cmp33 = icmp slt i32 %44, %45
  br i1 %cmp33, label %for.body35, label %for.end41

for.body35:                                       ; preds = %for.cond32
  %46 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %pagenum36 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %46, i32 0, i32 9
  %47 = load i32*, i32** %pagenum36, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %48 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %47, i64 %idxprom37
  store i32 -1, i32* %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body35
  %49 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %49, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond32, !llvm.loop !7

for.end41:                                        ; preds = %for.cond32
  store i32 0, i32* %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc49, %for.end41
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %numPages.addr, align 4
  %cmp43 = icmp slt i32 %50, %51
  br i1 %cmp43, label %for.body45, label %for.end51

for.body45:                                       ; preds = %for.cond42
  %52 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %updatedOrder46 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %52, i32 0, i32 5
  %53 = load i32*, i32** %updatedOrder46, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %54 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %53, i64 %idxprom47
  store i32 -1, i32* %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body45
  %55 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %55, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond42, !llvm.loop !8

for.end51:                                        ; preds = %for.cond42
  %56 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %cmp52 = icmp ne %struct.BM_BufferPool* %56, null
  br i1 %cmp52, label %if.then54, label %if.end67

if.then54:                                        ; preds = %for.end51
  %57 = load i8*, i8** %pageFileName.addr, align 8
  %cmp55 = icmp ne i8* %57, null
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then54
  %58 = load i8*, i8** %pageFileName.addr, align 8
  %call58 = call noalias i8* @strdup(i8* noundef %58) #7
  %59 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %pageFile = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %59, i32 0, i32 0
  store i8* %call58, i8** %pageFile, align 8
  br label %if.end60

if.else:                                          ; preds = %if.then54
  %60 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %pageFile59 = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %60, i32 0, i32 0
  store i8* null, i8** %pageFile59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then57
  %61 = load i32, i32* %numPages.addr, align 4
  %62 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %numPages61 = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %62, i32 0, i32 1
  store i32 %61, i32* %numPages61, align 8
  %63 = load i32, i32* %strategy.addr, align 4
  %64 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %strategy62 = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %64, i32 0, i32 2
  store i32 %63, i32* %strategy62, align 4
  %65 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %66 = bitcast %struct.Bufferpool* %65 to i8*
  %67 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %67, i32 0, i32 3
  store i8* %66, i8** %mgmtData, align 8
  %68 = load %struct.Bufferpool*, %struct.Bufferpool** %bp, align 8
  %cmp63 = icmp ne %struct.Bufferpool* %68, null
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end60
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end60
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %for.end51
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end67, %if.then2, %if.then
  %69 = load i32, i32* %retval, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openPageFile(i8* noundef %fileName, %struct.SM_FileHandle* noundef %fHandle) #0 {
entry:
  %retval = alloca i32, align 4
  %fileName.addr = alloca i8*, align 8
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %File_RC = alloca i32, align 4
  %pageData = alloca i8*, align 8
  %i = alloca i32, align 4
  %DataReadOK = alloca i32, align 4
  store i8* %fileName, i8** %fileName.addr, align 8
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 4096, i64 noundef 1) #7
  store i8* %call, i8** %pageData, align 8
  %0 = load i8*, i8** %pageData, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 401, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %fileName.addr, align 8
  %call1 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %3) #7
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %DataReadOK, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %4 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, 1
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %pageData, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i64 @fread(i8* noundef %5, i64 noundef 4096, i64 noundef 1, %struct._IO_FILE* noundef %6)
  %conv = trunc i64 %call6 to i32
  store i32 %conv, i32* %File_RC, align 4
  %7 = load i32, i32* %File_RC, align 4
  %cmp7 = icmp eq i32 %7, 1
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  store i32 1, i32* %DataReadOK, align 4
  br label %for.end

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then9, %for.cond
  %9 = load i32, i32* %DataReadOK, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end13, label %if.then11

if.then11:                                        ; preds = %for.end
  %10 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %10) #7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* noundef %11)
  store i32 406, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.end
  %12 = load i8*, i8** %pageData, align 8
  %cmp14 = icmp ne i8* %12, null
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %13 = load i8*, i8** %fileName.addr, align 8
  %14 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %fileName17 = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %14, i32 0, i32 0
  store i8* %13, i8** %fileName17, align 8
  %15 = load i8*, i8** %pageData, align 8
  %call18 = call i32 @atoi(i8* noundef %15) #8
  %16 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %16, i32 0, i32 1
  store i32 %call18, i32* %totalNumPages, align 8
  %17 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %curPagePos = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %17, i32 0, i32 2
  store i32 0, i32* %curPagePos, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %19 = bitcast %struct._IO_FILE* %18 to i8*
  %20 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %20, i32 0, i32 3
  store i8* %19, i8** %mgmtInfo, align 8
  %21 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %21) #7
  br label %if.end20

if.else:                                          ; preds = %if.end13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* noundef %22)
  %23 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %23) #7
  store i32 407, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.else, %if.then11, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shutdownBufferPool(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.Bufferpool*
  store %struct.Bufferpool* %2, %struct.Bufferpool** %bpl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %4, i32 0, i32 2
  %5 = load i32, i32* %totalPages, align 8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fix_count = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %6, i32 0, i32 7
  %7 = load i32*, i32** %fix_count, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %9, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 402, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %11 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %call = call i32 @writeDirtyPages(%struct.BM_BufferPool* noundef %11)
  store i32 %call, i32* %rc, align 4
  %12 = load i32, i32* %rc, align 4
  %cmp2 = icmp ne i32 %12, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  %13 = load i32, i32* %rc, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %for.end
  %14 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fhl = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %14, i32 0, i32 11
  %call5 = call i32 @closePageFile(%struct.SM_FileHandle* noundef %fhl)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 403, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %15 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %call9 = call i32 @freeBufferPoolMemory(%struct.BM_BufferPool* noundef %15)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeDirtyPages(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %j = alloca i32, align 4
  %record_pointer = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.Bufferpool*
  store %struct.Bufferpool* %2, %struct.Bufferpool** %bpl, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %4, i32 0, i32 2
  %5 = load i32, i32* %totalPages, align 8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %6, i32 0, i32 6
  %7 = load i16*, i16** %bitdirty, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %tobool = icmp ne i16 %9, 0
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %10, 4096
  store i32 %mul, i32* %record_pointer, align 4
  %11 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %11, i32 0, i32 9
  %12 = load i32*, i32** %pagenum, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %13 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %12, i64 %idxprom1
  %14 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %14, 1
  %15 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fhl = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %15, i32 0, i32 11
  %call = call i32 @ensureCapacity(i32 noundef %add, %struct.SM_FileHandle* noundef %fhl)
  store i32 %call, i32* %rc, align 4
  %16 = load i32, i32* %rc, align 4
  %cmp3 = icmp ne i32 %16, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %17 = load i32, i32* %rc, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %18 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum5 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %18, i32 0, i32 9
  %19 = load i32*, i32** %pagenum5, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %20 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %19, i64 %idxprom6
  %21 = load i32, i32* %arrayidx7, align 4
  %22 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fhl8 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %22, i32 0, i32 11
  %23 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagedata = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %23, i32 0, i32 10
  %24 = load i8*, i8** %pagedata, align 8
  %25 = load i32, i32* %record_pointer, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %call9 = call i32 @writeBlock(i32 noundef %21, %struct.SM_FileHandle* noundef %fhl8, i8* noundef %add.ptr)
  store i32 %call9, i32* %rc, align 4
  %26 = load i32, i32* %rc, align 4
  %cmp10 = icmp ne i32 %26, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 3, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %27 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %numWrite = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %27, i32 0, i32 1
  %28 = load i32, i32* %numWrite, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %numWrite, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %29 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %29, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11, %if.then4
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @closePageFile(%struct.SM_FileHandle* noundef %fHandle) #0 {
entry:
  %retval = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %FILE_RC = alloca i32, align 4
  %pageData = alloca i8*, align 8
  %offset = alloca i64, align 8
  %Action = alloca i32, align 4
  %maxTrial = alloca i32, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i32 1, i32* %maxTrial, align 4
  %call = call noalias i8* @calloc(i64 noundef 4096, i64 noundef 1) #7
  store i8* %call, i8** %pageData, align 8
  %0 = load i8*, i8** %pageData, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 401, i32* %retval, align 4
  br label %for.end

if.end:                                           ; preds = %entry
  store i64 0, i64* %offset, align 8
  %1 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %1, i32 0, i32 3
  %2 = load i8*, i8** %mgmtInfo, align 8
  %3 = bitcast i8* %2 to %struct._IO_FILE*
  %4 = load i64, i64* %offset, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* noundef %3, i64 noundef %4, i32 noundef 0)
  store i32 %call1, i32* %FILE_RC, align 4
  %5 = load i32, i32* %FILE_RC, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %6) #7
  store i32 408, i32* %retval, align 4
  br label %for.end

if.end4:                                          ; preds = %if.end
  %7 = load i8*, i8** %pageData, align 8
  %8 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %8, i32 0, i32 1
  %9 = load i32, i32* %totalNumPages, align 8
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i32 noundef %9) #7
  store i32 0, i32* %Action, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %10 = load i32, i32* %Action, align 4
  %11 = load i32, i32* %maxTrial, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %pageData, align 8
  %13 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo7 = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %13, i32 0, i32 3
  %14 = load i8*, i8** %mgmtInfo7, align 8
  %15 = bitcast i8* %14 to %struct._IO_FILE*
  %call8 = call i64 @fwrite(i8* noundef %12, i64 noundef 4096, i64 noundef 1, %struct._IO_FILE* noundef %15)
  %conv = trunc i64 %call8 to i32
  store i32 %conv, i32* %FILE_RC, align 4
  %16 = load i32, i32* %FILE_RC, align 4
  %cmp9 = icmp ne i32 %16, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  %17 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %17) #7
  store i32 3, i32* %retval, align 4
  br label %for.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo12 = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %18, i32 0, i32 3
  %19 = load i8*, i8** %mgmtInfo12, align 8
  %20 = bitcast i8* %19 to %struct._IO_FILE*
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef %20)
  store i32 %call13, i32* %FILE_RC, align 4
  %21 = load i32, i32* %FILE_RC, align 4
  %cmp14 = icmp ne i32 %21, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  %22 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %22) #7
  store i32 403, i32* %retval, align 4
  br label %for.end

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %23 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %23) #7
  store i32 0, i32* %retval, align 4
  br label %for.end

for.inc:                                          ; No predecessors!
  %24 = load i32, i32* %Action, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %Action, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %if.then, %if.then3, %if.then11, %if.then16, %if.end18, %for.cond
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freeBufferPoolMemory(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %cmp = icmp ne %struct.BM_BufferPool* %0, null
  br i1 %cmp, label %if.then, label %if.else29

if.then:                                          ; preds = %entry
  %1 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %1, i32 0, i32 3
  %2 = load i8*, i8** %mgmtData, align 8
  %3 = bitcast i8* %2 to %struct.Bufferpool*
  store %struct.Bufferpool* %3, %struct.Bufferpool** %bpl, align 8
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %cmp1 = icmp ne %struct.Bufferpool* %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %updatedOrder = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %5, i32 0, i32 5
  %6 = load i32*, i32** %updatedOrder, align 8
  %cmp3 = icmp ne i32* %6, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %7 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %updatedOrder5 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %7, i32 0, i32 5
  %8 = load i32*, i32** %updatedOrder5, align 8
  %9 = bitcast i32* %8 to i8*
  call void @free(i8* noundef %9) #7
  %10 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %updatedOrder6 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %10, i32 0, i32 5
  store i32* null, i32** %updatedOrder6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  %11 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %11, i32 0, i32 9
  %12 = load i32*, i32** %pagenum, align 8
  %cmp7 = icmp ne i32* %12, null
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %13 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum9 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %13, i32 0, i32 9
  %14 = load i32*, i32** %pagenum9, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* noundef %15) #7
  %16 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum10 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %16, i32 0, i32 9
  store i32* null, i32** %pagenum10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %17 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %17, i32 0, i32 6
  %18 = load i16*, i16** %bitdirty, align 8
  %cmp12 = icmp ne i16* %18, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  %19 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty14 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %19, i32 0, i32 6
  %20 = load i16*, i16** %bitdirty14, align 8
  %21 = bitcast i16* %20 to i8*
  call void @free(i8* noundef %21) #7
  %22 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty15 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %22, i32 0, i32 6
  store i16* null, i16** %bitdirty15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11
  %23 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fix_count = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %23, i32 0, i32 7
  %24 = load i32*, i32** %fix_count, align 8
  %cmp17 = icmp ne i32* %24, null
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end16
  %25 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fix_count19 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %25, i32 0, i32 7
  %26 = load i32*, i32** %fix_count19, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* noundef %27) #7
  %28 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fix_count20 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %28, i32 0, i32 7
  store i32* null, i32** %fix_count20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16
  %29 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagedata = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %29, i32 0, i32 10
  %30 = load i8*, i8** %pagedata, align 8
  %cmp22 = icmp ne i8* %30, null
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end21
  %31 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagedata24 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %31, i32 0, i32 10
  %32 = load i8*, i8** %pagedata24, align 8
  call void @free(i8* noundef %32) #7
  %33 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagedata25 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %33, i32 0, i32 10
  store i8* null, i8** %pagedata25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21
  %34 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %35 = bitcast %struct.Bufferpool* %34 to i8*
  call void @free(i8* noundef %35) #7
  %36 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData27 = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %36, i32 0, i32 3
  store i8* null, i8** %mgmtData27, align 8
  br label %if.end28

if.else:                                          ; preds = %if.then
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end26
  store i32 0, i32* %retval, align 4
  br label %return

if.else29:                                        ; preds = %entry
  store i32 404, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else29, %if.end28
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ensureCapacity(i32 noundef %allPagesCount, %struct.SM_FileHandle* noundef %fHandle) #0 {
entry:
  %retval = alloca i32, align 4
  %allPagesCount.addr = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %activePageCount = alloca i32, align 4
  %IncrementPageCount = alloca i32, align 4
  %FILE_RC = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %allPagesCount, i32* %allPagesCount.addr, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  %0 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %cmp = icmp eq %struct.SM_FileHandle* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %1, i32 0, i32 3
  %2 = load i8*, i8** %mgmtInfo, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %3, i32 0, i32 1
  %4 = load i32, i32* %totalNumPages, align 8
  store i32 %4, i32* %activePageCount, align 4
  %5 = load i32, i32* %allPagesCount.addr, align 4
  %6 = load i32, i32* %activePageCount, align 4
  %cmp2 = icmp sle i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* %allPagesCount.addr, align 4
  %8 = load i32, i32* %activePageCount, align 4
  %sub = sub nsw i32 %7, %8
  store i32 %sub, i32* %IncrementPageCount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %IncrementPageCount, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %call = call i32 @appendEmptyBlock(%struct.SM_FileHandle* noundef %11)
  store i32 %call, i32* %FILE_RC, align 4
  %12 = load i32, i32* %FILE_RC, align 4
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %13 = load i32, i32* %FILE_RC, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeBlock(i32 noundef %pageNum, %struct.SM_FileHandle* noundef %fHandle, i8* noundef %memPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pageNum.addr = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %memPage.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %offset = alloca i64, align 8
  %fileSize = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes_written = alloca i64, align 8
  store i32 %pageNum, i32* %pageNum.addr, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i8* %memPage, i8** %memPage.addr, align 8
  %0 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtInfo, align 8
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %pageNum.addr, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 3, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %pageNum.addr, align 4
  %add = add nsw i32 %5, 1
  %mul = mul nsw i32 %add, 4096
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %offset, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fseek(%struct._IO_FILE* noundef %6, i64 noundef 0, i32 noundef 2)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i64 @ftell(%struct._IO_FILE* noundef %7)
  store i64 %call4, i64* %fileSize, align 8
  %8 = load i64, i64* %offset, align 8
  %9 = load i64, i64* %fileSize, align 8
  %cmp5 = icmp sgt i64 %8, %9
  br i1 %cmp5, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end3
  %10 = load i32, i32* %pageNum.addr, align 4
  %11 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %11, i32 0, i32 1
  %12 = load i32, i32* %totalNumPages, align 8
  %cmp8 = icmp eq i32 %10, %12
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %14 = load i64, i64* %fileSize, align 8
  %call11 = call i32 @fseek(%struct._IO_FILE* noundef %13, i64 noundef %14, i32 noundef 0)
  %15 = load i64, i64* %fileSize, align 8
  store i64 %15, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %offset, align 8
  %cmp12 = icmp slt i64 %16, %17
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @fputc(i32 noundef 0, %struct._IO_FILE* noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i64, i64* %i, align 8
  %inc = add nsw i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %20 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages15 = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %20, i32 0, i32 1
  %21 = load i32, i32* %totalNumPages15, align 8
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %totalNumPages15, align 8
  br label %if.end17

if.else:                                          ; preds = %if.then7
  store i32 3, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %for.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fileno(%struct._IO_FILE* noundef %22) #7
  %23 = load i64, i64* %offset, align 8
  %call20 = call i64 @lseek(i32 noundef %call19, i64 noundef %23, i32 noundef 0) #7
  %cmp21 = icmp eq i64 %call20, -1
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  store i32 408, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call25 = call i32 @fileno(%struct._IO_FILE* noundef %24) #7
  %25 = load i8*, i8** %memPage.addr, align 8
  %call26 = call i64 @write(i32 noundef %call25, i8* noundef %25, i64 noundef 4096)
  store i64 %call26, i64* %bytes_written, align 8
  %26 = load i64, i64* %bytes_written, align 8
  %cmp27 = icmp ne i64 %26, 4096
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  store i32 3, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  %27 = load i32, i32* %pageNum.addr, align 4
  %28 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %curPagePos = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %28, i32 0, i32 2
  store i32 %27, i32* %curPagePos, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then29, %if.then23, %if.else, %if.then2, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forceFlushPool(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %rcode = alloca i32, align 4
  %i = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %fileSize = alloca i64, align 8
  %requiredSize = alloca i64, align 8
  %record_pointer = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  store i32 0, i32* %rcode, align 4
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.Bufferpool*
  store %struct.Bufferpool* %2, %struct.Bufferpool** %bpl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %cmp = icmp ne %struct.Bufferpool* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %5, i32 0, i32 2
  %6 = load i32, i32* %totalPages, align 8
  %cmp1 = icmp slt i32 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fix_count = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %8, i32 0, i32 7
  %9 = load i32*, i32** %fix_count, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %12, i32 0, i32 6
  %13 = load i16*, i16** %bitdirty, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds i16, i16* %13, i64 %idxprom3
  %15 = load i16, i16* %arrayidx4, align 2
  %conv = sext i16 %15 to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %if.then, label %if.end58

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fhl = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %16, i32 0, i32 11
  %fileName = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %fhl, i32 0, i32 0
  %17 = load i8*, i8** %fileName, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call7 = call i32 @fseek(%struct._IO_FILE* noundef %18, i64 noundef 0, i32 noundef 2)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call8 = call i64 @ftell(%struct._IO_FILE* noundef %19)
  store i64 %call8, i64* %fileSize, align 8
  %20 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %20, i32 0, i32 9
  %21 = load i32*, i32** %pagenum, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %21, i64 %idxprom9
  %23 = load i32, i32* %arrayidx10, align 4
  %add = add nsw i32 %23, 1
  %mul = mul nsw i32 %add, 4096
  %conv11 = sext i32 %mul to i64
  store i64 %conv11, i64* %requiredSize, align 8
  %24 = load i64, i64* %fileSize, align 8
  %25 = load i64, i64* %requiredSize, align 8
  %cmp12 = icmp slt i64 %24, %25
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %27 = load i64, i64* %requiredSize, align 8
  %sub = sub nsw i64 %27, 1
  %call15 = call i32 @fseek(%struct._IO_FILE* noundef %26, i64 noundef %sub, i32 noundef 0)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call16 = call i32 @fputc(i32 noundef 0, %struct._IO_FILE* noundef %28)
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* noundef %29)
  %30 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fhl18 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %30, i32 0, i32 11
  %fileName19 = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %fhl18, i32 0, i32 0
  %31 = load i8*, i8** %fileName19, align 8
  %call20 = call noalias %struct._IO_FILE* @fopen(i8* noundef %31, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call20, %struct._IO_FILE** %file, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp21 = icmp eq %struct._IO_FILE* %32, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  store i32 3, i32* %rcode, align 4
  br label %for.end

if.end24:                                         ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 %33, 4096
  store i32 %mul25, i32* %record_pointer, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %35 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum26 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %35, i32 0, i32 9
  %36 = load i32*, i32** %pagenum26, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %37 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %36, i64 %idxprom27
  %38 = load i32, i32* %arrayidx28, align 4
  %mul29 = mul nsw i32 %38, 4096
  %conv30 = sext i32 %mul29 to i64
  %call31 = call i32 @fseek(%struct._IO_FILE* noundef %34, i64 noundef %conv30, i32 noundef 0)
  %39 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagedata = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %39, i32 0, i32 10
  %40 = load i8*, i8** %pagedata, align 8
  %41 = load i32, i32* %record_pointer, align 4
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call32 = call i64 @fwrite(i8* noundef %add.ptr, i64 noundef 1, i64 noundef 4096, %struct._IO_FILE* noundef %42)
  %cmp33 = icmp ne i64 %call32, 4096
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end24
  store i32 3, i32* %rcode, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call36 = call i32 @fclose(%struct._IO_FILE* noundef %43)
  br label %for.end

if.end37:                                         ; preds = %if.end24
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp38 = icmp ne %struct._IO_FILE* %44, null
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end37
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call41 = call i32 @fclose(%struct._IO_FILE* noundef %45)
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37
  %46 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %cmp43 = icmp ne %struct.Bufferpool* %46, null
  br i1 %cmp43, label %if.then45, label %if.end57

if.then45:                                        ; preds = %if.end42
  %47 = load i32, i32* %i, align 4
  %cmp46 = icmp sge i32 %47, 0
  br i1 %cmp46, label %if.then48, label %if.end56

if.then48:                                        ; preds = %if.then45
  %48 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %cmp49 = icmp ne %struct.Bufferpool* %48, null
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.then48
  %49 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty52 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %49, i32 0, i32 6
  %50 = load i16*, i16** %bitdirty52, align 8
  %51 = load i32, i32* %i, align 4
  %idx.ext53 = sext i32 %51 to i64
  %add.ptr54 = getelementptr inbounds i16, i16* %50, i64 %idx.ext53
  store i16 0, i16* %add.ptr54, align 2
  %52 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %numWrite = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %52, i32 0, i32 1
  %53 = load i32, i32* %numWrite, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %numWrite, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.then48
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then45
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end42
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end58
  %54 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %54, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %if.then35, %if.then23, %land.end
  %55 = load i32, i32* %rcode, align 4
  ret i32 %55
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #3

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinPage(%struct.BM_BufferPool* noundef %bm, %struct.BM_PageHandle* noundef %page, i32 noundef %pageNum) #0 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %page.addr = alloca %struct.BM_PageHandle*, align 8
  %pageNum.addr = alloca i32, align 4
  %buffer_pool = alloca %struct.Bufferpool*, align 8
  %void_page = alloca i16, align 2
  %foundedPage = alloca i16, align 2
  %UpdatedStra_found = alloca i16, align 2
  %read_code = alloca i32, align 4
  %record_pointer = alloca i32, align 4
  %memory_address = alloca i32, align 4
  %swap_location = alloca i32, align 4
  %page_handle = alloca i8*, align 8
  %totalPages3 = alloca i32, align 4
  %i = alloca i32, align 4
  %memory_address12 = alloca i32, align 4
  %lastPosition = alloca i32, align 4
  %j = alloca i32, align 4
  %unutilized = alloca i32, align 4
  %total_used_pages = alloca i64, align 8
  %base_address = alloca i64, align 8
  %isPageNotFound = alloca i16, align 2
  %isBufferPoolValid = alloca i16, align 2
  %isBufferPoolFull = alloca i16, align 2
  %i201 = alloca i32, align 4
  %j202 = alloca i32, align 4
  %swap_page = alloca i32, align 4
  %i269 = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  store %struct.BM_PageHandle* %page, %struct.BM_PageHandle** %page.addr, align 8
  store i32 %pageNum, i32* %pageNum.addr, align 4
  store i16 0, i16* %void_page, align 2
  store i16 0, i16* %foundedPage, align 2
  store i16 0, i16* %UpdatedStra_found, align 2
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.Bufferpool*
  store %struct.Bufferpool* %2, %struct.Bufferpool** %buffer_pool, align 8
  %3 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData1 = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %3, i32 0, i32 3
  %4 = load i8*, i8** %mgmtData1, align 8
  %5 = bitcast i8* %4 to %struct.Bufferpool*
  store %struct.Bufferpool* %5, %struct.Bufferpool** %buffer_pool, align 8
  %6 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %6, i32 0, i32 4
  %7 = load i32, i32* %free_space, align 8
  %8 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %8, i32 0, i32 2
  %9 = load i32, i32* %totalPages, align 8
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i16, i16* %void_page, align 2
  %conv = sext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv, %cond.false ]
  %conv2 = trunc i32 %cond to i16
  store i16 %conv2, i16* %void_page, align 2
  %11 = load i16, i16* %void_page, align 2
  %tobool = icmp ne i16 %11, 0
  br i1 %tobool, label %if.end65, label %if.then

if.then:                                          ; preds = %cond.end
  %12 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages4 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %12, i32 0, i32 2
  %13 = load i32, i32* %totalPages4, align 8
  %14 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space5 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %14, i32 0, i32 4
  %15 = load i32, i32* %free_space5, align 8
  %sub = sub nsw i32 %13, %15
  store i32 %sub, i32* %totalPages3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %if.then
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %totalPages3, align 4
  %cmp6 = icmp slt i32 %16, %17
  br i1 %cmp6, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %18 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %18, i32 0, i32 9
  %19 = load i32*, i32** %pagenum, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4
  %22 = load i32, i32* %pageNum.addr, align 4
  %cmp8 = icmp eq i32 %21, %22
  br i1 %cmp8, label %if.then10, label %if.end61

if.then10:                                        ; preds = %for.body
  %23 = load i32, i32* %pageNum.addr, align 4
  %24 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum11 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %24, i32 0, i32 0
  store i32 %23, i32* %pageNum11, align 8
  %25 = load i32, i32* %i, align 4
  store i32 %25, i32* %memory_address12, align 4
  %26 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %fix_count = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %26, i32 0, i32 7
  %27 = load i32*, i32** %fix_count, align 8
  %28 = load i32, i32* %memory_address12, align 4
  %idxprom13 = sext i32 %28 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 %idxprom13
  %29 = load i32, i32* %arrayidx14, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %arrayidx14, align 4
  %30 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagedata = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %30, i32 0, i32 10
  %31 = load i8*, i8** %pagedata, align 8
  %32 = load i32, i32* %memory_address12, align 4
  %mul = mul nsw i32 %32, 4096
  %idxprom15 = sext i32 %mul to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %31, i64 %idxprom15
  %33 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %33, i32 0, i32 1
  store i8* %arrayidx16, i8** %data, align 8
  store i16 1, i16* %foundedPage, align 2
  %34 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedStrategy = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %34, i32 0, i32 3
  %35 = load i32, i32* %updatedStrategy, align 4
  %cmp17 = icmp eq i32 %35, 1
  br i1 %cmp17, label %if.then19, label %if.else56

if.then19:                                        ; preds = %if.then10
  %36 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages20 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %36, i32 0, i32 2
  %37 = load i32, i32* %totalPages20, align 8
  %38 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space21 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %38, i32 0, i32 4
  %39 = load i32, i32* %free_space21, align 8
  %sub22 = sub nsw i32 %37, %39
  %sub23 = sub nsw i32 %sub22, 1
  store i32 %sub23, i32* %lastPosition, align 4
  store i32 -1, i32* %swap_location, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %if.then19
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %lastPosition, align 4
  %cmp25 = icmp sle i32 %40, %41
  br i1 %cmp25, label %for.body27, label %for.end

for.body27:                                       ; preds = %for.cond24
  %42 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedOrder = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %42, i32 0, i32 5
  %43 = load i32*, i32** %updatedOrder, align 8
  %44 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %44 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %43, i64 %idxprom28
  %45 = load i32, i32* %arrayidx29, align 4
  %46 = load i32, i32* %pageNum.addr, align 4
  %cmp30 = icmp ne i32 %45, %46
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.body27
  %47 = load i32, i32* %j, align 4
  %48 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages33 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %48, i32 0, i32 2
  %49 = load i32, i32* %totalPages33, align 8
  %sub34 = sub nsw i32 %49, 1
  %cmp35 = icmp eq i32 %47, %sub34
  br i1 %cmp35, label %if.then37, label %if.end

if.then37:                                        ; preds = %if.then32
  store i32 -1, i32* %swap_location, align 4
  br label %if.end

if.end:                                           ; preds = %if.then37, %if.then32
  br label %if.end38

if.else:                                          ; preds = %for.body27
  %50 = load i32, i32* %j, align 4
  store i32 %50, i32* %swap_location, align 4
  br label %for.end

if.end38:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %51 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %51, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond24, !llvm.loop !16

for.end:                                          ; preds = %if.else, %for.cond24
  %52 = load i32, i32* %swap_location, align 4
  %cmp40 = icmp ne i32 %52, -1
  br i1 %cmp40, label %if.then42, label %if.end55

if.then42:                                        ; preds = %for.end
  %53 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedOrder43 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %53, i32 0, i32 5
  %54 = load i32*, i32** %updatedOrder43, align 8
  %55 = load i32, i32* %swap_location, align 4
  %idxprom44 = sext i32 %55 to i64
  %arrayidx45 = getelementptr inbounds i32, i32* %54, i64 %idxprom44
  %56 = bitcast i32* %arrayidx45 to i8*
  %57 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedOrder46 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %57, i32 0, i32 5
  %58 = load i32*, i32** %updatedOrder46, align 8
  %59 = load i32, i32* %swap_location, align 4
  %add = add nsw i32 %59, 1
  %idxprom47 = sext i32 %add to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %58, i64 %idxprom47
  %60 = bitcast i32* %arrayidx48 to i8*
  %61 = load i32, i32* %lastPosition, align 4
  %62 = load i32, i32* %swap_location, align 4
  %sub49 = sub nsw i32 %61, %62
  %conv50 = sext i32 %sub49 to i64
  %mul51 = mul i64 %conv50, 4
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %60, i64 %mul51, i1 false)
  %63 = load i32, i32* %pageNum.addr, align 4
  %64 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedOrder52 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %64, i32 0, i32 5
  %65 = load i32*, i32** %updatedOrder52, align 8
  %66 = load i32, i32* %lastPosition, align 4
  %idxprom53 = sext i32 %66 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %65, i64 %idxprom53
  store i32 %63, i32* %arrayidx54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then42, %for.end
  br label %if.end60

if.else56:                                        ; preds = %if.then10
  store i32 0, i32* %unutilized, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else56
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %67 = load i32, i32* %unutilized, align 4
  %inc57 = add nsw i32 %67, 1
  store i32 %inc57, i32* %unutilized, align 4
  %cmp58 = icmp slt i32 %inc57, 1
  br i1 %cmp58, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  br label %if.end60

if.end60:                                         ; preds = %do.end, %if.end55
  store i32 0, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %for.body
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %68 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %68, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end64:                                        ; preds = %for.cond
  br label %if.end65

if.end65:                                         ; preds = %for.end64, %cond.end
  %69 = load i16, i16* %void_page, align 2
  %conv66 = sext i16 %69 to i32
  %cmp67 = icmp eq i32 %conv66, 1
  br i1 %cmp67, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end65
  %70 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %cmp69 = icmp ne %struct.Bufferpool* %70, null
  br i1 %cmp69, label %if.then120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end65
  %71 = load i16, i16* %foundedPage, align 2
  %conv71 = sext i16 %71 to i32
  %cmp72 = icmp ne i32 %conv71, 1
  br i1 %cmp72, label %land.lhs.true74, label %if.end167

land.lhs.true74:                                  ; preds = %lor.lhs.false
  %72 = load i16, i16* %foundedPage, align 2
  %conv75 = sext i16 %72 to i32
  %cmp76 = icmp eq i32 %conv75, 0
  br i1 %cmp76, label %land.lhs.true78, label %if.end167

land.lhs.true78:                                  ; preds = %land.lhs.true74
  %73 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space79 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %73, i32 0, i32 4
  %74 = load i32, i32* %free_space79, align 8
  %cmp80 = icmp sgt i32 %74, 0
  br i1 %cmp80, label %land.lhs.true82, label %if.end167

land.lhs.true82:                                  ; preds = %land.lhs.true78
  %75 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space83 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %75, i32 0, i32 4
  %76 = load i32, i32* %free_space83, align 8
  %77 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages84 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %77, i32 0, i32 2
  %78 = load i32, i32* %totalPages84, align 8
  %cmp85 = icmp sle i32 %76, %78
  br i1 %cmp85, label %land.lhs.true87, label %if.end167

land.lhs.true87:                                  ; preds = %land.lhs.true82
  %79 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space88 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %79, i32 0, i32 4
  %80 = load i32, i32* %free_space88, align 8
  %81 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space89 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %81, i32 0, i32 4
  %82 = load i32, i32* %free_space89, align 8
  %cmp90 = icmp eq i32 %80, %82
  br i1 %cmp90, label %land.lhs.true92, label %if.end167

land.lhs.true92:                                  ; preds = %land.lhs.true87
  %83 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space93 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %83, i32 0, i32 4
  %84 = load i32, i32* %free_space93, align 8
  %cmp94 = icmp ne i32 %84, -1
  br i1 %cmp94, label %land.lhs.true96, label %if.end167

land.lhs.true96:                                  ; preds = %land.lhs.true92
  %85 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages97 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %85, i32 0, i32 2
  %86 = load i32, i32* %totalPages97, align 8
  %cmp98 = icmp ne i32 %86, -1
  br i1 %cmp98, label %land.lhs.true100, label %if.end167

land.lhs.true100:                                 ; preds = %land.lhs.true96
  %87 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space101 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %87, i32 0, i32 4
  %88 = load i32, i32* %free_space101, align 8
  %cmp102 = icmp sge i32 %88, 0
  br i1 %cmp102, label %land.lhs.true104, label %if.end167

land.lhs.true104:                                 ; preds = %land.lhs.true100
  %89 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages105 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %89, i32 0, i32 2
  %90 = load i32, i32* %totalPages105, align 8
  %91 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space106 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %91, i32 0, i32 4
  %92 = load i32, i32* %free_space106, align 8
  %cmp107 = icmp sge i32 %90, %92
  br i1 %cmp107, label %land.lhs.true109, label %if.end167

land.lhs.true109:                                 ; preds = %land.lhs.true104
  %93 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space110 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %93, i32 0, i32 4
  %94 = load i32, i32* %free_space110, align 8
  %add111 = add nsw i32 %94, 1
  %cmp112 = icmp sgt i32 %add111, 1
  br i1 %cmp112, label %land.lhs.true114, label %if.end167

land.lhs.true114:                                 ; preds = %land.lhs.true109
  %95 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages115 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %95, i32 0, i32 2
  %96 = load i32, i32* %totalPages115, align 8
  %97 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space116 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %97, i32 0, i32 4
  %98 = load i32, i32* %free_space116, align 8
  %sub117 = sub nsw i32 %96, %98
  %cmp118 = icmp sge i32 %sub117, 0
  br i1 %cmp118, label %if.then120, label %if.end167

if.then120:                                       ; preds = %land.lhs.true114, %land.lhs.true
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 4096) #7
  store i8* %call, i8** %page_handle, align 8
  %99 = load i8*, i8** %page_handle, align 8
  %cmp121 = icmp ne i8* %99, null
  br i1 %cmp121, label %if.then123, label %if.end146

if.then123:                                       ; preds = %if.then120
  %100 = load i32, i32* %pageNum.addr, align 4
  %101 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %fhl = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %101, i32 0, i32 11
  %102 = load i8*, i8** %page_handle, align 8
  %call124 = call i32 @readBlock(i32 noundef %100, %struct.SM_FileHandle* noundef %fhl, i8* noundef %102)
  store i32 %call124, i32* %read_code, align 4
  %103 = load i32, i32* %read_code, align 4
  %cmp125 = icmp sge i32 %103, 0
  br i1 %cmp125, label %if.then127, label %if.end145

if.then127:                                       ; preds = %if.then123
  %104 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages128 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %104, i32 0, i32 2
  %105 = load i32, i32* %totalPages128, align 8
  %106 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space129 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %106, i32 0, i32 4
  %107 = load i32, i32* %free_space129, align 8
  %sub130 = sub nsw i32 %105, %107
  %conv131 = sext i32 %sub130 to i64
  store i64 %conv131, i64* %total_used_pages, align 8
  %108 = load i64, i64* %total_used_pages, align 8
  %conv132 = trunc i64 %108 to i32
  store i32 %conv132, i32* %memory_address, align 4
  %109 = load i32, i32* %memory_address, align 4
  %cmp133 = icmp sge i32 %109, 0
  br i1 %cmp133, label %land.lhs.true135, label %if.end144

land.lhs.true135:                                 ; preds = %if.then127
  %110 = load i32, i32* %memory_address, align 4
  %111 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages136 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %111, i32 0, i32 2
  %112 = load i32, i32* %totalPages136, align 8
  %cmp137 = icmp sle i32 %110, %112
  br i1 %cmp137, label %if.then139, label %if.end144

if.then139:                                       ; preds = %land.lhs.true135
  store i64 0, i64* %base_address, align 8
  %113 = load i32, i32* %memory_address, align 4
  %mul140 = mul nsw i32 %113, 4096
  %conv141 = sext i32 %mul140 to i64
  %114 = load i64, i64* %base_address, align 8
  %add142 = add i64 %conv141, %114
  %conv143 = trunc i64 %add142 to i32
  store i32 %conv143, i32* %record_pointer, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then139, %land.lhs.true135, %if.then127
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.then123
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.then120
  %115 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagedata147 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %115, i32 0, i32 10
  %116 = load i8*, i8** %pagedata147, align 8
  %117 = load i32, i32* %record_pointer, align 4
  %idx.ext = sext i32 %117 to i64
  %add.ptr = getelementptr inbounds i8, i8* %116, i64 %idx.ext
  %118 = load i8*, i8** %page_handle, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %118, i64 4096, i1 false)
  %119 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space148 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %119, i32 0, i32 4
  %120 = load i32, i32* %free_space148, align 8
  %dec = add nsw i32 %120, -1
  store i32 %dec, i32* %free_space148, align 8
  %121 = load i32, i32* %pageNum.addr, align 4
  %122 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedOrder149 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %122, i32 0, i32 5
  %123 = load i32*, i32** %updatedOrder149, align 8
  %124 = load i32, i32* %memory_address, align 4
  %idxprom150 = sext i32 %124 to i64
  %arrayidx151 = getelementptr inbounds i32, i32* %123, i64 %idxprom150
  store i32 %121, i32* %arrayidx151, align 4
  %125 = load i32, i32* %pageNum.addr, align 4
  %126 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagenum152 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %126, i32 0, i32 9
  %127 = load i32*, i32** %pagenum152, align 8
  %128 = load i32, i32* %memory_address, align 4
  %idxprom153 = sext i32 %128 to i64
  %arrayidx154 = getelementptr inbounds i32, i32* %127, i64 %idxprom153
  store i32 %125, i32* %arrayidx154, align 4
  %129 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %numRead = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %129, i32 0, i32 0
  %130 = load i32, i32* %numRead, align 8
  %inc155 = add nsw i32 %130, 1
  store i32 %inc155, i32* %numRead, align 8
  %131 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %fix_count156 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %131, i32 0, i32 7
  %132 = load i32*, i32** %fix_count156, align 8
  %133 = load i32, i32* %memory_address, align 4
  %idxprom157 = sext i32 %133 to i64
  %arrayidx158 = getelementptr inbounds i32, i32* %132, i64 %idxprom157
  %134 = load i32, i32* %arrayidx158, align 4
  %inc159 = add nsw i32 %134, 1
  store i32 %inc159, i32* %arrayidx158, align 4
  %135 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %135, i32 0, i32 6
  %136 = load i16*, i16** %bitdirty, align 8
  %137 = load i32, i32* %memory_address, align 4
  %idxprom160 = sext i32 %137 to i64
  %arrayidx161 = getelementptr inbounds i16, i16* %136, i64 %idxprom160
  store i16 0, i16* %arrayidx161, align 2
  %138 = load i32, i32* %pageNum.addr, align 4
  %139 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum162 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %139, i32 0, i32 0
  store i32 %138, i32* %pageNum162, align 8
  %140 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagedata163 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %140, i32 0, i32 10
  %141 = load i8*, i8** %pagedata163, align 8
  %142 = load i32, i32* %record_pointer, align 4
  %idxprom164 = sext i32 %142 to i64
  %arrayidx165 = getelementptr inbounds i8, i8* %141, i64 %idxprom164
  %143 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %data166 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %143, i32 0, i32 1
  store i8* %arrayidx165, i8** %data166, align 8
  %144 = load i8*, i8** %page_handle, align 8
  call void @free(i8* noundef %144) #7
  store i32 0, i32* %retval, align 4
  br label %return

if.end167:                                        ; preds = %land.lhs.true114, %land.lhs.true109, %land.lhs.true104, %land.lhs.true100, %land.lhs.true96, %land.lhs.true92, %land.lhs.true87, %land.lhs.true82, %land.lhs.true78, %land.lhs.true74, %lor.lhs.false
  %145 = load i16, i16* %foundedPage, align 2
  %tobool168 = icmp ne i16 %145, 0
  %lnot = xor i1 %tobool168, true
  %lnot.ext = zext i1 %lnot to i32
  %conv169 = trunc i32 %lnot.ext to i16
  store i16 %conv169, i16* %isPageNotFound, align 2
  %146 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %cmp170 = icmp ne %struct.Bufferpool* %146, null
  %conv171 = zext i1 %cmp170 to i32
  %conv172 = trunc i32 %conv171 to i16
  store i16 %conv172, i16* %isBufferPoolValid, align 2
  %147 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %free_space173 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %147, i32 0, i32 4
  %148 = load i32, i32* %free_space173, align 8
  %cmp174 = icmp eq i32 %148, 0
  %conv175 = zext i1 %cmp174 to i32
  %conv176 = trunc i32 %conv175 to i16
  store i16 %conv176, i16* %isBufferPoolFull, align 2
  %149 = load i16, i16* %isPageNotFound, align 2
  %conv177 = sext i16 %149 to i32
  %tobool178 = icmp ne i32 %conv177, 0
  br i1 %tobool178, label %land.lhs.true179, label %if.end262

land.lhs.true179:                                 ; preds = %if.end167
  %150 = load i16, i16* %isBufferPoolValid, align 2
  %conv180 = sext i16 %150 to i32
  %tobool181 = icmp ne i32 %conv180, 0
  br i1 %tobool181, label %land.lhs.true182, label %if.end262

land.lhs.true182:                                 ; preds = %land.lhs.true179
  %151 = load i16, i16* %isBufferPoolFull, align 2
  %conv183 = sext i16 %151 to i32
  %tobool184 = icmp ne i32 %conv183, 0
  br i1 %tobool184, label %if.then185, label %if.end262

if.then185:                                       ; preds = %land.lhs.true182
  store i16 0, i16* %UpdatedStra_found, align 2
  %call186 = call noalias i8* @malloc(i64 noundef 4096) #7
  store i8* %call186, i8** %page_handle, align 8
  %152 = load i8*, i8** %page_handle, align 8
  %cmp187 = icmp ne i8* %152, null
  br i1 %cmp187, label %if.then189, label %if.end190

if.then189:                                       ; preds = %if.then185
  %153 = load i8*, i8** %page_handle, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %153, i8 0, i64 4096, i1 false)
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %if.then185
  %154 = load i32, i32* %pageNum.addr, align 4
  %155 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %fhl191 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %155, i32 0, i32 11
  %156 = load i8*, i8** %page_handle, align 8
  %call192 = call i32 @readBlock(i32 noundef %154, %struct.SM_FileHandle* noundef %fhl191, i8* noundef %156)
  store i32 %call192, i32* %read_code, align 4
  %157 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedStrategy193 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %157, i32 0, i32 3
  %158 = load i32, i32* %updatedStrategy193, align 4
  %cmp194 = icmp eq i32 %158, 0
  br i1 %cmp194, label %if.then200, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %if.end190
  %159 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedStrategy197 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %159, i32 0, i32 3
  %160 = load i32, i32* %updatedStrategy197, align 4
  %cmp198 = icmp eq i32 %160, 1
  br i1 %cmp198, label %if.then200, label %if.end261

if.then200:                                       ; preds = %lor.lhs.false196, %if.end190
  store i32 0, i32* %i201, align 4
  store i32 0, i32* %j202, align 4
  br label %do.body203

do.body203:                                       ; preds = %do.cond256, %if.then200
  %161 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedOrder204 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %161, i32 0, i32 5
  %162 = load i32*, i32** %updatedOrder204, align 8
  %163 = load i32, i32* %j202, align 4
  %idxprom205 = sext i32 %163 to i64
  %arrayidx206 = getelementptr inbounds i32, i32* %162, i64 %idxprom205
  %164 = load i32, i32* %arrayidx206, align 4
  store i32 %164, i32* %swap_page, align 4
  store i32 0, i32* %i201, align 4
  br label %do.body207

do.body207:                                       ; preds = %land.end, %do.body203
  %165 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagenum208 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %165, i32 0, i32 9
  %166 = load i32*, i32** %pagenum208, align 8
  %167 = load i32, i32* %i201, align 4
  %idxprom209 = sext i32 %167 to i64
  %arrayidx210 = getelementptr inbounds i32, i32* %166, i64 %idxprom209
  %168 = load i32, i32* %arrayidx210, align 4
  %169 = load i32, i32* %swap_page, align 4
  %cmp211 = icmp eq i32 %168, %169
  br i1 %cmp211, label %land.lhs.true213, label %if.end242

land.lhs.true213:                                 ; preds = %do.body207
  %170 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %fix_count214 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %170, i32 0, i32 7
  %171 = load i32*, i32** %fix_count214, align 8
  %172 = load i32, i32* %i201, align 4
  %idxprom215 = sext i32 %172 to i64
  %arrayidx216 = getelementptr inbounds i32, i32* %171, i64 %idxprom215
  %173 = load i32, i32* %arrayidx216, align 4
  %cmp217 = icmp eq i32 %173, 0
  br i1 %cmp217, label %if.then219, label %if.end242

if.then219:                                       ; preds = %land.lhs.true213
  %174 = load i32, i32* %i201, align 4
  store i32 %174, i32* %memory_address, align 4
  %175 = load i32, i32* %i201, align 4
  %mul220 = mul nsw i32 %175, 4096
  store i32 %mul220, i32* %record_pointer, align 4
  %176 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %bitdirty221 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %176, i32 0, i32 6
  %177 = load i16*, i16** %bitdirty221, align 8
  %178 = load i32, i32* %i201, align 4
  %idxprom222 = sext i32 %178 to i64
  %arrayidx223 = getelementptr inbounds i16, i16* %177, i64 %idxprom222
  %179 = load i16, i16* %arrayidx223, align 2
  %tobool224 = icmp ne i16 %179, 0
  br i1 %tobool224, label %if.then225, label %if.end241

if.then225:                                       ; preds = %if.then219
  %180 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagenum226 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %180, i32 0, i32 9
  %181 = load i32*, i32** %pagenum226, align 8
  %182 = load i32, i32* %i201, align 4
  %idxprom227 = sext i32 %182 to i64
  %arrayidx228 = getelementptr inbounds i32, i32* %181, i64 %idxprom227
  %183 = load i32, i32* %arrayidx228, align 4
  %add229 = add nsw i32 %183, 1
  %184 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %fhl230 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %184, i32 0, i32 11
  %call231 = call i32 @ensureCapacity(i32 noundef %add229, %struct.SM_FileHandle* noundef %fhl230)
  store i32 %call231, i32* %read_code, align 4
  %185 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagenum232 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %185, i32 0, i32 9
  %186 = load i32*, i32** %pagenum232, align 8
  %187 = load i32, i32* %i201, align 4
  %idxprom233 = sext i32 %187 to i64
  %arrayidx234 = getelementptr inbounds i32, i32* %186, i64 %idxprom233
  %188 = load i32, i32* %arrayidx234, align 4
  %189 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %fhl235 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %189, i32 0, i32 11
  %190 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagedata236 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %190, i32 0, i32 10
  %191 = load i8*, i8** %pagedata236, align 8
  %192 = load i32, i32* %record_pointer, align 4
  %idx.ext237 = sext i32 %192 to i64
  %add.ptr238 = getelementptr inbounds i8, i8* %191, i64 %idx.ext237
  %call239 = call i32 @writeBlock(i32 noundef %188, %struct.SM_FileHandle* noundef %fhl235, i8* noundef %add.ptr238)
  store i32 %call239, i32* %read_code, align 4
  %193 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %numWrite = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %193, i32 0, i32 1
  %194 = load i32, i32* %numWrite, align 4
  %inc240 = add nsw i32 %194, 1
  store i32 %inc240, i32* %numWrite, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then225, %if.then219
  %195 = load i32, i32* %j202, align 4
  store i32 %195, i32* %swap_location, align 4
  store i16 1, i16* %UpdatedStra_found, align 2
  br label %do.end251

if.end242:                                        ; preds = %land.lhs.true213, %do.body207
  %196 = load i32, i32* %i201, align 4
  %inc243 = add nsw i32 %196, 1
  store i32 %inc243, i32* %i201, align 4
  br label %do.cond244

do.cond244:                                       ; preds = %if.end242
  %197 = load i32, i32* %i201, align 4
  %198 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages245 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %198, i32 0, i32 2
  %199 = load i32, i32* %totalPages245, align 8
  %cmp246 = icmp slt i32 %197, %199
  br i1 %cmp246, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond244
  %200 = load i16, i16* %UpdatedStra_found, align 2
  %tobool248 = icmp ne i16 %200, 0
  %lnot249 = xor i1 %tobool248, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond244
  %201 = phi i1 [ false, %do.cond244 ], [ %lnot249, %land.rhs ]
  br i1 %201, label %do.body207, label %do.end251, !llvm.loop !19

do.end251:                                        ; preds = %land.end, %if.end241
  %202 = load i32, i32* %j202, align 4
  %inc252 = add nsw i32 %202, 1
  store i32 %inc252, i32* %j202, align 4
  %203 = load i16, i16* %UpdatedStra_found, align 2
  %tobool253 = icmp ne i16 %203, 0
  br i1 %tobool253, label %if.then254, label %if.end255

if.then254:                                       ; preds = %do.end251
  br label %do.end260

if.end255:                                        ; preds = %do.end251
  br label %do.cond256

do.cond256:                                       ; preds = %if.end255
  %204 = load i32, i32* %j202, align 4
  %205 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages257 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %205, i32 0, i32 2
  %206 = load i32, i32* %totalPages257, align 8
  %cmp258 = icmp slt i32 %204, %206
  br i1 %cmp258, label %do.body203, label %do.end260, !llvm.loop !20

do.end260:                                        ; preds = %do.cond256, %if.then254
  br label %if.end261

if.end261:                                        ; preds = %do.end260, %lor.lhs.false196
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %land.lhs.true182, %land.lhs.true179, %if.end167
  %207 = load i16, i16* %UpdatedStra_found, align 2
  %conv263 = sext i16 %207 to i32
  %cmp264 = icmp eq i32 %conv263, 0
  br i1 %cmp264, label %if.then266, label %if.else267

if.then266:                                       ; preds = %if.end262
  %208 = load i8*, i8** %page_handle, align 8
  call void @free(i8* noundef %208) #7
  store i32 405, i32* %retval, align 4
  br label %return

if.else267:                                       ; preds = %if.end262
  %209 = load i32, i32* %memory_address, align 4
  %mul268 = mul nsw i32 %209, 4096
  store i32 %mul268, i32* %record_pointer, align 4
  store i32 0, i32* %i269, align 4
  %210 = load i32, i32* %i269, align 4
  %cmp270 = icmp slt i32 %210, 4096
  br i1 %cmp270, label %if.then272, label %if.end285

if.then272:                                       ; preds = %if.else267
  br label %do.body273

do.body273:                                       ; preds = %do.cond281, %if.then272
  %211 = load i8*, i8** %page_handle, align 8
  %212 = load i32, i32* %i269, align 4
  %idxprom274 = sext i32 %212 to i64
  %arrayidx275 = getelementptr inbounds i8, i8* %211, i64 %idxprom274
  %213 = load i8, i8* %arrayidx275, align 1
  %214 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagedata276 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %214, i32 0, i32 10
  %215 = load i8*, i8** %pagedata276, align 8
  %216 = load i32, i32* %i269, align 4
  %217 = load i32, i32* %record_pointer, align 4
  %add277 = add nsw i32 %216, %217
  %idxprom278 = sext i32 %add277 to i64
  %arrayidx279 = getelementptr inbounds i8, i8* %215, i64 %idxprom278
  store i8 %213, i8* %arrayidx279, align 1
  %218 = load i32, i32* %i269, align 4
  %inc280 = add nsw i32 %218, 1
  store i32 %inc280, i32* %i269, align 4
  br label %do.cond281

do.cond281:                                       ; preds = %do.body273
  %219 = load i32, i32* %i269, align 4
  %cmp282 = icmp slt i32 %219, 4096
  br i1 %cmp282, label %do.body273, label %do.end284, !llvm.loop !21

do.end284:                                        ; preds = %do.cond281
  br label %if.end285

if.end285:                                        ; preds = %do.end284, %if.else267
  br label %if.end286

if.end286:                                        ; preds = %if.end285
  %220 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedStrategy287 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %220, i32 0, i32 3
  %221 = load i32, i32* %updatedStrategy287, align 4
  %cmp288 = icmp eq i32 %221, 1
  br i1 %cmp288, label %if.then294, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %if.end286
  %222 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %updatedStrategy291 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %222, i32 0, i32 3
  %223 = load i32, i32* %updatedStrategy291, align 4
  %cmp292 = icmp eq i32 %223, 0
  br i1 %cmp292, label %if.then294, label %if.end297

if.then294:                                       ; preds = %lor.lhs.false290, %if.end286
  %224 = load i32, i32* %swap_location, align 4
  %225 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %totalPages295 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %225, i32 0, i32 2
  %226 = load i32, i32* %totalPages295, align 8
  %sub296 = sub nsw i32 %226, 1
  %227 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %228 = load i32, i32* %pageNum.addr, align 4
  call void @ShiftUpdatedOrder(i32 noundef %224, i32 noundef %sub296, %struct.Bufferpool* noundef %227, i32 noundef %228)
  br label %if.end297

if.end297:                                        ; preds = %if.then294, %lor.lhs.false290
  %229 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %230 = load i32, i32* %memory_address, align 4
  %231 = load i32, i32* %pageNum.addr, align 4
  call void @UpdateBufferPoolStats(%struct.Bufferpool* noundef %229, i32 noundef %230, i32 noundef %231)
  %232 = load i32, i32* %pageNum.addr, align 4
  %233 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum298 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %233, i32 0, i32 0
  store i32 %232, i32* %pageNum298, align 8
  %234 = load %struct.Bufferpool*, %struct.Bufferpool** %buffer_pool, align 8
  %pagedata299 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %234, i32 0, i32 10
  %235 = load i8*, i8** %pagedata299, align 8
  %236 = load i32, i32* %record_pointer, align 4
  %idx.ext300 = sext i32 %236 to i64
  %add.ptr301 = getelementptr inbounds i8, i8* %235, i64 %idx.ext300
  %237 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %data302 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %237, i32 0, i32 1
  store i8* %add.ptr301, i8** %data302, align 8
  %238 = load i8*, i8** %page_handle, align 8
  call void @free(i8* noundef %238) #7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end297, %if.then266, %if.end146, %if.end60
  %239 = load i32, i32* %retval, align 4
  ret i32 %239
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readBlock(i32 noundef %pageNum, %struct.SM_FileHandle* noundef %fHandle, i8* noundef %memPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pageNum.addr = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %memPage.addr = alloca i8*, align 8
  %offset = alloca i64, align 8
  %FILE_RC = alloca i32, align 4
  %Action = alloca i32, align 4
  %maxTrial = alloca i32, align 4
  store i32 %pageNum, i32* %pageNum.addr, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i8* %memPage, i8** %memPage.addr, align 8
  store i32 1, i32* %maxTrial, align 4
  %0 = load i32, i32* %pageNum.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %pageNum.addr, align 4
  %2 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %2, i32 0, i32 1
  %3 = load i32, i32* %totalNumPages, align 8
  %cmp1 = icmp sge i32 %1, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %pageNum.addr, align 4
  %add = add nsw i32 %4, 1
  %mul = mul nsw i32 %add, 4096
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %offset, align 8
  %5 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %5, i32 0, i32 3
  %6 = load i8*, i8** %mgmtInfo, align 8
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %8 = load i64, i64* %offset, align 8
  %call = call i32 @fseek(%struct._IO_FILE* noundef %7, i64 noundef %8, i32 noundef 0)
  store i32 %call, i32* %FILE_RC, align 4
  %9 = load i32, i32* %FILE_RC, align 4
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 408, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %Action, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %10 = load i32, i32* %Action, align 4
  %11 = load i32, i32* %maxTrial, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %memPage.addr, align 8
  %13 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo8 = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %13, i32 0, i32 3
  %14 = load i8*, i8** %mgmtInfo8, align 8
  %15 = bitcast i8* %14 to %struct._IO_FILE*
  %call9 = call i64 @fread(i8* noundef %12, i64 noundef 4096, i64 noundef 1, %struct._IO_FILE* noundef %15)
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, i32* %FILE_RC, align 4
  %16 = load i32, i32* %FILE_RC, align 4
  %cmp11 = icmp eq i32 %16, 1
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  br label %for.end

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %17 = load i32, i32* %Action, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %Action, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %if.then13, %for.cond
  %18 = load i32, i32* %FILE_RC, align 4
  %cmp15 = icmp ne i32 %18, 1
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.end
  store i32 406, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %for.end
  %19 = load i32, i32* %pageNum.addr, align 4
  %20 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %curPagePos = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %20, i32 0, i32 2
  store i32 %19, i32* %curPagePos, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.then4, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShiftUpdatedOrder(i32 noundef %start, i32 noundef %end, %struct.Bufferpool* noundef %bp, i32 noundef %newPageNum) #0 {
entry:
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %bp.addr = alloca %struct.Bufferpool*, align 8
  %newPageNum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store %struct.Bufferpool* %bp, %struct.Bufferpool** %bp.addr, align 8
  store i32 %newPageNum, i32* %newPageNum.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %end.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Bufferpool*, %struct.Bufferpool** %bp.addr, align 8
  %updatedOrder = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %3, i32 0, i32 5
  %4 = load i32*, i32** %updatedOrder, align 8
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load %struct.Bufferpool*, %struct.Bufferpool** %bp.addr, align 8
  %updatedOrder1 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %7, i32 0, i32 5
  %8 = load i32*, i32** %updatedOrder1, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  store i32 %6, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %newPageNum.addr, align 4
  %12 = load %struct.Bufferpool*, %struct.Bufferpool** %bp.addr, align 8
  %updatedOrder4 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %12, i32 0, i32 5
  %13 = load i32*, i32** %updatedOrder4, align 8
  %14 = load i32, i32* %end.addr, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  store i32 %11, i32* %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateBufferPoolStats(%struct.Bufferpool* noundef %bp, i32 noundef %memoryAddress, i32 noundef %pageNum) #0 {
entry:
  %bp.addr = alloca %struct.Bufferpool*, align 8
  %memoryAddress.addr = alloca i32, align 4
  %pageNum.addr = alloca i32, align 4
  store %struct.Bufferpool* %bp, %struct.Bufferpool** %bp.addr, align 8
  store i32 %memoryAddress, i32* %memoryAddress.addr, align 4
  store i32 %pageNum, i32* %pageNum.addr, align 4
  %0 = load i32, i32* %pageNum.addr, align 4
  %1 = load %struct.Bufferpool*, %struct.Bufferpool** %bp.addr, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %1, i32 0, i32 9
  %2 = load i32*, i32** %pagenum, align 8
  %3 = load i32, i32* %memoryAddress.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bp.addr, align 8
  %numRead = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %4, i32 0, i32 0
  %5 = load i32, i32* %numRead, align 8
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %numRead, align 8
  %6 = load %struct.Bufferpool*, %struct.Bufferpool** %bp.addr, align 8
  %fix_count = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %6, i32 0, i32 7
  %7 = load i32*, i32** %fix_count, align 8
  %8 = load i32, i32* %memoryAddress.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  %add3 = add nsw i32 %9, 1
  store i32 %add3, i32* %arrayidx2, align 4
  %10 = load %struct.Bufferpool*, %struct.Bufferpool** %bp.addr, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %10, i32 0, i32 6
  %11 = load i16*, i16** %bitdirty, align 8
  %12 = load i32, i32* %memoryAddress.addr, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i16, i16* %11, i64 %idxprom4
  store i16 0, i16* %arrayidx5, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpinPage(%struct.BM_BufferPool* noundef %bm, %struct.BM_PageHandle* noundef %page) #0 {
entry:
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %page.addr = alloca %struct.BM_PageHandle*, align 8
  %bufferPool = alloca %struct.Bufferpool*, align 8
  %SearchResultIndex = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  store %struct.BM_PageHandle* %page, %struct.BM_PageHandle** %page.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.Bufferpool*
  store %struct.Bufferpool* %2, %struct.Bufferpool** %bufferPool, align 8
  store i32 -1, i32* %SearchResultIndex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bufferPool, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %4, i32 0, i32 2
  %5 = load i32, i32* %totalPages, align 8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Bufferpool*, %struct.Bufferpool** %bufferPool, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %6, i32 0, i32 9
  %7 = load i32*, i32** %pagenum, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %10, i32 0, i32 0
  %11 = load i32, i32* %pageNum, align 8
  %cmp1 = icmp eq i32 %9, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  store i32 %12, i32* %SearchResultIndex, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i32, i32* %SearchResultIndex, align 4
  %cmp2 = icmp ne i32 %14, -1
  br i1 %cmp2, label %if.then3, label %if.end12

if.then3:                                         ; preds = %for.end
  %15 = load %struct.Bufferpool*, %struct.Bufferpool** %bufferPool, align 8
  %fix_count = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %15, i32 0, i32 7
  %16 = load i32*, i32** %fix_count, align 8
  %17 = load i32, i32* %SearchResultIndex, align 4
  %idxprom4 = sext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %16, i64 %idxprom4
  %18 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %18, 0
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.then3
  %19 = load %struct.Bufferpool*, %struct.Bufferpool** %bufferPool, align 8
  %fix_count8 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %19, i32 0, i32 7
  %20 = load i32*, i32** %fix_count8, align 8
  %21 = load i32, i32* %SearchResultIndex, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  %22 = load i32, i32* %arrayidx10, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %arrayidx10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %for.end
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @markDirty(%struct.BM_BufferPool* noundef %bm, %struct.BM_PageHandle* noundef %page) #0 {
entry:
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %page.addr = alloca %struct.BM_PageHandle*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %markedCount = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  store %struct.BM_PageHandle* %page, %struct.BM_PageHandle** %page.addr, align 8
  store i32 0, i32* %markedCount, align 4
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.Bufferpool*
  store %struct.Bufferpool* %2, %struct.Bufferpool** %bpl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %4, i32 0, i32 2
  %5 = load i32, i32* %totalPages, align 8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %6, i32 0, i32 9
  %7 = load i32*, i32** %pagenum, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %10, i32 0, i32 0
  %11 = load i32, i32* %pageNum, align 8
  %cmp1 = icmp eq i32 %9, %11
  br i1 %cmp1, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body
  %12 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %12, i32 0, i32 6
  %13 = load i16*, i16** %bitdirty, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 %idxprom2
  %15 = load i16, i16* %arrayidx3, align 2
  %conv = sext i16 %15 to i32
  %cmp4 = icmp ne i32 %conv, 1
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %16 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty7 = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %16, i32 0, i32 6
  %17 = load i16*, i16** %bitdirty7, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %17, i64 %idxprom8
  store i16 1, i16* %arrayidx9, align 2
  %19 = load i32, i32* %markedCount, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %markedCount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %for.end

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %20 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %if.end, %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forcePage(%struct.BM_BufferPool* noundef %bm, %struct.BM_PageHandle* noundef %page) #0 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %page.addr = alloca %struct.BM_PageHandle*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %i = alloca i32, align 4
  %record_pointer = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  store %struct.BM_PageHandle* %page, %struct.BM_PageHandle** %page.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.Bufferpool*
  store %struct.Bufferpool* %2, %struct.Bufferpool** %bpl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %4, i32 0, i32 2
  %5 = load i32, i32* %totalPages, align 8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %6, i32 0, i32 9
  %7 = load i32*, i32** %pagenum, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %10, i32 0, i32 0
  %11 = load i32, i32* %pageNum, align 8
  %cmp1 = icmp eq i32 %9, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %12, 4096
  store i32 %mul, i32* %record_pointer, align 4
  %13 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum2 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %13, i32 0, i32 0
  %14 = load i32, i32* %pageNum2, align 8
  %15 = load i32, i32* %record_pointer, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 noundef %14, i32 noundef %15)
  %16 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %16, i32 0, i32 6
  %17 = load i16*, i16** %bitdirty, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %18 to i64
  %arrayidx4 = getelementptr inbounds i16, i16* %17, i64 %idxprom3
  store i16 0, i16* %arrayidx4, align 2
  %19 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %numWrite = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %19, i32 0, i32 1
  %20 = load i32, i32* %numWrite, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %numWrite, align 4
  store i16 1, i16* @pageFound, align 2
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %21, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load i16, i16* @pageFound, align 2
  %tobool = icmp ne i16 %22, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end
  %23 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum7 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %23, i32 0, i32 0
  %24 = load i32, i32* %pageNum7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %24)
  store i32 3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then6
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getFixCounts(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %retval = alloca i32*, align 8
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %cmp = icmp eq %struct.BM_BufferPool* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %1, i32 0, i32 3
  %2 = load i8*, i8** %mgmtData, align 8
  %3 = bitcast i8* %2 to %struct.Bufferpool*
  store %struct.Bufferpool* %3, %struct.Bufferpool** %bpl, align 8
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %cmp1 = icmp eq %struct.Bufferpool* %4, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %free_space = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %5, i32 0, i32 4
  %6 = load i32, i32* %free_space, align 8
  %7 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %7, i32 0, i32 2
  %8 = load i32, i32* %totalPages, align 8
  %cmp5 = icmp eq i32 %6, %8
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  store i32* @getFixCounts.noFixes, i32** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end4
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %9 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %fix_count = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %9, i32 0, i32 7
  %10 = load i32*, i32** %fix_count, align 8
  store i32* %10, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then6, %if.then2, %if.then
  %11 = load i32*, i32** %retval, align 8
  ret i32* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getNumReadIO(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %readCount = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %cmp = icmp eq %struct.BM_BufferPool* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %1, i32 0, i32 3
  %2 = load i8*, i8** %mgmtData, align 8
  %3 = bitcast i8* %2 to %struct.Bufferpool*
  store %struct.Bufferpool* %3, %struct.Bufferpool** %bpl, align 8
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %cmp1 = icmp eq %struct.Bufferpool* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %numRead = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %5, i32 0, i32 0
  %6 = load i32, i32* %numRead, align 8
  store i32 %6, i32* %readCount, align 4
  %7 = load i32, i32* %readCount, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getNumWriteIO(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %retval = alloca i32, align 4
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %writeCount = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %cmp = icmp eq %struct.BM_BufferPool* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %1, i32 0, i32 3
  %2 = load i8*, i8** %mgmtData, align 8
  %3 = bitcast i8* %2 to %struct.Bufferpool*
  store %struct.Bufferpool* %3, %struct.Bufferpool** %bpl, align 8
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %cmp1 = icmp eq %struct.Bufferpool* %4, null
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %5 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %numWrite = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %5, i32 0, i32 1
  %6 = load i32, i32* %numWrite, align 4
  store i32 %6, i32* %writeCount, align 4
  %7 = load i32, i32* %writeCount, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getFrameContents(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %retval = alloca i32*, align 8
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %isFull = alloca i16, align 2
  %result = alloca i32*, align 8
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.Bufferpool*
  store %struct.Bufferpool* %2, %struct.Bufferpool** %bpl, align 8
  %3 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %free_space = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %3, i32 0, i32 4
  %4 = load i32, i32* %free_space, align 8
  %5 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %totalPages = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %5, i32 0, i32 2
  %6 = load i32, i32* %totalPages, align 8
  %cmp = icmp eq i32 %4, %6
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i16
  store i16 %conv1, i16* %isFull, align 2
  store i32* null, i32** %result, align 8
  %7 = load i16, i16* %isFull, align 2
  %tobool = icmp ne i16 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32* null, i32** %result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %pagenum = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %8, i32 0, i32 9
  %9 = load i32*, i32** %pagenum, align 8
  store i32* %9, i32** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32*, i32** %result, align 8
  %cmp2 = icmp ne i32* %10, null
  br i1 %cmp2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  %11 = load i32*, i32** %result, align 8
  store i32* %11, i32** %retval, align 8
  br label %return

if.else5:                                         ; preds = %if.end
  store i32* null, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.else5, %if.then4
  %12 = load i32*, i32** %retval, align 8
  ret i32* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @getDirtyFlags(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %retval = alloca i16*, align 8
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %bpl = alloca %struct.Bufferpool*, align 8
  %dirtyFlags = alloca i16*, align 8
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %cmp = icmp eq %struct.BM_BufferPool* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16* null, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %mgmtData = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %1, i32 0, i32 3
  %2 = load i8*, i8** %mgmtData, align 8
  %3 = bitcast i8* %2 to %struct.Bufferpool*
  store %struct.Bufferpool* %3, %struct.Bufferpool** %bpl, align 8
  %4 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %cmp1 = icmp eq %struct.Bufferpool* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i16* null, i16** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.Bufferpool*, %struct.Bufferpool** %bpl, align 8
  %bitdirty = getelementptr inbounds %struct.Bufferpool, %struct.Bufferpool* %5, i32 0, i32 6
  %6 = load i16*, i16** %bitdirty, align 8
  store i16* %6, i16** %dirtyFlags, align 8
  %7 = load i16*, i16** %dirtyFlags, align 8
  %cmp4 = icmp eq i16* %7, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i16* null, i16** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end3
  %8 = load i16*, i16** %dirtyFlags, align 8
  store i16* %8, i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %9 = load i16*, i16** %retval, align 8
  ret i16* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printPoolContent(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %frameContent = alloca i32*, align 8
  %dirty = alloca i16*, align 8
  %fixCount = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %call = call i32* @getFrameContents(%struct.BM_BufferPool* noundef %0)
  store i32* %call, i32** %frameContent, align 8
  %1 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %call1 = call i16* @getDirtyFlags(%struct.BM_BufferPool* noundef %1)
  store i16* %call1, i16** %dirty, align 8
  %2 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %call2 = call i32* @getFixCounts(%struct.BM_BufferPool* noundef %2)
  store i32* %call2, i32** %fixCount, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %3 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  call void @printStrat(%struct.BM_BufferPool* noundef %3)
  %4 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %numPages = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %4, i32 0, i32 1
  %5 = load i32, i32* %numPages, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 noundef %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %numPages5 = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %7, i32 0, i32 1
  %8 = load i32, i32* %numPages5, align 8
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %9, 0
  %10 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)
  %11 = load i32*, i32** %frameContent, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %14 = load i16*, i16** %dirty, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %14, i64 %idxprom7
  %16 = load i16, i16* %arrayidx8, align 2
  %conv = sext i16 %16 to i32
  %tobool = icmp ne i32 %conv, 0
  %17 = zext i1 %tobool to i64
  %cond9 = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %18 = load i32*, i32** %fixCount, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  %20 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef %cond, i32 noundef %13, i8* noundef %cond9, i32 noundef %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printStrat(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %strategy = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 2
  %1 = load i32, i32* %strategy, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %2 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %strategy9 = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %2, i32 0, i32 2
  %3 = load i32, i32* %strategy9, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 noundef %3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sprintPoolContent(%struct.BM_BufferPool* noundef %bm) #0 {
entry:
  %bm.addr = alloca %struct.BM_BufferPool*, align 8
  %frameContent = alloca i32*, align 8
  %dirty = alloca i16*, align 8
  %fixCount = alloca i32*, align 8
  %i = alloca i32, align 4
  %message = alloca i8*, align 8
  %pos = alloca i32, align 4
  store %struct.BM_BufferPool* %bm, %struct.BM_BufferPool** %bm.addr, align 8
  store i32 0, i32* %pos, align 4
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %numPages = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %0, i32 0, i32 1
  %1 = load i32, i32* %numPages, align 8
  %mul = mul nsw i32 22, %1
  %add = add nsw i32 256, %mul
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 noundef %conv) #7
  store i8* %call, i8** %message, align 8
  %2 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %call1 = call i32* @getFrameContents(%struct.BM_BufferPool* noundef %2)
  store i32* %call1, i32** %frameContent, align 8
  %3 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %call2 = call i16* @getDirtyFlags(%struct.BM_BufferPool* noundef %3)
  store i16* %call2, i16** %dirty, align 8
  %4 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %call3 = call i32* @getFixCounts(%struct.BM_BufferPool* noundef %4)
  store i32* %call3, i32** %fixCount, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bm.addr, align 8
  %numPages4 = getelementptr inbounds %struct.BM_BufferPool, %struct.BM_BufferPool* %6, i32 0, i32 1
  %7 = load i32, i32* %numPages4, align 8
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %message, align 8
  %9 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %10 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %10, 0
  %11 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)
  %12 = load i32*, i32** %frameContent, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load i16*, i16** %dirty, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %15, i64 %idxprom8
  %17 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %17 to i32
  %tobool = icmp ne i32 %conv10, 0
  %18 = zext i1 %tobool to i64
  %cond11 = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %19 = load i32*, i32** %fixCount, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  %21 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef %cond, i32 noundef %14, i8* noundef %cond11, i32 noundef %21) #7
  %22 = load i32, i32* %pos, align 4
  %add15 = add nsw i32 %22, %call14
  store i32 %add15, i32* %pos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %24 = load i8*, i8** %message, align 8
  ret i8* %24
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printPageContent(%struct.BM_PageHandle* noundef %page) #0 {
entry:
  %page.addr = alloca %struct.BM_PageHandle*, align 8
  %i = alloca i32, align 4
  store %struct.BM_PageHandle* %page, %struct.BM_PageHandle** %page.addr, align 8
  %0 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %0, i32 0, i32 0
  %1 = load i32, i32* %pageNum, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 noundef %1)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %2, 4096
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %3, i32 0, i32 1
  %4 = load i8*, i8** %data, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load i32, i32* %i, align 4
  %rem = srem i32 %7, 8
  %tobool = icmp ne i32 %rem, 0
  %8 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %9 = load i32, i32* %i, align 4
  %rem1 = srem i32 %9, 64
  %tobool2 = icmp ne i32 %rem1, 0
  %10 = zext i1 %tobool2 to i64
  %cond3 = select i1 %tobool2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond, i8* noundef %cond3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sprintPageContent(%struct.BM_PageHandle* noundef %page) #0 {
entry:
  %page.addr = alloca %struct.BM_PageHandle*, align 8
  %i = alloca i32, align 4
  %message = alloca i8*, align 8
  %pos = alloca i32, align 4
  store %struct.BM_PageHandle* %page, %struct.BM_PageHandle** %page.addr, align 8
  store i32 0, i32* %pos, align 4
  %call = call noalias i8* @malloc(i64 noundef 8222) #7
  store i8* %call, i8** %message, align 8
  %0 = load i8*, i8** %message, align 8
  %1 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %pageNum = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %2, i32 0, i32 0
  %3 = load i32, i32* %pageNum, align 8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 noundef %3) #7
  %4 = load i32, i32* %pos, align 4
  %add = add nsw i32 %4, %call1
  store i32 %add, i32* %pos, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %5, 4096
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %message, align 8
  %7 = load i32, i32* %pos, align 4
  %idx.ext2 = sext i32 %7 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 %idx.ext2
  %8 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %page.addr, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %8, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %12 = load i32, i32* %i, align 4
  %rem = srem i32 %12, 8
  %tobool = icmp ne i32 %rem, 0
  %13 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %14 = load i32, i32* %i, align 4
  %rem4 = srem i32 %14, 64
  %tobool5 = icmp ne i32 %rem4, 0
  %15 = zext i1 %tobool5 to i64
  %cond6 = select i1 %tobool5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond, i8* noundef %cond6) #7
  %16 = load i32, i32* %pos, align 4
  %add8 = add nsw i32 %16, %call7
  store i32 %add8, i32* %pos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %message, align 8
  ret i8* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printError(i32 noundef %error) #0 {
entry:
  %error.addr = alloca i32, align 4
  store i32 %error, i32* %error.addr, align 4
  %0 = load i8*, i8** @RC_message, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %error.addr, align 4
  %2 = load i8*, i8** @RC_message, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 noundef %1, i8* noundef %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %error.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @errorMessage(i32 noundef %error) #0 {
entry:
  %error.addr = alloca i32, align 4
  %message = alloca i8*, align 8
  store i32 %error, i32* %error.addr, align 4
  %0 = load i8*, i8** @RC_message, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @RC_message, align 8
  %call = call i64 @strlen(i8* noundef %1) #8
  %add = add i64 %call, 30
  %call1 = call noalias i8* @malloc(i64 noundef %add) #7
  store i8* %call1, i8** %message, align 8
  %2 = load i8*, i8** %message, align 8
  %3 = load i32, i32* %error.addr, align 4
  %4 = load i8*, i8** @RC_message, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 noundef %3, i8* noundef %4) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call noalias i8* @malloc(i64 noundef 30) #7
  store i8* %call3, i8** %message, align 8
  %5 = load i8*, i8** %message, align 8
  %6 = load i32, i32* %error.addr, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %5, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 noundef %6) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %message, align 8
  ret i8* %7
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valueEquals(%struct.Value* noundef %left, %struct.Value* noundef %right, %struct.Value* noundef %result) #0 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca %struct.Value*, align 8
  %right.addr = alloca %struct.Value*, align 8
  %result.addr = alloca %struct.Value*, align 8
  store %struct.Value* %left, %struct.Value** %left.addr, align 8
  store %struct.Value* %right, %struct.Value** %right.addr, align 8
  store %struct.Value* %result, %struct.Value** %result.addr, align 8
  %0 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %0, i32 0, i32 0
  %1 = load i32, i32* %dt, align 8
  %2 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %dt1 = getelementptr inbounds %struct.Value, %struct.Value* %2, i32 0, i32 0
  %3 = load i32, i32* %dt1, align 8
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i64 0, i64 0), i8** @RC_message, align 8
  store i32 200, i32* %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %4 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %dt2 = getelementptr inbounds %struct.Value, %struct.Value* %4, i32 0, i32 0
  store i32 3, i32* %dt2, align 8
  %5 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %dt3 = getelementptr inbounds %struct.Value, %struct.Value* %5, i32 0, i32 0
  %6 = load i32, i32* %dt3, align 8
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb18
    i32 1, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %7, i32 0, i32 1
  %intV = bitcast %union.v* %v to i32*
  %8 = load i32, i32* %intV, align 8
  %9 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v4 = getelementptr inbounds %struct.Value, %struct.Value* %9, i32 0, i32 1
  %intV5 = bitcast %union.v* %v4 to i32*
  %10 = load i32, i32* %intV5, align 8
  %cmp6 = icmp eq i32 %8, %10
  %conv = zext i1 %cmp6 to i32
  %conv7 = trunc i32 %conv to i16
  %11 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v8 = getelementptr inbounds %struct.Value, %struct.Value* %11, i32 0, i32 1
  %boolV = bitcast %union.v* %v8 to i16*
  store i16 %conv7, i16* %boolV, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %12 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v10 = getelementptr inbounds %struct.Value, %struct.Value* %12, i32 0, i32 1
  %floatV = bitcast %union.v* %v10 to float*
  %13 = load float, float* %floatV, align 8
  %14 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v11 = getelementptr inbounds %struct.Value, %struct.Value* %14, i32 0, i32 1
  %floatV12 = bitcast %union.v* %v11 to float*
  %15 = load float, float* %floatV12, align 8
  %cmp13 = fcmp oeq float %13, %15
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = trunc i32 %conv14 to i16
  %16 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v16 = getelementptr inbounds %struct.Value, %struct.Value* %16, i32 0, i32 1
  %boolV17 = bitcast %union.v* %v16 to i16*
  store i16 %conv15, i16* %boolV17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %17 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v19 = getelementptr inbounds %struct.Value, %struct.Value* %17, i32 0, i32 1
  %boolV20 = bitcast %union.v* %v19 to i16*
  %18 = load i16, i16* %boolV20, align 8
  %conv21 = sext i16 %18 to i32
  %19 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v22 = getelementptr inbounds %struct.Value, %struct.Value* %19, i32 0, i32 1
  %boolV23 = bitcast %union.v* %v22 to i16*
  %20 = load i16, i16* %boolV23, align 8
  %conv24 = sext i16 %20 to i32
  %cmp25 = icmp eq i32 %conv21, %conv24
  %conv26 = zext i1 %cmp25 to i32
  %conv27 = trunc i32 %conv26 to i16
  %21 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v28 = getelementptr inbounds %struct.Value, %struct.Value* %21, i32 0, i32 1
  %boolV29 = bitcast %union.v* %v28 to i16*
  store i16 %conv27, i16* %boolV29, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %22 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v31 = getelementptr inbounds %struct.Value, %struct.Value* %22, i32 0, i32 1
  %stringV = bitcast %union.v* %v31 to i8**
  %23 = load i8*, i8** %stringV, align 8
  %24 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v32 = getelementptr inbounds %struct.Value, %struct.Value* %24, i32 0, i32 1
  %stringV33 = bitcast %union.v* %v32 to i8**
  %25 = load i8*, i8** %stringV33, align 8
  %call = call i32 @strcmp(i8* noundef %23, i8* noundef %25) #8
  %cmp34 = icmp eq i32 %call, 0
  %conv35 = zext i1 %cmp34 to i32
  %conv36 = trunc i32 %conv35 to i16
  %26 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v37 = getelementptr inbounds %struct.Value, %struct.Value* %26, i32 0, i32 1
  %boolV38 = bitcast %union.v* %v37 to i16*
  store i16 %conv36, i16* %boolV38, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb30, %sw.bb18, %sw.bb9, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %do.body
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valueSmaller(%struct.Value* noundef %left, %struct.Value* noundef %right, %struct.Value* noundef %result) #0 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca %struct.Value*, align 8
  %right.addr = alloca %struct.Value*, align 8
  %result.addr = alloca %struct.Value*, align 8
  store %struct.Value* %left, %struct.Value** %left.addr, align 8
  store %struct.Value* %right, %struct.Value** %right.addr, align 8
  store %struct.Value* %result, %struct.Value** %result.addr, align 8
  %0 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %0, i32 0, i32 0
  %1 = load i32, i32* %dt, align 8
  %2 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %dt1 = getelementptr inbounds %struct.Value, %struct.Value* %2, i32 0, i32 0
  %3 = load i32, i32* %dt1, align 8
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i64 0, i64 0), i8** @RC_message, align 8
  store i32 200, i32* %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %4 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %dt2 = getelementptr inbounds %struct.Value, %struct.Value* %4, i32 0, i32 0
  store i32 3, i32* %dt2, align 8
  %5 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %dt3 = getelementptr inbounds %struct.Value, %struct.Value* %5, i32 0, i32 0
  %6 = load i32, i32* %dt3, align 8
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb18
    i32 1, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %7, i32 0, i32 1
  %intV = bitcast %union.v* %v to i32*
  %8 = load i32, i32* %intV, align 8
  %9 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v4 = getelementptr inbounds %struct.Value, %struct.Value* %9, i32 0, i32 1
  %intV5 = bitcast %union.v* %v4 to i32*
  %10 = load i32, i32* %intV5, align 8
  %cmp6 = icmp slt i32 %8, %10
  %conv = zext i1 %cmp6 to i32
  %conv7 = trunc i32 %conv to i16
  %11 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v8 = getelementptr inbounds %struct.Value, %struct.Value* %11, i32 0, i32 1
  %boolV = bitcast %union.v* %v8 to i16*
  store i16 %conv7, i16* %boolV, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %12 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v10 = getelementptr inbounds %struct.Value, %struct.Value* %12, i32 0, i32 1
  %floatV = bitcast %union.v* %v10 to float*
  %13 = load float, float* %floatV, align 8
  %14 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v11 = getelementptr inbounds %struct.Value, %struct.Value* %14, i32 0, i32 1
  %floatV12 = bitcast %union.v* %v11 to float*
  %15 = load float, float* %floatV12, align 8
  %cmp13 = fcmp olt float %13, %15
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = trunc i32 %conv14 to i16
  %16 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v16 = getelementptr inbounds %struct.Value, %struct.Value* %16, i32 0, i32 1
  %boolV17 = bitcast %union.v* %v16 to i16*
  store i16 %conv15, i16* %boolV17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %17 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v19 = getelementptr inbounds %struct.Value, %struct.Value* %17, i32 0, i32 1
  %boolV20 = bitcast %union.v* %v19 to i16*
  %18 = load i16, i16* %boolV20, align 8
  %conv21 = sext i16 %18 to i32
  %19 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v22 = getelementptr inbounds %struct.Value, %struct.Value* %19, i32 0, i32 1
  %boolV23 = bitcast %union.v* %v22 to i16*
  %20 = load i16, i16* %boolV23, align 8
  %conv24 = sext i16 %20 to i32
  %cmp25 = icmp slt i32 %conv21, %conv24
  %conv26 = zext i1 %cmp25 to i32
  %conv27 = trunc i32 %conv26 to i16
  %21 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v28 = getelementptr inbounds %struct.Value, %struct.Value* %21, i32 0, i32 1
  %boolV29 = bitcast %union.v* %v28 to i16*
  store i16 %conv27, i16* %boolV29, align 8
  br label %sw.bb30

sw.bb30:                                          ; preds = %if.end, %sw.bb18
  %22 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v31 = getelementptr inbounds %struct.Value, %struct.Value* %22, i32 0, i32 1
  %stringV = bitcast %union.v* %v31 to i8**
  %23 = load i8*, i8** %stringV, align 8
  %24 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v32 = getelementptr inbounds %struct.Value, %struct.Value* %24, i32 0, i32 1
  %stringV33 = bitcast %union.v* %v32 to i8**
  %25 = load i8*, i8** %stringV33, align 8
  %call = call i32 @strcmp(i8* noundef %23, i8* noundef %25) #8
  %cmp34 = icmp slt i32 %call, 0
  %conv35 = zext i1 %cmp34 to i32
  %conv36 = trunc i32 %conv35 to i16
  %26 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v37 = getelementptr inbounds %struct.Value, %struct.Value* %26, i32 0, i32 1
  %boolV38 = bitcast %union.v* %v37 to i16*
  store i16 %conv36, i16* %boolV38, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb30, %sw.bb9, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %do.body
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @boolNot(%struct.Value* noundef %input, %struct.Value* noundef %result) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca %struct.Value*, align 8
  %result.addr = alloca %struct.Value*, align 8
  store %struct.Value* %input, %struct.Value** %input.addr, align 8
  store %struct.Value* %result, %struct.Value** %result.addr, align 8
  %0 = load %struct.Value*, %struct.Value** %input.addr, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %0, i32 0, i32 0
  %1 = load i32, i32* %dt, align 8
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i8** @RC_message, align 8
  store i32 202, i32* %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %2 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %dt1 = getelementptr inbounds %struct.Value, %struct.Value* %2, i32 0, i32 0
  store i32 3, i32* %dt1, align 8
  %3 = load %struct.Value*, %struct.Value** %input.addr, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %3, i32 0, i32 1
  %boolV = bitcast %union.v* %v to i16*
  %4 = load i16, i16* %boolV, align 8
  %tobool = icmp ne i16 %4, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i16
  %5 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v2 = getelementptr inbounds %struct.Value, %struct.Value* %5, i32 0, i32 1
  %boolV3 = bitcast %union.v* %v2 to i16*
  store i16 %conv, i16* %boolV3, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %do.body
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @boolAnd(%struct.Value* noundef %left, %struct.Value* noundef %right, %struct.Value* noundef %result) #0 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca %struct.Value*, align 8
  %right.addr = alloca %struct.Value*, align 8
  %result.addr = alloca %struct.Value*, align 8
  store %struct.Value* %left, %struct.Value** %left.addr, align 8
  store %struct.Value* %right, %struct.Value** %right.addr, align 8
  store %struct.Value* %result, %struct.Value** %result.addr, align 8
  %0 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %0, i32 0, i32 0
  %1 = load i32, i32* %dt, align 8
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %dt1 = getelementptr inbounds %struct.Value, %struct.Value* %2, i32 0, i32 0
  %3 = load i32, i32* %dt1, align 8
  %cmp2 = icmp ne i32 %3, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i8** @RC_message, align 8
  store i32 202, i32* %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %4 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %4, i32 0, i32 1
  %boolV = bitcast %union.v* %v to i16*
  %5 = load i16, i16* %boolV, align 8
  %conv = sext i16 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %6 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v3 = getelementptr inbounds %struct.Value, %struct.Value* %6, i32 0, i32 1
  %boolV4 = bitcast %union.v* %v3 to i16*
  %7 = load i16, i16* %boolV4, align 8
  %conv5 = sext i16 %7 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %8 = phi i1 [ false, %if.end ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %conv7 = trunc i32 %land.ext to i16
  %9 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v8 = getelementptr inbounds %struct.Value, %struct.Value* %9, i32 0, i32 1
  %boolV9 = bitcast %union.v* %v8 to i16*
  store i16 %conv7, i16* %boolV9, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %do.body
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @boolOr(%struct.Value* noundef %left, %struct.Value* noundef %right, %struct.Value* noundef %result) #0 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca %struct.Value*, align 8
  %right.addr = alloca %struct.Value*, align 8
  %result.addr = alloca %struct.Value*, align 8
  store %struct.Value* %left, %struct.Value** %left.addr, align 8
  store %struct.Value* %right, %struct.Value** %right.addr, align 8
  store %struct.Value* %result, %struct.Value** %result.addr, align 8
  %0 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %0, i32 0, i32 0
  %1 = load i32, i32* %dt, align 8
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %dt1 = getelementptr inbounds %struct.Value, %struct.Value* %2, i32 0, i32 0
  %3 = load i32, i32* %dt1, align 8
  %cmp2 = icmp ne i32 %3, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i8** @RC_message, align 8
  store i32 202, i32* %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %4 = load %struct.Value*, %struct.Value** %left.addr, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %4, i32 0, i32 1
  %boolV = bitcast %union.v* %v to i16*
  %5 = load i16, i16* %boolV, align 8
  %conv = sext i16 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %6 = load %struct.Value*, %struct.Value** %right.addr, align 8
  %v3 = getelementptr inbounds %struct.Value, %struct.Value* %6, i32 0, i32 1
  %boolV4 = bitcast %union.v* %v3 to i16*
  %7 = load i16, i16* %boolV4, align 8
  %conv5 = sext i16 %7 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %8 = phi i1 [ true, %if.end ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  %conv7 = trunc i32 %lor.ext to i16
  %9 = load %struct.Value*, %struct.Value** %result.addr, align 8
  %v8 = getelementptr inbounds %struct.Value, %struct.Value* %9, i32 0, i32 1
  %boolV9 = bitcast %union.v* %v8 to i16*
  store i16 %conv7, i16* %boolV9, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %do.body
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evalExpr(%struct.Record* noundef %record, %struct.Schema* noundef %schema, %struct.Expr* noundef %expr, %struct.Value** noundef %result) #0 {
entry:
  %record.addr = alloca %struct.Record*, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %expr.addr = alloca %struct.Expr*, align 8
  %result.addr = alloca %struct.Value**, align 8
  %lIn = alloca %struct.Value*, align 8
  %rIn = alloca %struct.Value*, align 8
  %op = alloca %struct.Operator*, align 8
  %twoArgs = alloca i16, align 2
  %rc_internal = alloca i32, align 4
  %message = alloca i8*, align 8
  %rc_internal14 = alloca i32, align 4
  %message21 = alloca i8*, align 8
  %rc_internal30 = alloca i32, align 4
  %message35 = alloca i8*, align 8
  %rc_internal42 = alloca i32, align 4
  %message47 = alloca i8*, align 8
  %rc_internal54 = alloca i32, align 4
  %message59 = alloca i8*, align 8
  %rc_internal66 = alloca i32, align 4
  %message71 = alloca i8*, align 8
  %rc_internal78 = alloca i32, align 4
  %message83 = alloca i8*, align 8
  %rc_internal137 = alloca i32, align 4
  %message143 = alloca i8*, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  store %struct.Expr* %expr, %struct.Expr** %expr.addr, align 8
  store %struct.Value** %result, %struct.Value*** %result.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.Value*
  %1 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  store %struct.Value* %0, %struct.Value** %1, align 8
  %2 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %3 = load %struct.Value*, %struct.Value** %2, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %3, i32 0, i32 0
  store i32 0, i32* %dt, align 8
  %4 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %5 = load %struct.Value*, %struct.Value** %4, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %5, i32 0, i32 1
  %intV = bitcast %union.v* %v to i32*
  store i32 -1, i32* %intV, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %type = getelementptr inbounds %struct.Expr, %struct.Expr* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  switch i32 %7, label %sw.epilog148 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb91
    i32 2, label %sw.bb135
  ]

sw.bb:                                            ; preds = %do.end
  %8 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr1 = getelementptr inbounds %struct.Expr, %struct.Expr* %8, i32 0, i32 1
  %op2 = bitcast %union.expr* %expr1 to %struct.Operator**
  %9 = load %struct.Operator*, %struct.Operator** %op2, align 8
  store %struct.Operator* %9, %struct.Operator** %op, align 8
  %10 = load %struct.Operator*, %struct.Operator** %op, align 8
  %type3 = getelementptr inbounds %struct.Operator, %struct.Operator* %10, i32 0, i32 0
  %11 = load i32, i32* %type3, align 8
  %cmp = icmp ne i32 %11, 2
  %conv = zext i1 %cmp to i32
  %conv4 = trunc i32 %conv to i16
  store i16 %conv4, i16* %twoArgs, align 2
  br label %do.body5

do.body5:                                         ; preds = %sw.bb
  %12 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %13 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %14 = load %struct.Operator*, %struct.Operator** %op, align 8
  %args = getelementptr inbounds %struct.Operator, %struct.Operator* %14, i32 0, i32 1
  %15 = load %struct.Expr**, %struct.Expr*** %args, align 8
  %arrayidx = getelementptr inbounds %struct.Expr*, %struct.Expr** %15, i64 0
  %16 = load %struct.Expr*, %struct.Expr** %arrayidx, align 8
  %call6 = call i32 @evalExpr(%struct.Record* noundef %12, %struct.Schema* noundef %13, %struct.Expr* noundef %16, %struct.Value** noundef %lIn)
  store i32 %call6, i32* %rc_internal, align 4
  %17 = load i32, i32* %rc_internal, align 4
  %cmp7 = icmp ne i32 %17, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %do.body5
  %18 = load i32, i32* %rc_internal, align 4
  %call9 = call i8* @errorMessage(i32 noundef %18)
  store i8* %call9, i8** %message, align 8
  %19 = load i8*, i8** %message, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.30, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %19)
  %20 = load i8*, i8** %message, align 8
  call void @free(i8* noundef %20) #7
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %do.body5
  br label %do.end11

do.end11:                                         ; preds = %if.end
  %21 = load i16, i16* %twoArgs, align 2
  %tobool = icmp ne i16 %21, 0
  br i1 %tobool, label %if.then12, label %if.end26

if.then12:                                        ; preds = %do.end11
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  %22 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %23 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %24 = load %struct.Operator*, %struct.Operator** %op, align 8
  %args15 = getelementptr inbounds %struct.Operator, %struct.Operator* %24, i32 0, i32 1
  %25 = load %struct.Expr**, %struct.Expr*** %args15, align 8
  %arrayidx16 = getelementptr inbounds %struct.Expr*, %struct.Expr** %25, i64 1
  %26 = load %struct.Expr*, %struct.Expr** %arrayidx16, align 8
  %call17 = call i32 @evalExpr(%struct.Record* noundef %22, %struct.Schema* noundef %23, %struct.Expr* noundef %26, %struct.Value** noundef %rIn)
  store i32 %call17, i32* %rc_internal14, align 4
  %27 = load i32, i32* %rc_internal14, align 4
  %cmp18 = icmp ne i32 %27, 0
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %do.body13
  %28 = load i32, i32* %rc_internal14, align 4
  %call22 = call i8* @errorMessage(i32 noundef %28)
  store i8* %call22, i8** %message21, align 8
  %29 = load i8*, i8** %message21, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.30, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %29)
  %30 = load i8*, i8** %message21, align 8
  call void @free(i8* noundef %30) #7
  call void @exit(i32 noundef 1) #9
  unreachable

if.end24:                                         ; preds = %do.body13
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.end11
  %31 = load %struct.Operator*, %struct.Operator** %op, align 8
  %type27 = getelementptr inbounds %struct.Operator, %struct.Operator* %31, i32 0, i32 0
  %32 = load i32, i32* %type27, align 8
  switch i32 %32, label %sw.default [
    i32 2, label %sw.bb28
    i32 0, label %sw.bb40
    i32 1, label %sw.bb52
    i32 3, label %sw.bb64
    i32 4, label %sw.bb76
  ]

sw.bb28:                                          ; preds = %if.end26
  br label %do.body29

do.body29:                                        ; preds = %sw.bb28
  %33 = load %struct.Value*, %struct.Value** %lIn, align 8
  %34 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %35 = load %struct.Value*, %struct.Value** %34, align 8
  %call31 = call i32 @boolNot(%struct.Value* noundef %33, %struct.Value* noundef %35)
  store i32 %call31, i32* %rc_internal30, align 4
  %36 = load i32, i32* %rc_internal30, align 4
  %cmp32 = icmp ne i32 %36, 0
  br i1 %cmp32, label %if.then34, label %if.end38

if.then34:                                        ; preds = %do.body29
  %37 = load i32, i32* %rc_internal30, align 4
  %call36 = call i8* @errorMessage(i32 noundef %37)
  store i8* %call36, i8** %message35, align 8
  %38 = load i8*, i8** %message35, align 8
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.30, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %38)
  %39 = load i8*, i8** %message35, align 8
  call void @free(i8* noundef %39) #7
  call void @exit(i32 noundef 1) #9
  unreachable

if.end38:                                         ; preds = %do.body29
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end26
  br label %do.body41

do.body41:                                        ; preds = %sw.bb40
  %40 = load %struct.Value*, %struct.Value** %lIn, align 8
  %41 = load %struct.Value*, %struct.Value** %rIn, align 8
  %42 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %43 = load %struct.Value*, %struct.Value** %42, align 8
  %call43 = call i32 @boolAnd(%struct.Value* noundef %40, %struct.Value* noundef %41, %struct.Value* noundef %43)
  store i32 %call43, i32* %rc_internal42, align 4
  %44 = load i32, i32* %rc_internal42, align 4
  %cmp44 = icmp ne i32 %44, 0
  br i1 %cmp44, label %if.then46, label %if.end50

if.then46:                                        ; preds = %do.body41
  %45 = load i32, i32* %rc_internal42, align 4
  %call48 = call i8* @errorMessage(i32 noundef %45)
  store i8* %call48, i8** %message47, align 8
  %46 = load i8*, i8** %message47, align 8
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.30, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %46)
  %47 = load i8*, i8** %message47, align 8
  call void @free(i8* noundef %47) #7
  call void @exit(i32 noundef 1) #9
  unreachable

if.end50:                                         ; preds = %do.body41
  br label %do.end51

do.end51:                                         ; preds = %if.end50
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end26
  br label %do.body53

do.body53:                                        ; preds = %sw.bb52
  %48 = load %struct.Value*, %struct.Value** %lIn, align 8
  %49 = load %struct.Value*, %struct.Value** %rIn, align 8
  %50 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %51 = load %struct.Value*, %struct.Value** %50, align 8
  %call55 = call i32 @boolOr(%struct.Value* noundef %48, %struct.Value* noundef %49, %struct.Value* noundef %51)
  store i32 %call55, i32* %rc_internal54, align 4
  %52 = load i32, i32* %rc_internal54, align 4
  %cmp56 = icmp ne i32 %52, 0
  br i1 %cmp56, label %if.then58, label %if.end62

if.then58:                                        ; preds = %do.body53
  %53 = load i32, i32* %rc_internal54, align 4
  %call60 = call i8* @errorMessage(i32 noundef %53)
  store i8* %call60, i8** %message59, align 8
  %54 = load i8*, i8** %message59, align 8
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.30, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %54)
  %55 = load i8*, i8** %message59, align 8
  call void @free(i8* noundef %55) #7
  call void @exit(i32 noundef 1) #9
  unreachable

if.end62:                                         ; preds = %do.body53
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end26
  br label %do.body65

do.body65:                                        ; preds = %sw.bb64
  %56 = load %struct.Value*, %struct.Value** %lIn, align 8
  %57 = load %struct.Value*, %struct.Value** %rIn, align 8
  %58 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %59 = load %struct.Value*, %struct.Value** %58, align 8
  %call67 = call i32 @valueEquals(%struct.Value* noundef %56, %struct.Value* noundef %57, %struct.Value* noundef %59)
  store i32 %call67, i32* %rc_internal66, align 4
  %60 = load i32, i32* %rc_internal66, align 4
  %cmp68 = icmp ne i32 %60, 0
  br i1 %cmp68, label %if.then70, label %if.end74

if.then70:                                        ; preds = %do.body65
  %61 = load i32, i32* %rc_internal66, align 4
  %call72 = call i8* @errorMessage(i32 noundef %61)
  store i8* %call72, i8** %message71, align 8
  %62 = load i8*, i8** %message71, align 8
  %call73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.30, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %62)
  %63 = load i8*, i8** %message71, align 8
  call void @free(i8* noundef %63) #7
  call void @exit(i32 noundef 1) #9
  unreachable

if.end74:                                         ; preds = %do.body65
  br label %do.end75

do.end75:                                         ; preds = %if.end74
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end26
  br label %do.body77

do.body77:                                        ; preds = %sw.bb76
  %64 = load %struct.Value*, %struct.Value** %lIn, align 8
  %65 = load %struct.Value*, %struct.Value** %rIn, align 8
  %66 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %67 = load %struct.Value*, %struct.Value** %66, align 8
  %call79 = call i32 @valueSmaller(%struct.Value* noundef %64, %struct.Value* noundef %65, %struct.Value* noundef %67)
  store i32 %call79, i32* %rc_internal78, align 4
  %68 = load i32, i32* %rc_internal78, align 4
  %cmp80 = icmp ne i32 %68, 0
  br i1 %cmp80, label %if.then82, label %if.end86

if.then82:                                        ; preds = %do.body77
  %69 = load i32, i32* %rc_internal78, align 4
  %call84 = call i8* @errorMessage(i32 noundef %69)
  store i8* %call84, i8** %message83, align 8
  %70 = load i8*, i8** %message83, align 8
  %call85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.30, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %70)
  %71 = load i8*, i8** %message83, align 8
  call void @free(i8* noundef %71) #7
  call void @exit(i32 noundef 1) #9
  unreachable

if.end86:                                         ; preds = %do.body77
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  br label %sw.epilog

sw.default:                                       ; preds = %if.end26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end87, %do.end75, %do.end63, %do.end51, %do.end39
  %72 = load %struct.Value*, %struct.Value** %lIn, align 8
  call void @freeVal(%struct.Value* noundef %72)
  %73 = load i16, i16* %twoArgs, align 2
  %tobool88 = icmp ne i16 %73, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %sw.epilog
  %74 = load %struct.Value*, %struct.Value** %rIn, align 8
  call void @freeVal(%struct.Value* noundef %74)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %sw.epilog
  br label %sw.epilog148

sw.bb91:                                          ; preds = %do.end
  br label %do.body92

do.body92:                                        ; preds = %sw.bb91
  %75 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr93 = getelementptr inbounds %struct.Expr, %struct.Expr* %75, i32 0, i32 1
  %cons = bitcast %union.expr* %expr93 to %struct.Value**
  %76 = load %struct.Value*, %struct.Value** %cons, align 8
  %dt94 = getelementptr inbounds %struct.Value, %struct.Value* %76, i32 0, i32 0
  %77 = load i32, i32* %dt94, align 8
  %78 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %79 = load %struct.Value*, %struct.Value** %78, align 8
  %dt95 = getelementptr inbounds %struct.Value, %struct.Value* %79, i32 0, i32 0
  store i32 %77, i32* %dt95, align 8
  %80 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr96 = getelementptr inbounds %struct.Expr, %struct.Expr* %80, i32 0, i32 1
  %cons97 = bitcast %union.expr* %expr96 to %struct.Value**
  %81 = load %struct.Value*, %struct.Value** %cons97, align 8
  %dt98 = getelementptr inbounds %struct.Value, %struct.Value* %81, i32 0, i32 0
  %82 = load i32, i32* %dt98, align 8
  switch i32 %82, label %sw.epilog133 [
    i32 0, label %sw.bb99
    i32 1, label %sw.bb106
    i32 2, label %sw.bb121
    i32 3, label %sw.bb127
  ]

sw.bb99:                                          ; preds = %do.body92
  %83 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr100 = getelementptr inbounds %struct.Expr, %struct.Expr* %83, i32 0, i32 1
  %cons101 = bitcast %union.expr* %expr100 to %struct.Value**
  %84 = load %struct.Value*, %struct.Value** %cons101, align 8
  %v102 = getelementptr inbounds %struct.Value, %struct.Value* %84, i32 0, i32 1
  %intV103 = bitcast %union.v* %v102 to i32*
  %85 = load i32, i32* %intV103, align 8
  %86 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %87 = load %struct.Value*, %struct.Value** %86, align 8
  %v104 = getelementptr inbounds %struct.Value, %struct.Value* %87, i32 0, i32 1
  %intV105 = bitcast %union.v* %v104 to i32*
  store i32 %85, i32* %intV105, align 8
  br label %sw.epilog133

sw.bb106:                                         ; preds = %do.body92
  %88 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr107 = getelementptr inbounds %struct.Expr, %struct.Expr* %88, i32 0, i32 1
  %cons108 = bitcast %union.expr* %expr107 to %struct.Value**
  %89 = load %struct.Value*, %struct.Value** %cons108, align 8
  %v109 = getelementptr inbounds %struct.Value, %struct.Value* %89, i32 0, i32 1
  %stringV = bitcast %union.v* %v109 to i8**
  %90 = load i8*, i8** %stringV, align 8
  %call110 = call i64 @strlen(i8* noundef %90) #8
  %add = add i64 %call110, 1
  %call111 = call noalias i8* @malloc(i64 noundef %add) #7
  %91 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %92 = load %struct.Value*, %struct.Value** %91, align 8
  %v112 = getelementptr inbounds %struct.Value, %struct.Value* %92, i32 0, i32 1
  %stringV113 = bitcast %union.v* %v112 to i8**
  store i8* %call111, i8** %stringV113, align 8
  %93 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %94 = load %struct.Value*, %struct.Value** %93, align 8
  %v114 = getelementptr inbounds %struct.Value, %struct.Value* %94, i32 0, i32 1
  %stringV115 = bitcast %union.v* %v114 to i8**
  %95 = load i8*, i8** %stringV115, align 8
  %96 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr116 = getelementptr inbounds %struct.Expr, %struct.Expr* %96, i32 0, i32 1
  %cons117 = bitcast %union.expr* %expr116 to %struct.Value**
  %97 = load %struct.Value*, %struct.Value** %cons117, align 8
  %v118 = getelementptr inbounds %struct.Value, %struct.Value* %97, i32 0, i32 1
  %stringV119 = bitcast %union.v* %v118 to i8**
  %98 = load i8*, i8** %stringV119, align 8
  %call120 = call i8* @strcpy(i8* noundef %95, i8* noundef %98) #7
  br label %sw.epilog133

sw.bb121:                                         ; preds = %do.body92
  %99 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr122 = getelementptr inbounds %struct.Expr, %struct.Expr* %99, i32 0, i32 1
  %cons123 = bitcast %union.expr* %expr122 to %struct.Value**
  %100 = load %struct.Value*, %struct.Value** %cons123, align 8
  %v124 = getelementptr inbounds %struct.Value, %struct.Value* %100, i32 0, i32 1
  %floatV = bitcast %union.v* %v124 to float*
  %101 = load float, float* %floatV, align 8
  %102 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %103 = load %struct.Value*, %struct.Value** %102, align 8
  %v125 = getelementptr inbounds %struct.Value, %struct.Value* %103, i32 0, i32 1
  %floatV126 = bitcast %union.v* %v125 to float*
  store float %101, float* %floatV126, align 8
  br label %sw.epilog133

sw.bb127:                                         ; preds = %do.body92
  %104 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr128 = getelementptr inbounds %struct.Expr, %struct.Expr* %104, i32 0, i32 1
  %cons129 = bitcast %union.expr* %expr128 to %struct.Value**
  %105 = load %struct.Value*, %struct.Value** %cons129, align 8
  %v130 = getelementptr inbounds %struct.Value, %struct.Value* %105, i32 0, i32 1
  %boolV = bitcast %union.v* %v130 to i16*
  %106 = load i16, i16* %boolV, align 8
  %107 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %108 = load %struct.Value*, %struct.Value** %107, align 8
  %v131 = getelementptr inbounds %struct.Value, %struct.Value* %108, i32 0, i32 1
  %boolV132 = bitcast %union.v* %v131 to i16*
  store i16 %106, i16* %boolV132, align 8
  br label %sw.epilog133

sw.epilog133:                                     ; preds = %do.body92, %sw.bb127, %sw.bb121, %sw.bb106, %sw.bb99
  br label %do.end134

do.end134:                                        ; preds = %sw.epilog133
  br label %sw.epilog148

sw.bb135:                                         ; preds = %do.end
  %109 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %110 = load %struct.Value*, %struct.Value** %109, align 8
  %111 = bitcast %struct.Value* %110 to i8*
  call void @free(i8* noundef %111) #7
  br label %do.body136

do.body136:                                       ; preds = %sw.bb135
  %112 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %113 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %114 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr138 = getelementptr inbounds %struct.Expr, %struct.Expr* %114, i32 0, i32 1
  %attrRef = bitcast %union.expr* %expr138 to i32*
  %115 = load i32, i32* %attrRef, align 8
  %116 = load %struct.Value**, %struct.Value*** %result.addr, align 8
  %call139 = call i32 @getAttr(%struct.Record* noundef %112, %struct.Schema* noundef %113, i32 noundef %115, %struct.Value** noundef %116)
  store i32 %call139, i32* %rc_internal137, align 4
  %117 = load i32, i32* %rc_internal137, align 4
  %cmp140 = icmp ne i32 %117, 0
  br i1 %cmp140, label %if.then142, label %if.end146

if.then142:                                       ; preds = %do.body136
  %118 = load i32, i32* %rc_internal137, align 4
  %call144 = call i8* @errorMessage(i32 noundef %118)
  store i8* %call144, i8** %message143, align 8
  %119 = load i8*, i8** %message143, align 8
  %call145 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.30, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* noundef %119)
  %120 = load i8*, i8** %message143, align 8
  call void @free(i8* noundef %120) #7
  call void @exit(i32 noundef 1) #9
  unreachable

if.end146:                                        ; preds = %do.body136
  br label %do.end147

do.end147:                                        ; preds = %if.end146
  br label %sw.epilog148

sw.epilog148:                                     ; preds = %do.end, %do.end147, %do.end134, %if.end90
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeVal(%struct.Value* noundef %val) #0 {
entry:
  %val.addr = alloca %struct.Value*, align 8
  store %struct.Value* %val, %struct.Value** %val.addr, align 8
  %0 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %0, i32 0, i32 0
  %1 = load i32, i32* %dt, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %2, i32 0, i32 1
  %stringV = bitcast %union.v* %v to i8**
  %3 = load i8*, i8** %stringV, align 8
  call void @free(i8* noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %5 = bitcast %struct.Value* %4 to i8*
  call void @free(i8* noundef %5) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getAttr(%struct.Record* noundef %record, %struct.Schema* noundef %schema, i32 noundef %attrNum, %struct.Value** noundef %value) #0 {
entry:
  %record.addr = alloca %struct.Record*, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %attrNum.addr = alloca i32, align 4
  %value.addr = alloca %struct.Value**, align 8
  %baseAddr = alloca i8*, align 8
  %intValue = alloca i32*, align 8
  %floatValue = alloca float*, align 8
  %boolValue = alloca i16*, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  store i32 %attrNum, i32* %attrNum.addr, align 4
  store %struct.Value** %value, %struct.Value*** %value.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.Value*
  %1 = load %struct.Value**, %struct.Value*** %value.addr, align 8
  store %struct.Value* %0, %struct.Value** %1, align 8
  %2 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %2, i32 0, i32 2
  %3 = load i32*, i32** %dataTypes, align 8
  %4 = load i32, i32* %attrNum.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load %struct.Value**, %struct.Value*** %value.addr, align 8
  %7 = load %struct.Value*, %struct.Value** %6, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %7, i32 0, i32 0
  store i32 %5, i32* %dt, align 8
  %8 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %data = getelementptr inbounds %struct.Record, %struct.Record* %8, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8
  %10 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %11 = load i32, i32* %attrNum.addr, align 4
  %call1 = call i32 @getAttrPos(%struct.Schema* noundef %10, i32 noundef %11)
  %idx.ext = sext i32 %call1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %baseAddr, align 8
  %12 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes2 = getelementptr inbounds %struct.Schema, %struct.Schema* %12, i32 0, i32 2
  %13 = load i32*, i32** %dataTypes2, align 8
  %14 = load i32, i32* %attrNum.addr, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 %idxprom3
  %15 = load i32, i32* %arrayidx4, align 4
  switch i32 %15, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb15
    i32 2, label %sw.bb17
    i32 3, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %16 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %16, i32 0, i32 3
  %17 = load i32*, i32** %typeLength, align 8
  %18 = load i32, i32* %attrNum.addr, align 4
  %idxprom5 = sext i32 %18 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %17, i64 %idxprom5
  %19 = load i32, i32* %arrayidx6, align 4
  %add = add nsw i32 %19, 1
  %conv = sext i32 %add to i64
  %call7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %conv) #7
  %20 = load %struct.Value**, %struct.Value*** %value.addr, align 8
  %21 = load %struct.Value*, %struct.Value** %20, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %21, i32 0, i32 1
  %stringV = bitcast %union.v* %v to i8**
  store i8* %call7, i8** %stringV, align 8
  %22 = load %struct.Value**, %struct.Value*** %value.addr, align 8
  %23 = load %struct.Value*, %struct.Value** %22, align 8
  %v8 = getelementptr inbounds %struct.Value, %struct.Value* %23, i32 0, i32 1
  %stringV9 = bitcast %union.v* %v8 to i8**
  %24 = load i8*, i8** %stringV9, align 8
  %25 = load i8*, i8** %baseAddr, align 8
  %26 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength10 = getelementptr inbounds %struct.Schema, %struct.Schema* %26, i32 0, i32 3
  %27 = load i32*, i32** %typeLength10, align 8
  %28 = load i32, i32* %attrNum.addr, align 4
  %idxprom11 = sext i32 %28 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %27, i64 %idxprom11
  %29 = load i32, i32* %arrayidx12, align 4
  %conv13 = sext i32 %29 to i64
  %call14 = call i8* @strncpy(i8* noundef %24, i8* noundef %25, i64 noundef %conv13) #7
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %30 = load i8*, i8** %baseAddr, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %intValue, align 8
  %32 = load i32*, i32** %intValue, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.Value**, %struct.Value*** %value.addr, align 8
  %35 = load %struct.Value*, %struct.Value** %34, align 8
  %v16 = getelementptr inbounds %struct.Value, %struct.Value* %35, i32 0, i32 1
  %intV = bitcast %union.v* %v16 to i32*
  store i32 %33, i32* %intV, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %36 = load i8*, i8** %baseAddr, align 8
  %37 = bitcast i8* %36 to float*
  store float* %37, float** %floatValue, align 8
  %38 = load float*, float** %floatValue, align 8
  %39 = load float, float* %38, align 4
  %40 = load %struct.Value**, %struct.Value*** %value.addr, align 8
  %41 = load %struct.Value*, %struct.Value** %40, align 8
  %v18 = getelementptr inbounds %struct.Value, %struct.Value* %41, i32 0, i32 1
  %floatV = bitcast %union.v* %v18 to float*
  store float %39, float* %floatV, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %42 = load i8*, i8** %baseAddr, align 8
  %43 = bitcast i8* %42 to i16*
  store i16* %43, i16** %boolValue, align 8
  %44 = load i16*, i16** %boolValue, align 8
  %45 = load i16, i16* %44, align 2
  %46 = load %struct.Value**, %struct.Value*** %value.addr, align 8
  %47 = load %struct.Value*, %struct.Value** %46, align 8
  %v20 = getelementptr inbounds %struct.Value, %struct.Value* %47, i32 0, i32 1
  %boolV = bitcast %union.v* %v20 to i16*
  store i16 %45, i16* %boolV, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeExpr(%struct.Expr* noundef %expr) #0 {
entry:
  %expr.addr = alloca %struct.Expr*, align 8
  %op = alloca %struct.Operator*, align 8
  store %struct.Expr* %expr, %struct.Expr** %expr.addr, align 8
  %0 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %type = getelementptr inbounds %struct.Expr, %struct.Expr* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  switch i32 %1, label %sw.epilog15 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr1 = getelementptr inbounds %struct.Expr, %struct.Expr* %2, i32 0, i32 1
  %op2 = bitcast %union.expr* %expr1 to %struct.Operator**
  %3 = load %struct.Operator*, %struct.Operator** %op2, align 8
  store %struct.Operator* %3, %struct.Operator** %op, align 8
  %4 = load %struct.Operator*, %struct.Operator** %op, align 8
  %type3 = getelementptr inbounds %struct.Operator, %struct.Operator* %4, i32 0, i32 0
  %5 = load i32, i32* %type3, align 8
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb4
  ]

sw.bb4:                                           ; preds = %sw.bb
  %6 = load %struct.Operator*, %struct.Operator** %op, align 8
  %args = getelementptr inbounds %struct.Operator, %struct.Operator* %6, i32 0, i32 1
  %7 = load %struct.Expr**, %struct.Expr*** %args, align 8
  %arrayidx = getelementptr inbounds %struct.Expr*, %struct.Expr** %7, i64 0
  %8 = load %struct.Expr*, %struct.Expr** %arrayidx, align 8
  %call = call i32 @freeExpr(%struct.Expr* noundef %8)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %9 = load %struct.Operator*, %struct.Operator** %op, align 8
  %args5 = getelementptr inbounds %struct.Operator, %struct.Operator* %9, i32 0, i32 1
  %10 = load %struct.Expr**, %struct.Expr*** %args5, align 8
  %arrayidx6 = getelementptr inbounds %struct.Expr*, %struct.Expr** %10, i64 0
  %11 = load %struct.Expr*, %struct.Expr** %arrayidx6, align 8
  %call7 = call i32 @freeExpr(%struct.Expr* noundef %11)
  %12 = load %struct.Operator*, %struct.Operator** %op, align 8
  %args8 = getelementptr inbounds %struct.Operator, %struct.Operator* %12, i32 0, i32 1
  %13 = load %struct.Expr**, %struct.Expr*** %args8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Expr*, %struct.Expr** %13, i64 1
  %14 = load %struct.Expr*, %struct.Expr** %arrayidx9, align 8
  %call10 = call i32 @freeExpr(%struct.Expr* noundef %14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4
  %15 = load %struct.Operator*, %struct.Operator** %op, align 8
  %args11 = getelementptr inbounds %struct.Operator, %struct.Operator* %15, i32 0, i32 1
  %16 = load %struct.Expr**, %struct.Expr*** %args11, align 8
  %17 = bitcast %struct.Expr** %16 to i8*
  call void @free(i8* noundef %17) #7
  br label %sw.epilog15

sw.bb12:                                          ; preds = %entry
  %18 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %expr13 = getelementptr inbounds %struct.Expr, %struct.Expr* %18, i32 0, i32 1
  %cons = bitcast %union.expr* %expr13 to %struct.Value**
  %19 = load %struct.Value*, %struct.Value** %cons, align 8
  call void @freeVal(%struct.Value* noundef %19)
  br label %sw.epilog15

sw.bb14:                                          ; preds = %entry
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %entry, %sw.bb14, %sw.bb12, %sw.epilog
  %20 = load %struct.Expr*, %struct.Expr** %expr.addr, align 8
  %21 = bitcast %struct.Expr* %20 to i8*
  call void @free(i8* noundef %21) #7
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initRecordManager(i8* noundef %mgmtData) #0 {
entry:
  %mgmtData.addr = alloca i8*, align 8
  store i8* %mgmtData, i8** %mgmtData.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shutdownRecordManager() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handleCleanup(%struct.BM_BufferPool* noundef %bufferPool, %struct.BM_PageHandle* noundef %pageHandle, %struct.TableManager* noundef %tableManager) #0 {
entry:
  %bufferPool.addr = alloca %struct.BM_BufferPool*, align 8
  %pageHandle.addr = alloca %struct.BM_PageHandle*, align 8
  %tableManager.addr = alloca %struct.TableManager*, align 8
  store %struct.BM_BufferPool* %bufferPool, %struct.BM_BufferPool** %bufferPool.addr, align 8
  store %struct.BM_PageHandle* %pageHandle, %struct.BM_PageHandle** %pageHandle.addr, align 8
  store %struct.TableManager* %tableManager, %struct.TableManager** %tableManager.addr, align 8
  %0 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool.addr, align 8
  %cmp = icmp ne %struct.BM_BufferPool* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool.addr, align 8
  %call = call i32 @shutdownBufferPool(%struct.BM_BufferPool* noundef %1)
  %2 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool.addr, align 8
  %3 = bitcast %struct.BM_BufferPool* %2 to i8*
  call void @free(i8* noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle.addr, align 8
  %cmp1 = icmp ne %struct.BM_PageHandle* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle.addr, align 8
  %6 = bitcast %struct.BM_PageHandle* %5 to i8*
  call void @free(i8* noundef %6) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %cmp4 = icmp ne %struct.TableManager* %7, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %8 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %9 = bitcast %struct.TableManager* %8 to i8*
  call void @free(i8* noundef %9) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @createTable(i8* noundef %name, %struct.Schema* noundef %schema) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %bufferPool = alloca %struct.BM_BufferPool*, align 8
  %pageHandle = alloca %struct.BM_PageHandle*, align 8
  %tableManager = alloca %struct.TableManager*, align 8
  %result = alloca i32, align 4
  %tableHeaderPtr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %cmp1 = icmp eq %struct.Schema* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 411, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 24) #7
  %2 = bitcast i8* %call to %struct.BM_BufferPool*
  store %struct.BM_BufferPool* %2, %struct.BM_BufferPool** %bufferPool, align 8
  %3 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %cmp2 = icmp eq %struct.BM_BufferPool* %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 401, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #7
  %4 = bitcast i8* %call5 to %struct.BM_PageHandle*
  store %struct.BM_PageHandle* %4, %struct.BM_PageHandle** %pageHandle, align 8
  %5 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %cmp6 = icmp eq %struct.BM_PageHandle* %5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %6 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %7 = bitcast %struct.BM_BufferPool* %6 to i8*
  call void @free(i8* noundef %7) #7
  store i32 401, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %call9 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 40) #7
  %8 = bitcast i8* %call9 to %struct.TableManager*
  store %struct.TableManager* %8, %struct.TableManager** %tableManager, align 8
  %9 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %cmp10 = icmp eq %struct.TableManager* %9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %10 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %11 = bitcast %struct.BM_PageHandle* %10 to i8*
  call void @free(i8* noundef %11) #7
  %12 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %13 = bitcast %struct.BM_BufferPool* %12 to i8*
  call void @free(i8* noundef %13) #7
  store i32 401, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %14 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @createPageFile(i8* noundef %14)
  store i32 %call13, i32* %result, align 4
  %15 = load i32, i32* %result, align 4
  %cmp14 = icmp ne i32 %15, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %16 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %17 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %18 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  call void @handleCleanup(%struct.BM_BufferPool* noundef %16, %struct.BM_PageHandle* noundef %17, %struct.TableManager* noundef %18)
  %19 = load i32, i32* %result, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %20 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call17 = call i32 @initBufferPool(%struct.BM_BufferPool* noundef %20, i8* noundef %21, i32 noundef 3, i32 noundef 0, i8* noundef null)
  store i32 %call17, i32* %result, align 4
  %22 = load i32, i32* %result, align 4
  %cmp18 = icmp ne i32 %22, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %23 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %24 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %25 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  call void @handleCleanup(%struct.BM_BufferPool* noundef %23, %struct.BM_PageHandle* noundef %24, %struct.TableManager* noundef %25)
  %26 = load i32, i32* %result, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %27 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %28 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call21 = call i32 @pinPage(%struct.BM_BufferPool* noundef %27, %struct.BM_PageHandle* noundef %28, i32 noundef 0)
  store i32 %call21, i32* %result, align 4
  %29 = load i32, i32* %result, align 4
  %cmp22 = icmp ne i32 %29, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %30 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %31 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %32 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  call void @handleCleanup(%struct.BM_BufferPool* noundef %30, %struct.BM_PageHandle* noundef %31, %struct.TableManager* noundef %32)
  %33 = load i32, i32* %result, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %34 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %34, i32 0, i32 1
  %35 = load i8*, i8** %data, align 8
  store i8* %35, i8** %tableHeaderPtr, align 8
  %36 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %37 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  call void @prepareTableHeader(i8** noundef %tableHeaderPtr, %struct.TableManager* noundef %36, %struct.Schema* noundef %37)
  %38 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %39 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call25 = call i32 @markDirty(%struct.BM_BufferPool* noundef %38, %struct.BM_PageHandle* noundef %39)
  store i32 %call25, i32* %result, align 4
  %40 = load i32, i32* %result, align 4
  %cmp26 = icmp ne i32 %40, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %41 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %42 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %43 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  call void @handleCleanup(%struct.BM_BufferPool* noundef %41, %struct.BM_PageHandle* noundef %42, %struct.TableManager* noundef %43)
  %44 = load i32, i32* %result, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %45 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %46 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call29 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %45, %struct.BM_PageHandle* noundef %46)
  store i32 %call29, i32* %result, align 4
  %47 = load i32, i32* %result, align 4
  %cmp30 = icmp ne i32 %47, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %48 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %49 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %50 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  call void @handleCleanup(%struct.BM_BufferPool* noundef %48, %struct.BM_PageHandle* noundef %49, %struct.TableManager* noundef %50)
  %51 = load i32, i32* %result, align 4
  store i32 %51, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end28
  %52 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %call33 = call i32 @shutdownBufferPool(%struct.BM_BufferPool* noundef %52)
  store i32 %call33, i32* %result, align 4
  %53 = load i32, i32* %result, align 4
  %cmp34 = icmp ne i32 %53, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  %54 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferPool, align 8
  %55 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %56 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  call void @handleCleanup(%struct.BM_BufferPool* noundef %54, %struct.BM_PageHandle* noundef %55, %struct.TableManager* noundef %56)
  %57 = load i32, i32* %result, align 4
  store i32 %57, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @createPageFile(i8* noundef %fileName) #0 {
entry:
  %retval = alloca i32, align 4
  %fileName.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %emptyPage = alloca i8*, align 8
  %writeSize = alloca i64, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @calloc(i64 noundef 4096, i64 noundef 1) #7
  store i8* %call1, i8** %emptyPage, align 8
  %2 = load i8*, i8** %emptyPage, align 8
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* noundef %3)
  store i32 3, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i8*, i8** %emptyPage, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call6 = call i64 @fwrite(i8* noundef %4, i64 noundef 1, i64 noundef 4096, %struct._IO_FILE* noundef %5)
  store i64 %call6, i64* %writeSize, align 8
  %6 = load i8*, i8** %emptyPage, align 8
  call void @free(i8* noundef %6) #7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* noundef %7)
  %8 = load i64, i64* %writeSize, align 8
  %cmp8 = icmp ult i64 %8, 4096
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 3, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepareTableHeader(i8** noundef %tableHeaderPtr, %struct.TableManager* noundef %tableManager, %struct.Schema* noundef %schema) #0 {
entry:
  %tableHeaderPtr.addr = alloca i8**, align 8
  %tableManager.addr = alloca %struct.TableManager*, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %headerInt = alloca i32*, align 8
  store i8** %tableHeaderPtr, i8*** %tableHeaderPtr.addr, align 8
  store %struct.TableManager* %tableManager, %struct.TableManager** %tableManager.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  %0 = load i8**, i8*** %tableHeaderPtr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %headerInt, align 8
  %3 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %totalTuples = getelementptr inbounds %struct.TableManager, %struct.TableManager* %3, i32 0, i32 0
  store i32 0, i32* %totalTuples, align 8
  %4 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %call = call i32 @getRecordSize(%struct.Schema* noundef %4)
  %5 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %recSize = getelementptr inbounds %struct.TableManager, %struct.TableManager* %5, i32 0, i32 1
  store i32 %call, i32* %recSize, align 4
  %6 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %firstFreePageNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %6, i32 0, i32 2
  store i32 1, i32* %firstFreePageNum, align 8
  %7 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %firstFreeSlotNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %7, i32 0, i32 3
  store i32 0, i32* %firstFreeSlotNum, align 4
  %8 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %firstDataPageNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %8, i32 0, i32 4
  store i32 -1, i32* %firstDataPageNum, align 8
  %9 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %totalTuples1 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %9, i32 0, i32 0
  %10 = load i32, i32* %totalTuples1, align 8
  %11 = load i32*, i32** %headerInt, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %headerInt, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %recSize2 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %12, i32 0, i32 1
  %13 = load i32, i32* %recSize2, align 4
  %14 = load i32*, i32** %headerInt, align 8
  %incdec.ptr3 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr3, i32** %headerInt, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %firstFreePageNum4 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %15, i32 0, i32 2
  %16 = load i32, i32* %firstFreePageNum4, align 8
  %17 = load i32*, i32** %headerInt, align 8
  %incdec.ptr5 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr5, i32** %headerInt, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %firstFreeSlotNum6 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %18, i32 0, i32 3
  %19 = load i32, i32* %firstFreeSlotNum6, align 4
  %20 = load i32*, i32** %headerInt, align 8
  %incdec.ptr7 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr7, i32** %headerInt, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TableManager*, %struct.TableManager** %tableManager.addr, align 8
  %firstDataPageNum8 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %21, i32 0, i32 4
  %22 = load i32, i32* %firstDataPageNum8, align 8
  %23 = load i32*, i32** %headerInt, align 8
  %incdec.ptr9 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr9, i32** %headerInt, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %24, i32 0, i32 0
  %25 = load i32, i32* %numAttr, align 8
  %26 = load i32*, i32** %headerInt, align 8
  %incdec.ptr10 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %incdec.ptr10, i32** %headerInt, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keySize = getelementptr inbounds %struct.Schema, %struct.Schema* %27, i32 0, i32 5
  %28 = load i32, i32* %keySize, align 8
  %29 = load i32*, i32** %headerInt, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr11, i32** %headerInt, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %headerInt, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i8**, i8*** %tableHeaderPtr.addr, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i8**, i8*** %tableHeaderPtr.addr, align 8
  %34 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  call void @populateSchemaDetails(i8** noundef %33, %struct.Schema* noundef %34)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getRecordSize(%struct.Schema* noundef %schema) #0 {
entry:
  %schema.addr = alloca %struct.Schema*, align 8
  %totalSize = alloca i32, align 4
  %i = alloca i32, align 4
  %attributeLength = alloca i32, align 4
  %typeOfAttribute = alloca i32, align 4
  %padding = alloca i32, align 4
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  store i32 0, i32* %totalSize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %1, i32 0, i32 0
  %2 = load i32, i32* %numAttr, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %3, i32 0, i32 2
  %4 = load i32*, i32** %dataTypes, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %typeOfAttribute, align 4
  %7 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %7, i32 0, i32 3
  %8 = load i32*, i32** %typeLength, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  store i32 %10, i32* %attributeLength, align 4
  %11 = load i32, i32* %typeOfAttribute, align 4
  %cmp3 = icmp eq i32 %11, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %attributeLength, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 %conv, 1
  %13 = load i32, i32* %totalSize, align 4
  %conv4 = sext i32 %13 to i64
  %add = add i64 %conv4, %mul
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, i32* %totalSize, align 4
  br label %if.end24

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %typeOfAttribute, align 4
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.else
  %15 = load i32, i32* %totalSize, align 4
  %conv9 = sext i32 %15 to i64
  %add10 = add i64 %conv9, 4
  %conv11 = trunc i64 %add10 to i32
  store i32 %conv11, i32* %totalSize, align 4
  br label %if.end23

if.else12:                                        ; preds = %if.else
  %16 = load i32, i32* %typeOfAttribute, align 4
  %cmp13 = icmp eq i32 %16, 2
  br i1 %cmp13, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.else12
  %17 = load i32, i32* %totalSize, align 4
  %conv16 = sext i32 %17 to i64
  %add17 = add i64 %conv16, 4
  %conv18 = trunc i64 %add17 to i32
  store i32 %conv18, i32* %totalSize, align 4
  br label %if.end

if.else19:                                        ; preds = %if.else12
  %18 = load i32, i32* %totalSize, align 4
  %conv20 = sext i32 %18 to i64
  %add21 = add i64 %conv20, 2
  %conv22 = trunc i64 %add21 to i32
  store i32 %conv22, i32* %totalSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then15
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then8
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %totalSize, align 4
  %rem = srem i32 %20, 4
  store i32 %rem, i32* %padding, align 4
  %21 = load i32, i32* %padding, align 4
  %cmp25 = icmp ne i32 %21, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.end
  %22 = load i32, i32* %padding, align 4
  %sub = sub nsw i32 4, %22
  %23 = load i32, i32* %totalSize, align 4
  %add28 = add nsw i32 %23, %sub
  store i32 %add28, i32* %totalSize, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.end
  %24 = load i32, i32* %totalSize, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populateSchemaDetails(i8** noundef %tableHeaderPtr, %struct.Schema* noundef %schema) #0 {
entry:
  %tableHeaderPtr.addr = alloca i8**, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store i8** %tableHeaderPtr, i8*** %tableHeaderPtr.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  %0 = load i8**, i8*** %tableHeaderPtr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %3, i32 0, i32 0
  %4 = load i32, i32* %numAttr, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %ptr, align 8
  %6 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames = getelementptr inbounds %struct.Schema, %struct.Schema* %6, i32 0, i32 1
  %7 = load i8**, i8*** %attrNames, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @strncpy(i8* noundef %5, i8* noundef %9, i64 noundef 15) #7
  %10 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 15
  store i8* %add.ptr, i8** %ptr, align 8
  %11 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %11, i32 0, i32 2
  %12 = load i32*, i32** %dataTypes, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %13 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %12, i64 %idxprom1
  %14 = load i32, i32* %arrayidx2, align 4
  %15 = load i8*, i8** %ptr, align 8
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 4
  %17 = load i8*, i8** %ptr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %add.ptr3, i8** %ptr, align 8
  %18 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %18, i32 0, i32 3
  %19 = load i32*, i32** %typeLength, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %20 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %19, i64 %idxprom4
  %21 = load i32, i32* %arrayidx5, align 4
  %22 = load i8*, i8** %ptr, align 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** %ptr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %add.ptr6, i8** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc14, %for.end
  %26 = load i32, i32* %i7, align 4
  %27 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keySize = getelementptr inbounds %struct.Schema, %struct.Schema* %27, i32 0, i32 5
  %28 = load i32, i32* %keySize, align 8
  %cmp9 = icmp slt i32 %26, %28
  br i1 %cmp9, label %for.body10, label %for.end16

for.body10:                                       ; preds = %for.cond8
  %29 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keyAttrs = getelementptr inbounds %struct.Schema, %struct.Schema* %29, i32 0, i32 4
  %30 = load i32*, i32** %keyAttrs, align 8
  %31 = load i32, i32* %i7, align 4
  %idxprom11 = sext i32 %31 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %30, i64 %idxprom11
  %32 = load i32, i32* %arrayidx12, align 4
  %33 = load i8*, i8** %ptr, align 8
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4
  %35 = load i8*, i8** %ptr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %35, i64 4
  store i8* %add.ptr13, i8** %ptr, align 8
  br label %for.inc14

for.inc14:                                        ; preds = %for.body10
  %36 = load i32, i32* %i7, align 4
  %inc15 = add nsw i32 %36, 1
  store i32 %inc15, i32* %i7, align 4
  br label %for.cond8, !llvm.loop !33

for.end16:                                        ; preds = %for.cond8
  %37 = load i8*, i8** %ptr, align 8
  %38 = load i8**, i8*** %tableHeaderPtr.addr, align 8
  store i8* %37, i8** %38, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readIntFromHeader(i8** noundef %header) #0 {
entry:
  %header.addr = alloca i8**, align 8
  %value = alloca i32, align 4
  store i8** %header, i8*** %header.addr, align 8
  %0 = load i8**, i8*** %header.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %value, align 4
  %4 = load i8**, i8*** %header.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 4
  store i8* %add.ptr, i8** %4, align 8
  %6 = load i32, i32* %value, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @allocateArray(i64 noundef %elementCount, i64 noundef %elementSize) #0 {
entry:
  %elementCount.addr = alloca i64, align 8
  %elementSize.addr = alloca i64, align 8
  store i64 %elementCount, i64* %elementCount.addr, align 8
  store i64 %elementSize, i64* %elementSize.addr, align 8
  %0 = load i64, i64* %elementCount.addr, align 8
  %1 = load i64, i64* %elementSize.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #7
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setSchemaAttributes(%struct.Schema* noundef %schema, i8** noundef %tableHeader) #0 {
entry:
  %schema.addr = alloca %struct.Schema*, align 8
  %tableHeader.addr = alloca i8**, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  store i8** %tableHeader, i8*** %tableHeader.addr, align 8
  %0 = load i8**, i8*** %tableHeader.addr, align 8
  %call = call i32 @readIntFromHeader(i8** noundef %0)
  %1 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %1, i32 0, i32 0
  store i32 %call, i32* %numAttr, align 8
  %2 = load i8**, i8*** %tableHeader.addr, align 8
  %call1 = call i32 @readIntFromHeader(i8** noundef %2)
  %3 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keySize = getelementptr inbounds %struct.Schema, %struct.Schema* %3, i32 0, i32 5
  store i32 %call1, i32* %keySize, align 8
  %4 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr2 = getelementptr inbounds %struct.Schema, %struct.Schema* %4, i32 0, i32 0
  %5 = load i32, i32* %numAttr2, align 8
  %conv = sext i32 %5 to i64
  %call3 = call i8* @allocateArray(i64 noundef %conv, i64 noundef 8)
  %6 = bitcast i8* %call3 to i8**
  %7 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames = getelementptr inbounds %struct.Schema, %struct.Schema* %7, i32 0, i32 1
  store i8** %6, i8*** %attrNames, align 8
  %8 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr4 = getelementptr inbounds %struct.Schema, %struct.Schema* %8, i32 0, i32 0
  %9 = load i32, i32* %numAttr4, align 8
  %conv5 = sext i32 %9 to i64
  %call6 = call i8* @allocateArray(i64 noundef %conv5, i64 noundef 4)
  %10 = bitcast i8* %call6 to i32*
  %11 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %11, i32 0, i32 2
  store i32* %10, i32** %dataTypes, align 8
  %12 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr7 = getelementptr inbounds %struct.Schema, %struct.Schema* %12, i32 0, i32 0
  %13 = load i32, i32* %numAttr7, align 8
  %conv8 = sext i32 %13 to i64
  %call9 = call i8* @allocateArray(i64 noundef %conv8, i64 noundef 4)
  %14 = bitcast i8* %call9 to i32*
  %15 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %15, i32 0, i32 3
  store i32* %14, i32** %typeLength, align 8
  %16 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keySize10 = getelementptr inbounds %struct.Schema, %struct.Schema* %16, i32 0, i32 5
  %17 = load i32, i32* %keySize10, align 8
  %conv11 = sext i32 %17 to i64
  %call12 = call i8* @allocateArray(i64 noundef %conv11, i64 noundef 4)
  %18 = bitcast i8* %call12 to i32*
  %19 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keyAttrs = getelementptr inbounds %struct.Schema, %struct.Schema* %19, i32 0, i32 4
  store i32* %18, i32** %keyAttrs, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openTable(%struct.RM_TableData* noundef %rel, i8* noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %name.addr = alloca i8*, align 8
  %resultCode = alloca i32, align 4
  %attributeIndex = alloca i32, align 4
  %tableManager = alloca %struct.TableManager*, align 8
  %bufferManager = alloca %struct.BM_BufferPool*, align 8
  %pageHandle = alloca %struct.BM_PageHandle*, align 8
  %schema = alloca %struct.Schema*, align 8
  %tableHeader = alloca i8*, align 8
  %totalAttrNamesMemory = alloca i64, align 8
  %totalKeyAttrsMemory = alloca i64, align 8
  %duplicatedName = alloca i8*, align 8
  %directSchemaAssignment = alloca %struct.Schema*, align 8
  %managerData = alloca %struct.TableManager*, align 8
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 40) #7
  %0 = bitcast i8* %call to %struct.TableManager*
  store %struct.TableManager* %0, %struct.TableManager** %tableManager, align 8
  %call1 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 24) #7
  %1 = bitcast i8* %call1 to %struct.BM_BufferPool*
  store %struct.BM_BufferPool* %1, %struct.BM_BufferPool** %bufferManager, align 8
  %call2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #7
  %2 = bitcast i8* %call2 to %struct.BM_PageHandle*
  store %struct.BM_PageHandle* %2, %struct.BM_PageHandle** %pageHandle, align 8
  %call3 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 48) #7
  %3 = bitcast i8* %call3 to %struct.Schema*
  store %struct.Schema* %3, %struct.Schema** %schema, align 8
  %4 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %tobool = icmp ne %struct.TableManager* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManager, align 8
  %tobool4 = icmp ne %struct.BM_BufferPool* %5, null
  br i1 %tobool4, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %tobool6 = icmp ne %struct.BM_PageHandle* %6, null
  br i1 %tobool6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %7 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %tobool8 = icmp ne %struct.Schema* %7, null
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %entry
  br label %CLEANUP

if.end:                                           ; preds = %lor.lhs.false7
  %8 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManager, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %call9 = call i32 @initBufferPool(%struct.BM_BufferPool* noundef %8, i8* noundef %9, i32 noundef 3, i32 noundef 0, i8* noundef null)
  store i32 %call9, i32* %resultCode, align 4
  %10 = load i32, i32* %resultCode, align 4
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  br label %CLEANUP

if.end11:                                         ; preds = %if.end
  %11 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManager, align 8
  %12 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call12 = call i32 @pinPage(%struct.BM_BufferPool* noundef %11, %struct.BM_PageHandle* noundef %12, i32 noundef 0)
  store i32 %call12, i32* %resultCode, align 4
  %13 = load i32, i32* %resultCode, align 4
  %cmp13 = icmp ne i32 %13, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %CLEANUP

CLEANUP:                                          ; preds = %if.then14, %if.then10, %if.then
  %14 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %15 = bitcast %struct.TableManager* %14 to i8*
  call void @free(i8* noundef %15) #7
  %16 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManager, align 8
  %17 = bitcast %struct.BM_BufferPool* %16 to i8*
  call void @free(i8* noundef %17) #7
  %18 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %19 = bitcast %struct.BM_PageHandle* %18 to i8*
  call void @free(i8* noundef %19) #7
  %20 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %21 = bitcast %struct.Schema* %20 to i8*
  call void @free(i8* noundef %21) #7
  %22 = load i32, i32* %resultCode, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %23 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %23, i32 0, i32 1
  %24 = load i8*, i8** %data, align 8
  store i8* %24, i8** %tableHeader, align 8
  %25 = load i8*, i8** %tableHeader, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %totalTuples = getelementptr inbounds %struct.TableManager, %struct.TableManager* %28, i32 0, i32 0
  store i32 %27, i32* %totalTuples, align 8
  %29 = load i8*, i8** %tableHeader, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr, i8** %tableHeader, align 8
  %30 = load i8*, i8** %tableHeader, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %recSize = getelementptr inbounds %struct.TableManager, %struct.TableManager* %33, i32 0, i32 1
  store i32 %32, i32* %recSize, align 4
  %34 = load i8*, i8** %tableHeader, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %add.ptr16, i8** %tableHeader, align 8
  %35 = load i8*, i8** %tableHeader, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %firstFreePageNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %38, i32 0, i32 2
  store i32 %37, i32* %firstFreePageNum, align 8
  %39 = load i8*, i8** %tableHeader, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %add.ptr17, i8** %tableHeader, align 8
  %40 = load i8*, i8** %tableHeader, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %firstFreeSlotNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %43, i32 0, i32 3
  store i32 %42, i32* %firstFreeSlotNum, align 4
  %44 = load i8*, i8** %tableHeader, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %add.ptr18, i8** %tableHeader, align 8
  %45 = load i8*, i8** %tableHeader, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %firstDataPageNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %48, i32 0, i32 4
  store i32 %47, i32* %firstDataPageNum, align 8
  %49 = load i8*, i8** %tableHeader, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %add.ptr19, i8** %tableHeader, align 8
  %50 = load %struct.Schema*, %struct.Schema** %schema, align 8
  call void @setSchemaAttributes(%struct.Schema* noundef %50, i8** noundef %tableHeader)
  %51 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %attrNames = getelementptr inbounds %struct.Schema, %struct.Schema* %51, i32 0, i32 1
  %52 = load i8**, i8*** %attrNames, align 8
  %tobool20 = icmp ne i8** %52, null
  br i1 %tobool20, label %lor.lhs.false21, label %if.then27

lor.lhs.false21:                                  ; preds = %if.end15
  %53 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %53, i32 0, i32 2
  %54 = load i32*, i32** %dataTypes, align 8
  %tobool22 = icmp ne i32* %54, null
  br i1 %tobool22, label %lor.lhs.false23, label %if.then27

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %55 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %55, i32 0, i32 3
  %56 = load i32*, i32** %typeLength, align 8
  %tobool24 = icmp ne i32* %56, null
  br i1 %tobool24, label %lor.lhs.false25, label %if.then27

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %57 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %keyAttrs = getelementptr inbounds %struct.Schema, %struct.Schema* %57, i32 0, i32 4
  %58 = load i32*, i32** %keyAttrs, align 8
  %tobool26 = icmp ne i32* %58, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false25, %lor.lhs.false23, %lor.lhs.false21, %if.end15
  %59 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %60 = bitcast %struct.TableManager* %59 to i8*
  call void @free(i8* noundef %60) #7
  %61 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManager, align 8
  %62 = bitcast %struct.BM_BufferPool* %61 to i8*
  call void @free(i8* noundef %62) #7
  %63 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %64 = bitcast %struct.BM_PageHandle* %63 to i8*
  call void @free(i8* noundef %64) #7
  store i32 401, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %lor.lhs.false25
  store i32 0, i32* %attributeIndex, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end28
  %65 = load i32, i32* %attributeIndex, align 4
  %66 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %66, i32 0, i32 0
  %67 = load i32, i32* %numAttr, align 8
  %cmp29 = icmp slt i32 %65, %67
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i8*, i8** %tableHeader, align 8
  %call30 = call noalias i8* @strdup(i8* noundef %68) #7
  %69 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %attrNames31 = getelementptr inbounds %struct.Schema, %struct.Schema* %69, i32 0, i32 1
  %70 = load i8**, i8*** %attrNames31, align 8
  %71 = load i32, i32* %attributeIndex, align 4
  %idxprom = sext i32 %71 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %70, i64 %idxprom
  store i8* %call30, i8** %arrayidx, align 8
  %72 = load i8*, i8** %tableHeader, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %72, i64 15
  store i8* %add.ptr32, i8** %tableHeader, align 8
  %73 = load i8*, i8** %tableHeader, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %dataTypes33 = getelementptr inbounds %struct.Schema, %struct.Schema* %76, i32 0, i32 2
  %77 = load i32*, i32** %dataTypes33, align 8
  %78 = load i32, i32* %attributeIndex, align 4
  %idxprom34 = sext i32 %78 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %77, i64 %idxprom34
  store i32 %75, i32* %arrayidx35, align 4
  %79 = load i8*, i8** %tableHeader, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %79, i64 4
  store i8* %add.ptr36, i8** %tableHeader, align 8
  %80 = load i8*, i8** %tableHeader, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %typeLength37 = getelementptr inbounds %struct.Schema, %struct.Schema* %83, i32 0, i32 3
  %84 = load i32*, i32** %typeLength37, align 8
  %85 = load i32, i32* %attributeIndex, align 4
  %idxprom38 = sext i32 %85 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %84, i64 %idxprom38
  store i32 %82, i32* %arrayidx39, align 4
  %86 = load i8*, i8** %tableHeader, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %86, i64 4
  store i8* %add.ptr40, i8** %tableHeader, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %87 = load i32, i32* %attributeIndex, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %attributeIndex, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %88 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %numAttr41 = getelementptr inbounds %struct.Schema, %struct.Schema* %88, i32 0, i32 0
  %89 = load i32, i32* %numAttr41, align 8
  %mul = mul nsw i32 %89, 15
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %totalAttrNamesMemory, align 8
  store i32 0, i32* %attributeIndex, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc50, %for.end
  %90 = load i32, i32* %attributeIndex, align 4
  %91 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %keySize = getelementptr inbounds %struct.Schema, %struct.Schema* %91, i32 0, i32 5
  %92 = load i32, i32* %keySize, align 8
  %cmp43 = icmp slt i32 %90, %92
  br i1 %cmp43, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond42
  %93 = load i8*, i8** %tableHeader, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %keyAttrs46 = getelementptr inbounds %struct.Schema, %struct.Schema* %96, i32 0, i32 4
  %97 = load i32*, i32** %keyAttrs46, align 8
  %98 = load i32, i32* %attributeIndex, align 4
  %idxprom47 = sext i32 %98 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %97, i64 %idxprom47
  store i32 %95, i32* %arrayidx48, align 4
  %99 = load i8*, i8** %tableHeader, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %99, i64 4
  store i8* %add.ptr49, i8** %tableHeader, align 8
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %100 = load i32, i32* %attributeIndex, align 4
  %inc51 = add nsw i32 %100, 1
  store i32 %inc51, i32* %attributeIndex, align 4
  br label %for.cond42, !llvm.loop !35

for.end52:                                        ; preds = %for.cond42
  %101 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %keySize53 = getelementptr inbounds %struct.Schema, %struct.Schema* %101, i32 0, i32 5
  %102 = load i32, i32* %keySize53, align 8
  %conv54 = sext i32 %102 to i64
  %mul55 = mul i64 %conv54, 4
  store i64 %mul55, i64* %totalKeyAttrsMemory, align 8
  %103 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManager, align 8
  %104 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call56 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %103, %struct.BM_PageHandle* noundef %104)
  store i32 %call56, i32* %resultCode, align 4
  %105 = load i32, i32* %resultCode, align 4
  %cmp57 = icmp ne i32 %105, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %for.end52
  %106 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %107 = bitcast %struct.TableManager* %106 to i8*
  call void @free(i8* noundef %107) #7
  %108 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManager, align 8
  %109 = bitcast %struct.BM_BufferPool* %108 to i8*
  call void @free(i8* noundef %109) #7
  %110 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %111 = bitcast %struct.BM_PageHandle* %110 to i8*
  call void @free(i8* noundef %111) #7
  %112 = load i32, i32* %resultCode, align 4
  store i32 %112, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %for.end52
  %113 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManager, align 8
  %114 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %114, i32 0, i32 5
  store %struct.BM_BufferPool* %113, %struct.BM_BufferPool** %bufferManagerPtr, align 8
  %115 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %116 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %pageHandlePtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %116, i32 0, i32 6
  store %struct.BM_PageHandle* %115, %struct.BM_PageHandle** %pageHandlePtr, align 8
  %117 = load i8*, i8** %name.addr, align 8
  %call61 = call noalias i8* @strdup(i8* noundef %117) #7
  store i8* %call61, i8** %duplicatedName, align 8
  %118 = load i8*, i8** %duplicatedName, align 8
  %119 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %name62 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %119, i32 0, i32 0
  store i8* %118, i8** %name62, align 8
  %120 = load %struct.Schema*, %struct.Schema** %schema, align 8
  store %struct.Schema* %120, %struct.Schema** %directSchemaAssignment, align 8
  %121 = load %struct.Schema*, %struct.Schema** %directSchemaAssignment, align 8
  %122 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema63 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %122, i32 0, i32 1
  store %struct.Schema* %121, %struct.Schema** %schema63, align 8
  %123 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  store %struct.TableManager* %123, %struct.TableManager** %managerData, align 8
  %124 = load %struct.TableManager*, %struct.TableManager** %managerData, align 8
  %125 = bitcast %struct.TableManager* %124 to i8*
  %126 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %126, i32 0, i32 2
  store i8* %125, i8** %mgmtData, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end60, %if.then59, %if.then27, %CLEANUP
  %127 = load i32, i32* %retval, align 4
  ret i32 %127
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @closeTable(%struct.RM_TableData* noundef %rel) #0 {
entry:
  %retval = alloca i32, align 4
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %tableManager = alloca %struct.TableManager*, align 8
  %pinStatus = alloca i32, align 4
  %dirtyStatus = alloca i32, align 4
  %unpinStatus = alloca i32, align 4
  %shutdownStatus = alloca i32, align 4
  %headerUpdateSuccess = alloca i32, align 4
  %pageHeader = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  store i32 0, i32* %headerUpdateSuccess, align 4
  %0 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %0, i32 0, i32 2
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.TableManager*
  store %struct.TableManager* %2, %struct.TableManager** %tableManager, align 8
  %3 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %3, i32 0, i32 5
  %4 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr, align 8
  %5 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %pageHandlePtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %5, i32 0, i32 6
  %6 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandlePtr, align 8
  %call = call i32 @pinPage(%struct.BM_BufferPool* noundef %4, %struct.BM_PageHandle* noundef %6, i32 noundef 0)
  store i32 %call, i32* %pinStatus, align 4
  %7 = load i32, i32* %pinStatus, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %pageHandlePtr1 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %8, i32 0, i32 6
  %9 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandlePtr1, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %9, i32 0, i32 1
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %pageHeader, align 8
  %12 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %totalTuples = getelementptr inbounds %struct.TableManager, %struct.TableManager* %12, i32 0, i32 0
  %13 = load i32, i32* %totalTuples, align 8
  %14 = load i32*, i32** %pageHeader, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr, i32** %pageHeader, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %recSize = getelementptr inbounds %struct.TableManager, %struct.TableManager* %15, i32 0, i32 1
  %16 = load i32, i32* %recSize, align 4
  %17 = load i32*, i32** %pageHeader, align 8
  %incdec.ptr2 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr2, i32** %pageHeader, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %firstFreePageNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %18, i32 0, i32 2
  %19 = load i32, i32* %firstFreePageNum, align 8
  %20 = load i32*, i32** %pageHeader, align 8
  %incdec.ptr3 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr3, i32** %pageHeader, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %firstFreeSlotNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %21, i32 0, i32 3
  %22 = load i32, i32* %firstFreeSlotNum, align 4
  %23 = load i32*, i32** %pageHeader, align 8
  %incdec.ptr4 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr4, i32** %pageHeader, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %firstDataPageNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %24, i32 0, i32 4
  %25 = load i32, i32* %firstDataPageNum, align 8
  %26 = load i32*, i32** %pageHeader, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr5 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %27, i32 0, i32 5
  %28 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr5, align 8
  %29 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %pageHandlePtr6 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %29, i32 0, i32 6
  %30 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandlePtr6, align 8
  %call7 = call i32 @markDirty(%struct.BM_BufferPool* noundef %28, %struct.BM_PageHandle* noundef %30)
  store i32 %call7, i32* %dirtyStatus, align 4
  %31 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr8 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %31, i32 0, i32 5
  %32 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr8, align 8
  %33 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %pageHandlePtr9 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %33, i32 0, i32 6
  %34 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandlePtr9, align 8
  %call10 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %32, %struct.BM_PageHandle* noundef %34)
  store i32 %call10, i32* %unpinStatus, align 4
  store i32 1, i32* %headerUpdateSuccess, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %headerUpdateSuccess, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %35 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr11 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %35, i32 0, i32 5
  %36 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr11, align 8
  %call12 = call i32 @shutdownBufferPool(%struct.BM_BufferPool* noundef %36)
  store i32 %call12, i32* %shutdownStatus, align 4
  %37 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %37, i32 0, i32 1
  %38 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %tobool = icmp ne %struct.Schema* %38, null
  br i1 %tobool, label %if.then13, label %if.end50

if.then13:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema14 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %40, i32 0, i32 1
  %41 = load %struct.Schema*, %struct.Schema** %schema14, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %41, i32 0, i32 0
  %42 = load i32, i32* %numAttr, align 8
  %cmp15 = icmp slt i32 %39, %42
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema16 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %43, i32 0, i32 1
  %44 = load %struct.Schema*, %struct.Schema** %schema16, align 8
  %attrNames = getelementptr inbounds %struct.Schema, %struct.Schema* %44, i32 0, i32 1
  %45 = load i8**, i8*** %attrNames, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %45, i64 %idxprom
  %47 = load i8*, i8** %arrayidx, align 8
  %tobool17 = icmp ne i8* %47, null
  br i1 %tobool17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %for.body
  %48 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema19 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %48, i32 0, i32 1
  %49 = load %struct.Schema*, %struct.Schema** %schema19, align 8
  %attrNames20 = getelementptr inbounds %struct.Schema, %struct.Schema* %49, i32 0, i32 1
  %50 = load i8**, i8*** %attrNames20, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %51 to i64
  %arrayidx22 = getelementptr inbounds i8*, i8** %50, i64 %idxprom21
  %52 = load i8*, i8** %arrayidx22, align 8
  call void @free(i8* noundef %52) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %54 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema24 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %54, i32 0, i32 1
  %55 = load %struct.Schema*, %struct.Schema** %schema24, align 8
  %attrNames25 = getelementptr inbounds %struct.Schema, %struct.Schema* %55, i32 0, i32 1
  %56 = load i8**, i8*** %attrNames25, align 8
  %tobool26 = icmp ne i8** %56, null
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %for.end
  %57 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema28 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %57, i32 0, i32 1
  %58 = load %struct.Schema*, %struct.Schema** %schema28, align 8
  %attrNames29 = getelementptr inbounds %struct.Schema, %struct.Schema* %58, i32 0, i32 1
  %59 = load i8**, i8*** %attrNames29, align 8
  %60 = bitcast i8** %59 to i8*
  call void @free(i8* noundef %60) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %for.end
  %61 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema31 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %61, i32 0, i32 1
  %62 = load %struct.Schema*, %struct.Schema** %schema31, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %62, i32 0, i32 2
  %63 = load i32*, i32** %dataTypes, align 8
  %tobool32 = icmp ne i32* %63, null
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %64 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema34 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %64, i32 0, i32 1
  %65 = load %struct.Schema*, %struct.Schema** %schema34, align 8
  %dataTypes35 = getelementptr inbounds %struct.Schema, %struct.Schema* %65, i32 0, i32 2
  %66 = load i32*, i32** %dataTypes35, align 8
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* noundef %67) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30
  %68 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema37 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %68, i32 0, i32 1
  %69 = load %struct.Schema*, %struct.Schema** %schema37, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %69, i32 0, i32 3
  %70 = load i32*, i32** %typeLength, align 8
  %tobool38 = icmp ne i32* %70, null
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end36
  %71 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema40 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %71, i32 0, i32 1
  %72 = load %struct.Schema*, %struct.Schema** %schema40, align 8
  %typeLength41 = getelementptr inbounds %struct.Schema, %struct.Schema* %72, i32 0, i32 3
  %73 = load i32*, i32** %typeLength41, align 8
  %74 = bitcast i32* %73 to i8*
  call void @free(i8* noundef %74) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36
  %75 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema43 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %75, i32 0, i32 1
  %76 = load %struct.Schema*, %struct.Schema** %schema43, align 8
  %keyAttrs = getelementptr inbounds %struct.Schema, %struct.Schema* %76, i32 0, i32 4
  %77 = load i32*, i32** %keyAttrs, align 8
  %tobool44 = icmp ne i32* %77, null
  br i1 %tobool44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end42
  %78 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema46 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %78, i32 0, i32 1
  %79 = load %struct.Schema*, %struct.Schema** %schema46, align 8
  %keyAttrs47 = getelementptr inbounds %struct.Schema, %struct.Schema* %79, i32 0, i32 4
  %80 = load i32*, i32** %keyAttrs47, align 8
  %81 = bitcast i32* %80 to i8*
  call void @free(i8* noundef %81) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42
  %82 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema49 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %82, i32 0, i32 1
  %83 = load %struct.Schema*, %struct.Schema** %schema49, align 8
  %84 = bitcast %struct.Schema* %83 to i8*
  call void @free(i8* noundef %84) #7
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end
  %85 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %86 = bitcast %struct.TableManager* %85 to i8*
  call void @free(i8* noundef %86) #7
  %87 = load i32, i32* %headerUpdateSuccess, align 4
  %tobool51 = icmp ne i32 %87, 0
  br i1 %tobool51, label %land.lhs.true, label %if.else54

land.lhs.true:                                    ; preds = %if.end50
  %88 = load i32, i32* %shutdownStatus, align 4
  %cmp52 = icmp eq i32 %88, 0
  br i1 %cmp52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.else54:                                        ; preds = %land.lhs.true, %if.end50
  %89 = load i32, i32* %pinStatus, align 4
  %cmp55 = icmp ne i32 %89, 0
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else54
  %90 = load i32, i32* %pinStatus, align 4
  br label %cond.end64

cond.false:                                       ; preds = %if.else54
  %91 = load i32, i32* %dirtyStatus, align 4
  %cmp56 = icmp ne i32 %91, 0
  br i1 %cmp56, label %cond.true57, label %cond.false58

cond.true57:                                      ; preds = %cond.false
  %92 = load i32, i32* %dirtyStatus, align 4
  br label %cond.end62

cond.false58:                                     ; preds = %cond.false
  %93 = load i32, i32* %unpinStatus, align 4
  %cmp59 = icmp ne i32 %93, 0
  br i1 %cmp59, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %cond.false58
  %94 = load i32, i32* %unpinStatus, align 4
  br label %cond.end

cond.false61:                                     ; preds = %cond.false58
  %95 = load i32, i32* %shutdownStatus, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false61, %cond.true60
  %cond = phi i32 [ %94, %cond.true60 ], [ %95, %cond.false61 ]
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end, %cond.true57
  %cond63 = phi i32 [ %92, %cond.true57 ], [ %cond, %cond.end ]
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end62, %cond.true
  %cond65 = phi i32 [ %90, %cond.true ], [ %cond63, %cond.end62 ]
  store i32 %cond65, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end64, %if.then53
  %96 = load i32, i32* %retval, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deleteTable(i8* noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %resultCode = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 407, i32* %resultCode, align 4
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32 @destroyPageFile(i8* noundef %3)
  store i32 %call, i32* %resultCode, align 4
  %4 = load i32, i32* %resultCode, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  br label %if.end

if.else5:                                         ; preds = %if.else
  %5 = load i32, i32* %resultCode, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %6 = load i32, i32* %resultCode, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.else5
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @destroyPageFile(i8* noundef %fileName) #0 {
entry:
  %retval = alloca i32, align 4
  %fileName.addr = alloca i8*, align 8
  %FILE_RC = alloca i32, align 4
  %Trial = alloca i32, align 4
  %maxTrial = alloca i32, align 4
  store i8* %fileName, i8** %fileName.addr, align 8
  store i32 0, i32* %Trial, align 4
  store i32 3, i32* %maxTrial, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %Trial, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %fileName.addr, align 8
  %call = call i32 @remove(i8* noundef %1) #7
  store i32 %call, i32* %FILE_RC, align 4
  %2 = load i32, i32* %FILE_RC, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %while.body
  %3 = load i32, i32* %Trial, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %Trial, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %FILE_RC, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.end
  store i32 409, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getNumTuples(%struct.RM_TableData* noundef %rel) #0 {
entry:
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %tableManager = alloca %struct.TableManager*, align 8
  %totalTuples = alloca i32, align 4
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  %0 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %0, i32 0, i32 2
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.TableManager*
  store %struct.TableManager* %2, %struct.TableManager** %tableManager, align 8
  %3 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %cmp = icmp ne %struct.TableManager* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %totalTuples1 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %4, i32 0, i32 0
  %5 = load i32, i32* %totalTuples1, align 8
  store i32 %5, i32* %totalTuples, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 -1, i32* %totalTuples, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %totalTuples, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insertRecord(%struct.RM_TableData* noundef %rel, %struct.Record* noundef %record) #0 {
entry:
  %retval = alloca i32, align 4
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %record.addr = alloca %struct.Record*, align 8
  %tableMgmt = alloca %struct.TableManager*, align 8
  %slotsAvailableOnPage = alloca i32, align 4
  %pageHandle = alloca %struct.BM_PageHandle*, align 8
  %pagePinStatus = alloca i32, align 4
  %currentPageData = alloca i8*, align 8
  %currentPageHeader = alloca %struct.PageHeader*, align 8
  %positionForNewData = alloca i32, align 4
  %dirtyStatus = alloca i32, align 4
  %unpinStatus = alloca i32, align 4
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  %0 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %0, i32 0, i32 2
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.TableManager*
  store %struct.TableManager* %2, %struct.TableManager** %tableMgmt, align 8
  %3 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %recSize = getelementptr inbounds %struct.TableManager, %struct.TableManager* %3, i32 0, i32 1
  %4 = load i32, i32* %recSize, align 4
  %add = add nsw i32 %4, 2
  %conv = sext i32 %add to i64
  %div = udiv i64 4064, %conv
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %slotsAvailableOnPage, align 4
  %5 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %pageHandlePtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %5, i32 0, i32 6
  %6 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandlePtr, align 8
  store %struct.BM_PageHandle* %6, %struct.BM_PageHandle** %pageHandle, align 8
  %7 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %bufferManagerPtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %7, i32 0, i32 5
  %8 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr, align 8
  %9 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %10 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %firstFreePageNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %10, i32 0, i32 2
  %11 = load i32, i32* %firstFreePageNum, align 8
  %call = call i32 @pinPage(%struct.BM_BufferPool* noundef %8, %struct.BM_PageHandle* noundef %9, i32 noundef %11)
  store i32 %call, i32* %pagePinStatus, align 4
  %12 = load i32, i32* %pagePinStatus, align 4
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 404, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %13, i32 0, i32 1
  %14 = load i8*, i8** %data, align 8
  store i8* %14, i8** %currentPageData, align 8
  %15 = load i8*, i8** %currentPageData, align 8
  %16 = bitcast i8* %15 to %struct.PageHeader*
  store %struct.PageHeader* %16, %struct.PageHeader** %currentPageHeader, align 8
  %17 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %pageIdentifier = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %17, i32 0, i32 0
  %18 = load i8, i8* %pageIdentifier, align 4
  %conv3 = sext i8 %18 to i32
  %cmp4 = icmp ne i32 %conv3, 89
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %19 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %pageIdentifier7 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %19, i32 0, i32 0
  store i8 89, i8* %pageIdentifier7, align 4
  %20 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %totalTuples = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %20, i32 0, i32 1
  store i32 0, i32* %totalTuples, align 4
  %21 = load i32, i32* %slotsAvailableOnPage, align 4
  %sub = sub nsw i32 %21, 1
  %22 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %freeSlotCnt = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %22, i32 0, i32 2
  store i32 %sub, i32* %freeSlotCnt, align 4
  %23 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %nextFreeSlotInd = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %23, i32 0, i32 3
  store i32 1, i32* %nextFreeSlotInd, align 4
  %24 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %prevFreePageIndex = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %24, i32 0, i32 4
  store i32 -1, i32* %prevFreePageIndex, align 4
  %25 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %pageNum = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %25, i32 0, i32 0
  %26 = load i32, i32* %pageNum, align 8
  %add8 = add nsw i32 %26, 1
  %27 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %nextFreePageIndex = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %27, i32 0, i32 5
  store i32 %add8, i32* %nextFreePageIndex, align 4
  %28 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %prevDataPageIndex = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %28, i32 0, i32 6
  store i32 -1, i32* %prevDataPageIndex, align 4
  %29 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %nextDataPageIndex = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %29, i32 0, i32 7
  store i32 1, i32* %nextDataPageIndex, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end
  %30 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %totalTuples9 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %30, i32 0, i32 1
  %31 = load i32, i32* %totalTuples9, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %totalTuples9, align 4
  %32 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %freeSlotCnt10 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %32, i32 0, i32 2
  %33 = load i32, i32* %freeSlotCnt10, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %freeSlotCnt10, align 4
  %34 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %freeSlotCnt11 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %34, i32 0, i32 2
  %35 = load i32, i32* %freeSlotCnt11, align 4
  %cmp12 = icmp sgt i32 %35, 0
  br i1 %cmp12, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.else
  %36 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %nextFreeSlotInd15 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %36, i32 0, i32 3
  %37 = load i32, i32* %nextFreeSlotInd15, align 4
  %inc16 = add nsw i32 %37, 1
  store i32 %inc16, i32* %nextFreeSlotInd15, align 4
  br label %if.end21

if.else17:                                        ; preds = %if.else
  %38 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %nextFreeSlotInd18 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %38, i32 0, i32 3
  %39 = load i32, i32* %nextFreeSlotInd18, align 4
  %sub19 = sub nsw i32 0, %39
  %40 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %nextFreeSlotInd20 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %40, i32 0, i32 3
  store i32 %sub19, i32* %nextFreeSlotInd20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then6
  %41 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %firstFreeSlotNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %41, i32 0, i32 3
  %42 = load i32, i32* %firstFreeSlotNum, align 4
  %43 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %recSize23 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %43, i32 0, i32 1
  %44 = load i32, i32* %recSize23, align 4
  %add24 = add nsw i32 %44, 2
  %mul = mul nsw i32 %42, %add24
  %conv25 = sext i32 %mul to i64
  %add26 = add i64 32, %conv25
  %conv27 = trunc i64 %add26 to i32
  store i32 %conv27, i32* %positionForNewData, align 4
  %45 = load i8*, i8** %currentPageData, align 8
  %46 = load i32, i32* %positionForNewData, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 %idxprom
  store i8 89, i8* %arrayidx, align 1
  %47 = load i8*, i8** %currentPageData, align 8
  %48 = load i32, i32* %positionForNewData, align 4
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %49 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %data29 = getelementptr inbounds %struct.Record, %struct.Record* %49, i32 0, i32 1
  %50 = load i8*, i8** %data29, align 8
  %51 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %recSize30 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %51, i32 0, i32 1
  %52 = load i32, i32* %recSize30, align 4
  %conv31 = sext i32 %52 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr28, i8* align 1 %50, i64 %conv31, i1 false)
  %53 = load i8*, i8** %currentPageData, align 8
  %54 = load i32, i32* %positionForNewData, align 4
  %55 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %recSize32 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %55, i32 0, i32 1
  %56 = load i32, i32* %recSize32, align 4
  %add33 = add nsw i32 %54, %56
  %add34 = add nsw i32 %add33, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %53, i64 %idxprom35
  store i8 124, i8* %arrayidx36, align 1
  %57 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %pageNum37 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %57, i32 0, i32 0
  %58 = load i32, i32* %pageNum37, align 8
  %59 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %id = getelementptr inbounds %struct.Record, %struct.Record* %59, i32 0, i32 0
  %page = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 0
  store i32 %58, i32* %page, align 8
  %60 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %firstFreeSlotNum38 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %60, i32 0, i32 3
  %61 = load i32, i32* %firstFreeSlotNum38, align 4
  %62 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %id39 = getelementptr inbounds %struct.Record, %struct.Record* %62, i32 0, i32 0
  %slot = getelementptr inbounds %struct.RID, %struct.RID* %id39, i32 0, i32 1
  store i32 %61, i32* %slot, align 4
  %63 = load %struct.PageHeader*, %struct.PageHeader** %currentPageHeader, align 8
  %freeSlotCnt40 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %63, i32 0, i32 2
  %64 = load i32, i32* %freeSlotCnt40, align 4
  %cmp41 = icmp eq i32 %64, 0
  br i1 %cmp41, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.end22
  %65 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %firstFreePageNum44 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %65, i32 0, i32 2
  %66 = load i32, i32* %firstFreePageNum44, align 8
  %inc45 = add nsw i32 %66, 1
  store i32 %inc45, i32* %firstFreePageNum44, align 8
  %67 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %firstFreeSlotNum46 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %67, i32 0, i32 3
  store i32 0, i32* %firstFreeSlotNum46, align 4
  br label %if.end50

if.else47:                                        ; preds = %if.end22
  %68 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %firstFreeSlotNum48 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %68, i32 0, i32 3
  %69 = load i32, i32* %firstFreeSlotNum48, align 4
  %inc49 = add nsw i32 %69, 1
  store i32 %inc49, i32* %firstFreeSlotNum48, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then43
  %70 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %totalTuples51 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %70, i32 0, i32 0
  %71 = load i32, i32* %totalTuples51, align 8
  %inc52 = add nsw i32 %71, 1
  store i32 %inc52, i32* %totalTuples51, align 8
  %72 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %bufferManagerPtr53 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %72, i32 0, i32 5
  %73 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr53, align 8
  %74 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call54 = call i32 @markDirty(%struct.BM_BufferPool* noundef %73, %struct.BM_PageHandle* noundef %74)
  store i32 %call54, i32* %dirtyStatus, align 4
  %75 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %bufferManagerPtr55 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %75, i32 0, i32 5
  %76 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr55, align 8
  %77 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call56 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %76, %struct.BM_PageHandle* noundef %77)
  store i32 %call56, i32* %unpinStatus, align 4
  %78 = load i32, i32* %dirtyStatus, align 4
  %cmp57 = icmp ne i32 %78, 0
  br i1 %cmp57, label %if.then61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end50
  %79 = load i32, i32* %unpinStatus, align 4
  %cmp59 = icmp ne i32 %79, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %lor.lhs.false, %if.end50
  store i32 404, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end62, %if.then61, %if.then
  %80 = load i32, i32* %retval, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getRecord(%struct.RM_TableData* noundef %rel, i64 %id.coerce, %struct.Record* noundef %record) #0 {
entry:
  %retval = alloca i32, align 4
  %id = alloca %struct.RID, align 4
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %record.addr = alloca %struct.Record*, align 8
  %tableManager = alloca %struct.TableManager*, align 8
  %slotsPerRecord = alloca i32, align 4
  %pageHandler = alloca %struct.BM_PageHandle*, align 8
  %pinPageStatus = alloca i32, align 4
  %recordLocation = alloca i8*, align 8
  %recordDataStart = alloca i8*, align 8
  %unpinPageStatus = alloca i32, align 4
  %0 = bitcast %struct.RID* %id to i64*
  store i64 %id.coerce, i64* %0, align 4
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  %1 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %1, i32 0, i32 2
  %2 = load i8*, i8** %mgmtData, align 8
  %3 = bitcast i8* %2 to %struct.TableManager*
  store %struct.TableManager* %3, %struct.TableManager** %tableManager, align 8
  %4 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %recSize = getelementptr inbounds %struct.TableManager, %struct.TableManager* %4, i32 0, i32 1
  %5 = load i32, i32* %recSize, align 4
  %add = add nsw i32 %5, 2
  %conv = sext i32 %add to i64
  %div = udiv i64 4064, %conv
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %slotsPerRecord, align 4
  %slot = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 1
  %6 = load i32, i32* %slot, align 4
  %7 = load i32, i32* %slotsPerRecord, align 4
  %cmp = icmp sge i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 410, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %pageHandlePtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %8, i32 0, i32 6
  %9 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandlePtr, align 8
  store %struct.BM_PageHandle* %9, %struct.BM_PageHandle** %pageHandler, align 8
  %10 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %10, i32 0, i32 5
  %11 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr, align 8
  %12 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandler, align 8
  %page = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 0
  %13 = load i32, i32* %page, align 4
  %call = call i32 @pinPage(%struct.BM_BufferPool* noundef %11, %struct.BM_PageHandle* noundef %12, i32 noundef %13)
  store i32 %call, i32* %pinPageStatus, align 4
  %14 = load i32, i32* %pinPageStatus, align 4
  %cmp3 = icmp ne i32 %14, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 404, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %15 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandler, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %15, i32 0, i32 1
  %16 = load i8*, i8** %data, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 32
  %slot7 = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 1
  %17 = load i32, i32* %slot7, align 4
  %18 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %recSize8 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %18, i32 0, i32 1
  %19 = load i32, i32* %recSize8, align 4
  %add9 = add nsw i32 %19, 2
  %mul = mul nsw i32 %17, %add9
  %idx.ext = sext i32 %mul to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr10, i8** %recordLocation, align 8
  %20 = load i8*, i8** %recordLocation, align 8
  %21 = load i8, i8* %20, align 1
  %conv11 = sext i8 %21 to i32
  %cmp12 = icmp ne i32 %conv11, 89
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end6
  %22 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr15 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %22, i32 0, i32 5
  %23 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr15, align 8
  %24 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandler, align 8
  %call16 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %23, %struct.BM_PageHandle* noundef %24)
  store i32 410, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end6
  %25 = load i8*, i8** %recordLocation, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %add.ptr18, i8** %recordDataStart, align 8
  %26 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %data19 = getelementptr inbounds %struct.Record, %struct.Record* %26, i32 0, i32 1
  %27 = load i8*, i8** %data19, align 8
  %28 = load i8*, i8** %recordDataStart, align 8
  %29 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %recSize20 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %29, i32 0, i32 1
  %30 = load i32, i32* %recSize20, align 4
  %conv21 = sext i32 %30 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %28, i64 %conv21, i1 false)
  %31 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %id22 = getelementptr inbounds %struct.Record, %struct.Record* %31, i32 0, i32 0
  %32 = bitcast %struct.RID* %id22 to i8*
  %33 = bitcast %struct.RID* %id to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 8, i1 false)
  %34 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr23 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %34, i32 0, i32 5
  %35 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr23, align 8
  %36 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandler, align 8
  %call24 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %35, %struct.BM_PageHandle* noundef %36)
  store i32 %call24, i32* %unpinPageStatus, align 4
  %37 = load i32, i32* %unpinPageStatus, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then14, %if.then5, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @updateRecord(%struct.RM_TableData* noundef %rel, %struct.Record* noundef %record) #0 {
entry:
  %retval = alloca i32, align 4
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %record.addr = alloca %struct.Record*, align 8
  %tableManager = alloca %struct.TableManager*, align 8
  %maxSlotsPerRecord = alloca i32, align 4
  %pageHandle = alloca %struct.BM_PageHandle*, align 8
  %pinResult = alloca i32, align 4
  %targetSlot = alloca i8*, align 8
  %dirtyFlag = alloca i32, align 4
  %unpinFlag = alloca i32, align 4
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  %0 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %0, i32 0, i32 2
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.TableManager*
  store %struct.TableManager* %2, %struct.TableManager** %tableManager, align 8
  %3 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %recSize = getelementptr inbounds %struct.TableManager, %struct.TableManager* %3, i32 0, i32 1
  %4 = load i32, i32* %recSize, align 4
  %add = add nsw i32 %4, 2
  %conv = sext i32 %add to i64
  %div = udiv i64 4064, %conv
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %maxSlotsPerRecord, align 4
  %5 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %id = getelementptr inbounds %struct.Record, %struct.Record* %5, i32 0, i32 0
  %slot = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 1
  %6 = load i32, i32* %slot, align 4
  %7 = load i32, i32* %maxSlotsPerRecord, align 4
  %cmp = icmp sge i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 410, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %pageHandlePtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %8, i32 0, i32 6
  %9 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandlePtr, align 8
  store %struct.BM_PageHandle* %9, %struct.BM_PageHandle** %pageHandle, align 8
  %10 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %10, i32 0, i32 5
  %11 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr, align 8
  %12 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %13 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %id3 = getelementptr inbounds %struct.Record, %struct.Record* %13, i32 0, i32 0
  %page = getelementptr inbounds %struct.RID, %struct.RID* %id3, i32 0, i32 0
  %14 = load i32, i32* %page, align 8
  %call = call i32 @pinPage(%struct.BM_BufferPool* noundef %11, %struct.BM_PageHandle* noundef %12, i32 noundef %14)
  store i32 %call, i32* %pinResult, align 4
  %15 = load i32, i32* %pinResult, align 4
  %cmp4 = icmp ne i32 %15, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 404, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %16 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %16, i32 0, i32 1
  %17 = load i8*, i8** %data, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 32
  %18 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %id8 = getelementptr inbounds %struct.Record, %struct.Record* %18, i32 0, i32 0
  %slot9 = getelementptr inbounds %struct.RID, %struct.RID* %id8, i32 0, i32 1
  %19 = load i32, i32* %slot9, align 4
  %20 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %recSize10 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %20, i32 0, i32 1
  %21 = load i32, i32* %recSize10, align 4
  %add11 = add nsw i32 %21, 2
  %mul = mul nsw i32 %19, %add11
  %idx.ext = sext i32 %mul to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr12, i8** %targetSlot, align 8
  %22 = load i8*, i8** %targetSlot, align 8
  %23 = load i8, i8* %22, align 1
  %conv13 = sext i8 %23 to i32
  %cmp14 = icmp ne i32 %conv13, 89
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end7
  %24 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr17 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %24, i32 0, i32 5
  %25 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr17, align 8
  %26 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call18 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %25, %struct.BM_PageHandle* noundef %26)
  store i32 410, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end7
  %27 = load i8*, i8** %targetSlot, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %data21 = getelementptr inbounds %struct.Record, %struct.Record* %28, i32 0, i32 1
  %29 = load i8*, i8** %data21, align 8
  %30 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %recSize22 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %30, i32 0, i32 1
  %31 = load i32, i32* %recSize22, align 4
  %conv23 = sext i32 %31 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr20, i8* align 1 %29, i64 %conv23, i1 false)
  %32 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr24 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %32, i32 0, i32 5
  %33 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr24, align 8
  %34 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call25 = call i32 @markDirty(%struct.BM_BufferPool* noundef %33, %struct.BM_PageHandle* noundef %34)
  store i32 %call25, i32* %dirtyFlag, align 4
  %35 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %bufferManagerPtr26 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %35, i32 0, i32 5
  %36 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr26, align 8
  %37 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call27 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %36, %struct.BM_PageHandle* noundef %37)
  store i32 %call27, i32* %unpinFlag, align 4
  %38 = load i32, i32* %dirtyFlag, align 4
  %cmp28 = icmp ne i32 %38, 0
  br i1 %cmp28, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %39 = load i32, i32* %unpinFlag, align 4
  %cmp30 = icmp ne i32 %39, 0
  br i1 %cmp30, label %if.then32, label %if.end41

if.then32:                                        ; preds = %lor.lhs.false, %if.end19
  %40 = load i32, i32* %dirtyFlag, align 4
  %cmp33 = icmp ne i32 %40, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  store i32 404, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then32
  %41 = load i32, i32* %unpinFlag, align 4
  %cmp37 = icmp ne i32 %41, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  store i32 404, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then39, %if.then35, %if.then16, %if.then6, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deleteRecord(%struct.RM_TableData* noundef %rel, i64 %id.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %id = alloca %struct.RID, align 4
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %tableMgmt = alloca %struct.TableManager*, align 8
  %maximumSlotsPerPage = alloca i32, align 4
  %pageHandle = alloca %struct.BM_PageHandle*, align 8
  %pinStatus = alloca i32, align 4
  %recordPosition = alloca i32, align 4
  %recordIndicator = alloca i8*, align 8
  %header = alloca %struct.PageHeader*, align 8
  %unpinStatus = alloca i32, align 4
  %0 = bitcast %struct.RID* %id to i64*
  store i64 %id.coerce, i64* %0, align 4
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  %1 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %1, i32 0, i32 2
  %2 = load i8*, i8** %mgmtData, align 8
  %3 = bitcast i8* %2 to %struct.TableManager*
  store %struct.TableManager* %3, %struct.TableManager** %tableMgmt, align 8
  %4 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %recSize = getelementptr inbounds %struct.TableManager, %struct.TableManager* %4, i32 0, i32 1
  %5 = load i32, i32* %recSize, align 4
  %add = add nsw i32 %5, 2
  %conv = sext i32 %add to i64
  %div = udiv i64 4064, %conv
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %maximumSlotsPerPage, align 4
  %slot = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 1
  %6 = load i32, i32* %slot, align 4
  %7 = load i32, i32* %maximumSlotsPerPage, align 4
  %cmp = icmp sge i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 410, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %pageHandlePtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %8, i32 0, i32 6
  %9 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandlePtr, align 8
  store %struct.BM_PageHandle* %9, %struct.BM_PageHandle** %pageHandle, align 8
  %10 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %bufferManagerPtr = getelementptr inbounds %struct.TableManager, %struct.TableManager* %10, i32 0, i32 5
  %11 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr, align 8
  %12 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %page = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 0
  %13 = load i32, i32* %page, align 4
  %call = call i32 @pinPage(%struct.BM_BufferPool* noundef %11, %struct.BM_PageHandle* noundef %12, i32 noundef %13)
  store i32 %call, i32* %pinStatus, align 4
  %14 = load i32, i32* %pinStatus, align 4
  %cmp3 = icmp ne i32 %14, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %15 = load i32, i32* %pinStatus, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %slot7 = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 1
  %16 = load i32, i32* %slot7, align 4
  %17 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %recSize8 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %17, i32 0, i32 1
  %18 = load i32, i32* %recSize8, align 4
  %add9 = add nsw i32 %18, 2
  %mul = mul nsw i32 %16, %add9
  %conv10 = sext i32 %mul to i64
  %add11 = add i64 32, %conv10
  %conv12 = trunc i64 %add11 to i32
  store i32 %conv12, i32* %recordPosition, align 4
  %19 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %data = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %19, i32 0, i32 1
  %20 = load i8*, i8** %data, align 8
  %21 = load i32, i32* %recordPosition, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  store i8* %arrayidx, i8** %recordIndicator, align 8
  %22 = load i8*, i8** %recordIndicator, align 8
  %23 = load i8, i8* %22, align 1
  %conv13 = sext i8 %23 to i32
  %cmp14 = icmp ne i32 %conv13, 89
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end6
  %24 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %bufferManagerPtr17 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %24, i32 0, i32 5
  %25 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr17, align 8
  %26 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call18 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %25, %struct.BM_PageHandle* noundef %26)
  store i32 410, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end6
  %27 = load i8*, i8** %recordIndicator, align 8
  store i8 78, i8* %27, align 1
  %28 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %data20 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %28, i32 0, i32 1
  %29 = load i8*, i8** %data20, align 8
  %30 = bitcast i8* %29 to %struct.PageHeader*
  store %struct.PageHeader* %30, %struct.PageHeader** %header, align 8
  %31 = load %struct.PageHeader*, %struct.PageHeader** %header, align 8
  %totalTuples = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %31, i32 0, i32 1
  %32 = load i32, i32* %totalTuples, align 4
  %cmp21 = icmp sgt i32 %32, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end19
  %33 = load %struct.PageHeader*, %struct.PageHeader** %header, align 8
  %totalTuples23 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %33, i32 0, i32 1
  %34 = load i32, i32* %totalTuples23, align 4
  %sub = sub nsw i32 %34, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  %35 = load %struct.PageHeader*, %struct.PageHeader** %header, align 8
  %totalTuples24 = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %35, i32 0, i32 1
  store i32 %cond, i32* %totalTuples24, align 4
  %36 = load %struct.PageHeader*, %struct.PageHeader** %header, align 8
  %freeSlotCnt = getelementptr inbounds %struct.PageHeader, %struct.PageHeader* %36, i32 0, i32 2
  %37 = load i32, i32* %freeSlotCnt, align 4
  %add25 = add nsw i32 %37, 1
  store i32 %add25, i32* %freeSlotCnt, align 4
  %38 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %data26 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %38, i32 0, i32 1
  %39 = load i8*, i8** %data26, align 8
  %40 = load i32, i32* %recordPosition, align 4
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %41 = load i8*, i8** %recordIndicator, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %41, i64 1, i1 false)
  %42 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %data27 = getelementptr inbounds %struct.BM_PageHandle, %struct.BM_PageHandle* %42, i32 0, i32 1
  %43 = load i8*, i8** %data27, align 8
  %44 = load %struct.PageHeader*, %struct.PageHeader** %header, align 8
  %45 = bitcast %struct.PageHeader* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 4 %45, i64 32, i1 false)
  %46 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %totalTuples28 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %46, i32 0, i32 0
  %47 = load i32, i32* %totalTuples28, align 8
  %cmp29 = icmp sgt i32 %47, 0
  br i1 %cmp29, label %cond.true31, label %cond.false34

cond.true31:                                      ; preds = %cond.end
  %48 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %totalTuples32 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %48, i32 0, i32 0
  %49 = load i32, i32* %totalTuples32, align 8
  %sub33 = sub nsw i32 %49, 1
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true31
  %cond36 = phi i32 [ %sub33, %cond.true31 ], [ 0, %cond.false34 ]
  %50 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %totalTuples37 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %50, i32 0, i32 0
  store i32 %cond36, i32* %totalTuples37, align 8
  %51 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %bufferManagerPtr38 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %51, i32 0, i32 5
  %52 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr38, align 8
  %53 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call39 = call i32 @markDirty(%struct.BM_BufferPool* noundef %52, %struct.BM_PageHandle* noundef %53)
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %cond.end35
  %54 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %bufferManagerPtr43 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %54, i32 0, i32 5
  %55 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr43, align 8
  %56 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call44 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %55, %struct.BM_PageHandle* noundef %56)
  store i32 404, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %cond.end35
  %57 = load %struct.TableManager*, %struct.TableManager** %tableMgmt, align 8
  %bufferManagerPtr46 = getelementptr inbounds %struct.TableManager, %struct.TableManager* %57, i32 0, i32 5
  %58 = load %struct.BM_BufferPool*, %struct.BM_BufferPool** %bufferManagerPtr46, align 8
  %59 = load %struct.BM_PageHandle*, %struct.BM_PageHandle** %pageHandle, align 8
  %call47 = call i32 @unpinPage(%struct.BM_BufferPool* noundef %58, %struct.BM_PageHandle* noundef %59)
  store i32 %call47, i32* %unpinStatus, align 4
  %60 = load i32, i32* %unpinStatus, align 4
  %cmp48 = icmp ne i32 %60, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end45
  %61 = load i32, i32* %unpinStatus, align 4
  store i32 %61, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end45
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then50, %if.then42, %if.then16, %if.then5, %if.then
  %62 = load i32, i32* %retval, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Schema* @createSchema(i32 noundef %numAttr, i8** noundef %attrNames, i32* noundef %dataTypes, i32* noundef %typeLength, i32 noundef %keySize, i32* noundef %keys) #0 {
entry:
  %numAttr.addr = alloca i32, align 4
  %attrNames.addr = alloca i8**, align 8
  %dataTypes.addr = alloca i32*, align 8
  %typeLength.addr = alloca i32*, align 8
  %keySize.addr = alloca i32, align 4
  %keys.addr = alloca i32*, align 8
  %newSchema = alloca %struct.Schema*, align 8
  %attributeNames = alloca i8**, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %attributeNameMemory = alloca i8*, align 8
  %i27 = alloca i32, align 4
  store i32 %numAttr, i32* %numAttr.addr, align 4
  store i8** %attrNames, i8*** %attrNames.addr, align 8
  store i32* %dataTypes, i32** %dataTypes.addr, align 8
  store i32* %typeLength, i32** %typeLength.addr, align 8
  store i32 %keySize, i32* %keySize.addr, align 4
  store i32* %keys, i32** %keys.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 48) #7
  %0 = bitcast i8* %call to %struct.Schema*
  store %struct.Schema* %0, %struct.Schema** %newSchema, align 8
  %1 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %cmp = icmp ne %struct.Schema* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %numAttr.addr, align 4
  %3 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %numAttr1 = getelementptr inbounds %struct.Schema, %struct.Schema* %3, i32 0, i32 0
  store i32 %2, i32* %numAttr1, align 8
  %4 = load i32, i32* %numAttr.addr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call2 = call noalias i8* @malloc(i64 noundef %mul) #7
  %5 = bitcast i8* %call2 to i8**
  store i8** %5, i8*** %attributeNames, align 8
  %6 = load i8**, i8*** %attributeNames, align 8
  %7 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %attrNames3 = getelementptr inbounds %struct.Schema, %struct.Schema* %7, i32 0, i32 1
  store i8** %6, i8*** %attrNames3, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %numAttr.addr, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %attrNames.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %call6 = call i64 @strlen(i8* noundef %12) #8
  %add = add i64 %call6, 1
  %conv7 = trunc i64 %add to i32
  store i32 %conv7, i32* %length, align 4
  %13 = load i32, i32* %length, align 4
  %conv8 = sext i32 %13 to i64
  %call9 = call noalias i8* @malloc(i64 noundef %conv8) #7
  store i8* %call9, i8** %attributeNameMemory, align 8
  %14 = load i8*, i8** %attributeNameMemory, align 8
  %15 = load i8**, i8*** %attrNames.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i8*, i8** %15, i64 %idxprom10
  %17 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i8* @strcpy(i8* noundef %14, i8* noundef %17) #7
  %18 = load i8*, i8** %attributeNameMemory, align 8
  %19 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %attrNames13 = getelementptr inbounds %struct.Schema, %struct.Schema* %19, i32 0, i32 1
  %20 = load i8**, i8*** %attrNames13, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds i8*, i8** %20, i64 %idxprom14
  store i8* %18, i8** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %numAttr.addr, align 4
  %conv16 = sext i32 %23 to i64
  %mul17 = mul i64 %conv16, 4
  %call18 = call noalias i8* @malloc(i64 noundef %mul17) #7
  %24 = bitcast i8* %call18 to i32*
  %25 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %dataTypes19 = getelementptr inbounds %struct.Schema, %struct.Schema* %25, i32 0, i32 2
  store i32* %24, i32** %dataTypes19, align 8
  %26 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %dataTypes20 = getelementptr inbounds %struct.Schema, %struct.Schema* %26, i32 0, i32 2
  %27 = load i32*, i32** %dataTypes20, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32*, i32** %dataTypes.addr, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %numAttr.addr, align 4
  %conv21 = sext i32 %31 to i64
  %mul22 = mul i64 %conv21, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %30, i64 %mul22, i1 false)
  %32 = load i32, i32* %numAttr.addr, align 4
  %conv23 = sext i32 %32 to i64
  %mul24 = mul i64 %conv23, 4
  %call25 = call noalias i8* @malloc(i64 noundef %mul24) #7
  %33 = bitcast i8* %call25 to i32*
  %34 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %typeLength26 = getelementptr inbounds %struct.Schema, %struct.Schema* %34, i32 0, i32 3
  store i32* %33, i32** %typeLength26, align 8
  store i32 0, i32* %i27, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc37, %for.end
  %35 = load i32, i32* %i27, align 4
  %36 = load i32, i32* %numAttr.addr, align 4
  %cmp29 = icmp slt i32 %35, %36
  br i1 %cmp29, label %for.body31, label %for.end39

for.body31:                                       ; preds = %for.cond28
  %37 = load i32*, i32** %typeLength.addr, align 8
  %38 = load i32, i32* %i27, align 4
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %37, i64 %idxprom32
  %39 = load i32, i32* %arrayidx33, align 4
  %40 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %typeLength34 = getelementptr inbounds %struct.Schema, %struct.Schema* %40, i32 0, i32 3
  %41 = load i32*, i32** %typeLength34, align 8
  %42 = load i32, i32* %i27, align 4
  %idxprom35 = sext i32 %42 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %41, i64 %idxprom35
  store i32 %39, i32* %arrayidx36, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body31
  %43 = load i32, i32* %i27, align 4
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, i32* %i27, align 4
  br label %for.cond28, !llvm.loop !39

for.end39:                                        ; preds = %for.cond28
  %44 = load i32, i32* %keySize.addr, align 4
  %45 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %keySize40 = getelementptr inbounds %struct.Schema, %struct.Schema* %45, i32 0, i32 5
  store i32 %44, i32* %keySize40, align 8
  %46 = load i32, i32* %keySize.addr, align 4
  %conv41 = sext i32 %46 to i64
  %mul42 = mul i64 %conv41, 4
  %call43 = call noalias i8* @malloc(i64 noundef %mul42) #7
  %47 = bitcast i8* %call43 to i32*
  %48 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %keyAttrs = getelementptr inbounds %struct.Schema, %struct.Schema* %48, i32 0, i32 4
  store i32* %47, i32** %keyAttrs, align 8
  %49 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  %keyAttrs44 = getelementptr inbounds %struct.Schema, %struct.Schema* %49, i32 0, i32 4
  %50 = load i32*, i32** %keyAttrs44, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = load i32*, i32** %keys.addr, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* %keySize.addr, align 4
  %conv45 = sext i32 %54 to i64
  %mul46 = mul i64 %conv45, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %53, i64 %mul46, i1 false)
  br label %if.end

if.end:                                           ; preds = %for.end39, %entry
  %55 = load %struct.Schema*, %struct.Schema** %newSchema, align 8
  ret %struct.Schema* %55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeSchema(%struct.Schema* noundef %schema) #0 {
entry:
  %retval = alloca i32, align 4
  %schema.addr = alloca %struct.Schema*, align 8
  %attributeIndex = alloca i32, align 4
  %attributeName = alloca i8*, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  %0 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %tobool = icmp ne %struct.Schema* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %attributeIndex, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %1 = load i32, i32* %attributeIndex, align 4
  %2 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %2, i32 0, i32 0
  %3 = load i32, i32* %numAttr, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames = getelementptr inbounds %struct.Schema, %struct.Schema* %4, i32 0, i32 1
  %5 = load i8**, i8*** %attrNames, align 8
  %6 = load i32, i32* %attributeIndex, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %attributeName, align 8
  %8 = load i8*, i8** %attributeName, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %while.body
  %9 = load i8*, i8** %attributeName, align 8
  call void @free(i8* noundef %9) #7
  %10 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames3 = getelementptr inbounds %struct.Schema, %struct.Schema* %10, i32 0, i32 1
  %11 = load i8**, i8*** %attrNames3, align 8
  %12 = load i32, i32* %attributeIndex, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i8*, i8** %11, i64 %idxprom4
  store i8* null, i8** %arrayidx5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %while.body
  %13 = load i32, i32* %attributeIndex, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %attributeIndex, align 4
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  %14 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames7 = getelementptr inbounds %struct.Schema, %struct.Schema* %14, i32 0, i32 1
  %15 = load i8**, i8*** %attrNames7, align 8
  %tobool8 = icmp ne i8** %15, null
  br i1 %tobool8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %while.end
  %16 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames10 = getelementptr inbounds %struct.Schema, %struct.Schema* %16, i32 0, i32 1
  %17 = load i8**, i8*** %attrNames10, align 8
  %18 = bitcast i8** %17 to i8*
  call void @free(i8* noundef %18) #7
  %19 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames11 = getelementptr inbounds %struct.Schema, %struct.Schema* %19, i32 0, i32 1
  store i8** null, i8*** %attrNames11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %while.end
  store i32 0, i32* %attributeIndex, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %if.end21, %if.end12
  %20 = load i32, i32* %attributeIndex, align 4
  %21 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr14 = getelementptr inbounds %struct.Schema, %struct.Schema* %21, i32 0, i32 0
  %22 = load i32, i32* %numAttr14, align 8
  %cmp15 = icmp slt i32 %20, %22
  br i1 %cmp15, label %while.body16, label %while.end23

while.body16:                                     ; preds = %while.cond13
  %23 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %23, i32 0, i32 2
  %24 = load i32*, i32** %dataTypes, align 8
  %25 = load i32, i32* %attributeIndex, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 %idxprom17
  %26 = load i32, i32* %arrayidx18, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.body16
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %while.body16
  %27 = load i32, i32* %attributeIndex, align 4
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, i32* %attributeIndex, align 4
  br label %while.cond13, !llvm.loop !41

while.end23:                                      ; preds = %while.cond13
  %28 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes24 = getelementptr inbounds %struct.Schema, %struct.Schema* %28, i32 0, i32 2
  %29 = load i32*, i32** %dataTypes24, align 8
  %tobool25 = icmp ne i32* %29, null
  br i1 %tobool25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %while.end23
  %30 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes27 = getelementptr inbounds %struct.Schema, %struct.Schema* %30, i32 0, i32 2
  %31 = load i32*, i32** %dataTypes27, align 8
  %32 = bitcast i32* %31 to i8*
  call void @free(i8* noundef %32) #7
  %33 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes28 = getelementptr inbounds %struct.Schema, %struct.Schema* %33, i32 0, i32 2
  store i32* null, i32** %dataTypes28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %while.end23
  %34 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %34, i32 0, i32 3
  %35 = load i32*, i32** %typeLength, align 8
  %tobool30 = icmp ne i32* %35, null
  br i1 %tobool30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end29
  %36 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength32 = getelementptr inbounds %struct.Schema, %struct.Schema* %36, i32 0, i32 3
  %37 = load i32*, i32** %typeLength32, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* noundef %38) #7
  %39 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength33 = getelementptr inbounds %struct.Schema, %struct.Schema* %39, i32 0, i32 3
  store i32* null, i32** %typeLength33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29
  %40 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keyAttrs = getelementptr inbounds %struct.Schema, %struct.Schema* %40, i32 0, i32 4
  %41 = load i32*, i32** %keyAttrs, align 8
  %tobool35 = icmp ne i32* %41, null
  br i1 %tobool35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end34
  %42 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keyAttrs37 = getelementptr inbounds %struct.Schema, %struct.Schema* %42, i32 0, i32 4
  %43 = load i32*, i32** %keyAttrs37, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* noundef %44) #7
  %45 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keyAttrs38 = getelementptr inbounds %struct.Schema, %struct.Schema* %45, i32 0, i32 4
  store i32* null, i32** %keyAttrs38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end34
  %46 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %47 = bitcast %struct.Schema* %46 to i8*
  call void @free(i8* noundef %47) #7
  store %struct.Schema* null, %struct.Schema** %schema.addr, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then
  %48 = load i32, i32* %retval, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @createRecord(%struct.Record** noundef %record, %struct.Schema* noundef %schema) #0 {
entry:
  %retval = alloca i32, align 4
  %record.addr = alloca %struct.Record**, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %tempRecord = alloca %struct.Record*, align 8
  %recordData = alloca i8*, align 8
  %recordSize = alloca i32, align 4
  store %struct.Record** %record, %struct.Record*** %record.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.Record*
  store %struct.Record* %0, %struct.Record** %tempRecord, align 8
  %1 = load %struct.Record*, %struct.Record** %tempRecord, align 8
  %cmp = icmp eq %struct.Record* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 401, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %call1 = call i32 @getRecordSize(%struct.Schema* noundef %2)
  store i32 %call1, i32* %recordSize, align 4
  %3 = load i32, i32* %recordSize, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %call2 = call noalias i8* @malloc(i64 noundef %conv) #7
  store i8* %call2, i8** %recordData, align 8
  %4 = load i8*, i8** %recordData, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load %struct.Record*, %struct.Record** %tempRecord, align 8
  %6 = bitcast %struct.Record* %5 to i8*
  call void @free(i8* noundef %6) #7
  store i32 401, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load i8*, i8** %recordData, align 8
  %8 = load i32, i32* %recordSize, align 4
  %add7 = add nsw i32 %8, 1
  %conv8 = sext i32 %add7 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 %conv8, i1 false)
  %9 = load i8*, i8** %recordData, align 8
  %10 = load %struct.Record*, %struct.Record** %tempRecord, align 8
  %data = getelementptr inbounds %struct.Record, %struct.Record* %10, i32 0, i32 1
  store i8* %9, i8** %data, align 8
  %11 = load %struct.Record*, %struct.Record** %tempRecord, align 8
  %12 = load %struct.Record**, %struct.Record*** %record.addr, align 8
  store %struct.Record* %11, %struct.Record** %12, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeRecord(%struct.Record* noundef %record) #0 {
entry:
  %retval = alloca i32, align 4
  %record.addr = alloca %struct.Record*, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  %0 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %tobool = icmp ne %struct.Record* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 410, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %data = getelementptr inbounds %struct.Record, %struct.Record* %1, i32 0, i32 1
  %2 = load i8*, i8** %data, align 8
  call void @free(i8* noundef %2) #7
  %3 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %data1 = getelementptr inbounds %struct.Record, %struct.Record* %3, i32 0, i32 1
  store i8* null, i8** %data1, align 8
  %4 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %5 = bitcast %struct.Record* %4 to i8*
  call void @free(i8* noundef %5) #7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @startScan(%struct.RM_TableData* noundef %rel, %struct.RM_ScanHandle* noundef %scan, %struct.Expr* noundef %conditionExpression) #0 {
entry:
  %retval = alloca i32, align 4
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %scan.addr = alloca %struct.RM_ScanHandle*, align 8
  %conditionExpression.addr = alloca %struct.Expr*, align 8
  %scanManager = alloca %struct.ScanManager*, align 8
  %tableManager = alloca %struct.TableManager*, align 8
  %.compoundliteral = alloca %struct.ScanManager, align 8
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  store %struct.RM_ScanHandle* %scan, %struct.RM_ScanHandle** %scan.addr, align 8
  store %struct.Expr* %conditionExpression, %struct.Expr** %conditionExpression.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #7
  %0 = bitcast i8* %call to %struct.ScanManager*
  store %struct.ScanManager* %0, %struct.ScanManager** %scanManager, align 8
  %1 = load %struct.ScanManager*, %struct.ScanManager** %scanManager, align 8
  %tobool = icmp ne %struct.ScanManager* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 401, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %2, i32 0, i32 2
  %3 = load i8*, i8** %mgmtData, align 8
  %4 = bitcast i8* %3 to %struct.TableManager*
  store %struct.TableManager* %4, %struct.TableManager** %tableManager, align 8
  %5 = load %struct.ScanManager*, %struct.ScanManager** %scanManager, align 8
  %totalEntries = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %.compoundliteral, i32 0, i32 0
  %6 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %totalTuples = getelementptr inbounds %struct.TableManager, %struct.TableManager* %6, i32 0, i32 0
  %7 = load i32, i32* %totalTuples, align 8
  store i32 %7, i32* %totalEntries, align 8
  %scanIndex = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %.compoundliteral, i32 0, i32 1
  store i32 0, i32* %scanIndex, align 4
  %currentPageNum = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %.compoundliteral, i32 0, i32 2
  %8 = load %struct.TableManager*, %struct.TableManager** %tableManager, align 8
  %firstDataPageNum = getelementptr inbounds %struct.TableManager, %struct.TableManager* %8, i32 0, i32 4
  %9 = load i32, i32* %firstDataPageNum, align 8
  store i32 %9, i32* %currentPageNum, align 8
  %currentSlotNum = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %.compoundliteral, i32 0, i32 3
  store i32 -1, i32* %currentSlotNum, align 4
  %conditionExpression1 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %.compoundliteral, i32 0, i32 4
  %10 = load %struct.Expr*, %struct.Expr** %conditionExpression.addr, align 8
  store %struct.Expr* %10, %struct.Expr** %conditionExpression1, align 8
  %scanPageHandlePtr = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %.compoundliteral, i32 0, i32 5
  store %struct.BM_PageHandle* null, %struct.BM_PageHandle** %scanPageHandlePtr, align 8
  %11 = bitcast %struct.ScanManager* %5 to i8*
  %12 = bitcast %struct.ScanManager* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = load %struct.ScanManager*, %struct.ScanManager** %scanManager, align 8
  %14 = bitcast %struct.ScanManager* %13 to i8*
  %15 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %scan.addr, align 8
  %mgmtData2 = getelementptr inbounds %struct.RM_ScanHandle, %struct.RM_ScanHandle* %15, i32 0, i32 1
  store i8* %14, i8** %mgmtData2, align 8
  %16 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %17 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %scan.addr, align 8
  %rel3 = getelementptr inbounds %struct.RM_ScanHandle, %struct.RM_ScanHandle* %17, i32 0, i32 0
  store %struct.RM_TableData* %16, %struct.RM_TableData** %rel3, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next(%struct.RM_ScanHandle* noundef %scan, %struct.Record* noundef %record) #0 {
entry:
  %retval = alloca i32, align 4
  %scan.addr = alloca %struct.RM_ScanHandle*, align 8
  %record.addr = alloca %struct.Record*, align 8
  %scanMgr = alloca %struct.ScanManager*, align 8
  %tableData = alloca %struct.RM_TableData*, align 8
  %tableMgr = alloca %struct.TableManager*, align 8
  %pageHeaderSize = alloca i32, align 4
  %extraBytesPerRecord = alloca i32, align 4
  %sizePerRecord = alloca i32, align 4
  %totalUsableSpace = alloca i32, align 4
  %slotsPerPage = alloca i32, align 4
  %hasScannedAllTuples = alloca i16, align 2
  %evalResult = alloca %struct.Value*, align 8
  %currentRID = alloca %struct.RID, align 4
  %recordStatus = alloca i32, align 4
  store %struct.RM_ScanHandle* %scan, %struct.RM_ScanHandle** %scan.addr, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  %0 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %scan.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_ScanHandle, %struct.RM_ScanHandle* %0, i32 0, i32 1
  %1 = load i8*, i8** %mgmtData, align 8
  %2 = bitcast i8* %1 to %struct.ScanManager*
  store %struct.ScanManager* %2, %struct.ScanManager** %scanMgr, align 8
  %3 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %scan.addr, align 8
  %rel = getelementptr inbounds %struct.RM_ScanHandle, %struct.RM_ScanHandle* %3, i32 0, i32 0
  %4 = load %struct.RM_TableData*, %struct.RM_TableData** %rel, align 8
  store %struct.RM_TableData* %4, %struct.RM_TableData** %tableData, align 8
  %5 = load %struct.RM_TableData*, %struct.RM_TableData** %tableData, align 8
  %mgmtData1 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %5, i32 0, i32 2
  %6 = load i8*, i8** %mgmtData1, align 8
  %7 = bitcast i8* %6 to %struct.TableManager*
  store %struct.TableManager* %7, %struct.TableManager** %tableMgr, align 8
  store i32 32, i32* %pageHeaderSize, align 4
  store i32 2, i32* %extraBytesPerRecord, align 4
  %8 = load %struct.TableManager*, %struct.TableManager** %tableMgr, align 8
  %recSize = getelementptr inbounds %struct.TableManager, %struct.TableManager* %8, i32 0, i32 1
  %9 = load i32, i32* %recSize, align 4
  %10 = load i32, i32* %extraBytesPerRecord, align 4
  %add = add nsw i32 %9, %10
  store i32 %add, i32* %sizePerRecord, align 4
  %11 = load i32, i32* %pageHeaderSize, align 4
  %sub = sub nsw i32 4096, %11
  store i32 %sub, i32* %totalUsableSpace, align 4
  %12 = load i32, i32* %totalUsableSpace, align 4
  %13 = load i32, i32* %sizePerRecord, align 4
  %div = sdiv i32 %12, %13
  store i32 %div, i32* %slotsPerPage, align 4
  %14 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %scanIndex = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %14, i32 0, i32 1
  %15 = load i32, i32* %scanIndex, align 4
  %16 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %totalEntries = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %16, i32 0, i32 0
  %17 = load i32, i32* %totalEntries, align 8
  %cmp = icmp sge i32 %15, %17
  %conv = zext i1 %cmp to i32
  %conv2 = trunc i32 %conv to i16
  store i16 %conv2, i16* %hasScannedAllTuples, align 2
  %18 = load i16, i16* %hasScannedAllTuples, align 2
  %tobool = icmp ne i16 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 203, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #7
  %19 = bitcast i8* %call to %struct.Value*
  store %struct.Value* %19, %struct.Value** %evalResult, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end32, %if.end
  %20 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %currentSlotNum = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %20, i32 0, i32 3
  %21 = load i32, i32* %currentSlotNum, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %currentSlotNum, align 4
  %22 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %currentSlotNum3 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %22, i32 0, i32 3
  %23 = load i32, i32* %currentSlotNum3, align 4
  %24 = load i32, i32* %slotsPerPage, align 4
  %cmp4 = icmp sge i32 %23, %24
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %for.cond
  %25 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %currentPageNum = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %25, i32 0, i32 2
  %26 = load i32, i32* %currentPageNum, align 8
  %inc7 = add nsw i32 %26, 1
  store i32 %inc7, i32* %currentPageNum, align 8
  %27 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %currentSlotNum8 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %27, i32 0, i32 3
  store i32 0, i32* %currentSlotNum8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.cond
  %page = getelementptr inbounds %struct.RID, %struct.RID* %currentRID, i32 0, i32 0
  %28 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %currentPageNum10 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %28, i32 0, i32 2
  %29 = load i32, i32* %currentPageNum10, align 8
  store i32 %29, i32* %page, align 4
  %slot = getelementptr inbounds %struct.RID, %struct.RID* %currentRID, i32 0, i32 1
  %30 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %currentSlotNum11 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %30, i32 0, i32 3
  %31 = load i32, i32* %currentSlotNum11, align 4
  store i32 %31, i32* %slot, align 4
  %32 = load %struct.RM_TableData*, %struct.RM_TableData** %tableData, align 8
  %33 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %34 = bitcast %struct.RID* %currentRID to i64*
  %35 = load i64, i64* %34, align 4
  %call12 = call i32 @getRecord(%struct.RM_TableData* noundef %32, i64 %35, %struct.Record* noundef %33)
  store i32 %call12, i32* %recordStatus, align 4
  %36 = load i32, i32* %recordStatus, align 4
  %cmp13 = icmp eq i32 %36, 0
  br i1 %cmp13, label %if.then15, label %if.end26

if.then15:                                        ; preds = %if.end9
  %37 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %scanIndex16 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %37, i32 0, i32 1
  %38 = load i32, i32* %scanIndex16, align 4
  %inc17 = add nsw i32 %38, 1
  store i32 %inc17, i32* %scanIndex16, align 4
  %39 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %conditionExpression = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %39, i32 0, i32 4
  %40 = load %struct.Expr*, %struct.Expr** %conditionExpression, align 8
  %tobool18 = icmp ne %struct.Expr* %40, null
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then15
  %41 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %42 = load %struct.RM_TableData*, %struct.RM_TableData** %tableData, align 8
  %schema = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %42, i32 0, i32 1
  %43 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %44 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %conditionExpression20 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %44, i32 0, i32 4
  %45 = load %struct.Expr*, %struct.Expr** %conditionExpression20, align 8
  %call21 = call i32 @evalExpr(%struct.Record* noundef %41, %struct.Schema* noundef %43, %struct.Expr* noundef %45, %struct.Value** noundef %evalResult)
  %46 = load %struct.Value*, %struct.Value** %evalResult, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %46, i32 0, i32 1
  %boolV = bitcast %union.v* %v to i16*
  %47 = load i16, i16* %boolV, align 8
  %tobool22 = icmp ne i16 %47, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then19
  %48 = load %struct.Value*, %struct.Value** %evalResult, align 8
  %49 = bitcast %struct.Value* %48 to i8*
  call void @free(i8* noundef %49) #7
  store i32 0, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then19
  br label %if.end25

if.else:                                          ; preds = %if.then15
  %50 = load %struct.Value*, %struct.Value** %evalResult, align 8
  %51 = bitcast %struct.Value* %50 to i8*
  call void @free(i8* noundef %51) #7
  store i32 0, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end24
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end9
  %52 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %scanIndex27 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %52, i32 0, i32 1
  %53 = load i32, i32* %scanIndex27, align 4
  %54 = load %struct.ScanManager*, %struct.ScanManager** %scanMgr, align 8
  %totalEntries28 = getelementptr inbounds %struct.ScanManager, %struct.ScanManager* %54, i32 0, i32 0
  %55 = load i32, i32* %totalEntries28, align 8
  %cmp29 = icmp sge i32 %53, %55
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  %56 = load %struct.Value*, %struct.Value** %evalResult, align 8
  %57 = bitcast %struct.Value* %56 to i8*
  call void @free(i8* noundef %57) #7
  store i32 203, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end26
  br label %for.cond

return:                                           ; preds = %if.then31, %if.else, %if.then23, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @closeScan(%struct.RM_ScanHandle* noundef %scan) #0 {
entry:
  %retval = alloca i32, align 4
  %scan.addr = alloca %struct.RM_ScanHandle*, align 8
  store %struct.RM_ScanHandle* %scan, %struct.RM_ScanHandle** %scan.addr, align 8
  %0 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %scan.addr, align 8
  %tobool = icmp ne %struct.RM_ScanHandle* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 410, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %scan.addr, align 8
  %mgmtData = getelementptr inbounds %struct.RM_ScanHandle, %struct.RM_ScanHandle* %1, i32 0, i32 1
  %2 = load i8*, i8** %mgmtData, align 8
  call void @free(i8* noundef %2) #7
  %3 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %scan.addr, align 8
  %mgmtData1 = getelementptr inbounds %struct.RM_ScanHandle, %struct.RM_ScanHandle* %3, i32 0, i32 1
  store i8* null, i8** %mgmtData1, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getAttrPos(%struct.Schema* noundef %schema, i32 noundef %attrNum) #0 {
entry:
  %schema.addr = alloca %struct.Schema*, align 8
  %attrNum.addr = alloca i32, align 4
  %attrPos = alloca i32, align 4
  %sizes = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  store i32 %attrNum, i32* %attrNum.addr, align 4
  store i32 0, i32* %attrPos, align 4
  %0 = bitcast [4 x i32]* %sizes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.getAttrPos.sizes to i8*), i64 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %attrNum.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %3, i32 0, i32 2
  %4 = load i32*, i32** %dataTypes, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %7, i32 0, i32 3
  %8 = load i32*, i32** %typeLength, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 1, %conv
  %11 = load i32, i32* %attrPos, align 4
  %conv4 = sext i32 %11 to i64
  %add = add i64 %conv4, %mul
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, i32* %attrPos, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes6 = getelementptr inbounds %struct.Schema, %struct.Schema* %12, i32 0, i32 2
  %13 = load i32*, i32** %dataTypes6, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %sizes, i64 0, i64 %idxprom9
  %16 = load i32, i32* %arrayidx10, align 4
  %17 = load i32, i32* %attrPos, align 4
  %add11 = add nsw i32 %17, %16
  store i32 %add11, i32* %attrPos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %attrPos, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setAttr(%struct.Record* noundef %record, %struct.Schema* noundef %schema, i32 noundef %attrNum, %struct.Value* noundef %value) #0 {
entry:
  %record.addr = alloca %struct.Record*, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %attrNum.addr = alloca i32, align 4
  %value.addr = alloca %struct.Value*, align 8
  %position = alloca i32, align 4
  %target = alloca i8*, align 8
  %intHolder = alloca i32*, align 8
  %floatHolder = alloca float*, align 8
  %boolHolder = alloca i16*, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  store i32 %attrNum, i32* %attrNum.addr, align 4
  store %struct.Value* %value, %struct.Value** %value.addr, align 8
  %0 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %1 = load i32, i32* %attrNum.addr, align 4
  %call = call i32 @getAttrPos(%struct.Schema* noundef %0, i32 noundef %1)
  store i32 %call, i32* %position, align 4
  %2 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %data = getelementptr inbounds %struct.Record, %struct.Record* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %4 = load i32, i32* %position, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %target, align 8
  %5 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %5, i32 0, i32 2
  %6 = load i32*, i32** %dataTypes, align 8
  %7 = load i32, i32* %attrNum.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %target, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %intHolder, align 8
  %11 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %11, i32 0, i32 1
  %intV = bitcast %union.v* %v to i32*
  %12 = load i32, i32* %intV, align 8
  %13 = load i32*, i32** %intHolder, align 8
  store i32 %12, i32* %13, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  %14 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes1 = getelementptr inbounds %struct.Schema, %struct.Schema* %14, i32 0, i32 2
  %15 = load i32*, i32** %dataTypes1, align 8
  %16 = load i32, i32* %attrNum.addr, align 4
  %idxprom2 = sext i32 %16 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %15, i64 %idxprom2
  %17 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %17, 2
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %18 = load i8*, i8** %target, align 8
  %19 = bitcast i8* %18 to float*
  store float* %19, float** %floatHolder, align 8
  %20 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %v6 = getelementptr inbounds %struct.Value, %struct.Value* %20, i32 0, i32 1
  %floatV = bitcast %union.v* %v6 to float*
  %21 = load float, float* %floatV, align 8
  %22 = load float*, float** %floatHolder, align 8
  store float %21, float* %22, align 4
  br label %if.end25

if.else7:                                         ; preds = %if.else
  %23 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes8 = getelementptr inbounds %struct.Schema, %struct.Schema* %23, i32 0, i32 2
  %24 = load i32*, i32** %dataTypes8, align 8
  %25 = load i32, i32* %attrNum.addr, align 4
  %idxprom9 = sext i32 %25 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %24, i64 %idxprom9
  %26 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %26, 1
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else7
  %27 = load i8*, i8** %target, align 8
  %28 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %v13 = getelementptr inbounds %struct.Value, %struct.Value* %28, i32 0, i32 1
  %stringV = bitcast %union.v* %v13 to i8**
  %29 = load i8*, i8** %stringV, align 8
  %30 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %30, i32 0, i32 3
  %31 = load i32*, i32** %typeLength, align 8
  %32 = load i32, i32* %attrNum.addr, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %31, i64 %idxprom14
  %33 = load i32, i32* %arrayidx15, align 4
  %conv = sext i32 %33 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %29, i64 %conv, i1 false)
  br label %if.end24

if.else16:                                        ; preds = %if.else7
  %34 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes17 = getelementptr inbounds %struct.Schema, %struct.Schema* %34, i32 0, i32 2
  %35 = load i32*, i32** %dataTypes17, align 8
  %36 = load i32, i32* %attrNum.addr, align 4
  %idxprom18 = sext i32 %36 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %35, i64 %idxprom18
  %37 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp eq i32 %37, 3
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.else16
  %38 = load i8*, i8** %target, align 8
  %39 = bitcast i8* %38 to i16*
  store i16* %39, i16** %boolHolder, align 8
  %40 = load %struct.Value*, %struct.Value** %value.addr, align 8
  %v23 = getelementptr inbounds %struct.Value, %struct.Value* %40, i32 0, i32 1
  %boolV = bitcast %union.v* %v23 to i16*
  %41 = load i16, i16* %boolV, align 8
  %42 = load i16*, i16** %boolHolder, align 8
  store i16 %41, i16* %42, align 2
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.else16
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then12
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then5
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @serializeTableInfo(%struct.RM_TableData* noundef %rel) #0 {
entry:
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %result = alloca %struct.VarString*, align 8
  %tmp = alloca i8*, align 8
  %newbufsize = alloca i32, align 4
  %newbufsize48 = alloca i32, align 4
  %resultStr = alloca i8*, align 8
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.VarString*
  store %struct.VarString* %0, %struct.VarString** %result, align 8
  %1 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size = getelementptr inbounds %struct.VarString, %struct.VarString* %1, i32 0, i32 1
  store i32 0, i32* %size, align 8
  %2 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize = getelementptr inbounds %struct.VarString, %struct.VarString* %2, i32 0, i32 2
  store i32 100, i32* %bufsize, align 4
  %call1 = call noalias i8* @calloc(i64 noundef 100, i64 noundef 1) #7
  %3 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf = getelementptr inbounds %struct.VarString, %struct.VarString* %3, i32 0, i32 0
  store i8* %call1, i8** %buf, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %call3 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call3, i8** %tmp, align 8
  %4 = load i8*, i8** %tmp, align 8
  %5 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %name = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %call4 = call i32 @getNumTuples(%struct.RM_TableData* noundef %7)
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %4, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), i8* noundef %6, i32 noundef %call4) #7
  br label %do.body6

do.body6:                                         ; preds = %do.body2
  br label %do.body7

do.body7:                                         ; preds = %do.body6
  %8 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize8 = getelementptr inbounds %struct.VarString, %struct.VarString* %8, i32 0, i32 2
  %9 = load i32, i32* %bufsize8, align 4
  %conv = sext i32 %9 to i64
  %10 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size9 = getelementptr inbounds %struct.VarString, %struct.VarString* %10, i32 0, i32 1
  %11 = load i32, i32* %size9, align 8
  %conv10 = sext i32 %11 to i64
  %12 = load i8*, i8** %tmp, align 8
  %call11 = call i64 @strlen(i8* noundef %12) #8
  %add = add i64 %conv10, %call11
  %cmp = icmp ult i64 %conv, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body7
  %13 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize13 = getelementptr inbounds %struct.VarString, %struct.VarString* %13, i32 0, i32 2
  %14 = load i32, i32* %bufsize13, align 4
  store i32 %14, i32* %newbufsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %15 = load i32, i32* %newbufsize, align 4
  %mul = mul nsw i32 %15, 2
  store i32 %mul, i32* %newbufsize, align 4
  %conv14 = sext i32 %mul to i64
  %16 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size15 = getelementptr inbounds %struct.VarString, %struct.VarString* %16, i32 0, i32 1
  %17 = load i32, i32* %size15, align 8
  %conv16 = sext i32 %17 to i64
  %18 = load i8*, i8** %tmp, align 8
  %call17 = call i64 @strlen(i8* noundef %18) #8
  %add18 = add i64 %conv16, %call17
  %cmp19 = icmp ult i64 %conv14, %add18
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %while.cond
  %19 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf21 = getelementptr inbounds %struct.VarString, %struct.VarString* %19, i32 0, i32 0
  %20 = load i8*, i8** %buf21, align 8
  %21 = load i32, i32* %newbufsize, align 4
  %conv22 = sext i32 %21 to i64
  %call23 = call i8* @realloc(i8* noundef %20, i64 noundef %conv22) #7
  %22 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf24 = getelementptr inbounds %struct.VarString, %struct.VarString* %22, i32 0, i32 0
  store i8* %call23, i8** %buf24, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %do.body7
  br label %do.end25

do.end25:                                         ; preds = %if.end
  %23 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf26 = getelementptr inbounds %struct.VarString, %struct.VarString* %23, i32 0, i32 0
  %24 = load i8*, i8** %buf26, align 8
  %25 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size27 = getelementptr inbounds %struct.VarString, %struct.VarString* %25, i32 0, i32 1
  %26 = load i32, i32* %size27, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %27 = load i8*, i8** %tmp, align 8
  %28 = load i8*, i8** %tmp, align 8
  %call28 = call i64 @strlen(i8* noundef %28) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %27, i64 %call28, i1 false)
  %29 = load i8*, i8** %tmp, align 8
  %call29 = call i64 @strlen(i8* noundef %29) #8
  %30 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size30 = getelementptr inbounds %struct.VarString, %struct.VarString* %30, i32 0, i32 1
  %31 = load i32, i32* %size30, align 8
  %conv31 = sext i32 %31 to i64
  %add32 = add i64 %conv31, %call29
  %conv33 = trunc i64 %add32 to i32
  store i32 %conv33, i32* %size30, align 8
  br label %do.end34

do.end34:                                         ; preds = %do.end25
  %32 = load i8*, i8** %tmp, align 8
  call void @free(i8* noundef %32) #7
  br label %do.end35

do.end35:                                         ; preds = %do.end34
  br label %do.body36

do.body36:                                        ; preds = %do.end35
  br label %do.body37

do.body37:                                        ; preds = %do.body36
  %33 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize38 = getelementptr inbounds %struct.VarString, %struct.VarString* %33, i32 0, i32 2
  %34 = load i32, i32* %bufsize38, align 4
  %conv39 = sext i32 %34 to i64
  %35 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size40 = getelementptr inbounds %struct.VarString, %struct.VarString* %35, i32 0, i32 1
  %36 = load i32, i32* %size40, align 8
  %conv41 = sext i32 %36 to i64
  %37 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %37, i32 0, i32 1
  %38 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %call42 = call i8* @serializeSchema(%struct.Schema* noundef %38)
  %call43 = call i64 @strlen(i8* noundef %call42) #8
  %add44 = add i64 %conv41, %call43
  %cmp45 = icmp ult i64 %conv39, %add44
  br i1 %cmp45, label %if.then47, label %if.end67

if.then47:                                        ; preds = %do.body37
  %39 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize49 = getelementptr inbounds %struct.VarString, %struct.VarString* %39, i32 0, i32 2
  %40 = load i32, i32* %bufsize49, align 4
  store i32 %40, i32* %newbufsize48, align 4
  br label %while.cond50

while.cond50:                                     ; preds = %while.body61, %if.then47
  %41 = load i32, i32* %newbufsize48, align 4
  %mul51 = mul nsw i32 %41, 2
  store i32 %mul51, i32* %newbufsize48, align 4
  %conv52 = sext i32 %mul51 to i64
  %42 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size53 = getelementptr inbounds %struct.VarString, %struct.VarString* %42, i32 0, i32 1
  %43 = load i32, i32* %size53, align 8
  %conv54 = sext i32 %43 to i64
  %44 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema55 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %44, i32 0, i32 1
  %45 = load %struct.Schema*, %struct.Schema** %schema55, align 8
  %call56 = call i8* @serializeSchema(%struct.Schema* noundef %45)
  %call57 = call i64 @strlen(i8* noundef %call56) #8
  %add58 = add i64 %conv54, %call57
  %cmp59 = icmp ult i64 %conv52, %add58
  br i1 %cmp59, label %while.body61, label %while.end62

while.body61:                                     ; preds = %while.cond50
  br label %while.cond50, !llvm.loop !44

while.end62:                                      ; preds = %while.cond50
  %46 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf63 = getelementptr inbounds %struct.VarString, %struct.VarString* %46, i32 0, i32 0
  %47 = load i8*, i8** %buf63, align 8
  %48 = load i32, i32* %newbufsize48, align 4
  %conv64 = sext i32 %48 to i64
  %call65 = call i8* @realloc(i8* noundef %47, i64 noundef %conv64) #7
  %49 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf66 = getelementptr inbounds %struct.VarString, %struct.VarString* %49, i32 0, i32 0
  store i8* %call65, i8** %buf66, align 8
  br label %if.end67

if.end67:                                         ; preds = %while.end62, %do.body37
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  %50 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf69 = getelementptr inbounds %struct.VarString, %struct.VarString* %50, i32 0, i32 0
  %51 = load i8*, i8** %buf69, align 8
  %52 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size70 = getelementptr inbounds %struct.VarString, %struct.VarString* %52, i32 0, i32 1
  %53 = load i32, i32* %size70, align 8
  %idx.ext71 = sext i32 %53 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %51, i64 %idx.ext71
  %54 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema73 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %54, i32 0, i32 1
  %55 = load %struct.Schema*, %struct.Schema** %schema73, align 8
  %call74 = call i8* @serializeSchema(%struct.Schema* noundef %55)
  %56 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema75 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %56, i32 0, i32 1
  %57 = load %struct.Schema*, %struct.Schema** %schema75, align 8
  %call76 = call i8* @serializeSchema(%struct.Schema* noundef %57)
  %call77 = call i64 @strlen(i8* noundef %call76) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr72, i8* align 1 %call74, i64 %call77, i1 false)
  %58 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema78 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %58, i32 0, i32 1
  %59 = load %struct.Schema*, %struct.Schema** %schema78, align 8
  %call79 = call i8* @serializeSchema(%struct.Schema* noundef %59)
  %call80 = call i64 @strlen(i8* noundef %call79) #8
  %60 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size81 = getelementptr inbounds %struct.VarString, %struct.VarString* %60, i32 0, i32 1
  %61 = load i32, i32* %size81, align 8
  %conv82 = sext i32 %61 to i64
  %add83 = add i64 %conv82, %call80
  %conv84 = trunc i64 %add83 to i32
  store i32 %conv84, i32* %size81, align 8
  br label %do.end85

do.end85:                                         ; preds = %do.end68
  br label %do.body86

do.body86:                                        ; preds = %do.end85
  br label %do.body87

do.body87:                                        ; preds = %do.body86
  %62 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size88 = getelementptr inbounds %struct.VarString, %struct.VarString* %62, i32 0, i32 1
  %63 = load i32, i32* %size88, align 8
  %add89 = add nsw i32 %63, 1
  %conv90 = sext i32 %add89 to i64
  %call91 = call noalias i8* @malloc(i64 noundef %conv90) #7
  store i8* %call91, i8** %resultStr, align 8
  %64 = load i8*, i8** %resultStr, align 8
  %65 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf92 = getelementptr inbounds %struct.VarString, %struct.VarString* %65, i32 0, i32 0
  %66 = load i8*, i8** %buf92, align 8
  %67 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size93 = getelementptr inbounds %struct.VarString, %struct.VarString* %67, i32 0, i32 1
  %68 = load i32, i32* %size93, align 8
  %conv94 = sext i32 %68 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %64, i8* align 1 %66, i64 %conv94, i1 false)
  %69 = load i8*, i8** %resultStr, align 8
  %70 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size95 = getelementptr inbounds %struct.VarString, %struct.VarString* %70, i32 0, i32 1
  %71 = load i32, i32* %size95, align 8
  %idxprom = sext i32 %71 to i64
  %arrayidx = getelementptr inbounds i8, i8* %69, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %do.end96

do.end96:                                         ; preds = %do.body87
  br label %do.body97

do.body97:                                        ; preds = %do.end96
  %72 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf98 = getelementptr inbounds %struct.VarString, %struct.VarString* %72, i32 0, i32 0
  %73 = load i8*, i8** %buf98, align 8
  call void @free(i8* noundef %73) #7
  %74 = load %struct.VarString*, %struct.VarString** %result, align 8
  %75 = bitcast %struct.VarString* %74 to i8*
  call void @free(i8* noundef %75) #7
  br label %do.end99

do.end99:                                         ; preds = %do.body97
  %76 = load i8*, i8** %resultStr, align 8
  br label %do.end100

do.end100:                                        ; preds = %do.end99
  ret i8* %76
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @serializeSchema(%struct.Schema* noundef %schema) #0 {
entry:
  %schema.addr = alloca %struct.Schema*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct.VarString*, align 8
  %tmp = alloca i8*, align 8
  %newbufsize = alloca i32, align 4
  %tmp39 = alloca i8*, align 8
  %newbufsize55 = alloca i32, align 4
  %newbufsize98 = alloca i32, align 4
  %newbufsize136 = alloca i32, align 4
  %tmp165 = alloca i8*, align 8
  %newbufsize181 = alloca i32, align 4
  %newbufsize223 = alloca i32, align 4
  %newbufsize260 = alloca i32, align 4
  %newbufsize297 = alloca i32, align 4
  %tmp329 = alloca i8*, align 8
  %newbufsize351 = alloca i32, align 4
  %newbufsize395 = alloca i32, align 4
  %resultStr = alloca i8*, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.VarString*
  store %struct.VarString* %0, %struct.VarString** %result, align 8
  %1 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size = getelementptr inbounds %struct.VarString, %struct.VarString* %1, i32 0, i32 1
  store i32 0, i32* %size, align 8
  %2 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize = getelementptr inbounds %struct.VarString, %struct.VarString* %2, i32 0, i32 2
  store i32 100, i32* %bufsize, align 4
  %call1 = call noalias i8* @calloc(i64 noundef 100, i64 noundef 1) #7
  %3 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf = getelementptr inbounds %struct.VarString, %struct.VarString* %3, i32 0, i32 0
  store i8* %call1, i8** %buf, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %call3 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call3, i8** %tmp, align 8
  %4 = load i8*, i8** %tmp, align 8
  %5 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %5, i32 0, i32 0
  %6 = load i32, i32* %numAttr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %4, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0), i32 noundef %6) #7
  br label %do.body5

do.body5:                                         ; preds = %do.body2
  br label %do.body6

do.body6:                                         ; preds = %do.body5
  %7 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize7 = getelementptr inbounds %struct.VarString, %struct.VarString* %7, i32 0, i32 2
  %8 = load i32, i32* %bufsize7, align 4
  %conv = sext i32 %8 to i64
  %9 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size8 = getelementptr inbounds %struct.VarString, %struct.VarString* %9, i32 0, i32 1
  %10 = load i32, i32* %size8, align 8
  %conv9 = sext i32 %10 to i64
  %11 = load i8*, i8** %tmp, align 8
  %call10 = call i64 @strlen(i8* noundef %11) #8
  %add = add i64 %conv9, %call10
  %cmp = icmp ult i64 %conv, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body6
  %12 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize12 = getelementptr inbounds %struct.VarString, %struct.VarString* %12, i32 0, i32 2
  %13 = load i32, i32* %bufsize12, align 4
  store i32 %13, i32* %newbufsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %14 = load i32, i32* %newbufsize, align 4
  %mul = mul nsw i32 %14, 2
  store i32 %mul, i32* %newbufsize, align 4
  %conv13 = sext i32 %mul to i64
  %15 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size14 = getelementptr inbounds %struct.VarString, %struct.VarString* %15, i32 0, i32 1
  %16 = load i32, i32* %size14, align 8
  %conv15 = sext i32 %16 to i64
  %17 = load i8*, i8** %tmp, align 8
  %call16 = call i64 @strlen(i8* noundef %17) #8
  %add17 = add i64 %conv15, %call16
  %cmp18 = icmp ult i64 %conv13, %add17
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %while.cond
  %18 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf20 = getelementptr inbounds %struct.VarString, %struct.VarString* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf20, align 8
  %20 = load i32, i32* %newbufsize, align 4
  %conv21 = sext i32 %20 to i64
  %call22 = call i8* @realloc(i8* noundef %19, i64 noundef %conv21) #7
  %21 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf23 = getelementptr inbounds %struct.VarString, %struct.VarString* %21, i32 0, i32 0
  store i8* %call22, i8** %buf23, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %do.body6
  br label %do.end24

do.end24:                                         ; preds = %if.end
  %22 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf25 = getelementptr inbounds %struct.VarString, %struct.VarString* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf25, align 8
  %24 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size26 = getelementptr inbounds %struct.VarString, %struct.VarString* %24, i32 0, i32 1
  %25 = load i32, i32* %size26, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %26 = load i8*, i8** %tmp, align 8
  %27 = load i8*, i8** %tmp, align 8
  %call27 = call i64 @strlen(i8* noundef %27) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %26, i64 %call27, i1 false)
  %28 = load i8*, i8** %tmp, align 8
  %call28 = call i64 @strlen(i8* noundef %28) #8
  %29 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size29 = getelementptr inbounds %struct.VarString, %struct.VarString* %29, i32 0, i32 1
  %30 = load i32, i32* %size29, align 8
  %conv30 = sext i32 %30 to i64
  %add31 = add i64 %conv30, %call28
  %conv32 = trunc i64 %add31 to i32
  store i32 %conv32, i32* %size29, align 8
  br label %do.end33

do.end33:                                         ; preds = %do.end24
  %31 = load i8*, i8** %tmp, align 8
  call void @free(i8* noundef %31) #7
  br label %do.end34

do.end34:                                         ; preds = %do.end33
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end34
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr35 = getelementptr inbounds %struct.Schema, %struct.Schema* %33, i32 0, i32 0
  %34 = load i32, i32* %numAttr35, align 8
  %cmp36 = icmp slt i32 %32, %34
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body38

do.body38:                                        ; preds = %for.body
  %call40 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call40, i8** %tmp39, align 8
  %35 = load i8*, i8** %tmp39, align 8
  %36 = load i32, i32* %i, align 4
  %cmp41 = icmp ne i32 %36, 0
  %37 = zext i1 %cmp41 to i64
  %cond = select i1 %cmp41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %38 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames = getelementptr inbounds %struct.Schema, %struct.Schema* %38, i32 0, i32 1
  %39 = load i8**, i8*** %attrNames, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %39, i64 %idxprom
  %41 = load i8*, i8** %arrayidx, align 8
  %call43 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %35, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef %cond, i8* noundef %41) #7
  br label %do.body44

do.body44:                                        ; preds = %do.body38
  br label %do.body45

do.body45:                                        ; preds = %do.body44
  %42 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize46 = getelementptr inbounds %struct.VarString, %struct.VarString* %42, i32 0, i32 2
  %43 = load i32, i32* %bufsize46, align 4
  %conv47 = sext i32 %43 to i64
  %44 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size48 = getelementptr inbounds %struct.VarString, %struct.VarString* %44, i32 0, i32 1
  %45 = load i32, i32* %size48, align 8
  %conv49 = sext i32 %45 to i64
  %46 = load i8*, i8** %tmp39, align 8
  %call50 = call i64 @strlen(i8* noundef %46) #8
  %add51 = add i64 %conv49, %call50
  %cmp52 = icmp ult i64 %conv47, %add51
  br i1 %cmp52, label %if.then54, label %if.end72

if.then54:                                        ; preds = %do.body45
  %47 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize56 = getelementptr inbounds %struct.VarString, %struct.VarString* %47, i32 0, i32 2
  %48 = load i32, i32* %bufsize56, align 4
  store i32 %48, i32* %newbufsize55, align 4
  br label %while.cond57

while.cond57:                                     ; preds = %while.body66, %if.then54
  %49 = load i32, i32* %newbufsize55, align 4
  %mul58 = mul nsw i32 %49, 2
  store i32 %mul58, i32* %newbufsize55, align 4
  %conv59 = sext i32 %mul58 to i64
  %50 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size60 = getelementptr inbounds %struct.VarString, %struct.VarString* %50, i32 0, i32 1
  %51 = load i32, i32* %size60, align 8
  %conv61 = sext i32 %51 to i64
  %52 = load i8*, i8** %tmp39, align 8
  %call62 = call i64 @strlen(i8* noundef %52) #8
  %add63 = add i64 %conv61, %call62
  %cmp64 = icmp ult i64 %conv59, %add63
  br i1 %cmp64, label %while.body66, label %while.end67

while.body66:                                     ; preds = %while.cond57
  br label %while.cond57, !llvm.loop !46

while.end67:                                      ; preds = %while.cond57
  %53 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf68 = getelementptr inbounds %struct.VarString, %struct.VarString* %53, i32 0, i32 0
  %54 = load i8*, i8** %buf68, align 8
  %55 = load i32, i32* %newbufsize55, align 4
  %conv69 = sext i32 %55 to i64
  %call70 = call i8* @realloc(i8* noundef %54, i64 noundef %conv69) #7
  %56 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf71 = getelementptr inbounds %struct.VarString, %struct.VarString* %56, i32 0, i32 0
  store i8* %call70, i8** %buf71, align 8
  br label %if.end72

if.end72:                                         ; preds = %while.end67, %do.body45
  br label %do.end73

do.end73:                                         ; preds = %if.end72
  %57 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf74 = getelementptr inbounds %struct.VarString, %struct.VarString* %57, i32 0, i32 0
  %58 = load i8*, i8** %buf74, align 8
  %59 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size75 = getelementptr inbounds %struct.VarString, %struct.VarString* %59, i32 0, i32 1
  %60 = load i32, i32* %size75, align 8
  %idx.ext76 = sext i32 %60 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %58, i64 %idx.ext76
  %61 = load i8*, i8** %tmp39, align 8
  %62 = load i8*, i8** %tmp39, align 8
  %call78 = call i64 @strlen(i8* noundef %62) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr77, i8* align 1 %61, i64 %call78, i1 false)
  %63 = load i8*, i8** %tmp39, align 8
  %call79 = call i64 @strlen(i8* noundef %63) #8
  %64 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size80 = getelementptr inbounds %struct.VarString, %struct.VarString* %64, i32 0, i32 1
  %65 = load i32, i32* %size80, align 8
  %conv81 = sext i32 %65 to i64
  %add82 = add i64 %conv81, %call79
  %conv83 = trunc i64 %add82 to i32
  store i32 %conv83, i32* %size80, align 8
  br label %do.end84

do.end84:                                         ; preds = %do.end73
  %66 = load i8*, i8** %tmp39, align 8
  call void @free(i8* noundef %66) #7
  br label %do.end85

do.end85:                                         ; preds = %do.end84
  %67 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %67, i32 0, i32 2
  %68 = load i32*, i32** %dataTypes, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %69 to i64
  %arrayidx87 = getelementptr inbounds i32, i32* %68, i64 %idxprom86
  %70 = load i32, i32* %arrayidx87, align 4
  switch i32 %70, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb125
    i32 1, label %sw.bb163
    i32 3, label %sw.bb212
  ]

sw.bb:                                            ; preds = %do.end85
  br label %do.body88

do.body88:                                        ; preds = %sw.bb
  br label %do.body89

do.body89:                                        ; preds = %do.body88
  %71 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize90 = getelementptr inbounds %struct.VarString, %struct.VarString* %71, i32 0, i32 2
  %72 = load i32, i32* %bufsize90, align 4
  %conv91 = sext i32 %72 to i64
  %73 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size92 = getelementptr inbounds %struct.VarString, %struct.VarString* %73, i32 0, i32 1
  %74 = load i32, i32* %size92, align 8
  %conv93 = sext i32 %74 to i64
  %add94 = add i64 %conv93, 3
  %cmp95 = icmp ult i64 %conv91, %add94
  br i1 %cmp95, label %if.then97, label %if.end114

if.then97:                                        ; preds = %do.body89
  %75 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize99 = getelementptr inbounds %struct.VarString, %struct.VarString* %75, i32 0, i32 2
  %76 = load i32, i32* %bufsize99, align 4
  store i32 %76, i32* %newbufsize98, align 4
  br label %while.cond100

while.cond100:                                    ; preds = %while.body108, %if.then97
  %77 = load i32, i32* %newbufsize98, align 4
  %mul101 = mul nsw i32 %77, 2
  store i32 %mul101, i32* %newbufsize98, align 4
  %conv102 = sext i32 %mul101 to i64
  %78 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size103 = getelementptr inbounds %struct.VarString, %struct.VarString* %78, i32 0, i32 1
  %79 = load i32, i32* %size103, align 8
  %conv104 = sext i32 %79 to i64
  %add105 = add i64 %conv104, 3
  %cmp106 = icmp ult i64 %conv102, %add105
  br i1 %cmp106, label %while.body108, label %while.end109

while.body108:                                    ; preds = %while.cond100
  br label %while.cond100, !llvm.loop !47

while.end109:                                     ; preds = %while.cond100
  %80 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf110 = getelementptr inbounds %struct.VarString, %struct.VarString* %80, i32 0, i32 0
  %81 = load i8*, i8** %buf110, align 8
  %82 = load i32, i32* %newbufsize98, align 4
  %conv111 = sext i32 %82 to i64
  %call112 = call i8* @realloc(i8* noundef %81, i64 noundef %conv111) #7
  %83 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf113 = getelementptr inbounds %struct.VarString, %struct.VarString* %83, i32 0, i32 0
  store i8* %call112, i8** %buf113, align 8
  br label %if.end114

if.end114:                                        ; preds = %while.end109, %do.body89
  br label %do.end115

do.end115:                                        ; preds = %if.end114
  %84 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf116 = getelementptr inbounds %struct.VarString, %struct.VarString* %84, i32 0, i32 0
  %85 = load i8*, i8** %buf116, align 8
  %86 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size117 = getelementptr inbounds %struct.VarString, %struct.VarString* %86, i32 0, i32 1
  %87 = load i32, i32* %size117, align 8
  %idx.ext118 = sext i32 %87 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %85, i64 %idx.ext118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr119, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3, i1 false)
  %88 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size120 = getelementptr inbounds %struct.VarString, %struct.VarString* %88, i32 0, i32 1
  %89 = load i32, i32* %size120, align 8
  %conv121 = sext i32 %89 to i64
  %add122 = add i64 %conv121, 3
  %conv123 = trunc i64 %add122 to i32
  store i32 %conv123, i32* %size120, align 8
  br label %do.end124

do.end124:                                        ; preds = %do.end115
  br label %sw.epilog

sw.bb125:                                         ; preds = %do.end85
  br label %do.body126

do.body126:                                       ; preds = %sw.bb125
  br label %do.body127

do.body127:                                       ; preds = %do.body126
  %90 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize128 = getelementptr inbounds %struct.VarString, %struct.VarString* %90, i32 0, i32 2
  %91 = load i32, i32* %bufsize128, align 4
  %conv129 = sext i32 %91 to i64
  %92 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size130 = getelementptr inbounds %struct.VarString, %struct.VarString* %92, i32 0, i32 1
  %93 = load i32, i32* %size130, align 8
  %conv131 = sext i32 %93 to i64
  %add132 = add i64 %conv131, 5
  %cmp133 = icmp ult i64 %conv129, %add132
  br i1 %cmp133, label %if.then135, label %if.end152

if.then135:                                       ; preds = %do.body127
  %94 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize137 = getelementptr inbounds %struct.VarString, %struct.VarString* %94, i32 0, i32 2
  %95 = load i32, i32* %bufsize137, align 4
  store i32 %95, i32* %newbufsize136, align 4
  br label %while.cond138

while.cond138:                                    ; preds = %while.body146, %if.then135
  %96 = load i32, i32* %newbufsize136, align 4
  %mul139 = mul nsw i32 %96, 2
  store i32 %mul139, i32* %newbufsize136, align 4
  %conv140 = sext i32 %mul139 to i64
  %97 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size141 = getelementptr inbounds %struct.VarString, %struct.VarString* %97, i32 0, i32 1
  %98 = load i32, i32* %size141, align 8
  %conv142 = sext i32 %98 to i64
  %add143 = add i64 %conv142, 5
  %cmp144 = icmp ult i64 %conv140, %add143
  br i1 %cmp144, label %while.body146, label %while.end147

while.body146:                                    ; preds = %while.cond138
  br label %while.cond138, !llvm.loop !48

while.end147:                                     ; preds = %while.cond138
  %99 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf148 = getelementptr inbounds %struct.VarString, %struct.VarString* %99, i32 0, i32 0
  %100 = load i8*, i8** %buf148, align 8
  %101 = load i32, i32* %newbufsize136, align 4
  %conv149 = sext i32 %101 to i64
  %call150 = call i8* @realloc(i8* noundef %100, i64 noundef %conv149) #7
  %102 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf151 = getelementptr inbounds %struct.VarString, %struct.VarString* %102, i32 0, i32 0
  store i8* %call150, i8** %buf151, align 8
  br label %if.end152

if.end152:                                        ; preds = %while.end147, %do.body127
  br label %do.end153

do.end153:                                        ; preds = %if.end152
  %103 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf154 = getelementptr inbounds %struct.VarString, %struct.VarString* %103, i32 0, i32 0
  %104 = load i8*, i8** %buf154, align 8
  %105 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size155 = getelementptr inbounds %struct.VarString, %struct.VarString* %105, i32 0, i32 1
  %106 = load i32, i32* %size155, align 8
  %idx.ext156 = sext i32 %106 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %104, i64 %idx.ext156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr157, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i64 5, i1 false)
  %107 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size158 = getelementptr inbounds %struct.VarString, %struct.VarString* %107, i32 0, i32 1
  %108 = load i32, i32* %size158, align 8
  %conv159 = sext i32 %108 to i64
  %add160 = add i64 %conv159, 5
  %conv161 = trunc i64 %add160 to i32
  store i32 %conv161, i32* %size158, align 8
  br label %do.end162

do.end162:                                        ; preds = %do.end153
  br label %sw.epilog

sw.bb163:                                         ; preds = %do.end85
  br label %do.body164

do.body164:                                       ; preds = %sw.bb163
  %call166 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call166, i8** %tmp165, align 8
  %109 = load i8*, i8** %tmp165, align 8
  %110 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %110, i32 0, i32 3
  %111 = load i32*, i32** %typeLength, align 8
  %112 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %112 to i64
  %arrayidx168 = getelementptr inbounds i32, i32* %111, i64 %idxprom167
  %113 = load i32, i32* %arrayidx168, align 4
  %call169 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %109, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 noundef %113) #7
  br label %do.body170

do.body170:                                       ; preds = %do.body164
  br label %do.body171

do.body171:                                       ; preds = %do.body170
  %114 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize172 = getelementptr inbounds %struct.VarString, %struct.VarString* %114, i32 0, i32 2
  %115 = load i32, i32* %bufsize172, align 4
  %conv173 = sext i32 %115 to i64
  %116 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size174 = getelementptr inbounds %struct.VarString, %struct.VarString* %116, i32 0, i32 1
  %117 = load i32, i32* %size174, align 8
  %conv175 = sext i32 %117 to i64
  %118 = load i8*, i8** %tmp165, align 8
  %call176 = call i64 @strlen(i8* noundef %118) #8
  %add177 = add i64 %conv175, %call176
  %cmp178 = icmp ult i64 %conv173, %add177
  br i1 %cmp178, label %if.then180, label %if.end198

if.then180:                                       ; preds = %do.body171
  %119 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize182 = getelementptr inbounds %struct.VarString, %struct.VarString* %119, i32 0, i32 2
  %120 = load i32, i32* %bufsize182, align 4
  store i32 %120, i32* %newbufsize181, align 4
  br label %while.cond183

while.cond183:                                    ; preds = %while.body192, %if.then180
  %121 = load i32, i32* %newbufsize181, align 4
  %mul184 = mul nsw i32 %121, 2
  store i32 %mul184, i32* %newbufsize181, align 4
  %conv185 = sext i32 %mul184 to i64
  %122 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size186 = getelementptr inbounds %struct.VarString, %struct.VarString* %122, i32 0, i32 1
  %123 = load i32, i32* %size186, align 8
  %conv187 = sext i32 %123 to i64
  %124 = load i8*, i8** %tmp165, align 8
  %call188 = call i64 @strlen(i8* noundef %124) #8
  %add189 = add i64 %conv187, %call188
  %cmp190 = icmp ult i64 %conv185, %add189
  br i1 %cmp190, label %while.body192, label %while.end193

while.body192:                                    ; preds = %while.cond183
  br label %while.cond183, !llvm.loop !49

while.end193:                                     ; preds = %while.cond183
  %125 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf194 = getelementptr inbounds %struct.VarString, %struct.VarString* %125, i32 0, i32 0
  %126 = load i8*, i8** %buf194, align 8
  %127 = load i32, i32* %newbufsize181, align 4
  %conv195 = sext i32 %127 to i64
  %call196 = call i8* @realloc(i8* noundef %126, i64 noundef %conv195) #7
  %128 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf197 = getelementptr inbounds %struct.VarString, %struct.VarString* %128, i32 0, i32 0
  store i8* %call196, i8** %buf197, align 8
  br label %if.end198

if.end198:                                        ; preds = %while.end193, %do.body171
  br label %do.end199

do.end199:                                        ; preds = %if.end198
  %129 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf200 = getelementptr inbounds %struct.VarString, %struct.VarString* %129, i32 0, i32 0
  %130 = load i8*, i8** %buf200, align 8
  %131 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size201 = getelementptr inbounds %struct.VarString, %struct.VarString* %131, i32 0, i32 1
  %132 = load i32, i32* %size201, align 8
  %idx.ext202 = sext i32 %132 to i64
  %add.ptr203 = getelementptr inbounds i8, i8* %130, i64 %idx.ext202
  %133 = load i8*, i8** %tmp165, align 8
  %134 = load i8*, i8** %tmp165, align 8
  %call204 = call i64 @strlen(i8* noundef %134) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr203, i8* align 1 %133, i64 %call204, i1 false)
  %135 = load i8*, i8** %tmp165, align 8
  %call205 = call i64 @strlen(i8* noundef %135) #8
  %136 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size206 = getelementptr inbounds %struct.VarString, %struct.VarString* %136, i32 0, i32 1
  %137 = load i32, i32* %size206, align 8
  %conv207 = sext i32 %137 to i64
  %add208 = add i64 %conv207, %call205
  %conv209 = trunc i64 %add208 to i32
  store i32 %conv209, i32* %size206, align 8
  br label %do.end210

do.end210:                                        ; preds = %do.end199
  %138 = load i8*, i8** %tmp165, align 8
  call void @free(i8* noundef %138) #7
  br label %do.end211

do.end211:                                        ; preds = %do.end210
  br label %sw.epilog

sw.bb212:                                         ; preds = %do.end85
  br label %do.body213

do.body213:                                       ; preds = %sw.bb212
  br label %do.body214

do.body214:                                       ; preds = %do.body213
  %139 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize215 = getelementptr inbounds %struct.VarString, %struct.VarString* %139, i32 0, i32 2
  %140 = load i32, i32* %bufsize215, align 4
  %conv216 = sext i32 %140 to i64
  %141 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size217 = getelementptr inbounds %struct.VarString, %struct.VarString* %141, i32 0, i32 1
  %142 = load i32, i32* %size217, align 8
  %conv218 = sext i32 %142 to i64
  %add219 = add i64 %conv218, 4
  %cmp220 = icmp ult i64 %conv216, %add219
  br i1 %cmp220, label %if.then222, label %if.end239

if.then222:                                       ; preds = %do.body214
  %143 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize224 = getelementptr inbounds %struct.VarString, %struct.VarString* %143, i32 0, i32 2
  %144 = load i32, i32* %bufsize224, align 4
  store i32 %144, i32* %newbufsize223, align 4
  br label %while.cond225

while.cond225:                                    ; preds = %while.body233, %if.then222
  %145 = load i32, i32* %newbufsize223, align 4
  %mul226 = mul nsw i32 %145, 2
  store i32 %mul226, i32* %newbufsize223, align 4
  %conv227 = sext i32 %mul226 to i64
  %146 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size228 = getelementptr inbounds %struct.VarString, %struct.VarString* %146, i32 0, i32 1
  %147 = load i32, i32* %size228, align 8
  %conv229 = sext i32 %147 to i64
  %add230 = add i64 %conv229, 4
  %cmp231 = icmp ult i64 %conv227, %add230
  br i1 %cmp231, label %while.body233, label %while.end234

while.body233:                                    ; preds = %while.cond225
  br label %while.cond225, !llvm.loop !50

while.end234:                                     ; preds = %while.cond225
  %148 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf235 = getelementptr inbounds %struct.VarString, %struct.VarString* %148, i32 0, i32 0
  %149 = load i8*, i8** %buf235, align 8
  %150 = load i32, i32* %newbufsize223, align 4
  %conv236 = sext i32 %150 to i64
  %call237 = call i8* @realloc(i8* noundef %149, i64 noundef %conv236) #7
  %151 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf238 = getelementptr inbounds %struct.VarString, %struct.VarString* %151, i32 0, i32 0
  store i8* %call237, i8** %buf238, align 8
  br label %if.end239

if.end239:                                        ; preds = %while.end234, %do.body214
  br label %do.end240

do.end240:                                        ; preds = %if.end239
  %152 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf241 = getelementptr inbounds %struct.VarString, %struct.VarString* %152, i32 0, i32 0
  %153 = load i8*, i8** %buf241, align 8
  %154 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size242 = getelementptr inbounds %struct.VarString, %struct.VarString* %154, i32 0, i32 1
  %155 = load i32, i32* %size242, align 8
  %idx.ext243 = sext i32 %155 to i64
  %add.ptr244 = getelementptr inbounds i8, i8* %153, i64 %idx.ext243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr244, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i64 4, i1 false)
  %156 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size245 = getelementptr inbounds %struct.VarString, %struct.VarString* %156, i32 0, i32 1
  %157 = load i32, i32* %size245, align 8
  %conv246 = sext i32 %157 to i64
  %add247 = add i64 %conv246, 4
  %conv248 = trunc i64 %add247 to i32
  store i32 %conv248, i32* %size245, align 8
  br label %do.end249

do.end249:                                        ; preds = %do.end240
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end85, %do.end249, %do.end211, %do.end162, %do.end124
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %158 = load i32, i32* %i, align 4
  %inc = add nsw i32 %158, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  br label %do.body250

do.body250:                                       ; preds = %for.end
  br label %do.body251

do.body251:                                       ; preds = %do.body250
  %159 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize252 = getelementptr inbounds %struct.VarString, %struct.VarString* %159, i32 0, i32 2
  %160 = load i32, i32* %bufsize252, align 4
  %conv253 = sext i32 %160 to i64
  %161 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size254 = getelementptr inbounds %struct.VarString, %struct.VarString* %161, i32 0, i32 1
  %162 = load i32, i32* %size254, align 8
  %conv255 = sext i32 %162 to i64
  %add256 = add i64 %conv255, 1
  %cmp257 = icmp ult i64 %conv253, %add256
  br i1 %cmp257, label %if.then259, label %if.end276

if.then259:                                       ; preds = %do.body251
  %163 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize261 = getelementptr inbounds %struct.VarString, %struct.VarString* %163, i32 0, i32 2
  %164 = load i32, i32* %bufsize261, align 4
  store i32 %164, i32* %newbufsize260, align 4
  br label %while.cond262

while.cond262:                                    ; preds = %while.body270, %if.then259
  %165 = load i32, i32* %newbufsize260, align 4
  %mul263 = mul nsw i32 %165, 2
  store i32 %mul263, i32* %newbufsize260, align 4
  %conv264 = sext i32 %mul263 to i64
  %166 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size265 = getelementptr inbounds %struct.VarString, %struct.VarString* %166, i32 0, i32 1
  %167 = load i32, i32* %size265, align 8
  %conv266 = sext i32 %167 to i64
  %add267 = add i64 %conv266, 1
  %cmp268 = icmp ult i64 %conv264, %add267
  br i1 %cmp268, label %while.body270, label %while.end271

while.body270:                                    ; preds = %while.cond262
  br label %while.cond262, !llvm.loop !52

while.end271:                                     ; preds = %while.cond262
  %168 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf272 = getelementptr inbounds %struct.VarString, %struct.VarString* %168, i32 0, i32 0
  %169 = load i8*, i8** %buf272, align 8
  %170 = load i32, i32* %newbufsize260, align 4
  %conv273 = sext i32 %170 to i64
  %call274 = call i8* @realloc(i8* noundef %169, i64 noundef %conv273) #7
  %171 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf275 = getelementptr inbounds %struct.VarString, %struct.VarString* %171, i32 0, i32 0
  store i8* %call274, i8** %buf275, align 8
  br label %if.end276

if.end276:                                        ; preds = %while.end271, %do.body251
  br label %do.end277

do.end277:                                        ; preds = %if.end276
  %172 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf278 = getelementptr inbounds %struct.VarString, %struct.VarString* %172, i32 0, i32 0
  %173 = load i8*, i8** %buf278, align 8
  %174 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size279 = getelementptr inbounds %struct.VarString, %struct.VarString* %174, i32 0, i32 1
  %175 = load i32, i32* %size279, align 8
  %idx.ext280 = sext i32 %175 to i64
  %add.ptr281 = getelementptr inbounds i8, i8* %173, i64 %idx.ext280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr281, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1, i1 false)
  %176 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size282 = getelementptr inbounds %struct.VarString, %struct.VarString* %176, i32 0, i32 1
  %177 = load i32, i32* %size282, align 8
  %conv283 = sext i32 %177 to i64
  %add284 = add i64 %conv283, 1
  %conv285 = trunc i64 %add284 to i32
  store i32 %conv285, i32* %size282, align 8
  br label %do.end286

do.end286:                                        ; preds = %do.end277
  br label %do.body287

do.body287:                                       ; preds = %do.end286
  br label %do.body288

do.body288:                                       ; preds = %do.body287
  %178 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize289 = getelementptr inbounds %struct.VarString, %struct.VarString* %178, i32 0, i32 2
  %179 = load i32, i32* %bufsize289, align 4
  %conv290 = sext i32 %179 to i64
  %180 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size291 = getelementptr inbounds %struct.VarString, %struct.VarString* %180, i32 0, i32 1
  %181 = load i32, i32* %size291, align 8
  %conv292 = sext i32 %181 to i64
  %add293 = add i64 %conv292, 13
  %cmp294 = icmp ult i64 %conv290, %add293
  br i1 %cmp294, label %if.then296, label %if.end313

if.then296:                                       ; preds = %do.body288
  %182 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize298 = getelementptr inbounds %struct.VarString, %struct.VarString* %182, i32 0, i32 2
  %183 = load i32, i32* %bufsize298, align 4
  store i32 %183, i32* %newbufsize297, align 4
  br label %while.cond299

while.cond299:                                    ; preds = %while.body307, %if.then296
  %184 = load i32, i32* %newbufsize297, align 4
  %mul300 = mul nsw i32 %184, 2
  store i32 %mul300, i32* %newbufsize297, align 4
  %conv301 = sext i32 %mul300 to i64
  %185 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size302 = getelementptr inbounds %struct.VarString, %struct.VarString* %185, i32 0, i32 1
  %186 = load i32, i32* %size302, align 8
  %conv303 = sext i32 %186 to i64
  %add304 = add i64 %conv303, 13
  %cmp305 = icmp ult i64 %conv301, %add304
  br i1 %cmp305, label %while.body307, label %while.end308

while.body307:                                    ; preds = %while.cond299
  br label %while.cond299, !llvm.loop !53

while.end308:                                     ; preds = %while.cond299
  %187 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf309 = getelementptr inbounds %struct.VarString, %struct.VarString* %187, i32 0, i32 0
  %188 = load i8*, i8** %buf309, align 8
  %189 = load i32, i32* %newbufsize297, align 4
  %conv310 = sext i32 %189 to i64
  %call311 = call i8* @realloc(i8* noundef %188, i64 noundef %conv310) #7
  %190 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf312 = getelementptr inbounds %struct.VarString, %struct.VarString* %190, i32 0, i32 0
  store i8* %call311, i8** %buf312, align 8
  br label %if.end313

if.end313:                                        ; preds = %while.end308, %do.body288
  br label %do.end314

do.end314:                                        ; preds = %if.end313
  %191 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf315 = getelementptr inbounds %struct.VarString, %struct.VarString* %191, i32 0, i32 0
  %192 = load i8*, i8** %buf315, align 8
  %193 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size316 = getelementptr inbounds %struct.VarString, %struct.VarString* %193, i32 0, i32 1
  %194 = load i32, i32* %size316, align 8
  %idx.ext317 = sext i32 %194 to i64
  %add.ptr318 = getelementptr inbounds i8, i8* %192, i64 %idx.ext317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr318, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0), i64 13, i1 false)
  %195 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size319 = getelementptr inbounds %struct.VarString, %struct.VarString* %195, i32 0, i32 1
  %196 = load i32, i32* %size319, align 8
  %conv320 = sext i32 %196 to i64
  %add321 = add i64 %conv320, 13
  %conv322 = trunc i64 %add321 to i32
  store i32 %conv322, i32* %size319, align 8
  br label %do.end323

do.end323:                                        ; preds = %do.end314
  store i32 0, i32* %i, align 4
  br label %for.cond324

for.cond324:                                      ; preds = %for.inc382, %do.end323
  %197 = load i32, i32* %i, align 4
  %198 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keySize = getelementptr inbounds %struct.Schema, %struct.Schema* %198, i32 0, i32 5
  %199 = load i32, i32* %keySize, align 8
  %cmp325 = icmp slt i32 %197, %199
  br i1 %cmp325, label %for.body327, label %for.end384

for.body327:                                      ; preds = %for.cond324
  br label %do.body328

do.body328:                                       ; preds = %for.body327
  %call330 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call330, i8** %tmp329, align 8
  %200 = load i8*, i8** %tmp329, align 8
  %201 = load i32, i32* %i, align 4
  %cmp331 = icmp ne i32 %201, 0
  %202 = zext i1 %cmp331 to i64
  %cond333 = select i1 %cmp331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %203 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames334 = getelementptr inbounds %struct.Schema, %struct.Schema* %203, i32 0, i32 1
  %204 = load i8**, i8*** %attrNames334, align 8
  %205 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %keyAttrs = getelementptr inbounds %struct.Schema, %struct.Schema* %205, i32 0, i32 4
  %206 = load i32*, i32** %keyAttrs, align 8
  %207 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %207 to i64
  %arrayidx336 = getelementptr inbounds i32, i32* %206, i64 %idxprom335
  %208 = load i32, i32* %arrayidx336, align 4
  %idxprom337 = sext i32 %208 to i64
  %arrayidx338 = getelementptr inbounds i8*, i8** %204, i64 %idxprom337
  %209 = load i8*, i8** %arrayidx338, align 8
  %call339 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %200, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8* noundef %cond333, i8* noundef %209) #7
  br label %do.body340

do.body340:                                       ; preds = %do.body328
  br label %do.body341

do.body341:                                       ; preds = %do.body340
  %210 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize342 = getelementptr inbounds %struct.VarString, %struct.VarString* %210, i32 0, i32 2
  %211 = load i32, i32* %bufsize342, align 4
  %conv343 = sext i32 %211 to i64
  %212 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size344 = getelementptr inbounds %struct.VarString, %struct.VarString* %212, i32 0, i32 1
  %213 = load i32, i32* %size344, align 8
  %conv345 = sext i32 %213 to i64
  %214 = load i8*, i8** %tmp329, align 8
  %call346 = call i64 @strlen(i8* noundef %214) #8
  %add347 = add i64 %conv345, %call346
  %cmp348 = icmp ult i64 %conv343, %add347
  br i1 %cmp348, label %if.then350, label %if.end368

if.then350:                                       ; preds = %do.body341
  %215 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize352 = getelementptr inbounds %struct.VarString, %struct.VarString* %215, i32 0, i32 2
  %216 = load i32, i32* %bufsize352, align 4
  store i32 %216, i32* %newbufsize351, align 4
  br label %while.cond353

while.cond353:                                    ; preds = %while.body362, %if.then350
  %217 = load i32, i32* %newbufsize351, align 4
  %mul354 = mul nsw i32 %217, 2
  store i32 %mul354, i32* %newbufsize351, align 4
  %conv355 = sext i32 %mul354 to i64
  %218 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size356 = getelementptr inbounds %struct.VarString, %struct.VarString* %218, i32 0, i32 1
  %219 = load i32, i32* %size356, align 8
  %conv357 = sext i32 %219 to i64
  %220 = load i8*, i8** %tmp329, align 8
  %call358 = call i64 @strlen(i8* noundef %220) #8
  %add359 = add i64 %conv357, %call358
  %cmp360 = icmp ult i64 %conv355, %add359
  br i1 %cmp360, label %while.body362, label %while.end363

while.body362:                                    ; preds = %while.cond353
  br label %while.cond353, !llvm.loop !54

while.end363:                                     ; preds = %while.cond353
  %221 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf364 = getelementptr inbounds %struct.VarString, %struct.VarString* %221, i32 0, i32 0
  %222 = load i8*, i8** %buf364, align 8
  %223 = load i32, i32* %newbufsize351, align 4
  %conv365 = sext i32 %223 to i64
  %call366 = call i8* @realloc(i8* noundef %222, i64 noundef %conv365) #7
  %224 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf367 = getelementptr inbounds %struct.VarString, %struct.VarString* %224, i32 0, i32 0
  store i8* %call366, i8** %buf367, align 8
  br label %if.end368

if.end368:                                        ; preds = %while.end363, %do.body341
  br label %do.end369

do.end369:                                        ; preds = %if.end368
  %225 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf370 = getelementptr inbounds %struct.VarString, %struct.VarString* %225, i32 0, i32 0
  %226 = load i8*, i8** %buf370, align 8
  %227 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size371 = getelementptr inbounds %struct.VarString, %struct.VarString* %227, i32 0, i32 1
  %228 = load i32, i32* %size371, align 8
  %idx.ext372 = sext i32 %228 to i64
  %add.ptr373 = getelementptr inbounds i8, i8* %226, i64 %idx.ext372
  %229 = load i8*, i8** %tmp329, align 8
  %230 = load i8*, i8** %tmp329, align 8
  %call374 = call i64 @strlen(i8* noundef %230) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr373, i8* align 1 %229, i64 %call374, i1 false)
  %231 = load i8*, i8** %tmp329, align 8
  %call375 = call i64 @strlen(i8* noundef %231) #8
  %232 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size376 = getelementptr inbounds %struct.VarString, %struct.VarString* %232, i32 0, i32 1
  %233 = load i32, i32* %size376, align 8
  %conv377 = sext i32 %233 to i64
  %add378 = add i64 %conv377, %call375
  %conv379 = trunc i64 %add378 to i32
  store i32 %conv379, i32* %size376, align 8
  br label %do.end380

do.end380:                                        ; preds = %do.end369
  %234 = load i8*, i8** %tmp329, align 8
  call void @free(i8* noundef %234) #7
  br label %do.end381

do.end381:                                        ; preds = %do.end380
  br label %for.inc382

for.inc382:                                       ; preds = %do.end381
  %235 = load i32, i32* %i, align 4
  %inc383 = add nsw i32 %235, 1
  store i32 %inc383, i32* %i, align 4
  br label %for.cond324, !llvm.loop !55

for.end384:                                       ; preds = %for.cond324
  br label %do.body385

do.body385:                                       ; preds = %for.end384
  br label %do.body386

do.body386:                                       ; preds = %do.body385
  %236 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize387 = getelementptr inbounds %struct.VarString, %struct.VarString* %236, i32 0, i32 2
  %237 = load i32, i32* %bufsize387, align 4
  %conv388 = sext i32 %237 to i64
  %238 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size389 = getelementptr inbounds %struct.VarString, %struct.VarString* %238, i32 0, i32 1
  %239 = load i32, i32* %size389, align 8
  %conv390 = sext i32 %239 to i64
  %add391 = add i64 %conv390, 2
  %cmp392 = icmp ult i64 %conv388, %add391
  br i1 %cmp392, label %if.then394, label %if.end411

if.then394:                                       ; preds = %do.body386
  %240 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize396 = getelementptr inbounds %struct.VarString, %struct.VarString* %240, i32 0, i32 2
  %241 = load i32, i32* %bufsize396, align 4
  store i32 %241, i32* %newbufsize395, align 4
  br label %while.cond397

while.cond397:                                    ; preds = %while.body405, %if.then394
  %242 = load i32, i32* %newbufsize395, align 4
  %mul398 = mul nsw i32 %242, 2
  store i32 %mul398, i32* %newbufsize395, align 4
  %conv399 = sext i32 %mul398 to i64
  %243 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size400 = getelementptr inbounds %struct.VarString, %struct.VarString* %243, i32 0, i32 1
  %244 = load i32, i32* %size400, align 8
  %conv401 = sext i32 %244 to i64
  %add402 = add i64 %conv401, 2
  %cmp403 = icmp ult i64 %conv399, %add402
  br i1 %cmp403, label %while.body405, label %while.end406

while.body405:                                    ; preds = %while.cond397
  br label %while.cond397, !llvm.loop !56

while.end406:                                     ; preds = %while.cond397
  %245 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf407 = getelementptr inbounds %struct.VarString, %struct.VarString* %245, i32 0, i32 0
  %246 = load i8*, i8** %buf407, align 8
  %247 = load i32, i32* %newbufsize395, align 4
  %conv408 = sext i32 %247 to i64
  %call409 = call i8* @realloc(i8* noundef %246, i64 noundef %conv408) #7
  %248 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf410 = getelementptr inbounds %struct.VarString, %struct.VarString* %248, i32 0, i32 0
  store i8* %call409, i8** %buf410, align 8
  br label %if.end411

if.end411:                                        ; preds = %while.end406, %do.body386
  br label %do.end412

do.end412:                                        ; preds = %if.end411
  %249 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf413 = getelementptr inbounds %struct.VarString, %struct.VarString* %249, i32 0, i32 0
  %250 = load i8*, i8** %buf413, align 8
  %251 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size414 = getelementptr inbounds %struct.VarString, %struct.VarString* %251, i32 0, i32 1
  %252 = load i32, i32* %size414, align 8
  %idx.ext415 = sext i32 %252 to i64
  %add.ptr416 = getelementptr inbounds i8, i8* %250, i64 %idx.ext415
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr416, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i64 2, i1 false)
  %253 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size417 = getelementptr inbounds %struct.VarString, %struct.VarString* %253, i32 0, i32 1
  %254 = load i32, i32* %size417, align 8
  %conv418 = sext i32 %254 to i64
  %add419 = add i64 %conv418, 2
  %conv420 = trunc i64 %add419 to i32
  store i32 %conv420, i32* %size417, align 8
  br label %do.end421

do.end421:                                        ; preds = %do.end412
  br label %do.body422

do.body422:                                       ; preds = %do.end421
  br label %do.body423

do.body423:                                       ; preds = %do.body422
  %255 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size424 = getelementptr inbounds %struct.VarString, %struct.VarString* %255, i32 0, i32 1
  %256 = load i32, i32* %size424, align 8
  %add425 = add nsw i32 %256, 1
  %conv426 = sext i32 %add425 to i64
  %call427 = call noalias i8* @malloc(i64 noundef %conv426) #7
  store i8* %call427, i8** %resultStr, align 8
  %257 = load i8*, i8** %resultStr, align 8
  %258 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf428 = getelementptr inbounds %struct.VarString, %struct.VarString* %258, i32 0, i32 0
  %259 = load i8*, i8** %buf428, align 8
  %260 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size429 = getelementptr inbounds %struct.VarString, %struct.VarString* %260, i32 0, i32 1
  %261 = load i32, i32* %size429, align 8
  %conv430 = sext i32 %261 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %257, i8* align 1 %259, i64 %conv430, i1 false)
  %262 = load i8*, i8** %resultStr, align 8
  %263 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size431 = getelementptr inbounds %struct.VarString, %struct.VarString* %263, i32 0, i32 1
  %264 = load i32, i32* %size431, align 8
  %idxprom432 = sext i32 %264 to i64
  %arrayidx433 = getelementptr inbounds i8, i8* %262, i64 %idxprom432
  store i8 0, i8* %arrayidx433, align 1
  br label %do.end434

do.end434:                                        ; preds = %do.body423
  br label %do.body435

do.body435:                                       ; preds = %do.end434
  %265 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf436 = getelementptr inbounds %struct.VarString, %struct.VarString* %265, i32 0, i32 0
  %266 = load i8*, i8** %buf436, align 8
  call void @free(i8* noundef %266) #7
  %267 = load %struct.VarString*, %struct.VarString** %result, align 8
  %268 = bitcast %struct.VarString* %267 to i8*
  call void @free(i8* noundef %268) #7
  br label %do.end437

do.end437:                                        ; preds = %do.body435
  %269 = load i8*, i8** %resultStr, align 8
  br label %do.end438

do.end438:                                        ; preds = %do.end437
  ret i8* %269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @serializeTableContent(%struct.RM_TableData* noundef %rel) #0 {
entry:
  %rel.addr = alloca %struct.RM_TableData*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct.VarString*, align 8
  %sc = alloca %struct.RM_ScanHandle*, align 8
  %r = alloca %struct.Record*, align 8
  %tmp = alloca i8*, align 8
  %newbufsize = alloca i32, align 4
  %newbufsize59 = alloca i32, align 4
  %newbufsize107 = alloca i32, align 4
  %resultStr = alloca i8*, align 8
  store %struct.RM_TableData* %rel, %struct.RM_TableData** %rel.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.RM_ScanHandle*
  store %struct.RM_ScanHandle* %0, %struct.RM_ScanHandle** %sc, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 16) #7
  %1 = bitcast i8* %call1 to %struct.Record*
  store %struct.Record* %1, %struct.Record** %r, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 noundef 16) #7
  %2 = bitcast i8* %call2 to %struct.VarString*
  store %struct.VarString* %2, %struct.VarString** %result, align 8
  %3 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size = getelementptr inbounds %struct.VarString, %struct.VarString* %3, i32 0, i32 1
  store i32 0, i32* %size, align 8
  %4 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize = getelementptr inbounds %struct.VarString, %struct.VarString* %4, i32 0, i32 2
  store i32 100, i32* %bufsize, align 4
  %call3 = call noalias i8* @calloc(i64 noundef 100, i64 noundef 1) #7
  %5 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf = getelementptr inbounds %struct.VarString, %struct.VarString* %5, i32 0, i32 0
  store i8* %call3, i8** %buf, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %7, i32 0, i32 1
  %8 = load %struct.Schema*, %struct.Schema** %schema, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %8, i32 0, i32 0
  %9 = load i32, i32* %numAttr, align 8
  %cmp = icmp slt i32 %6, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body4

do.body4:                                         ; preds = %for.body
  %call5 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call5, i8** %tmp, align 8
  %10 = load i8*, i8** %tmp, align 8
  %11 = load i32, i32* %i, align 4
  %cmp6 = icmp ne i32 %11, 0
  %12 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %13 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema7 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %13, i32 0, i32 1
  %14 = load %struct.Schema*, %struct.Schema** %schema7, align 8
  %attrNames = getelementptr inbounds %struct.Schema, %struct.Schema* %14, i32 0, i32 1
  %15 = load i8**, i8*** %attrNames, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8* noundef %cond, i8* noundef %17) #7
  br label %do.body9

do.body9:                                         ; preds = %do.body4
  br label %do.body10

do.body10:                                        ; preds = %do.body9
  %18 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize11 = getelementptr inbounds %struct.VarString, %struct.VarString* %18, i32 0, i32 2
  %19 = load i32, i32* %bufsize11, align 4
  %conv = sext i32 %19 to i64
  %20 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size12 = getelementptr inbounds %struct.VarString, %struct.VarString* %20, i32 0, i32 1
  %21 = load i32, i32* %size12, align 8
  %conv13 = sext i32 %21 to i64
  %22 = load i8*, i8** %tmp, align 8
  %call14 = call i64 @strlen(i8* noundef %22) #8
  %add = add i64 %conv13, %call14
  %cmp15 = icmp ult i64 %conv, %add
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %do.body10
  %23 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize17 = getelementptr inbounds %struct.VarString, %struct.VarString* %23, i32 0, i32 2
  %24 = load i32, i32* %bufsize17, align 4
  store i32 %24, i32* %newbufsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %25 = load i32, i32* %newbufsize, align 4
  %mul = mul nsw i32 %25, 2
  store i32 %mul, i32* %newbufsize, align 4
  %conv18 = sext i32 %mul to i64
  %26 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size19 = getelementptr inbounds %struct.VarString, %struct.VarString* %26, i32 0, i32 1
  %27 = load i32, i32* %size19, align 8
  %conv20 = sext i32 %27 to i64
  %28 = load i8*, i8** %tmp, align 8
  %call21 = call i64 @strlen(i8* noundef %28) #8
  %add22 = add i64 %conv20, %call21
  %cmp23 = icmp ult i64 %conv18, %add22
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !57

while.end:                                        ; preds = %while.cond
  %29 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf25 = getelementptr inbounds %struct.VarString, %struct.VarString* %29, i32 0, i32 0
  %30 = load i8*, i8** %buf25, align 8
  %31 = load i32, i32* %newbufsize, align 4
  %conv26 = sext i32 %31 to i64
  %call27 = call i8* @realloc(i8* noundef %30, i64 noundef %conv26) #7
  %32 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf28 = getelementptr inbounds %struct.VarString, %struct.VarString* %32, i32 0, i32 0
  store i8* %call27, i8** %buf28, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %do.body10
  br label %do.end29

do.end29:                                         ; preds = %if.end
  %33 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf30 = getelementptr inbounds %struct.VarString, %struct.VarString* %33, i32 0, i32 0
  %34 = load i8*, i8** %buf30, align 8
  %35 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size31 = getelementptr inbounds %struct.VarString, %struct.VarString* %35, i32 0, i32 1
  %36 = load i32, i32* %size31, align 8
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  %37 = load i8*, i8** %tmp, align 8
  %38 = load i8*, i8** %tmp, align 8
  %call32 = call i64 @strlen(i8* noundef %38) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %37, i64 %call32, i1 false)
  %39 = load i8*, i8** %tmp, align 8
  %call33 = call i64 @strlen(i8* noundef %39) #8
  %40 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size34 = getelementptr inbounds %struct.VarString, %struct.VarString* %40, i32 0, i32 1
  %41 = load i32, i32* %size34, align 8
  %conv35 = sext i32 %41 to i64
  %add36 = add i64 %conv35, %call33
  %conv37 = trunc i64 %add36 to i32
  store i32 %conv37, i32* %size34, align 8
  br label %do.end38

do.end38:                                         ; preds = %do.end29
  %42 = load i8*, i8** %tmp, align 8
  call void @free(i8* noundef %42) #7
  br label %do.end39

do.end39:                                         ; preds = %do.end38
  br label %for.inc

for.inc:                                          ; preds = %do.end39
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  %44 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %45 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %sc, align 8
  %call40 = call i32 @startScan(%struct.RM_TableData* noundef %44, %struct.RM_ScanHandle* noundef %45, %struct.Expr* noundef null)
  br label %while.cond41

while.cond41:                                     ; preds = %do.end133, %for.end
  %46 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %sc, align 8
  %47 = load %struct.Record*, %struct.Record** %r, align 8
  %call42 = call i32 @next(%struct.RM_ScanHandle* noundef %46, %struct.Record* noundef %47)
  %cmp43 = icmp ne i32 %call42, 203
  br i1 %cmp43, label %while.body45, label %while.end134

while.body45:                                     ; preds = %while.cond41
  br label %do.body46

do.body46:                                        ; preds = %while.body45
  br label %do.body47

do.body47:                                        ; preds = %do.body46
  %48 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize48 = getelementptr inbounds %struct.VarString, %struct.VarString* %48, i32 0, i32 2
  %49 = load i32, i32* %bufsize48, align 4
  %conv49 = sext i32 %49 to i64
  %50 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size50 = getelementptr inbounds %struct.VarString, %struct.VarString* %50, i32 0, i32 1
  %51 = load i32, i32* %size50, align 8
  %conv51 = sext i32 %51 to i64
  %52 = load %struct.Record*, %struct.Record** %r, align 8
  %53 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema52 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %53, i32 0, i32 1
  %54 = load %struct.Schema*, %struct.Schema** %schema52, align 8
  %call53 = call i8* @serializeRecord(%struct.Record* noundef %52, %struct.Schema* noundef %54)
  %call54 = call i64 @strlen(i8* noundef %call53) #8
  %add55 = add i64 %conv51, %call54
  %cmp56 = icmp ult i64 %conv49, %add55
  br i1 %cmp56, label %if.then58, label %if.end78

if.then58:                                        ; preds = %do.body47
  %55 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize60 = getelementptr inbounds %struct.VarString, %struct.VarString* %55, i32 0, i32 2
  %56 = load i32, i32* %bufsize60, align 4
  store i32 %56, i32* %newbufsize59, align 4
  br label %while.cond61

while.cond61:                                     ; preds = %while.body72, %if.then58
  %57 = load i32, i32* %newbufsize59, align 4
  %mul62 = mul nsw i32 %57, 2
  store i32 %mul62, i32* %newbufsize59, align 4
  %conv63 = sext i32 %mul62 to i64
  %58 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size64 = getelementptr inbounds %struct.VarString, %struct.VarString* %58, i32 0, i32 1
  %59 = load i32, i32* %size64, align 8
  %conv65 = sext i32 %59 to i64
  %60 = load %struct.Record*, %struct.Record** %r, align 8
  %61 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema66 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %61, i32 0, i32 1
  %62 = load %struct.Schema*, %struct.Schema** %schema66, align 8
  %call67 = call i8* @serializeRecord(%struct.Record* noundef %60, %struct.Schema* noundef %62)
  %call68 = call i64 @strlen(i8* noundef %call67) #8
  %add69 = add i64 %conv65, %call68
  %cmp70 = icmp ult i64 %conv63, %add69
  br i1 %cmp70, label %while.body72, label %while.end73

while.body72:                                     ; preds = %while.cond61
  br label %while.cond61, !llvm.loop !59

while.end73:                                      ; preds = %while.cond61
  %63 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf74 = getelementptr inbounds %struct.VarString, %struct.VarString* %63, i32 0, i32 0
  %64 = load i8*, i8** %buf74, align 8
  %65 = load i32, i32* %newbufsize59, align 4
  %conv75 = sext i32 %65 to i64
  %call76 = call i8* @realloc(i8* noundef %64, i64 noundef %conv75) #7
  %66 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf77 = getelementptr inbounds %struct.VarString, %struct.VarString* %66, i32 0, i32 0
  store i8* %call76, i8** %buf77, align 8
  br label %if.end78

if.end78:                                         ; preds = %while.end73, %do.body47
  br label %do.end79

do.end79:                                         ; preds = %if.end78
  %67 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf80 = getelementptr inbounds %struct.VarString, %struct.VarString* %67, i32 0, i32 0
  %68 = load i8*, i8** %buf80, align 8
  %69 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size81 = getelementptr inbounds %struct.VarString, %struct.VarString* %69, i32 0, i32 1
  %70 = load i32, i32* %size81, align 8
  %idx.ext82 = sext i32 %70 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %68, i64 %idx.ext82
  %71 = load %struct.Record*, %struct.Record** %r, align 8
  %72 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema84 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %72, i32 0, i32 1
  %73 = load %struct.Schema*, %struct.Schema** %schema84, align 8
  %call85 = call i8* @serializeRecord(%struct.Record* noundef %71, %struct.Schema* noundef %73)
  %74 = load %struct.Record*, %struct.Record** %r, align 8
  %75 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema86 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %75, i32 0, i32 1
  %76 = load %struct.Schema*, %struct.Schema** %schema86, align 8
  %call87 = call i8* @serializeRecord(%struct.Record* noundef %74, %struct.Schema* noundef %76)
  %call88 = call i64 @strlen(i8* noundef %call87) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr83, i8* align 1 %call85, i64 %call88, i1 false)
  %77 = load %struct.Record*, %struct.Record** %r, align 8
  %78 = load %struct.RM_TableData*, %struct.RM_TableData** %rel.addr, align 8
  %schema89 = getelementptr inbounds %struct.RM_TableData, %struct.RM_TableData* %78, i32 0, i32 1
  %79 = load %struct.Schema*, %struct.Schema** %schema89, align 8
  %call90 = call i8* @serializeRecord(%struct.Record* noundef %77, %struct.Schema* noundef %79)
  %call91 = call i64 @strlen(i8* noundef %call90) #8
  %80 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size92 = getelementptr inbounds %struct.VarString, %struct.VarString* %80, i32 0, i32 1
  %81 = load i32, i32* %size92, align 8
  %conv93 = sext i32 %81 to i64
  %add94 = add i64 %conv93, %call91
  %conv95 = trunc i64 %add94 to i32
  store i32 %conv95, i32* %size92, align 8
  br label %do.end96

do.end96:                                         ; preds = %do.end79
  br label %do.body97

do.body97:                                        ; preds = %do.end96
  br label %do.body98

do.body98:                                        ; preds = %do.body97
  %82 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize99 = getelementptr inbounds %struct.VarString, %struct.VarString* %82, i32 0, i32 2
  %83 = load i32, i32* %bufsize99, align 4
  %conv100 = sext i32 %83 to i64
  %84 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size101 = getelementptr inbounds %struct.VarString, %struct.VarString* %84, i32 0, i32 1
  %85 = load i32, i32* %size101, align 8
  %conv102 = sext i32 %85 to i64
  %add103 = add i64 %conv102, 1
  %cmp104 = icmp ult i64 %conv100, %add103
  br i1 %cmp104, label %if.then106, label %if.end123

if.then106:                                       ; preds = %do.body98
  %86 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize108 = getelementptr inbounds %struct.VarString, %struct.VarString* %86, i32 0, i32 2
  %87 = load i32, i32* %bufsize108, align 4
  store i32 %87, i32* %newbufsize107, align 4
  br label %while.cond109

while.cond109:                                    ; preds = %while.body117, %if.then106
  %88 = load i32, i32* %newbufsize107, align 4
  %mul110 = mul nsw i32 %88, 2
  store i32 %mul110, i32* %newbufsize107, align 4
  %conv111 = sext i32 %mul110 to i64
  %89 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size112 = getelementptr inbounds %struct.VarString, %struct.VarString* %89, i32 0, i32 1
  %90 = load i32, i32* %size112, align 8
  %conv113 = sext i32 %90 to i64
  %add114 = add i64 %conv113, 1
  %cmp115 = icmp ult i64 %conv111, %add114
  br i1 %cmp115, label %while.body117, label %while.end118

while.body117:                                    ; preds = %while.cond109
  br label %while.cond109, !llvm.loop !60

while.end118:                                     ; preds = %while.cond109
  %91 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf119 = getelementptr inbounds %struct.VarString, %struct.VarString* %91, i32 0, i32 0
  %92 = load i8*, i8** %buf119, align 8
  %93 = load i32, i32* %newbufsize107, align 4
  %conv120 = sext i32 %93 to i64
  %call121 = call i8* @realloc(i8* noundef %92, i64 noundef %conv120) #7
  %94 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf122 = getelementptr inbounds %struct.VarString, %struct.VarString* %94, i32 0, i32 0
  store i8* %call121, i8** %buf122, align 8
  br label %if.end123

if.end123:                                        ; preds = %while.end118, %do.body98
  br label %do.end124

do.end124:                                        ; preds = %if.end123
  %95 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf125 = getelementptr inbounds %struct.VarString, %struct.VarString* %95, i32 0, i32 0
  %96 = load i8*, i8** %buf125, align 8
  %97 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size126 = getelementptr inbounds %struct.VarString, %struct.VarString* %97, i32 0, i32 1
  %98 = load i32, i32* %size126, align 8
  %idx.ext127 = sext i32 %98 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %96, i64 %idx.ext127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr128, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 1, i1 false)
  %99 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size129 = getelementptr inbounds %struct.VarString, %struct.VarString* %99, i32 0, i32 1
  %100 = load i32, i32* %size129, align 8
  %conv130 = sext i32 %100 to i64
  %add131 = add i64 %conv130, 1
  %conv132 = trunc i64 %add131 to i32
  store i32 %conv132, i32* %size129, align 8
  br label %do.end133

do.end133:                                        ; preds = %do.end124
  br label %while.cond41, !llvm.loop !61

while.end134:                                     ; preds = %while.cond41
  %101 = load %struct.RM_ScanHandle*, %struct.RM_ScanHandle** %sc, align 8
  %call135 = call i32 @closeScan(%struct.RM_ScanHandle* noundef %101)
  br label %do.body136

do.body136:                                       ; preds = %while.end134
  br label %do.body137

do.body137:                                       ; preds = %do.body136
  %102 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size138 = getelementptr inbounds %struct.VarString, %struct.VarString* %102, i32 0, i32 1
  %103 = load i32, i32* %size138, align 8
  %add139 = add nsw i32 %103, 1
  %conv140 = sext i32 %add139 to i64
  %call141 = call noalias i8* @malloc(i64 noundef %conv140) #7
  store i8* %call141, i8** %resultStr, align 8
  %104 = load i8*, i8** %resultStr, align 8
  %105 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf142 = getelementptr inbounds %struct.VarString, %struct.VarString* %105, i32 0, i32 0
  %106 = load i8*, i8** %buf142, align 8
  %107 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size143 = getelementptr inbounds %struct.VarString, %struct.VarString* %107, i32 0, i32 1
  %108 = load i32, i32* %size143, align 8
  %conv144 = sext i32 %108 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %104, i8* align 1 %106, i64 %conv144, i1 false)
  %109 = load i8*, i8** %resultStr, align 8
  %110 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size145 = getelementptr inbounds %struct.VarString, %struct.VarString* %110, i32 0, i32 1
  %111 = load i32, i32* %size145, align 8
  %idxprom146 = sext i32 %111 to i64
  %arrayidx147 = getelementptr inbounds i8, i8* %109, i64 %idxprom146
  store i8 0, i8* %arrayidx147, align 1
  br label %do.end148

do.end148:                                        ; preds = %do.body137
  br label %do.body149

do.body149:                                       ; preds = %do.end148
  %112 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf150 = getelementptr inbounds %struct.VarString, %struct.VarString* %112, i32 0, i32 0
  %113 = load i8*, i8** %buf150, align 8
  call void @free(i8* noundef %113) #7
  %114 = load %struct.VarString*, %struct.VarString** %result, align 8
  %115 = bitcast %struct.VarString* %114 to i8*
  call void @free(i8* noundef %115) #7
  br label %do.end151

do.end151:                                        ; preds = %do.body149
  %116 = load i8*, i8** %resultStr, align 8
  br label %do.end152

do.end152:                                        ; preds = %do.end151
  ret i8* %116
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @serializeRecord(%struct.Record* noundef %record, %struct.Schema* noundef %schema) #0 {
entry:
  %record.addr = alloca %struct.Record*, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %result = alloca %struct.VarString*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %newbufsize = alloca i32, align 4
  %newbufsize50 = alloca i32, align 4
  %tmp85 = alloca i8*, align 8
  %newbufsize101 = alloca i32, align 4
  %newbufsize142 = alloca i32, align 4
  %resultStr = alloca i8*, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.VarString*
  store %struct.VarString* %0, %struct.VarString** %result, align 8
  %1 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size = getelementptr inbounds %struct.VarString, %struct.VarString* %1, i32 0, i32 1
  store i32 0, i32* %size, align 8
  %2 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize = getelementptr inbounds %struct.VarString, %struct.VarString* %2, i32 0, i32 2
  store i32 100, i32* %bufsize, align 4
  %call1 = call noalias i8* @calloc(i64 noundef 100, i64 noundef 1) #7
  %3 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf = getelementptr inbounds %struct.VarString, %struct.VarString* %3, i32 0, i32 0
  store i8* %call1, i8** %buf, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %call3 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call3, i8** %tmp, align 8
  %4 = load i8*, i8** %tmp, align 8
  %5 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %id = getelementptr inbounds %struct.Record, %struct.Record* %5, i32 0, i32 0
  %page = getelementptr inbounds %struct.RID, %struct.RID* %id, i32 0, i32 0
  %6 = load i32, i32* %page, align 8
  %7 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %id4 = getelementptr inbounds %struct.Record, %struct.Record* %7, i32 0, i32 0
  %slot = getelementptr inbounds %struct.RID, %struct.RID* %id4, i32 0, i32 1
  %8 = load i32, i32* %slot, align 4
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32 noundef %6, i32 noundef %8) #7
  br label %do.body6

do.body6:                                         ; preds = %do.body2
  br label %do.body7

do.body7:                                         ; preds = %do.body6
  %9 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize8 = getelementptr inbounds %struct.VarString, %struct.VarString* %9, i32 0, i32 2
  %10 = load i32, i32* %bufsize8, align 4
  %conv = sext i32 %10 to i64
  %11 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size9 = getelementptr inbounds %struct.VarString, %struct.VarString* %11, i32 0, i32 1
  %12 = load i32, i32* %size9, align 8
  %conv10 = sext i32 %12 to i64
  %13 = load i8*, i8** %tmp, align 8
  %call11 = call i64 @strlen(i8* noundef %13) #8
  %add = add i64 %conv10, %call11
  %cmp = icmp ult i64 %conv, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body7
  %14 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize13 = getelementptr inbounds %struct.VarString, %struct.VarString* %14, i32 0, i32 2
  %15 = load i32, i32* %bufsize13, align 4
  store i32 %15, i32* %newbufsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %16 = load i32, i32* %newbufsize, align 4
  %mul = mul nsw i32 %16, 2
  store i32 %mul, i32* %newbufsize, align 4
  %conv14 = sext i32 %mul to i64
  %17 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size15 = getelementptr inbounds %struct.VarString, %struct.VarString* %17, i32 0, i32 1
  %18 = load i32, i32* %size15, align 8
  %conv16 = sext i32 %18 to i64
  %19 = load i8*, i8** %tmp, align 8
  %call17 = call i64 @strlen(i8* noundef %19) #8
  %add18 = add i64 %conv16, %call17
  %cmp19 = icmp ult i64 %conv14, %add18
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !62

while.end:                                        ; preds = %while.cond
  %20 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf21 = getelementptr inbounds %struct.VarString, %struct.VarString* %20, i32 0, i32 0
  %21 = load i8*, i8** %buf21, align 8
  %22 = load i32, i32* %newbufsize, align 4
  %conv22 = sext i32 %22 to i64
  %call23 = call i8* @realloc(i8* noundef %21, i64 noundef %conv22) #7
  %23 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf24 = getelementptr inbounds %struct.VarString, %struct.VarString* %23, i32 0, i32 0
  store i8* %call23, i8** %buf24, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %do.body7
  br label %do.end25

do.end25:                                         ; preds = %if.end
  %24 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf26 = getelementptr inbounds %struct.VarString, %struct.VarString* %24, i32 0, i32 0
  %25 = load i8*, i8** %buf26, align 8
  %26 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size27 = getelementptr inbounds %struct.VarString, %struct.VarString* %26, i32 0, i32 1
  %27 = load i32, i32* %size27, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %28 = load i8*, i8** %tmp, align 8
  %29 = load i8*, i8** %tmp, align 8
  %call28 = call i64 @strlen(i8* noundef %29) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %28, i64 %call28, i1 false)
  %30 = load i8*, i8** %tmp, align 8
  %call29 = call i64 @strlen(i8* noundef %30) #8
  %31 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size30 = getelementptr inbounds %struct.VarString, %struct.VarString* %31, i32 0, i32 1
  %32 = load i32, i32* %size30, align 8
  %conv31 = sext i32 %32 to i64
  %add32 = add i64 %conv31, %call29
  %conv33 = trunc i64 %add32 to i32
  store i32 %conv33, i32* %size30, align 8
  br label %do.end34

do.end34:                                         ; preds = %do.end25
  %33 = load i8*, i8** %tmp, align 8
  call void @free(i8* noundef %33) #7
  br label %do.end35

do.end35:                                         ; preds = %do.end34
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end35
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %numAttr = getelementptr inbounds %struct.Schema, %struct.Schema* %35, i32 0, i32 0
  %36 = load i32, i32* %numAttr, align 8
  %cmp36 = icmp slt i32 %34, %36
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body38

do.body38:                                        ; preds = %for.body
  br label %do.body39

do.body39:                                        ; preds = %do.body38
  %37 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize40 = getelementptr inbounds %struct.VarString, %struct.VarString* %37, i32 0, i32 2
  %38 = load i32, i32* %bufsize40, align 4
  %conv41 = sext i32 %38 to i64
  %39 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size42 = getelementptr inbounds %struct.VarString, %struct.VarString* %39, i32 0, i32 1
  %40 = load i32, i32* %size42, align 8
  %conv43 = sext i32 %40 to i64
  %41 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %42 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %43 = load i32, i32* %i, align 4
  %call44 = call i8* @serializeAttr(%struct.Record* noundef %41, %struct.Schema* noundef %42, i32 noundef %43)
  %call45 = call i64 @strlen(i8* noundef %call44) #8
  %add46 = add i64 %conv43, %call45
  %cmp47 = icmp ult i64 %conv41, %add46
  br i1 %cmp47, label %if.then49, label %if.end68

if.then49:                                        ; preds = %do.body39
  %44 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize51 = getelementptr inbounds %struct.VarString, %struct.VarString* %44, i32 0, i32 2
  %45 = load i32, i32* %bufsize51, align 4
  store i32 %45, i32* %newbufsize50, align 4
  br label %while.cond52

while.cond52:                                     ; preds = %while.body62, %if.then49
  %46 = load i32, i32* %newbufsize50, align 4
  %mul53 = mul nsw i32 %46, 2
  store i32 %mul53, i32* %newbufsize50, align 4
  %conv54 = sext i32 %mul53 to i64
  %47 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size55 = getelementptr inbounds %struct.VarString, %struct.VarString* %47, i32 0, i32 1
  %48 = load i32, i32* %size55, align 8
  %conv56 = sext i32 %48 to i64
  %49 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %50 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %51 = load i32, i32* %i, align 4
  %call57 = call i8* @serializeAttr(%struct.Record* noundef %49, %struct.Schema* noundef %50, i32 noundef %51)
  %call58 = call i64 @strlen(i8* noundef %call57) #8
  %add59 = add i64 %conv56, %call58
  %cmp60 = icmp ult i64 %conv54, %add59
  br i1 %cmp60, label %while.body62, label %while.end63

while.body62:                                     ; preds = %while.cond52
  br label %while.cond52, !llvm.loop !63

while.end63:                                      ; preds = %while.cond52
  %52 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf64 = getelementptr inbounds %struct.VarString, %struct.VarString* %52, i32 0, i32 0
  %53 = load i8*, i8** %buf64, align 8
  %54 = load i32, i32* %newbufsize50, align 4
  %conv65 = sext i32 %54 to i64
  %call66 = call i8* @realloc(i8* noundef %53, i64 noundef %conv65) #7
  %55 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf67 = getelementptr inbounds %struct.VarString, %struct.VarString* %55, i32 0, i32 0
  store i8* %call66, i8** %buf67, align 8
  br label %if.end68

if.end68:                                         ; preds = %while.end63, %do.body39
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  %56 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf70 = getelementptr inbounds %struct.VarString, %struct.VarString* %56, i32 0, i32 0
  %57 = load i8*, i8** %buf70, align 8
  %58 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size71 = getelementptr inbounds %struct.VarString, %struct.VarString* %58, i32 0, i32 1
  %59 = load i32, i32* %size71, align 8
  %idx.ext72 = sext i32 %59 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %57, i64 %idx.ext72
  %60 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %61 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %62 = load i32, i32* %i, align 4
  %call74 = call i8* @serializeAttr(%struct.Record* noundef %60, %struct.Schema* noundef %61, i32 noundef %62)
  %63 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %64 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %65 = load i32, i32* %i, align 4
  %call75 = call i8* @serializeAttr(%struct.Record* noundef %63, %struct.Schema* noundef %64, i32 noundef %65)
  %call76 = call i64 @strlen(i8* noundef %call75) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr73, i8* align 1 %call74, i64 %call76, i1 false)
  %66 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %67 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %68 = load i32, i32* %i, align 4
  %call77 = call i8* @serializeAttr(%struct.Record* noundef %66, %struct.Schema* noundef %67, i32 noundef %68)
  %call78 = call i64 @strlen(i8* noundef %call77) #8
  %69 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size79 = getelementptr inbounds %struct.VarString, %struct.VarString* %69, i32 0, i32 1
  %70 = load i32, i32* %size79, align 8
  %conv80 = sext i32 %70 to i64
  %add81 = add i64 %conv80, %call78
  %conv82 = trunc i64 %add81 to i32
  store i32 %conv82, i32* %size79, align 8
  br label %do.end83

do.end83:                                         ; preds = %do.end69
  br label %do.body84

do.body84:                                        ; preds = %do.end83
  %call86 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call86, i8** %tmp85, align 8
  %71 = load i8*, i8** %tmp85, align 8
  %72 = load i32, i32* %i, align 4
  %cmp87 = icmp eq i32 %72, 0
  %73 = zext i1 %cmp87 to i64
  %cond = select i1 %cmp87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)
  %call89 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %71, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* noundef %cond) #7
  br label %do.body90

do.body90:                                        ; preds = %do.body84
  br label %do.body91

do.body91:                                        ; preds = %do.body90
  %74 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize92 = getelementptr inbounds %struct.VarString, %struct.VarString* %74, i32 0, i32 2
  %75 = load i32, i32* %bufsize92, align 4
  %conv93 = sext i32 %75 to i64
  %76 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size94 = getelementptr inbounds %struct.VarString, %struct.VarString* %76, i32 0, i32 1
  %77 = load i32, i32* %size94, align 8
  %conv95 = sext i32 %77 to i64
  %78 = load i8*, i8** %tmp85, align 8
  %call96 = call i64 @strlen(i8* noundef %78) #8
  %add97 = add i64 %conv95, %call96
  %cmp98 = icmp ult i64 %conv93, %add97
  br i1 %cmp98, label %if.then100, label %if.end118

if.then100:                                       ; preds = %do.body91
  %79 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize102 = getelementptr inbounds %struct.VarString, %struct.VarString* %79, i32 0, i32 2
  %80 = load i32, i32* %bufsize102, align 4
  store i32 %80, i32* %newbufsize101, align 4
  br label %while.cond103

while.cond103:                                    ; preds = %while.body112, %if.then100
  %81 = load i32, i32* %newbufsize101, align 4
  %mul104 = mul nsw i32 %81, 2
  store i32 %mul104, i32* %newbufsize101, align 4
  %conv105 = sext i32 %mul104 to i64
  %82 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size106 = getelementptr inbounds %struct.VarString, %struct.VarString* %82, i32 0, i32 1
  %83 = load i32, i32* %size106, align 8
  %conv107 = sext i32 %83 to i64
  %84 = load i8*, i8** %tmp85, align 8
  %call108 = call i64 @strlen(i8* noundef %84) #8
  %add109 = add i64 %conv107, %call108
  %cmp110 = icmp ult i64 %conv105, %add109
  br i1 %cmp110, label %while.body112, label %while.end113

while.body112:                                    ; preds = %while.cond103
  br label %while.cond103, !llvm.loop !64

while.end113:                                     ; preds = %while.cond103
  %85 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf114 = getelementptr inbounds %struct.VarString, %struct.VarString* %85, i32 0, i32 0
  %86 = load i8*, i8** %buf114, align 8
  %87 = load i32, i32* %newbufsize101, align 4
  %conv115 = sext i32 %87 to i64
  %call116 = call i8* @realloc(i8* noundef %86, i64 noundef %conv115) #7
  %88 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf117 = getelementptr inbounds %struct.VarString, %struct.VarString* %88, i32 0, i32 0
  store i8* %call116, i8** %buf117, align 8
  br label %if.end118

if.end118:                                        ; preds = %while.end113, %do.body91
  br label %do.end119

do.end119:                                        ; preds = %if.end118
  %89 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf120 = getelementptr inbounds %struct.VarString, %struct.VarString* %89, i32 0, i32 0
  %90 = load i8*, i8** %buf120, align 8
  %91 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size121 = getelementptr inbounds %struct.VarString, %struct.VarString* %91, i32 0, i32 1
  %92 = load i32, i32* %size121, align 8
  %idx.ext122 = sext i32 %92 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %90, i64 %idx.ext122
  %93 = load i8*, i8** %tmp85, align 8
  %94 = load i8*, i8** %tmp85, align 8
  %call124 = call i64 @strlen(i8* noundef %94) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr123, i8* align 1 %93, i64 %call124, i1 false)
  %95 = load i8*, i8** %tmp85, align 8
  %call125 = call i64 @strlen(i8* noundef %95) #8
  %96 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size126 = getelementptr inbounds %struct.VarString, %struct.VarString* %96, i32 0, i32 1
  %97 = load i32, i32* %size126, align 8
  %conv127 = sext i32 %97 to i64
  %add128 = add i64 %conv127, %call125
  %conv129 = trunc i64 %add128 to i32
  store i32 %conv129, i32* %size126, align 8
  br label %do.end130

do.end130:                                        ; preds = %do.end119
  %98 = load i8*, i8** %tmp85, align 8
  call void @free(i8* noundef %98) #7
  br label %do.end131

do.end131:                                        ; preds = %do.end130
  br label %for.inc

for.inc:                                          ; preds = %do.end131
  %99 = load i32, i32* %i, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  br label %do.body132

do.body132:                                       ; preds = %for.end
  br label %do.body133

do.body133:                                       ; preds = %do.body132
  %100 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize134 = getelementptr inbounds %struct.VarString, %struct.VarString* %100, i32 0, i32 2
  %101 = load i32, i32* %bufsize134, align 4
  %conv135 = sext i32 %101 to i64
  %102 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size136 = getelementptr inbounds %struct.VarString, %struct.VarString* %102, i32 0, i32 1
  %103 = load i32, i32* %size136, align 8
  %conv137 = sext i32 %103 to i64
  %add138 = add i64 %conv137, 1
  %cmp139 = icmp ult i64 %conv135, %add138
  br i1 %cmp139, label %if.then141, label %if.end158

if.then141:                                       ; preds = %do.body133
  %104 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize143 = getelementptr inbounds %struct.VarString, %struct.VarString* %104, i32 0, i32 2
  %105 = load i32, i32* %bufsize143, align 4
  store i32 %105, i32* %newbufsize142, align 4
  br label %while.cond144

while.cond144:                                    ; preds = %while.body152, %if.then141
  %106 = load i32, i32* %newbufsize142, align 4
  %mul145 = mul nsw i32 %106, 2
  store i32 %mul145, i32* %newbufsize142, align 4
  %conv146 = sext i32 %mul145 to i64
  %107 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size147 = getelementptr inbounds %struct.VarString, %struct.VarString* %107, i32 0, i32 1
  %108 = load i32, i32* %size147, align 8
  %conv148 = sext i32 %108 to i64
  %add149 = add i64 %conv148, 1
  %cmp150 = icmp ult i64 %conv146, %add149
  br i1 %cmp150, label %while.body152, label %while.end153

while.body152:                                    ; preds = %while.cond144
  br label %while.cond144, !llvm.loop !66

while.end153:                                     ; preds = %while.cond144
  %109 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf154 = getelementptr inbounds %struct.VarString, %struct.VarString* %109, i32 0, i32 0
  %110 = load i8*, i8** %buf154, align 8
  %111 = load i32, i32* %newbufsize142, align 4
  %conv155 = sext i32 %111 to i64
  %call156 = call i8* @realloc(i8* noundef %110, i64 noundef %conv155) #7
  %112 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf157 = getelementptr inbounds %struct.VarString, %struct.VarString* %112, i32 0, i32 0
  store i8* %call156, i8** %buf157, align 8
  br label %if.end158

if.end158:                                        ; preds = %while.end153, %do.body133
  br label %do.end159

do.end159:                                        ; preds = %if.end158
  %113 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf160 = getelementptr inbounds %struct.VarString, %struct.VarString* %113, i32 0, i32 0
  %114 = load i8*, i8** %buf160, align 8
  %115 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size161 = getelementptr inbounds %struct.VarString, %struct.VarString* %115, i32 0, i32 1
  %116 = load i32, i32* %size161, align 8
  %idx.ext162 = sext i32 %116 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %114, i64 %idx.ext162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr163, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1, i1 false)
  %117 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size164 = getelementptr inbounds %struct.VarString, %struct.VarString* %117, i32 0, i32 1
  %118 = load i32, i32* %size164, align 8
  %conv165 = sext i32 %118 to i64
  %add166 = add i64 %conv165, 1
  %conv167 = trunc i64 %add166 to i32
  store i32 %conv167, i32* %size164, align 8
  br label %do.end168

do.end168:                                        ; preds = %do.end159
  br label %do.body169

do.body169:                                       ; preds = %do.end168
  br label %do.body170

do.body170:                                       ; preds = %do.body169
  %119 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size171 = getelementptr inbounds %struct.VarString, %struct.VarString* %119, i32 0, i32 1
  %120 = load i32, i32* %size171, align 8
  %add172 = add nsw i32 %120, 1
  %conv173 = sext i32 %add172 to i64
  %call174 = call noalias i8* @malloc(i64 noundef %conv173) #7
  store i8* %call174, i8** %resultStr, align 8
  %121 = load i8*, i8** %resultStr, align 8
  %122 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf175 = getelementptr inbounds %struct.VarString, %struct.VarString* %122, i32 0, i32 0
  %123 = load i8*, i8** %buf175, align 8
  %124 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size176 = getelementptr inbounds %struct.VarString, %struct.VarString* %124, i32 0, i32 1
  %125 = load i32, i32* %size176, align 8
  %conv177 = sext i32 %125 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %121, i8* align 1 %123, i64 %conv177, i1 false)
  %126 = load i8*, i8** %resultStr, align 8
  %127 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size178 = getelementptr inbounds %struct.VarString, %struct.VarString* %127, i32 0, i32 1
  %128 = load i32, i32* %size178, align 8
  %idxprom = sext i32 %128 to i64
  %arrayidx = getelementptr inbounds i8, i8* %126, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %do.end179

do.end179:                                        ; preds = %do.body170
  br label %do.body180

do.body180:                                       ; preds = %do.end179
  %129 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf181 = getelementptr inbounds %struct.VarString, %struct.VarString* %129, i32 0, i32 0
  %130 = load i8*, i8** %buf181, align 8
  call void @free(i8* noundef %130) #7
  %131 = load %struct.VarString*, %struct.VarString** %result, align 8
  %132 = bitcast %struct.VarString* %131 to i8*
  call void @free(i8* noundef %132) #7
  br label %do.end182

do.end182:                                        ; preds = %do.body180
  %133 = load i8*, i8** %resultStr, align 8
  br label %do.end183

do.end183:                                        ; preds = %do.end182
  ret i8* %133
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @serializeAttr(%struct.Record* noundef %record, %struct.Schema* noundef %schema, i32 noundef %attrNum) #0 {
entry:
  %retval = alloca i8*, align 8
  %record.addr = alloca %struct.Record*, align 8
  %schema.addr = alloca %struct.Schema*, align 8
  %attrNum.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %attrData = alloca i8*, align 8
  %result = alloca %struct.VarString*, align 8
  %val = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %newbufsize = alloca i32, align 4
  %buf41 = alloca i8*, align 8
  %len = alloca i32, align 4
  %tmp52 = alloca i8*, align 8
  %newbufsize69 = alloca i32, align 4
  %val101 = alloca float, align 4
  %tmp103 = alloca i8*, align 8
  %newbufsize121 = alloca i32, align 4
  %val153 = alloca i16, align 2
  %tmp155 = alloca i8*, align 8
  %newbufsize173 = alloca i32, align 4
  %resultStr = alloca i8*, align 8
  store %struct.Record* %record, %struct.Record** %record.addr, align 8
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  store i32 %attrNum, i32* %attrNum.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.VarString*
  store %struct.VarString* %0, %struct.VarString** %result, align 8
  %1 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size = getelementptr inbounds %struct.VarString, %struct.VarString* %1, i32 0, i32 1
  store i32 0, i32* %size, align 8
  %2 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize = getelementptr inbounds %struct.VarString, %struct.VarString* %2, i32 0, i32 2
  store i32 100, i32* %bufsize, align 4
  %call1 = call noalias i8* @calloc(i64 noundef 100, i64 noundef 1) #7
  %3 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf = getelementptr inbounds %struct.VarString, %struct.VarString* %3, i32 0, i32 0
  store i8* %call1, i8** %buf, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %5 = load i32, i32* %attrNum.addr, align 4
  %call2 = call i32 @attrOffset(%struct.Schema* noundef %4, i32 noundef %5, i32* noundef %offset)
  %6 = load %struct.Record*, %struct.Record** %record.addr, align 8
  %data = getelementptr inbounds %struct.Record, %struct.Record* %6, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8
  %8 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %attrData, align 8
  %9 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %9, i32 0, i32 2
  %10 = load i32*, i32** %dataTypes, align 8
  %11 = load i32, i32* %attrNum.addr, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb40
    i32 2, label %sw.bb100
    i32 3, label %sw.bb152
  ]

sw.bb:                                            ; preds = %do.end
  store i32 0, i32* %val, align 4
  %13 = bitcast i32* %val to i8*
  %14 = load i8*, i8** %attrData, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 1 %14, i64 4, i1 false)
  br label %do.body3

do.body3:                                         ; preds = %sw.bb
  %call4 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call4, i8** %tmp, align 8
  %15 = load i8*, i8** %tmp, align 8
  %16 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames = getelementptr inbounds %struct.Schema, %struct.Schema* %16, i32 0, i32 1
  %17 = load i8**, i8*** %attrNames, align 8
  %18 = load i32, i32* %attrNum.addr, align 4
  %idxprom5 = sext i32 %18 to i64
  %arrayidx6 = getelementptr inbounds i8*, i8** %17, i64 %idxprom5
  %19 = load i8*, i8** %arrayidx6, align 8
  %20 = load i32, i32* %val, align 4
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* noundef %19, i32 noundef %20) #7
  br label %do.body8

do.body8:                                         ; preds = %do.body3
  br label %do.body9

do.body9:                                         ; preds = %do.body8
  %21 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize10 = getelementptr inbounds %struct.VarString, %struct.VarString* %21, i32 0, i32 2
  %22 = load i32, i32* %bufsize10, align 4
  %conv = sext i32 %22 to i64
  %23 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size11 = getelementptr inbounds %struct.VarString, %struct.VarString* %23, i32 0, i32 1
  %24 = load i32, i32* %size11, align 8
  %conv12 = sext i32 %24 to i64
  %25 = load i8*, i8** %tmp, align 8
  %call13 = call i64 @strlen(i8* noundef %25) #8
  %add = add i64 %conv12, %call13
  %cmp = icmp ult i64 %conv, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body9
  %26 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize15 = getelementptr inbounds %struct.VarString, %struct.VarString* %26, i32 0, i32 2
  %27 = load i32, i32* %bufsize15, align 4
  store i32 %27, i32* %newbufsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %28 = load i32, i32* %newbufsize, align 4
  %mul = mul nsw i32 %28, 2
  store i32 %mul, i32* %newbufsize, align 4
  %conv16 = sext i32 %mul to i64
  %29 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size17 = getelementptr inbounds %struct.VarString, %struct.VarString* %29, i32 0, i32 1
  %30 = load i32, i32* %size17, align 8
  %conv18 = sext i32 %30 to i64
  %31 = load i8*, i8** %tmp, align 8
  %call19 = call i64 @strlen(i8* noundef %31) #8
  %add20 = add i64 %conv18, %call19
  %cmp21 = icmp ult i64 %conv16, %add20
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !67

while.end:                                        ; preds = %while.cond
  %32 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf23 = getelementptr inbounds %struct.VarString, %struct.VarString* %32, i32 0, i32 0
  %33 = load i8*, i8** %buf23, align 8
  %34 = load i32, i32* %newbufsize, align 4
  %conv24 = sext i32 %34 to i64
  %call25 = call i8* @realloc(i8* noundef %33, i64 noundef %conv24) #7
  %35 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf26 = getelementptr inbounds %struct.VarString, %struct.VarString* %35, i32 0, i32 0
  store i8* %call25, i8** %buf26, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %do.body9
  br label %do.end27

do.end27:                                         ; preds = %if.end
  %36 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf28 = getelementptr inbounds %struct.VarString, %struct.VarString* %36, i32 0, i32 0
  %37 = load i8*, i8** %buf28, align 8
  %38 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size29 = getelementptr inbounds %struct.VarString, %struct.VarString* %38, i32 0, i32 1
  %39 = load i32, i32* %size29, align 8
  %idx.ext30 = sext i32 %39 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %37, i64 %idx.ext30
  %40 = load i8*, i8** %tmp, align 8
  %41 = load i8*, i8** %tmp, align 8
  %call32 = call i64 @strlen(i8* noundef %41) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr31, i8* align 1 %40, i64 %call32, i1 false)
  %42 = load i8*, i8** %tmp, align 8
  %call33 = call i64 @strlen(i8* noundef %42) #8
  %43 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size34 = getelementptr inbounds %struct.VarString, %struct.VarString* %43, i32 0, i32 1
  %44 = load i32, i32* %size34, align 8
  %conv35 = sext i32 %44 to i64
  %add36 = add i64 %conv35, %call33
  %conv37 = trunc i64 %add36 to i32
  store i32 %conv37, i32* %size34, align 8
  br label %do.end38

do.end38:                                         ; preds = %do.end27
  %45 = load i8*, i8** %tmp, align 8
  call void @free(i8* noundef %45) #7
  br label %do.end39

do.end39:                                         ; preds = %do.end38
  br label %sw.epilog

sw.bb40:                                          ; preds = %do.end
  %46 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %46, i32 0, i32 3
  %47 = load i32*, i32** %typeLength, align 8
  %48 = load i32, i32* %attrNum.addr, align 4
  %idxprom42 = sext i32 %48 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %47, i64 %idxprom42
  %49 = load i32, i32* %arrayidx43, align 4
  store i32 %49, i32* %len, align 4
  %50 = load i32, i32* %len, align 4
  %add44 = add nsw i32 %50, 1
  %conv45 = sext i32 %add44 to i64
  %call46 = call noalias i8* @malloc(i64 noundef %conv45) #7
  store i8* %call46, i8** %buf41, align 8
  %51 = load i8*, i8** %buf41, align 8
  %52 = load i8*, i8** %attrData, align 8
  %53 = load i32, i32* %len, align 4
  %conv47 = sext i32 %53 to i64
  %call48 = call i8* @strncpy(i8* noundef %51, i8* noundef %52, i64 noundef %conv47) #7
  %54 = load i8*, i8** %buf41, align 8
  %55 = load i32, i32* %len, align 4
  %idxprom49 = sext i32 %55 to i64
  %arrayidx50 = getelementptr inbounds i8, i8* %54, i64 %idxprom49
  store i8 0, i8* %arrayidx50, align 1
  br label %do.body51

do.body51:                                        ; preds = %sw.bb40
  %call53 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call53, i8** %tmp52, align 8
  %56 = load i8*, i8** %tmp52, align 8
  %57 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames54 = getelementptr inbounds %struct.Schema, %struct.Schema* %57, i32 0, i32 1
  %58 = load i8**, i8*** %attrNames54, align 8
  %59 = load i32, i32* %attrNum.addr, align 4
  %idxprom55 = sext i32 %59 to i64
  %arrayidx56 = getelementptr inbounds i8*, i8** %58, i64 %idxprom55
  %60 = load i8*, i8** %arrayidx56, align 8
  %61 = load i8*, i8** %buf41, align 8
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %56, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* noundef %60, i8* noundef %61) #7
  br label %do.body58

do.body58:                                        ; preds = %do.body51
  br label %do.body59

do.body59:                                        ; preds = %do.body58
  %62 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize60 = getelementptr inbounds %struct.VarString, %struct.VarString* %62, i32 0, i32 2
  %63 = load i32, i32* %bufsize60, align 4
  %conv61 = sext i32 %63 to i64
  %64 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size62 = getelementptr inbounds %struct.VarString, %struct.VarString* %64, i32 0, i32 1
  %65 = load i32, i32* %size62, align 8
  %conv63 = sext i32 %65 to i64
  %66 = load i8*, i8** %tmp52, align 8
  %call64 = call i64 @strlen(i8* noundef %66) #8
  %add65 = add i64 %conv63, %call64
  %cmp66 = icmp ult i64 %conv61, %add65
  br i1 %cmp66, label %if.then68, label %if.end86

if.then68:                                        ; preds = %do.body59
  %67 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize70 = getelementptr inbounds %struct.VarString, %struct.VarString* %67, i32 0, i32 2
  %68 = load i32, i32* %bufsize70, align 4
  store i32 %68, i32* %newbufsize69, align 4
  br label %while.cond71

while.cond71:                                     ; preds = %while.body80, %if.then68
  %69 = load i32, i32* %newbufsize69, align 4
  %mul72 = mul nsw i32 %69, 2
  store i32 %mul72, i32* %newbufsize69, align 4
  %conv73 = sext i32 %mul72 to i64
  %70 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size74 = getelementptr inbounds %struct.VarString, %struct.VarString* %70, i32 0, i32 1
  %71 = load i32, i32* %size74, align 8
  %conv75 = sext i32 %71 to i64
  %72 = load i8*, i8** %tmp52, align 8
  %call76 = call i64 @strlen(i8* noundef %72) #8
  %add77 = add i64 %conv75, %call76
  %cmp78 = icmp ult i64 %conv73, %add77
  br i1 %cmp78, label %while.body80, label %while.end81

while.body80:                                     ; preds = %while.cond71
  br label %while.cond71, !llvm.loop !68

while.end81:                                      ; preds = %while.cond71
  %73 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf82 = getelementptr inbounds %struct.VarString, %struct.VarString* %73, i32 0, i32 0
  %74 = load i8*, i8** %buf82, align 8
  %75 = load i32, i32* %newbufsize69, align 4
  %conv83 = sext i32 %75 to i64
  %call84 = call i8* @realloc(i8* noundef %74, i64 noundef %conv83) #7
  %76 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf85 = getelementptr inbounds %struct.VarString, %struct.VarString* %76, i32 0, i32 0
  store i8* %call84, i8** %buf85, align 8
  br label %if.end86

if.end86:                                         ; preds = %while.end81, %do.body59
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  %77 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf88 = getelementptr inbounds %struct.VarString, %struct.VarString* %77, i32 0, i32 0
  %78 = load i8*, i8** %buf88, align 8
  %79 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size89 = getelementptr inbounds %struct.VarString, %struct.VarString* %79, i32 0, i32 1
  %80 = load i32, i32* %size89, align 8
  %idx.ext90 = sext i32 %80 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %78, i64 %idx.ext90
  %81 = load i8*, i8** %tmp52, align 8
  %82 = load i8*, i8** %tmp52, align 8
  %call92 = call i64 @strlen(i8* noundef %82) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr91, i8* align 1 %81, i64 %call92, i1 false)
  %83 = load i8*, i8** %tmp52, align 8
  %call93 = call i64 @strlen(i8* noundef %83) #8
  %84 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size94 = getelementptr inbounds %struct.VarString, %struct.VarString* %84, i32 0, i32 1
  %85 = load i32, i32* %size94, align 8
  %conv95 = sext i32 %85 to i64
  %add96 = add i64 %conv95, %call93
  %conv97 = trunc i64 %add96 to i32
  store i32 %conv97, i32* %size94, align 8
  br label %do.end98

do.end98:                                         ; preds = %do.end87
  %86 = load i8*, i8** %tmp52, align 8
  call void @free(i8* noundef %86) #7
  br label %do.end99

do.end99:                                         ; preds = %do.end98
  %87 = load i8*, i8** %buf41, align 8
  call void @free(i8* noundef %87) #7
  br label %sw.epilog

sw.bb100:                                         ; preds = %do.end
  %88 = bitcast float* %val101 to i8*
  %89 = load i8*, i8** %attrData, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 1 %89, i64 4, i1 false)
  br label %do.body102

do.body102:                                       ; preds = %sw.bb100
  %call104 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call104, i8** %tmp103, align 8
  %90 = load i8*, i8** %tmp103, align 8
  %91 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames105 = getelementptr inbounds %struct.Schema, %struct.Schema* %91, i32 0, i32 1
  %92 = load i8**, i8*** %attrNames105, align 8
  %93 = load i32, i32* %attrNum.addr, align 4
  %idxprom106 = sext i32 %93 to i64
  %arrayidx107 = getelementptr inbounds i8*, i8** %92, i64 %idxprom106
  %94 = load i8*, i8** %arrayidx107, align 8
  %95 = load float, float* %val101, align 4
  %conv108 = fpext float %95 to double
  %call109 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i8* noundef %94, double noundef %conv108) #7
  br label %do.body110

do.body110:                                       ; preds = %do.body102
  br label %do.body111

do.body111:                                       ; preds = %do.body110
  %96 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize112 = getelementptr inbounds %struct.VarString, %struct.VarString* %96, i32 0, i32 2
  %97 = load i32, i32* %bufsize112, align 4
  %conv113 = sext i32 %97 to i64
  %98 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size114 = getelementptr inbounds %struct.VarString, %struct.VarString* %98, i32 0, i32 1
  %99 = load i32, i32* %size114, align 8
  %conv115 = sext i32 %99 to i64
  %100 = load i8*, i8** %tmp103, align 8
  %call116 = call i64 @strlen(i8* noundef %100) #8
  %add117 = add i64 %conv115, %call116
  %cmp118 = icmp ult i64 %conv113, %add117
  br i1 %cmp118, label %if.then120, label %if.end138

if.then120:                                       ; preds = %do.body111
  %101 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize122 = getelementptr inbounds %struct.VarString, %struct.VarString* %101, i32 0, i32 2
  %102 = load i32, i32* %bufsize122, align 4
  store i32 %102, i32* %newbufsize121, align 4
  br label %while.cond123

while.cond123:                                    ; preds = %while.body132, %if.then120
  %103 = load i32, i32* %newbufsize121, align 4
  %mul124 = mul nsw i32 %103, 2
  store i32 %mul124, i32* %newbufsize121, align 4
  %conv125 = sext i32 %mul124 to i64
  %104 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size126 = getelementptr inbounds %struct.VarString, %struct.VarString* %104, i32 0, i32 1
  %105 = load i32, i32* %size126, align 8
  %conv127 = sext i32 %105 to i64
  %106 = load i8*, i8** %tmp103, align 8
  %call128 = call i64 @strlen(i8* noundef %106) #8
  %add129 = add i64 %conv127, %call128
  %cmp130 = icmp ult i64 %conv125, %add129
  br i1 %cmp130, label %while.body132, label %while.end133

while.body132:                                    ; preds = %while.cond123
  br label %while.cond123, !llvm.loop !69

while.end133:                                     ; preds = %while.cond123
  %107 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf134 = getelementptr inbounds %struct.VarString, %struct.VarString* %107, i32 0, i32 0
  %108 = load i8*, i8** %buf134, align 8
  %109 = load i32, i32* %newbufsize121, align 4
  %conv135 = sext i32 %109 to i64
  %call136 = call i8* @realloc(i8* noundef %108, i64 noundef %conv135) #7
  %110 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf137 = getelementptr inbounds %struct.VarString, %struct.VarString* %110, i32 0, i32 0
  store i8* %call136, i8** %buf137, align 8
  br label %if.end138

if.end138:                                        ; preds = %while.end133, %do.body111
  br label %do.end139

do.end139:                                        ; preds = %if.end138
  %111 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf140 = getelementptr inbounds %struct.VarString, %struct.VarString* %111, i32 0, i32 0
  %112 = load i8*, i8** %buf140, align 8
  %113 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size141 = getelementptr inbounds %struct.VarString, %struct.VarString* %113, i32 0, i32 1
  %114 = load i32, i32* %size141, align 8
  %idx.ext142 = sext i32 %114 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %112, i64 %idx.ext142
  %115 = load i8*, i8** %tmp103, align 8
  %116 = load i8*, i8** %tmp103, align 8
  %call144 = call i64 @strlen(i8* noundef %116) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr143, i8* align 1 %115, i64 %call144, i1 false)
  %117 = load i8*, i8** %tmp103, align 8
  %call145 = call i64 @strlen(i8* noundef %117) #8
  %118 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size146 = getelementptr inbounds %struct.VarString, %struct.VarString* %118, i32 0, i32 1
  %119 = load i32, i32* %size146, align 8
  %conv147 = sext i32 %119 to i64
  %add148 = add i64 %conv147, %call145
  %conv149 = trunc i64 %add148 to i32
  store i32 %conv149, i32* %size146, align 8
  br label %do.end150

do.end150:                                        ; preds = %do.end139
  %120 = load i8*, i8** %tmp103, align 8
  call void @free(i8* noundef %120) #7
  br label %do.end151

do.end151:                                        ; preds = %do.end150
  br label %sw.epilog

sw.bb152:                                         ; preds = %do.end
  %121 = bitcast i16* %val153 to i8*
  %122 = load i8*, i8** %attrData, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %121, i8* align 1 %122, i64 2, i1 false)
  br label %do.body154

do.body154:                                       ; preds = %sw.bb152
  %call156 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call156, i8** %tmp155, align 8
  %123 = load i8*, i8** %tmp155, align 8
  %124 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %attrNames157 = getelementptr inbounds %struct.Schema, %struct.Schema* %124, i32 0, i32 1
  %125 = load i8**, i8*** %attrNames157, align 8
  %126 = load i32, i32* %attrNum.addr, align 4
  %idxprom158 = sext i32 %126 to i64
  %arrayidx159 = getelementptr inbounds i8*, i8** %125, i64 %idxprom158
  %127 = load i8*, i8** %arrayidx159, align 8
  %128 = load i16, i16* %val153, align 2
  %conv160 = sext i16 %128 to i32
  %tobool = icmp ne i32 %conv160, 0
  %129 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0)
  %call161 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %123, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* noundef %127, i8* noundef %cond) #7
  br label %do.body162

do.body162:                                       ; preds = %do.body154
  br label %do.body163

do.body163:                                       ; preds = %do.body162
  %130 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize164 = getelementptr inbounds %struct.VarString, %struct.VarString* %130, i32 0, i32 2
  %131 = load i32, i32* %bufsize164, align 4
  %conv165 = sext i32 %131 to i64
  %132 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size166 = getelementptr inbounds %struct.VarString, %struct.VarString* %132, i32 0, i32 1
  %133 = load i32, i32* %size166, align 8
  %conv167 = sext i32 %133 to i64
  %134 = load i8*, i8** %tmp155, align 8
  %call168 = call i64 @strlen(i8* noundef %134) #8
  %add169 = add i64 %conv167, %call168
  %cmp170 = icmp ult i64 %conv165, %add169
  br i1 %cmp170, label %if.then172, label %if.end190

if.then172:                                       ; preds = %do.body163
  %135 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize174 = getelementptr inbounds %struct.VarString, %struct.VarString* %135, i32 0, i32 2
  %136 = load i32, i32* %bufsize174, align 4
  store i32 %136, i32* %newbufsize173, align 4
  br label %while.cond175

while.cond175:                                    ; preds = %while.body184, %if.then172
  %137 = load i32, i32* %newbufsize173, align 4
  %mul176 = mul nsw i32 %137, 2
  store i32 %mul176, i32* %newbufsize173, align 4
  %conv177 = sext i32 %mul176 to i64
  %138 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size178 = getelementptr inbounds %struct.VarString, %struct.VarString* %138, i32 0, i32 1
  %139 = load i32, i32* %size178, align 8
  %conv179 = sext i32 %139 to i64
  %140 = load i8*, i8** %tmp155, align 8
  %call180 = call i64 @strlen(i8* noundef %140) #8
  %add181 = add i64 %conv179, %call180
  %cmp182 = icmp ult i64 %conv177, %add181
  br i1 %cmp182, label %while.body184, label %while.end185

while.body184:                                    ; preds = %while.cond175
  br label %while.cond175, !llvm.loop !70

while.end185:                                     ; preds = %while.cond175
  %141 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf186 = getelementptr inbounds %struct.VarString, %struct.VarString* %141, i32 0, i32 0
  %142 = load i8*, i8** %buf186, align 8
  %143 = load i32, i32* %newbufsize173, align 4
  %conv187 = sext i32 %143 to i64
  %call188 = call i8* @realloc(i8* noundef %142, i64 noundef %conv187) #7
  %144 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf189 = getelementptr inbounds %struct.VarString, %struct.VarString* %144, i32 0, i32 0
  store i8* %call188, i8** %buf189, align 8
  br label %if.end190

if.end190:                                        ; preds = %while.end185, %do.body163
  br label %do.end191

do.end191:                                        ; preds = %if.end190
  %145 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf192 = getelementptr inbounds %struct.VarString, %struct.VarString* %145, i32 0, i32 0
  %146 = load i8*, i8** %buf192, align 8
  %147 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size193 = getelementptr inbounds %struct.VarString, %struct.VarString* %147, i32 0, i32 1
  %148 = load i32, i32* %size193, align 8
  %idx.ext194 = sext i32 %148 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %146, i64 %idx.ext194
  %149 = load i8*, i8** %tmp155, align 8
  %150 = load i8*, i8** %tmp155, align 8
  %call196 = call i64 @strlen(i8* noundef %150) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr195, i8* align 1 %149, i64 %call196, i1 false)
  %151 = load i8*, i8** %tmp155, align 8
  %call197 = call i64 @strlen(i8* noundef %151) #8
  %152 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size198 = getelementptr inbounds %struct.VarString, %struct.VarString* %152, i32 0, i32 1
  %153 = load i32, i32* %size198, align 8
  %conv199 = sext i32 %153 to i64
  %add200 = add i64 %conv199, %call197
  %conv201 = trunc i64 %add200 to i32
  store i32 %conv201, i32* %size198, align 8
  br label %do.end202

do.end202:                                        ; preds = %do.end191
  %154 = load i8*, i8** %tmp155, align 8
  call void @free(i8* noundef %154) #7
  br label %do.end203

do.end203:                                        ; preds = %do.end202
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i8** %retval, align 8
  br label %do.end220

sw.epilog:                                        ; preds = %do.end203, %do.end151, %do.end99, %do.end39
  br label %do.body204

do.body204:                                       ; preds = %sw.epilog
  br label %do.body205

do.body205:                                       ; preds = %do.body204
  %155 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size206 = getelementptr inbounds %struct.VarString, %struct.VarString* %155, i32 0, i32 1
  %156 = load i32, i32* %size206, align 8
  %add207 = add nsw i32 %156, 1
  %conv208 = sext i32 %add207 to i64
  %call209 = call noalias i8* @malloc(i64 noundef %conv208) #7
  store i8* %call209, i8** %resultStr, align 8
  %157 = load i8*, i8** %resultStr, align 8
  %158 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf210 = getelementptr inbounds %struct.VarString, %struct.VarString* %158, i32 0, i32 0
  %159 = load i8*, i8** %buf210, align 8
  %160 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size211 = getelementptr inbounds %struct.VarString, %struct.VarString* %160, i32 0, i32 1
  %161 = load i32, i32* %size211, align 8
  %conv212 = sext i32 %161 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %157, i8* align 1 %159, i64 %conv212, i1 false)
  %162 = load i8*, i8** %resultStr, align 8
  %163 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size213 = getelementptr inbounds %struct.VarString, %struct.VarString* %163, i32 0, i32 1
  %164 = load i32, i32* %size213, align 8
  %idxprom214 = sext i32 %164 to i64
  %arrayidx215 = getelementptr inbounds i8, i8* %162, i64 %idxprom214
  store i8 0, i8* %arrayidx215, align 1
  br label %do.end216

do.end216:                                        ; preds = %do.body205
  br label %do.body217

do.body217:                                       ; preds = %do.end216
  %165 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf218 = getelementptr inbounds %struct.VarString, %struct.VarString* %165, i32 0, i32 0
  %166 = load i8*, i8** %buf218, align 8
  call void @free(i8* noundef %166) #7
  %167 = load %struct.VarString*, %struct.VarString** %result, align 8
  %168 = bitcast %struct.VarString* %167 to i8*
  call void @free(i8* noundef %168) #7
  br label %do.end219

do.end219:                                        ; preds = %do.body217
  %169 = load i8*, i8** %resultStr, align 8
  store i8* %169, i8** %retval, align 8
  br label %do.end220

do.end220:                                        ; preds = %sw.default, %do.end219
  %170 = load i8*, i8** %retval, align 8
  ret i8* %170
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attrOffset(%struct.Schema* noundef %schema, i32 noundef %attrNum, i32* noundef %result) #0 {
entry:
  %schema.addr = alloca %struct.Schema*, align 8
  %attrNum.addr = alloca i32, align 4
  %result.addr = alloca i32*, align 8
  %offset = alloca i32, align 4
  %attrPos = alloca i32, align 4
  store %struct.Schema* %schema, %struct.Schema** %schema.addr, align 8
  store i32 %attrNum, i32* %attrNum.addr, align 4
  store i32* %result, i32** %result.addr, align 8
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %attrPos, align 4
  store i32 0, i32* %attrPos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %attrPos, align 4
  %1 = load i32, i32* %attrNum.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %dataTypes = getelementptr inbounds %struct.Schema, %struct.Schema* %2, i32 0, i32 2
  %3 = load i32*, i32** %dataTypes, align 8
  %4 = load i32, i32* %attrPos, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  switch i32 %5, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.body
  %6 = load %struct.Schema*, %struct.Schema** %schema.addr, align 8
  %typeLength = getelementptr inbounds %struct.Schema, %struct.Schema* %6, i32 0, i32 3
  %7 = load i32*, i32** %typeLength, align 8
  %8 = load i32, i32* %attrPos, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %offset, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %offset, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  %11 = load i32, i32* %offset, align 4
  %conv = sext i32 %11 to i64
  %add4 = add i64 %conv, 4
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %offset, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %12 = load i32, i32* %offset, align 4
  %conv7 = sext i32 %12 to i64
  %add8 = add i64 %conv7, 4
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* %offset, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  %13 = load i32, i32* %offset, align 4
  %conv11 = sext i32 %13 to i64
  %add12 = add i64 %conv11, 2
  %conv13 = trunc i64 %add12 to i32
  store i32 %conv13, i32* %offset, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb10, %sw.bb6, %sw.bb3, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %14 = load i32, i32* %attrPos, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %attrPos, align 4
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %offset, align 4
  %16 = load i32*, i32** %result.addr, align 8
  store i32 %15, i32* %16, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @serializeValue(%struct.Value* noundef %val) #0 {
entry:
  %val.addr = alloca %struct.Value*, align 8
  %result = alloca %struct.VarString*, align 8
  %tmp = alloca i8*, align 8
  %newbufsize = alloca i32, align 4
  %tmp37 = alloca i8*, align 8
  %newbufsize53 = alloca i32, align 4
  %tmp86 = alloca i8*, align 8
  %newbufsize101 = alloca i32, align 4
  %newbufsize146 = alloca i32, align 4
  %resultStr = alloca i8*, align 8
  store %struct.Value* %val, %struct.Value** %val.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.VarString*
  store %struct.VarString* %0, %struct.VarString** %result, align 8
  %1 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size = getelementptr inbounds %struct.VarString, %struct.VarString* %1, i32 0, i32 1
  store i32 0, i32* %size, align 8
  %2 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize = getelementptr inbounds %struct.VarString, %struct.VarString* %2, i32 0, i32 2
  store i32 100, i32* %bufsize, align 4
  %call1 = call noalias i8* @calloc(i64 noundef 100, i64 noundef 1) #7
  %3 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf = getelementptr inbounds %struct.VarString, %struct.VarString* %3, i32 0, i32 0
  store i8* %call1, i8** %buf, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %4, i32 0, i32 0
  %5 = load i32, i32* %dt, align 8
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb35
    i32 1, label %sw.bb84
    i32 3, label %sw.bb132
  ]

sw.bb:                                            ; preds = %do.end
  br label %do.body2

do.body2:                                         ; preds = %sw.bb
  %call3 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call3, i8** %tmp, align 8
  %6 = load i8*, i8** %tmp, align 8
  %7 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %7, i32 0, i32 1
  %intV = bitcast %union.v* %v to i32*
  %8 = load i32, i32* %intV, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 noundef %8) #7
  br label %do.body5

do.body5:                                         ; preds = %do.body2
  br label %do.body6

do.body6:                                         ; preds = %do.body5
  %9 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize7 = getelementptr inbounds %struct.VarString, %struct.VarString* %9, i32 0, i32 2
  %10 = load i32, i32* %bufsize7, align 4
  %conv = sext i32 %10 to i64
  %11 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size8 = getelementptr inbounds %struct.VarString, %struct.VarString* %11, i32 0, i32 1
  %12 = load i32, i32* %size8, align 8
  %conv9 = sext i32 %12 to i64
  %13 = load i8*, i8** %tmp, align 8
  %call10 = call i64 @strlen(i8* noundef %13) #8
  %add = add i64 %conv9, %call10
  %cmp = icmp ult i64 %conv, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body6
  %14 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize12 = getelementptr inbounds %struct.VarString, %struct.VarString* %14, i32 0, i32 2
  %15 = load i32, i32* %bufsize12, align 4
  store i32 %15, i32* %newbufsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %16 = load i32, i32* %newbufsize, align 4
  %mul = mul nsw i32 %16, 2
  store i32 %mul, i32* %newbufsize, align 4
  %conv13 = sext i32 %mul to i64
  %17 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size14 = getelementptr inbounds %struct.VarString, %struct.VarString* %17, i32 0, i32 1
  %18 = load i32, i32* %size14, align 8
  %conv15 = sext i32 %18 to i64
  %19 = load i8*, i8** %tmp, align 8
  %call16 = call i64 @strlen(i8* noundef %19) #8
  %add17 = add i64 %conv15, %call16
  %cmp18 = icmp ult i64 %conv13, %add17
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !72

while.end:                                        ; preds = %while.cond
  %20 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf20 = getelementptr inbounds %struct.VarString, %struct.VarString* %20, i32 0, i32 0
  %21 = load i8*, i8** %buf20, align 8
  %22 = load i32, i32* %newbufsize, align 4
  %conv21 = sext i32 %22 to i64
  %call22 = call i8* @realloc(i8* noundef %21, i64 noundef %conv21) #7
  %23 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf23 = getelementptr inbounds %struct.VarString, %struct.VarString* %23, i32 0, i32 0
  store i8* %call22, i8** %buf23, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %do.body6
  br label %do.end24

do.end24:                                         ; preds = %if.end
  %24 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf25 = getelementptr inbounds %struct.VarString, %struct.VarString* %24, i32 0, i32 0
  %25 = load i8*, i8** %buf25, align 8
  %26 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size26 = getelementptr inbounds %struct.VarString, %struct.VarString* %26, i32 0, i32 1
  %27 = load i32, i32* %size26, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %28 = load i8*, i8** %tmp, align 8
  %29 = load i8*, i8** %tmp, align 8
  %call27 = call i64 @strlen(i8* noundef %29) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %28, i64 %call27, i1 false)
  %30 = load i8*, i8** %tmp, align 8
  %call28 = call i64 @strlen(i8* noundef %30) #8
  %31 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size29 = getelementptr inbounds %struct.VarString, %struct.VarString* %31, i32 0, i32 1
  %32 = load i32, i32* %size29, align 8
  %conv30 = sext i32 %32 to i64
  %add31 = add i64 %conv30, %call28
  %conv32 = trunc i64 %add31 to i32
  store i32 %conv32, i32* %size29, align 8
  br label %do.end33

do.end33:                                         ; preds = %do.end24
  %33 = load i8*, i8** %tmp, align 8
  call void @free(i8* noundef %33) #7
  br label %do.end34

do.end34:                                         ; preds = %do.end33
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end
  br label %do.body36

do.body36:                                        ; preds = %sw.bb35
  %call38 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call38, i8** %tmp37, align 8
  %34 = load i8*, i8** %tmp37, align 8
  %35 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v39 = getelementptr inbounds %struct.Value, %struct.Value* %35, i32 0, i32 1
  %floatV = bitcast %union.v* %v39 to float*
  %36 = load float, float* %floatV, align 8
  %conv40 = fpext float %36 to double
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %34, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), double noundef %conv40) #7
  br label %do.body42

do.body42:                                        ; preds = %do.body36
  br label %do.body43

do.body43:                                        ; preds = %do.body42
  %37 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize44 = getelementptr inbounds %struct.VarString, %struct.VarString* %37, i32 0, i32 2
  %38 = load i32, i32* %bufsize44, align 4
  %conv45 = sext i32 %38 to i64
  %39 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size46 = getelementptr inbounds %struct.VarString, %struct.VarString* %39, i32 0, i32 1
  %40 = load i32, i32* %size46, align 8
  %conv47 = sext i32 %40 to i64
  %41 = load i8*, i8** %tmp37, align 8
  %call48 = call i64 @strlen(i8* noundef %41) #8
  %add49 = add i64 %conv47, %call48
  %cmp50 = icmp ult i64 %conv45, %add49
  br i1 %cmp50, label %if.then52, label %if.end70

if.then52:                                        ; preds = %do.body43
  %42 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize54 = getelementptr inbounds %struct.VarString, %struct.VarString* %42, i32 0, i32 2
  %43 = load i32, i32* %bufsize54, align 4
  store i32 %43, i32* %newbufsize53, align 4
  br label %while.cond55

while.cond55:                                     ; preds = %while.body64, %if.then52
  %44 = load i32, i32* %newbufsize53, align 4
  %mul56 = mul nsw i32 %44, 2
  store i32 %mul56, i32* %newbufsize53, align 4
  %conv57 = sext i32 %mul56 to i64
  %45 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size58 = getelementptr inbounds %struct.VarString, %struct.VarString* %45, i32 0, i32 1
  %46 = load i32, i32* %size58, align 8
  %conv59 = sext i32 %46 to i64
  %47 = load i8*, i8** %tmp37, align 8
  %call60 = call i64 @strlen(i8* noundef %47) #8
  %add61 = add i64 %conv59, %call60
  %cmp62 = icmp ult i64 %conv57, %add61
  br i1 %cmp62, label %while.body64, label %while.end65

while.body64:                                     ; preds = %while.cond55
  br label %while.cond55, !llvm.loop !73

while.end65:                                      ; preds = %while.cond55
  %48 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf66 = getelementptr inbounds %struct.VarString, %struct.VarString* %48, i32 0, i32 0
  %49 = load i8*, i8** %buf66, align 8
  %50 = load i32, i32* %newbufsize53, align 4
  %conv67 = sext i32 %50 to i64
  %call68 = call i8* @realloc(i8* noundef %49, i64 noundef %conv67) #7
  %51 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf69 = getelementptr inbounds %struct.VarString, %struct.VarString* %51, i32 0, i32 0
  store i8* %call68, i8** %buf69, align 8
  br label %if.end70

if.end70:                                         ; preds = %while.end65, %do.body43
  br label %do.end71

do.end71:                                         ; preds = %if.end70
  %52 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf72 = getelementptr inbounds %struct.VarString, %struct.VarString* %52, i32 0, i32 0
  %53 = load i8*, i8** %buf72, align 8
  %54 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size73 = getelementptr inbounds %struct.VarString, %struct.VarString* %54, i32 0, i32 1
  %55 = load i32, i32* %size73, align 8
  %idx.ext74 = sext i32 %55 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %53, i64 %idx.ext74
  %56 = load i8*, i8** %tmp37, align 8
  %57 = load i8*, i8** %tmp37, align 8
  %call76 = call i64 @strlen(i8* noundef %57) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr75, i8* align 1 %56, i64 %call76, i1 false)
  %58 = load i8*, i8** %tmp37, align 8
  %call77 = call i64 @strlen(i8* noundef %58) #8
  %59 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size78 = getelementptr inbounds %struct.VarString, %struct.VarString* %59, i32 0, i32 1
  %60 = load i32, i32* %size78, align 8
  %conv79 = sext i32 %60 to i64
  %add80 = add i64 %conv79, %call77
  %conv81 = trunc i64 %add80 to i32
  store i32 %conv81, i32* %size78, align 8
  br label %do.end82

do.end82:                                         ; preds = %do.end71
  %61 = load i8*, i8** %tmp37, align 8
  call void @free(i8* noundef %61) #7
  br label %do.end83

do.end83:                                         ; preds = %do.end82
  br label %sw.epilog

sw.bb84:                                          ; preds = %do.end
  br label %do.body85

do.body85:                                        ; preds = %sw.bb84
  %call87 = call noalias i8* @malloc(i64 noundef 10000) #7
  store i8* %call87, i8** %tmp86, align 8
  %62 = load i8*, i8** %tmp86, align 8
  %63 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v88 = getelementptr inbounds %struct.Value, %struct.Value* %63, i32 0, i32 1
  %stringV = bitcast %union.v* %v88 to i8**
  %64 = load i8*, i8** %stringV, align 8
  %call89 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %62, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* noundef %64) #7
  br label %do.body90

do.body90:                                        ; preds = %do.body85
  br label %do.body91

do.body91:                                        ; preds = %do.body90
  %65 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize92 = getelementptr inbounds %struct.VarString, %struct.VarString* %65, i32 0, i32 2
  %66 = load i32, i32* %bufsize92, align 4
  %conv93 = sext i32 %66 to i64
  %67 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size94 = getelementptr inbounds %struct.VarString, %struct.VarString* %67, i32 0, i32 1
  %68 = load i32, i32* %size94, align 8
  %conv95 = sext i32 %68 to i64
  %69 = load i8*, i8** %tmp86, align 8
  %call96 = call i64 @strlen(i8* noundef %69) #8
  %add97 = add i64 %conv95, %call96
  %cmp98 = icmp ult i64 %conv93, %add97
  br i1 %cmp98, label %if.then100, label %if.end118

if.then100:                                       ; preds = %do.body91
  %70 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize102 = getelementptr inbounds %struct.VarString, %struct.VarString* %70, i32 0, i32 2
  %71 = load i32, i32* %bufsize102, align 4
  store i32 %71, i32* %newbufsize101, align 4
  br label %while.cond103

while.cond103:                                    ; preds = %while.body112, %if.then100
  %72 = load i32, i32* %newbufsize101, align 4
  %mul104 = mul nsw i32 %72, 2
  store i32 %mul104, i32* %newbufsize101, align 4
  %conv105 = sext i32 %mul104 to i64
  %73 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size106 = getelementptr inbounds %struct.VarString, %struct.VarString* %73, i32 0, i32 1
  %74 = load i32, i32* %size106, align 8
  %conv107 = sext i32 %74 to i64
  %75 = load i8*, i8** %tmp86, align 8
  %call108 = call i64 @strlen(i8* noundef %75) #8
  %add109 = add i64 %conv107, %call108
  %cmp110 = icmp ult i64 %conv105, %add109
  br i1 %cmp110, label %while.body112, label %while.end113

while.body112:                                    ; preds = %while.cond103
  br label %while.cond103, !llvm.loop !74

while.end113:                                     ; preds = %while.cond103
  %76 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf114 = getelementptr inbounds %struct.VarString, %struct.VarString* %76, i32 0, i32 0
  %77 = load i8*, i8** %buf114, align 8
  %78 = load i32, i32* %newbufsize101, align 4
  %conv115 = sext i32 %78 to i64
  %call116 = call i8* @realloc(i8* noundef %77, i64 noundef %conv115) #7
  %79 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf117 = getelementptr inbounds %struct.VarString, %struct.VarString* %79, i32 0, i32 0
  store i8* %call116, i8** %buf117, align 8
  br label %if.end118

if.end118:                                        ; preds = %while.end113, %do.body91
  br label %do.end119

do.end119:                                        ; preds = %if.end118
  %80 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf120 = getelementptr inbounds %struct.VarString, %struct.VarString* %80, i32 0, i32 0
  %81 = load i8*, i8** %buf120, align 8
  %82 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size121 = getelementptr inbounds %struct.VarString, %struct.VarString* %82, i32 0, i32 1
  %83 = load i32, i32* %size121, align 8
  %idx.ext122 = sext i32 %83 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %81, i64 %idx.ext122
  %84 = load i8*, i8** %tmp86, align 8
  %85 = load i8*, i8** %tmp86, align 8
  %call124 = call i64 @strlen(i8* noundef %85) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr123, i8* align 1 %84, i64 %call124, i1 false)
  %86 = load i8*, i8** %tmp86, align 8
  %call125 = call i64 @strlen(i8* noundef %86) #8
  %87 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size126 = getelementptr inbounds %struct.VarString, %struct.VarString* %87, i32 0, i32 1
  %88 = load i32, i32* %size126, align 8
  %conv127 = sext i32 %88 to i64
  %add128 = add i64 %conv127, %call125
  %conv129 = trunc i64 %add128 to i32
  store i32 %conv129, i32* %size126, align 8
  br label %do.end130

do.end130:                                        ; preds = %do.end119
  %89 = load i8*, i8** %tmp86, align 8
  call void @free(i8* noundef %89) #7
  br label %do.end131

do.end131:                                        ; preds = %do.end130
  br label %sw.epilog

sw.bb132:                                         ; preds = %do.end
  br label %do.body133

do.body133:                                       ; preds = %sw.bb132
  br label %do.body134

do.body134:                                       ; preds = %do.body133
  %90 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize135 = getelementptr inbounds %struct.VarString, %struct.VarString* %90, i32 0, i32 2
  %91 = load i32, i32* %bufsize135, align 4
  %conv136 = sext i32 %91 to i64
  %92 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size137 = getelementptr inbounds %struct.VarString, %struct.VarString* %92, i32 0, i32 1
  %93 = load i32, i32* %size137, align 8
  %conv138 = sext i32 %93 to i64
  %94 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v139 = getelementptr inbounds %struct.Value, %struct.Value* %94, i32 0, i32 1
  %boolV = bitcast %union.v* %v139 to i16*
  %95 = load i16, i16* %boolV, align 8
  %conv140 = sext i16 %95 to i32
  %tobool = icmp ne i32 %conv140, 0
  %96 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)
  %call141 = call i64 @strlen(i8* noundef %cond) #8
  %add142 = add i64 %conv138, %call141
  %cmp143 = icmp ult i64 %conv136, %add142
  br i1 %cmp143, label %if.then145, label %if.end168

if.then145:                                       ; preds = %do.body134
  %97 = load %struct.VarString*, %struct.VarString** %result, align 8
  %bufsize147 = getelementptr inbounds %struct.VarString, %struct.VarString* %97, i32 0, i32 2
  %98 = load i32, i32* %bufsize147, align 4
  store i32 %98, i32* %newbufsize146, align 4
  br label %while.cond148

while.cond148:                                    ; preds = %while.body162, %if.then145
  %99 = load i32, i32* %newbufsize146, align 4
  %mul149 = mul nsw i32 %99, 2
  store i32 %mul149, i32* %newbufsize146, align 4
  %conv150 = sext i32 %mul149 to i64
  %100 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size151 = getelementptr inbounds %struct.VarString, %struct.VarString* %100, i32 0, i32 1
  %101 = load i32, i32* %size151, align 8
  %conv152 = sext i32 %101 to i64
  %102 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v153 = getelementptr inbounds %struct.Value, %struct.Value* %102, i32 0, i32 1
  %boolV154 = bitcast %union.v* %v153 to i16*
  %103 = load i16, i16* %boolV154, align 8
  %conv155 = sext i16 %103 to i32
  %tobool156 = icmp ne i32 %conv155, 0
  %104 = zext i1 %tobool156 to i64
  %cond157 = select i1 %tobool156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)
  %call158 = call i64 @strlen(i8* noundef %cond157) #8
  %add159 = add i64 %conv152, %call158
  %cmp160 = icmp ult i64 %conv150, %add159
  br i1 %cmp160, label %while.body162, label %while.end163

while.body162:                                    ; preds = %while.cond148
  br label %while.cond148, !llvm.loop !75

while.end163:                                     ; preds = %while.cond148
  %105 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf164 = getelementptr inbounds %struct.VarString, %struct.VarString* %105, i32 0, i32 0
  %106 = load i8*, i8** %buf164, align 8
  %107 = load i32, i32* %newbufsize146, align 4
  %conv165 = sext i32 %107 to i64
  %call166 = call i8* @realloc(i8* noundef %106, i64 noundef %conv165) #7
  %108 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf167 = getelementptr inbounds %struct.VarString, %struct.VarString* %108, i32 0, i32 0
  store i8* %call166, i8** %buf167, align 8
  br label %if.end168

if.end168:                                        ; preds = %while.end163, %do.body134
  br label %do.end169

do.end169:                                        ; preds = %if.end168
  %109 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf170 = getelementptr inbounds %struct.VarString, %struct.VarString* %109, i32 0, i32 0
  %110 = load i8*, i8** %buf170, align 8
  %111 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size171 = getelementptr inbounds %struct.VarString, %struct.VarString* %111, i32 0, i32 1
  %112 = load i32, i32* %size171, align 8
  %idx.ext172 = sext i32 %112 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %110, i64 %idx.ext172
  %113 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v174 = getelementptr inbounds %struct.Value, %struct.Value* %113, i32 0, i32 1
  %boolV175 = bitcast %union.v* %v174 to i16*
  %114 = load i16, i16* %boolV175, align 8
  %conv176 = sext i16 %114 to i32
  %tobool177 = icmp ne i32 %conv176, 0
  %115 = zext i1 %tobool177 to i64
  %cond178 = select i1 %tobool177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)
  %116 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v179 = getelementptr inbounds %struct.Value, %struct.Value* %116, i32 0, i32 1
  %boolV180 = bitcast %union.v* %v179 to i16*
  %117 = load i16, i16* %boolV180, align 8
  %conv181 = sext i16 %117 to i32
  %tobool182 = icmp ne i32 %conv181, 0
  %118 = zext i1 %tobool182 to i64
  %cond183 = select i1 %tobool182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)
  %call184 = call i64 @strlen(i8* noundef %cond183) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr173, i8* align 1 %cond178, i64 %call184, i1 false)
  %119 = load %struct.Value*, %struct.Value** %val.addr, align 8
  %v185 = getelementptr inbounds %struct.Value, %struct.Value* %119, i32 0, i32 1
  %boolV186 = bitcast %union.v* %v185 to i16*
  %120 = load i16, i16* %boolV186, align 8
  %conv187 = sext i16 %120 to i32
  %tobool188 = icmp ne i32 %conv187, 0
  %121 = zext i1 %tobool188 to i64
  %cond189 = select i1 %tobool188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)
  %call190 = call i64 @strlen(i8* noundef %cond189) #8
  %122 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size191 = getelementptr inbounds %struct.VarString, %struct.VarString* %122, i32 0, i32 1
  %123 = load i32, i32* %size191, align 8
  %conv192 = sext i32 %123 to i64
  %add193 = add i64 %conv192, %call190
  %conv194 = trunc i64 %add193 to i32
  store i32 %conv194, i32* %size191, align 8
  br label %do.end195

do.end195:                                        ; preds = %do.end169
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.end195, %do.end131, %do.end83, %do.end34
  br label %do.body196

do.body196:                                       ; preds = %sw.epilog
  br label %do.body197

do.body197:                                       ; preds = %do.body196
  %124 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size198 = getelementptr inbounds %struct.VarString, %struct.VarString* %124, i32 0, i32 1
  %125 = load i32, i32* %size198, align 8
  %add199 = add nsw i32 %125, 1
  %conv200 = sext i32 %add199 to i64
  %call201 = call noalias i8* @malloc(i64 noundef %conv200) #7
  store i8* %call201, i8** %resultStr, align 8
  %126 = load i8*, i8** %resultStr, align 8
  %127 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf202 = getelementptr inbounds %struct.VarString, %struct.VarString* %127, i32 0, i32 0
  %128 = load i8*, i8** %buf202, align 8
  %129 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size203 = getelementptr inbounds %struct.VarString, %struct.VarString* %129, i32 0, i32 1
  %130 = load i32, i32* %size203, align 8
  %conv204 = sext i32 %130 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %126, i8* align 1 %128, i64 %conv204, i1 false)
  %131 = load i8*, i8** %resultStr, align 8
  %132 = load %struct.VarString*, %struct.VarString** %result, align 8
  %size205 = getelementptr inbounds %struct.VarString, %struct.VarString* %132, i32 0, i32 1
  %133 = load i32, i32* %size205, align 8
  %idxprom = sext i32 %133 to i64
  %arrayidx = getelementptr inbounds i8, i8* %131, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %do.end206

do.end206:                                        ; preds = %do.body197
  br label %do.body207

do.body207:                                       ; preds = %do.end206
  %134 = load %struct.VarString*, %struct.VarString** %result, align 8
  %buf208 = getelementptr inbounds %struct.VarString, %struct.VarString* %134, i32 0, i32 0
  %135 = load i8*, i8** %buf208, align 8
  call void @free(i8* noundef %135) #7
  %136 = load %struct.VarString*, %struct.VarString** %result, align 8
  %137 = bitcast %struct.VarString* %136 to i8*
  call void @free(i8* noundef %137) #7
  br label %do.end209

do.end209:                                        ; preds = %do.body207
  %138 = load i8*, i8** %resultStr, align 8
  br label %do.end210

do.end210:                                        ; preds = %do.end209
  ret i8* %138
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Value* @stringToValue(i8* noundef %val) #0 {
entry:
  %val.addr = alloca i8*, align 8
  %result = alloca %struct.Value*, align 8
  store i8* %val, i8** %val.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #7
  %0 = bitcast i8* %call to %struct.Value*
  store %struct.Value* %0, %struct.Value** %result, align 8
  %1 = load i8*, i8** %val.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 105, label %sw.bb
    i32 102, label %sw.bb2
    i32 115, label %sw.bb8
    i32 98, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.Value*, %struct.Value** %result, align 8
  %dt = getelementptr inbounds %struct.Value, %struct.Value* %3, i32 0, i32 0
  store i32 0, i32* %dt, align 8
  %4 = load i8*, i8** %val.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %call1 = call i32 @atoi(i8* noundef %add.ptr) #8
  %5 = load %struct.Value*, %struct.Value** %result, align 8
  %v = getelementptr inbounds %struct.Value, %struct.Value* %5, i32 0, i32 1
  %intV = bitcast %union.v* %v to i32*
  store i32 %call1, i32* %intV, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %6 = load %struct.Value*, %struct.Value** %result, align 8
  %dt3 = getelementptr inbounds %struct.Value, %struct.Value* %6, i32 0, i32 0
  store i32 2, i32* %dt3, align 8
  %7 = load i8*, i8** %val.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 1
  %call5 = call double @atof(i8* noundef %add.ptr4) #8
  %conv6 = fptrunc double %call5 to float
  %8 = load %struct.Value*, %struct.Value** %result, align 8
  %v7 = getelementptr inbounds %struct.Value, %struct.Value* %8, i32 0, i32 1
  %floatV = bitcast %union.v* %v7 to float*
  store float %conv6, float* %floatV, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %9 = load %struct.Value*, %struct.Value** %result, align 8
  %dt9 = getelementptr inbounds %struct.Value, %struct.Value* %9, i32 0, i32 0
  store i32 1, i32* %dt9, align 8
  %10 = load i8*, i8** %val.addr, align 8
  %call10 = call i64 @strlen(i8* noundef %10) #8
  %call11 = call noalias i8* @malloc(i64 noundef %call10) #7
  %11 = load %struct.Value*, %struct.Value** %result, align 8
  %v12 = getelementptr inbounds %struct.Value, %struct.Value* %11, i32 0, i32 1
  %stringV = bitcast %union.v* %v12 to i8**
  store i8* %call11, i8** %stringV, align 8
  %12 = load %struct.Value*, %struct.Value** %result, align 8
  %v13 = getelementptr inbounds %struct.Value, %struct.Value* %12, i32 0, i32 1
  %stringV14 = bitcast %union.v* %v13 to i8**
  %13 = load i8*, i8** %stringV14, align 8
  %14 = load i8*, i8** %val.addr, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %14, i64 1
  %call16 = call i8* @strcpy(i8* noundef %13, i8* noundef %add.ptr15) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %15 = load %struct.Value*, %struct.Value** %result, align 8
  %dt18 = getelementptr inbounds %struct.Value, %struct.Value* %15, i32 0, i32 0
  store i32 3, i32* %dt18, align 8
  %16 = load i8*, i8** %val.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %17 to i32
  %cmp = icmp eq i32 %conv20, 116
  %18 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %conv22 = trunc i32 %cond to i16
  %19 = load %struct.Value*, %struct.Value** %result, align 8
  %v23 = getelementptr inbounds %struct.Value, %struct.Value* %19, i32 0, i32 1
  %boolV = bitcast %union.v* %v23 to i16*
  store i16 %conv22, i16* %boolV, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %20 = load %struct.Value*, %struct.Value** %result, align 8
  %dt24 = getelementptr inbounds %struct.Value, %struct.Value* %20, i32 0, i32 0
  store i32 0, i32* %dt24, align 8
  %21 = load %struct.Value*, %struct.Value** %result, align 8
  %v25 = getelementptr inbounds %struct.Value, %struct.Value* %21, i32 0, i32 1
  %intV26 = bitcast %union.v* %v25 to i32*
  store i32 -1, i32* %intV26, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb8, %sw.bb2, %sw.bb
  %22 = load %struct.Value*, %struct.Value** %result, align 8
  ret %struct.Value* %22
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local double @atof(i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initStorageManager() #0 {
entry:
  store %struct._IO_FILE* null, %struct._IO_FILE** @pageFile, align 8
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readFirstBlock(%struct.SM_FileHandle* noundef %fHandle, i8* noundef %memPage) #0 {
entry:
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %memPage.addr = alloca i8*, align 8
  %read_code = alloca i32, align 4
  %maxTrial = alloca i32, align 4
  %Action = alloca i32, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i8* %memPage, i8** %memPage.addr, align 8
  store i32 3, i32* %maxTrial, align 4
  store i32 0, i32* %Action, align 4
  store i32 0, i32* %Action, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %Action, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %2 = load i8*, i8** %memPage.addr, align 8
  %call = call i32 @readBlock(i32 noundef 0, %struct.SM_FileHandle* noundef %1, i8* noundef %2)
  store i32 %call, i32* %read_code, align 4
  %3 = load i32, i32* %read_code, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %4 = load i32, i32* %Action, align 4
  %add = add nsw i32 %4, 1
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.61, i64 0, i64 0), i32 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %Action, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %Action, align 4
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, i32* %read_code, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readLastBlock(%struct.SM_FileHandle* noundef %fHandle, i8* noundef %memPage) #0 {
entry:
  %retval = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %memPage.addr = alloca i8*, align 8
  %read_code = alloca i32, align 4
  %pageNum = alloca i32, align 4
  %maxTrial = alloca i32, align 4
  %Action = alloca i32, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i8* %memPage, i8** %memPage.addr, align 8
  store i32 3, i32* %maxTrial, align 4
  store i32 0, i32* %Action, align 4
  %0 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %0, i32 0, i32 1
  %1 = load i32, i32* %totalNumPages, align 8
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %pageNum, align 4
  %2 = load i32, i32* %pageNum, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %Action, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %Action, align 4
  %cmp1 = icmp slt i32 %3, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %pageNum, align 4
  %5 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %6 = load i8*, i8** %memPage.addr, align 8
  %call = call i32 @readBlock(i32 noundef %4, %struct.SM_FileHandle* noundef %5, i8* noundef %6)
  store i32 %call, i32* %read_code, align 4
  %7 = load i32, i32* %read_code, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  br label %for.end

if.end4:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %8 = load i32, i32* %Action, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %Action, align 4
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %if.then3, %for.cond
  %9 = load i32, i32* %read_code, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readPreviousBlock(%struct.SM_FileHandle* noundef %fHandle, i8* noundef %memPage) #0 {
entry:
  %retval = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %memPage.addr = alloca i8*, align 8
  %read_code = alloca i32, align 4
  %pageNum = alloca i32, align 4
  %maxTrial = alloca i32, align 4
  %Action = alloca i32, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i8* %memPage, i8** %memPage.addr, align 8
  store i32 2, i32* %maxTrial, align 4
  store i32 0, i32* %Action, align 4
  %0 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %curPagePos = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %0, i32 0, i32 2
  %1 = load i32, i32* %curPagePos, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %pageNum, align 4
  %2 = load i32, i32* %pageNum, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %Action, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %Action, align 4
  %cmp1 = icmp slt i32 %3, 2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %pageNum, align 4
  %5 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %6 = load i8*, i8** %memPage.addr, align 8
  %call = call i32 @readBlock(i32 noundef %4, %struct.SM_FileHandle* noundef %5, i8* noundef %6)
  store i32 %call, i32* %read_code, align 4
  %7 = load i32, i32* %read_code, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  br label %for.end

if.end4:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %8 = load i32, i32* %Action, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %Action, align 4
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %if.then3, %for.cond
  %9 = load i32, i32* %read_code, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readCurrentBlock(%struct.SM_FileHandle* noundef %fHandle, i8* noundef %memPage) #0 {
entry:
  %retval = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %memPage.addr = alloca i8*, align 8
  %pageNum = alloca i32, align 4
  %read_code = alloca i32, align 4
  %maxReadTrial = alloca i32, align 4
  %Action = alloca i32, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i8* %memPage, i8** %memPage.addr, align 8
  %0 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %cmp = icmp eq %struct.SM_FileHandle* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %1, i32 0, i32 3
  %2 = load i8*, i8** %mgmtInfo, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %curPagePos = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %3, i32 0, i32 2
  %4 = load i32, i32* %curPagePos, align 4
  store i32 %4, i32* %pageNum, align 4
  %5 = load i32, i32* %pageNum, align 4
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %6 = load i32, i32* %pageNum, align 4
  %7 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %7, i32 0, i32 1
  %8 = load i32, i32* %totalNumPages, align 8
  %cmp4 = icmp sge i32 %6, %8
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  store i32 4, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false3
  store i32 4, i32* %read_code, align 4
  store i32 3, i32* %maxReadTrial, align 4
  store i32 0, i32* %Action, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %9 = load i32, i32* %Action, align 4
  %cmp7 = icmp slt i32 %9, 3
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %pageNum, align 4
  %11 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %12 = load i8*, i8** %memPage.addr, align 8
  %call = call i32 @readBlock(i32 noundef %10, %struct.SM_FileHandle* noundef %11, i8* noundef %12)
  store i32 %call, i32* %read_code, align 4
  %13 = load i32, i32* %read_code, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  br label %for.end

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %14 = load i32, i32* %Action, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %Action, align 4
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %if.then9, %for.cond
  %15 = load i32, i32* %read_code, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readNextBlock(%struct.SM_FileHandle* noundef %fHandle, i8* noundef %memPage) #0 {
entry:
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %memPage.addr = alloca i8*, align 8
  %read_code = alloca i32, align 4
  %pageNum = alloca i32, align 4
  %maxTrial = alloca i32, align 4
  %Action = alloca i32, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i8* %memPage, i8** %memPage.addr, align 8
  store i32 2, i32* %maxTrial, align 4
  store i32 0, i32* %Action, align 4
  %0 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %curPagePos = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %0, i32 0, i32 2
  %1 = load i32, i32* %curPagePos, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %pageNum, align 4
  store i32 0, i32* %Action, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %Action, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pageNum, align 4
  %4 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %5 = load i8*, i8** %memPage.addr, align 8
  %call = call i32 @readBlock(i32 noundef %3, %struct.SM_FileHandle* noundef %4, i8* noundef %5)
  store i32 %call, i32* %read_code, align 4
  %6 = load i32, i32* %read_code, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %Action, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %Action, align 4
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %read_code, align 4
  %cmp2 = icmp eq i32 %8, 4
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.end
  %9 = load i32, i32* %read_code, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #1

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeCurrentBlock(%struct.SM_FileHandle* noundef %fHandle, i8* noundef %memPage) #0 {
entry:
  %retval = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %memPage.addr = alloca i8*, align 8
  %read_code = alloca i32, align 4
  %pageNum = alloca i32, align 4
  %maxWriteTrial = alloca i32, align 4
  %writeAction = alloca i32, align 4
  %SuccessStatus = alloca i32, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  store i8* %memPage, i8** %memPage.addr, align 8
  store i32 3, i32* %maxWriteTrial, align 4
  store i32 0, i32* %SuccessStatus, align 4
  %0 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %curPagePos = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %0, i32 0, i32 2
  %1 = load i32, i32* %curPagePos, align 4
  store i32 %1, i32* %pageNum, align 4
  %2 = load i32, i32* %pageNum, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %pageNum, align 4
  %4 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %4, i32 0, i32 1
  %5 = load i32, i32* %totalNumPages, align 8
  %cmp1 = icmp sge i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %writeAction, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %writeAction, align 4
  %cmp2 = icmp slt i32 %6, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %pageNum, align 4
  %8 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %9 = load i8*, i8** %memPage.addr, align 8
  %call = call i32 @writeBlock(i32 noundef %7, %struct.SM_FileHandle* noundef %8, i8* noundef %9)
  store i32 %call, i32* %read_code, align 4
  %10 = load i32, i32* %read_code, align 4
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  store i32 1, i32* %SuccessStatus, align 4
  br label %for.end

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %11 = load i32, i32* %writeAction, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %writeAction, align 4
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %if.then4, %for.cond
  %12 = load i32, i32* %SuccessStatus, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %for.end
  store i32 3, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appendEmptyBlock(%struct.SM_FileHandle* noundef %fHandle) #0 {
entry:
  %retval = alloca i32, align 4
  %fHandle.addr = alloca %struct.SM_FileHandle*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %pageData = alloca i8*, align 8
  %FILE_RC = alloca i32, align 4
  %maxWriteTrial = alloca i32, align 4
  %Action = alloca i32, align 4
  %SuccessStatus = alloca i32, align 4
  store %struct.SM_FileHandle* %fHandle, %struct.SM_FileHandle** %fHandle.addr, align 8
  %0 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %mgmtInfo = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %0, i32 0, i32 3
  %1 = load i8*, i8** %mgmtInfo, align 8
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  store i32 2, i32* %maxWriteTrial, align 4
  store i32 0, i32* %Action, align 4
  store i32 0, i32* %SuccessStatus, align 4
  %call = call noalias i8* @calloc(i64 noundef 4096, i64 noundef 1) #7
  store i8* %call, i8** %pageData, align 8
  %3 = load i8*, i8** %pageData, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 401, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %5) #7
  store i32 2, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @fseek(%struct._IO_FILE* noundef %6, i64 noundef 0, i32 noundef 2)
  store i32 %call4, i32* %FILE_RC, align 4
  %7 = load i32, i32* %FILE_RC, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %8 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %8) #7
  store i32 408, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  store i32 0, i32* %Action, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, i32* %Action, align 4
  %cmp8 = icmp slt i32 %9, 2
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %pageData, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i64 @fwrite(i8* noundef %10, i64 noundef 4096, i64 noundef 1, %struct._IO_FILE* noundef %11)
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %FILE_RC, align 4
  %12 = load i32, i32* %FILE_RC, align 4
  %cmp10 = icmp eq i32 %12, 1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  store i32 1, i32* %SuccessStatus, align 4
  br label %for.end

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %13 = load i32, i32* %Action, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %Action, align 4
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %if.then12, %for.cond
  %14 = load i8*, i8** %pageData, align 8
  call void @free(i8* noundef %14) #7
  %15 = load i32, i32* %SuccessStatus, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.end
  store i32 3, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.end
  %16 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %16, i32 0, i32 1
  %17 = load i32, i32* %totalNumPages, align 8
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %totalNumPages, align 8
  %18 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %totalNumPages16 = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %18, i32 0, i32 1
  %19 = load i32, i32* %totalNumPages16, align 8
  %sub = sub nsw i32 %19, 1
  %20 = load %struct.SM_FileHandle*, %struct.SM_FileHandle** %fHandle.addr, align 8
  %curPagePos = getelementptr inbounds %struct.SM_FileHandle, %struct.SM_FileHandle* %20, i32 0, i32 2
  store i32 %sub, i32* %curPagePos, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then6, %if.then2, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { noreturn nounwind }

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
