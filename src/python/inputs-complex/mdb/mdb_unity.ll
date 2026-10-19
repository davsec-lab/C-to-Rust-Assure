; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/mdb/mdb_unity.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/mdb/mdb_unity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdb_status_t = type { i8, i8* }
%struct.mdb_int_t = type { i8*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.mdb_options_t, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mdb_options_t = type { i8*, i16, i32, i32, i32 }
%struct.mdb_index_t = type { i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [45 x i8] c"failed allocating memory buffer for database\00", align 1
@pathbuf = internal global [4096 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [10 x i8] c".db.super\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot open superblock file as read\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"read error when parsing superblock\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c".db.index\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"cannot open index file as readwrite\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c".db.data\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"cannot open data file as readwrite\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"fflush failed\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"cannot open superblock file as write\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"write error when writing superblock\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"write error when writing freeptr\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"write error when writing hash buckets\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Key not found\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"key size too large\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"value size too large\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"cannot seek to bucket\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"cannot read bucket\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"cannot seek to ptr\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"cannot read next ptr\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"cannot read key\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"cannot read value ptr\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"cannot read value length\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"cannot write bucket\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"cannot write key part of index\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"cannot seek to value part of index\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"cannot write to value part of index\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"value buffer size too small\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"cannot seek to value\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"cannot read data\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"cannot seek to head of index file\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"cannot write to head of index file\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"cannot write data\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"cannot seek to end of index file\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"cannot stretch index file\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"cannot seek to head of data file\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"cannot read data file\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"cannot stretch data file\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"cannot read free ptr\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"cannot write to ptr\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"cannot clean key part of index\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"cannot seek to data record\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"cannot write empty data\00", align 1

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
define dso_local { i8, i8* } @mdb_open(i8** noundef %handle, i8* noundef %path) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %handle.addr = alloca i8**, align 8
  %path.addr = alloca i8*, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  store i8** %handle, i8*** %handle.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %call = call %struct.mdb_int_t* @mdb_alloc()
  store %struct.mdb_int_t* %call, %struct.mdb_int_t** %db, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %cmp = icmp eq %struct.mdb_int_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call { i8, i8* } @mdb_status(i8 noundef zeroext 8, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %1 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %2 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %1, i32 0, i32 0
  %3 = extractvalue { i8, i8* } %call1, 0
  store i8 %3, i8* %2, align 8
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %1, i32 0, i32 1
  %5 = extractvalue { i8, i8* } %call1, 1
  store i8* %5, i8** %4, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %path.addr, align 8
  %call2 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef %6) #5
  %call3 = call i8* @strcat(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #5
  %call4 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %7 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %7, i32 0, i32 1
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp_superblock, align 8
  %8 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock5 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %8, i32 0, i32 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock5, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %10)
  %call8 = call { i8, i8* } @mdb_status(i8 noundef zeroext 5, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %11 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %12 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %11, i32 0, i32 0
  %13 = extractvalue { i8, i8* } %call8, 0
  store i8 %13, i8* %12, align 8
  %14 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %11, i32 0, i32 1
  %15 = extractvalue { i8, i8* } %call8, 1
  store i8* %15, i8** %14, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %16 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock10 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %16, i32 0, i32 1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock10, align 8
  %18 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %db_name = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %18, i32 0, i32 0
  %19 = load i8*, i8** %db_name, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef %19)
  %20 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock12 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %20, i32 0, i32 1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock12, align 8
  %22 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %22, i32 0, i32 4
  %key_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 1
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i16* noundef %key_size_max)
  %23 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock14 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %23, i32 0, i32 1
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock14, align 8
  %25 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options15 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %25, i32 0, i32 4
  %data_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options15, i32 0, i32 2
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %data_size_max)
  %26 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock17 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %26, i32 0, i32 1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock17, align 8
  %28 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options18 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %28, i32 0, i32 4
  %hash_buckets = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options18, i32 0, i32 3
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %hash_buckets)
  %29 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock20 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %29, i32 0, i32 1
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock20, align 8
  %31 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options21 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %31, i32 0, i32 4
  %items_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options21, i32 0, i32 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %items_max)
  %32 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options23 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %32, i32 0, i32 4
  %key_size_max24 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options23, i32 0, i32 1
  %33 = load i16, i16* %key_size_max24, align 8
  %conv = zext i16 %33 to i32
  %add = add nsw i32 %conv, 8
  %add25 = add nsw i32 %add, 4
  %34 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %index_record_size = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %34, i32 0, i32 5
  store i32 %add25, i32* %index_record_size, align 8
  %35 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock26 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %35, i32 0, i32 1
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock26, align 8
  %call27 = call i32 @ferror(%struct._IO_FILE* noundef %36) #5
  %tobool = icmp ne i32 %call27, 0
  br i1 %tobool, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end9
  %37 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %37)
  %call29 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %38 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %39 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %38, i32 0, i32 0
  %40 = extractvalue { i8, i8* } %call29, 0
  store i8 %40, i8* %39, align 8
  %41 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %38, i32 0, i32 1
  %42 = extractvalue { i8, i8* } %call29, 1
  store i8* %42, i8** %41, align 8
  br label %return

if.end30:                                         ; preds = %if.end9
  %43 = load i8*, i8** %path.addr, align 8
  %call31 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef %43) #5
  %call32 = call i8* @strcat(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #5
  %call33 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %44 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %44, i32 0, i32 2
  store %struct._IO_FILE* %call33, %struct._IO_FILE** %fp_index, align 8
  %45 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index34 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %45, i32 0, i32 2
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index34, align 8
  %cmp35 = icmp eq %struct._IO_FILE* %46, null
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end30
  %47 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %47)
  %call38 = call { i8, i8* } @mdb_status(i8 noundef zeroext 5, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %48 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %49 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %48, i32 0, i32 0
  %50 = extractvalue { i8, i8* } %call38, 0
  store i8 %50, i8* %49, align 8
  %51 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %48, i32 0, i32 1
  %52 = extractvalue { i8, i8* } %call38, 1
  store i8* %52, i8** %51, align 8
  br label %return

if.end39:                                         ; preds = %if.end30
  %53 = load i8*, i8** %path.addr, align 8
  %call40 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef %53) #5
  %call41 = call i8* @strcat(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #5
  %call42 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %54 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %54, i32 0, i32 3
  store %struct._IO_FILE* %call42, %struct._IO_FILE** %fp_data, align 8
  %55 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_data43 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %55, i32 0, i32 3
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data43, align 8
  %cmp44 = icmp eq %struct._IO_FILE* %56, null
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end39
  %57 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %57)
  %call47 = call { i8, i8* } @mdb_status(i8 noundef zeroext 5, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %58 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %59 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %58, i32 0, i32 0
  %60 = extractvalue { i8, i8* } %call47, 0
  store i8 %60, i8* %59, align 8
  %61 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %58, i32 0, i32 1
  %62 = extractvalue { i8, i8* } %call47, 1
  store i8* %62, i8** %61, align 8
  br label %return

if.end48:                                         ; preds = %if.end39
  %call49 = call i32 @fflush(%struct._IO_FILE* noundef null)
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end48
  %63 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %63)
  %call53 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %64 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %65 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %64, i32 0, i32 0
  %66 = extractvalue { i8, i8* } %call53, 0
  store i8 %66, i8* %65, align 8
  %67 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %64, i32 0, i32 1
  %68 = extractvalue { i8, i8* } %call53, 1
  store i8* %68, i8** %67, align 8
  br label %return

if.end54:                                         ; preds = %if.end48
  %69 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %70 = bitcast %struct.mdb_int_t* %69 to i8*
  %71 = load i8**, i8*** %handle.addr, align 8
  store i8* %70, i8** %71, align 8
  %call55 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %72 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %73 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %72, i32 0, i32 0
  %74 = extractvalue { i8, i8* } %call55, 0
  store i8 %74, i8* %73, align 8
  %75 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %72, i32 0, i32 1
  %76 = extractvalue { i8, i8* } %call55, 1
  store i8* %76, i8** %75, align 8
  br label %return

return:                                           ; preds = %if.end54, %if.then52, %if.then46, %if.then37, %if.then28, %if.then7, %if.then
  %77 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %78 = load { i8, i8* }, { i8, i8* }* %77, align 8
  ret { i8, i8* } %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mdb_int_t* @mdb_alloc() #0 {
entry:
  %retval = alloca %struct.mdb_int_t*, align 8
  %ret = alloca %struct.mdb_int_t*, align 8
  %call = call noalias i8* @malloc(i64 noundef 64) #5
  %0 = bitcast i8* %call to %struct.mdb_int_t*
  store %struct.mdb_int_t* %0, %struct.mdb_int_t** %ret, align 8
  %1 = load %struct.mdb_int_t*, %struct.mdb_int_t** %ret, align 8
  %tobool = icmp ne %struct.mdb_int_t* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.mdb_int_t* null, %struct.mdb_int_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 noundef 256) #5
  %2 = load %struct.mdb_int_t*, %struct.mdb_int_t** %ret, align 8
  %db_name = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %2, i32 0, i32 0
  store i8* %call1, i8** %db_name, align 8
  %3 = load %struct.mdb_int_t*, %struct.mdb_int_t** %ret, align 8
  %db_name2 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %3, i32 0, i32 0
  %4 = load i8*, i8** %db_name2, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %5 = load %struct.mdb_int_t*, %struct.mdb_int_t** %ret, align 8
  %6 = bitcast %struct.mdb_int_t* %5 to i8*
  call void @free(i8* noundef %6) #5
  store %struct.mdb_int_t* null, %struct.mdb_int_t** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load %struct.mdb_int_t*, %struct.mdb_int_t** %ret, align 8
  %db_name6 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %7, i32 0, i32 0
  %8 = load i8*, i8** %db_name6, align 8
  %9 = load %struct.mdb_int_t*, %struct.mdb_int_t** %ret, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %9, i32 0, i32 4
  %db_name7 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 0
  store i8* %8, i8** %db_name7, align 8
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %ret, align 8
  store %struct.mdb_int_t* %10, %struct.mdb_int_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %11 = load %struct.mdb_int_t*, %struct.mdb_int_t** %retval, align 8
  ret %struct.mdb_int_t* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_status(i8 noundef zeroext %code, i8* noundef %desc) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %code.addr = alloca i8, align 1
  %desc.addr = alloca i8*, align 8
  store i8 %code, i8* %code.addr, align 1
  store i8* %desc, i8** %desc.addr, align 8
  %0 = load i8, i8* %code.addr, align 1
  %code1 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %retval, i32 0, i32 0
  store i8 %0, i8* %code1, align 8
  %1 = load i8*, i8** %desc.addr, align 8
  %desc2 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %retval, i32 0, i32 1
  store i8* %1, i8** %desc2, align 8
  %2 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %3 = load { i8, i8* }, { i8, i8* }* %2, align 8
  ret { i8, i8* } %3
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdb_free(%struct.mdb_int_t* noundef %db) #0 {
entry:
  %db.addr = alloca %struct.mdb_int_t*, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_superblock = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_superblock1 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock1, align 8
  %call = call i32 @fclose(%struct._IO_FILE* noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %cmp2 = icmp ne %struct._IO_FILE* %5, null
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %6 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index4 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %6, i32 0, i32 2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index4, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %8 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %8, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data, align 8
  %cmp7 = icmp ne %struct._IO_FILE* %9, null
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data9 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %10, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data9, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* noundef %11)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6
  %12 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %db_name = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %12, i32 0, i32 0
  %13 = load i8*, i8** %db_name, align 8
  call void @free(i8* noundef %13) #5
  %14 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %15 = bitcast %struct.mdb_int_t* %14 to i8*
  call void @free(i8* noundef %15) #5
  ret void
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8, i8* } @mdb_create(i8** noundef %handle, %struct.mdb_options_t* noundef byval(%struct.mdb_options_t) align 8 %options) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %handle.addr = alloca i8**, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  %zero_ptr = alloca i32, align 4
  %i = alloca i64, align 8
  store i8** %handle, i8*** %handle.addr, align 8
  %call = call %struct.mdb_int_t* @mdb_alloc()
  store %struct.mdb_int_t* %call, %struct.mdb_int_t** %db, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %cmp = icmp eq %struct.mdb_int_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call { i8, i8* } @mdb_status(i8 noundef zeroext 8, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %1 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %2 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %1, i32 0, i32 0
  %3 = extractvalue { i8, i8* } %call1, 0
  store i8 %3, i8* %2, align 8
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %1, i32 0, i32 1
  %5 = extractvalue { i8, i8* } %call1, 1
  store i8* %5, i8** %4, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options2 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %6, i32 0, i32 4
  %db_name = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options2, i32 0, i32 0
  %7 = load i8*, i8** %db_name, align 8
  %db_name3 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 0
  %8 = load i8*, i8** %db_name3, align 8
  %call4 = call i8* @strcpy(i8* noundef %7, i8* noundef %8) #5
  %items_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 4
  %9 = load i32, i32* %items_max, align 4
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options5 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %10, i32 0, i32 4
  %items_max6 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options5, i32 0, i32 4
  store i32 %9, i32* %items_max6, align 4
  %hash_buckets = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 3
  %11 = load i32, i32* %hash_buckets, align 8
  %12 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options7 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %12, i32 0, i32 4
  %hash_buckets8 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options7, i32 0, i32 3
  store i32 %11, i32* %hash_buckets8, align 8
  %key_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 1
  %13 = load i16, i16* %key_size_max, align 8
  %14 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options9 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %14, i32 0, i32 4
  %key_size_max10 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options9, i32 0, i32 1
  store i16 %13, i16* %key_size_max10, align 8
  %data_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 2
  %15 = load i32, i32* %data_size_max, align 4
  %16 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options11 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %16, i32 0, i32 4
  %data_size_max12 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options11, i32 0, i32 2
  store i32 %15, i32* %data_size_max12, align 4
  %17 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options13 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %17, i32 0, i32 4
  %key_size_max14 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options13, i32 0, i32 1
  %18 = load i16, i16* %key_size_max14, align 8
  %conv = zext i16 %18 to i32
  %add = add nsw i32 %conv, 8
  %add15 = add nsw i32 %add, 4
  %19 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %index_record_size = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %19, i32 0, i32 5
  store i32 %add15, i32* %index_record_size, align 8
  %db_name16 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 0
  %20 = load i8*, i8** %db_name16, align 8
  %call17 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef %20) #5
  %call18 = call i8* @strcat(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #5
  %call19 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %21 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %21, i32 0, i32 1
  store %struct._IO_FILE* %call19, %struct._IO_FILE** %fp_superblock, align 8
  %22 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock20 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %22, i32 0, i32 1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock20, align 8
  %cmp21 = icmp eq %struct._IO_FILE* %23, null
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end
  %24 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %24)
  %call24 = call { i8, i8* } @mdb_status(i8 noundef zeroext 5, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  %25 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 0
  %27 = extractvalue { i8, i8* } %call24, 0
  store i8 %27, i8* %26, align 8
  %28 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 1
  %29 = extractvalue { i8, i8* } %call24, 1
  store i8* %29, i8** %28, align 8
  br label %return

if.end25:                                         ; preds = %if.end
  %30 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock26 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %30, i32 0, i32 1
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock26, align 8
  %32 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %db_name27 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %32, i32 0, i32 0
  %33 = load i8*, i8** %db_name27, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %33)
  %34 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock29 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %34, i32 0, i32 1
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock29, align 8
  %36 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options30 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %36, i32 0, i32 4
  %key_size_max31 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options30, i32 0, i32 1
  %37 = load i16, i16* %key_size_max31, align 8
  %conv32 = zext i16 %37 to i32
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv32)
  %38 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock34 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %38, i32 0, i32 1
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock34, align 8
  %40 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options35 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %40, i32 0, i32 4
  %data_size_max36 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options35, i32 0, i32 2
  %41 = load i32, i32* %data_size_max36, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 noundef %41)
  %42 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock38 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %42, i32 0, i32 1
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock38, align 8
  %44 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options39 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %44, i32 0, i32 4
  %hash_buckets40 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options39, i32 0, i32 3
  %45 = load i32, i32* %hash_buckets40, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 noundef %45)
  %46 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock42 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %46, i32 0, i32 1
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock42, align 8
  %48 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options43 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %48, i32 0, i32 4
  %items_max44 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options43, i32 0, i32 4
  %49 = load i32, i32* %items_max44, align 4
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 noundef %49)
  %50 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock46 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %50, i32 0, i32 1
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock46, align 8
  %call47 = call i32 @ferror(%struct._IO_FILE* noundef %51) #5
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end25
  %52 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %52)
  %call49 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  %53 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %54 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %53, i32 0, i32 0
  %55 = extractvalue { i8, i8* } %call49, 0
  store i8 %55, i8* %54, align 8
  %56 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %53, i32 0, i32 1
  %57 = extractvalue { i8, i8* } %call49, 1
  store i8* %57, i8** %56, align 8
  br label %return

if.end50:                                         ; preds = %if.end25
  %db_name51 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 0
  %58 = load i8*, i8** %db_name51, align 8
  %call52 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef %58) #5
  %call53 = call i8* @strcat(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #5
  %call54 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %59 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %59, i32 0, i32 2
  store %struct._IO_FILE* %call54, %struct._IO_FILE** %fp_index, align 8
  %60 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index55 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %60, i32 0, i32 2
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index55, align 8
  %cmp56 = icmp eq %struct._IO_FILE* %61, null
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end50
  %62 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %62)
  %call59 = call { i8, i8* } @mdb_status(i8 noundef zeroext 5, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %63 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %64 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %63, i32 0, i32 0
  %65 = extractvalue { i8, i8* } %call59, 0
  store i8 %65, i8* %64, align 8
  %66 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %63, i32 0, i32 1
  %67 = extractvalue { i8, i8* } %call59, 1
  store i8* %67, i8** %66, align 8
  br label %return

if.end60:                                         ; preds = %if.end50
  store i32 0, i32* %zero_ptr, align 4
  %68 = bitcast i32* %zero_ptr to i8*
  %69 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index61 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %69, i32 0, i32 2
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index61, align 8
  %call62 = call i64 @fwrite(i8* noundef %68, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %70)
  %cmp63 = icmp ult i64 %call62, 1
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end60
  %71 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %71)
  %call66 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %72 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %73 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %72, i32 0, i32 0
  %74 = extractvalue { i8, i8* } %call66, 0
  store i8 %74, i8* %73, align 8
  %75 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %72, i32 0, i32 1
  %76 = extractvalue { i8, i8* } %call66, 1
  store i8* %76, i8** %75, align 8
  br label %return

if.end67:                                         ; preds = %if.end60
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end67
  %77 = load i64, i64* %i, align 8
  %hash_buckets68 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 3
  %78 = load i32, i32* %hash_buckets68, align 8
  %conv69 = zext i32 %78 to i64
  %cmp70 = icmp ult i64 %77, %conv69
  br i1 %cmp70, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %79 = bitcast i32* %zero_ptr to i8*
  %80 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index72 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %80, i32 0, i32 2
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index72, align 8
  %call73 = call i64 @fwrite(i8* noundef %79, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %81)
  %cmp74 = icmp ult i64 %call73, 1
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %for.body
  %82 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %82)
  %call77 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0))
  %83 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %84 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %83, i32 0, i32 0
  %85 = extractvalue { i8, i8* } %call77, 0
  store i8 %85, i8* %84, align 8
  %86 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %83, i32 0, i32 1
  %87 = extractvalue { i8, i8* } %call77, 1
  store i8* %87, i8** %86, align 8
  br label %return

if.end78:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end78
  %88 = load i64, i64* %i, align 8
  %inc = add i64 %88, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %db_name79 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 0
  %89 = load i8*, i8** %db_name79, align 8
  %call80 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef %89) #5
  %call81 = call i8* @strcat(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #5
  %call82 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @pathbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %90 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %90, i32 0, i32 3
  store %struct._IO_FILE* %call82, %struct._IO_FILE** %fp_data, align 8
  %91 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_data83 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %91, i32 0, i32 3
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data83, align 8
  %cmp84 = icmp eq %struct._IO_FILE* %92, null
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %for.end
  %93 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %93)
  %call87 = call { i8, i8* } @mdb_status(i8 noundef zeroext 5, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %94 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %95 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %94, i32 0, i32 0
  %96 = extractvalue { i8, i8* } %call87, 0
  store i8 %96, i8* %95, align 8
  %97 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %94, i32 0, i32 1
  %98 = extractvalue { i8, i8* } %call87, 1
  store i8* %98, i8** %97, align 8
  br label %return

if.end88:                                         ; preds = %for.end
  %call89 = call i32 @fflush(%struct._IO_FILE* noundef null)
  %cmp90 = icmp ne i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end88
  %99 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  call void @mdb_free(%struct.mdb_int_t* noundef %99)
  %call93 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %100 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %101 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %100, i32 0, i32 0
  %102 = extractvalue { i8, i8* } %call93, 0
  store i8 %102, i8* %101, align 8
  %103 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %100, i32 0, i32 1
  %104 = extractvalue { i8, i8* } %call93, 1
  store i8* %104, i8** %103, align 8
  br label %return

if.end94:                                         ; preds = %if.end88
  %105 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %106 = bitcast %struct.mdb_int_t* %105 to i8*
  %107 = load i8**, i8*** %handle.addr, align 8
  store i8* %106, i8** %107, align 8
  %call95 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %108 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %109 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %108, i32 0, i32 0
  %110 = extractvalue { i8, i8* } %call95, 0
  store i8 %110, i8* %109, align 8
  %111 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %108, i32 0, i32 1
  %112 = extractvalue { i8, i8* } %call95, 1
  store i8* %112, i8** %111, align 8
  br label %return

return:                                           ; preds = %if.end94, %if.then92, %if.then86, %if.then76, %if.then65, %if.then58, %if.then48, %if.then23, %if.then
  %113 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %114 = load { i8, i8* }, { i8, i8* }* %113, align 8
  ret { i8, i8* } %114
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8, i8* } @mdb_read(i8* noundef %handle, i8* noundef %key, i8* noundef %buf, i64 noundef %bufsiz) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %handle.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsiz.addr = alloca i64, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  %bucket = alloca i32, align 4
  %ptr = alloca i32, align 4
  %bucket_read_status = alloca %struct.mdb_status_t, align 8
  %index = alloca %struct.mdb_index_t*, align 8
  %read_status = alloca %struct.mdb_status_t, align 8
  store i8* %handle, i8** %handle.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsiz, i64* %bufsiz.addr, align 8
  %0 = load i8*, i8** %handle.addr, align 8
  %1 = bitcast i8* %0 to %struct.mdb_int_t*
  store %struct.mdb_int_t* %1, %struct.mdb_int_t** %db, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mdb_hash(i8* noundef %2)
  %3 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %3, i32 0, i32 4
  %hash_buckets = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 3
  %4 = load i32, i32* %hash_buckets, align 8
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %bucket, align 4
  %5 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %6 = load i32, i32* %bucket, align 4
  %call1 = call { i8, i8* } @mdb_read_bucket(%struct.mdb_int_t* noundef %5, i32 noundef %6, i32* noundef %ptr)
  %7 = bitcast %struct.mdb_status_t* %bucket_read_status to { i8, i8* }*
  %8 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %7, i32 0, i32 0
  %9 = extractvalue { i8, i8* } %call1, 0
  store i8 %9, i8* %8, align 8
  %10 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %7, i32 0, i32 1
  %11 = extractvalue { i8, i8* } %call1, 1
  store i8* %11, i8** %10, align 8
  %code = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %bucket_read_status, i32 0, i32 0
  %12 = load i8, i8* %code, align 8
  %conv = zext i8 %12 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = bitcast %struct.mdb_status_t* %retval to i8*
  %14 = bitcast %struct.mdb_status_t* %bucket_read_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options3 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %15, i32 0, i32 4
  %key_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options3, i32 0, i32 1
  %16 = load i16, i16* %key_size_max, align 8
  %conv4 = zext i16 %16 to i64
  %add = add i64 12, %conv4
  %add5 = add i64 %add, 1
  %17 = alloca i8, i64 %add5, align 16
  %18 = bitcast i8* %17 to %struct.mdb_index_t*
  store %struct.mdb_index_t* %18, %struct.mdb_index_t** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end
  %19 = load i32, i32* %ptr, align 4
  %cmp6 = icmp ne i32 %19, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %21 = load i32, i32* %ptr, align 4
  %22 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %call8 = call { i8, i8* } @mdb_read_index(%struct.mdb_int_t* noundef %20, i32 noundef %21, %struct.mdb_index_t* noundef %22)
  %23 = bitcast %struct.mdb_status_t* %read_status to { i8, i8* }*
  %24 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %23, i32 0, i32 0
  %25 = extractvalue { i8, i8* } %call8, 0
  store i8 %25, i8* %24, align 8
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %23, i32 0, i32 1
  %27 = extractvalue { i8, i8* } %call8, 1
  store i8* %27, i8** %26, align 8
  %code9 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %read_status, i32 0, i32 0
  %28 = load i8, i8* %code9, align 8
  %conv10 = zext i8 %28 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  %29 = bitcast %struct.mdb_status_t* %retval to i8*
  %30 = bitcast %struct.mdb_status_t* %read_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  br label %return

if.end14:                                         ; preds = %while.body
  %31 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %key15 = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %31, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %key15, i64 0, i64 0
  %32 = load i8*, i8** %key.addr, align 8
  %call16 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %32) #6
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  %33 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %34 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %value_ptr = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %34, i32 0, i32 1
  %35 = load i32, i32* %value_ptr, align 4
  %36 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %value_size = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %36, i32 0, i32 2
  %37 = load i32, i32* %value_size, align 4
  %38 = load i8*, i8** %buf.addr, align 8
  %39 = load i64, i64* %bufsiz.addr, align 8
  %conv20 = trunc i64 %39 to i32
  %call21 = call { i8, i8* } @mdb_read_data(%struct.mdb_int_t* noundef %33, i32 noundef %35, i32 noundef %37, i8* noundef %38, i32 noundef %conv20)
  %40 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %41 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %40, i32 0, i32 0
  %42 = extractvalue { i8, i8* } %call21, 0
  store i8 %42, i8* %41, align 8
  %43 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %40, i32 0, i32 1
  %44 = extractvalue { i8, i8* } %call21, 1
  store i8* %44, i8** %43, align 8
  br label %return

if.end22:                                         ; preds = %if.end14
  %45 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %next_ptr = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %45, i32 0, i32 0
  %46 = load i32, i32* %next_ptr, align 4
  store i32 %46, i32* %ptr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call23 = call { i8, i8* } @mdb_status(i8 noundef zeroext 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %47 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %48 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %47, i32 0, i32 0
  %49 = extractvalue { i8, i8* } %call23, 0
  store i8 %49, i8* %48, align 8
  %50 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %47, i32 0, i32 1
  %51 = extractvalue { i8, i8* } %call23, 1
  store i8* %51, i8** %50, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then19, %if.then13, %if.then
  %52 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %53 = load { i8, i8* }, { i8, i8* }* %52, align 8
  ret { i8, i8* } %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdb_hash(i8* noundef %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %i, align 4
  %mul = mul i32 %conv2, %4
  %5 = load i32, i32* %ret, align 4
  %add = add i32 %5, %mul
  store i32 %add, i32* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %key.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %key.addr, align 8
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_read_bucket(%struct.mdb_int_t* noundef %db, i32 noundef %bucket, i32* noundef %ptr) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %bucket.addr = alloca i32, align 4
  %ptr.addr = alloca i32*, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %bucket, i32* %bucket.addr, align 4
  store i32* %ptr, i32** %ptr.addr, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %2 = load i32, i32* %bucket.addr, align 4
  %add = add i32 %2, 1
  %mul = mul i32 4, %add
  %conv = zext i32 %mul to i64
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %conv, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %3 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 0
  %5 = extractvalue { i8, i8* } %call2, 0
  store i8 %5, i8* %4, align 8
  %6 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 1
  %7 = extractvalue { i8, i8* } %call2, 1
  store i8* %7, i8** %6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32*, i32** %ptr.addr, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index3 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %10, i32 0, i32 2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index3, align 8
  %call4 = call i64 @fread(i8* noundef %9, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %11)
  %cmp5 = icmp ne i64 %call4, 1
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %12 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %13 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 0
  %14 = extractvalue { i8, i8* } %call8, 0
  store i8 %14, i8* %13, align 8
  %15 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 1
  %16 = extractvalue { i8, i8* } %call8, 1
  store i8* %16, i8** %15, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %call10 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %17 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %18 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %17, i32 0, i32 0
  %19 = extractvalue { i8, i8* } %call10, 0
  store i8 %19, i8* %18, align 8
  %20 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %17, i32 0, i32 1
  %21 = extractvalue { i8, i8* } %call10, 1
  store i8* %21, i8** %20, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %22 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %23 = load { i8, i8* }, { i8, i8* }* %22, align 8
  ret { i8, i8* } %23
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_read_index(%struct.mdb_int_t* noundef %db, i32 noundef %idxptr, %struct.mdb_index_t* noundef %index) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %idxptr.addr = alloca i32, align 4
  %index.addr = alloca %struct.mdb_index_t*, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %idxptr, i32* %idxptr.addr, align 4
  store %struct.mdb_index_t* %index, %struct.mdb_index_t** %index.addr, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %2 = load i32, i32* %idxptr.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %conv, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %3 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 0
  %5 = extractvalue { i8, i8* } %call2, 0
  store i8 %5, i8* %4, align 8
  %6 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 1
  %7 = extractvalue { i8, i8* } %call2, 1
  store i8* %7, i8** %6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index.addr, align 8
  %next_ptr = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %8, i32 0, i32 0
  %9 = bitcast i32* %next_ptr to i8*
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index3 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %10, i32 0, i32 2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index3, align 8
  %call4 = call i64 @fread(i8* noundef %9, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %11)
  %cmp5 = icmp ne i64 %call4, 1
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  %12 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %13 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 0
  %14 = extractvalue { i8, i8* } %call8, 0
  store i8 %14, i8* %13, align 8
  %15 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 1
  %16 = extractvalue { i8, i8* } %call8, 1
  store i8* %16, i8** %15, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %17 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index.addr, align 8
  %key = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %17, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %key, i64 0, i64 0
  %18 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %18, i32 0, i32 4
  %key_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 1
  %19 = load i16, i16* %key_size_max, align 8
  %conv10 = zext i16 %19 to i64
  %20 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index11 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %20, i32 0, i32 2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index11, align 8
  %call12 = call i64 @fread(i8* noundef %arraydecay, i64 noundef 1, i64 noundef %conv10, %struct._IO_FILE* noundef %21)
  %22 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %options13 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %22, i32 0, i32 4
  %key_size_max14 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options13, i32 0, i32 1
  %23 = load i16, i16* %key_size_max14, align 8
  %conv15 = zext i16 %23 to i64
  %cmp16 = icmp ne i64 %call12, %conv15
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end9
  %call19 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %24 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %25 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %24, i32 0, i32 0
  %26 = extractvalue { i8, i8* } %call19, 0
  store i8 %26, i8* %25, align 8
  %27 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %24, i32 0, i32 1
  %28 = extractvalue { i8, i8* } %call19, 1
  store i8* %28, i8** %27, align 8
  br label %return

if.end20:                                         ; preds = %if.end9
  %29 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index.addr, align 8
  %key21 = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %29, i32 0, i32 3
  %30 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %options22 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %30, i32 0, i32 4
  %key_size_max23 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options22, i32 0, i32 1
  %31 = load i16, i16* %key_size_max23, align 8
  %idxprom = zext i16 %31 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* %key21, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %32 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index.addr, align 8
  %value_ptr = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %32, i32 0, i32 1
  %33 = bitcast i32* %value_ptr to i8*
  %34 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index24 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %34, i32 0, i32 2
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index24, align 8
  %call25 = call i64 @fread(i8* noundef %33, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %35)
  %cmp26 = icmp ne i64 %call25, 1
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end20
  %call29 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  %36 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %37 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %36, i32 0, i32 0
  %38 = extractvalue { i8, i8* } %call29, 0
  store i8 %38, i8* %37, align 8
  %39 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %36, i32 0, i32 1
  %40 = extractvalue { i8, i8* } %call29, 1
  store i8* %40, i8** %39, align 8
  br label %return

if.end30:                                         ; preds = %if.end20
  %41 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index.addr, align 8
  %value_size = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %41, i32 0, i32 2
  %42 = bitcast i32* %value_size to i8*
  %43 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index31 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %43, i32 0, i32 2
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index31, align 8
  %call32 = call i64 @fread(i8* noundef %42, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %44)
  %cmp33 = icmp ne i64 %call32, 1
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end30
  %call36 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  %45 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %46 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %45, i32 0, i32 0
  %47 = extractvalue { i8, i8* } %call36, 0
  store i8 %47, i8* %46, align 8
  %48 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %45, i32 0, i32 1
  %49 = extractvalue { i8, i8* } %call36, 1
  store i8* %49, i8** %48, align 8
  br label %return

if.end37:                                         ; preds = %if.end30
  %call38 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %50 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %51 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %50, i32 0, i32 0
  %52 = extractvalue { i8, i8* } %call38, 0
  store i8 %52, i8* %51, align 8
  %53 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %50, i32 0, i32 1
  %54 = extractvalue { i8, i8* } %call38, 1
  store i8* %54, i8** %53, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then35, %if.then28, %if.then18, %if.then7, %if.then
  %55 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %56 = load { i8, i8* }, { i8, i8* }* %55, align 8
  ret { i8, i8* } %56
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_read_data(%struct.mdb_int_t* noundef %db, i32 noundef %valptr, i32 noundef %valsize, i8* noundef %valbuf, i32 noundef %bufsiz) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %valptr.addr = alloca i32, align 4
  %valsize.addr = alloca i32, align 4
  %valbuf.addr = alloca i8*, align 8
  %bufsiz.addr = alloca i32, align 4
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %valptr, i32* %valptr.addr, align 4
  store i32 %valsize, i32* %valsize.addr, align 4
  store i8* %valbuf, i8** %valbuf.addr, align 8
  store i32 %bufsiz, i32* %bufsiz.addr, align 4
  %0 = load i32, i32* %bufsiz.addr, align 4
  %1 = load i32, i32* %valsize.addr, align 4
  %add = add i32 %1, 1
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call { i8, i8* } @mdb_status(i8 noundef zeroext 10, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0))
  %2 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %3 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %2, i32 0, i32 0
  %4 = extractvalue { i8, i8* } %call, 0
  store i8 %4, i8* %3, align 8
  %5 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %2, i32 0, i32 1
  %6 = extractvalue { i8, i8* } %call, 1
  store i8* %6, i8** %5, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %7, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data, align 8
  %9 = load i32, i32* %valptr.addr, align 4
  %conv = zext i32 %9 to i64
  %call1 = call i32 @fseek(%struct._IO_FILE* noundef %8, i64 noundef %conv, i32 noundef 0)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0))
  %10 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %11 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %10, i32 0, i32 0
  %12 = extractvalue { i8, i8* } %call5, 0
  store i8 %12, i8* %11, align 8
  %13 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %10, i32 0, i32 1
  %14 = extractvalue { i8, i8* } %call5, 1
  store i8* %14, i8** %13, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %15 = load i8*, i8** %valbuf.addr, align 8
  %16 = load i32, i32* %valsize.addr, align 4
  %conv7 = zext i32 %16 to i64
  %17 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data8 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %17, i32 0, i32 3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data8, align 8
  %call9 = call i64 @fread(i8* noundef %15, i64 noundef 1, i64 noundef %conv7, %struct._IO_FILE* noundef %18)
  %19 = load i32, i32* %valsize.addr, align 4
  %conv10 = zext i32 %19 to i64
  %cmp11 = icmp ne i64 %call9, %conv10
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end6
  %call14 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0))
  %20 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %21 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %20, i32 0, i32 0
  %22 = extractvalue { i8, i8* } %call14, 0
  store i8 %22, i8* %21, align 8
  %23 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %20, i32 0, i32 1
  %24 = extractvalue { i8, i8* } %call14, 1
  store i8* %24, i8** %23, align 8
  br label %return

if.end15:                                         ; preds = %if.end6
  %25 = load i8*, i8** %valbuf.addr, align 8
  %26 = load i32, i32* %valsize.addr, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %call16 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %27 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %28 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %27, i32 0, i32 0
  %29 = extractvalue { i8, i8* } %call16, 0
  store i8 %29, i8* %28, align 8
  %30 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %27, i32 0, i32 1
  %31 = extractvalue { i8, i8* } %call16, 1
  store i8* %31, i8** %30, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then13, %if.then4, %if.then
  %32 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %33 = load { i8, i8* }, { i8, i8* }* %32, align 8
  ret { i8, i8* } %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8, i8* } @mdb_write(i8* noundef %handle, i8* noundef %key, i8* noundef %value) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %handle.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  %bucket = alloca i32, align 4
  %key_size = alloca i32, align 4
  %value_size = alloca i32, align 4
  %save_ptr = alloca i32, align 4
  %ptr = alloca i32, align 4
  %bucket_read_status = alloca %struct.mdb_status_t, align 8
  %index = alloca %struct.mdb_index_t*, align 8
  %index_ptr = alloca i32, align 4
  %index_alloc_status = alloca %struct.mdb_status_t, align 8
  %value_ptr = alloca i32, align 4
  %data_alloc_status = alloca %struct.mdb_status_t, align 8
  %coerce = alloca %struct.mdb_status_t, align 8
  %data_write_status = alloca %struct.mdb_status_t, align 8
  %coerce65 = alloca %struct.mdb_status_t, align 8
  %coerce67 = alloca %struct.mdb_status_t, align 8
  %index_write_status = alloca %struct.mdb_status_t, align 8
  %coerce76 = alloca %struct.mdb_status_t, align 8
  %coerce78 = alloca %struct.mdb_status_t, align 8
  %ptr_update_status = alloca %struct.mdb_status_t, align 8
  %coerce87 = alloca %struct.mdb_status_t, align 8
  %coerce89 = alloca %struct.mdb_status_t, align 8
  %data_free_status = alloca %struct.mdb_status_t, align 8
  %value_ptr101 = alloca i32, align 4
  %data_alloc_status102 = alloca %struct.mdb_status_t, align 8
  %data_write_status110 = alloca %struct.mdb_status_t, align 8
  %index_write_status118 = alloca %struct.mdb_status_t, align 8
  store i8* %handle, i8** %handle.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %handle.addr, align 8
  %1 = bitcast i8* %0 to %struct.mdb_int_t*
  store %struct.mdb_int_t* %1, %struct.mdb_int_t** %db, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mdb_hash(i8* noundef %2)
  %3 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %3, i32 0, i32 4
  %hash_buckets = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 3
  %4 = load i32, i32* %hash_buckets, align 8
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %bucket, align 4
  %5 = load i8*, i8** %key.addr, align 8
  %call1 = call i64 @strlen(i8* noundef %5) #6
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %key_size, align 4
  %6 = load i32, i32* %key_size, align 4
  %7 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options2 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %7, i32 0, i32 4
  %key_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options2, i32 0, i32 1
  %8 = load i16, i16* %key_size_max, align 8
  %conv3 = zext i16 %8 to i32
  %cmp = icmp ugt i32 %6, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call { i8, i8* } @mdb_status(i8 noundef zeroext 11, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %9 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %10 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %9, i32 0, i32 0
  %11 = extractvalue { i8, i8* } %call5, 0
  store i8 %11, i8* %10, align 8
  %12 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %9, i32 0, i32 1
  %13 = extractvalue { i8, i8* } %call5, 1
  store i8* %13, i8** %12, align 8
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i8*, i8** %value.addr, align 8
  %call6 = call i64 @strlen(i8* noundef %14) #6
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %value_size, align 4
  %15 = load i32, i32* %value_size, align 4
  %16 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options8 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %16, i32 0, i32 4
  %data_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options8, i32 0, i32 2
  %17 = load i32, i32* %data_size_max, align 4
  %cmp9 = icmp ugt i32 %15, %17
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %call12 = call { i8, i8* } @mdb_status(i8 noundef zeroext 12, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %18 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %19 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %18, i32 0, i32 0
  %20 = extractvalue { i8, i8* } %call12, 0
  store i8 %20, i8* %19, align 8
  %21 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %18, i32 0, i32 1
  %22 = extractvalue { i8, i8* } %call12, 1
  store i8* %22, i8** %21, align 8
  br label %return

if.end13:                                         ; preds = %if.end
  %23 = load i32, i32* %bucket, align 4
  %add = add i32 %23, 1
  %mul = mul i32 4, %add
  store i32 %mul, i32* %save_ptr, align 4
  %24 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %25 = load i32, i32* %bucket, align 4
  %call14 = call { i8, i8* } @mdb_read_bucket(%struct.mdb_int_t* noundef %24, i32 noundef %25, i32* noundef %ptr)
  %26 = bitcast %struct.mdb_status_t* %bucket_read_status to { i8, i8* }*
  %27 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %26, i32 0, i32 0
  %28 = extractvalue { i8, i8* } %call14, 0
  store i8 %28, i8* %27, align 8
  %29 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %26, i32 0, i32 1
  %30 = extractvalue { i8, i8* } %call14, 1
  store i8* %30, i8** %29, align 8
  %code = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %bucket_read_status, i32 0, i32 0
  %31 = load i8, i8* %code, align 8
  %conv15 = zext i8 %31 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  %32 = bitcast %struct.mdb_status_t* %retval to i8*
  %33 = bitcast %struct.mdb_status_t* %bucket_read_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  br label %return

if.end19:                                         ; preds = %if.end13
  %34 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options20 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %34, i32 0, i32 4
  %key_size_max21 = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options20, i32 0, i32 1
  %35 = load i16, i16* %key_size_max21, align 8
  %conv22 = zext i16 %35 to i64
  %add23 = add i64 12, %conv22
  %add24 = add i64 %add23, 1
  %36 = alloca i8, i64 %add24, align 16
  %37 = bitcast i8* %36 to %struct.mdb_index_t*
  store %struct.mdb_index_t* %37, %struct.mdb_index_t** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end39, %if.end19
  %38 = load i32, i32* %ptr, align 4
  %cmp25 = icmp ne i32 %38, 0
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %40 = load i32, i32* %ptr, align 4
  %41 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %call27 = call { i8, i8* } @mdb_read_index(%struct.mdb_int_t* noundef %39, i32 noundef %40, %struct.mdb_index_t* noundef %41)
  %42 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %43 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %42, i32 0, i32 0
  %44 = extractvalue { i8, i8* } %call27, 0
  store i8 %44, i8* %43, align 8
  %45 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %42, i32 0, i32 1
  %46 = extractvalue { i8, i8* } %call27, 1
  store i8* %46, i8** %45, align 8
  %code28 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %retval, i32 0, i32 0
  %47 = load i8, i8* %code28, align 8
  %conv29 = zext i8 %47 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.body
  br label %return

if.end33:                                         ; preds = %while.body
  %48 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %key34 = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %48, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %key34, i64 0, i64 0
  %49 = load i8*, i8** %key.addr, align 8
  %call35 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %49) #6
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end33
  br label %while.end

if.end39:                                         ; preds = %if.end33
  %50 = load i32, i32* %ptr, align 4
  store i32 %50, i32* %save_ptr, align 4
  %51 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %next_ptr = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %51, i32 0, i32 0
  %52 = load i32, i32* %next_ptr, align 4
  store i32 %52, i32* %ptr, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then38, %while.cond
  %53 = load i32, i32* %ptr, align 4
  %cmp40 = icmp eq i32 %53, 0
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %while.end
  %54 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %call43 = call { i8, i8* } @mdb_index_alloc(%struct.mdb_int_t* noundef %54, i32* noundef %index_ptr)
  %55 = bitcast %struct.mdb_status_t* %index_alloc_status to { i8, i8* }*
  %56 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %55, i32 0, i32 0
  %57 = extractvalue { i8, i8* } %call43, 0
  store i8 %57, i8* %56, align 8
  %58 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %55, i32 0, i32 1
  %59 = extractvalue { i8, i8* } %call43, 1
  store i8* %59, i8** %58, align 8
  %code44 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %index_alloc_status, i32 0, i32 0
  %60 = load i8, i8* %code44, align 8
  %conv45 = zext i8 %60 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then42
  %61 = bitcast %struct.mdb_status_t* %retval to i8*
  %62 = bitcast %struct.mdb_status_t* %index_alloc_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  br label %return

if.end49:                                         ; preds = %if.then42
  %63 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %64 = load i32, i32* %value_size, align 4
  %call50 = call { i8, i8* } @mdb_data_alloc(%struct.mdb_int_t* noundef %63, i32 noundef %64, i32* noundef %value_ptr)
  %65 = bitcast %struct.mdb_status_t* %data_alloc_status to { i8, i8* }*
  %66 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %65, i32 0, i32 0
  %67 = extractvalue { i8, i8* } %call50, 0
  store i8 %67, i8* %66, align 8
  %68 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %65, i32 0, i32 1
  %69 = extractvalue { i8, i8* } %call50, 1
  store i8* %69, i8** %68, align 8
  %code51 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %data_alloc_status, i32 0, i32 0
  %70 = load i8, i8* %code51, align 8
  %conv52 = zext i8 %70 to i32
  %cmp53 = icmp ne i32 %conv52, 0
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end49
  %71 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %72 = load i32, i32* %index_ptr, align 4
  %call56 = call { i8, i8* } @mdb_index_free(%struct.mdb_int_t* noundef %71, i32 noundef %72)
  %73 = bitcast %struct.mdb_status_t* %coerce to { i8, i8* }*
  %74 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %73, i32 0, i32 0
  %75 = extractvalue { i8, i8* } %call56, 0
  store i8 %75, i8* %74, align 8
  %76 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %73, i32 0, i32 1
  %77 = extractvalue { i8, i8* } %call56, 1
  store i8* %77, i8** %76, align 8
  %78 = bitcast %struct.mdb_status_t* %retval to i8*
  %79 = bitcast %struct.mdb_status_t* %data_alloc_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  br label %return

if.end57:                                         ; preds = %if.end49
  %80 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %81 = load i32, i32* %value_ptr, align 4
  %82 = load i8*, i8** %value.addr, align 8
  %83 = load i32, i32* %value_size, align 4
  %call58 = call { i8, i8* } @mdb_write_data(%struct.mdb_int_t* noundef %80, i32 noundef %81, i8* noundef %82, i32 noundef %83)
  %84 = bitcast %struct.mdb_status_t* %data_write_status to { i8, i8* }*
  %85 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %84, i32 0, i32 0
  %86 = extractvalue { i8, i8* } %call58, 0
  store i8 %86, i8* %85, align 8
  %87 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %84, i32 0, i32 1
  %88 = extractvalue { i8, i8* } %call58, 1
  store i8* %88, i8** %87, align 8
  %code59 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %data_write_status, i32 0, i32 0
  %89 = load i8, i8* %code59, align 8
  %conv60 = zext i8 %89 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %if.then63, label %if.end68

if.then63:                                        ; preds = %if.end57
  %90 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %91 = load i32, i32* %value_ptr, align 4
  %92 = load i32, i32* %value_size, align 4
  %call64 = call { i8, i8* } @mdb_data_free(%struct.mdb_int_t* noundef %90, i32 noundef %91, i32 noundef %92)
  %93 = bitcast %struct.mdb_status_t* %coerce65 to { i8, i8* }*
  %94 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %93, i32 0, i32 0
  %95 = extractvalue { i8, i8* } %call64, 0
  store i8 %95, i8* %94, align 8
  %96 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %93, i32 0, i32 1
  %97 = extractvalue { i8, i8* } %call64, 1
  store i8* %97, i8** %96, align 8
  %98 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %99 = load i32, i32* %index_ptr, align 4
  %call66 = call { i8, i8* } @mdb_index_free(%struct.mdb_int_t* noundef %98, i32 noundef %99)
  %100 = bitcast %struct.mdb_status_t* %coerce67 to { i8, i8* }*
  %101 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %100, i32 0, i32 0
  %102 = extractvalue { i8, i8* } %call66, 0
  store i8 %102, i8* %101, align 8
  %103 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %100, i32 0, i32 1
  %104 = extractvalue { i8, i8* } %call66, 1
  store i8* %104, i8** %103, align 8
  %105 = bitcast %struct.mdb_status_t* %retval to i8*
  %106 = bitcast %struct.mdb_status_t* %data_write_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  br label %return

if.end68:                                         ; preds = %if.end57
  %107 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %108 = load i32, i32* %index_ptr, align 4
  %109 = load i8*, i8** %key.addr, align 8
  %110 = load i32, i32* %value_ptr, align 4
  %111 = load i32, i32* %value_size, align 4
  %call69 = call { i8, i8* } @mdb_write_index(%struct.mdb_int_t* noundef %107, i32 noundef %108, i8* noundef %109, i32 noundef %110, i32 noundef %111)
  %112 = bitcast %struct.mdb_status_t* %index_write_status to { i8, i8* }*
  %113 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %112, i32 0, i32 0
  %114 = extractvalue { i8, i8* } %call69, 0
  store i8 %114, i8* %113, align 8
  %115 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %112, i32 0, i32 1
  %116 = extractvalue { i8, i8* } %call69, 1
  store i8* %116, i8** %115, align 8
  %code70 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %index_write_status, i32 0, i32 0
  %117 = load i8, i8* %code70, align 8
  %conv71 = zext i8 %117 to i32
  %cmp72 = icmp ne i32 %conv71, 0
  br i1 %cmp72, label %if.then74, label %if.end79

if.then74:                                        ; preds = %if.end68
  %118 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %119 = load i32, i32* %value_ptr, align 4
  %120 = load i32, i32* %value_size, align 4
  %call75 = call { i8, i8* } @mdb_data_free(%struct.mdb_int_t* noundef %118, i32 noundef %119, i32 noundef %120)
  %121 = bitcast %struct.mdb_status_t* %coerce76 to { i8, i8* }*
  %122 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %121, i32 0, i32 0
  %123 = extractvalue { i8, i8* } %call75, 0
  store i8 %123, i8* %122, align 8
  %124 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %121, i32 0, i32 1
  %125 = extractvalue { i8, i8* } %call75, 1
  store i8* %125, i8** %124, align 8
  %126 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %127 = load i32, i32* %index_ptr, align 4
  %call77 = call { i8, i8* } @mdb_index_free(%struct.mdb_int_t* noundef %126, i32 noundef %127)
  %128 = bitcast %struct.mdb_status_t* %coerce78 to { i8, i8* }*
  %129 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %128, i32 0, i32 0
  %130 = extractvalue { i8, i8* } %call77, 0
  store i8 %130, i8* %129, align 8
  %131 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %128, i32 0, i32 1
  %132 = extractvalue { i8, i8* } %call77, 1
  store i8* %132, i8** %131, align 8
  %133 = bitcast %struct.mdb_status_t* %retval to i8*
  %134 = bitcast %struct.mdb_status_t* %index_write_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 16, i1 false)
  br label %return

if.end79:                                         ; preds = %if.end68
  %135 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %136 = load i32, i32* %save_ptr, align 4
  %137 = load i32, i32* %index_ptr, align 4
  %call80 = call { i8, i8* } @mdb_write_nextptr(%struct.mdb_int_t* noundef %135, i32 noundef %136, i32 noundef %137)
  %138 = bitcast %struct.mdb_status_t* %ptr_update_status to { i8, i8* }*
  %139 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %138, i32 0, i32 0
  %140 = extractvalue { i8, i8* } %call80, 0
  store i8 %140, i8* %139, align 8
  %141 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %138, i32 0, i32 1
  %142 = extractvalue { i8, i8* } %call80, 1
  store i8* %142, i8** %141, align 8
  %code81 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %ptr_update_status, i32 0, i32 0
  %143 = load i8, i8* %code81, align 8
  %conv82 = zext i8 %143 to i32
  %cmp83 = icmp ne i32 %conv82, 0
  br i1 %cmp83, label %if.then85, label %if.end90

if.then85:                                        ; preds = %if.end79
  %144 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %145 = load i32, i32* %value_ptr, align 4
  %146 = load i32, i32* %value_size, align 4
  %call86 = call { i8, i8* } @mdb_data_free(%struct.mdb_int_t* noundef %144, i32 noundef %145, i32 noundef %146)
  %147 = bitcast %struct.mdb_status_t* %coerce87 to { i8, i8* }*
  %148 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %147, i32 0, i32 0
  %149 = extractvalue { i8, i8* } %call86, 0
  store i8 %149, i8* %148, align 8
  %150 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %147, i32 0, i32 1
  %151 = extractvalue { i8, i8* } %call86, 1
  store i8* %151, i8** %150, align 8
  %152 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %153 = load i32, i32* %index_ptr, align 4
  %call88 = call { i8, i8* } @mdb_index_free(%struct.mdb_int_t* noundef %152, i32 noundef %153)
  %154 = bitcast %struct.mdb_status_t* %coerce89 to { i8, i8* }*
  %155 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %154, i32 0, i32 0
  %156 = extractvalue { i8, i8* } %call88, 0
  store i8 %156, i8* %155, align 8
  %157 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %154, i32 0, i32 1
  %158 = extractvalue { i8, i8* } %call88, 1
  store i8* %158, i8** %157, align 8
  %159 = bitcast %struct.mdb_status_t* %retval to i8*
  %160 = bitcast %struct.mdb_status_t* %ptr_update_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 16, i1 false)
  br label %return

if.end90:                                         ; preds = %if.end79
  %call91 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %161 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %162 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %161, i32 0, i32 0
  %163 = extractvalue { i8, i8* } %call91, 0
  store i8 %163, i8* %162, align 8
  %164 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %161, i32 0, i32 1
  %165 = extractvalue { i8, i8* } %call91, 1
  store i8* %165, i8** %164, align 8
  br label %return

if.else:                                          ; preds = %while.end
  %166 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %167 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %value_ptr92 = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %167, i32 0, i32 1
  %168 = load i32, i32* %value_ptr92, align 4
  %169 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %value_size93 = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %169, i32 0, i32 2
  %170 = load i32, i32* %value_size93, align 4
  %call94 = call { i8, i8* } @mdb_data_free(%struct.mdb_int_t* noundef %166, i32 noundef %168, i32 noundef %170)
  %171 = bitcast %struct.mdb_status_t* %data_free_status to { i8, i8* }*
  %172 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %171, i32 0, i32 0
  %173 = extractvalue { i8, i8* } %call94, 0
  store i8 %173, i8* %172, align 8
  %174 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %171, i32 0, i32 1
  %175 = extractvalue { i8, i8* } %call94, 1
  store i8* %175, i8** %174, align 8
  %code95 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %data_free_status, i32 0, i32 0
  %176 = load i8, i8* %code95, align 8
  %conv96 = zext i8 %176 to i32
  %cmp97 = icmp ne i32 %conv96, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.else
  %177 = bitcast %struct.mdb_status_t* %retval to i8*
  %178 = bitcast %struct.mdb_status_t* %data_free_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 16, i1 false)
  br label %return

if.end100:                                        ; preds = %if.else
  %179 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %180 = load i32, i32* %value_size, align 4
  %call103 = call { i8, i8* } @mdb_data_alloc(%struct.mdb_int_t* noundef %179, i32 noundef %180, i32* noundef %value_ptr101)
  %181 = bitcast %struct.mdb_status_t* %data_alloc_status102 to { i8, i8* }*
  %182 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %181, i32 0, i32 0
  %183 = extractvalue { i8, i8* } %call103, 0
  store i8 %183, i8* %182, align 8
  %184 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %181, i32 0, i32 1
  %185 = extractvalue { i8, i8* } %call103, 1
  store i8* %185, i8** %184, align 8
  %code104 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %data_alloc_status102, i32 0, i32 0
  %186 = load i8, i8* %code104, align 8
  %conv105 = zext i8 %186 to i32
  %cmp106 = icmp ne i32 %conv105, 0
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end100
  %187 = bitcast %struct.mdb_status_t* %retval to i8*
  %188 = bitcast %struct.mdb_status_t* %data_alloc_status102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 16, i1 false)
  br label %return

if.end109:                                        ; preds = %if.end100
  %189 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %190 = load i32, i32* %value_ptr101, align 4
  %191 = load i8*, i8** %value.addr, align 8
  %192 = load i32, i32* %value_size, align 4
  %call111 = call { i8, i8* } @mdb_write_data(%struct.mdb_int_t* noundef %189, i32 noundef %190, i8* noundef %191, i32 noundef %192)
  %193 = bitcast %struct.mdb_status_t* %data_write_status110 to { i8, i8* }*
  %194 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %193, i32 0, i32 0
  %195 = extractvalue { i8, i8* } %call111, 0
  store i8 %195, i8* %194, align 8
  %196 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %193, i32 0, i32 1
  %197 = extractvalue { i8, i8* } %call111, 1
  store i8* %197, i8** %196, align 8
  %code112 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %data_write_status110, i32 0, i32 0
  %198 = load i8, i8* %code112, align 8
  %conv113 = zext i8 %198 to i32
  %cmp114 = icmp ne i32 %conv113, 0
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end109
  %199 = bitcast %struct.mdb_status_t* %retval to i8*
  %200 = bitcast %struct.mdb_status_t* %data_write_status110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 16, i1 false)
  br label %return

if.end117:                                        ; preds = %if.end109
  %201 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %202 = load i32, i32* %ptr, align 4
  %203 = load i8*, i8** %key.addr, align 8
  %204 = load i32, i32* %value_ptr101, align 4
  %205 = load i32, i32* %value_size, align 4
  %call119 = call { i8, i8* } @mdb_write_index(%struct.mdb_int_t* noundef %201, i32 noundef %202, i8* noundef %203, i32 noundef %204, i32 noundef %205)
  %206 = bitcast %struct.mdb_status_t* %index_write_status118 to { i8, i8* }*
  %207 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %206, i32 0, i32 0
  %208 = extractvalue { i8, i8* } %call119, 0
  store i8 %208, i8* %207, align 8
  %209 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %206, i32 0, i32 1
  %210 = extractvalue { i8, i8* } %call119, 1
  store i8* %210, i8** %209, align 8
  %code120 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %index_write_status118, i32 0, i32 0
  %211 = load i8, i8* %code120, align 8
  %conv121 = zext i8 %211 to i32
  %cmp122 = icmp ne i32 %conv121, 0
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end117
  %212 = bitcast %struct.mdb_status_t* %retval to i8*
  %213 = bitcast %struct.mdb_status_t* %index_write_status118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %212, i8* align 8 %213, i64 16, i1 false)
  br label %return

if.end125:                                        ; preds = %if.end117
  %call126 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %214 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %215 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %214, i32 0, i32 0
  %216 = extractvalue { i8, i8* } %call126, 0
  store i8 %216, i8* %215, align 8
  %217 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %214, i32 0, i32 1
  %218 = extractvalue { i8, i8* } %call126, 1
  store i8* %218, i8** %217, align 8
  br label %return

return:                                           ; preds = %if.end125, %if.then124, %if.then116, %if.then108, %if.then99, %if.end90, %if.then85, %if.then74, %if.then63, %if.then55, %if.then48, %if.then32, %if.then18, %if.then11, %if.then
  %219 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %220 = load { i8, i8* }, { i8, i8* }* %219, align 8
  ret { i8, i8* } %220
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_index_alloc(%struct.mdb_int_t* noundef %db, i32* noundef %ptr) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %ptr.addr = alloca i32*, align 8
  %freeptr = alloca i32, align 4
  %freeptr_read_status = alloca %struct.mdb_status_t, align 8
  %new_freeptr = alloca i32, align 4
  %nextptr_read_stat = alloca %struct.mdb_status_t, align 8
  %freeptr_update_stat = alloca %struct.mdb_status_t, align 8
  %freeptr_cleanup_stat = alloca %struct.mdb_status_t, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32* %ptr, i32** %ptr.addr, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %call = call { i8, i8* } @mdb_read_nextptr(%struct.mdb_int_t* noundef %0, i32 noundef 0, i32* noundef %freeptr)
  %1 = bitcast %struct.mdb_status_t* %freeptr_read_status to { i8, i8* }*
  %2 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %1, i32 0, i32 0
  %3 = extractvalue { i8, i8* } %call, 0
  store i8 %3, i8* %2, align 8
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %1, i32 0, i32 1
  %5 = extractvalue { i8, i8* } %call, 1
  store i8* %5, i8** %4, align 8
  %code = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %freeptr_read_status, i32 0, i32 0
  %6 = load i8, i8* %code, align 8
  %conv = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.mdb_status_t* %retval to i8*
  %8 = bitcast %struct.mdb_status_t* %freeptr_read_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %freeptr, align 4
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %11 = load i32, i32* %freeptr, align 4
  %call5 = call { i8, i8* } @mdb_read_nextptr(%struct.mdb_int_t* noundef %10, i32 noundef %11, i32* noundef %new_freeptr)
  %12 = bitcast %struct.mdb_status_t* %nextptr_read_stat to { i8, i8* }*
  %13 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 0
  %14 = extractvalue { i8, i8* } %call5, 0
  store i8 %14, i8* %13, align 8
  %15 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 1
  %16 = extractvalue { i8, i8* } %call5, 1
  store i8* %16, i8** %15, align 8
  %code6 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %nextptr_read_stat, i32 0, i32 0
  %17 = load i8, i8* %code6, align 8
  %conv7 = zext i8 %17 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then4
  %18 = bitcast %struct.mdb_status_t* %retval to i8*
  %19 = bitcast %struct.mdb_status_t* %nextptr_read_stat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  br label %return

if.end11:                                         ; preds = %if.then4
  %20 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %21 = load i32, i32* %new_freeptr, align 4
  %call12 = call { i8, i8* } @mdb_write_nextptr(%struct.mdb_int_t* noundef %20, i32 noundef 0, i32 noundef %21)
  %22 = bitcast %struct.mdb_status_t* %freeptr_update_stat to { i8, i8* }*
  %23 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %22, i32 0, i32 0
  %24 = extractvalue { i8, i8* } %call12, 0
  store i8 %24, i8* %23, align 8
  %25 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %22, i32 0, i32 1
  %26 = extractvalue { i8, i8* } %call12, 1
  store i8* %26, i8** %25, align 8
  %code13 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %freeptr_update_stat, i32 0, i32 0
  %27 = load i8, i8* %code13, align 8
  %conv14 = zext i8 %27 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  %28 = bitcast %struct.mdb_status_t* %retval to i8*
  %29 = bitcast %struct.mdb_status_t* %freeptr_update_stat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  br label %return

if.end18:                                         ; preds = %if.end11
  %30 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %31 = load i32, i32* %freeptr, align 4
  %call19 = call { i8, i8* } @mdb_write_nextptr(%struct.mdb_int_t* noundef %30, i32 noundef %31, i32 noundef 0)
  %32 = bitcast %struct.mdb_status_t* %freeptr_cleanup_stat to { i8, i8* }*
  %33 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %32, i32 0, i32 0
  %34 = extractvalue { i8, i8* } %call19, 0
  store i8 %34, i8* %33, align 8
  %35 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %32, i32 0, i32 1
  %36 = extractvalue { i8, i8* } %call19, 1
  store i8* %36, i8** %35, align 8
  %code20 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %freeptr_cleanup_stat, i32 0, i32 0
  %37 = load i8, i8* %code20, align 8
  %conv21 = zext i8 %37 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  %38 = bitcast %struct.mdb_status_t* %retval to i8*
  %39 = bitcast %struct.mdb_status_t* %freeptr_cleanup_stat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  br label %return

if.end25:                                         ; preds = %if.end18
  %40 = load i32, i32* %freeptr, align 4
  %41 = load i32*, i32** %ptr.addr, align 8
  store i32 %40, i32* %41, align 4
  %call26 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %42 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %43 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %42, i32 0, i32 0
  %44 = extractvalue { i8, i8* } %call26, 0
  store i8 %44, i8* %43, align 8
  %45 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %42, i32 0, i32 1
  %46 = extractvalue { i8, i8* } %call26, 1
  store i8* %46, i8** %45, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %47 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %48 = load i32*, i32** %ptr.addr, align 8
  %call27 = call { i8, i8* } @mdb_stretch_index_file(%struct.mdb_int_t* noundef %47, i32* noundef %48)
  %49 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %50 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %49, i32 0, i32 0
  %51 = extractvalue { i8, i8* } %call27, 0
  store i8 %51, i8* %50, align 8
  %52 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %49, i32 0, i32 1
  %53 = extractvalue { i8, i8* } %call27, 1
  store i8* %53, i8** %52, align 8
  br label %return

return:                                           ; preds = %if.else, %if.end25, %if.then24, %if.then17, %if.then10, %if.then
  %54 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %55 = load { i8, i8* }, { i8, i8* }* %54, align 8
  ret { i8, i8* } %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_data_alloc(%struct.mdb_int_t* noundef %db, i32 noundef %valsize, i32* noundef %ptr) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %valsize.addr = alloca i32, align 4
  %ptr.addr = alloca i32*, align 8
  %byte = alloca i8, align 1
  %start_ptr = alloca i32, align 4
  %end_ptr = alloca i32, align 4
  %end_ptr66 = alloca i32, align 4
  %zero = alloca i8, align 1
  %i = alloca i64, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %valsize, i32* %valsize.addr, align 4
  store i32* %ptr, i32** %ptr.addr, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data, align 8
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef 0, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i64 0, i64 0))
  %2 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %3 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %2, i32 0, i32 0
  %4 = extractvalue { i8, i8* } %call1, 0
  store i8 %4, i8* %3, align 8
  %5 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %2, i32 0, i32 1
  %6 = extractvalue { i8, i8* } %call1, 1
  store i8* %6, i8** %5, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end64, %if.end
  %7 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data2 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %7, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data2, align 8
  %call3 = call i32 @feof(%struct._IO_FILE* noundef %8) #5
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end65

while.body:                                       ; preds = %while.cond
  %9 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data4 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %9, i32 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data4, align 8
  %call5 = call i64 @fread(i8* noundef %byte, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %10)
  %cmp6 = icmp ne i64 %call5, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %while.body
  %11 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data7 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %11, i32 0, i32 3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data7, align 8
  %call8 = call i32 @feof(%struct._IO_FILE* noundef %12) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %call11 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0))
  %13 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %14 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %13, i32 0, i32 0
  %15 = extractvalue { i8, i8* } %call11, 0
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %13, i32 0, i32 1
  %17 = extractvalue { i8, i8* } %call11, 1
  store i8* %17, i8** %16, align 8
  br label %return

if.end12:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond13

while.cond13:                                     ; preds = %if.end30, %if.end12
  %18 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data14 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %18, i32 0, i32 3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data14, align 8
  %call15 = call i32 @feof(%struct._IO_FILE* noundef %19) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond13
  %20 = load i8, i8* %byte, align 1
  %conv = zext i8 %20 to i32
  %cmp17 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond13
  %21 = phi i1 [ false, %while.cond13 ], [ %cmp17, %land.rhs ]
  br i1 %21, label %while.body19, label %while.end

while.body19:                                     ; preds = %land.end
  %22 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data20 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %22, i32 0, i32 3
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data20, align 8
  %call21 = call i64 @fread(i8* noundef %byte, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %23)
  %cmp22 = icmp ne i64 %call21, 1
  br i1 %cmp22, label %land.lhs.true24, label %if.end30

land.lhs.true24:                                  ; preds = %while.body19
  %24 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data25 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %24, i32 0, i32 3
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data25, align 8
  %call26 = call i32 @feof(%struct._IO_FILE* noundef %25) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %land.lhs.true24
  %call29 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0))
  %26 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %27 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %26, i32 0, i32 0
  %28 = extractvalue { i8, i8* } %call29, 0
  store i8 %28, i8* %27, align 8
  %29 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %26, i32 0, i32 1
  %30 = extractvalue { i8, i8* } %call29, 1
  store i8* %30, i8** %29, align 8
  br label %return

if.end30:                                         ; preds = %land.lhs.true24, %while.body19
  br label %while.cond13, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %31 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data31 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %31, i32 0, i32 3
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data31, align 8
  %call32 = call i64 @ftell(%struct._IO_FILE* noundef %32)
  %conv33 = trunc i64 %call32 to i32
  store i32 %conv33, i32* %start_ptr, align 4
  br label %while.cond34

while.cond34:                                     ; preds = %if.end54, %while.end
  %33 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data35 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %33, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data35, align 8
  %call36 = call i32 @feof(%struct._IO_FILE* noundef %34) #5
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.end42, label %land.rhs38

land.rhs38:                                       ; preds = %while.cond34
  %35 = load i8, i8* %byte, align 1
  %conv39 = zext i8 %35 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br label %land.end42

land.end42:                                       ; preds = %land.rhs38, %while.cond34
  %36 = phi i1 [ false, %while.cond34 ], [ %cmp40, %land.rhs38 ]
  br i1 %36, label %while.body43, label %while.end55

while.body43:                                     ; preds = %land.end42
  %37 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data44 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %37, i32 0, i32 3
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data44, align 8
  %call45 = call i64 @fread(i8* noundef %byte, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %38)
  %cmp46 = icmp ne i64 %call45, 1
  br i1 %cmp46, label %land.lhs.true48, label %if.end54

land.lhs.true48:                                  ; preds = %while.body43
  %39 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data49 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %39, i32 0, i32 3
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data49, align 8
  %call50 = call i32 @feof(%struct._IO_FILE* noundef %40) #5
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %land.lhs.true48
  %call53 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0))
  %41 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %42 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %41, i32 0, i32 0
  %43 = extractvalue { i8, i8* } %call53, 0
  store i8 %43, i8* %42, align 8
  %44 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %41, i32 0, i32 1
  %45 = extractvalue { i8, i8* } %call53, 1
  store i8* %45, i8** %44, align 8
  br label %return

if.end54:                                         ; preds = %land.lhs.true48, %while.body43
  br label %while.cond34, !llvm.loop !10

while.end55:                                      ; preds = %land.end42
  %46 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data56 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %46, i32 0, i32 3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data56, align 8
  %call57 = call i64 @ftell(%struct._IO_FILE* noundef %47)
  %conv58 = trunc i64 %call57 to i32
  store i32 %conv58, i32* %end_ptr, align 4
  %48 = load i32, i32* %end_ptr, align 4
  %49 = load i32, i32* %start_ptr, align 4
  %sub = sub i32 %48, %49
  %50 = load i32, i32* %valsize.addr, align 4
  %add = add i32 %50, 2
  %cmp59 = icmp uge i32 %sub, %add
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %while.end55
  %51 = load i32, i32* %start_ptr, align 4
  %add62 = add i32 %51, 1
  %52 = load i32*, i32** %ptr.addr, align 8
  store i32 %add62, i32* %52, align 4
  %call63 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %53 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %54 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %53, i32 0, i32 0
  %55 = extractvalue { i8, i8* } %call63, 0
  store i8 %55, i8* %54, align 8
  %56 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %53, i32 0, i32 1
  %57 = extractvalue { i8, i8* } %call63, 1
  store i8* %57, i8** %56, align 8
  br label %return

if.end64:                                         ; preds = %while.end55
  br label %while.cond, !llvm.loop !11

while.end65:                                      ; preds = %while.cond
  %58 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data67 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %58, i32 0, i32 3
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data67, align 8
  %call68 = call i64 @ftell(%struct._IO_FILE* noundef %59)
  %conv69 = trunc i64 %call68 to i32
  store i32 %conv69, i32* %end_ptr66, align 4
  store i8 0, i8* %zero, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end65
  %60 = load i64, i64* %i, align 8
  %61 = load i32, i32* %valsize.addr, align 4
  %conv70 = zext i32 %61 to i64
  %cmp71 = icmp ult i64 %60, %conv70
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data73 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %62, i32 0, i32 3
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data73, align 8
  %call74 = call i64 @fwrite(i8* noundef %zero, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %63)
  %cmp75 = icmp ult i64 %call74, 1
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %for.body
  %call78 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0))
  %64 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %65 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %64, i32 0, i32 0
  %66 = extractvalue { i8, i8* } %call78, 0
  store i8 %66, i8* %65, align 8
  %67 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %64, i32 0, i32 1
  %68 = extractvalue { i8, i8* } %call78, 1
  store i8* %68, i8** %67, align 8
  br label %return

if.end79:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end79
  %69 = load i64, i64* %i, align 8
  %inc = add i64 %69, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %70 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data80 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %70, i32 0, i32 3
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data80, align 8
  %call81 = call i32 @fflush(%struct._IO_FILE* noundef %71)
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %for.end
  %call85 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %72 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %73 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %72, i32 0, i32 0
  %74 = extractvalue { i8, i8* } %call85, 0
  store i8 %74, i8* %73, align 8
  %75 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %72, i32 0, i32 1
  %76 = extractvalue { i8, i8* } %call85, 1
  store i8* %76, i8** %75, align 8
  br label %return

if.end86:                                         ; preds = %for.end
  %77 = load i32, i32* %end_ptr66, align 4
  %78 = load i32*, i32** %ptr.addr, align 8
  store i32 %77, i32* %78, align 4
  %call87 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %79 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %80 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %79, i32 0, i32 0
  %81 = extractvalue { i8, i8* } %call87, 0
  store i8 %81, i8* %80, align 8
  %82 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %79, i32 0, i32 1
  %83 = extractvalue { i8, i8* } %call87, 1
  store i8* %83, i8** %82, align 8
  br label %return

return:                                           ; preds = %if.end86, %if.then84, %if.then77, %if.then61, %if.then52, %if.then28, %if.then10, %if.then
  %84 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %85 = load { i8, i8* }, { i8, i8* }* %84, align 8
  ret { i8, i8* } %85
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_index_free(%struct.mdb_int_t* noundef %db, i32 noundef %ptr) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %ptr.addr = alloca i32, align 4
  %freeptr = alloca i8*, align 8
  %i = alloca i64, align 8
  %zero = alloca i8, align 1
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %ptr, i32* %ptr.addr, align 4
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef 0, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0))
  %2 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %3 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %2, i32 0, i32 0
  %4 = extractvalue { i8, i8* } %call1, 0
  store i8 %4, i8* %3, align 8
  %5 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %2, i32 0, i32 1
  %6 = extractvalue { i8, i8* } %call1, 1
  store i8* %6, i8** %5, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = bitcast i8** %freeptr to i8*
  %8 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index2 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index2, align 8
  %call3 = call i64 @fread(i8* noundef %7, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %9)
  %cmp4 = icmp ne i64 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0))
  %10 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %11 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %10, i32 0, i32 0
  %12 = extractvalue { i8, i8* } %call6, 0
  store i8 %12, i8* %11, align 8
  %13 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %10, i32 0, i32 1
  %14 = extractvalue { i8, i8* } %call6, 1
  store i8* %14, i8** %13, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %15 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index8 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %15, i32 0, i32 2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index8, align 8
  %call9 = call i32 @fseek(%struct._IO_FILE* noundef %16, i64 noundef 0, i32 noundef 0)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %call12 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0))
  %17 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %18 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %17, i32 0, i32 0
  %19 = extractvalue { i8, i8* } %call12, 0
  store i8 %19, i8* %18, align 8
  %20 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %17, i32 0, i32 1
  %21 = extractvalue { i8, i8* } %call12, 1
  store i8* %21, i8** %20, align 8
  br label %return

if.end13:                                         ; preds = %if.end7
  %22 = bitcast i32* %ptr.addr to i8*
  %23 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index14 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %23, i32 0, i32 2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index14, align 8
  %call15 = call i64 @fwrite(i8* noundef %22, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %24)
  %cmp16 = icmp ult i64 %call15, 1
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %call18 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0))
  %25 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 0
  %27 = extractvalue { i8, i8* } %call18, 0
  store i8 %27, i8* %26, align 8
  %28 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 1
  %29 = extractvalue { i8, i8* } %call18, 1
  store i8* %29, i8** %28, align 8
  br label %return

if.end19:                                         ; preds = %if.end13
  %30 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index20 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %30, i32 0, i32 2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index20, align 8
  %32 = load i32, i32* %ptr.addr, align 4
  %conv = zext i32 %32 to i64
  %call21 = call i32 @fseek(%struct._IO_FILE* noundef %31, i64 noundef %conv, i32 noundef 0)
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end19
  %call25 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %33 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %34 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %33, i32 0, i32 0
  %35 = extractvalue { i8, i8* } %call25, 0
  store i8 %35, i8* %34, align 8
  %36 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %33, i32 0, i32 1
  %37 = extractvalue { i8, i8* } %call25, 1
  store i8* %37, i8** %36, align 8
  br label %return

if.end26:                                         ; preds = %if.end19
  %38 = bitcast i8** %freeptr to i8*
  %39 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index27 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %39, i32 0, i32 2
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index27, align 8
  %call28 = call i64 @fwrite(i8* noundef %38, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %40)
  %cmp29 = icmp ult i64 %call28, 1
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end26
  %call32 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i64 0, i64 0))
  %41 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %42 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %41, i32 0, i32 0
  %43 = extractvalue { i8, i8* } %call32, 0
  store i8 %43, i8* %42, align 8
  %44 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %41, i32 0, i32 1
  %45 = extractvalue { i8, i8* } %call32, 1
  store i8* %45, i8** %44, align 8
  br label %return

if.end33:                                         ; preds = %if.end26
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %46 = load i64, i64* %i, align 8
  %47 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %47, i32 0, i32 4
  %key_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 1
  %48 = load i16, i16* %key_size_max, align 8
  %conv34 = zext i16 %48 to i64
  %cmp35 = icmp ult i64 %46, %conv34
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %zero, align 1
  %49 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index37 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %49, i32 0, i32 2
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index37, align 8
  %call38 = call i64 @fwrite(i8* noundef %zero, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %50)
  %cmp39 = icmp ult i64 %call38, 1
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.body
  %call42 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.50, i64 0, i64 0))
  %51 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %52 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %51, i32 0, i32 0
  %53 = extractvalue { i8, i8* } %call42, 0
  store i8 %53, i8* %52, align 8
  %54 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %51, i32 0, i32 1
  %55 = extractvalue { i8, i8* } %call42, 1
  store i8* %55, i8** %54, align 8
  br label %return

if.end43:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %56 = load i64, i64* %i, align 8
  %inc = add i64 %56, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %57 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index44 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %57, i32 0, i32 2
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index44, align 8
  %call45 = call i32 @fflush(%struct._IO_FILE* noundef %58)
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.end
  %call49 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %59 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %60 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %59, i32 0, i32 0
  %61 = extractvalue { i8, i8* } %call49, 0
  store i8 %61, i8* %60, align 8
  %62 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %59, i32 0, i32 1
  %63 = extractvalue { i8, i8* } %call49, 1
  store i8* %63, i8** %62, align 8
  br label %return

if.end50:                                         ; preds = %for.end
  %call51 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %64 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %65 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %64, i32 0, i32 0
  %66 = extractvalue { i8, i8* } %call51, 0
  store i8 %66, i8* %65, align 8
  %67 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %64, i32 0, i32 1
  %68 = extractvalue { i8, i8* } %call51, 1
  store i8* %68, i8** %67, align 8
  br label %return

return:                                           ; preds = %if.end50, %if.then48, %if.then41, %if.then31, %if.then24, %if.then17, %if.then11, %if.then5, %if.then
  %69 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %70 = load { i8, i8* }, { i8, i8* }* %69, align 8
  ret { i8, i8* } %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_write_data(%struct.mdb_int_t* noundef %db, i32 noundef %valptr, i8* noundef %valbuf, i32 noundef %valsize) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %valptr.addr = alloca i32, align 4
  %valbuf.addr = alloca i8*, align 8
  %valsize.addr = alloca i32, align 4
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %valptr, i32* %valptr.addr, align 4
  store i8* %valbuf, i8** %valbuf.addr, align 8
  store i32 %valsize, i32* %valsize.addr, align 4
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data, align 8
  %2 = load i32, i32* %valptr.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %conv, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0))
  %3 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 0
  %5 = extractvalue { i8, i8* } %call2, 0
  store i8 %5, i8* %4, align 8
  %6 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 1
  %7 = extractvalue { i8, i8* } %call2, 1
  store i8* %7, i8** %6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %valbuf.addr, align 8
  %9 = load i32, i32* %valsize.addr, align 4
  %conv3 = zext i32 %9 to i64
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data4 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %10, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data4, align 8
  %call5 = call i64 @fwrite(i8* noundef %8, i64 noundef 1, i64 noundef %conv3, %struct._IO_FILE* noundef %11)
  %12 = load i32, i32* %valsize.addr, align 4
  %conv6 = zext i32 %12 to i64
  %cmp7 = icmp ult i64 %call5, %conv6
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0))
  %13 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %14 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %13, i32 0, i32 0
  %15 = extractvalue { i8, i8* } %call10, 0
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %13, i32 0, i32 1
  %17 = extractvalue { i8, i8* } %call10, 1
  store i8* %17, i8** %16, align 8
  br label %return

if.end11:                                         ; preds = %if.end
  %18 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data12 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %18, i32 0, i32 3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data12, align 8
  %call13 = call i32 @fflush(%struct._IO_FILE* noundef %19)
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  %call17 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %20 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %21 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %20, i32 0, i32 0
  %22 = extractvalue { i8, i8* } %call17, 0
  store i8 %22, i8* %21, align 8
  %23 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %20, i32 0, i32 1
  %24 = extractvalue { i8, i8* } %call17, 1
  store i8* %24, i8** %23, align 8
  br label %return

if.end18:                                         ; preds = %if.end11
  %call19 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %25 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 0
  %27 = extractvalue { i8, i8* } %call19, 0
  store i8 %27, i8* %26, align 8
  %28 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 1
  %29 = extractvalue { i8, i8* } %call19, 1
  store i8* %29, i8** %28, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then16, %if.then9, %if.then
  %30 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %31 = load { i8, i8* }, { i8, i8* }* %30, align 8
  ret { i8, i8* } %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_data_free(%struct.mdb_int_t* noundef %db, i32 noundef %valptr, i32 noundef %valsize) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %valptr.addr = alloca i32, align 4
  %valsize.addr = alloca i32, align 4
  %zero = alloca i8, align 1
  %i = alloca i64, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %valptr, i32* %valptr.addr, align 4
  store i32 %valsize, i32* %valsize.addr, align 4
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data, align 8
  %2 = load i32, i32* %valptr.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %conv, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0))
  %3 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 0
  %5 = extractvalue { i8, i8* } %call1, 0
  store i8 %5, i8* %4, align 8
  %6 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 1
  %7 = extractvalue { i8, i8* } %call1, 1
  store i8* %7, i8** %6, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i8 0, i8* %zero, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %9 = load i32, i32* %valsize.addr, align 4
  %conv2 = zext i32 %9 to i64
  %cmp = icmp ult i64 %8, %conv2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data4 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %10, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data4, align 8
  %call5 = call i64 @fwrite(i8* noundef %zero, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %11)
  %cmp6 = icmp ne i64 %call5, 1
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.body
  %call9 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0))
  %12 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %13 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 0
  %14 = extractvalue { i8, i8* } %call9, 0
  store i8 %14, i8* %13, align 8
  %15 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 1
  %16 = extractvalue { i8, i8* } %call9, 1
  store i8* %16, i8** %15, align 8
  br label %return

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %18 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_data11 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %18, i32 0, i32 3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data11, align 8
  %call12 = call i32 @fflush(%struct._IO_FILE* noundef %19)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.end
  %call16 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %20 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %21 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %20, i32 0, i32 0
  %22 = extractvalue { i8, i8* } %call16, 0
  store i8 %22, i8* %21, align 8
  %23 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %20, i32 0, i32 1
  %24 = extractvalue { i8, i8* } %call16, 1
  store i8* %24, i8** %23, align 8
  br label %return

if.end17:                                         ; preds = %for.end
  %call18 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %25 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 0
  %27 = extractvalue { i8, i8* } %call18, 0
  store i8 %27, i8* %26, align 8
  %28 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 1
  %29 = extractvalue { i8, i8* } %call18, 1
  store i8* %29, i8** %28, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then8, %if.then
  %30 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %31 = load { i8, i8* }, { i8, i8* }* %30, align 8
  ret { i8, i8* } %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_write_index(%struct.mdb_int_t* noundef %db, i32 noundef %idxptr, i8* noundef %keybuf, i32 noundef %valptr, i32 noundef %valsize) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %idxptr.addr = alloca i32, align 4
  %keybuf.addr = alloca i8*, align 8
  %valptr.addr = alloca i32, align 4
  %valsize.addr = alloca i32, align 4
  %key_len = alloca i64, align 8
  %value_ptr_pos = alloca i64, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %idxptr, i32* %idxptr.addr, align 4
  store i8* %keybuf, i8** %keybuf.addr, align 8
  store i32 %valptr, i32* %valptr.addr, align 4
  store i32 %valsize, i32* %valsize.addr, align 4
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %2 = load i32, i32* %idxptr.addr, align 4
  %add = add i32 %2, 4
  %conv = zext i32 %add to i64
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %conv, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %3 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 0
  %5 = extractvalue { i8, i8* } %call2, 0
  store i8 %5, i8* %4, align 8
  %6 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 1
  %7 = extractvalue { i8, i8* } %call2, 1
  store i8* %7, i8** %6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %keybuf.addr, align 8
  %call3 = call i64 @strlen(i8* noundef %8) #6
  store i64 %call3, i64* %key_len, align 8
  %9 = load i8*, i8** %keybuf.addr, align 8
  %10 = load i64, i64* %key_len, align 8
  %11 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index4 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %11, i32 0, i32 2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index4, align 8
  %call5 = call i64 @fwrite(i8* noundef %9, i64 noundef 1, i64 noundef %10, %struct._IO_FILE* noundef %12)
  %13 = load i64, i64* %key_len, align 8
  %cmp6 = icmp ult i64 %call5, %13
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0))
  %14 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %15 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %14, i32 0, i32 0
  %16 = extractvalue { i8, i8* } %call9, 0
  store i8 %16, i8* %15, align 8
  %17 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %14, i32 0, i32 1
  %18 = extractvalue { i8, i8* } %call9, 1
  store i8* %18, i8** %17, align 8
  br label %return

if.end10:                                         ; preds = %if.end
  %19 = load i32, i32* %idxptr.addr, align 4
  %add11 = add i32 %19, 4
  %20 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %20, i32 0, i32 4
  %key_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 1
  %21 = load i16, i16* %key_size_max, align 8
  %conv12 = zext i16 %21 to i32
  %add13 = add i32 %add11, %conv12
  %conv14 = zext i32 %add13 to i64
  store i64 %conv14, i64* %value_ptr_pos, align 8
  %22 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index15 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %22, i32 0, i32 2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index15, align 8
  %24 = load i64, i64* %value_ptr_pos, align 8
  %call16 = call i32 @fseek(%struct._IO_FILE* noundef %23, i64 noundef %24, i32 noundef 0)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end10
  %call20 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0))
  %25 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 0
  %27 = extractvalue { i8, i8* } %call20, 0
  store i8 %27, i8* %26, align 8
  %28 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %25, i32 0, i32 1
  %29 = extractvalue { i8, i8* } %call20, 1
  store i8* %29, i8** %28, align 8
  br label %return

if.end21:                                         ; preds = %if.end10
  %30 = bitcast i32* %valptr.addr to i8*
  %31 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index22 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %31, i32 0, i32 2
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index22, align 8
  %call23 = call i64 @fwrite(i8* noundef %30, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %32)
  %cmp24 = icmp ult i64 %call23, 1
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %call27 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0))
  %33 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %34 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %33, i32 0, i32 0
  %35 = extractvalue { i8, i8* } %call27, 0
  store i8 %35, i8* %34, align 8
  %36 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %33, i32 0, i32 1
  %37 = extractvalue { i8, i8* } %call27, 1
  store i8* %37, i8** %36, align 8
  br label %return

if.end28:                                         ; preds = %if.end21
  %38 = bitcast i32* %valsize.addr to i8*
  %39 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index29 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %39, i32 0, i32 2
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index29, align 8
  %call30 = call i64 @fwrite(i8* noundef %38, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %40)
  %cmp31 = icmp ult i64 %call30, 1
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end28
  %call34 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0))
  %41 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %42 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %41, i32 0, i32 0
  %43 = extractvalue { i8, i8* } %call34, 0
  store i8 %43, i8* %42, align 8
  %44 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %41, i32 0, i32 1
  %45 = extractvalue { i8, i8* } %call34, 1
  store i8* %45, i8** %44, align 8
  br label %return

if.end35:                                         ; preds = %if.end28
  %46 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index36 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %46, i32 0, i32 2
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index36, align 8
  %call37 = call i32 @fflush(%struct._IO_FILE* noundef %47)
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end35
  %call41 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %48 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %49 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %48, i32 0, i32 0
  %50 = extractvalue { i8, i8* } %call41, 0
  store i8 %50, i8* %49, align 8
  %51 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %48, i32 0, i32 1
  %52 = extractvalue { i8, i8* } %call41, 1
  store i8* %52, i8** %51, align 8
  br label %return

if.end42:                                         ; preds = %if.end35
  %call43 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %53 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %54 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %53, i32 0, i32 0
  %55 = extractvalue { i8, i8* } %call43, 0
  store i8 %55, i8* %54, align 8
  %56 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %53, i32 0, i32 1
  %57 = extractvalue { i8, i8* } %call43, 1
  store i8* %57, i8** %56, align 8
  br label %return

return:                                           ; preds = %if.end42, %if.then40, %if.then33, %if.then26, %if.then19, %if.then8, %if.then
  %58 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %59 = load { i8, i8* }, { i8, i8* }* %58, align 8
  ret { i8, i8* } %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_write_nextptr(%struct.mdb_int_t* noundef %db, i32 noundef %ptr, i32 noundef %nextptr) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %ptr.addr = alloca i32, align 4
  %nextptr.addr = alloca i32, align 4
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %ptr, i32* %ptr.addr, align 4
  store i32 %nextptr, i32* %nextptr.addr, align 4
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %2 = load i32, i32* %ptr.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %conv, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0))
  %3 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 0
  %5 = extractvalue { i8, i8* } %call2, 0
  store i8 %5, i8* %4, align 8
  %6 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 1
  %7 = extractvalue { i8, i8* } %call2, 1
  store i8* %7, i8** %6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = bitcast i32* %nextptr.addr to i8*
  %9 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index3 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %9, i32 0, i32 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index3, align 8
  %call4 = call i64 @fwrite(i8* noundef %8, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %10)
  %cmp5 = icmp ult i64 %call4, 1
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0))
  %11 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %12 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %11, i32 0, i32 0
  %13 = extractvalue { i8, i8* } %call8, 0
  store i8 %13, i8* %12, align 8
  %14 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %11, i32 0, i32 1
  %15 = extractvalue { i8, i8* } %call8, 1
  store i8* %15, i8** %14, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %16 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index10 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %16, i32 0, i32 2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index10, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* noundef %17)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  %call15 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %18 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %19 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %18, i32 0, i32 0
  %20 = extractvalue { i8, i8* } %call15, 0
  store i8 %20, i8* %19, align 8
  %21 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %18, i32 0, i32 1
  %22 = extractvalue { i8, i8* } %call15, 1
  store i8* %22, i8** %21, align 8
  br label %return

if.end16:                                         ; preds = %if.end9
  %call17 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %23 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %24 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %23, i32 0, i32 0
  %25 = extractvalue { i8, i8* } %call17, 0
  store i8 %25, i8* %24, align 8
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %23, i32 0, i32 1
  %27 = extractvalue { i8, i8* } %call17, 1
  store i8* %27, i8** %26, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then7, %if.then
  %28 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %29 = load { i8, i8* }, { i8, i8* }* %28, align 8
  ret { i8, i8* } %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8, i8* } @mdb_delete(i8* noundef %handle, i8* noundef %key) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %handle.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  %bucket = alloca i32, align 4
  %save_ptr = alloca i32, align 4
  %ptr = alloca i32, align 4
  %bucket_read_status = alloca %struct.mdb_status_t, align 8
  %index = alloca %struct.mdb_index_t*, align 8
  %data_free_status = alloca %struct.mdb_status_t, align 8
  %index_free_status = alloca %struct.mdb_status_t, align 8
  %nextptr_update_status = alloca %struct.mdb_status_t, align 8
  store i8* %handle, i8** %handle.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %handle.addr, align 8
  %1 = bitcast i8* %0 to %struct.mdb_int_t*
  store %struct.mdb_int_t* %1, %struct.mdb_int_t** %db, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mdb_hash(i8* noundef %2)
  %3 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %3, i32 0, i32 4
  %hash_buckets = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options, i32 0, i32 3
  %4 = load i32, i32* %hash_buckets, align 8
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %bucket, align 4
  %5 = load i32, i32* %bucket, align 4
  %add = add i32 %5, 1
  %mul = mul i32 4, %add
  store i32 %mul, i32* %save_ptr, align 4
  %6 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %7 = load i32, i32* %bucket, align 4
  %call1 = call { i8, i8* } @mdb_read_bucket(%struct.mdb_int_t* noundef %6, i32 noundef %7, i32* noundef %ptr)
  %8 = bitcast %struct.mdb_status_t* %bucket_read_status to { i8, i8* }*
  %9 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %8, i32 0, i32 0
  %10 = extractvalue { i8, i8* } %call1, 0
  store i8 %10, i8* %9, align 8
  %11 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %8, i32 0, i32 1
  %12 = extractvalue { i8, i8* } %call1, 1
  store i8* %12, i8** %11, align 8
  %code = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %bucket_read_status, i32 0, i32 0
  %13 = load i8, i8* %code, align 8
  %conv = zext i8 %13 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = bitcast %struct.mdb_status_t* %retval to i8*
  %15 = bitcast %struct.mdb_status_t* %bucket_read_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options3 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %16, i32 0, i32 4
  %key_size_max = getelementptr inbounds %struct.mdb_options_t, %struct.mdb_options_t* %options3, i32 0, i32 1
  %17 = load i16, i16* %key_size_max, align 8
  %conv4 = zext i16 %17 to i64
  %add5 = add i64 12, %conv4
  %add6 = add i64 %add5, 1
  %18 = alloca i8, i64 %add6, align 16
  %19 = bitcast i8* %18 to %struct.mdb_index_t*
  store %struct.mdb_index_t* %19, %struct.mdb_index_t** %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end
  %20 = load i32, i32* %ptr, align 4
  %cmp7 = icmp ne i32 %20, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %22 = load i32, i32* %ptr, align 4
  %23 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %call9 = call { i8, i8* } @mdb_read_index(%struct.mdb_int_t* noundef %21, i32 noundef %22, %struct.mdb_index_t* noundef %23)
  %24 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %25 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %24, i32 0, i32 0
  %26 = extractvalue { i8, i8* } %call9, 0
  store i8 %26, i8* %25, align 8
  %27 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %24, i32 0, i32 1
  %28 = extractvalue { i8, i8* } %call9, 1
  store i8* %28, i8** %27, align 8
  %code10 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %retval, i32 0, i32 0
  %29 = load i8, i8* %code10, align 8
  %conv11 = zext i8 %29 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  br label %return

if.end15:                                         ; preds = %while.body
  %30 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %key16 = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %30, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %key16, i64 0, i64 0
  %31 = load i8*, i8** %key.addr, align 8
  %call17 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %31) #6
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  br label %while.end

if.end21:                                         ; preds = %if.end15
  %32 = load i32, i32* %ptr, align 4
  store i32 %32, i32* %save_ptr, align 4
  %33 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %next_ptr = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %33, i32 0, i32 0
  %34 = load i32, i32* %next_ptr, align 4
  store i32 %34, i32* %ptr, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %if.then20, %while.cond
  %35 = load i32, i32* %ptr, align 4
  %cmp22 = icmp eq i32 %35, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %while.end
  %call25 = call { i8, i8* } @mdb_status(i8 noundef zeroext 1, i8* noundef null)
  %36 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %37 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %36, i32 0, i32 0
  %38 = extractvalue { i8, i8* } %call25, 0
  store i8 %38, i8* %37, align 8
  %39 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %36, i32 0, i32 1
  %40 = extractvalue { i8, i8* } %call25, 1
  store i8* %40, i8** %39, align 8
  br label %return

if.end26:                                         ; preds = %while.end
  %41 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %42 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %value_ptr = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %42, i32 0, i32 1
  %43 = load i32, i32* %value_ptr, align 4
  %44 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %value_size = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %44, i32 0, i32 2
  %45 = load i32, i32* %value_size, align 4
  %call27 = call { i8, i8* } @mdb_data_free(%struct.mdb_int_t* noundef %41, i32 noundef %43, i32 noundef %45)
  %46 = bitcast %struct.mdb_status_t* %data_free_status to { i8, i8* }*
  %47 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %46, i32 0, i32 0
  %48 = extractvalue { i8, i8* } %call27, 0
  store i8 %48, i8* %47, align 8
  %49 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %46, i32 0, i32 1
  %50 = extractvalue { i8, i8* } %call27, 1
  store i8* %50, i8** %49, align 8
  %code28 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %data_free_status, i32 0, i32 0
  %51 = load i8, i8* %code28, align 8
  %conv29 = zext i8 %51 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end26
  %52 = bitcast %struct.mdb_status_t* %retval to i8*
  %53 = bitcast %struct.mdb_status_t* %data_free_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  br label %return

if.end33:                                         ; preds = %if.end26
  %54 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %55 = load i32, i32* %ptr, align 4
  %call34 = call { i8, i8* } @mdb_index_free(%struct.mdb_int_t* noundef %54, i32 noundef %55)
  %56 = bitcast %struct.mdb_status_t* %index_free_status to { i8, i8* }*
  %57 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %56, i32 0, i32 0
  %58 = extractvalue { i8, i8* } %call34, 0
  store i8 %58, i8* %57, align 8
  %59 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %56, i32 0, i32 1
  %60 = extractvalue { i8, i8* } %call34, 1
  store i8* %60, i8** %59, align 8
  %code35 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %index_free_status, i32 0, i32 0
  %61 = load i8, i8* %code35, align 8
  %conv36 = zext i8 %61 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end33
  %62 = bitcast %struct.mdb_status_t* %retval to i8*
  %63 = bitcast %struct.mdb_status_t* %index_free_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  br label %return

if.end40:                                         ; preds = %if.end33
  %64 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %65 = load i32, i32* %save_ptr, align 4
  %66 = load %struct.mdb_index_t*, %struct.mdb_index_t** %index, align 8
  %next_ptr41 = getelementptr inbounds %struct.mdb_index_t, %struct.mdb_index_t* %66, i32 0, i32 0
  %67 = load i32, i32* %next_ptr41, align 4
  %call42 = call { i8, i8* } @mdb_write_nextptr(%struct.mdb_int_t* noundef %64, i32 noundef %65, i32 noundef %67)
  %68 = bitcast %struct.mdb_status_t* %nextptr_update_status to { i8, i8* }*
  %69 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %68, i32 0, i32 0
  %70 = extractvalue { i8, i8* } %call42, 0
  store i8 %70, i8* %69, align 8
  %71 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %68, i32 0, i32 1
  %72 = extractvalue { i8, i8* } %call42, 1
  store i8* %72, i8** %71, align 8
  %code43 = getelementptr inbounds %struct.mdb_status_t, %struct.mdb_status_t* %nextptr_update_status, i32 0, i32 0
  %73 = load i8, i8* %code43, align 8
  %conv44 = zext i8 %73 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end40
  %74 = bitcast %struct.mdb_status_t* %retval to i8*
  %75 = bitcast %struct.mdb_status_t* %nextptr_update_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  br label %return

if.end48:                                         ; preds = %if.end40
  %call49 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %76 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %77 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %76, i32 0, i32 0
  %78 = extractvalue { i8, i8* } %call49, 0
  store i8 %78, i8* %77, align 8
  %79 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %76, i32 0, i32 1
  %80 = extractvalue { i8, i8* } %call49, 1
  store i8* %80, i8** %79, align 8
  br label %return

return:                                           ; preds = %if.end48, %if.then47, %if.then39, %if.then32, %if.then24, %if.then14, %if.then
  %81 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %82 = load { i8, i8* }, { i8, i8* }* %81, align 8
  ret { i8, i8* } %82
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdb_get_options(%struct.mdb_options_t* noalias sret(%struct.mdb_options_t) align 8 %agg.result, i8* noundef %handle) #0 {
entry:
  %handle.addr = alloca i8*, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  %0 = load i8*, i8** %handle.addr, align 8
  %1 = bitcast i8* %0 to %struct.mdb_int_t*
  store %struct.mdb_int_t* %1, %struct.mdb_int_t** %db, align 8
  %2 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %options = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %2, i32 0, i32 4
  %3 = bitcast %struct.mdb_options_t* %agg.result to i8*
  %4 = bitcast %struct.mdb_options_t* %options to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mdb_index_size(i8** noundef %handle) #0 {
entry:
  %handle.addr = alloca i8**, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  store i8** %handle, i8*** %handle.addr, align 8
  %0 = load i8**, i8*** %handle.addr, align 8
  %1 = bitcast i8** %0 to %struct.mdb_int_t*
  store %struct.mdb_int_t* %1, %struct.mdb_int_t** %db, align 8
  %2 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %2, i32 0, i32 2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %call = call i32 @fseek(%struct._IO_FILE* noundef %3, i64 noundef 0, i32 noundef 2)
  %4 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index1 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index1, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* noundef %5)
  ret i64 %call2
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mdb_data_size(i8** noundef %handle) #0 {
entry:
  %handle.addr = alloca i8**, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  store i8** %handle, i8*** %handle.addr, align 8
  %0 = load i8**, i8*** %handle.addr, align 8
  %1 = bitcast i8** %0 to %struct.mdb_int_t*
  store %struct.mdb_int_t* %1, %struct.mdb_int_t** %db, align 8
  %2 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %2, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data, align 8
  %call = call i32 @fseek(%struct._IO_FILE* noundef %3, i64 noundef 0, i32 noundef 2)
  %4 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_data1 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %4, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data1, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* noundef %5)
  ret i64 %call2
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_write_bucket(%struct.mdb_int_t* noundef %db, i32 noundef %bucket, i32 noundef %value) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %bucket.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %bucket, i32* %bucket.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %2 = load i32, i32* %bucket.addr, align 4
  %add = add i32 %2, 1
  %mul = mul i32 4, %add
  %conv = zext i32 %mul to i64
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %conv, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %3 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 0
  %5 = extractvalue { i8, i8* } %call2, 0
  store i8 %5, i8* %4, align 8
  %6 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 1
  %7 = extractvalue { i8, i8* } %call2, 1
  store i8* %7, i8** %6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = bitcast i32* %value.addr to i8*
  %9 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index3 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %9, i32 0, i32 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index3, align 8
  %call4 = call i64 @fwrite(i8* noundef %8, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %10)
  %cmp5 = icmp ne i64 %call4, 1
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0))
  %11 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %12 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %11, i32 0, i32 0
  %13 = extractvalue { i8, i8* } %call8, 0
  store i8 %13, i8* %12, align 8
  %14 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %11, i32 0, i32 1
  %15 = extractvalue { i8, i8* } %call8, 1
  store i8* %15, i8** %14, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %16 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index10 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %16, i32 0, i32 2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index10, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* noundef %17)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  %call15 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %18 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %19 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %18, i32 0, i32 0
  %20 = extractvalue { i8, i8* } %call15, 0
  store i8 %20, i8* %19, align 8
  %21 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %18, i32 0, i32 1
  %22 = extractvalue { i8, i8* } %call15, 1
  store i8* %22, i8** %21, align 8
  br label %return

if.end16:                                         ; preds = %if.end9
  %call17 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %23 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %24 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %23, i32 0, i32 0
  %25 = extractvalue { i8, i8* } %call17, 0
  store i8 %25, i8* %24, align 8
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %23, i32 0, i32 1
  %27 = extractvalue { i8, i8* } %call17, 1
  store i8* %27, i8** %26, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then7, %if.then
  %28 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %29 = load { i8, i8* }, { i8, i8* }* %28, align 8
  ret { i8, i8* } %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_read_nextptr(%struct.mdb_int_t* noundef %db, i32 noundef %idxptr, i32* noundef %nextptr) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %idxptr.addr = alloca i32, align 4
  %nextptr.addr = alloca i32*, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32 %idxptr, i32* %idxptr.addr, align 4
  store i32* %nextptr, i32** %nextptr.addr, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %2 = load i32, i32* %idxptr.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef %conv, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %3 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %4 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 0
  %5 = extractvalue { i8, i8* } %call2, 0
  store i8 %5, i8* %4, align 8
  %6 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %3, i32 0, i32 1
  %7 = extractvalue { i8, i8* } %call2, 1
  store i8* %7, i8** %6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32*, i32** %nextptr.addr, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index3 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %10, i32 0, i32 2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index3, align 8
  %call4 = call i64 @fread(i8* noundef %9, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %11)
  %cmp5 = icmp ne i64 %call4, 1
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call { i8, i8* } @mdb_status(i8 noundef zeroext 6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  %12 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %13 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 0
  %14 = extractvalue { i8, i8* } %call8, 0
  store i8 %14, i8* %13, align 8
  %15 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %12, i32 0, i32 1
  %16 = extractvalue { i8, i8* } %call8, 1
  store i8* %16, i8** %15, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %call10 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %17 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %18 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %17, i32 0, i32 0
  %19 = extractvalue { i8, i8* } %call10, 0
  store i8 %19, i8* %18, align 8
  %20 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %17, i32 0, i32 1
  %21 = extractvalue { i8, i8* } %call10, 1
  store i8* %21, i8** %20, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %22 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %23 = load { i8, i8* }, { i8, i8* }* %22, align 8
  ret { i8, i8* } %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8, i8* } @mdb_stretch_index_file(%struct.mdb_int_t* noundef %db, i32* noundef %ptr) #0 {
entry:
  %retval = alloca %struct.mdb_status_t, align 8
  %db.addr = alloca %struct.mdb_int_t*, align 8
  %ptr.addr = alloca i32*, align 8
  %zero = alloca i8, align 1
  %i = alloca i64, align 8
  store %struct.mdb_int_t* %db, %struct.mdb_int_t** %db.addr, align 8
  store i32* %ptr, i32** %ptr.addr, align 8
  %0 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %call = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef 0, i32 noundef 2)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call { i8, i8* } @mdb_status(i8 noundef zeroext 9, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0))
  %2 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %3 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %2, i32 0, i32 0
  %4 = extractvalue { i8, i8* } %call1, 0
  store i8 %4, i8* %3, align 8
  %5 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %2, i32 0, i32 1
  %6 = extractvalue { i8, i8* } %call1, 1
  store i8* %6, i8** %5, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index2 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %7, i32 0, i32 2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index2, align 8
  %call3 = call i64 @ftell(%struct._IO_FILE* noundef %8)
  %conv = trunc i64 %call3 to i32
  %9 = load i32*, i32** %ptr.addr, align 8
  store i32 %conv, i32* %9, align 4
  store i8 0, i8* %zero, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %index_record_size = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %11, i32 0, i32 5
  %12 = load i32, i32* %index_record_size, align 8
  %conv4 = zext i32 %12 to i64
  %cmp5 = icmp ult i64 %10, %conv4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index7 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %13, i32 0, i32 2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index7, align 8
  %call8 = call i64 @fwrite(i8* noundef %zero, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %14)
  %cmp9 = icmp ult i64 %call8, 1
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %for.body
  %call12 = call { i8, i8* } @mdb_status(i8 noundef zeroext 7, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0))
  %15 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %16 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %15, i32 0, i32 0
  %17 = extractvalue { i8, i8* } %call12, 0
  store i8 %17, i8* %16, align 8
  %18 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %15, i32 0, i32 1
  %19 = extractvalue { i8, i8* } %call12, 1
  store i8* %19, i8** %18, align 8
  br label %return

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %21 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db.addr, align 8
  %fp_index14 = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %21, i32 0, i32 2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index14, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* noundef %22)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %for.end
  %call19 = call { i8, i8* } @mdb_status(i8 noundef zeroext 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %23 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %24 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %23, i32 0, i32 0
  %25 = extractvalue { i8, i8* } %call19, 0
  store i8 %25, i8* %24, align 8
  %26 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %23, i32 0, i32 1
  %27 = extractvalue { i8, i8* } %call19, 1
  store i8* %27, i8** %26, align 8
  br label %return

if.end20:                                         ; preds = %for.end
  %call21 = call { i8, i8* } @mdb_status(i8 noundef zeroext 0, i8* noundef null)
  %28 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %29 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %28, i32 0, i32 0
  %30 = extractvalue { i8, i8* } %call21, 0
  store i8 %30, i8* %29, align 8
  %31 = getelementptr inbounds { i8, i8* }, { i8, i8* }* %28, i32 0, i32 1
  %32 = extractvalue { i8, i8* } %call21, 1
  store i8* %32, i8** %31, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.then18, %if.then11, %if.then
  %33 = bitcast %struct.mdb_status_t* %retval to { i8, i8* }*
  %34 = load { i8, i8* }, { i8, i8* }* %33, align 8
  ret { i8, i8* } %34
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdb_close(i8* noundef %handle) #0 {
entry:
  %handle.addr = alloca i8*, align 8
  %db = alloca %struct.mdb_int_t*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  %0 = load i8*, i8** %handle.addr, align 8
  %1 = bitcast i8* %0 to %struct.mdb_int_t*
  store %struct.mdb_int_t* %1, %struct.mdb_int_t** %db, align 8
  %2 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_superblock = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_superblock, align 8
  %call = call i32 @fclose(%struct._IO_FILE* noundef %3)
  %4 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_index = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_index, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* noundef %5)
  %6 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %fp_data = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %6, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_data, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* noundef %7)
  %8 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %db_name = getelementptr inbounds %struct.mdb_int_t, %struct.mdb_int_t* %8, i32 0, i32 0
  %9 = load i8*, i8** %db_name, align 8
  call void @free(i8* noundef %9) #5
  %10 = load %struct.mdb_int_t*, %struct.mdb_int_t** %db, align 8
  %11 = bitcast %struct.mdb_int_t* %10 to i8*
  call void @free(i8* noundef %11) #5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
