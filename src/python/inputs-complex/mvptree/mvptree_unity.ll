; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/mvptree/mvptree_unity.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/mvptree/mvptree_unity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvp_datapoint_t = type { i8*, i8*, float*, i32, i32 }
%struct.mvptree_t = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %union.node_t*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* }
%union.node_t = type { %struct.node_leaf_t }
%struct.node_leaf_t = type { i32, %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t**, float*, float*, i32 }
%struct.node_internal_t = type { i32, %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*, float*, float*, i8** }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [13 x i8] c"phashmvp2010\00", align 1
@tag = dso_local global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), align 8
@version = dso_local constant i32 16777216, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bad argument\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"no distance function found\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mem alloc error\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"no leaf node created\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"no internal node created\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"no path array alloc'd\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"could not select vantage points\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"could not calculate range from an sv1\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"could not calculate range from an sv2\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"points too compact\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"could not sort points\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"could not open file\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"could not close file\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"mmap error\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"unmap eror\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"no write\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"could not extend file\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"could not remap file\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"datatypes in conflict\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"no. retrieved exceeds k\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"empty tree\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"distance value either NaN or less than zero\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"unrecognized node\00", align 1
@error_msgs = dso_local global [25 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)], align 16
@.str.25 = private unnamed_addr constant [21 x i8] c"LEAF%d  (%d points)\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"    sv1: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"    sv2: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"        point[%d]: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"INTERNAL%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"  sv1: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"  sv2: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"  M1[%d] = %.4f;\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"  M2[%d] = %.4f;\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"NULL%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"malformed tree: %s\0A\00", align 1

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
define dso_local i8* @mvp_errstr(i32 noundef %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  %0 = load i32, i32* %err.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [25 x i8*], [25 x i8*]* @error_msgs, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mvp_datapoint_t* @dp_alloc(i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %newdp = alloca %struct.mvp_datapoint_t*, align 8
  store i32 %type, i32* %type.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 32) #6
  %0 = bitcast i8* %call to %struct.mvp_datapoint_t*
  store %struct.mvp_datapoint_t* %0, %struct.mvp_datapoint_t** %newdp, align 8
  %1 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %newdp, align 8
  %id = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %1, i32 0, i32 0
  store i8* null, i8** %id, align 8
  %2 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %newdp, align 8
  %data = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %2, i32 0, i32 1
  store i8* null, i8** %data, align 8
  %3 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %newdp, align 8
  %datalen = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %3, i32 0, i32 3
  store i32 0, i32* %datalen, align 8
  %4 = load i32, i32* %type.addr, align 4
  %5 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %newdp, align 8
  %type1 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %5, i32 0, i32 4
  store i32 %4, i32* %type1, align 4
  %6 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %newdp, align 8
  %path = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %6, i32 0, i32 2
  store float* null, float** %path, align 8
  %7 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %newdp, align 8
  ret %struct.mvp_datapoint_t* %7
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_free(%struct.mvp_datapoint_t* noundef %dp, void (i8*)* noundef %free_func) #0 {
entry:
  %dp.addr = alloca %struct.mvp_datapoint_t*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  store %struct.mvp_datapoint_t* %dp, %struct.mvp_datapoint_t** %dp.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  %0 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %tobool = icmp ne %struct.mvp_datapoint_t* %0, null
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %1 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %path = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %1, i32 0, i32 2
  %2 = load float*, float** %path, align 8
  %tobool1 = icmp ne float* %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %path3 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %3, i32 0, i32 2
  %4 = load float*, float** %path3, align 8
  %5 = bitcast float* %4 to i8*
  call void @free(i8* noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %tobool4 = icmp ne void (i8*)* %6, null
  br i1 %tobool4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end
  %7 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %id = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %7, i32 0, i32 0
  %8 = load i8*, i8** %id, align 8
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  %9 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %10 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %id8 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %id8, align 8
  call void %9(i8* noundef %11)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5
  %12 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %data = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %12, i32 0, i32 1
  %13 = load i8*, i8** %data, align 8
  %tobool10 = icmp ne i8* %13, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %14 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %15 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %data12 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %15, i32 0, i32 1
  %16 = load i8*, i8** %data12, align 8
  call void %14(i8* noundef %16)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %17 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %18 = bitcast %struct.mvp_datapoint_t* %17 to i8*
  call void @free(i8* noundef %18) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mvptree_t* @mvptree_alloc(%struct.mvptree_t* noundef %tree, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* noundef %distance, i32 noundef %bf, i32 noundef %p, i32 noundef %k) #0 {
entry:
  %retval = alloca %struct.mvptree_t*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %distance.addr = alloca float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, align 8
  %bf.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %retTree = alloca %struct.mvptree_t*, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %distance, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance.addr, align 8
  store i32 %bf, i32* %bf.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance.addr, align 8
  %cmp = icmp eq float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.mvptree_t* null, %struct.mvptree_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %cmp1 = icmp eq %struct.mvptree_t* %1, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = call noalias i8* @malloc(i64 noundef 72) #6
  %2 = bitcast i8* %call to %struct.mvptree_t*
  store %struct.mvptree_t* %2, %struct.mvptree_t** %retTree, align 8
  %3 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %cmp3 = icmp eq %struct.mvptree_t* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store %struct.mvptree_t* null, %struct.mvptree_t** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.then2
  br label %if.end6

if.else:                                          ; preds = %if.end
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  store %struct.mvptree_t* %4, %struct.mvptree_t** %retTree, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end5
  %5 = load i32, i32* %bf.addr, align 4
  %6 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %6, i32 0, i32 0
  store i32 %5, i32* %branchfactor, align 8
  %7 = load i32, i32* %p.addr, align 4
  %8 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %pathlength = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %8, i32 0, i32 1
  store i32 %7, i32* %pathlength, align 4
  %9 = load i32, i32* %k.addr, align 4
  %10 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %leafcap = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %10, i32 0, i32 2
  store i32 %9, i32* %leafcap, align 8
  %11 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance.addr, align 8
  %12 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %12, i32 0, i32 11
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %11, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  %13 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %datatype = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %13, i32 0, i32 5
  store i32 0, i32* %datatype, align 4
  %14 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %node = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %14, i32 0, i32 10
  store %union.node_t* null, %union.node_t** %node, align 8
  %15 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %fd = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %15, i32 0, i32 3
  store i32 0, i32* %fd, align 4
  %16 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %k7 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %16, i32 0, i32 4
  store i32 0, i32* %k7, align 8
  %17 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %size = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %17, i32 0, i32 7
  store i64 0, i64* %size, align 8
  %18 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %pos = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %18, i32 0, i32 6
  store i64 0, i64* %pos, align 8
  %19 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %buf = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %19, i32 0, i32 9
  store i8* null, i8** %buf, align 8
  %call8 = call i64 @sysconf(i32 noundef 30) #6
  %20 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  %pgsize = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %20, i32 0, i32 8
  store i64 %call8, i64* %pgsize, align 8
  %21 = load %struct.mvptree_t*, %struct.mvptree_t** %retTree, align 8
  store %struct.mvptree_t* %21, %struct.mvptree_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %22 = load %struct.mvptree_t*, %struct.mvptree_t** %retval, align 8
  ret %struct.mvptree_t* %22
}

; Function Attrs: nounwind
declare dso_local i64 @sysconf(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_nan(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %var = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  store float %0, float* %var, align 4
  %1 = load float, float* %var, align 4
  %2 = load float, float* %var, align 4
  %cmp = fcmp une float %1, %2
  %3 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node_t* @create_leaf(i32 noundef %leafcap) #0 {
entry:
  %leafcap.addr = alloca i32, align 4
  %node = alloca %union.node_t*, align 8
  store i32 %leafcap, i32* %leafcap.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 56) #6
  %0 = bitcast i8* %call to %union.node_t*
  store %union.node_t* %0, %union.node_t** %node, align 8
  %1 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf = bitcast %union.node_t* %1 to %struct.node_leaf_t*
  %sv1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf, i32 0, i32 1
  store %struct.mvp_datapoint_t* null, %struct.mvp_datapoint_t** %sv1, align 8
  %2 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf1 = bitcast %union.node_t* %2 to %struct.node_leaf_t*
  %sv2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf1, i32 0, i32 2
  store %struct.mvp_datapoint_t* null, %struct.mvp_datapoint_t** %sv2, align 8
  %3 = load i32, i32* %leafcap.addr, align 4
  %conv = zext i32 %3 to i64
  %call2 = call noalias i8* @calloc(i64 noundef %conv, i64 noundef 8) #6
  %4 = bitcast i8* %call2 to %struct.mvp_datapoint_t**
  %5 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf3 = bitcast %union.node_t* %5 to %struct.node_leaf_t*
  %points = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf3, i32 0, i32 3
  store %struct.mvp_datapoint_t** %4, %struct.mvp_datapoint_t*** %points, align 8
  %6 = load i32, i32* %leafcap.addr, align 4
  %conv4 = zext i32 %6 to i64
  %call5 = call noalias i8* @calloc(i64 noundef %conv4, i64 noundef 4) #6
  %7 = bitcast i8* %call5 to float*
  %8 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf6 = bitcast %union.node_t* %8 to %struct.node_leaf_t*
  %d1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf6, i32 0, i32 4
  store float* %7, float** %d1, align 8
  %9 = load i32, i32* %leafcap.addr, align 4
  %conv7 = zext i32 %9 to i64
  %call8 = call noalias i8* @calloc(i64 noundef %conv7, i64 noundef 4) #6
  %10 = bitcast i8* %call8 to float*
  %11 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf9 = bitcast %union.node_t* %11 to %struct.node_leaf_t*
  %d2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf9, i32 0, i32 5
  store float* %10, float** %d2, align 8
  %12 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf10 = bitcast %union.node_t* %12 to %struct.node_leaf_t*
  %nbpoints = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf10, i32 0, i32 6
  store i32 0, i32* %nbpoints, align 8
  %13 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf11 = bitcast %union.node_t* %13 to %struct.node_leaf_t*
  %type = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf11, i32 0, i32 0
  store i32 2, i32* %type, align 8
  %14 = load %union.node_t*, %union.node_t** %node, align 8
  ret %union.node_t* %14
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node_t* @create_internal(i32 noundef %bf) #0 {
entry:
  %bf.addr = alloca i32, align 4
  %node = alloca %union.node_t*, align 8
  store i32 %bf, i32* %bf.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 56) #6
  %0 = bitcast i8* %call to %union.node_t*
  store %union.node_t* %0, %union.node_t** %node, align 8
  %1 = load %union.node_t*, %union.node_t** %node, align 8
  %internal = bitcast %union.node_t* %1 to %struct.node_internal_t*
  %sv1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 1
  store %struct.mvp_datapoint_t* null, %struct.mvp_datapoint_t** %sv1, align 8
  %2 = load %union.node_t*, %union.node_t** %node, align 8
  %internal1 = bitcast %union.node_t* %2 to %struct.node_internal_t*
  %sv2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal1, i32 0, i32 2
  store %struct.mvp_datapoint_t* null, %struct.mvp_datapoint_t** %sv2, align 8
  %3 = load i32, i32* %bf.addr, align 4
  %sub = sub i32 %3, 1
  %conv = zext i32 %sub to i64
  %call2 = call noalias i8* @calloc(i64 noundef %conv, i64 noundef 4) #6
  %4 = bitcast i8* %call2 to float*
  %5 = load %union.node_t*, %union.node_t** %node, align 8
  %internal3 = bitcast %union.node_t* %5 to %struct.node_internal_t*
  %M1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal3, i32 0, i32 3
  store float* %4, float** %M1, align 8
  %6 = load i32, i32* %bf.addr, align 4
  %conv4 = zext i32 %6 to i64
  %call5 = call noalias i8* @calloc(i64 noundef %conv4, i64 noundef 4) #6
  %7 = bitcast i8* %call5 to float*
  %8 = load %union.node_t*, %union.node_t** %node, align 8
  %internal6 = bitcast %union.node_t* %8 to %struct.node_internal_t*
  %M2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal6, i32 0, i32 4
  store float* %7, float** %M2, align 8
  %9 = load i32, i32* %bf.addr, align 4
  %10 = load i32, i32* %bf.addr, align 4
  %mul = mul i32 %9, %10
  %conv7 = zext i32 %mul to i64
  %call8 = call noalias i8* @calloc(i64 noundef %conv7, i64 noundef 8) #6
  %11 = bitcast i8* %call8 to i8**
  %12 = load %union.node_t*, %union.node_t** %node, align 8
  %internal9 = bitcast %union.node_t* %12 to %struct.node_internal_t*
  %child_nodes = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal9, i32 0, i32 5
  store i8** %11, i8*** %child_nodes, align 8
  %13 = load %union.node_t*, %union.node_t** %node, align 8
  %internal10 = bitcast %union.node_t* %13 to %struct.node_internal_t*
  %type = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal10, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %14 = load %union.node_t*, %union.node_t** %node, align 8
  ret %union.node_t* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_node(%union.node_t* noundef %node) #0 {
entry:
  %node.addr = alloca %union.node_t*, align 8
  store %union.node_t* %node, %union.node_t** %node.addr, align 8
  %0 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %tobool = icmp ne %union.node_t* %0, null
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %1 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf = bitcast %union.node_t* %1 to %struct.node_leaf_t*
  %type = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf2 = bitcast %union.node_t* %3 to %struct.node_leaf_t*
  %points = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf2, i32 0, i32 3
  %4 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points, align 8
  %5 = bitcast %struct.mvp_datapoint_t** %4 to i8*
  call void @free(i8* noundef %5) #6
  %6 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf3 = bitcast %union.node_t* %6 to %struct.node_leaf_t*
  %d1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf3, i32 0, i32 4
  %7 = load float*, float** %d1, align 8
  %8 = bitcast float* %7 to i8*
  call void @free(i8* noundef %8) #6
  %9 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf4 = bitcast %union.node_t* %9 to %struct.node_leaf_t*
  %d2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf4, i32 0, i32 5
  %10 = load float*, float** %d2, align 8
  %11 = bitcast float* %10 to i8*
  call void @free(i8* noundef %11) #6
  br label %if.end11

if.else:                                          ; preds = %if.then
  %12 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal = bitcast %union.node_t* %12 to %struct.node_internal_t*
  %type5 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 0
  %13 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %14 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal8 = bitcast %union.node_t* %14 to %struct.node_internal_t*
  %M1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal8, i32 0, i32 3
  %15 = load float*, float** %M1, align 8
  %16 = bitcast float* %15 to i8*
  call void @free(i8* noundef %16) #6
  %17 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal9 = bitcast %union.node_t* %17 to %struct.node_internal_t*
  %M2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal9, i32 0, i32 4
  %18 = load float*, float** %M2, align 8
  %19 = bitcast float* %18 to i8*
  call void @free(i8* noundef %19) #6
  %20 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal10 = bitcast %union.node_t* %20 to %struct.node_internal_t*
  %child_nodes = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal10, i32 0, i32 5
  %21 = load i8**, i8*** %child_nodes, align 8
  %22 = bitcast i8** %21 to i8*
  call void @free(i8* noundef %22) #6
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then1
  %23 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %24 = bitcast %union.node_t* %23 to i8*
  call void @free(i8* noundef %24) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mvptree_clear(%struct.mvptree_t* noundef %tree, %union.node_t* noundef %node, void (i8*)* noundef %free_func, i32 noundef %lvl) #0 {
entry:
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %node.addr = alloca %union.node_t*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  %lvl.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %fanout = alloca i32, align 4
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store %union.node_t* %node, %union.node_t** %node.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  store i32 %lvl, i32* %lvl.addr, align 4
  %0 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %tobool = icmp ne %union.node_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal = bitcast %union.node_t* %1 to %struct.node_internal_t*
  %type = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %3 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %3, i32 0, i32 0
  %4 = load i32, i32* %branchfactor, align 8
  %5 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor2 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %5, i32 0, i32 0
  %6 = load i32, i32* %branchfactor2, align 8
  %mul = mul nsw i32 %4, %6
  store i32 %mul, i32* %fanout, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %fanout, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %10 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal4 = bitcast %union.node_t* %10 to %struct.node_internal_t*
  %child_nodes = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal4, i32 0, i32 5
  %11 = load i8**, i8*** %child_nodes, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %14 = bitcast i8* %13 to %union.node_t*
  %15 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %16 = load i32, i32* %lvl.addr, align 4
  %add = add nsw i32 %16, 1
  call void @_mvptree_clear(%struct.mvptree_t* noundef %9, %union.node_t* noundef %14, void (i8*)* noundef %15, i32 noundef %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %18 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal5 = bitcast %union.node_t* %18 to %struct.node_internal_t*
  %sv1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal5, i32 0, i32 1
  %19 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1, align 8
  %20 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @dp_free(%struct.mvp_datapoint_t* noundef %19, void (i8*)* noundef %20)
  %21 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal6 = bitcast %union.node_t* %21 to %struct.node_internal_t*
  %sv2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal6, i32 0, i32 2
  %22 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2, align 8
  %23 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @dp_free(%struct.mvp_datapoint_t* noundef %22, void (i8*)* noundef %23)
  br label %if.end20

if.else:                                          ; preds = %if.end
  %24 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf = bitcast %union.node_t* %24 to %struct.node_leaf_t*
  %sv17 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf, i32 0, i32 1
  %25 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv17, align 8
  %26 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @dp_free(%struct.mvp_datapoint_t* noundef %25, void (i8*)* noundef %26)
  %27 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf8 = bitcast %union.node_t* %27 to %struct.node_leaf_t*
  %sv29 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf8, i32 0, i32 2
  %28 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv29, align 8
  %29 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @dp_free(%struct.mvp_datapoint_t* noundef %28, void (i8*)* noundef %29)
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc17, %if.else
  %30 = load i32, i32* %i, align 4
  %31 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf11 = bitcast %union.node_t* %31 to %struct.node_leaf_t*
  %nbpoints = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf11, i32 0, i32 6
  %32 = load i32, i32* %nbpoints, align 8
  %cmp12 = icmp ult i32 %30, %32
  br i1 %cmp12, label %for.body13, label %for.end19

for.body13:                                       ; preds = %for.cond10
  %33 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf14 = bitcast %union.node_t* %33 to %struct.node_leaf_t*
  %points = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf14, i32 0, i32 3
  %34 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %35 to i64
  %arrayidx16 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %34, i64 %idxprom15
  %36 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx16, align 8
  %37 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @dp_free(%struct.mvp_datapoint_t* noundef %36, void (i8*)* noundef %37)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body13
  %38 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %38, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond10, !llvm.loop !6

for.end19:                                        ; preds = %for.cond10
  br label %if.end20

if.end20:                                         ; preds = %for.end19, %for.end
  %39 = load %union.node_t*, %union.node_t** %node.addr, align 8
  call void @free_node(%union.node_t* noundef %39)
  br label %return

return:                                           ; preds = %if.end20, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvptree_clear(%struct.mvptree_t* noundef %tree, void (i8*)* noundef %free_func) #0 {
entry:
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %tobool = icmp ne %struct.mvptree_t* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %1, i32 0, i32 10
  %2 = load %union.node_t*, %union.node_t** %node, align 8
  %tobool1 = icmp ne %union.node_t* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node2 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %4, i32 0, i32 10
  %5 = load %union.node_t*, %union.node_t** %node2, align 8
  %6 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @_mvptree_clear(%struct.mvptree_t* noundef %3, %union.node_t* noundef %5, void (i8*)* noundef %6, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_vantage_points(%struct.mvp_datapoint_t** noundef %points, i32 noundef %nb, i32* noundef %sv1_pos, i32* noundef %sv2_pos, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* noundef %dist) #0 {
entry:
  %retval = alloca i32, align 4
  %points.addr = alloca %struct.mvp_datapoint_t**, align 8
  %nb.addr = alloca i32, align 4
  %sv1_pos.addr = alloca i32*, align 8
  %sv2_pos.addr = alloca i32*, align 8
  %dist.addr = alloca float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, align 8
  %max_dist = alloca float, align 4
  %d = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.mvp_datapoint_t** %points, %struct.mvp_datapoint_t*** %points.addr, align 8
  store i32 %nb, i32* %nb.addr, align 4
  store i32* %sv1_pos, i32** %sv1_pos.addr, align 8
  store i32* %sv2_pos, i32** %sv2_pos.addr, align 8
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %dist, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist.addr, align 8
  %0 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %tobool = icmp ne %struct.mvp_datapoint_t** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %sv1_pos.addr, align 8
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32*, i32** %sv2_pos.addr, align 8
  %tobool3 = icmp ne i32* %2, null
  br i1 %tobool3, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist.addr, align 8
  %tobool5 = icmp ne float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %3, null
  br i1 %tobool5, label %lor.lhs.false6, label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, i32* %nb.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false6
  %5 = load i32, i32* %nb.addr, align 4
  %cmp7 = icmp uge i32 %5, 1
  %6 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 0, i32 -1
  %7 = load i32*, i32** %sv1_pos.addr, align 8
  store i32 %cond, i32* %7, align 4
  %8 = load i32*, i32** %sv2_pos.addr, align 8
  store i32 -1, i32* %8, align 4
  store float 0.000000e+00, float* %max_dist, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nb.addr, align 4
  %cmp8 = icmp ult i32 %9, %10
  br i1 %cmp8, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nb.addr, align 4
  %cmp10 = icmp ult i32 %12, %13
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %14 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist.addr, align 8
  %15 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %15, i64 %idxprom
  %17 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx, align 8
  %18 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %18, i64 %idxprom12
  %20 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx13, align 8
  %call = call float %14(%struct.mvp_datapoint_t* noundef %17, %struct.mvp_datapoint_t* noundef %20)
  store float %call, float* %d, align 4
  %21 = load float, float* %d, align 4
  %call14 = call i32 @is_nan(float noundef %21)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %for.body11
  %22 = load float, float* %d, align 4
  %cmp17 = fcmp olt float %22, 0.000000e+00
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false16, %for.body11
  store i32 -2, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false16
  %23 = load float, float* %d, align 4
  %24 = load float, float* %max_dist, align 4
  %cmp20 = fcmp ogt float %23, %24
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  %25 = load float, float* %d, align 4
  store float %25, float* %max_dist, align 4
  %26 = load i32, i32* %i, align 4
  %27 = load i32*, i32** %sv1_pos.addr, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %j, align 4
  %29 = load i32*, i32** %sv2_pos.addr, align 8
  store i32 %28, i32* %29, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond9, !llvm.loop !7

for.end:                                          ; preds = %for.cond9
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %31 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %31, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end25:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end25, %if.then18, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_splits(%struct.mvp_datapoint_t** noundef %points, i32 noundef %nb, %struct.mvp_datapoint_t* noundef %vp, %struct.mvptree_t* noundef %tree, float* noundef %M, i32 noundef %lengthM) #0 {
entry:
  %retval = alloca i32, align 4
  %points.addr = alloca %struct.mvp_datapoint_t**, align 8
  %nb.addr = alloca i32, align 4
  %vp.addr = alloca %struct.mvp_datapoint_t*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %M.addr = alloca float*, align 8
  %lengthM.addr = alloca i32, align 4
  %distfunc = alloca float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, align 8
  %dist5 = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min_pos = alloca i32, align 4
  %tmp = alloca float, align 4
  %index = alloca i32, align 4
  store %struct.mvp_datapoint_t** %points, %struct.mvp_datapoint_t*** %points.addr, align 8
  store i32 %nb, i32* %nb.addr, align 4
  store %struct.mvp_datapoint_t* %vp, %struct.mvp_datapoint_t** %vp.addr, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store float* %M, float** %M.addr, align 8
  store i32 %lengthM, i32* %lengthM.addr, align 4
  %0 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %tobool = icmp ne %struct.mvp_datapoint_t** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %nb.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load float*, float** %M.addr, align 8
  %tobool2 = icmp ne float* %2, null
  br i1 %tobool2, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = load i32, i32* %lengthM.addr, align 4
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %4, i32 0, i32 11
  %5 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %5, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distfunc, align 8
  %6 = load i32, i32* %nb.addr, align 4
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %7 = bitcast i8* %call to float*
  store float* %7, float** %dist5, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nb.addr, align 4
  %cmp6 = icmp ult i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distfunc, align 8
  %11 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %11, i64 %idxprom
  %13 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx, align 8
  %14 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %vp.addr, align 8
  %call8 = call float %10(%struct.mvp_datapoint_t* noundef %13, %struct.mvp_datapoint_t* noundef %14)
  %15 = load float*, float** %dist5, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds float, float* %15, i64 %idxprom9
  store float %call8, float* %arrayidx10, align 4
  %17 = load float*, float** %dist5, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds float, float* %17, i64 %idxprom11
  %19 = load float, float* %arrayidx12, align 4
  %call13 = call i32 @is_nan(float noundef %19)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then20, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %for.body
  %20 = load float*, float** %dist5, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds float, float* %20, i64 %idxprom16
  %22 = load float, float* %arrayidx17, align 4
  %cmp18 = fcmp olt float %22, 0.000000e+00
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false15, %for.body
  %23 = load float*, float** %dist5, align 8
  %24 = bitcast float* %23 to i8*
  call void @free(i8* noundef %24) #6
  store i32 -2, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false15
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc53, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %nb.addr, align 4
  %sub = sub i32 %27, 1
  %cmp23 = icmp ult i32 %26, %sub
  br i1 %cmp23, label %for.body25, label %for.end55

for.body25:                                       ; preds = %for.cond22
  %28 = load i32, i32* %i, align 4
  store i32 %28, i32* %min_pos, align 4
  %29 = load i32, i32* %i, align 4
  %add = add nsw i32 %29, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc38, %for.body25
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %nb.addr, align 4
  %cmp27 = icmp ult i32 %30, %31
  br i1 %cmp27, label %for.body29, label %for.end40

for.body29:                                       ; preds = %for.cond26
  %32 = load float*, float** %dist5, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds float, float* %32, i64 %idxprom30
  %34 = load float, float* %arrayidx31, align 4
  %35 = load float*, float** %dist5, align 8
  %36 = load i32, i32* %min_pos, align 4
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds float, float* %35, i64 %idxprom32
  %37 = load float, float* %arrayidx33, align 4
  %cmp34 = fcmp olt float %34, %37
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body29
  %38 = load i32, i32* %j, align 4
  store i32 %38, i32* %min_pos, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.body29
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %39 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %39, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond26, !llvm.loop !10

for.end40:                                        ; preds = %for.cond26
  %40 = load i32, i32* %min_pos, align 4
  %41 = load i32, i32* %i, align 4
  %cmp41 = icmp ne i32 %40, %41
  br i1 %cmp41, label %if.then43, label %if.end52

if.then43:                                        ; preds = %for.end40
  %42 = load float*, float** %dist5, align 8
  %43 = load i32, i32* %min_pos, align 4
  %idxprom44 = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds float, float* %42, i64 %idxprom44
  %44 = load float, float* %arrayidx45, align 4
  store float %44, float* %tmp, align 4
  %45 = load float*, float** %dist5, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %46 to i64
  %arrayidx47 = getelementptr inbounds float, float* %45, i64 %idxprom46
  %47 = load float, float* %arrayidx47, align 4
  %48 = load float*, float** %dist5, align 8
  %49 = load i32, i32* %min_pos, align 4
  %idxprom48 = sext i32 %49 to i64
  %arrayidx49 = getelementptr inbounds float, float* %48, i64 %idxprom48
  store float %47, float* %arrayidx49, align 4
  %50 = load float, float* %tmp, align 4
  %51 = load float*, float** %dist5, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds float, float* %51, i64 %idxprom50
  store float %50, float* %arrayidx51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then43, %for.end40
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %53 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %53, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond22, !llvm.loop !11

for.end55:                                        ; preds = %for.cond22
  store i32 0, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc76, %for.end55
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %lengthM.addr, align 4
  %cmp57 = icmp ult i32 %54, %55
  br i1 %cmp57, label %for.body59, label %for.end78

for.body59:                                       ; preds = %for.cond56
  %56 = load i32, i32* %i, align 4
  %add60 = add nsw i32 %56, 1
  %57 = load i32, i32* %nb.addr, align 4
  %mul61 = mul i32 %add60, %57
  %58 = load i32, i32* %lengthM.addr, align 4
  %add62 = add i32 %58, 1
  %div = udiv i32 %mul61, %add62
  store i32 %div, i32* %index, align 4
  %59 = load i32, i32* %index, align 4
  %cmp63 = icmp sle i32 %59, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %for.body59
  store i32 0, i32* %index, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %for.body59
  %60 = load i32, i32* %index, align 4
  %61 = load i32, i32* %nb.addr, align 4
  %cmp67 = icmp uge i32 %60, %61
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %62 = load i32, i32* %nb.addr, align 4
  %sub70 = sub i32 %62, 1
  store i32 %sub70, i32* %index, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66
  %63 = load float*, float** %dist5, align 8
  %64 = load i32, i32* %index, align 4
  %idxprom72 = sext i32 %64 to i64
  %arrayidx73 = getelementptr inbounds float, float* %63, i64 %idxprom72
  %65 = load float, float* %arrayidx73, align 4
  %66 = load float*, float** %M.addr, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %67 to i64
  %arrayidx75 = getelementptr inbounds float, float* %66, i64 %idxprom74
  store float %65, float* %arrayidx75, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %if.end71
  %68 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %68, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond56, !llvm.loop !12

for.end78:                                        ; preds = %for.cond56
  %69 = load float*, float** %dist5, align 8
  %70 = bitcast float* %69 to i8*
  call void @free(i8* noundef %70) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end78, %if.then20, %if.then
  %71 = load i32, i32* %retval, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvp_datapoint_t*** @sort_points(%struct.mvp_datapoint_t** noundef %points, i32 noundef %nbpoints, i32 noundef %sv1_pos, i32 noundef %sv2_pos, %struct.mvp_datapoint_t* noundef %vp, %struct.mvptree_t* noundef %tree, i32** noundef %counts, float* noundef %pivots) #0 {
entry:
  %retval = alloca %struct.mvp_datapoint_t***, align 8
  %points.addr = alloca %struct.mvp_datapoint_t**, align 8
  %nbpoints.addr = alloca i32, align 4
  %sv1_pos.addr = alloca i32, align 4
  %sv2_pos.addr = alloca i32, align 4
  %vp.addr = alloca %struct.mvp_datapoint_t*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %counts.addr = alloca i32**, align 8
  %pivots.addr = alloca float*, align 8
  %distfunc = alloca float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, align 8
  %bf = alloca i32, align 4
  %lengthM1 = alloca i32, align 4
  %bins = alloca %struct.mvp_datapoint_t***, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca float, align 4
  store %struct.mvp_datapoint_t** %points, %struct.mvp_datapoint_t*** %points.addr, align 8
  store i32 %nbpoints, i32* %nbpoints.addr, align 4
  store i32 %sv1_pos, i32* %sv1_pos.addr, align 4
  store i32 %sv2_pos, i32* %sv2_pos.addr, align 4
  store %struct.mvp_datapoint_t* %vp, %struct.mvp_datapoint_t** %vp.addr, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store i32** %counts, i32*** %counts.addr, align 8
  store float* %pivots, float** %pivots.addr, align 8
  %0 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %tobool = icmp ne %struct.mvp_datapoint_t** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %vp.addr, align 8
  %tobool1 = icmp ne %struct.mvp_datapoint_t* %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %tobool3 = icmp ne %struct.mvptree_t* %2, null
  br i1 %tobool3, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32**, i32*** %counts.addr, align 8
  %tobool5 = icmp ne i32** %3, null
  br i1 %tobool5, label %lor.lhs.false6, label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load float*, float** %pivots.addr, align 8
  %tobool7 = icmp ne float* %4, null
  br i1 %tobool7, label %lor.lhs.false8, label %if.then

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, i32* %nbpoints.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store %struct.mvp_datapoint_t*** null, %struct.mvp_datapoint_t**** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false8
  %6 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %6, i32 0, i32 11
  %7 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %7, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distfunc, align 8
  %8 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %8, i32 0, i32 0
  %9 = load i32, i32* %branchfactor, align 8
  store i32 %9, i32* %bf, align 4
  %10 = load i32, i32* %bf, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %lengthM1, align 4
  %11 = load i32, i32* %bf, align 4
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %12 = bitcast i8* %call to %struct.mvp_datapoint_t***
  store %struct.mvp_datapoint_t*** %12, %struct.mvp_datapoint_t**** %bins, align 8
  %13 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %tobool9 = icmp ne %struct.mvp_datapoint_t*** %13, null
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  store %struct.mvp_datapoint_t*** null, %struct.mvp_datapoint_t**** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end
  %14 = load i32, i32* %bf, align 4
  %conv12 = sext i32 %14 to i64
  %call13 = call noalias i8* @calloc(i64 noundef %conv12, i64 noundef 4) #6
  %15 = bitcast i8* %call13 to i32*
  %16 = load i32**, i32*** %counts.addr, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32**, i32*** %counts.addr, align 8
  %tobool14 = icmp ne i32** %17, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  %18 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %19 = bitcast %struct.mvp_datapoint_t*** %18 to i8*
  call void @free(i8* noundef %19) #6
  store %struct.mvp_datapoint_t*** null, %struct.mvp_datapoint_t**** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %bf, align 4
  %cmp17 = icmp slt i32 %20, %21
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %nbpoints.addr, align 4
  %conv19 = zext i32 %22 to i64
  %mul20 = mul i64 %conv19, 8
  %call21 = call noalias i8* @malloc(i64 noundef %mul20) #6
  %23 = bitcast i8* %call21 to %struct.mvp_datapoint_t**
  %24 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %24, i64 %idxprom
  store %struct.mvp_datapoint_t** %23, %struct.mvp_datapoint_t*** %arrayidx, align 8
  %26 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %26, i64 %idxprom22
  %28 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx23, align 8
  %tobool24 = icmp ne %struct.mvp_datapoint_t** %28, null
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.body
  store %struct.mvp_datapoint_t*** null, %struct.mvp_datapoint_t**** %retval, align 8
  br label %return

if.end26:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc90, %for.end
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %nbpoints.addr, align 4
  %cmp28 = icmp ult i32 %30, %31
  br i1 %cmp28, label %for.body30, label %for.end92

for.body30:                                       ; preds = %for.cond27
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %sv1_pos.addr, align 4
  %cmp31 = icmp eq i32 %32, %33
  br i1 %cmp31, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %for.body30
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %sv2_pos.addr, align 4
  %cmp34 = icmp eq i32 %34, %35
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false33, %for.body30
  br label %for.inc90

if.end37:                                         ; preds = %lor.lhs.false33
  %36 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distfunc, align 8
  %37 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %vp.addr, align 8
  %38 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %39 to i64
  %arrayidx39 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %38, i64 %idxprom38
  %40 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx39, align 8
  %call40 = call float %36(%struct.mvp_datapoint_t* noundef %37, %struct.mvp_datapoint_t* noundef %40)
  store float %call40, float* %d, align 4
  %41 = load float, float* %d, align 4
  %call41 = call i32 @is_nan(float noundef %41)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end37
  %42 = load float, float* %d, align 4
  %cmp44 = fcmp olt float %42, 0.000000e+00
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false43, %if.end37
  %43 = load i32**, i32*** %counts.addr, align 8
  %44 = bitcast i32** %43 to i8*
  call void @free(i8* noundef %44) #6
  %45 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %46 = bitcast %struct.mvp_datapoint_t*** %45 to i8*
  call void @free(i8* noundef %46) #6
  store %struct.mvp_datapoint_t*** null, %struct.mvp_datapoint_t**** %retval, align 8
  br label %return

if.end47:                                         ; preds = %lor.lhs.false43
  store i32 0, i32* %k, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc69, %if.end47
  %47 = load i32, i32* %k, align 4
  %48 = load i32, i32* %lengthM1, align 4
  %cmp49 = icmp slt i32 %47, %48
  br i1 %cmp49, label %for.body51, label %for.end71

for.body51:                                       ; preds = %for.cond48
  %49 = load float, float* %d, align 4
  %50 = load float*, float** %pivots.addr, align 8
  %51 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %51 to i64
  %arrayidx53 = getelementptr inbounds float, float* %50, i64 %idxprom52
  %52 = load float, float* %arrayidx53, align 4
  %cmp54 = fcmp ole float %49, %52
  br i1 %cmp54, label %if.then56, label %if.end68

if.then56:                                        ; preds = %for.body51
  %53 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %54 to i64
  %arrayidx58 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %53, i64 %idxprom57
  %55 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx58, align 8
  %56 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %57 = load i32, i32* %k, align 4
  %idxprom59 = sext i32 %57 to i64
  %arrayidx60 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %56, i64 %idxprom59
  %58 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx60, align 8
  %59 = load i32**, i32*** %counts.addr, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %61 to i64
  %arrayidx62 = getelementptr inbounds i32, i32* %60, i64 %idxprom61
  %62 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %62 to i64
  %arrayidx64 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %58, i64 %idxprom63
  store %struct.mvp_datapoint_t* %55, %struct.mvp_datapoint_t** %arrayidx64, align 8
  %63 = load i32**, i32*** %counts.addr, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %65 to i64
  %arrayidx66 = getelementptr inbounds i32, i32* %64, i64 %idxprom65
  %66 = load i32, i32* %arrayidx66, align 4
  %inc67 = add nsw i32 %66, 1
  store i32 %inc67, i32* %arrayidx66, align 4
  br label %for.end71

if.end68:                                         ; preds = %for.body51
  br label %for.inc69

for.inc69:                                        ; preds = %if.end68
  %67 = load i32, i32* %k, align 4
  %inc70 = add nsw i32 %67, 1
  store i32 %inc70, i32* %k, align 4
  br label %for.cond48, !llvm.loop !14

for.end71:                                        ; preds = %if.then56, %for.cond48
  %68 = load float, float* %d, align 4
  %69 = load float*, float** %pivots.addr, align 8
  %70 = load i32, i32* %lengthM1, align 4
  %sub72 = sub nsw i32 %70, 1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds float, float* %69, i64 %idxprom73
  %71 = load float, float* %arrayidx74, align 4
  %cmp75 = fcmp ogt float %68, %71
  br i1 %cmp75, label %if.then77, label %if.end89

if.then77:                                        ; preds = %for.end71
  %72 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %73 to i64
  %arrayidx79 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %72, i64 %idxprom78
  %74 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx79, align 8
  %75 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %76 = load i32, i32* %lengthM1, align 4
  %idxprom80 = sext i32 %76 to i64
  %arrayidx81 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %75, i64 %idxprom80
  %77 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx81, align 8
  %78 = load i32**, i32*** %counts.addr, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %lengthM1, align 4
  %idxprom82 = sext i32 %80 to i64
  %arrayidx83 = getelementptr inbounds i32, i32* %79, i64 %idxprom82
  %81 = load i32, i32* %arrayidx83, align 4
  %idxprom84 = sext i32 %81 to i64
  %arrayidx85 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %77, i64 %idxprom84
  store %struct.mvp_datapoint_t* %74, %struct.mvp_datapoint_t** %arrayidx85, align 8
  %82 = load i32**, i32*** %counts.addr, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %lengthM1, align 4
  %idxprom86 = sext i32 %84 to i64
  %arrayidx87 = getelementptr inbounds i32, i32* %83, i64 %idxprom86
  %85 = load i32, i32* %arrayidx87, align 4
  %inc88 = add nsw i32 %85, 1
  store i32 %inc88, i32* %arrayidx87, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then77, %for.end71
  br label %for.inc90

for.inc90:                                        ; preds = %if.end89, %if.then36
  %86 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %86, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond27, !llvm.loop !15

for.end92:                                        ; preds = %for.cond27
  %87 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  store %struct.mvp_datapoint_t*** %87, %struct.mvp_datapoint_t**** %retval, align 8
  br label %return

return:                                           ; preds = %for.end92, %if.then46, %if.then25, %if.then15, %if.then10, %if.then
  %88 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %retval, align 8
  ret %struct.mvp_datapoint_t*** %88
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %points, i32 noundef %nbpoints, %struct.mvp_datapoint_t* noundef %vp, %struct.mvptree_t* noundef %tree, i32 noundef %lvl) #0 {
entry:
  %retval = alloca i32, align 4
  %points.addr = alloca %struct.mvp_datapoint_t**, align 8
  %nbpoints.addr = alloca i32, align 4
  %vp.addr = alloca %struct.mvp_datapoint_t*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %lvl.addr = alloca i32, align 4
  %func = alloca float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %d = alloca float, align 4
  store %struct.mvp_datapoint_t** %points, %struct.mvp_datapoint_t*** %points.addr, align 8
  store i32 %nbpoints, i32* %nbpoints.addr, align 4
  store %struct.mvp_datapoint_t* %vp, %struct.mvp_datapoint_t** %vp.addr, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store i32 %lvl, i32* %lvl.addr, align 4
  %0 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %tobool = icmp ne %struct.mvp_datapoint_t** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %nbpoints.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %vp.addr, align 8
  %tobool2 = icmp ne %struct.mvp_datapoint_t* %2, null
  br i1 %tobool2, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %tobool4 = icmp ne %struct.mvptree_t* %3, null
  br i1 %tobool4, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %4, i32 0, i32 11
  %5 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  %tobool6 = icmp ne float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %5, null
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %6 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist7 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %6, i32 0, i32 11
  %7 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist7, align 8
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %7, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %func, align 8
  store i32 0, i32* %error, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nbpoints.addr, align 4
  %cmp8 = icmp ult i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %func, align 8
  %11 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %vp.addr, align 8
  %12 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %12, i64 %idxprom
  %14 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx, align 8
  %call = call float %10(%struct.mvp_datapoint_t* noundef %11, %struct.mvp_datapoint_t* noundef %14)
  store float %call, float* %d, align 4
  %15 = load float, float* %d, align 4
  %call9 = call i32 @is_nan(float noundef %15)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %for.body
  %16 = load float, float* %d, align 4
  %cmp12 = fcmp olt float %16, 0.000000e+00
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false11, %for.body
  store i32 -2, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false11
  %17 = load i32, i32* %lvl.addr, align 4
  %18 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %18, i32 0, i32 1
  %19 = load i32, i32* %pathlength, align 4
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  %20 = load float, float* %d, align 4
  %21 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %21, i64 %idxprom17
  %23 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx18, align 8
  %path = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %23, i32 0, i32 2
  %24 = load float*, float** %path, align 8
  %25 = load i32, i32* %lvl.addr, align 4
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds float, float* %24, i64 %idxprom19
  store float %20, float* %arrayidx20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %error, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then13, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node_t* @_mvptree_add(%struct.mvptree_t* noundef %tree, %union.node_t* noundef %node, %struct.mvp_datapoint_t** noundef %points, i32 noundef %nbpoints, i32* noundef %error, i32 noundef %lvl) #0 {
entry:
  %retval = alloca %union.node_t*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %node.addr = alloca %union.node_t*, align 8
  %points.addr = alloca %struct.mvp_datapoint_t**, align 8
  %nbpoints.addr = alloca i32, align 4
  %error.addr = alloca i32*, align 8
  %lvl.addr = alloca i32, align 4
  %new_node = alloca %union.node_t*, align 8
  %dist_fnc = alloca float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, align 8
  %bf = alloca i32, align 4
  %lengthM1 = alloca i32, align 4
  %sv1_pos = alloca i32, align 4
  %sv2_pos = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %i107 = alloca i32, align 4
  %j = alloca i32, align 4
  %binlengths = alloca i32*, align 8
  %bins = alloca %struct.mvp_datapoint_t***, align 8
  %bin2lengths = alloca i32*, align 8
  %bins2 = alloca %struct.mvp_datapoint_t***, align 8
  %j184 = alloca i32, align 4
  %child = alloca %union.node_t*, align 8
  %pos = alloca i32, align 4
  %count257 = alloca i32, align 4
  %new_nb = alloca i32, align 4
  %tmp_pts = alloca %struct.mvp_datapoint_t**, align 8
  %i316 = alloca i32, align 4
  %index = alloca i32, align 4
  %old_node = alloca %union.node_t*, align 8
  %binlengths375 = alloca i32*, align 8
  %bins376 = alloca %struct.mvp_datapoint_t***, align 8
  %i382 = alloca i32, align 4
  %j397 = alloca i32, align 4
  %bin2lengths420 = alloca i32*, align 8
  %bins2421 = alloca %struct.mvp_datapoint_t***, align 8
  %child452 = alloca %union.node_t*, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store %union.node_t* %node, %union.node_t** %node.addr, align 8
  store %struct.mvp_datapoint_t** %points, %struct.mvp_datapoint_t*** %points.addr, align 8
  store i32 %nbpoints, i32* %nbpoints.addr, align 4
  store i32* %error, i32** %error.addr, align 8
  store i32 %lvl, i32* %lvl.addr, align 4
  %0 = load %union.node_t*, %union.node_t** %node.addr, align 8
  store %union.node_t* %0, %union.node_t** %new_node, align 8
  %1 = load i32, i32* %nbpoints.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %2, %union.node_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %tobool = icmp ne %struct.mvptree_t* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %lvl.addr, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then4, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %tobool3 = icmp ne %struct.mvp_datapoint_t** %5, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.end
  %6 = load i32*, i32** %error.addr, align 8
  store i32 1, i32* %6, align 4
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end5:                                          ; preds = %lor.lhs.false2
  %7 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %7, i32 0, i32 11
  %8 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %8, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist_fnc, align 8
  %9 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %9, i32 0, i32 0
  %10 = load i32, i32* %branchfactor, align 8
  store i32 %10, i32* %bf, align 4
  %11 = load i32, i32* %bf, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* %lengthM1, align 4
  %12 = load %union.node_t*, %union.node_t** %new_node, align 8
  %cmp6 = icmp eq %union.node_t* %12, null
  br i1 %cmp6, label %if.then7, label %if.else226

if.then7:                                         ; preds = %if.end5
  %13 = load i32, i32* %nbpoints.addr, align 4
  %14 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %leafcap = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %14, i32 0, i32 2
  %15 = load i32, i32* %leafcap, align 8
  %add = add nsw i32 %15, 2
  %cmp8 = icmp ule i32 %13, %add
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  %16 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %leafcap10 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %16, i32 0, i32 2
  %17 = load i32, i32* %leafcap10, align 8
  %call = call %union.node_t* @create_leaf(i32 noundef %17)
  store %union.node_t* %call, %union.node_t** %new_node, align 8
  %18 = load %union.node_t*, %union.node_t** %new_node, align 8
  %tobool11 = icmp ne %union.node_t* %18, null
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then9
  %19 = load i32*, i32** %error.addr, align 8
  store i32 4, i32* %19, align 4
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.then9
  %20 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %21 = load i32, i32* %nbpoints.addr, align 4
  %22 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist14 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %22, i32 0, i32 11
  %23 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist14, align 8
  %call15 = call i32 @select_vantage_points(%struct.mvp_datapoint_t** noundef %20, i32 noundef %21, i32* noundef %sv1_pos, i32* noundef %sv2_pos, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* noundef %23)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %24 = load i32*, i32** %error.addr, align 8
  store i32 7, i32* %24, align 4
  %25 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %25)
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end13
  %26 = load i32, i32* %sv1_pos, align 4
  %cmp19 = icmp sge i32 %26, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  %27 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %28 = load i32, i32* %sv1_pos, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %27, i64 %idxprom
  %29 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mvp_datapoint_t* [ %29, %cond.true ], [ null, %cond.false ]
  %30 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf = bitcast %union.node_t* %30 to %struct.node_leaf_t*
  %sv1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf, i32 0, i32 1
  store %struct.mvp_datapoint_t* %cond, %struct.mvp_datapoint_t** %sv1, align 8
  %31 = load i32, i32* %sv2_pos, align 4
  %cmp20 = icmp sge i32 %31, 0
  br i1 %cmp20, label %cond.true21, label %cond.false24

cond.true21:                                      ; preds = %cond.end
  %32 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %33 = load i32, i32* %sv2_pos, align 4
  %idxprom22 = sext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %32, i64 %idxprom22
  %34 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx23, align 8
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true21
  %cond26 = phi %struct.mvp_datapoint_t* [ %34, %cond.true21 ], [ null, %cond.false24 ]
  %35 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf27 = bitcast %union.node_t* %35 to %struct.node_leaf_t*
  %sv2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf27, i32 0, i32 2
  store %struct.mvp_datapoint_t* %cond26, %struct.mvp_datapoint_t** %sv2, align 8
  %36 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %37 = load i32, i32* %nbpoints.addr, align 4
  %38 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf28 = bitcast %union.node_t* %38 to %struct.node_leaf_t*
  %sv129 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf28, i32 0, i32 1
  %39 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv129, align 8
  %40 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %41 = load i32, i32* %lvl.addr, align 4
  %call30 = call i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %36, i32 noundef %37, %struct.mvp_datapoint_t* noundef %39, %struct.mvptree_t* noundef %40, i32 noundef %41)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %cond.end25
  %42 = load i32*, i32** %error.addr, align 8
  store i32 8, i32* %42, align 4
  %43 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %43)
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end33:                                         ; preds = %cond.end25
  %44 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf34 = bitcast %union.node_t* %44 to %struct.node_leaf_t*
  %sv235 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf34, i32 0, i32 2
  %45 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv235, align 8
  %tobool36 = icmp ne %struct.mvp_datapoint_t* %45, null
  br i1 %tobool36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end33
  %46 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %47 = load i32, i32* %nbpoints.addr, align 4
  %48 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf38 = bitcast %union.node_t* %48 to %struct.node_leaf_t*
  %sv239 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf38, i32 0, i32 2
  %49 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv239, align 8
  %50 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %51 = load i32, i32* %lvl.addr, align 4
  %add40 = add nsw i32 %51, 1
  %call41 = call i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %46, i32 noundef %47, %struct.mvp_datapoint_t* noundef %49, %struct.mvptree_t* noundef %50, i32 noundef %add40)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then37
  %52 = load i32*, i32** %error.addr, align 8
  store i32 9, i32* %52, align 4
  %53 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %53)
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end44:                                         ; preds = %if.then37
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end33
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end45
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %nbpoints.addr, align 4
  %cmp46 = icmp ult i32 %54, %55
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %sv1_pos, align 4
  %cmp47 = icmp eq i32 %56, %57
  br i1 %cmp47, label %if.then50, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %for.body
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %sv2_pos, align 4
  %cmp49 = icmp eq i32 %58, %59
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %lor.lhs.false48, %for.body
  br label %for.inc

if.end51:                                         ; preds = %lor.lhs.false48
  %60 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist_fnc, align 8
  %61 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %62 to i64
  %arrayidx53 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %61, i64 %idxprom52
  %63 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx53, align 8
  %64 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf54 = bitcast %union.node_t* %64 to %struct.node_leaf_t*
  %sv155 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf54, i32 0, i32 1
  %65 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv155, align 8
  %call56 = call float %60(%struct.mvp_datapoint_t* noundef %63, %struct.mvp_datapoint_t* noundef %65)
  %66 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf57 = bitcast %union.node_t* %66 to %struct.node_leaf_t*
  %d1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf57, i32 0, i32 4
  %67 = load float*, float** %d1, align 8
  %68 = load i32, i32* %count, align 4
  %idxprom58 = sext i32 %68 to i64
  %arrayidx59 = getelementptr inbounds float, float* %67, i64 %idxprom58
  store float %call56, float* %arrayidx59, align 4
  %69 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist_fnc, align 8
  %70 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %71 to i64
  %arrayidx61 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %70, i64 %idxprom60
  %72 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx61, align 8
  %73 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf62 = bitcast %union.node_t* %73 to %struct.node_leaf_t*
  %sv263 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf62, i32 0, i32 2
  %74 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv263, align 8
  %call64 = call float %69(%struct.mvp_datapoint_t* noundef %72, %struct.mvp_datapoint_t* noundef %74)
  %75 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf65 = bitcast %union.node_t* %75 to %struct.node_leaf_t*
  %d2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf65, i32 0, i32 5
  %76 = load float*, float** %d2, align 8
  %77 = load i32, i32* %count, align 4
  %idxprom66 = sext i32 %77 to i64
  %arrayidx67 = getelementptr inbounds float, float* %76, i64 %idxprom66
  store float %call64, float* %arrayidx67, align 4
  %78 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %79 to i64
  %arrayidx69 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %78, i64 %idxprom68
  %80 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx69, align 8
  %81 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf70 = bitcast %union.node_t* %81 to %struct.node_leaf_t*
  %points71 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf70, i32 0, i32 3
  %82 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points71, align 8
  %83 = load i32, i32* %count, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %count, align 4
  %idxprom72 = sext i32 %83 to i64
  %arrayidx73 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %82, i64 %idxprom72
  store %struct.mvp_datapoint_t* %80, %struct.mvp_datapoint_t** %arrayidx73, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %if.then50
  %84 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %84, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %85 = load i32, i32* %count, align 4
  %86 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf75 = bitcast %union.node_t* %86 to %struct.node_leaf_t*
  %nbpoints76 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf75, i32 0, i32 6
  store i32 %85, i32* %nbpoints76, align 8
  br label %if.end225

if.else:                                          ; preds = %if.then7
  %87 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor77 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %87, i32 0, i32 0
  %88 = load i32, i32* %branchfactor77, align 8
  %call78 = call %union.node_t* @create_internal(i32 noundef %88)
  store %union.node_t* %call78, %union.node_t** %new_node, align 8
  %89 = load %union.node_t*, %union.node_t** %new_node, align 8
  %tobool79 = icmp ne %union.node_t* %89, null
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.else
  %90 = load i32*, i32** %error.addr, align 8
  store i32 5, i32* %90, align 4
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end81:                                         ; preds = %if.else
  %91 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %92 = load i32, i32* %nbpoints.addr, align 4
  %93 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist82 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %93, i32 0, i32 11
  %94 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist82, align 8
  %call83 = call i32 @select_vantage_points(%struct.mvp_datapoint_t** noundef %91, i32 noundef %92, i32* noundef %sv1_pos, i32* noundef %sv2_pos, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* noundef %94)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end81
  %95 = load i32*, i32** %error.addr, align 8
  store i32 7, i32* %95, align 4
  %96 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %96)
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end86:                                         ; preds = %if.end81
  %97 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %98 = load i32, i32* %sv1_pos, align 4
  %idxprom87 = sext i32 %98 to i64
  %arrayidx88 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %97, i64 %idxprom87
  %99 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx88, align 8
  %100 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal = bitcast %union.node_t* %100 to %struct.node_internal_t*
  %sv189 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 1
  store %struct.mvp_datapoint_t* %99, %struct.mvp_datapoint_t** %sv189, align 8
  %101 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %102 = load i32, i32* %sv2_pos, align 4
  %idxprom90 = sext i32 %102 to i64
  %arrayidx91 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %101, i64 %idxprom90
  %103 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx91, align 8
  %104 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal92 = bitcast %union.node_t* %104 to %struct.node_internal_t*
  %sv293 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal92, i32 0, i32 2
  store %struct.mvp_datapoint_t* %103, %struct.mvp_datapoint_t** %sv293, align 8
  %105 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %106 = load i32, i32* %nbpoints.addr, align 4
  %107 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal94 = bitcast %union.node_t* %107 to %struct.node_internal_t*
  %sv195 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal94, i32 0, i32 1
  %108 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv195, align 8
  %109 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %110 = load i32, i32* %lvl.addr, align 4
  %call96 = call i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %105, i32 noundef %106, %struct.mvp_datapoint_t* noundef %108, %struct.mvptree_t* noundef %109, i32 noundef %110)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end86
  %111 = load i32*, i32** %error.addr, align 8
  store i32 8, i32* %111, align 4
  %112 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %112)
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end99:                                         ; preds = %if.end86
  %113 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %114 = load i32, i32* %nbpoints.addr, align 4
  %115 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal100 = bitcast %union.node_t* %115 to %struct.node_internal_t*
  %sv1101 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal100, i32 0, i32 1
  %116 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1101, align 8
  %117 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %118 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal102 = bitcast %union.node_t* %118 to %struct.node_internal_t*
  %M1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal102, i32 0, i32 3
  %119 = load float*, float** %M1, align 8
  %120 = load i32, i32* %lengthM1, align 4
  %call103 = call i32 @find_splits(%struct.mvp_datapoint_t** noundef %113, i32 noundef %114, %struct.mvp_datapoint_t* noundef %116, %struct.mvptree_t* noundef %117, float* noundef %119, i32 noundef %120)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end99
  %121 = load i32*, i32** %error.addr, align 8
  store i32 22, i32* %121, align 4
  %122 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %122)
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end106:                                        ; preds = %if.end99
  store i32* null, i32** %binlengths, align 8
  %123 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %124 = load i32, i32* %nbpoints.addr, align 4
  %125 = load i32, i32* %sv1_pos, align 4
  %126 = load i32, i32* %sv2_pos, align 4
  %127 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal108 = bitcast %union.node_t* %127 to %struct.node_internal_t*
  %sv1109 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal108, i32 0, i32 1
  %128 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1109, align 8
  %129 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %130 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal110 = bitcast %union.node_t* %130 to %struct.node_internal_t*
  %M1111 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal110, i32 0, i32 3
  %131 = load float*, float** %M1111, align 8
  %call112 = call %struct.mvp_datapoint_t*** @sort_points(%struct.mvp_datapoint_t** noundef %123, i32 noundef %124, i32 noundef %125, i32 noundef %126, %struct.mvp_datapoint_t* noundef %128, %struct.mvptree_t* noundef %129, i32** noundef %binlengths, float* noundef %131)
  store %struct.mvp_datapoint_t*** %call112, %struct.mvp_datapoint_t**** %bins, align 8
  %132 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %tobool113 = icmp ne %struct.mvp_datapoint_t*** %132, null
  br i1 %tobool113, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.end106
  %133 = load i32*, i32** %error.addr, align 8
  store i32 11, i32* %133, align 4
  %134 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %134)
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end115:                                        ; preds = %if.end106
  store i32 0, i32* %i107, align 4
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc213, %if.end115
  %135 = load i32, i32* %i107, align 4
  %136 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor117 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %136, i32 0, i32 0
  %137 = load i32, i32* %branchfactor117, align 8
  %cmp118 = icmp slt i32 %135, %137
  br i1 %cmp118, label %for.body119, label %for.end215

for.body119:                                      ; preds = %for.cond116
  %138 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %139 = load i32, i32* %i107, align 4
  %idxprom120 = sext i32 %139 to i64
  %arrayidx121 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %138, i64 %idxprom120
  %140 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx121, align 8
  %141 = load i32*, i32** %binlengths, align 8
  %142 = load i32, i32* %i107, align 4
  %idxprom122 = sext i32 %142 to i64
  %arrayidx123 = getelementptr inbounds i32, i32* %141, i64 %idxprom122
  %143 = load i32, i32* %arrayidx123, align 4
  %144 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal124 = bitcast %union.node_t* %144 to %struct.node_internal_t*
  %sv2125 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal124, i32 0, i32 2
  %145 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2125, align 8
  %146 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %147 = load i32, i32* %lvl.addr, align 4
  %add126 = add nsw i32 %147, 1
  %call127 = call i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %140, i32 noundef %143, %struct.mvp_datapoint_t* noundef %145, %struct.mvptree_t* noundef %146, i32 noundef %add126)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.then129, label %if.end139

if.then129:                                       ; preds = %for.body119
  %148 = load i32*, i32** %error.addr, align 8
  store i32 9, i32* %148, align 4
  %149 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %149)
  store i32 0, i32* %j, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc136, %if.then129
  %150 = load i32, i32* %j, align 4
  %151 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor131 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %151, i32 0, i32 0
  %152 = load i32, i32* %branchfactor131, align 8
  %cmp132 = icmp slt i32 %150, %152
  br i1 %cmp132, label %for.body133, label %for.end138

for.body133:                                      ; preds = %for.cond130
  %153 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %154 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %154 to i64
  %arrayidx135 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %153, i64 %idxprom134
  %155 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx135, align 8
  %156 = bitcast %struct.mvp_datapoint_t** %155 to i8*
  call void @free(i8* noundef %156) #6
  br label %for.inc136

for.inc136:                                       ; preds = %for.body133
  %157 = load i32, i32* %j, align 4
  %inc137 = add nsw i32 %157, 1
  store i32 %inc137, i32* %j, align 4
  br label %for.cond130, !llvm.loop !18

for.end138:                                       ; preds = %for.cond130
  %158 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %159 = bitcast %struct.mvp_datapoint_t*** %158 to i8*
  call void @free(i8* noundef %159) #6
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end139:                                        ; preds = %for.body119
  %160 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %161 = load i32, i32* %i107, align 4
  %idxprom140 = sext i32 %161 to i64
  %arrayidx141 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %160, i64 %idxprom140
  %162 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx141, align 8
  %163 = load i32*, i32** %binlengths, align 8
  %164 = load i32, i32* %i107, align 4
  %idxprom142 = sext i32 %164 to i64
  %arrayidx143 = getelementptr inbounds i32, i32* %163, i64 %idxprom142
  %165 = load i32, i32* %arrayidx143, align 4
  %166 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal144 = bitcast %union.node_t* %166 to %struct.node_internal_t*
  %sv2145 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal144, i32 0, i32 2
  %167 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2145, align 8
  %168 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %169 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal146 = bitcast %union.node_t* %169 to %struct.node_internal_t*
  %M2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal146, i32 0, i32 4
  %170 = load float*, float** %M2, align 8
  %171 = load i32, i32* %i107, align 4
  %172 = load i32, i32* %lengthM1, align 4
  %mul = mul nsw i32 %171, %172
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, float* %170, i64 %idx.ext
  %173 = load i32, i32* %lengthM1, align 4
  %call147 = call i32 @find_splits(%struct.mvp_datapoint_t** noundef %162, i32 noundef %165, %struct.mvp_datapoint_t* noundef %167, %struct.mvptree_t* noundef %168, float* noundef %add.ptr, i32 noundef %173)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then149, label %if.end159

if.then149:                                       ; preds = %if.end139
  %174 = load i32*, i32** %error.addr, align 8
  store i32 22, i32* %174, align 4
  %175 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %175)
  store i32 0, i32* %j, align 4
  br label %for.cond150

for.cond150:                                      ; preds = %for.inc156, %if.then149
  %176 = load i32, i32* %j, align 4
  %177 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor151 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %177, i32 0, i32 0
  %178 = load i32, i32* %branchfactor151, align 8
  %cmp152 = icmp slt i32 %176, %178
  br i1 %cmp152, label %for.body153, label %for.end158

for.body153:                                      ; preds = %for.cond150
  %179 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %180 = load i32, i32* %j, align 4
  %idxprom154 = sext i32 %180 to i64
  %arrayidx155 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %179, i64 %idxprom154
  %181 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx155, align 8
  %182 = bitcast %struct.mvp_datapoint_t** %181 to i8*
  call void @free(i8* noundef %182) #6
  br label %for.inc156

for.inc156:                                       ; preds = %for.body153
  %183 = load i32, i32* %j, align 4
  %inc157 = add nsw i32 %183, 1
  store i32 %inc157, i32* %j, align 4
  br label %for.cond150, !llvm.loop !19

for.end158:                                       ; preds = %for.cond150
  %184 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %185 = bitcast %struct.mvp_datapoint_t*** %184 to i8*
  call void @free(i8* noundef %185) #6
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end159:                                        ; preds = %if.end139
  store i32* null, i32** %bin2lengths, align 8
  %186 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %187 = load i32, i32* %i107, align 4
  %idxprom160 = sext i32 %187 to i64
  %arrayidx161 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %186, i64 %idxprom160
  %188 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx161, align 8
  %189 = load i32*, i32** %binlengths, align 8
  %190 = load i32, i32* %i107, align 4
  %idxprom162 = sext i32 %190 to i64
  %arrayidx163 = getelementptr inbounds i32, i32* %189, i64 %idxprom162
  %191 = load i32, i32* %arrayidx163, align 4
  %192 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal164 = bitcast %union.node_t* %192 to %struct.node_internal_t*
  %sv2165 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal164, i32 0, i32 2
  %193 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2165, align 8
  %194 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %195 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal166 = bitcast %union.node_t* %195 to %struct.node_internal_t*
  %M2167 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal166, i32 0, i32 4
  %196 = load float*, float** %M2167, align 8
  %197 = load i32, i32* %i107, align 4
  %198 = load i32, i32* %lengthM1, align 4
  %mul168 = mul nsw i32 %197, %198
  %idx.ext169 = sext i32 %mul168 to i64
  %add.ptr170 = getelementptr inbounds float, float* %196, i64 %idx.ext169
  %call171 = call %struct.mvp_datapoint_t*** @sort_points(%struct.mvp_datapoint_t** noundef %188, i32 noundef %191, i32 noundef -1, i32 noundef -1, %struct.mvp_datapoint_t* noundef %193, %struct.mvptree_t* noundef %194, i32** noundef %bin2lengths, float* noundef %add.ptr170)
  store %struct.mvp_datapoint_t*** %call171, %struct.mvp_datapoint_t**** %bins2, align 8
  %199 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins2, align 8
  %tobool172 = icmp ne %struct.mvp_datapoint_t*** %199, null
  br i1 %tobool172, label %if.end183, label %if.then173

if.then173:                                       ; preds = %if.end159
  %200 = load i32*, i32** %error.addr, align 8
  store i32 11, i32* %200, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc180, %if.then173
  %201 = load i32, i32* %j, align 4
  %202 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor175 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %202, i32 0, i32 0
  %203 = load i32, i32* %branchfactor175, align 8
  %cmp176 = icmp slt i32 %201, %203
  br i1 %cmp176, label %for.body177, label %for.end182

for.body177:                                      ; preds = %for.cond174
  %204 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %205 = load i32, i32* %j, align 4
  %idxprom178 = sext i32 %205 to i64
  %arrayidx179 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %204, i64 %idxprom178
  %206 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx179, align 8
  %207 = bitcast %struct.mvp_datapoint_t** %206 to i8*
  call void @free(i8* noundef %207) #6
  br label %for.inc180

for.inc180:                                       ; preds = %for.body177
  %208 = load i32, i32* %j, align 4
  %inc181 = add nsw i32 %208, 1
  store i32 %inc181, i32* %j, align 4
  br label %for.cond174, !llvm.loop !20

for.end182:                                       ; preds = %for.cond174
  %209 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %210 = bitcast %struct.mvp_datapoint_t*** %209 to i8*
  call void @free(i8* noundef %210) #6
  %211 = load %union.node_t*, %union.node_t** %new_node, align 8
  call void @free_node(%union.node_t* noundef %211)
  store %union.node_t* null, %union.node_t** %retval, align 8
  br label %return

if.end183:                                        ; preds = %if.end159
  store i32 0, i32* %j184, align 4
  br label %for.cond185

for.cond185:                                      ; preds = %for.inc201, %if.end183
  %212 = load i32, i32* %j184, align 4
  %213 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor186 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %213, i32 0, i32 0
  %214 = load i32, i32* %branchfactor186, align 8
  %cmp187 = icmp slt i32 %212, %214
  br i1 %cmp187, label %for.body188, label %for.end203

for.body188:                                      ; preds = %for.cond185
  %215 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %216 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins2, align 8
  %217 = load i32, i32* %j184, align 4
  %idxprom189 = sext i32 %217 to i64
  %arrayidx190 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %216, i64 %idxprom189
  %218 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx190, align 8
  %219 = load i32*, i32** %bin2lengths, align 8
  %220 = load i32, i32* %j184, align 4
  %idxprom191 = sext i32 %220 to i64
  %arrayidx192 = getelementptr inbounds i32, i32* %219, i64 %idxprom191
  %221 = load i32, i32* %arrayidx192, align 4
  %222 = load i32*, i32** %error.addr, align 8
  %223 = load i32, i32* %lvl.addr, align 4
  %add193 = add nsw i32 %223, 2
  %call194 = call %union.node_t* @_mvptree_add(%struct.mvptree_t* noundef %215, %union.node_t* noundef null, %struct.mvp_datapoint_t** noundef %218, i32 noundef %221, i32* noundef %222, i32 noundef %add193)
  store %union.node_t* %call194, %union.node_t** %child, align 8
  %224 = load %union.node_t*, %union.node_t** %child, align 8
  %225 = bitcast %union.node_t* %224 to i8*
  %226 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal195 = bitcast %union.node_t* %226 to %struct.node_internal_t*
  %child_nodes = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal195, i32 0, i32 5
  %227 = load i8**, i8*** %child_nodes, align 8
  %228 = load i32, i32* %i107, align 4
  %229 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor196 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %229, i32 0, i32 0
  %230 = load i32, i32* %branchfactor196, align 8
  %mul197 = mul nsw i32 %228, %230
  %231 = load i32, i32* %j184, align 4
  %add198 = add nsw i32 %mul197, %231
  %idxprom199 = sext i32 %add198 to i64
  %arrayidx200 = getelementptr inbounds i8*, i8** %227, i64 %idxprom199
  store i8* %225, i8** %arrayidx200, align 8
  br label %for.inc201

for.inc201:                                       ; preds = %for.body188
  %232 = load i32, i32* %j184, align 4
  %inc202 = add nsw i32 %232, 1
  store i32 %inc202, i32* %j184, align 4
  br label %for.cond185, !llvm.loop !21

for.end203:                                       ; preds = %for.cond185
  %233 = load i32*, i32** %bin2lengths, align 8
  %234 = bitcast i32* %233 to i8*
  call void @free(i8* noundef %234) #6
  store i32 0, i32* %j184, align 4
  br label %for.cond204

for.cond204:                                      ; preds = %for.inc210, %for.end203
  %235 = load i32, i32* %j184, align 4
  %236 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor205 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %236, i32 0, i32 0
  %237 = load i32, i32* %branchfactor205, align 8
  %cmp206 = icmp slt i32 %235, %237
  br i1 %cmp206, label %for.body207, label %for.end212

for.body207:                                      ; preds = %for.cond204
  %238 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins2, align 8
  %239 = load i32, i32* %j184, align 4
  %idxprom208 = sext i32 %239 to i64
  %arrayidx209 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %238, i64 %idxprom208
  %240 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx209, align 8
  %241 = bitcast %struct.mvp_datapoint_t** %240 to i8*
  call void @free(i8* noundef %241) #6
  br label %for.inc210

for.inc210:                                       ; preds = %for.body207
  %242 = load i32, i32* %j184, align 4
  %inc211 = add nsw i32 %242, 1
  store i32 %inc211, i32* %j184, align 4
  br label %for.cond204, !llvm.loop !22

for.end212:                                       ; preds = %for.cond204
  %243 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins2, align 8
  %244 = bitcast %struct.mvp_datapoint_t*** %243 to i8*
  call void @free(i8* noundef %244) #6
  br label %for.inc213

for.inc213:                                       ; preds = %for.end212
  %245 = load i32, i32* %i107, align 4
  %inc214 = add nsw i32 %245, 1
  store i32 %inc214, i32* %i107, align 4
  br label %for.cond116, !llvm.loop !23

for.end215:                                       ; preds = %for.cond116
  %246 = load i32*, i32** %binlengths, align 8
  %247 = bitcast i32* %246 to i8*
  call void @free(i8* noundef %247) #6
  store i32 0, i32* %i107, align 4
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc222, %for.end215
  %248 = load i32, i32* %i107, align 4
  %249 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor217 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %249, i32 0, i32 0
  %250 = load i32, i32* %branchfactor217, align 8
  %cmp218 = icmp slt i32 %248, %250
  br i1 %cmp218, label %for.body219, label %for.end224

for.body219:                                      ; preds = %for.cond216
  %251 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %252 = load i32, i32* %i107, align 4
  %idxprom220 = sext i32 %252 to i64
  %arrayidx221 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %251, i64 %idxprom220
  %253 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx221, align 8
  %254 = bitcast %struct.mvp_datapoint_t** %253 to i8*
  call void @free(i8* noundef %254) #6
  br label %for.inc222

for.inc222:                                       ; preds = %for.body219
  %255 = load i32, i32* %i107, align 4
  %inc223 = add nsw i32 %255, 1
  store i32 %inc223, i32* %i107, align 4
  br label %for.cond216, !llvm.loop !24

for.end224:                                       ; preds = %for.cond216
  %256 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins, align 8
  %257 = bitcast %struct.mvp_datapoint_t*** %256 to i8*
  call void @free(i8* noundef %257) #6
  br label %if.end225

if.end225:                                        ; preds = %for.end224, %for.end
  br label %if.end504

if.else226:                                       ; preds = %if.end5
  %258 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf227 = bitcast %union.node_t* %258 to %struct.node_leaf_t*
  %type = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf227, i32 0, i32 0
  %259 = load i32, i32* %type, align 8
  %cmp228 = icmp eq i32 %259, 2
  br i1 %cmp228, label %if.then229, label %if.else367

if.then229:                                       ; preds = %if.else226
  %260 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf230 = bitcast %union.node_t* %260 to %struct.node_leaf_t*
  %nbpoints231 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf230, i32 0, i32 6
  %261 = load i32, i32* %nbpoints231, align 8
  %262 = load i32, i32* %nbpoints.addr, align 4
  %add232 = add i32 %261, %262
  %263 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %leafcap233 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %263, i32 0, i32 2
  %264 = load i32, i32* %leafcap233, align 8
  %cmp234 = icmp ule i32 %add232, %264
  br i1 %cmp234, label %if.then235, label %if.else295

if.then235:                                       ; preds = %if.then229
  %265 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %266 = load i32, i32* %nbpoints.addr, align 4
  %267 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf236 = bitcast %union.node_t* %267 to %struct.node_leaf_t*
  %sv1237 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf236, i32 0, i32 1
  %268 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1237, align 8
  %269 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %270 = load i32, i32* %lvl.addr, align 4
  %call238 = call i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %265, i32 noundef %266, %struct.mvp_datapoint_t* noundef %268, %struct.mvptree_t* noundef %269, i32 noundef %270)
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.then235
  %271 = load i32*, i32** %error.addr, align 8
  store i32 8, i32* %271, align 4
  %272 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %272, %union.node_t** %retval, align 8
  br label %return

if.end241:                                        ; preds = %if.then235
  store i32 0, i32* %pos, align 4
  %273 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf242 = bitcast %union.node_t* %273 to %struct.node_leaf_t*
  %sv2243 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf242, i32 0, i32 2
  %274 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2243, align 8
  %cmp244 = icmp eq %struct.mvp_datapoint_t* %274, null
  br i1 %cmp244, label %if.then245, label %if.end249

if.then245:                                       ; preds = %if.end241
  %275 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %arrayidx246 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %275, i64 0
  %276 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx246, align 8
  %277 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf247 = bitcast %union.node_t* %277 to %struct.node_leaf_t*
  %sv2248 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf247, i32 0, i32 2
  store %struct.mvp_datapoint_t* %276, %struct.mvp_datapoint_t** %sv2248, align 8
  store i32 1, i32* %pos, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then245, %if.end241
  %278 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %279 = load i32, i32* %nbpoints.addr, align 4
  %280 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf250 = bitcast %union.node_t* %280 to %struct.node_leaf_t*
  %sv2251 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf250, i32 0, i32 2
  %281 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2251, align 8
  %282 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %283 = load i32, i32* %lvl.addr, align 4
  %add252 = add nsw i32 %283, 1
  %call253 = call i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %278, i32 noundef %279, %struct.mvp_datapoint_t* noundef %281, %struct.mvptree_t* noundef %282, i32 noundef %add252)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %if.then255, label %if.end256

if.then255:                                       ; preds = %if.end249
  %284 = load i32*, i32** %error.addr, align 8
  store i32 9, i32* %284, align 4
  %285 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %285, %union.node_t** %retval, align 8
  br label %return

if.end256:                                        ; preds = %if.end249
  %286 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf258 = bitcast %union.node_t* %286 to %struct.node_leaf_t*
  %nbpoints259 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf258, i32 0, i32 6
  %287 = load i32, i32* %nbpoints259, align 8
  store i32 %287, i32* %count257, align 4
  br label %for.cond260

for.cond260:                                      ; preds = %for.inc290, %if.end256
  %288 = load i32, i32* %pos, align 4
  %289 = load i32, i32* %nbpoints.addr, align 4
  %cmp261 = icmp ult i32 %288, %289
  br i1 %cmp261, label %for.body262, label %for.end292

for.body262:                                      ; preds = %for.cond260
  %290 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist263 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %290, i32 0, i32 11
  %291 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist263, align 8
  %292 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %293 = load i32, i32* %pos, align 4
  %idxprom264 = sext i32 %293 to i64
  %arrayidx265 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %292, i64 %idxprom264
  %294 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx265, align 8
  %295 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf266 = bitcast %union.node_t* %295 to %struct.node_leaf_t*
  %sv1267 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf266, i32 0, i32 1
  %296 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1267, align 8
  %call268 = call float %291(%struct.mvp_datapoint_t* noundef %294, %struct.mvp_datapoint_t* noundef %296)
  %297 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf269 = bitcast %union.node_t* %297 to %struct.node_leaf_t*
  %d1270 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf269, i32 0, i32 4
  %298 = load float*, float** %d1270, align 8
  %299 = load i32, i32* %count257, align 4
  %idxprom271 = sext i32 %299 to i64
  %arrayidx272 = getelementptr inbounds float, float* %298, i64 %idxprom271
  store float %call268, float* %arrayidx272, align 4
  %300 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist273 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %300, i32 0, i32 11
  %301 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist273, align 8
  %302 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %303 = load i32, i32* %pos, align 4
  %idxprom274 = sext i32 %303 to i64
  %arrayidx275 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %302, i64 %idxprom274
  %304 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx275, align 8
  %305 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf276 = bitcast %union.node_t* %305 to %struct.node_leaf_t*
  %sv2277 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf276, i32 0, i32 2
  %306 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2277, align 8
  %call278 = call float %301(%struct.mvp_datapoint_t* noundef %304, %struct.mvp_datapoint_t* noundef %306)
  %307 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf279 = bitcast %union.node_t* %307 to %struct.node_leaf_t*
  %d2280 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf279, i32 0, i32 5
  %308 = load float*, float** %d2280, align 8
  %309 = load i32, i32* %count257, align 4
  %idxprom281 = sext i32 %309 to i64
  %arrayidx282 = getelementptr inbounds float, float* %308, i64 %idxprom281
  store float %call278, float* %arrayidx282, align 4
  %310 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %311 = load i32, i32* %pos, align 4
  %idxprom283 = sext i32 %311 to i64
  %arrayidx284 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %310, i64 %idxprom283
  %312 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx284, align 8
  %313 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf285 = bitcast %union.node_t* %313 to %struct.node_leaf_t*
  %points286 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf285, i32 0, i32 3
  %314 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points286, align 8
  %315 = load i32, i32* %count257, align 4
  %inc287 = add nsw i32 %315, 1
  store i32 %inc287, i32* %count257, align 4
  %idxprom288 = sext i32 %315 to i64
  %arrayidx289 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %314, i64 %idxprom288
  store %struct.mvp_datapoint_t* %312, %struct.mvp_datapoint_t** %arrayidx289, align 8
  br label %for.inc290

for.inc290:                                       ; preds = %for.body262
  %316 = load i32, i32* %pos, align 4
  %inc291 = add nsw i32 %316, 1
  store i32 %inc291, i32* %pos, align 4
  br label %for.cond260, !llvm.loop !25

for.end292:                                       ; preds = %for.cond260
  %317 = load i32, i32* %count257, align 4
  %318 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf293 = bitcast %union.node_t* %318 to %struct.node_leaf_t*
  %nbpoints294 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf293, i32 0, i32 6
  store i32 %317, i32* %nbpoints294, align 8
  br label %if.end366

if.else295:                                       ; preds = %if.then229
  %319 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf296 = bitcast %union.node_t* %319 to %struct.node_leaf_t*
  %nbpoints297 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf296, i32 0, i32 6
  %320 = load i32, i32* %nbpoints297, align 8
  %321 = load i32, i32* %nbpoints.addr, align 4
  %add298 = add i32 %320, %321
  store i32 %add298, i32* %new_nb, align 4
  %322 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf299 = bitcast %union.node_t* %322 to %struct.node_leaf_t*
  %sv1300 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf299, i32 0, i32 1
  %323 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1300, align 8
  %tobool301 = icmp ne %struct.mvp_datapoint_t* %323, null
  br i1 %tobool301, label %if.then302, label %if.end304

if.then302:                                       ; preds = %if.else295
  %324 = load i32, i32* %new_nb, align 4
  %inc303 = add i32 %324, 1
  store i32 %inc303, i32* %new_nb, align 4
  br label %if.end304

if.end304:                                        ; preds = %if.then302, %if.else295
  %325 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf305 = bitcast %union.node_t* %325 to %struct.node_leaf_t*
  %sv2306 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf305, i32 0, i32 2
  %326 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2306, align 8
  %tobool307 = icmp ne %struct.mvp_datapoint_t* %326, null
  br i1 %tobool307, label %if.then308, label %if.end310

if.then308:                                       ; preds = %if.end304
  %327 = load i32, i32* %new_nb, align 4
  %inc309 = add i32 %327, 1
  store i32 %inc309, i32* %new_nb, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.then308, %if.end304
  %328 = load i32, i32* %new_nb, align 4
  %conv = zext i32 %328 to i64
  %mul311 = mul i64 %conv, 8
  %call312 = call noalias i8* @malloc(i64 noundef %mul311) #6
  %329 = bitcast i8* %call312 to %struct.mvp_datapoint_t**
  store %struct.mvp_datapoint_t** %329, %struct.mvp_datapoint_t*** %tmp_pts, align 8
  %330 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %tmp_pts, align 8
  %tobool313 = icmp ne %struct.mvp_datapoint_t** %330, null
  br i1 %tobool313, label %if.end315, label %if.then314

if.then314:                                       ; preds = %if.end310
  %331 = load i32*, i32** %error.addr, align 8
  store i32 3, i32* %331, align 4
  %332 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %332, %union.node_t** %retval, align 8
  br label %return

if.end315:                                        ; preds = %if.end310
  store i32 0, i32* %index, align 4
  %333 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf317 = bitcast %union.node_t* %333 to %struct.node_leaf_t*
  %sv1318 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf317, i32 0, i32 1
  %334 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1318, align 8
  %tobool319 = icmp ne %struct.mvp_datapoint_t* %334, null
  br i1 %tobool319, label %if.then320, label %if.end326

if.then320:                                       ; preds = %if.end315
  %335 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf321 = bitcast %union.node_t* %335 to %struct.node_leaf_t*
  %sv1322 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf321, i32 0, i32 1
  %336 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1322, align 8
  %337 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %tmp_pts, align 8
  %338 = load i32, i32* %index, align 4
  %inc323 = add nsw i32 %338, 1
  store i32 %inc323, i32* %index, align 4
  %idxprom324 = sext i32 %338 to i64
  %arrayidx325 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %337, i64 %idxprom324
  store %struct.mvp_datapoint_t* %336, %struct.mvp_datapoint_t** %arrayidx325, align 8
  br label %if.end326

if.end326:                                        ; preds = %if.then320, %if.end315
  %339 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf327 = bitcast %union.node_t* %339 to %struct.node_leaf_t*
  %sv2328 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf327, i32 0, i32 2
  %340 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2328, align 8
  %tobool329 = icmp ne %struct.mvp_datapoint_t* %340, null
  br i1 %tobool329, label %if.then330, label %if.end336

if.then330:                                       ; preds = %if.end326
  %341 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf331 = bitcast %union.node_t* %341 to %struct.node_leaf_t*
  %sv2332 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf331, i32 0, i32 2
  %342 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2332, align 8
  %343 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %tmp_pts, align 8
  %344 = load i32, i32* %index, align 4
  %inc333 = add nsw i32 %344, 1
  store i32 %inc333, i32* %index, align 4
  %idxprom334 = sext i32 %344 to i64
  %arrayidx335 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %343, i64 %idxprom334
  store %struct.mvp_datapoint_t* %342, %struct.mvp_datapoint_t** %arrayidx335, align 8
  br label %if.end336

if.end336:                                        ; preds = %if.then330, %if.end326
  store i32 0, i32* %i316, align 4
  br label %for.cond337

for.cond337:                                      ; preds = %for.inc350, %if.end336
  %345 = load i32, i32* %i316, align 4
  %346 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf338 = bitcast %union.node_t* %346 to %struct.node_leaf_t*
  %nbpoints339 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf338, i32 0, i32 6
  %347 = load i32, i32* %nbpoints339, align 8
  %cmp340 = icmp ult i32 %345, %347
  br i1 %cmp340, label %for.body342, label %for.end352

for.body342:                                      ; preds = %for.cond337
  %348 = load %union.node_t*, %union.node_t** %new_node, align 8
  %leaf343 = bitcast %union.node_t* %348 to %struct.node_leaf_t*
  %points344 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf343, i32 0, i32 3
  %349 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points344, align 8
  %350 = load i32, i32* %i316, align 4
  %idxprom345 = sext i32 %350 to i64
  %arrayidx346 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %349, i64 %idxprom345
  %351 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx346, align 8
  %352 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %tmp_pts, align 8
  %353 = load i32, i32* %index, align 4
  %inc347 = add nsw i32 %353, 1
  store i32 %inc347, i32* %index, align 4
  %idxprom348 = sext i32 %353 to i64
  %arrayidx349 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %352, i64 %idxprom348
  store %struct.mvp_datapoint_t* %351, %struct.mvp_datapoint_t** %arrayidx349, align 8
  br label %for.inc350

for.inc350:                                       ; preds = %for.body342
  %354 = load i32, i32* %i316, align 4
  %inc351 = add nsw i32 %354, 1
  store i32 %inc351, i32* %i316, align 4
  br label %for.cond337, !llvm.loop !26

for.end352:                                       ; preds = %for.cond337
  store i32 0, i32* %i316, align 4
  br label %for.cond353

for.cond353:                                      ; preds = %for.inc362, %for.end352
  %355 = load i32, i32* %i316, align 4
  %356 = load i32, i32* %nbpoints.addr, align 4
  %cmp354 = icmp ult i32 %355, %356
  br i1 %cmp354, label %for.body356, label %for.end364

for.body356:                                      ; preds = %for.cond353
  %357 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %358 = load i32, i32* %i316, align 4
  %idxprom357 = sext i32 %358 to i64
  %arrayidx358 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %357, i64 %idxprom357
  %359 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx358, align 8
  %360 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %tmp_pts, align 8
  %361 = load i32, i32* %index, align 4
  %inc359 = add nsw i32 %361, 1
  store i32 %inc359, i32* %index, align 4
  %idxprom360 = sext i32 %361 to i64
  %arrayidx361 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %360, i64 %idxprom360
  store %struct.mvp_datapoint_t* %359, %struct.mvp_datapoint_t** %arrayidx361, align 8
  br label %for.inc362

for.inc362:                                       ; preds = %for.body356
  %362 = load i32, i32* %i316, align 4
  %inc363 = add nsw i32 %362, 1
  store i32 %inc363, i32* %i316, align 4
  br label %for.cond353, !llvm.loop !27

for.end364:                                       ; preds = %for.cond353
  %363 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %363, %union.node_t** %old_node, align 8
  %364 = load %union.node_t*, %union.node_t** %old_node, align 8
  call void @free_node(%union.node_t* noundef %364)
  %365 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %366 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %tmp_pts, align 8
  %367 = load i32, i32* %new_nb, align 4
  %368 = load i32*, i32** %error.addr, align 8
  %369 = load i32, i32* %lvl.addr, align 4
  %call365 = call %union.node_t* @_mvptree_add(%struct.mvptree_t* noundef %365, %union.node_t* noundef null, %struct.mvp_datapoint_t** noundef %366, i32 noundef %367, i32* noundef %368, i32 noundef %369)
  store %union.node_t* %call365, %union.node_t** %new_node, align 8
  %370 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %tmp_pts, align 8
  %371 = bitcast %struct.mvp_datapoint_t** %370 to i8*
  call void @free(i8* noundef %371) #6
  br label %if.end366

if.end366:                                        ; preds = %for.end364, %for.end292
  br label %if.end503

if.else367:                                       ; preds = %if.else226
  %372 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %373 = load i32, i32* %nbpoints.addr, align 4
  %374 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal368 = bitcast %union.node_t* %374 to %struct.node_internal_t*
  %sv1369 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal368, i32 0, i32 1
  %375 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1369, align 8
  %376 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %377 = load i32, i32* %lvl.addr, align 4
  %call370 = call i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %372, i32 noundef %373, %struct.mvp_datapoint_t* noundef %375, %struct.mvptree_t* noundef %376, i32 noundef %377)
  %cmp371 = icmp slt i32 %call370, 0
  br i1 %cmp371, label %if.then373, label %if.end374

if.then373:                                       ; preds = %if.else367
  %378 = load i32*, i32** %error.addr, align 8
  store i32 8, i32* %378, align 4
  %379 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %379, %union.node_t** %retval, align 8
  br label %return

if.end374:                                        ; preds = %if.else367
  store i32* null, i32** %binlengths375, align 8
  %380 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %381 = load i32, i32* %nbpoints.addr, align 4
  %382 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal377 = bitcast %union.node_t* %382 to %struct.node_internal_t*
  %sv1378 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal377, i32 0, i32 1
  %383 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1378, align 8
  %384 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %385 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal379 = bitcast %union.node_t* %385 to %struct.node_internal_t*
  %M1380 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal379, i32 0, i32 3
  %386 = load float*, float** %M1380, align 8
  %call381 = call %struct.mvp_datapoint_t*** @sort_points(%struct.mvp_datapoint_t** noundef %380, i32 noundef %381, i32 noundef -1, i32 noundef -1, %struct.mvp_datapoint_t* noundef %383, %struct.mvptree_t* noundef %384, i32** noundef %binlengths375, float* noundef %386)
  store %struct.mvp_datapoint_t*** %call381, %struct.mvp_datapoint_t**** %bins376, align 8
  %387 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %tobool383 = icmp ne %struct.mvp_datapoint_t*** %387, null
  br i1 %tobool383, label %if.end385, label %if.then384

if.then384:                                       ; preds = %if.end374
  %388 = load i32*, i32** %error.addr, align 8
  store i32 11, i32* %388, align 4
  %389 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %389, %union.node_t** %retval, align 8
  br label %return

if.end385:                                        ; preds = %if.end374
  store i32 0, i32* %i382, align 4
  br label %for.cond386

for.cond386:                                      ; preds = %for.inc490, %if.end385
  %390 = load i32, i32* %i382, align 4
  %391 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor387 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %391, i32 0, i32 0
  %392 = load i32, i32* %branchfactor387, align 8
  %cmp388 = icmp slt i32 %390, %392
  br i1 %cmp388, label %for.body390, label %for.end492

for.body390:                                      ; preds = %for.cond386
  %393 = load i32*, i32** %binlengths375, align 8
  %394 = load i32, i32* %i382, align 4
  %idxprom391 = sext i32 %394 to i64
  %arrayidx392 = getelementptr inbounds i32, i32* %393, i64 %idxprom391
  %395 = load i32, i32* %arrayidx392, align 4
  %cmp393 = icmp sle i32 %395, 0
  br i1 %cmp393, label %if.then395, label %if.end396

if.then395:                                       ; preds = %for.body390
  br label %for.inc490

if.end396:                                        ; preds = %for.body390
  %396 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %397 = load i32, i32* %i382, align 4
  %idxprom398 = sext i32 %397 to i64
  %arrayidx399 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %396, i64 %idxprom398
  %398 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx399, align 8
  %399 = load i32*, i32** %binlengths375, align 8
  %400 = load i32, i32* %i382, align 4
  %idxprom400 = sext i32 %400 to i64
  %arrayidx401 = getelementptr inbounds i32, i32* %399, i64 %idxprom400
  %401 = load i32, i32* %arrayidx401, align 4
  %402 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal402 = bitcast %union.node_t* %402 to %struct.node_internal_t*
  %sv2403 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal402, i32 0, i32 2
  %403 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2403, align 8
  %404 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %405 = load i32, i32* %lvl.addr, align 4
  %add404 = add nsw i32 %405, 1
  %call405 = call i32 @find_distance_range_for_vp(%struct.mvp_datapoint_t** noundef %398, i32 noundef %401, %struct.mvp_datapoint_t* noundef %403, %struct.mvptree_t* noundef %404, i32 noundef %add404)
  %cmp406 = icmp slt i32 %call405, 0
  br i1 %cmp406, label %if.then408, label %if.end419

if.then408:                                       ; preds = %if.end396
  %406 = load i32*, i32** %error.addr, align 8
  store i32 9, i32* %406, align 4
  store i32 0, i32* %j397, align 4
  br label %for.cond409

for.cond409:                                      ; preds = %for.inc416, %if.then408
  %407 = load i32, i32* %j397, align 4
  %408 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor410 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %408, i32 0, i32 0
  %409 = load i32, i32* %branchfactor410, align 8
  %cmp411 = icmp slt i32 %407, %409
  br i1 %cmp411, label %for.body413, label %for.end418

for.body413:                                      ; preds = %for.cond409
  %410 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %411 = load i32, i32* %j397, align 4
  %idxprom414 = sext i32 %411 to i64
  %arrayidx415 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %410, i64 %idxprom414
  %412 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx415, align 8
  %413 = bitcast %struct.mvp_datapoint_t** %412 to i8*
  call void @free(i8* noundef %413) #6
  br label %for.inc416

for.inc416:                                       ; preds = %for.body413
  %414 = load i32, i32* %j397, align 4
  %inc417 = add nsw i32 %414, 1
  store i32 %inc417, i32* %j397, align 4
  br label %for.cond409, !llvm.loop !28

for.end418:                                       ; preds = %for.cond409
  %415 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %416 = bitcast %struct.mvp_datapoint_t*** %415 to i8*
  call void @free(i8* noundef %416) #6
  %417 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %417, %union.node_t** %retval, align 8
  br label %return

if.end419:                                        ; preds = %if.end396
  store i32* null, i32** %bin2lengths420, align 8
  %418 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %419 = load i32, i32* %i382, align 4
  %idxprom422 = sext i32 %419 to i64
  %arrayidx423 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %418, i64 %idxprom422
  %420 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx423, align 8
  %421 = load i32*, i32** %binlengths375, align 8
  %422 = load i32, i32* %i382, align 4
  %idxprom424 = sext i32 %422 to i64
  %arrayidx425 = getelementptr inbounds i32, i32* %421, i64 %idxprom424
  %423 = load i32, i32* %arrayidx425, align 4
  %424 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal426 = bitcast %union.node_t* %424 to %struct.node_internal_t*
  %sv2427 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal426, i32 0, i32 2
  %425 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2427, align 8
  %426 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %427 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal428 = bitcast %union.node_t* %427 to %struct.node_internal_t*
  %M2429 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal428, i32 0, i32 4
  %428 = load float*, float** %M2429, align 8
  %429 = load i32, i32* %i382, align 4
  %430 = load i32, i32* %lengthM1, align 4
  %mul430 = mul nsw i32 %429, %430
  %idx.ext431 = sext i32 %mul430 to i64
  %add.ptr432 = getelementptr inbounds float, float* %428, i64 %idx.ext431
  %call433 = call %struct.mvp_datapoint_t*** @sort_points(%struct.mvp_datapoint_t** noundef %420, i32 noundef %423, i32 noundef -1, i32 noundef -1, %struct.mvp_datapoint_t* noundef %425, %struct.mvptree_t* noundef %426, i32** noundef %bin2lengths420, float* noundef %add.ptr432)
  store %struct.mvp_datapoint_t*** %call433, %struct.mvp_datapoint_t**** %bins2421, align 8
  %431 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins2421, align 8
  %tobool434 = icmp ne %struct.mvp_datapoint_t*** %431, null
  br i1 %tobool434, label %if.end446, label %if.then435

if.then435:                                       ; preds = %if.end419
  %432 = load i32*, i32** %error.addr, align 8
  store i32 11, i32* %432, align 4
  store i32 0, i32* %j397, align 4
  br label %for.cond436

for.cond436:                                      ; preds = %for.inc443, %if.then435
  %433 = load i32, i32* %j397, align 4
  %434 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor437 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %434, i32 0, i32 0
  %435 = load i32, i32* %branchfactor437, align 8
  %cmp438 = icmp slt i32 %433, %435
  br i1 %cmp438, label %for.body440, label %for.end445

for.body440:                                      ; preds = %for.cond436
  %436 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %437 = load i32, i32* %j397, align 4
  %idxprom441 = sext i32 %437 to i64
  %arrayidx442 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %436, i64 %idxprom441
  %438 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx442, align 8
  %439 = bitcast %struct.mvp_datapoint_t** %438 to i8*
  call void @free(i8* noundef %439) #6
  br label %for.inc443

for.inc443:                                       ; preds = %for.body440
  %440 = load i32, i32* %j397, align 4
  %inc444 = add nsw i32 %440, 1
  store i32 %inc444, i32* %j397, align 4
  br label %for.cond436, !llvm.loop !29

for.end445:                                       ; preds = %for.cond436
  %441 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %442 = bitcast %struct.mvp_datapoint_t*** %441 to i8*
  call void @free(i8* noundef %442) #6
  %443 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %443, %union.node_t** %retval, align 8
  br label %return

if.end446:                                        ; preds = %if.end419
  store i32 0, i32* %j397, align 4
  br label %for.cond447

for.cond447:                                      ; preds = %for.inc477, %if.end446
  %444 = load i32, i32* %j397, align 4
  %445 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor448 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %445, i32 0, i32 0
  %446 = load i32, i32* %branchfactor448, align 8
  %cmp449 = icmp slt i32 %444, %446
  br i1 %cmp449, label %for.body451, label %for.end479

for.body451:                                      ; preds = %for.cond447
  %447 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %448 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal453 = bitcast %union.node_t* %448 to %struct.node_internal_t*
  %child_nodes454 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal453, i32 0, i32 5
  %449 = load i8**, i8*** %child_nodes454, align 8
  %450 = load i32, i32* %i382, align 4
  %451 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor455 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %451, i32 0, i32 0
  %452 = load i32, i32* %branchfactor455, align 8
  %mul456 = mul nsw i32 %450, %452
  %453 = load i32, i32* %j397, align 4
  %add457 = add nsw i32 %mul456, %453
  %idxprom458 = sext i32 %add457 to i64
  %arrayidx459 = getelementptr inbounds i8*, i8** %449, i64 %idxprom458
  %454 = load i8*, i8** %arrayidx459, align 8
  %455 = bitcast i8* %454 to %union.node_t*
  %456 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins2421, align 8
  %457 = load i32, i32* %j397, align 4
  %idxprom460 = sext i32 %457 to i64
  %arrayidx461 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %456, i64 %idxprom460
  %458 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx461, align 8
  %459 = load i32*, i32** %bin2lengths420, align 8
  %460 = load i32, i32* %j397, align 4
  %idxprom462 = sext i32 %460 to i64
  %arrayidx463 = getelementptr inbounds i32, i32* %459, i64 %idxprom462
  %461 = load i32, i32* %arrayidx463, align 4
  %462 = load i32*, i32** %error.addr, align 8
  %463 = load i32, i32* %lvl.addr, align 4
  %add464 = add nsw i32 %463, 2
  %call465 = call %union.node_t* @_mvptree_add(%struct.mvptree_t* noundef %447, %union.node_t* noundef %455, %struct.mvp_datapoint_t** noundef %458, i32 noundef %461, i32* noundef %462, i32 noundef %add464)
  store %union.node_t* %call465, %union.node_t** %child452, align 8
  %464 = load %union.node_t*, %union.node_t** %child452, align 8
  %465 = bitcast %union.node_t* %464 to i8*
  %466 = load %union.node_t*, %union.node_t** %new_node, align 8
  %internal466 = bitcast %union.node_t* %466 to %struct.node_internal_t*
  %child_nodes467 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal466, i32 0, i32 5
  %467 = load i8**, i8*** %child_nodes467, align 8
  %468 = load i32, i32* %i382, align 4
  %469 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor468 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %469, i32 0, i32 0
  %470 = load i32, i32* %branchfactor468, align 8
  %mul469 = mul nsw i32 %468, %470
  %471 = load i32, i32* %j397, align 4
  %add470 = add nsw i32 %mul469, %471
  %idxprom471 = sext i32 %add470 to i64
  %arrayidx472 = getelementptr inbounds i8*, i8** %467, i64 %idxprom471
  store i8* %465, i8** %arrayidx472, align 8
  %472 = load i32*, i32** %error.addr, align 8
  %473 = load i32, i32* %472, align 4
  %cmp473 = icmp ne i32 %473, 0
  br i1 %cmp473, label %if.then475, label %if.end476

if.then475:                                       ; preds = %for.body451
  br label %for.end479

if.end476:                                        ; preds = %for.body451
  br label %for.inc477

for.inc477:                                       ; preds = %if.end476
  %474 = load i32, i32* %j397, align 4
  %inc478 = add nsw i32 %474, 1
  store i32 %inc478, i32* %j397, align 4
  br label %for.cond447, !llvm.loop !30

for.end479:                                       ; preds = %if.then475, %for.cond447
  %475 = load i32*, i32** %bin2lengths420, align 8
  %476 = bitcast i32* %475 to i8*
  call void @free(i8* noundef %476) #6
  store i32 0, i32* %j397, align 4
  br label %for.cond480

for.cond480:                                      ; preds = %for.inc487, %for.end479
  %477 = load i32, i32* %j397, align 4
  %478 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor481 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %478, i32 0, i32 0
  %479 = load i32, i32* %branchfactor481, align 8
  %cmp482 = icmp slt i32 %477, %479
  br i1 %cmp482, label %for.body484, label %for.end489

for.body484:                                      ; preds = %for.cond480
  %480 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins2421, align 8
  %481 = load i32, i32* %j397, align 4
  %idxprom485 = sext i32 %481 to i64
  %arrayidx486 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %480, i64 %idxprom485
  %482 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx486, align 8
  %483 = bitcast %struct.mvp_datapoint_t** %482 to i8*
  call void @free(i8* noundef %483) #6
  br label %for.inc487

for.inc487:                                       ; preds = %for.body484
  %484 = load i32, i32* %j397, align 4
  %inc488 = add nsw i32 %484, 1
  store i32 %inc488, i32* %j397, align 4
  br label %for.cond480, !llvm.loop !31

for.end489:                                       ; preds = %for.cond480
  %485 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins2421, align 8
  %486 = bitcast %struct.mvp_datapoint_t*** %485 to i8*
  call void @free(i8* noundef %486) #6
  br label %for.inc490

for.inc490:                                       ; preds = %for.end489, %if.then395
  %487 = load i32, i32* %i382, align 4
  %inc491 = add nsw i32 %487, 1
  store i32 %inc491, i32* %i382, align 4
  br label %for.cond386, !llvm.loop !32

for.end492:                                       ; preds = %for.cond386
  %488 = load i32*, i32** %binlengths375, align 8
  %489 = bitcast i32* %488 to i8*
  call void @free(i8* noundef %489) #6
  store i32 0, i32* %i382, align 4
  br label %for.cond493

for.cond493:                                      ; preds = %for.inc500, %for.end492
  %490 = load i32, i32* %i382, align 4
  %491 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor494 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %491, i32 0, i32 0
  %492 = load i32, i32* %branchfactor494, align 8
  %cmp495 = icmp slt i32 %490, %492
  br i1 %cmp495, label %for.body497, label %for.end502

for.body497:                                      ; preds = %for.cond493
  %493 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %494 = load i32, i32* %i382, align 4
  %idxprom498 = sext i32 %494 to i64
  %arrayidx499 = getelementptr inbounds %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %493, i64 %idxprom498
  %495 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %arrayidx499, align 8
  %496 = bitcast %struct.mvp_datapoint_t** %495 to i8*
  call void @free(i8* noundef %496) #6
  br label %for.inc500

for.inc500:                                       ; preds = %for.body497
  %497 = load i32, i32* %i382, align 4
  %inc501 = add nsw i32 %497, 1
  store i32 %inc501, i32* %i382, align 4
  br label %for.cond493, !llvm.loop !33

for.end502:                                       ; preds = %for.cond493
  %498 = load %struct.mvp_datapoint_t***, %struct.mvp_datapoint_t**** %bins376, align 8
  %499 = bitcast %struct.mvp_datapoint_t*** %498 to i8*
  call void @free(i8* noundef %499) #6
  br label %if.end503

if.end503:                                        ; preds = %for.end502, %if.end366
  br label %if.end504

if.end504:                                        ; preds = %if.end503, %if.end225
  %500 = load %union.node_t*, %union.node_t** %new_node, align 8
  store %union.node_t* %500, %union.node_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end504, %for.end445, %for.end418, %if.then384, %if.then373, %if.then314, %if.then255, %if.then240, %for.end182, %for.end158, %for.end138, %if.then114, %if.then105, %if.then98, %if.then85, %if.then80, %if.then43, %if.then32, %if.then17, %if.then12, %if.then4, %if.then
  %501 = load %union.node_t*, %union.node_t** %retval, align 8
  ret %union.node_t* %501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvptree_add(%struct.mvptree_t* noundef %tree, %struct.mvp_datapoint_t** noundef %points, i32 noundef %nbpoints) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %points.addr = alloca %struct.mvp_datapoint_t**, align 8
  %nbpoints.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store %struct.mvp_datapoint_t** %points, %struct.mvp_datapoint_t*** %points.addr, align 8
  store i32 %nbpoints, i32* %nbpoints.addr, align 4
  store i32 0, i32* %err, align 4
  %0 = load i32, i32* %nbpoints.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %tobool = icmp ne %struct.mvptree_t* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %tobool1 = icmp ne %struct.mvp_datapoint_t** %3, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %datatype = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %4, i32 0, i32 5
  %5 = load i32, i32* %datatype, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  %6 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %6, i64 0
  %7 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx, align 8
  %type = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %7, i32 0, i32 4
  %8 = load i32, i32* %type, align 4
  %9 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %datatype5 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %9, i32 0, i32 5
  store i32 %8, i32* %datatype5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2
  %10 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %datatype7 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %10, i32 0, i32 5
  %11 = load i32, i32* %datatype7, align 4
  %12 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %12, i64 0
  %13 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx8, align 8
  %type9 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %13, i32 0, i32 4
  %14 = load i32, i32* %type9, align 4
  %cmp10 = icmp ne i32 %11, %14
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  store i32 19, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %nbpoints.addr, align 4
  %cmp13 = icmp ult i32 %15, %16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %17, i32 0, i32 1
  %18 = load i32, i32* %pathlength, align 4
  %conv = sext i32 %18 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %19 = bitcast i8* %call to float*
  %20 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom = zext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %20, i64 %idxprom
  %22 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx14, align 8
  %path = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %22, i32 0, i32 2
  store float* %19, float** %path, align 8
  %23 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %23, i64 %idxprom15
  %25 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx16, align 8
  %path17 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %25, i32 0, i32 2
  %26 = load float*, float** %path17, align 8
  %cmp18 = icmp eq float* %26, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.body
  store i32 6, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %for.body
  %27 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %27, i64 %idxprom22
  %29 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx23, align 8
  %path24 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %29, i32 0, i32 2
  %30 = load float*, float** %path24, align 8
  %31 = bitcast float* %30 to i8*
  %32 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength25 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %32, i32 0, i32 1
  %33 = load i32, i32* %pathlength25, align 4
  %conv26 = sext i32 %33 to i64
  %mul27 = mul i64 %conv26, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 %mul27, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %34 = load i32, i32* %i, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %35 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %36 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %36, i32 0, i32 10
  %37 = load %union.node_t*, %union.node_t** %node, align 8
  %38 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points.addr, align 8
  %39 = load i32, i32* %nbpoints.addr, align 4
  %call28 = call %union.node_t* @_mvptree_add(%struct.mvptree_t* noundef %35, %union.node_t* noundef %37, %struct.mvp_datapoint_t** noundef %38, i32 noundef %39, i32* noundef %err, i32 noundef 0)
  %40 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node29 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %40, i32 0, i32 10
  store %union.node_t* %call28, %union.node_t** %node29, align 8
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %err, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end
  %41 = load i32, i32* %err, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then20, %if.then11, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mvptree_retrieve(%struct.mvptree_t* noundef %tree, %union.node_t* noundef %node, %struct.mvp_datapoint_t* noundef %target, float noundef %radius, %struct.mvp_datapoint_t** noundef %results, i32* noundef %nbresults, i32 noundef %lvl) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %node.addr = alloca %union.node_t*, align 8
  %target.addr = alloca %struct.mvp_datapoint_t*, align 8
  %radius.addr = alloca float, align 4
  %results.addr = alloca %struct.mvp_datapoint_t**, align 8
  %nbresults.addr = alloca i32*, align 8
  %lvl.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %bf = alloca i32, align 4
  %lengthM1 = alloca i32, align 4
  %d1 = alloca float, align 4
  %d2 = alloca float, align 4
  %distance = alloca float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %endpath = alloca i32, align 4
  %skip = alloca i32, align 4
  %d = alloca float, align 4
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store %union.node_t* %node, %union.node_t** %node.addr, align 8
  store %struct.mvp_datapoint_t* %target, %struct.mvp_datapoint_t** %target.addr, align 8
  store float %radius, float* %radius.addr, align 4
  store %struct.mvp_datapoint_t** %results, %struct.mvp_datapoint_t*** %results.addr, align 8
  store i32* %nbresults, i32** %nbresults.addr, align 8
  store i32 %lvl, i32* %lvl.addr, align 4
  store i32 0, i32* %err, align 4
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %0, i32 0, i32 0
  %1 = load i32, i32* %branchfactor, align 8
  store i32 %1, i32* %bf, align 4
  %2 = load i32, i32* %bf, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %lengthM1, align 4
  %3 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %cmp = icmp eq %union.node_t* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %5, i32 0, i32 11
  %6 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %6, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance, align 8
  %7 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf = bitcast %union.node_t* %7 to %struct.node_leaf_t*
  %type = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %8, 2
  br i1 %cmp1, label %if.then2, label %if.else154

if.then2:                                         ; preds = %if.end
  %9 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance, align 8
  %10 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %11 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf3 = bitcast %union.node_t* %11 to %struct.node_leaf_t*
  %sv1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf3, i32 0, i32 1
  %12 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1, align 8
  %call = call float %9(%struct.mvp_datapoint_t* noundef %10, %struct.mvp_datapoint_t* noundef %12)
  store float %call, float* %d1, align 4
  %13 = load float, float* %d1, align 4
  %call4 = call i32 @is_nan(float noundef %13)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %14 = load float, float* %d1, align 4
  %cmp5 = fcmp olt float %14, 0.000000e+00
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.then2
  store i32 23, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %15 = load i32, i32* %lvl.addr, align 4
  %16 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %16, i32 0, i32 1
  %17 = load i32, i32* %pathlength, align 4
  %cmp8 = icmp slt i32 %15, %17
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %18 = load float, float* %d1, align 4
  %19 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %19, i32 0, i32 2
  %20 = load float*, float** %path, align 8
  %21 = load i32, i32* %lvl.addr, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds float, float* %20, i64 %idxprom
  store float %18, float* %arrayidx, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %22 = load float, float* %d1, align 4
  %23 = load float, float* %radius.addr, align 4
  %cmp11 = fcmp ole float %22, %23
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end10
  %24 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf13 = bitcast %union.node_t* %24 to %struct.node_leaf_t*
  %sv114 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf13, i32 0, i32 1
  %25 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv114, align 8
  %26 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %27 = load i32*, i32** %nbresults.addr, align 8
  %28 = load i32, i32* %27, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %27, align 4
  %idxprom15 = zext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %26, i64 %idxprom15
  store %struct.mvp_datapoint_t* %25, %struct.mvp_datapoint_t** %arrayidx16, align 8
  %29 = load i32*, i32** %nbresults.addr, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %k = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %31, i32 0, i32 4
  %32 = load i32, i32* %k, align 8
  %cmp17 = icmp uge i32 %30, %32
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then12
  store i32 20, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then12
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end10
  %33 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node21 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %33, i32 0, i32 10
  %34 = load %union.node_t*, %union.node_t** %node21, align 8
  %leaf22 = bitcast %union.node_t* %34 to %struct.node_leaf_t*
  %sv2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf22, i32 0, i32 2
  %35 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2, align 8
  %tobool23 = icmp ne %struct.mvp_datapoint_t* %35, null
  br i1 %tobool23, label %if.then24, label %if.end153

if.then24:                                        ; preds = %if.end20
  %36 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance, align 8
  %37 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %38 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf25 = bitcast %union.node_t* %38 to %struct.node_leaf_t*
  %sv226 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf25, i32 0, i32 2
  %39 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv226, align 8
  %call27 = call float %36(%struct.mvp_datapoint_t* noundef %37, %struct.mvp_datapoint_t* noundef %39)
  store float %call27, float* %d2, align 4
  %40 = load float, float* %d2, align 4
  %call28 = call i32 @is_nan(float noundef %40)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then32, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.then24
  %41 = load float, float* %d2, align 4
  %cmp31 = fcmp olt float %41, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false30, %if.then24
  store i32 23, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %lor.lhs.false30
  %42 = load float, float* %d2, align 4
  %43 = load float, float* %radius.addr, align 4
  %cmp34 = fcmp ole float %42, %43
  br i1 %cmp34, label %if.then35, label %if.end45

if.then35:                                        ; preds = %if.end33
  %44 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf36 = bitcast %union.node_t* %44 to %struct.node_leaf_t*
  %sv237 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf36, i32 0, i32 2
  %45 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv237, align 8
  %46 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %47 = load i32*, i32** %nbresults.addr, align 8
  %48 = load i32, i32* %47, align 4
  %inc38 = add i32 %48, 1
  store i32 %inc38, i32* %47, align 4
  %idxprom39 = zext i32 %48 to i64
  %arrayidx40 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %46, i64 %idxprom39
  store %struct.mvp_datapoint_t* %45, %struct.mvp_datapoint_t** %arrayidx40, align 8
  %49 = load i32*, i32** %nbresults.addr, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %k41 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %51, i32 0, i32 4
  %52 = load i32, i32* %k41, align 8
  %cmp42 = icmp uge i32 %50, %52
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then35
  store i32 20, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then35
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end33
  %53 = load i32, i32* %lvl.addr, align 4
  %add = add nsw i32 %53, 1
  %54 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength46 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %54, i32 0, i32 1
  %55 = load i32, i32* %pathlength46, align 4
  %cmp47 = icmp slt i32 %add, %55
  br i1 %cmp47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.end45
  %56 = load float, float* %d2, align 4
  %57 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path49 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %57, i32 0, i32 2
  %58 = load float*, float** %path49, align 8
  %59 = load i32, i32* %lvl.addr, align 4
  %add50 = add nsw i32 %59, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds float, float* %58, i64 %idxprom51
  store float %56, float* %arrayidx52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end45
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc150, %if.end53
  %60 = load i32, i32* %i, align 4
  %61 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf54 = bitcast %union.node_t* %61 to %struct.node_leaf_t*
  %nbpoints = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf54, i32 0, i32 6
  %62 = load i32, i32* %nbpoints, align 8
  %cmp55 = icmp ult i32 %60, %62
  br i1 %cmp55, label %for.body, label %for.end152

for.body:                                         ; preds = %for.cond
  %63 = load float, float* %d1, align 4
  %64 = load float, float* %radius.addr, align 4
  %sub56 = fsub float %63, %64
  %65 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf57 = bitcast %union.node_t* %65 to %struct.node_leaf_t*
  %d158 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf57, i32 0, i32 4
  %66 = load float*, float** %d158, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom59 = zext i32 %67 to i64
  %arrayidx60 = getelementptr inbounds float, float* %66, i64 %idxprom59
  %68 = load float, float* %arrayidx60, align 4
  %cmp61 = fcmp ole float %sub56, %68
  br i1 %cmp61, label %land.lhs.true, label %if.end149

land.lhs.true:                                    ; preds = %for.body
  %69 = load float, float* %d1, align 4
  %70 = load float, float* %radius.addr, align 4
  %add62 = fadd float %69, %70
  %71 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf63 = bitcast %union.node_t* %71 to %struct.node_leaf_t*
  %d164 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf63, i32 0, i32 4
  %72 = load float*, float** %d164, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom65 = zext i32 %73 to i64
  %arrayidx66 = getelementptr inbounds float, float* %72, i64 %idxprom65
  %74 = load float, float* %arrayidx66, align 4
  %cmp67 = fcmp oge float %add62, %74
  br i1 %cmp67, label %if.then68, label %if.end149

if.then68:                                        ; preds = %land.lhs.true
  %75 = load float, float* %d2, align 4
  %76 = load float, float* %radius.addr, align 4
  %sub69 = fsub float %75, %76
  %77 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf70 = bitcast %union.node_t* %77 to %struct.node_leaf_t*
  %d271 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf70, i32 0, i32 5
  %78 = load float*, float** %d271, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom72 = zext i32 %79 to i64
  %arrayidx73 = getelementptr inbounds float, float* %78, i64 %idxprom72
  %80 = load float, float* %arrayidx73, align 4
  %cmp74 = fcmp ole float %sub69, %80
  br i1 %cmp74, label %land.lhs.true75, label %if.end148

land.lhs.true75:                                  ; preds = %if.then68
  %81 = load float, float* %d2, align 4
  %82 = load float, float* %radius.addr, align 4
  %add76 = fadd float %81, %82
  %83 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf77 = bitcast %union.node_t* %83 to %struct.node_leaf_t*
  %d278 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf77, i32 0, i32 5
  %84 = load float*, float** %d278, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom79 = zext i32 %85 to i64
  %arrayidx80 = getelementptr inbounds float, float* %84, i64 %idxprom79
  %86 = load float, float* %arrayidx80, align 4
  %cmp81 = fcmp oge float %add76, %86
  br i1 %cmp81, label %if.then82, label %if.end148

if.then82:                                        ; preds = %land.lhs.true75
  %87 = load i32, i32* %lvl.addr, align 4
  %add83 = add nsw i32 %87, 1
  %88 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength84 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %88, i32 0, i32 1
  %89 = load i32, i32* %pathlength84, align 4
  %cmp85 = icmp slt i32 %add83, %89
  br i1 %cmp85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then82
  %90 = load i32, i32* %lvl.addr, align 4
  %add86 = add nsw i32 %90, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then82
  %91 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength87 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %91, i32 0, i32 1
  %92 = load i32, i32* %pathlength87, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add86, %cond.true ], [ %92, %cond.false ]
  store i32 %cond, i32* %endpath, align 4
  store i32 0, i32* %skip, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc, %cond.end
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %endpath, align 4
  %cmp89 = icmp ult i32 %93, %94
  br i1 %cmp89, label %for.body90, label %for.end

for.body90:                                       ; preds = %for.cond88
  %95 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path91 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %95, i32 0, i32 2
  %96 = load float*, float** %path91, align 8
  %97 = load i32, i32* %j, align 4
  %idxprom92 = zext i32 %97 to i64
  %arrayidx93 = getelementptr inbounds float, float* %96, i64 %idxprom92
  %98 = load float, float* %arrayidx93, align 4
  %99 = load float, float* %radius.addr, align 4
  %sub94 = fsub float %98, %99
  %100 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf95 = bitcast %union.node_t* %100 to %struct.node_leaf_t*
  %points = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf95, i32 0, i32 3
  %101 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points, align 8
  %102 = load i32, i32* %i, align 4
  %idxprom96 = zext i32 %102 to i64
  %arrayidx97 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %101, i64 %idxprom96
  %103 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx97, align 8
  %path98 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %103, i32 0, i32 2
  %104 = load float*, float** %path98, align 8
  %105 = load i32, i32* %j, align 4
  %idxprom99 = zext i32 %105 to i64
  %arrayidx100 = getelementptr inbounds float, float* %104, i64 %idxprom99
  %106 = load float, float* %arrayidx100, align 4
  %cmp101 = fcmp ole float %sub94, %106
  br i1 %cmp101, label %land.lhs.true102, label %if.else

land.lhs.true102:                                 ; preds = %for.body90
  %107 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path103 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %107, i32 0, i32 2
  %108 = load float*, float** %path103, align 8
  %109 = load i32, i32* %j, align 4
  %idxprom104 = zext i32 %109 to i64
  %arrayidx105 = getelementptr inbounds float, float* %108, i64 %idxprom104
  %110 = load float, float* %arrayidx105, align 4
  %111 = load float, float* %radius.addr, align 4
  %add106 = fadd float %110, %111
  %112 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf107 = bitcast %union.node_t* %112 to %struct.node_leaf_t*
  %points108 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf107, i32 0, i32 3
  %113 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points108, align 8
  %114 = load i32, i32* %i, align 4
  %idxprom109 = zext i32 %114 to i64
  %arrayidx110 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %113, i64 %idxprom109
  %115 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx110, align 8
  %path111 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %115, i32 0, i32 2
  %116 = load float*, float** %path111, align 8
  %117 = load i32, i32* %j, align 4
  %idxprom112 = zext i32 %117 to i64
  %arrayidx113 = getelementptr inbounds float, float* %116, i64 %idxprom112
  %118 = load float, float* %arrayidx113, align 4
  %cmp114 = fcmp oge float %add106, %118
  br i1 %cmp114, label %if.then115, label %if.else

if.then115:                                       ; preds = %land.lhs.true102
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true102, %for.body90
  store i32 1, i32* %skip, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then115
  %119 = load i32, i32* %j, align 4
  %inc116 = add i32 %119, 1
  store i32 %inc116, i32* %j, align 4
  br label %for.cond88, !llvm.loop !35

for.end:                                          ; preds = %if.else, %for.cond88
  %120 = load i32, i32* %skip, align 4
  %tobool117 = icmp ne i32 %120, 0
  br i1 %tobool117, label %if.end147, label %if.then118

if.then118:                                       ; preds = %for.end
  %121 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance, align 8
  %122 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %123 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf119 = bitcast %union.node_t* %123 to %struct.node_leaf_t*
  %points120 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf119, i32 0, i32 3
  %124 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points120, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom121 = zext i32 %125 to i64
  %arrayidx122 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %124, i64 %idxprom121
  %126 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx122, align 8
  %call123 = call float %121(%struct.mvp_datapoint_t* noundef %122, %struct.mvp_datapoint_t* noundef %126)
  store float %call123, float* %d, align 4
  %127 = load float, float* %d, align 4
  %call124 = call i32 @is_nan(float noundef %127)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then129, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.then118
  %128 = load float, float* %d, align 4
  %conv = fpext float %128 to double
  %cmp127 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %lor.lhs.false126, %if.then118
  store i32 23, i32* %retval, align 4
  br label %return

if.end130:                                        ; preds = %lor.lhs.false126
  %129 = load float, float* %d, align 4
  %130 = load float, float* %radius.addr, align 4
  %cmp131 = fcmp ole float %129, %130
  br i1 %cmp131, label %if.then133, label %if.end146

if.then133:                                       ; preds = %if.end130
  %131 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf134 = bitcast %union.node_t* %131 to %struct.node_leaf_t*
  %points135 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf134, i32 0, i32 3
  %132 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points135, align 8
  %133 = load i32, i32* %i, align 4
  %idxprom136 = zext i32 %133 to i64
  %arrayidx137 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %132, i64 %idxprom136
  %134 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx137, align 8
  %135 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %136 = load i32*, i32** %nbresults.addr, align 8
  %137 = load i32, i32* %136, align 4
  %inc138 = add i32 %137, 1
  store i32 %inc138, i32* %136, align 4
  %idxprom139 = zext i32 %137 to i64
  %arrayidx140 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %135, i64 %idxprom139
  store %struct.mvp_datapoint_t* %134, %struct.mvp_datapoint_t** %arrayidx140, align 8
  %138 = load i32*, i32** %nbresults.addr, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %k141 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %140, i32 0, i32 4
  %141 = load i32, i32* %k141, align 8
  %cmp142 = icmp uge i32 %139, %141
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.then133
  store i32 20, i32* %retval, align 4
  br label %return

if.end145:                                        ; preds = %if.then133
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end130
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %for.end
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %land.lhs.true75, %if.then68
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %land.lhs.true, %for.body
  br label %for.inc150

for.inc150:                                       ; preds = %if.end149
  %142 = load i32, i32* %i, align 4
  %inc151 = add i32 %142, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond, !llvm.loop !36

for.end152:                                       ; preds = %for.cond
  br label %if.end153

if.end153:                                        ; preds = %for.end152, %if.end20
  br label %if.end357

if.else154:                                       ; preds = %if.end
  %143 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal = bitcast %union.node_t* %143 to %struct.node_internal_t*
  %type155 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 0
  %144 = load i32, i32* %type155, align 8
  %cmp156 = icmp eq i32 %144, 1
  br i1 %cmp156, label %if.then158, label %if.else355

if.then158:                                       ; preds = %if.else154
  %145 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance, align 8
  %146 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %147 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal159 = bitcast %union.node_t* %147 to %struct.node_internal_t*
  %sv1160 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal159, i32 0, i32 1
  %148 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1160, align 8
  %call161 = call float %145(%struct.mvp_datapoint_t* noundef %146, %struct.mvp_datapoint_t* noundef %148)
  store float %call161, float* %d1, align 4
  %149 = load float, float* %d1, align 4
  %call162 = call i32 @is_nan(float noundef %149)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.then167, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %if.then158
  %150 = load float, float* %d1, align 4
  %cmp165 = fcmp olt float %150, 0.000000e+00
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %lor.lhs.false164, %if.then158
  store i32 23, i32* %retval, align 4
  br label %return

if.end168:                                        ; preds = %lor.lhs.false164
  %151 = load float, float* %d1, align 4
  %152 = load float, float* %radius.addr, align 4
  %cmp169 = fcmp ole float %151, %152
  br i1 %cmp169, label %if.then171, label %if.end182

if.then171:                                       ; preds = %if.end168
  %153 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal172 = bitcast %union.node_t* %153 to %struct.node_internal_t*
  %sv1173 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal172, i32 0, i32 1
  %154 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1173, align 8
  %155 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %156 = load i32*, i32** %nbresults.addr, align 8
  %157 = load i32, i32* %156, align 4
  %inc174 = add i32 %157, 1
  store i32 %inc174, i32* %156, align 4
  %idxprom175 = zext i32 %157 to i64
  %arrayidx176 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %155, i64 %idxprom175
  store %struct.mvp_datapoint_t* %154, %struct.mvp_datapoint_t** %arrayidx176, align 8
  %158 = load i32*, i32** %nbresults.addr, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %k177 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %160, i32 0, i32 4
  %161 = load i32, i32* %k177, align 8
  %cmp178 = icmp uge i32 %159, %161
  br i1 %cmp178, label %if.then180, label %if.end181

if.then180:                                       ; preds = %if.then171
  store i32 20, i32* %retval, align 4
  br label %return

if.end181:                                        ; preds = %if.then171
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end168
  %162 = load i32, i32* %lvl.addr, align 4
  %163 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength183 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %163, i32 0, i32 1
  %164 = load i32, i32* %pathlength183, align 4
  %cmp184 = icmp slt i32 %162, %164
  br i1 %cmp184, label %if.then186, label %if.end190

if.then186:                                       ; preds = %if.end182
  %165 = load float, float* %d1, align 4
  %166 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path187 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %166, i32 0, i32 2
  %167 = load float*, float** %path187, align 8
  %168 = load i32, i32* %lvl.addr, align 4
  %idxprom188 = sext i32 %168 to i64
  %arrayidx189 = getelementptr inbounds float, float* %167, i64 %idxprom188
  store float %165, float* %arrayidx189, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then186, %if.end182
  %169 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %distance, align 8
  %170 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %171 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal191 = bitcast %union.node_t* %171 to %struct.node_internal_t*
  %sv2192 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal191, i32 0, i32 2
  %172 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2192, align 8
  %call193 = call float %169(%struct.mvp_datapoint_t* noundef %170, %struct.mvp_datapoint_t* noundef %172)
  store float %call193, float* %d2, align 4
  %173 = load float, float* %d2, align 4
  %call194 = call i32 @is_nan(float noundef %173)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then199, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %if.end190
  %174 = load float, float* %d2, align 4
  %cmp197 = fcmp olt float %174, 0.000000e+00
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %lor.lhs.false196, %if.end190
  store i32 23, i32* %retval, align 4
  br label %return

if.end200:                                        ; preds = %lor.lhs.false196
  %175 = load float, float* %d2, align 4
  %176 = load float, float* %radius.addr, align 4
  %cmp201 = fcmp ole float %175, %176
  br i1 %cmp201, label %if.then203, label %if.end214

if.then203:                                       ; preds = %if.end200
  %177 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal204 = bitcast %union.node_t* %177 to %struct.node_internal_t*
  %sv2205 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal204, i32 0, i32 2
  %178 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2205, align 8
  %179 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %180 = load i32*, i32** %nbresults.addr, align 8
  %181 = load i32, i32* %180, align 4
  %inc206 = add i32 %181, 1
  store i32 %inc206, i32* %180, align 4
  %idxprom207 = zext i32 %181 to i64
  %arrayidx208 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %179, i64 %idxprom207
  store %struct.mvp_datapoint_t* %178, %struct.mvp_datapoint_t** %arrayidx208, align 8
  %182 = load i32*, i32** %nbresults.addr, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %k209 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %184, i32 0, i32 4
  %185 = load i32, i32* %k209, align 8
  %cmp210 = icmp uge i32 %183, %185
  br i1 %cmp210, label %if.then212, label %if.end213

if.then212:                                       ; preds = %if.then203
  store i32 20, i32* %retval, align 4
  br label %return

if.end213:                                        ; preds = %if.then203
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.end200
  %186 = load i32, i32* %lvl.addr, align 4
  %add215 = add nsw i32 %186, 1
  %187 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength216 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %187, i32 0, i32 1
  %188 = load i32, i32* %pathlength216, align 4
  %cmp217 = icmp slt i32 %add215, %188
  br i1 %cmp217, label %if.then219, label %if.end224

if.then219:                                       ; preds = %if.end214
  %189 = load float, float* %d2, align 4
  %190 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path220 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %190, i32 0, i32 2
  %191 = load float*, float** %path220, align 8
  %192 = load i32, i32* %lvl.addr, align 4
  %add221 = add nsw i32 %192, 1
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds float, float* %191, i64 %idxprom222
  store float %189, float* %arrayidx223, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then219, %if.end214
  store i32 0, i32* %i, align 4
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc288, %if.end224
  %193 = load i32, i32* %i, align 4
  %194 = load i32, i32* %lengthM1, align 4
  %cmp226 = icmp ult i32 %193, %194
  br i1 %cmp226, label %for.body228, label %for.end290

for.body228:                                      ; preds = %for.cond225
  %195 = load float, float* %d1, align 4
  %196 = load float, float* %radius.addr, align 4
  %sub229 = fsub float %195, %196
  %197 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal230 = bitcast %union.node_t* %197 to %struct.node_internal_t*
  %M1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal230, i32 0, i32 3
  %198 = load float*, float** %M1, align 8
  %199 = load i32, i32* %i, align 4
  %idxprom231 = zext i32 %199 to i64
  %arrayidx232 = getelementptr inbounds float, float* %198, i64 %idxprom231
  %200 = load float, float* %arrayidx232, align 4
  %cmp233 = fcmp ole float %sub229, %200
  br i1 %cmp233, label %if.then235, label %if.end287

if.then235:                                       ; preds = %for.body228
  store i32 0, i32* %j, align 4
  br label %for.cond236

for.cond236:                                      ; preds = %for.inc260, %if.then235
  %201 = load i32, i32* %j, align 4
  %202 = load i32, i32* %lengthM1, align 4
  %cmp237 = icmp ult i32 %201, %202
  br i1 %cmp237, label %for.body239, label %for.end262

for.body239:                                      ; preds = %for.cond236
  %203 = load float, float* %d2, align 4
  %204 = load float, float* %radius.addr, align 4
  %sub240 = fsub float %203, %204
  %205 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal241 = bitcast %union.node_t* %205 to %struct.node_internal_t*
  %M2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal241, i32 0, i32 4
  %206 = load float*, float** %M2, align 8
  %207 = load i32, i32* %i, align 4
  %208 = load i32, i32* %lengthM1, align 4
  %mul = mul i32 %207, %208
  %209 = load i32, i32* %j, align 4
  %add242 = add i32 %mul, %209
  %idxprom243 = zext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds float, float* %206, i64 %idxprom243
  %210 = load float, float* %arrayidx244, align 4
  %cmp245 = fcmp ole float %sub240, %210
  br i1 %cmp245, label %if.then247, label %if.end259

if.then247:                                       ; preds = %for.body239
  %211 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %212 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal248 = bitcast %union.node_t* %212 to %struct.node_internal_t*
  %child_nodes = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal248, i32 0, i32 5
  %213 = load i8**, i8*** %child_nodes, align 8
  %214 = load i32, i32* %i, align 4
  %215 = load i32, i32* %bf, align 4
  %mul249 = mul i32 %214, %215
  %216 = load i32, i32* %j, align 4
  %add250 = add i32 %mul249, %216
  %idxprom251 = zext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds i8*, i8** %213, i64 %idxprom251
  %217 = load i8*, i8** %arrayidx252, align 8
  %218 = bitcast i8* %217 to %union.node_t*
  %219 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %220 = load float, float* %radius.addr, align 4
  %221 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %222 = load i32*, i32** %nbresults.addr, align 8
  %223 = load i32, i32* %lvl.addr, align 4
  %add253 = add nsw i32 %223, 2
  %call254 = call i32 @_mvptree_retrieve(%struct.mvptree_t* noundef %211, %union.node_t* noundef %218, %struct.mvp_datapoint_t* noundef %219, float noundef %220, %struct.mvp_datapoint_t** noundef %221, i32* noundef %222, i32 noundef %add253)
  store i32 %call254, i32* %err, align 4
  %224 = load i32, i32* %err, align 4
  %cmp255 = icmp ne i32 %224, 0
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.then247
  %225 = load i32, i32* %err, align 4
  store i32 %225, i32* %retval, align 4
  br label %return

if.end258:                                        ; preds = %if.then247
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %for.body239
  br label %for.inc260

for.inc260:                                       ; preds = %if.end259
  %226 = load i32, i32* %j, align 4
  %inc261 = add i32 %226, 1
  store i32 %inc261, i32* %j, align 4
  br label %for.cond236, !llvm.loop !37

for.end262:                                       ; preds = %for.cond236
  %227 = load float, float* %d2, align 4
  %228 = load float, float* %radius.addr, align 4
  %add263 = fadd float %227, %228
  %229 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal264 = bitcast %union.node_t* %229 to %struct.node_internal_t*
  %M2265 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal264, i32 0, i32 4
  %230 = load float*, float** %M2265, align 8
  %231 = load i32, i32* %i, align 4
  %232 = load i32, i32* %lengthM1, align 4
  %mul266 = mul i32 %231, %232
  %233 = load i32, i32* %lengthM1, align 4
  %add267 = add i32 %mul266, %233
  %sub268 = sub i32 %add267, 1
  %idxprom269 = zext i32 %sub268 to i64
  %arrayidx270 = getelementptr inbounds float, float* %230, i64 %idxprom269
  %234 = load float, float* %arrayidx270, align 4
  %cmp271 = fcmp oge float %add263, %234
  br i1 %cmp271, label %if.then273, label %if.end286

if.then273:                                       ; preds = %for.end262
  %235 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %236 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal274 = bitcast %union.node_t* %236 to %struct.node_internal_t*
  %child_nodes275 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal274, i32 0, i32 5
  %237 = load i8**, i8*** %child_nodes275, align 8
  %238 = load i32, i32* %i, align 4
  %239 = load i32, i32* %bf, align 4
  %mul276 = mul i32 %238, %239
  %240 = load i32, i32* %lengthM1, align 4
  %add277 = add i32 %mul276, %240
  %idxprom278 = zext i32 %add277 to i64
  %arrayidx279 = getelementptr inbounds i8*, i8** %237, i64 %idxprom278
  %241 = load i8*, i8** %arrayidx279, align 8
  %242 = bitcast i8* %241 to %union.node_t*
  %243 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %244 = load float, float* %radius.addr, align 4
  %245 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %246 = load i32*, i32** %nbresults.addr, align 8
  %247 = load i32, i32* %lvl.addr, align 4
  %add280 = add nsw i32 %247, 2
  %call281 = call i32 @_mvptree_retrieve(%struct.mvptree_t* noundef %235, %union.node_t* noundef %242, %struct.mvp_datapoint_t* noundef %243, float noundef %244, %struct.mvp_datapoint_t** noundef %245, i32* noundef %246, i32 noundef %add280)
  store i32 %call281, i32* %err, align 4
  %248 = load i32, i32* %err, align 4
  %cmp282 = icmp ne i32 %248, 0
  br i1 %cmp282, label %if.then284, label %if.end285

if.then284:                                       ; preds = %if.then273
  %249 = load i32, i32* %err, align 4
  store i32 %249, i32* %retval, align 4
  br label %return

if.end285:                                        ; preds = %if.then273
  br label %if.end286

if.end286:                                        ; preds = %if.end285, %for.end262
  br label %if.end287

if.end287:                                        ; preds = %if.end286, %for.body228
  br label %for.inc288

for.inc288:                                       ; preds = %if.end287
  %250 = load i32, i32* %i, align 4
  %inc289 = add i32 %250, 1
  store i32 %inc289, i32* %i, align 4
  br label %for.cond225, !llvm.loop !38

for.end290:                                       ; preds = %for.cond225
  %251 = load float, float* %d1, align 4
  %252 = load float, float* %radius.addr, align 4
  %add291 = fadd float %251, %252
  %253 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal292 = bitcast %union.node_t* %253 to %struct.node_internal_t*
  %M1293 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal292, i32 0, i32 3
  %254 = load float*, float** %M1293, align 8
  %255 = load i32, i32* %lengthM1, align 4
  %sub294 = sub nsw i32 %255, 1
  %idxprom295 = sext i32 %sub294 to i64
  %arrayidx296 = getelementptr inbounds float, float* %254, i64 %idxprom295
  %256 = load float, float* %arrayidx296, align 4
  %cmp297 = fcmp oge float %add291, %256
  br i1 %cmp297, label %if.then299, label %if.end354

if.then299:                                       ; preds = %for.end290
  store i32 0, i32* %j, align 4
  br label %for.cond300

for.cond300:                                      ; preds = %for.inc327, %if.then299
  %257 = load i32, i32* %j, align 4
  %258 = load i32, i32* %lengthM1, align 4
  %cmp301 = icmp ult i32 %257, %258
  br i1 %cmp301, label %for.body303, label %for.end329

for.body303:                                      ; preds = %for.cond300
  %259 = load float, float* %d2, align 4
  %260 = load float, float* %radius.addr, align 4
  %sub304 = fsub float %259, %260
  %261 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal305 = bitcast %union.node_t* %261 to %struct.node_internal_t*
  %M2306 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal305, i32 0, i32 4
  %262 = load float*, float** %M2306, align 8
  %263 = load i32, i32* %lengthM1, align 4
  %264 = load i32, i32* %lengthM1, align 4
  %mul307 = mul nsw i32 %263, %264
  %265 = load i32, i32* %j, align 4
  %add308 = add i32 %mul307, %265
  %idxprom309 = zext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds float, float* %262, i64 %idxprom309
  %266 = load float, float* %arrayidx310, align 4
  %cmp311 = fcmp ole float %sub304, %266
  br i1 %cmp311, label %if.then313, label %if.end326

if.then313:                                       ; preds = %for.body303
  %267 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %268 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal314 = bitcast %union.node_t* %268 to %struct.node_internal_t*
  %child_nodes315 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal314, i32 0, i32 5
  %269 = load i8**, i8*** %child_nodes315, align 8
  %270 = load i32, i32* %bf, align 4
  %271 = load i32, i32* %lengthM1, align 4
  %mul316 = mul nsw i32 %270, %271
  %272 = load i32, i32* %j, align 4
  %add317 = add i32 %mul316, %272
  %idxprom318 = zext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds i8*, i8** %269, i64 %idxprom318
  %273 = load i8*, i8** %arrayidx319, align 8
  %274 = bitcast i8* %273 to %union.node_t*
  %275 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %276 = load float, float* %radius.addr, align 4
  %277 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %278 = load i32*, i32** %nbresults.addr, align 8
  %279 = load i32, i32* %lvl.addr, align 4
  %add320 = add nsw i32 %279, 2
  %call321 = call i32 @_mvptree_retrieve(%struct.mvptree_t* noundef %267, %union.node_t* noundef %274, %struct.mvp_datapoint_t* noundef %275, float noundef %276, %struct.mvp_datapoint_t** noundef %277, i32* noundef %278, i32 noundef %add320)
  store i32 %call321, i32* %err, align 4
  %280 = load i32, i32* %err, align 4
  %cmp322 = icmp ne i32 %280, 0
  br i1 %cmp322, label %if.then324, label %if.end325

if.then324:                                       ; preds = %if.then313
  %281 = load i32, i32* %err, align 4
  store i32 %281, i32* %retval, align 4
  br label %return

if.end325:                                        ; preds = %if.then313
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %for.body303
  br label %for.inc327

for.inc327:                                       ; preds = %if.end326
  %282 = load i32, i32* %j, align 4
  %inc328 = add i32 %282, 1
  store i32 %inc328, i32* %j, align 4
  br label %for.cond300, !llvm.loop !39

for.end329:                                       ; preds = %for.cond300
  %283 = load float, float* %d2, align 4
  %284 = load float, float* %radius.addr, align 4
  %add330 = fadd float %283, %284
  %285 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal331 = bitcast %union.node_t* %285 to %struct.node_internal_t*
  %M2332 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal331, i32 0, i32 4
  %286 = load float*, float** %M2332, align 8
  %287 = load i32, i32* %lengthM1, align 4
  %288 = load i32, i32* %lengthM1, align 4
  %mul333 = mul nsw i32 %287, %288
  %289 = load i32, i32* %lengthM1, align 4
  %add334 = add nsw i32 %mul333, %289
  %sub335 = sub nsw i32 %add334, 1
  %idxprom336 = sext i32 %sub335 to i64
  %arrayidx337 = getelementptr inbounds float, float* %286, i64 %idxprom336
  %290 = load float, float* %arrayidx337, align 4
  %cmp338 = fcmp oge float %add330, %290
  br i1 %cmp338, label %if.then340, label %if.end353

if.then340:                                       ; preds = %for.end329
  %291 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %292 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal341 = bitcast %union.node_t* %292 to %struct.node_internal_t*
  %child_nodes342 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal341, i32 0, i32 5
  %293 = load i8**, i8*** %child_nodes342, align 8
  %294 = load i32, i32* %bf, align 4
  %295 = load i32, i32* %lengthM1, align 4
  %mul343 = mul nsw i32 %294, %295
  %296 = load i32, i32* %lengthM1, align 4
  %add344 = add nsw i32 %mul343, %296
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds i8*, i8** %293, i64 %idxprom345
  %297 = load i8*, i8** %arrayidx346, align 8
  %298 = bitcast i8* %297 to %union.node_t*
  %299 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %300 = load float, float* %radius.addr, align 4
  %301 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results.addr, align 8
  %302 = load i32*, i32** %nbresults.addr, align 8
  %303 = load i32, i32* %lvl.addr, align 4
  %add347 = add nsw i32 %303, 2
  %call348 = call i32 @_mvptree_retrieve(%struct.mvptree_t* noundef %291, %union.node_t* noundef %298, %struct.mvp_datapoint_t* noundef %299, float noundef %300, %struct.mvp_datapoint_t** noundef %301, i32* noundef %302, i32 noundef %add347)
  store i32 %call348, i32* %err, align 4
  %304 = load i32, i32* %err, align 4
  %cmp349 = icmp ne i32 %304, 0
  br i1 %cmp349, label %if.then351, label %if.end352

if.then351:                                       ; preds = %if.then340
  %305 = load i32, i32* %err, align 4
  store i32 %305, i32* %retval, align 4
  br label %return

if.end352:                                        ; preds = %if.then340
  br label %if.end353

if.end353:                                        ; preds = %if.end352, %for.end329
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %for.end290
  br label %if.end356

if.else355:                                       ; preds = %if.else154
  store i32 25, i32* %err, align 4
  br label %if.end356

if.end356:                                        ; preds = %if.else355, %if.end354
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %if.end153
  %306 = load i32, i32* %err, align 4
  store i32 %306, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end357, %if.then351, %if.then324, %if.then284, %if.then257, %if.then212, %if.then199, %if.then180, %if.then167, %if.then144, %if.then129, %if.then43, %if.then32, %if.then18, %if.then6, %if.then
  %307 = load i32, i32* %retval, align 4
  ret i32 %307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mvp_datapoint_t** @mvptree_retrieve(%struct.mvptree_t* noundef %tree, %struct.mvp_datapoint_t* noundef %target, i32 noundef %knearest, float noundef %radius, i32* noundef %nbresults, i32* noundef %error) #0 {
entry:
  %retval = alloca %struct.mvp_datapoint_t**, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %target.addr = alloca %struct.mvp_datapoint_t*, align 8
  %knearest.addr = alloca i32, align 4
  %radius.addr = alloca float, align 4
  %nbresults.addr = alloca i32*, align 8
  %error.addr = alloca i32*, align 8
  %results = alloca %struct.mvp_datapoint_t**, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store %struct.mvp_datapoint_t* %target, %struct.mvp_datapoint_t** %target.addr, align 8
  store i32 %knearest, i32* %knearest.addr, align 4
  store float %radius, float* %radius.addr, align 4
  store i32* %nbresults, i32** %nbresults.addr, align 8
  store i32* %error, i32** %error.addr, align 8
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %tobool = icmp ne %struct.mvptree_t* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %tobool1 = icmp ne %struct.mvp_datapoint_t* %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32*, i32** %nbresults.addr, align 8
  %tobool3 = icmp ne i32* %2, null
  br i1 %tobool3, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %knearest.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false4
  %4 = load float, float* %radius.addr, align 4
  %cmp6 = fcmp olt float %4, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = load i32*, i32** %error.addr, align 8
  store i32 1, i32* %5, align 4
  store %struct.mvp_datapoint_t** null, %struct.mvp_datapoint_t*** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %6 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %6, i32 0, i32 11
  %7 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  %tobool7 = icmp ne float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %7, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  %8 = load i32*, i32** %error.addr, align 8
  store i32 2, i32* %8, align 4
  store %struct.mvp_datapoint_t** null, %struct.mvp_datapoint_t*** %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %9 = load i32*, i32** %nbresults.addr, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %error.addr, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %11, i32 0, i32 10
  %12 = load %union.node_t*, %union.node_t** %node, align 8
  %tobool10 = icmp ne %union.node_t* %12, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  %13 = load i32*, i32** %error.addr, align 8
  store i32 21, i32* %13, align 4
  store %struct.mvp_datapoint_t** null, %struct.mvp_datapoint_t*** %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end9
  %14 = load i32, i32* %knearest.addr, align 4
  %conv = zext i32 %14 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 noundef %mul) #6
  %15 = bitcast i8* %call to %struct.mvp_datapoint_t**
  store %struct.mvp_datapoint_t** %15, %struct.mvp_datapoint_t*** %results, align 8
  %16 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results, align 8
  %tobool13 = icmp ne %struct.mvp_datapoint_t** %16, null
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  %17 = load i32*, i32** %error.addr, align 8
  store i32 3, i32* %17, align 4
  store %struct.mvp_datapoint_t** null, %struct.mvp_datapoint_t*** %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end12
  %18 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %18, i32 0, i32 1
  %19 = load i32, i32* %pathlength, align 4
  %conv16 = sext i32 %19 to i64
  %mul17 = mul i64 %conv16, 4
  %call18 = call noalias i8* @malloc(i64 noundef %mul17) #6
  %20 = bitcast i8* %call18 to float*
  %21 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %21, i32 0, i32 2
  store float* %20, float** %path, align 8
  %22 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path19 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %22, i32 0, i32 2
  %23 = load float*, float** %path19, align 8
  %cmp20 = icmp eq float* %23, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  %24 = load i32*, i32** %error.addr, align 8
  store i32 3, i32* %24, align 4
  %25 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results, align 8
  %26 = bitcast %struct.mvp_datapoint_t** %25 to i8*
  call void @free(i8* noundef %26) #6
  store %struct.mvp_datapoint_t** null, %struct.mvp_datapoint_t*** %retval, align 8
  br label %return

if.end23:                                         ; preds = %if.end15
  %27 = load i32, i32* %knearest.addr, align 4
  %28 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %k = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %28, i32 0, i32 4
  store i32 %27, i32* %k, align 8
  %29 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %30 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node24 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %30, i32 0, i32 10
  %31 = load %union.node_t*, %union.node_t** %node24, align 8
  %32 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %33 = load float, float* %radius.addr, align 4
  %34 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results, align 8
  %35 = load i32*, i32** %nbresults.addr, align 8
  %call25 = call i32 @_mvptree_retrieve(%struct.mvptree_t* noundef %29, %union.node_t* noundef %31, %struct.mvp_datapoint_t* noundef %32, float noundef %33, %struct.mvp_datapoint_t** noundef %34, i32* noundef %35, i32 noundef 0)
  %36 = load i32*, i32** %error.addr, align 8
  store i32 %call25, i32* %36, align 4
  %37 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path26 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %37, i32 0, i32 2
  %38 = load float*, float** %path26, align 8
  %39 = bitcast float* %38 to i8*
  call void @free(i8* noundef %39) #6
  %40 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %target.addr, align 8
  %path27 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %40, i32 0, i32 2
  store float* null, float** %path27, align 8
  %41 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %results, align 8
  store %struct.mvp_datapoint_t** %41, %struct.mvp_datapoint_t*** %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then14, %if.then11, %if.then8, %if.then
  %42 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %retval, align 8
  ret %struct.mvp_datapoint_t** %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_datapoint(%struct.mvp_datapoint_t* noundef %dp, %struct.mvptree_t* noundef %tree) #0 {
entry:
  %retval = alloca i64, align 8
  %dp.addr = alloca %struct.mvp_datapoint_t*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %start = alloca i64, align 8
  %pos1 = alloca i64, align 8
  %active = alloca i8, align 1
  %bytelength = alloca i32, align 4
  %buf = alloca i8*, align 8
  %idlen = alloca i8, align 1
  %datalength = alloca i32, align 4
  %type = alloca i8, align 1
  store %struct.mvp_datapoint_t* %dp, %struct.mvp_datapoint_t** %dp.addr, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %0, i32 0, i32 6
  %1 = load i64, i64* %pos, align 8
  store i64 %1, i64* %start, align 8
  %2 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos2 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %2, i32 0, i32 6
  %3 = load i64, i64* %pos2, align 8
  store i64 %3, i64* %pos1, align 8
  store i8 0, i8* %active, align 1
  store i32 0, i32* %bytelength, align 4
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf3 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %4, i32 0, i32 9
  %5 = load i8*, i8** %buf3, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %cmp = icmp eq %struct.mvp_datapoint_t* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %buf, align 8
  %8 = load i64, i64* %pos1, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %pos1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 1 %active, i64 1, i1 false)
  %9 = load i8*, i8** %buf, align 8
  %10 = load i64, i64* %pos1, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = bitcast i32* %bytelength to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx4, i8* align 4 %11, i64 4, i1 false)
  %12 = load i64, i64* %pos1, align 8
  %add = add i64 %12, 4
  store i64 %add, i64* %pos1, align 8
  %13 = load i64, i64* %pos1, align 8
  %14 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos5 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %14, i32 0, i32 6
  store i64 %13, i64* %pos5, align 8
  %15 = load i64, i64* %start, align 8
  store i64 %15, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i8 1, i8* %active, align 1
  %16 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %id = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %16, i32 0, i32 0
  %17 = load i8*, i8** %id, align 8
  %call = call i64 @strlen(i8* noundef %17) #7
  %conv = trunc i64 %call to i8
  store i8 %conv, i8* %idlen, align 1
  %18 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %datalen = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %18, i32 0, i32 3
  %19 = load i32, i32* %datalen, align 8
  store i32 %19, i32* %datalength, align 4
  %20 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %type6 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %20, i32 0, i32 4
  %21 = load i32, i32* %type6, align 4
  %conv7 = trunc i32 %21 to i8
  store i8 %conv7, i8* %type, align 1
  %22 = load i8, i8* %idlen, align 1
  %conv8 = zext i8 %22 to i64
  %add9 = add i64 1, %conv8
  %add10 = add i64 %add9, 4
  %23 = load i32, i32* %datalength, align 4
  %24 = load i8, i8* %type, align 1
  %conv11 = zext i8 %24 to i32
  %mul = mul i32 %23, %conv11
  %conv12 = zext i32 %mul to i64
  %add13 = add i64 %add10, %conv12
  %25 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %25, i32 0, i32 1
  %26 = load i32, i32* %pathlength, align 4
  %conv14 = sext i32 %26 to i64
  %mul15 = mul i64 %conv14, 4
  %add16 = add i64 %add13, %mul15
  %conv17 = trunc i64 %add16 to i32
  store i32 %conv17, i32* %bytelength, align 4
  %27 = load i8*, i8** %buf, align 8
  %28 = load i64, i64* %pos1, align 8
  %inc18 = add nsw i64 %28, 1
  store i64 %inc18, i64* %pos1, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 %28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx19, i8* align 1 %active, i64 1, i1 false)
  %29 = load i8*, i8** %buf, align 8
  %30 = load i64, i64* %pos1, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %29, i64 %30
  %31 = bitcast i32* %bytelength to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx20, i8* align 4 %31, i64 4, i1 false)
  %32 = load i64, i64* %pos1, align 8
  %add21 = add i64 %32, 4
  store i64 %add21, i64* %pos1, align 8
  %33 = load i8*, i8** %buf, align 8
  %34 = load i64, i64* %pos1, align 8
  %inc22 = add nsw i64 %34, 1
  store i64 %inc22, i64* %pos1, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %33, i64 %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx23, i8* align 1 %idlen, i64 1, i1 false)
  %35 = load i8*, i8** %buf, align 8
  %36 = load i64, i64* %pos1, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %35, i64 %36
  %37 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %id25 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %37, i32 0, i32 0
  %38 = load i8*, i8** %id25, align 8
  %39 = load i8, i8* %idlen, align 1
  %conv26 = zext i8 %39 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx24, i8* align 1 %38, i64 %conv26, i1 false)
  %40 = load i8, i8* %idlen, align 1
  %conv27 = zext i8 %40 to i64
  %41 = load i64, i64* %pos1, align 8
  %add28 = add nsw i64 %41, %conv27
  store i64 %add28, i64* %pos1, align 8
  %42 = load i8*, i8** %buf, align 8
  %43 = load i64, i64* %pos1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %42, i64 %43
  %44 = bitcast i32* %datalength to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx29, i8* align 4 %44, i64 4, i1 false)
  %45 = load i64, i64* %pos1, align 8
  %add30 = add i64 %45, 4
  store i64 %add30, i64* %pos1, align 8
  %46 = load i8*, i8** %buf, align 8
  %47 = load i64, i64* %pos1, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %46, i64 %47
  %48 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %data = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %48, i32 0, i32 1
  %49 = load i8*, i8** %data, align 8
  %50 = load i32, i32* %datalength, align 4
  %51 = load i8, i8* %type, align 1
  %conv32 = zext i8 %51 to i32
  %mul33 = mul i32 %50, %conv32
  %conv34 = zext i32 %mul33 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx31, i8* align 1 %49, i64 %conv34, i1 false)
  %52 = load i32, i32* %datalength, align 4
  %53 = load i8, i8* %type, align 1
  %conv35 = zext i8 %53 to i32
  %mul36 = mul i32 %52, %conv35
  %conv37 = zext i32 %mul36 to i64
  %54 = load i64, i64* %pos1, align 8
  %add38 = add nsw i64 %54, %conv37
  store i64 %add38, i64* %pos1, align 8
  %55 = load i8*, i8** %buf, align 8
  %56 = load i64, i64* %pos1, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %55, i64 %56
  %57 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp.addr, align 8
  %path = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %57, i32 0, i32 2
  %58 = load float*, float** %path, align 8
  %59 = bitcast float* %58 to i8*
  %60 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength40 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %60, i32 0, i32 1
  %61 = load i32, i32* %pathlength40, align 4
  %conv41 = sext i32 %61 to i64
  %mul42 = mul i64 %conv41, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx39, i8* align 4 %59, i64 %mul42, i1 false)
  %62 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength43 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %62, i32 0, i32 1
  %63 = load i32, i32* %pathlength43, align 4
  %conv44 = sext i32 %63 to i64
  %mul45 = mul i64 %conv44, 4
  %64 = load i64, i64* %pos1, align 8
  %add46 = add i64 %64, %mul45
  store i64 %add46, i64* %pos1, align 8
  %65 = load i64, i64* %pos1, align 8
  %66 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos47 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %66, i32 0, i32 6
  store i64 %65, i64* %pos47, align 8
  %67 = load i64, i64* %start, align 8
  store i64 %67, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %68 = load i64, i64* %retval, align 8
  ret i64 %68
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extend_mvpfile(%struct.mvptree_t* noundef %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %buf9 = alloca i8*, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %0, i32 0, i32 9
  %1 = load i8*, i8** %buf, align 8
  %2 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %2, i32 0, i32 7
  %3 = load i64, i64* %size, align 8
  %call = call i32 @munmap(i8* noundef %1, i64 noundef %3) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %4, i32 0, i32 3
  %5 = load i32, i32* %fd, align 4
  %6 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size1 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %6, i32 0, i32 7
  %7 = load i64, i64* %size1, align 8
  %8 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pgsize = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %8, i32 0, i32 8
  %9 = load i64, i64* %pgsize, align 8
  %add = add nsw i64 %7, %9
  %call2 = call i32 @ftruncate(i32 noundef %5, i64 noundef %add) #6
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pgsize6 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %10, i32 0, i32 8
  %11 = load i64, i64* %pgsize6, align 8
  %12 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size7 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %12, i32 0, i32 7
  %13 = load i64, i64* %size7, align 8
  %add8 = add nsw i64 %13, %11
  store i64 %add8, i64* %size7, align 8
  %14 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size10 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %14, i32 0, i32 7
  %15 = load i64, i64* %size10, align 8
  %16 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd11 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %16, i32 0, i32 3
  %17 = load i32, i32* %fd11, align 4
  %call12 = call i8* @mmap(i8* noundef null, i64 noundef %15, i32 noundef 3, i32 noundef 1, i32 noundef %17, i64 noundef 0) #6
  store i8* %call12, i8** %buf9, align 8
  %18 = load i8*, i8** %buf9, align 8
  %cmp13 = icmp eq i8* %18, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end5
  store i32 -3, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end5
  %19 = load i8*, i8** %buf9, align 8
  %20 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf16 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %20, i32 0, i32 9
  store i8* %19, i8** %buf16, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then4, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind
declare dso_local i32 @munmap(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ftruncate(i32 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @mmap(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mvptree_write(%struct.mvptree_t* noundef %tree, %union.node_t* noundef %node, i32* noundef %error, i32 noundef %lvl) #0 {
entry:
  %retval = alloca i64, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %node.addr = alloca %union.node_t*, align 8
  %error.addr = alloca i32*, align 8
  %lvl.addr = alloca i32, align 4
  %start_pos = alloca i64, align 8
  %node_type = alloca i8, align 1
  %nbpoints = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_pos = alloca i64, align 8
  %offset = alloca i64, align 8
  %fileno = alloca i8, align 1
  %bf = alloca i32, align 4
  %lengthM1 = alloca i32, align 4
  %lengthM2 = alloca i32, align 4
  %fanout = alloca i32, align 4
  %saved_pos103 = alloca i64, align 8
  %i109 = alloca i32, align 4
  %offset128 = alloca i64, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store %union.node_t* %node, %union.node_t** %node.addr, align 8
  store i32* %error, i32** %error.addr, align 8
  store i32 %lvl, i32* %lvl.addr, align 4
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %0, i32 0, i32 6
  %1 = load i64, i64* %pos, align 8
  store i64 %1, i64* %start_pos, align 8
  %2 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %cmp = icmp eq %union.node_t* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf = bitcast %union.node_t* %3 to %struct.node_leaf_t*
  %type = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %conv = trunc i32 %4 to i8
  store i8 %conv, i8* %node_type, align 1
  %5 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf1 = bitcast %union.node_t* %5 to %struct.node_leaf_t*
  %type2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf1, i32 0, i32 0
  %6 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %7 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf6 = bitcast %union.node_t* %7 to %struct.node_leaf_t*
  %nbpoints7 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf6, i32 0, i32 6
  %8 = load i32, i32* %nbpoints7, align 8
  store i32 %8, i32* %nbpoints, align 4
  %9 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos8 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %9, i32 0, i32 6
  %10 = load i64, i64* %pos8, align 8
  %11 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %11, i32 0, i32 7
  %12 = load i64, i64* %size, align 8
  %13 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pgsize = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %13, i32 0, i32 8
  %14 = load i64, i64* %pgsize, align 8
  %div = sdiv i64 %14, 2
  %sub = sub nsw i64 %12, %div
  %cmp9 = icmp sge i64 %10, %sub
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.then5
  %15 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call = call i32 @extend_mvpfile(%struct.mvptree_t* noundef %15)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  %16 = load i32*, i32** %error.addr, align 8
  store i32 17, i32* %16, align 4
  %17 = load i64, i64* %start_pos, align 8
  store i64 %17, i64* %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then5
  %18 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %18, i32 0, i32 9
  %19 = load i8*, i8** %buf, align 8
  %20 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos17 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %20, i32 0, i32 6
  %21 = load i64, i64* %pos17, align 8
  %inc = add nsw i64 %21, 1
  store i64 %inc, i64* %pos17, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 1 %node_type, i64 1, i1 false)
  %22 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf18 = bitcast %union.node_t* %22 to %struct.node_leaf_t*
  %sv1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf18, i32 0, i32 1
  %23 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1, align 8
  %24 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call19 = call i64 @write_datapoint(%struct.mvp_datapoint_t* noundef %23, %struct.mvptree_t* noundef %24)
  %25 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf20 = bitcast %union.node_t* %25 to %struct.node_leaf_t*
  %sv2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf20, i32 0, i32 2
  %26 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2, align 8
  %27 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call21 = call i64 @write_datapoint(%struct.mvp_datapoint_t* noundef %26, %struct.mvptree_t* noundef %27)
  %28 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf22 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %28, i32 0, i32 9
  %29 = load i8*, i8** %buf22, align 8
  %30 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos23 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %30, i32 0, i32 6
  %31 = load i64, i64* %pos23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 %31
  %32 = bitcast i32* %nbpoints to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx24, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos25 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %33, i32 0, i32 6
  %34 = load i64, i64* %pos25, align 8
  %add = add i64 %34, 4
  store i64 %add, i64* %pos25, align 8
  %35 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos26 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %35, i32 0, i32 6
  %36 = load i64, i64* %pos26, align 8
  store i64 %36, i64* %saved_pos, align 8
  %37 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %leafcap = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %37, i32 0, i32 2
  %38 = load i32, i32* %leafcap, align 8
  %conv27 = sext i32 %38 to i64
  %mul = mul i64 %conv27, 16
  %39 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos28 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %39, i32 0, i32 6
  %40 = load i64, i64* %pos28, align 8
  %add29 = add i64 %40, %mul
  store i64 %add29, i64* %pos28, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %nbpoints, align 4
  %cmp30 = icmp ult i32 %41, %42
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos32 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %43, i32 0, i32 6
  %44 = load i64, i64* %pos32, align 8
  %45 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size33 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %45, i32 0, i32 7
  %46 = load i64, i64* %size33, align 8
  %47 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pgsize34 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %47, i32 0, i32 8
  %48 = load i64, i64* %pgsize34, align 8
  %div35 = sdiv i64 %48, 2
  %sub36 = sub nsw i64 %46, %div35
  %cmp37 = icmp sge i64 %44, %sub36
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %for.body
  %49 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call40 = call i32 @extend_mvpfile(%struct.mvptree_t* noundef %49)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then39
  %50 = load i32*, i32** %error.addr, align 8
  store i32 17, i32* %50, align 4
  br label %for.end

if.end44:                                         ; preds = %if.then39
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.body
  %51 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf46 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %51, i32 0, i32 9
  %52 = load i8*, i8** %buf46, align 8
  %53 = load i64, i64* %saved_pos, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf48 = bitcast %union.node_t* %54 to %struct.node_leaf_t*
  %d1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf48, i32 0, i32 4
  %55 = load float*, float** %d1, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom = sext i32 %56 to i64
  %arrayidx49 = getelementptr inbounds float, float* %55, i64 %idxprom
  %57 = bitcast float* %arrayidx49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx47, i8* align 4 %57, i64 4, i1 false)
  %58 = load i64, i64* %saved_pos, align 8
  %add50 = add i64 %58, 4
  store i64 %add50, i64* %saved_pos, align 8
  %59 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf51 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %59, i32 0, i32 9
  %60 = load i8*, i8** %buf51, align 8
  %61 = load i64, i64* %saved_pos, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %60, i64 %61
  %62 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf53 = bitcast %union.node_t* %62 to %struct.node_leaf_t*
  %d2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf53, i32 0, i32 5
  %63 = load float*, float** %d2, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %64 to i64
  %arrayidx55 = getelementptr inbounds float, float* %63, i64 %idxprom54
  %65 = bitcast float* %arrayidx55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx52, i8* align 4 %65, i64 4, i1 false)
  %66 = load i64, i64* %saved_pos, align 8
  %add56 = add i64 %66, 4
  store i64 %add56, i64* %saved_pos, align 8
  %67 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %leaf57 = bitcast %union.node_t* %67 to %struct.node_leaf_t*
  %points = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf57, i32 0, i32 3
  %68 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %69 to i64
  %arrayidx59 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %68, i64 %idxprom58
  %70 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx59, align 8
  %71 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call60 = call i64 @write_datapoint(%struct.mvp_datapoint_t* noundef %70, %struct.mvptree_t* noundef %71)
  store i64 %call60, i64* %offset, align 8
  %72 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf61 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %72, i32 0, i32 9
  %73 = load i8*, i8** %buf61, align 8
  %74 = load i64, i64* %saved_pos, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %73, i64 %74
  %75 = bitcast i64* %offset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx62, i8* align 8 %75, i64 8, i1 false)
  %76 = load i64, i64* %saved_pos, align 8
  %add63 = add i64 %76, 8
  store i64 %add63, i64* %saved_pos, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %77 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %77, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %if.then43, %for.cond
  br label %if.end145

if.else:                                          ; preds = %if.end
  %78 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal = bitcast %union.node_t* %78 to %struct.node_internal_t*
  %type65 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 0
  %79 = load i32, i32* %type65, align 8
  %cmp66 = icmp eq i32 %79, 1
  br i1 %cmp66, label %if.then68, label %if.else143

if.then68:                                        ; preds = %if.else
  store i8 0, i8* %fileno, align 1
  %80 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %80, i32 0, i32 0
  %81 = load i32, i32* %branchfactor, align 8
  store i32 %81, i32* %bf, align 4
  %82 = load i32, i32* %bf, align 4
  %sub69 = sub nsw i32 %82, 1
  store i32 %sub69, i32* %lengthM1, align 4
  %83 = load i32, i32* %bf, align 4
  %sub70 = sub nsw i32 %83, 1
  %84 = load i32, i32* %bf, align 4
  %mul71 = mul nsw i32 %sub70, %84
  store i32 %mul71, i32* %lengthM2, align 4
  %85 = load i32, i32* %bf, align 4
  %86 = load i32, i32* %bf, align 4
  %mul72 = mul nsw i32 %85, %86
  store i32 %mul72, i32* %fanout, align 4
  %87 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf73 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %87, i32 0, i32 9
  %88 = load i8*, i8** %buf73, align 8
  %89 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos74 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %89, i32 0, i32 6
  %90 = load i64, i64* %pos74, align 8
  %inc75 = add nsw i64 %90, 1
  store i64 %inc75, i64* %pos74, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %88, i64 %90
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx76, i8* align 1 %node_type, i64 1, i1 false)
  %91 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal77 = bitcast %union.node_t* %91 to %struct.node_internal_t*
  %sv178 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal77, i32 0, i32 1
  %92 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv178, align 8
  %93 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call79 = call i64 @write_datapoint(%struct.mvp_datapoint_t* noundef %92, %struct.mvptree_t* noundef %93)
  %94 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal80 = bitcast %union.node_t* %94 to %struct.node_internal_t*
  %sv281 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal80, i32 0, i32 2
  %95 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv281, align 8
  %96 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call82 = call i64 @write_datapoint(%struct.mvp_datapoint_t* noundef %95, %struct.mvptree_t* noundef %96)
  %97 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf83 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %97, i32 0, i32 9
  %98 = load i8*, i8** %buf83, align 8
  %99 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos84 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %99, i32 0, i32 6
  %100 = load i64, i64* %pos84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %98, i64 %100
  %101 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal86 = bitcast %union.node_t* %101 to %struct.node_internal_t*
  %M1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal86, i32 0, i32 3
  %102 = load float*, float** %M1, align 8
  %103 = bitcast float* %102 to i8*
  %104 = load i32, i32* %lengthM1, align 4
  %conv87 = sext i32 %104 to i64
  %mul88 = mul i64 %conv87, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx85, i8* align 4 %103, i64 %mul88, i1 false)
  %105 = load i32, i32* %lengthM1, align 4
  %conv89 = sext i32 %105 to i64
  %mul90 = mul i64 %conv89, 4
  %106 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos91 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %106, i32 0, i32 6
  %107 = load i64, i64* %pos91, align 8
  %add92 = add i64 %107, %mul90
  store i64 %add92, i64* %pos91, align 8
  %108 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf93 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %108, i32 0, i32 9
  %109 = load i8*, i8** %buf93, align 8
  %110 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos94 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %110, i32 0, i32 6
  %111 = load i64, i64* %pos94, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %109, i64 %111
  %112 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal96 = bitcast %union.node_t* %112 to %struct.node_internal_t*
  %M2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal96, i32 0, i32 4
  %113 = load float*, float** %M2, align 8
  %114 = bitcast float* %113 to i8*
  %115 = load i32, i32* %lengthM2, align 4
  %conv97 = sext i32 %115 to i64
  %mul98 = mul i64 %conv97, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx95, i8* align 4 %114, i64 %mul98, i1 false)
  %116 = load i32, i32* %lengthM2, align 4
  %conv99 = sext i32 %116 to i64
  %mul100 = mul i64 %conv99, 4
  %117 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos101 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %117, i32 0, i32 6
  %118 = load i64, i64* %pos101, align 8
  %add102 = add i64 %118, %mul100
  store i64 %add102, i64* %pos101, align 8
  %119 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos104 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %119, i32 0, i32 6
  %120 = load i64, i64* %pos104, align 8
  store i64 %120, i64* %saved_pos103, align 8
  %121 = load i32, i32* %fanout, align 4
  %conv105 = sext i32 %121 to i64
  %mul106 = mul i64 %conv105, 9
  %122 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos107 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %122, i32 0, i32 6
  %123 = load i64, i64* %pos107, align 8
  %add108 = add i64 %123, %mul106
  store i64 %add108, i64* %pos107, align 8
  store i32 0, i32* %i109, align 4
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc140, %if.then68
  %124 = load i32, i32* %i109, align 4
  %125 = load i32, i32* %fanout, align 4
  %cmp111 = icmp slt i32 %124, %125
  br i1 %cmp111, label %for.body113, label %for.end142

for.body113:                                      ; preds = %for.cond110
  %126 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos114 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %126, i32 0, i32 6
  %127 = load i64, i64* %pos114, align 8
  %128 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size115 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %128, i32 0, i32 7
  %129 = load i64, i64* %size115, align 8
  %130 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pgsize116 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %130, i32 0, i32 8
  %131 = load i64, i64* %pgsize116, align 8
  %div117 = sdiv i64 %131, 2
  %sub118 = sub nsw i64 %129, %div117
  %cmp119 = icmp sge i64 %127, %sub118
  br i1 %cmp119, label %if.then121, label %if.end127

if.then121:                                       ; preds = %for.body113
  %132 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call122 = call i32 @extend_mvpfile(%struct.mvptree_t* noundef %132)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.then121
  %133 = load i32*, i32** %error.addr, align 8
  store i32 17, i32* %133, align 4
  br label %for.end142

if.end126:                                        ; preds = %if.then121
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %for.body113
  %134 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %135 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal129 = bitcast %union.node_t* %135 to %struct.node_internal_t*
  %child_nodes = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal129, i32 0, i32 5
  %136 = load i8**, i8*** %child_nodes, align 8
  %137 = load i32, i32* %i109, align 4
  %idxprom130 = sext i32 %137 to i64
  %arrayidx131 = getelementptr inbounds i8*, i8** %136, i64 %idxprom130
  %138 = load i8*, i8** %arrayidx131, align 8
  %139 = bitcast i8* %138 to %union.node_t*
  %140 = load i32*, i32** %error.addr, align 8
  %141 = load i32, i32* %lvl.addr, align 4
  %add132 = add nsw i32 %141, 2
  %call133 = call i64 @_mvptree_write(%struct.mvptree_t* noundef %134, %union.node_t* noundef %139, i32* noundef %140, i32 noundef %add132)
  store i64 %call133, i64* %offset128, align 8
  %142 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf134 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %142, i32 0, i32 9
  %143 = load i8*, i8** %buf134, align 8
  %144 = load i64, i64* %saved_pos103, align 8
  %inc135 = add nsw i64 %144, 1
  store i64 %inc135, i64* %saved_pos103, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %143, i64 %144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx136, i8* align 1 %fileno, i64 1, i1 false)
  %145 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf137 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %145, i32 0, i32 9
  %146 = load i8*, i8** %buf137, align 8
  %147 = load i64, i64* %saved_pos103, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %146, i64 %147
  %148 = bitcast i64* %offset128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx138, i8* align 8 %148, i64 8, i1 false)
  %149 = load i64, i64* %saved_pos103, align 8
  %add139 = add i64 %149, 8
  store i64 %add139, i64* %saved_pos103, align 8
  br label %for.inc140

for.inc140:                                       ; preds = %if.end127
  %150 = load i32, i32* %i109, align 4
  %inc141 = add nsw i32 %150, 1
  store i32 %inc141, i32* %i109, align 4
  br label %for.cond110, !llvm.loop !41

for.end142:                                       ; preds = %if.then125, %for.cond110
  br label %if.end144

if.else143:                                       ; preds = %if.else
  %151 = load i32*, i32** %error.addr, align 8
  store i32 25, i32* %151, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.else143, %for.end142
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %for.end
  %152 = load i64, i64* %start_pos, align 8
  store i64 %152, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end145, %if.then14, %if.then
  %153 = load i64, i64* %retval, align 8
  ret i64 %153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvptree_write(%struct.mvptree_t* noundef %tree, i8* noundef %filename, i32 noundef %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %pos = alloca i64, align 8
  %bf = alloca i8, align 1
  %pl = alloca i8, align 1
  %lc = alloca i8, align 1
  %ht = alloca i8, align 1
  %error = alloca i32, align 4
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %tobool = icmp ne %struct.mvptree_t* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %1, i32 0, i32 11
  %2 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  %tobool1 = icmp ne float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %2, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %3, i32 0, i32 10
  %4 = load %union.node_t*, %union.node_t** %node, align 8
  %tobool3 = icmp ne %union.node_t* %4, null
  br i1 %tobool3, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i8*, i8** %filename.addr, align 8
  %tobool5 = icmp ne i8* %5, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i32, i32* %mode.addr, align 4
  %call = call i32 (i8*, i32, ...) @open(i8* noundef %6, i32 noundef 578, i32 noundef %7)
  %8 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %8, i32 0, i32 3
  store i32 %call, i32* %fd, align 4
  %9 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd6 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %9, i32 0, i32 3
  %10 = load i32, i32* %fd6, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 12, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %call9 = call i64 @sysconf(i32 noundef 30) #6
  %11 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pgsize = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %11, i32 0, i32 8
  store i64 %call9, i64* %pgsize, align 8
  %12 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd10 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %12, i32 0, i32 3
  %13 = load i32, i32* %fd10, align 4
  %14 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pgsize11 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %14, i32 0, i32 8
  %15 = load i64, i64* %pgsize11, align 8
  %call12 = call i32 @ftruncate(i32 noundef %13, i64 noundef %15) #6
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  %16 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd15 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %16, i32 0, i32 3
  %17 = load i32, i32* %fd15, align 4
  %call16 = call i32 @close(i32 noundef %17)
  store i32 17, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end8
  %18 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pgsize18 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %18, i32 0, i32 8
  %19 = load i64, i64* %pgsize18, align 8
  %20 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %20, i32 0, i32 7
  store i64 %19, i64* %size, align 8
  %21 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size19 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %21, i32 0, i32 7
  %22 = load i64, i64* %size19, align 8
  %23 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd20 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %23, i32 0, i32 3
  %24 = load i32, i32* %fd20, align 4
  %call21 = call i8* @mmap(i8* noundef null, i64 noundef %22, i32 noundef 3, i32 noundef 1, i32 noundef %24, i64 noundef 0) #6
  store i8* %call21, i8** %buf, align 8
  %25 = load i8*, i8** %buf, align 8
  %cmp22 = icmp eq i8* %25, null
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end17
  %26 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd24 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %26, i32 0, i32 3
  %27 = load i32, i32* %fd24, align 4
  %call25 = call i32 @close(i32 noundef %27)
  store i32 14, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end17
  store i64 0, i64* %pos, align 8
  %28 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %28, i32 0, i32 0
  %29 = load i32, i32* %branchfactor, align 8
  %conv = trunc i32 %29 to i8
  store i8 %conv, i8* %bf, align 1
  %30 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %30, i32 0, i32 1
  %31 = load i32, i32* %pathlength, align 4
  %conv27 = trunc i32 %31 to i8
  store i8 %conv27, i8* %pl, align 1
  %32 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %leafcap = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %32, i32 0, i32 2
  %33 = load i32, i32* %leafcap, align 8
  %conv28 = trunc i32 %33 to i8
  store i8 %conv28, i8* %lc, align 1
  %34 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node29 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %34, i32 0, i32 10
  %35 = load %union.node_t*, %union.node_t** %node29, align 8
  %internal = bitcast %union.node_t* %35 to %struct.node_internal_t*
  %sv1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 1
  %36 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1, align 8
  %type = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %36, i32 0, i32 4
  %37 = load i32, i32* %type, align 4
  %conv30 = trunc i32 %37 to i8
  store i8 %conv30, i8* %ht, align 1
  %38 = load i8*, i8** %buf, align 8
  %39 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %39
  %40 = load i8*, i8** @tag, align 8
  %41 = load i8*, i8** @tag, align 8
  %call31 = call i64 @strlen(i8* noundef %41) #7
  %add = add i64 %call31, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 1 %40, i64 %add, i1 false)
  %42 = load i8*, i8** @tag, align 8
  %call32 = call i64 @strlen(i8* noundef %42) #7
  %add33 = add i64 %call32, 1
  %43 = load i64, i64* %pos, align 8
  %add34 = add i64 %43, %add33
  store i64 %add34, i64* %pos, align 8
  %44 = load i8*, i8** %buf, align 8
  %45 = load i64, i64* %pos, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %44, i64 %45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx35, i8* align 4 bitcast (i32* @version to i8*), i64 4, i1 false)
  %46 = load i64, i64* %pos, align 8
  %add36 = add i64 %46, 4
  store i64 %add36, i64* %pos, align 8
  %47 = load i8*, i8** %buf, align 8
  %48 = load i64, i64* %pos, align 8
  %inc = add nsw i64 %48, 1
  store i64 %inc, i64* %pos, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %47, i64 %48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx37, i8* align 1 %bf, i64 1, i1 false)
  %49 = load i8*, i8** %buf, align 8
  %50 = load i64, i64* %pos, align 8
  %inc38 = add nsw i64 %50, 1
  store i64 %inc38, i64* %pos, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %49, i64 %50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx39, i8* align 1 %pl, i64 1, i1 false)
  %51 = load i8*, i8** %buf, align 8
  %52 = load i64, i64* %pos, align 8
  %inc40 = add nsw i64 %52, 1
  store i64 %inc40, i64* %pos, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %51, i64 %52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx41, i8* align 1 %lc, i64 1, i1 false)
  %53 = load i8*, i8** %buf, align 8
  %54 = load i64, i64* %pos, align 8
  %inc42 = add nsw i64 %54, 1
  store i64 %inc42, i64* %pos, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %53, i64 %54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx43, i8* align 1 %ht, i64 1, i1 false)
  %55 = load i8*, i8** %buf, align 8
  %56 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf44 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %56, i32 0, i32 9
  store i8* %55, i8** %buf44, align 8
  store i64 32, i64* %pos, align 8
  %57 = load i64, i64* %pos, align 8
  %58 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos45 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %58, i32 0, i32 6
  store i64 %57, i64* %pos45, align 8
  store i32 0, i32* %error, align 4
  %59 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %60 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node46 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %60, i32 0, i32 10
  %61 = load %union.node_t*, %union.node_t** %node46, align 8
  %call47 = call i64 @_mvptree_write(%struct.mvptree_t* noundef %59, %union.node_t* noundef %61, i32* noundef %error, i32 noundef 0)
  %62 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf48 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %62, i32 0, i32 9
  %63 = load i8*, i8** %buf48, align 8
  %64 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size49 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %64, i32 0, i32 7
  %65 = load i64, i64* %size49, align 8
  %call50 = call i32 @msync(i8* noundef %63, i64 noundef %65, i32 noundef 4)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end26
  store i32 14, i32* %error, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end26
  %66 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf55 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %66, i32 0, i32 9
  %67 = load i8*, i8** %buf55, align 8
  %68 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %size56 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %68, i32 0, i32 7
  %69 = load i64, i64* %size56, align 8
  %call57 = call i32 @munmap(i8* noundef %67, i64 noundef %69) #6
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end54
  store i32 15, i32* %error, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end54
  %70 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf62 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %70, i32 0, i32 9
  store i8* null, i8** %buf62, align 8
  %71 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %fd63 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %71, i32 0, i32 3
  %72 = load i32, i32* %fd63, align 4
  %call64 = call i32 @close(i32 noundef %72)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end61
  store i32 13, i32* %error, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end61
  %73 = load i32, i32* %error, align 4
  store i32 %73, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end68, %if.then23, %if.then14, %if.then7, %if.then
  %74 = load i32, i32* %retval, align 4
  ret i32 %74
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #5

declare dso_local i32 @close(i32 noundef) #5

declare dso_local i32 @msync(i8* noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvp_datapoint_t* @read_datapoint(%struct.mvptree_t* noundef %tree) #0 {
entry:
  %retval = alloca %struct.mvp_datapoint_t*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %active = alloca i8, align 1
  %idlen = alloca i8, align 1
  %bytelength = alloca i32, align 4
  %datalength = alloca i32, align 4
  %dp = alloca %struct.mvp_datapoint_t*, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %0, i32 0, i32 9
  %1 = load i8*, i8** %buf, align 8
  %2 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %2, i32 0, i32 6
  %3 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %active, i8* align 1 %arrayidx, i64 1, i1 false)
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos1 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %4, i32 0, i32 6
  %5 = load i64, i64* %pos1, align 8
  %add = add i64 %5, 1
  store i64 %add, i64* %pos1, align 8
  %6 = bitcast i32* %bytelength to i8*
  %7 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf2 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %7, i32 0, i32 9
  %8 = load i8*, i8** %buf2, align 8
  %9 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos3 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %9, i32 0, i32 6
  %10 = load i64, i64* %pos3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 1 %arrayidx4, i64 4, i1 false)
  %11 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos5 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %11, i32 0, i32 6
  %12 = load i64, i64* %pos5, align 8
  %add6 = add i64 %12, 4
  store i64 %add6, i64* %pos5, align 8
  %13 = load i8, i8* %active, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load i32, i32* %bytelength, align 4
  %cmp8 = icmp eq i32 %14, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.mvp_datapoint_t* null, %struct.mvp_datapoint_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %datatype = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %15, i32 0, i32 5
  %16 = load i32, i32* %datatype, align 4
  %call = call %struct.mvp_datapoint_t* @dp_alloc(i32 noundef %16)
  store %struct.mvp_datapoint_t* %call, %struct.mvp_datapoint_t** %dp, align 8
  %17 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %tobool = icmp ne %struct.mvp_datapoint_t* %17, null
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  store %struct.mvp_datapoint_t* null, %struct.mvp_datapoint_t** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end
  %18 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %18, i32 0, i32 1
  %19 = load i32, i32* %pathlength, align 4
  %conv12 = sext i32 %19 to i64
  %mul = mul i64 %conv12, 4
  %call13 = call noalias i8* @malloc(i64 noundef %mul) #6
  %20 = bitcast i8* %call13 to float*
  %21 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %path = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %21, i32 0, i32 2
  store float* %20, float** %path, align 8
  %22 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %path14 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %22, i32 0, i32 2
  %23 = load float*, float** %path14, align 8
  %tobool15 = icmp ne float* %23, null
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end11
  store %struct.mvp_datapoint_t* null, %struct.mvp_datapoint_t** %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end11
  %24 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf18 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %24, i32 0, i32 9
  %25 = load i8*, i8** %buf18, align 8
  %26 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos19 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %26, i32 0, i32 6
  %27 = load i64, i64* %pos19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 %27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %idlen, i8* align 1 %arrayidx20, i64 1, i1 false)
  %28 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos21 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %28, i32 0, i32 6
  %29 = load i64, i64* %pos21, align 8
  %add22 = add i64 %29, 1
  store i64 %add22, i64* %pos21, align 8
  %30 = load i8, i8* %idlen, align 1
  %conv23 = zext i8 %30 to i32
  %add24 = add nsw i32 %conv23, 1
  %conv25 = sext i32 %add24 to i64
  %call26 = call noalias i8* @malloc(i64 noundef %conv25) #6
  %31 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %id = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %31, i32 0, i32 0
  store i8* %call26, i8** %id, align 8
  %32 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %id27 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %32, i32 0, i32 0
  %33 = load i8*, i8** %id27, align 8
  %34 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf28 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %34, i32 0, i32 9
  %35 = load i8*, i8** %buf28, align 8
  %36 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos29 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %36, i32 0, i32 6
  %37 = load i64, i64* %pos29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %35, i64 %37
  %38 = load i8, i8* %idlen, align 1
  %conv31 = zext i8 %38 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %arrayidx30, i64 %conv31, i1 false)
  %39 = load i8, i8* %idlen, align 1
  %conv32 = zext i8 %39 to i64
  %40 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos33 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %40, i32 0, i32 6
  %41 = load i64, i64* %pos33, align 8
  %add34 = add nsw i64 %41, %conv32
  store i64 %add34, i64* %pos33, align 8
  %42 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %id35 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %42, i32 0, i32 0
  %43 = load i8*, i8** %id35, align 8
  %44 = load i8, i8* %idlen, align 1
  %idxprom = zext i8 %44 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %43, i64 %idxprom
  store i8 0, i8* %arrayidx36, align 1
  %45 = bitcast i32* %datalength to i8*
  %46 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf37 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %46, i32 0, i32 9
  %47 = load i8*, i8** %buf37, align 8
  %48 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos38 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %48, i32 0, i32 6
  %49 = load i64, i64* %pos38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %47, i64 %49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 1 %arrayidx39, i64 4, i1 false)
  %50 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos40 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %50, i32 0, i32 6
  %51 = load i64, i64* %pos40, align 8
  %add41 = add i64 %51, 4
  store i64 %add41, i64* %pos40, align 8
  %52 = load i32, i32* %datalength, align 4
  %53 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %datalen = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %53, i32 0, i32 3
  store i32 %52, i32* %datalen, align 8
  %54 = load i32, i32* %datalength, align 4
  %55 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %datatype42 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %55, i32 0, i32 5
  %56 = load i32, i32* %datatype42, align 4
  %mul43 = mul i32 %54, %56
  %conv44 = zext i32 %mul43 to i64
  %call45 = call noalias i8* @malloc(i64 noundef %conv44) #6
  %57 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %data = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %57, i32 0, i32 1
  store i8* %call45, i8** %data, align 8
  %58 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %data46 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %58, i32 0, i32 1
  %59 = load i8*, i8** %data46, align 8
  %60 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf47 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %60, i32 0, i32 9
  %61 = load i8*, i8** %buf47, align 8
  %62 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos48 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %62, i32 0, i32 6
  %63 = load i64, i64* %pos48, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %61, i64 %63
  %64 = load i32, i32* %datalength, align 4
  %65 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %datatype50 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %65, i32 0, i32 5
  %66 = load i32, i32* %datatype50, align 4
  %mul51 = mul i32 %64, %66
  %conv52 = zext i32 %mul51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 %arrayidx49, i64 %conv52, i1 false)
  %67 = load i32, i32* %datalength, align 4
  %68 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %datatype53 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %68, i32 0, i32 5
  %69 = load i32, i32* %datatype53, align 4
  %mul54 = mul i32 %67, %69
  %conv55 = zext i32 %mul54 to i64
  %70 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos56 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %70, i32 0, i32 6
  %71 = load i64, i64* %pos56, align 8
  %add57 = add nsw i64 %71, %conv55
  store i64 %add57, i64* %pos56, align 8
  %72 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  %path58 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %72, i32 0, i32 2
  %73 = load float*, float** %path58, align 8
  %74 = bitcast float* %73 to i8*
  %75 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf59 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %75, i32 0, i32 9
  %76 = load i8*, i8** %buf59, align 8
  %77 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos60 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %77, i32 0, i32 6
  %78 = load i64, i64* %pos60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %76, i64 %78
  %79 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength62 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %79, i32 0, i32 1
  %80 = load i32, i32* %pathlength62, align 4
  %conv63 = sext i32 %80 to i64
  %mul64 = mul i64 %conv63, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 1 %arrayidx61, i64 %mul64, i1 false)
  %81 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pathlength65 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %81, i32 0, i32 1
  %82 = load i32, i32* %pathlength65, align 4
  %conv66 = sext i32 %82 to i64
  %mul67 = mul i64 %conv66, 4
  %83 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos68 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %83, i32 0, i32 6
  %84 = load i64, i64* %pos68, align 8
  %add69 = add i64 %84, %mul67
  store i64 %add69, i64* %pos68, align 8
  %85 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %dp, align 8
  store %struct.mvp_datapoint_t* %85, %struct.mvp_datapoint_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then10, %if.then
  %86 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %retval, align 8
  ret %struct.mvp_datapoint_t* %86
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node_t* @_mvptree_read_node(%struct.mvptree_t* noundef %tree, i32* noundef %error, i32 noundef %lvl) #0 {
entry:
  %retval = alloca %union.node_t*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %error.addr = alloca i32*, align 8
  %lvl.addr = alloca i32, align 4
  %node_type = alloca i8, align 1
  %node = alloca %union.node_t*, align 8
  %nbpoints = alloca i32, align 4
  %saved_pos = alloca i64, align 8
  %i = alloca i32, align 4
  %offset = alloca i64, align 8
  %bf = alloca i32, align 4
  %lengthM1 = alloca i32, align 4
  %lengthM2 = alloca i32, align 4
  %fanout = alloca i32, align 4
  %fileno = alloca i8, align 1
  %i71 = alloca i32, align 4
  %offset72 = alloca i64, align 8
  %saved_pos73 = alloca i64, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store i32* %error, i32** %error.addr, align 8
  store i32 %lvl, i32* %lvl.addr, align 4
  store %union.node_t* null, %union.node_t** %node, align 8
  %0 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %0, i32 0, i32 9
  %1 = load i8*, i8** %buf, align 8
  %2 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %2, i32 0, i32 6
  %3 = load i64, i64* %pos, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %node_type, i8* align 1 %arrayidx, i64 1, i1 false)
  %4 = load i8, i8* %node_type, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %leafcap = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %5, i32 0, i32 2
  %6 = load i32, i32* %leafcap, align 8
  %call = call %union.node_t* @create_leaf(i32 noundef %6)
  store %union.node_t* %call, %union.node_t** %node, align 8
  %7 = load %union.node_t*, %union.node_t** %node, align 8
  %tobool = icmp ne %union.node_t* %7, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %8 = load i32*, i32** %error.addr, align 8
  store i32 4, i32* %8, align 4
  %9 = load %union.node_t*, %union.node_t** %node, align 8
  store %union.node_t* %9, %union.node_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call3 = call %struct.mvp_datapoint_t* @read_datapoint(%struct.mvptree_t* noundef %10)
  %11 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf = bitcast %union.node_t* %11 to %struct.node_leaf_t*
  %sv1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf, i32 0, i32 1
  store %struct.mvp_datapoint_t* %call3, %struct.mvp_datapoint_t** %sv1, align 8
  %12 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call4 = call %struct.mvp_datapoint_t* @read_datapoint(%struct.mvptree_t* noundef %12)
  %13 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf5 = bitcast %union.node_t* %13 to %struct.node_leaf_t*
  %sv2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf5, i32 0, i32 2
  store %struct.mvp_datapoint_t* %call4, %struct.mvp_datapoint_t** %sv2, align 8
  %14 = bitcast i32* %nbpoints to i8*
  %15 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf6 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %15, i32 0, i32 9
  %16 = load i8*, i8** %buf6, align 8
  %17 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos7 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %17, i32 0, i32 6
  %18 = load i64, i64* %pos7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 1 %arrayidx8, i64 4, i1 false)
  %19 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos9 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %19, i32 0, i32 6
  %20 = load i64, i64* %pos9, align 8
  %add = add i64 %20, 4
  store i64 %add, i64* %pos9, align 8
  %21 = load i32, i32* %nbpoints, align 4
  %22 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf10 = bitcast %union.node_t* %22 to %struct.node_leaf_t*
  %nbpoints11 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf10, i32 0, i32 6
  store i32 %21, i32* %nbpoints11, align 8
  %23 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos12 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %23, i32 0, i32 6
  %24 = load i64, i64* %pos12, align 8
  store i64 %24, i64* %saved_pos, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %nbpoints, align 4
  %cmp13 = icmp ult i32 %25, %26
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf15 = bitcast %union.node_t* %27 to %struct.node_leaf_t*
  %d1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf15, i32 0, i32 4
  %28 = load float*, float** %d1, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds float, float* %28, i64 %idxprom
  %30 = bitcast float* %arrayidx16 to i8*
  %31 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf17 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %31, i32 0, i32 9
  %32 = load i8*, i8** %buf17, align 8
  %33 = load i64, i64* %saved_pos, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %32, i64 %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 1 %arrayidx18, i64 4, i1 false)
  %34 = load i64, i64* %saved_pos, align 8
  %add19 = add i64 %34, 4
  store i64 %add19, i64* %saved_pos, align 8
  %35 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf20 = bitcast %union.node_t* %35 to %struct.node_leaf_t*
  %d2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf20, i32 0, i32 5
  %36 = load float*, float** %d2, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %37 to i64
  %arrayidx22 = getelementptr inbounds float, float* %36, i64 %idxprom21
  %38 = bitcast float* %arrayidx22 to i8*
  %39 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf23 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %39, i32 0, i32 9
  %40 = load i8*, i8** %buf23, align 8
  %41 = load i64, i64* %saved_pos, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %40, i64 %41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 1 %arrayidx24, i64 4, i1 false)
  %42 = load i64, i64* %saved_pos, align 8
  %add25 = add i64 %42, 4
  store i64 %add25, i64* %saved_pos, align 8
  %43 = bitcast i64* %offset to i8*
  %44 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf26 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %44, i32 0, i32 9
  %45 = load i8*, i8** %buf26, align 8
  %46 = load i64, i64* %saved_pos, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %45, i64 %46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 1 %arrayidx27, i64 8, i1 false)
  %47 = load i64, i64* %saved_pos, align 8
  %add28 = add i64 %47, 8
  store i64 %add28, i64* %saved_pos, align 8
  %48 = load i64, i64* %offset, align 8
  %49 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos29 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %49, i32 0, i32 6
  store i64 %48, i64* %pos29, align 8
  %50 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call30 = call %struct.mvp_datapoint_t* @read_datapoint(%struct.mvptree_t* noundef %50)
  %51 = load %union.node_t*, %union.node_t** %node, align 8
  %leaf31 = bitcast %union.node_t* %51 to %struct.node_leaf_t*
  %points = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf31, i32 0, i32 3
  %52 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %53 to i64
  %arrayidx33 = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %52, i64 %idxprom32
  store %struct.mvp_datapoint_t* %call30, %struct.mvp_datapoint_t** %arrayidx33, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %54, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  br label %if.end100

if.else:                                          ; preds = %entry
  %55 = load i8, i8* %node_type, align 1
  %conv35 = zext i8 %55 to i32
  %cmp36 = icmp eq i32 %conv35, 1
  br i1 %cmp36, label %if.then38, label %if.else98

if.then38:                                        ; preds = %if.else
  %56 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %56, i32 0, i32 0
  %57 = load i32, i32* %branchfactor, align 8
  store i32 %57, i32* %bf, align 4
  %58 = load i32, i32* %bf, align 4
  %sub = sub nsw i32 %58, 1
  store i32 %sub, i32* %lengthM1, align 4
  %59 = load i32, i32* %bf, align 4
  %sub39 = sub nsw i32 %59, 1
  %60 = load i32, i32* %bf, align 4
  %mul = mul nsw i32 %sub39, %60
  store i32 %mul, i32* %lengthM2, align 4
  %61 = load i32, i32* %bf, align 4
  %62 = load i32, i32* %bf, align 4
  %mul40 = mul nsw i32 %61, %62
  store i32 %mul40, i32* %fanout, align 4
  %63 = load i32, i32* %bf, align 4
  %call41 = call %union.node_t* @create_internal(i32 noundef %63)
  store %union.node_t* %call41, %union.node_t** %node, align 8
  %64 = load %union.node_t*, %union.node_t** %node, align 8
  %cmp42 = icmp eq %union.node_t* %64, null
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then38
  %65 = load i32*, i32** %error.addr, align 8
  store i32 5, i32* %65, align 4
  %66 = load %union.node_t*, %union.node_t** %node, align 8
  store %union.node_t* %66, %union.node_t** %retval, align 8
  br label %return

if.end45:                                         ; preds = %if.then38
  %67 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call46 = call %struct.mvp_datapoint_t* @read_datapoint(%struct.mvptree_t* noundef %67)
  %68 = load %union.node_t*, %union.node_t** %node, align 8
  %internal = bitcast %union.node_t* %68 to %struct.node_internal_t*
  %sv147 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 1
  store %struct.mvp_datapoint_t* %call46, %struct.mvp_datapoint_t** %sv147, align 8
  %69 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %call48 = call %struct.mvp_datapoint_t* @read_datapoint(%struct.mvptree_t* noundef %69)
  %70 = load %union.node_t*, %union.node_t** %node, align 8
  %internal49 = bitcast %union.node_t* %70 to %struct.node_internal_t*
  %sv250 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal49, i32 0, i32 2
  store %struct.mvp_datapoint_t* %call48, %struct.mvp_datapoint_t** %sv250, align 8
  %71 = load %union.node_t*, %union.node_t** %node, align 8
  %internal51 = bitcast %union.node_t* %71 to %struct.node_internal_t*
  %M1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal51, i32 0, i32 3
  %72 = load float*, float** %M1, align 8
  %73 = bitcast float* %72 to i8*
  %74 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf52 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %74, i32 0, i32 9
  %75 = load i8*, i8** %buf52, align 8
  %76 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos53 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %76, i32 0, i32 6
  %77 = load i64, i64* %pos53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %75, i64 %77
  %78 = load i32, i32* %lengthM1, align 4
  %conv55 = sext i32 %78 to i64
  %mul56 = mul i64 %conv55, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 1 %arrayidx54, i64 %mul56, i1 false)
  %79 = load i32, i32* %lengthM1, align 4
  %conv57 = sext i32 %79 to i64
  %mul58 = mul i64 %conv57, 4
  %80 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos59 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %80, i32 0, i32 6
  %81 = load i64, i64* %pos59, align 8
  %add60 = add i64 %81, %mul58
  store i64 %add60, i64* %pos59, align 8
  %82 = load %union.node_t*, %union.node_t** %node, align 8
  %internal61 = bitcast %union.node_t* %82 to %struct.node_internal_t*
  %M2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal61, i32 0, i32 4
  %83 = load float*, float** %M2, align 8
  %84 = bitcast float* %83 to i8*
  %85 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf62 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %85, i32 0, i32 9
  %86 = load i8*, i8** %buf62, align 8
  %87 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos63 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %87, i32 0, i32 6
  %88 = load i64, i64* %pos63, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %86, i64 %88
  %89 = load i32, i32* %lengthM2, align 4
  %conv65 = sext i32 %89 to i64
  %mul66 = mul i64 %conv65, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 1 %arrayidx64, i64 %mul66, i1 false)
  %90 = load i32, i32* %lengthM2, align 4
  %conv67 = sext i32 %90 to i64
  %mul68 = mul i64 %conv67, 4
  %91 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos69 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %91, i32 0, i32 6
  %92 = load i64, i64* %pos69, align 8
  %add70 = add i64 %92, %mul68
  store i64 %add70, i64* %pos69, align 8
  %93 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos74 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %93, i32 0, i32 6
  %94 = load i64, i64* %pos74, align 8
  store i64 %94, i64* %saved_pos73, align 8
  store i32 0, i32* %i71, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc95, %if.end45
  %95 = load i32, i32* %i71, align 4
  %96 = load i32, i32* %fanout, align 4
  %cmp76 = icmp slt i32 %95, %96
  br i1 %cmp76, label %for.body78, label %for.end97

for.body78:                                       ; preds = %for.cond75
  %97 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf79 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %97, i32 0, i32 9
  %98 = load i8*, i8** %buf79, align 8
  %99 = load i64, i64* %saved_pos73, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %98, i64 %99
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %fileno, i8* align 1 %arrayidx80, i64 1, i1 false)
  %100 = load i64, i64* %saved_pos73, align 8
  %add81 = add i64 %100, 1
  store i64 %add81, i64* %saved_pos73, align 8
  %101 = bitcast i64* %offset72 to i8*
  %102 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %buf82 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %102, i32 0, i32 9
  %103 = load i8*, i8** %buf82, align 8
  %104 = load i64, i64* %saved_pos73, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %103, i64 %104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 1 %arrayidx83, i64 8, i1 false)
  %105 = load i64, i64* %saved_pos73, align 8
  %add84 = add i64 %105, 8
  store i64 %add84, i64* %saved_pos73, align 8
  %106 = load i64, i64* %offset72, align 8
  %107 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %pos85 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %107, i32 0, i32 6
  store i64 %106, i64* %pos85, align 8
  %108 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %109 = load i32*, i32** %error.addr, align 8
  %110 = load i32, i32* %lvl.addr, align 4
  %add86 = add nsw i32 %110, 2
  %call87 = call %union.node_t* @_mvptree_read_node(%struct.mvptree_t* noundef %108, i32* noundef %109, i32 noundef %add86)
  %111 = bitcast %union.node_t* %call87 to i8*
  %112 = load %union.node_t*, %union.node_t** %node, align 8
  %internal88 = bitcast %union.node_t* %112 to %struct.node_internal_t*
  %child_nodes = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal88, i32 0, i32 5
  %113 = load i8**, i8*** %child_nodes, align 8
  %114 = load i32, i32* %i71, align 4
  %idxprom89 = sext i32 %114 to i64
  %arrayidx90 = getelementptr inbounds i8*, i8** %113, i64 %idxprom89
  store i8* %111, i8** %arrayidx90, align 8
  %115 = load i32*, i32** %error.addr, align 8
  %116 = load i32, i32* %115, align 4
  %cmp91 = icmp ne i32 %116, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %for.body78
  br label %for.end97

if.end94:                                         ; preds = %for.body78
  br label %for.inc95

for.inc95:                                        ; preds = %if.end94
  %117 = load i32, i32* %i71, align 4
  %inc96 = add nsw i32 %117, 1
  store i32 %inc96, i32* %i71, align 4
  br label %for.cond75, !llvm.loop !43

for.end97:                                        ; preds = %if.then93, %for.cond75
  br label %if.end99

if.else98:                                        ; preds = %if.else
  %118 = load i32*, i32** %error.addr, align 8
  store i32 25, i32* %118, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else98, %for.end97
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %for.end
  %119 = load %union.node_t*, %union.node_t** %node, align 8
  store %union.node_t* %119, %union.node_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end100, %if.then44, %if.then2
  %120 = load %union.node_t*, %union.node_t** %retval, align 8
  ret %union.node_t* %120
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mvptree_t* @mvptree_read(i8* noundef %filename, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* noundef %fnc, i32 noundef %branchfactor, i32 noundef %pathlength, i32 noundef %leafcapacity, i32* noundef %error) #0 {
entry:
  %retval = alloca %struct.mvptree_t*, align 8
  %filename.addr = alloca i8*, align 8
  %fnc.addr = alloca float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, align 8
  %branchfactor.addr = alloca i32, align 4
  %pathlength.addr = alloca i32, align 4
  %leafcapacity.addr = alloca i32, align 4
  %error.addr = alloca i32*, align 8
  %tree = alloca %struct.mvptree_t*, align 8
  %fd = alloca i32, align 4
  %file_info = alloca %struct.stat, align 8
  %size = alloca i64, align 8
  %buf = alloca i8*, align 8
  %pos = alloca i64, align 8
  %line = alloca [16 x i8], align 16
  %v = alloca i32, align 4
  %bf = alloca i8, align 1
  %pl = alloca i8, align 1
  %lc = alloca i8, align 1
  %ht = alloca i8, align 1
  store i8* %filename, i8** %filename.addr, align 8
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %fnc, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %fnc.addr, align 8
  store i32 %branchfactor, i32* %branchfactor.addr, align 4
  store i32 %pathlength, i32* %pathlength.addr, align 4
  store i32 %leafcapacity, i32* %leafcapacity.addr, align 4
  store i32* %error, i32** %error.addr, align 8
  %0 = load i32*, i32** %error.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.mvptree_t* null, %struct.mvptree_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %error.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i8*, i8** %filename.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %3 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %fnc.addr, align 8
  %tobool2 = icmp ne float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %3, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %4 = load i32*, i32** %error.addr, align 8
  store i32 1, i32* %4, align 4
  store %struct.mvptree_t* null, %struct.mvptree_t** %retval, align 8
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  store %struct.mvptree_t* null, %struct.mvptree_t** %tree, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* noundef %5, i32 noundef 0)
  store i32 %call, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  %7 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %fnc.addr, align 8
  %8 = load i32, i32* %branchfactor.addr, align 4
  %9 = load i32, i32* %pathlength.addr, align 4
  %10 = load i32, i32* %leafcapacity.addr, align 4
  %call6 = call %struct.mvptree_t* @mvptree_alloc(%struct.mvptree_t* noundef null, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  store %struct.mvptree_t* %call6, %struct.mvptree_t** %tree, align 8
  %11 = load i32*, i32** %error.addr, align 8
  store i32 24, i32* %11, align 4
  %12 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  store %struct.mvptree_t* %12, %struct.mvptree_t** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end4
  %13 = load i32, i32* %fd, align 4
  %call8 = call i32 @fstat(i32 noundef %13, %struct.stat* noundef %file_info) #6
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %14 = load i32*, i32** %error.addr, align 8
  store i32 12, i32* %14, align 4
  store %struct.mvptree_t* null, %struct.mvptree_t** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end7
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %file_info, i32 0, i32 8
  %15 = load i64, i64* %st_size, align 8
  store i64 %15, i64* %size, align 8
  %16 = load i64, i64* %size, align 8
  %17 = load i32, i32* %fd, align 4
  %call12 = call i8* @mmap(i8* noundef null, i64 noundef %16, i32 noundef 1, i32 noundef 1, i32 noundef %17, i64 noundef 0) #6
  store i8* %call12, i8** %buf, align 8
  %18 = load i8*, i8** %buf, align 8
  %cmp13 = icmp eq i8* %18, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %19 = load i32*, i32** %error.addr, align 8
  store i32 14, i32* %19, align 4
  %20 = load i32, i32* %fd, align 4
  %call15 = call i32 @close(i32 noundef %20)
  store %struct.mvptree_t* null, %struct.mvptree_t** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end11
  store i64 0, i64* %pos, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %line, i64 0, i64 0
  %21 = load i8*, i8** %buf, align 8
  %22 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %22
  %23 = load i8*, i8** @tag, align 8
  %call17 = call i64 @strlen(i8* noundef %23) #7
  %add = add i64 %call17, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay, i8* align 1 %arrayidx, i64 %add, i1 false)
  %24 = load i8*, i8** @tag, align 8
  %call18 = call i64 @strlen(i8* noundef %24) #7
  %add19 = add i64 %call18, 1
  %25 = load i64, i64* %pos, align 8
  %add20 = add i64 %25, %add19
  store i64 %add20, i64* %pos, align 8
  %26 = bitcast i32* %v to i8*
  %27 = load i8*, i8** %buf, align 8
  %28 = load i64, i64* %pos, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 %28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 1 %arrayidx21, i64 4, i1 false)
  %29 = load i64, i64* %pos, align 8
  %add22 = add i64 %29, 4
  store i64 %add22, i64* %pos, align 8
  %30 = load i8*, i8** %buf, align 8
  %31 = load i64, i64* %pos, align 8
  %inc = add nsw i64 %31, 1
  store i64 %inc, i64* %pos, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %30, i64 %31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %bf, i8* align 1 %arrayidx23, i64 1, i1 false)
  %32 = load i8*, i8** %buf, align 8
  %33 = load i64, i64* %pos, align 8
  %inc24 = add nsw i64 %33, 1
  store i64 %inc24, i64* %pos, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %32, i64 %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %pl, i8* align 1 %arrayidx25, i64 1, i1 false)
  %34 = load i8*, i8** %buf, align 8
  %35 = load i64, i64* %pos, align 8
  %inc26 = add nsw i64 %35, 1
  store i64 %inc26, i64* %pos, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %34, i64 %35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %lc, i8* align 1 %arrayidx27, i64 1, i1 false)
  %36 = load i8*, i8** %buf, align 8
  %37 = load i64, i64* %pos, align 8
  %inc28 = add nsw i64 %37, 1
  store i64 %inc28, i64* %pos, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %36, i64 %37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %ht, i8* align 1 %arrayidx29, i64 1, i1 false)
  %38 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %fnc.addr, align 8
  %39 = load i8, i8* %bf, align 1
  %conv = zext i8 %39 to i32
  %40 = load i8, i8* %pl, align 1
  %conv30 = zext i8 %40 to i32
  %41 = load i8, i8* %lc, align 1
  %conv31 = zext i8 %41 to i32
  %call32 = call %struct.mvptree_t* @mvptree_alloc(%struct.mvptree_t* noundef null, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* noundef %38, i32 noundef %conv, i32 noundef %conv30, i32 noundef %conv31)
  store %struct.mvptree_t* %call32, %struct.mvptree_t** %tree, align 8
  %42 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %tobool33 = icmp ne %struct.mvptree_t* %42, null
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end16
  %43 = load i32*, i32** %error.addr, align 8
  store i32 3, i32* %43, align 4
  store %struct.mvptree_t* null, %struct.mvptree_t** %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.end16
  %call36 = call i64 @sysconf(i32 noundef 30) #6
  %44 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %pgsize = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %44, i32 0, i32 8
  store i64 %call36, i64* %pgsize, align 8
  %45 = load i64, i64* %size, align 8
  %46 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %size37 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %46, i32 0, i32 7
  store i64 %45, i64* %size37, align 8
  %47 = load i8*, i8** %buf, align 8
  %48 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %buf38 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %48, i32 0, i32 9
  store i8* %47, i8** %buf38, align 8
  %49 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %pos39 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %49, i32 0, i32 6
  store i64 32, i64* %pos39, align 8
  %50 = load i32, i32* %fd, align 4
  %51 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %fd40 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %51, i32 0, i32 3
  store i32 %50, i32* %fd40, align 4
  %52 = load i8, i8* %ht, align 1
  %conv41 = zext i8 %52 to i32
  %53 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %datatype = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %53, i32 0, i32 5
  store i32 %conv41, i32* %datatype, align 4
  %54 = load float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)*, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %fnc.addr, align 8
  %55 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %dist = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %55, i32 0, i32 11
  store float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)* %54, float (%struct.mvp_datapoint_t*, %struct.mvp_datapoint_t*)** %dist, align 8
  %56 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %57 = load i32*, i32** %error.addr, align 8
  %call42 = call %union.node_t* @_mvptree_read_node(%struct.mvptree_t* noundef %56, i32* noundef %57, i32 noundef 0)
  %58 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %node = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %58, i32 0, i32 10
  store %union.node_t* %call42, %union.node_t** %node, align 8
  %59 = load i8*, i8** %buf, align 8
  %60 = load i64, i64* %size, align 8
  %call43 = call i32 @munmap(i8* noundef %59, i64 noundef %60) #6
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end35
  %61 = load i32*, i32** %error.addr, align 8
  store i32 15, i32* %61, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end35
  %62 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %buf48 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %62, i32 0, i32 9
  store i8* null, i8** %buf48, align 8
  %63 = load i32, i32* %fd, align 4
  %call49 = call i32 @close(i32 noundef %63)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end47
  %64 = load i32*, i32** %error.addr, align 8
  store i32 13, i32* %64, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end47
  %65 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %buf54 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %65, i32 0, i32 9
  store i8* null, i8** %buf54, align 8
  %66 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %pos55 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %66, i32 0, i32 6
  store i64 0, i64* %pos55, align 8
  %67 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  %fd56 = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %67, i32 0, i32 3
  store i32 0, i32* %fd56, align 4
  %68 = load %struct.mvptree_t*, %struct.mvptree_t** %tree, align 8
  store %struct.mvptree_t* %68, %struct.mvptree_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end53, %if.then34, %if.then14, %if.then10, %if.then5, %if.then3, %if.then
  %69 = load %struct.mvptree_t*, %struct.mvptree_t** %retval, align 8
  ret %struct.mvptree_t* %69
}

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mvptree_print(%struct._IO_FILE* noundef %stream, %struct.mvptree_t* noundef %tree, %union.node_t* noundef %node, i32 noundef %lvl) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %node.addr = alloca %union.node_t*, align 8
  %lvl.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %next_node = alloca %union.node_t*, align 8
  %bf = alloca i32, align 4
  %lengthM1 = alloca i32, align 4
  %lengthM2 = alloca i32, align 4
  %fanout = alloca i32, align 4
  %i = alloca i32, align 4
  %i35 = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  store %union.node_t* %node, %union.node_t** %node.addr, align 8
  store i32 %lvl, i32* %lvl.addr, align 4
  store i32 0, i32* %error, align 4
  %0 = load %union.node_t*, %union.node_t** %node.addr, align 8
  store %union.node_t* %0, %union.node_t** %next_node, align 8
  %1 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %branchfactor = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %1, i32 0, i32 0
  %2 = load i32, i32* %branchfactor, align 8
  store i32 %2, i32* %bf, align 4
  %3 = load i32, i32* %bf, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %lengthM1, align 4
  %4 = load i32, i32* %bf, align 4
  store i32 %4, i32* %lengthM2, align 4
  %5 = load i32, i32* %bf, align 4
  %6 = load i32, i32* %bf, align 4
  %mul = mul nsw i32 %5, %6
  store i32 %mul, i32* %fanout, align 4
  %7 = load %union.node_t*, %union.node_t** %next_node, align 8
  %tobool = icmp ne %union.node_t* %7, null
  br i1 %tobool, label %if.then, label %if.else77

if.then:                                          ; preds = %entry
  %8 = load %union.node_t*, %union.node_t** %next_node, align 8
  %leaf = bitcast %union.node_t* %8 to %struct.node_leaf_t*
  %type = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf, i32 0, i32 0
  %9 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %11 = load i32, i32* %lvl.addr, align 4
  %12 = load %union.node_t*, %union.node_t** %next_node, align 8
  %leaf2 = bitcast %union.node_t* %12 to %struct.node_leaf_t*
  %nbpoints = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf2, i32 0, i32 6
  %13 = load i32, i32* %nbpoints, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 noundef %11, i32 noundef %13)
  %14 = load %union.node_t*, %union.node_t** %next_node, align 8
  %leaf3 = bitcast %union.node_t* %14 to %struct.node_leaf_t*
  %sv1 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf3, i32 0, i32 1
  %15 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv1, align 8
  %tobool4 = icmp ne %struct.mvp_datapoint_t* %15, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %17 = load %union.node_t*, %union.node_t** %next_node, align 8
  %leaf6 = bitcast %union.node_t* %17 to %struct.node_leaf_t*
  %sv17 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf6, i32 0, i32 1
  %18 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv17, align 8
  %id = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %18, i32 0, i32 0
  %19 = load i8*, i8** %id, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then1
  %20 = load %union.node_t*, %union.node_t** %next_node, align 8
  %leaf9 = bitcast %union.node_t* %20 to %struct.node_leaf_t*
  %sv2 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf9, i32 0, i32 2
  %21 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv2, align 8
  %tobool10 = icmp ne %struct.mvp_datapoint_t* %21, null
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %23 = load %union.node_t*, %union.node_t** %next_node, align 8
  %leaf12 = bitcast %union.node_t* %23 to %struct.node_leaf_t*
  %sv213 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf12, i32 0, i32 2
  %24 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv213, align 8
  %id14 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %24, i32 0, i32 0
  %25 = load i8*, i8** %id14, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* noundef %25)
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %26 = load i32, i32* %i, align 4
  %27 = load %union.node_t*, %union.node_t** %next_node, align 8
  %leaf17 = bitcast %union.node_t* %27 to %struct.node_leaf_t*
  %nbpoints18 = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf17, i32 0, i32 6
  %28 = load i32, i32* %nbpoints18, align 8
  %cmp19 = icmp ult i32 %26, %28
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load %union.node_t*, %union.node_t** %next_node, align 8
  %leaf20 = bitcast %union.node_t* %31 to %struct.node_leaf_t*
  %points = getelementptr inbounds %struct.node_leaf_t, %struct.node_leaf_t* %leaf20, i32 0, i32 3
  %32 = load %struct.mvp_datapoint_t**, %struct.mvp_datapoint_t*** %points, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %32, i64 %idxprom
  %34 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %arrayidx, align 8
  %id21 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %34, i32 0, i32 0
  %35 = load i8*, i8** %id21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 noundef %30, i8* noundef %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  br label %if.end76

if.else:                                          ; preds = %if.then
  %37 = load %union.node_t*, %union.node_t** %next_node, align 8
  %internal = bitcast %union.node_t* %37 to %struct.node_internal_t*
  %type23 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal, i32 0, i32 0
  %38 = load i32, i32* %type23, align 8
  %cmp24 = icmp eq i32 %38, 1
  br i1 %cmp24, label %if.then25, label %if.else74

if.then25:                                        ; preds = %if.else
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %40 = load i32, i32* %lvl.addr, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 noundef %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %42 = load %union.node_t*, %union.node_t** %next_node, align 8
  %internal27 = bitcast %union.node_t* %42 to %struct.node_internal_t*
  %sv128 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal27, i32 0, i32 1
  %43 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv128, align 8
  %id29 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %43, i32 0, i32 0
  %44 = load i8*, i8** %id29, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* noundef %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %46 = load %union.node_t*, %union.node_t** %next_node, align 8
  %internal31 = bitcast %union.node_t* %46 to %struct.node_internal_t*
  %sv232 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal31, i32 0, i32 2
  %47 = load %struct.mvp_datapoint_t*, %struct.mvp_datapoint_t** %sv232, align 8
  %id33 = getelementptr inbounds %struct.mvp_datapoint_t, %struct.mvp_datapoint_t* %47, i32 0, i32 0
  %48 = load i8*, i8** %id33, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* noundef %48)
  store i32 0, i32* %i35, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %if.then25
  %49 = load i32, i32* %i35, align 4
  %50 = load i32, i32* %lengthM1, align 4
  %cmp37 = icmp slt i32 %49, %50
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %52 = load i32, i32* %i35, align 4
  %53 = load %union.node_t*, %union.node_t** %next_node, align 8
  %internal39 = bitcast %union.node_t* %53 to %struct.node_internal_t*
  %M1 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal39, i32 0, i32 3
  %54 = load float*, float** %M1, align 8
  %55 = load i32, i32* %i35, align 4
  %idxprom40 = sext i32 %55 to i64
  %arrayidx41 = getelementptr inbounds float, float* %54, i64 %idxprom40
  %56 = load float, float* %arrayidx41, align 4
  %conv = fpext float %56 to double
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 noundef %52, double noundef %conv)
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %57 = load i32, i32* %i35, align 4
  %inc44 = add nsw i32 %57, 1
  store i32 %inc44, i32* %i35, align 4
  br label %for.cond36, !llvm.loop !45

for.end45:                                        ; preds = %for.cond36
  store i32 0, i32* %i35, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc55, %for.end45
  %58 = load i32, i32* %i35, align 4
  %59 = load i32, i32* %lengthM2, align 4
  %cmp47 = icmp slt i32 %58, %59
  br i1 %cmp47, label %for.body49, label %for.end57

for.body49:                                       ; preds = %for.cond46
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %61 = load i32, i32* %i35, align 4
  %62 = load %union.node_t*, %union.node_t** %next_node, align 8
  %internal50 = bitcast %union.node_t* %62 to %struct.node_internal_t*
  %M2 = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal50, i32 0, i32 4
  %63 = load float*, float** %M2, align 8
  %64 = load i32, i32* %i35, align 4
  %idxprom51 = sext i32 %64 to i64
  %arrayidx52 = getelementptr inbounds float, float* %63, i64 %idxprom51
  %65 = load float, float* %arrayidx52, align 4
  %conv53 = fpext float %65 to double
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 noundef %61, double noundef %conv53)
  br label %for.inc55

for.inc55:                                        ; preds = %for.body49
  %66 = load i32, i32* %i35, align 4
  %inc56 = add nsw i32 %66, 1
  store i32 %inc56, i32* %i35, align 4
  br label %for.cond46, !llvm.loop !46

for.end57:                                        ; preds = %for.cond46
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  store i32 0, i32* %i35, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc71, %for.end57
  %68 = load i32, i32* %i35, align 4
  %69 = load i32, i32* %fanout, align 4
  %cmp60 = icmp slt i32 %68, %69
  br i1 %cmp60, label %for.body62, label %for.end73

for.body62:                                       ; preds = %for.cond59
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %71 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %72 = load %union.node_t*, %union.node_t** %node.addr, align 8
  %internal63 = bitcast %union.node_t* %72 to %struct.node_internal_t*
  %child_nodes = getelementptr inbounds %struct.node_internal_t, %struct.node_internal_t* %internal63, i32 0, i32 5
  %73 = load i8**, i8*** %child_nodes, align 8
  %74 = load i32, i32* %i35, align 4
  %idxprom64 = sext i32 %74 to i64
  %arrayidx65 = getelementptr inbounds i8*, i8** %73, i64 %idxprom64
  %75 = load i8*, i8** %arrayidx65, align 8
  %76 = bitcast i8* %75 to %union.node_t*
  %77 = load i32, i32* %lvl.addr, align 4
  %add = add nsw i32 %77, 2
  %call66 = call i32 @_mvptree_print(%struct._IO_FILE* noundef %70, %struct.mvptree_t* noundef %71, %union.node_t* noundef %76, i32 noundef %add)
  store i32 %call66, i32* %error, align 4
  %78 = load i32, i32* %error, align 4
  %cmp67 = icmp ne i32 %78, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %for.body62
  br label %for.end73

if.end70:                                         ; preds = %for.body62
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %79 = load i32, i32* %i35, align 4
  %inc72 = add nsw i32 %79, 1
  store i32 %inc72, i32* %i35, align 4
  br label %for.cond59, !llvm.loop !47

for.end73:                                        ; preds = %if.then69, %for.cond59
  br label %if.end75

if.else74:                                        ; preds = %if.else
  store i32 25, i32* %error, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %for.end73
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %for.end
  br label %if.end79

if.else77:                                        ; preds = %entry
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %81 = load i32, i32* %lvl.addr, align 4
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i32 noundef %81)
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.end76
  %82 = load i32, i32* %error, align 4
  ret i32 %82
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvptree_print(%struct._IO_FILE* noundef %stream, %struct.mvptree_t* noundef %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %tree.addr = alloca %struct.mvptree_t*, align 8
  %err = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.mvptree_t* %tree, %struct.mvptree_t** %tree.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %cmp1 = icmp eq %struct.mvptree_t* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %4 = load %struct.mvptree_t*, %struct.mvptree_t** %tree.addr, align 8
  %node = getelementptr inbounds %struct.mvptree_t, %struct.mvptree_t* %4, i32 0, i32 10
  %5 = load %union.node_t*, %union.node_t** %node, align 8
  %call = call i32 @_mvptree_print(%struct._IO_FILE* noundef %2, %struct.mvptree_t* noundef %3, %union.node_t* noundef %5, i32 noundef 0)
  store i32 %call, i32* %err, align 4
  %6 = load i32, i32* %err, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %8 = load i32, i32* %err, align 4
  %call4 = call i8* @mvp_errstr(i32 noundef %8)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* noundef %call4)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %9 = load i32, i32* %err, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
