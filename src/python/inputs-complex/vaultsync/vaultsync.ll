; ModuleID = 'vaultsync.c'
source_filename = "vaultsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.repository = type { [80 x i8], %struct.author*, [1024 x i8], %struct.commit* }
%struct.author = type { [50 x i8], [100 x i8] }
%struct.commit = type { [65 x i8], %struct.author*, [65 x i8] }
%struct.file_node = type { [1024 x i8], %struct.file_node* }
%struct.hash_map = type { [10 x %struct.key_value*] }
%struct.key_value = type { [1024 x i8], [1024 x i8], [65 x i8], %struct.key_value* }
%struct.__dirstream = type opaque
%struct.SHA256state_st = type { [8 x i32], i32, i32, [16 x i32], i32, i32 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rollback\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Usage: vaultsync [OPTIONS] COMMAND\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"  -h, --help     Show help message and exit\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Commands:\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"  init           Initialize a repository\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"  commit         Make a commit\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"  add [files]    Add files to be tracked in the next commit\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"For more information, see 'man vaultsync'\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Invalid arguments, check --help\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"Can not getting the author, check the default config at ~/.vsync_rc\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Initialization done\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Can not getting the repo info\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Files has been tracked successfully\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"The commit has been done successfully\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"The rollback has been successfully done\00", align 1
@__const.generate_random_data.charset = private unnamed_addr constant [63 x i8] c"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [31 x i8] c"Error generating random byte.\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%s \1B[1m[%s]\1B[m: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"%s \1B[31m\1B[1m[%s]\1B[m\1B[0m: %s (%s)\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"/.vsync\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"[add_changes] Can't find .vsync\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"/tracked\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Can not create a tracking dir\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"/track\00", align 1
@.str.32 = private unnamed_addr constant [65 x i8] c"Can not adding changes that not existed... check the added files\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"[add_changes] Can not adding changes\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"[add_changes] Can not persist changes\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"/.vsync/tracked\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"[make_changes] Can not open track file\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"[make_changes] Can not open changes file\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"[make_changes] Can not open destination file\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [54 x i8] c"[make_init_map_repo] Can not open the init commit dir\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c".vsync\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"/.vsync/\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"[create_commit] Can not create the commit dir\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"/commit\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"[create_commit] Can not create the commit file\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"[create_commit] can not open the src file\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"[create_commit] can not open the destination file\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"[make_commit] Can not load changes to the map\00", align 1
@.str.58 = private unnamed_addr constant [50 x i8] c"[make_commit] can not load commit file to the map\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"[make_commit] Can not create the commit\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"[make_commit] Can not update the repository file\00", align 1
@.str.61 = private unnamed_addr constant [47 x i8] c"[make_commit] Can not delete old tracked files\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"[delete_tracked_dir]\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"[rollback] Commit not found\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"[rollback] Can not found the commit file\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"[rollback] Can not populate the hashmap from the file\00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"[rollback] Can not delete files from the repository\00", align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"[rollback] Can not rollback files from the commit\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"[rollback] Can not load the commit\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"[rollback] Can not update the repository file\00", align 1
@.str.70 = private unnamed_addr constant [62 x i8] c"[make_rollback_commit] can not create directories for copying\00", align 1
@.str.71 = private unnamed_addr constant [49 x i8] c"[make_rollback_commit] can not open the raw file\00", align 1
@.str.72 = private unnamed_addr constant [59 x i8] c"[make_rollback_commit] can not creating dirs for dest file\00", align 1
@.str.73 = private unnamed_addr constant [57 x i8] c"[make_rollback_commit] can not open the destination file\00", align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"[load_commit] Commit no found\00", align 1
@.str.77 = private unnamed_addr constant [41 x i8] c"[load_commit] Author of commit not found\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.79 = private unnamed_addr constant [50 x i8] c"Can not populate a hashmap from such as this file\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"[init_repo] Can not get the current working directory\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"[init_repo] Can not create .vsync dir\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"[init_repo] Can not create repository file\00", align 1
@.str.86 = private unnamed_addr constant [60 x i8] c"[init_repo] can not create the hashmap for the first commit\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"[init_repo] can not create the first commit\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"/.vsync/repository\00", align 1
@.str.89 = private unnamed_addr constant [58 x i8] c" [write_repository_file] Can not open the repository file\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.91 = private unnamed_addr constant [60 x i8] c"[load_repository] Can not get the current working directory\00", align 1
@.str.92 = private unnamed_addr constant [51 x i8] c"[load_repository] Can not load the repository file\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"[load_repository] Can not load the last commit\00", align 1
@.str.94 = private unnamed_addr constant [57 x i8] c"[load_repository] Can not load the author of last commit\00", align 1
@.str.95 = private unnamed_addr constant [56 x i8] c"[load_repository] Can not load the author of repository\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"VSYNC_CONFIG_PATH\00", align 1
@.str.97 = private unnamed_addr constant [54 x i8] c"[load_author] The global config file does not existed\00", align 1

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
define dso_local void @run_cli(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %init_action = alloca i32, align 4
  %commit_action = alloca i32, align 4
  %help_action = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @invalid_args()
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %if.then2, label %if.else27

if.then2:                                         ; preds = %if.else
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #9
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %init_action, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #9
  %tobool5 = icmp ne i32 %call4, 0
  %lnot6 = xor i1 %tobool5, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, i32* %commit_action, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #9
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then2
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #9
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then2
  %10 = phi i1 [ true, %if.then2 ], [ %lnot14, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  store i32 %lor.ext, i32* %help_action, align 4
  %11 = load i32, i32* %init_action, align 4
  %tobool16 = icmp ne i32 %11, 0
  br i1 %tobool16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.end
  call void @init_repository()
  br label %if.end26

if.else18:                                        ; preds = %lor.end
  %12 = load i32, i32* %commit_action, align 4
  %tobool19 = icmp ne i32 %12, 0
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else18
  call void @commit_changes()
  br label %if.end25

if.else21:                                        ; preds = %if.else18
  %13 = load i32, i32* %help_action, align 4
  %tobool22 = icmp ne i32 %13, 0
  br i1 %tobool22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  call void @getting_help()
  br label %if.end

if.else24:                                        ; preds = %if.else21
  call void @invalid_args()
  br label %if.end

if.end:                                           ; preds = %if.else24, %if.then23
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then17
  br label %return

if.else27:                                        ; preds = %if.else
  %14 = load i32, i32* %argc.addr, align 4
  %cmp28 = icmp slt i32 %14, 4
  br i1 %cmp28, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.else27
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx29, align 8
  %call30 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #9
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %land.lhs.true
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %17, i64 2
  %18 = load i8*, i8** %arrayidx33, align 8
  call void @rollback_changes(i8* noundef %18)
  br label %return

if.end34:                                         ; preds = %land.lhs.true, %if.else27
  br label %if.end35

if.end35:                                         ; preds = %if.end34
  br label %if.end36

if.end36:                                         ; preds = %if.end35
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #9
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  %21 = load i32, i32* %argc.addr, align 4
  %22 = load i8**, i8*** %argv.addr, align 8
  call void @track_changes(i32 noundef %21, i8** noundef %22)
  br label %return

if.end41:                                         ; preds = %if.end36
  call void @invalid_args()
  br label %return

return:                                           ; preds = %if.end41, %if.then40, %if.then32, %if.end26, %if.then
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rollback_changes(i8* noundef %hash) #0 {
entry:
  %hash.addr = alloca i8*, align 8
  %repo = alloca %struct.repository*, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store %struct.repository* null, %struct.repository** %repo, align 8
  %call = call %struct.repository* @load_repository()
  store %struct.repository* %call, %struct.repository** %repo, align 8
  %cmp = icmp eq %struct.repository* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  br label %if.end4

if.end:                                           ; preds = %entry
  %0 = load %struct.repository*, %struct.repository** %repo, align 8
  %1 = load i8*, i8** %hash.addr, align 8
  %call1 = call i32 @rollback(%struct.repository* noundef %0, i8* noundef %1)
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @logger(i32 noundef 1, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @track_changes(i32 noundef %n, i8** noundef %paths) #0 {
entry:
  %n.addr = alloca i32, align 4
  %paths.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %files = alloca %struct.file_node*, align 8
  %repo = alloca %struct.repository*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8** %paths, i8*** %paths.addr, align 8
  store i32 2, i32* %i, align 4
  store %struct.file_node* null, %struct.file_node** %files, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.file_node*, %struct.file_node** %files, align 8
  %3 = load i8**, i8*** %paths.addr, align 8
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call %struct.file_node* @addFile(%struct.file_node* noundef %2, i8* noundef %5)
  store %struct.file_node* %call, %struct.file_node** %files, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store %struct.repository* null, %struct.repository** %repo, align 8
  %call1 = call %struct.repository* @load_repository()
  store %struct.repository* %call1, %struct.repository** %repo, align 8
  %cmp2 = icmp eq %struct.repository* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  br label %if.end6

if.end:                                           ; preds = %while.end
  %6 = load %struct.repository*, %struct.repository** %repo, align 8
  %7 = load %struct.file_node*, %struct.file_node** %files, align 8
  %call3 = call i32 @add_changes(%struct.repository* noundef %6, %struct.file_node* noundef %7)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @logger(i32 noundef 1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getting_help() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0))
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invalid_args() #0 {
entry:
  call void @logger(i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logger(i32 noundef %tag, i8* noundef %message) #0 {
entry:
  %tag.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %now = alloca i64, align 8
  %time_now = alloca i8*, align 8
  store i32 %tag, i32* %tag.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  %call = call i64 @time(i64* noundef %now) #10
  %call1 = call i8* @ctime(i64* noundef %now) #10
  store i8* %call1, i8** %time_now, align 8
  %0 = load i8*, i8** %time_now, align 8
  %1 = load i8*, i8** %time_now, align 8
  %call2 = call i64 @strlen(i8* noundef %1) #9
  %sub = sub i64 %call2, 1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %2 = load i32, i32* %tag.addr, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i8*, i8** %time_now, align 8
  %4 = load i8*, i8** %message.addr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef %4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %time_now, align 8
  %7 = load i8*, i8** %message.addr, align 8
  %call5 = call i32* @__errno_location() #11
  %8 = load i32, i32* %call5, align 4
  %call6 = call i8* @strerror(i32 noundef %8) #10
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* noundef %6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* noundef %7, i8* noundef %call6)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %9 = load i8*, i8** %time_now, align 8
  %10 = load i8*, i8** %message.addr, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* noundef %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_repository() #0 {
entry:
  %author = alloca %struct.author*, align 8
  %repo = alloca %struct.repository*, align 8
  store %struct.author* null, %struct.author** %author, align 8
  %call = call %struct.author* @load_author()
  store %struct.author* %call, %struct.author** %author, align 8
  %cmp = icmp eq %struct.author* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0))
  br label %if.end4

if.end:                                           ; preds = %entry
  store %struct.repository* null, %struct.repository** %repo, align 8
  %0 = load %struct.repository*, %struct.repository** %repo, align 8
  %1 = load %struct.author*, %struct.author** %author, align 8
  %call1 = call i32 @init_repo(%struct.repository* noundef %0, %struct.author* noundef %1)
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @logger(i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_repo(%struct.repository* noundef %repo, %struct.author* noundef %author) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %author.addr = alloca %struct.author*, align 8
  %first_commit = alloca %struct.commit*, align 8
  %dotdir_path = alloca [1024 x i8], align 16
  %map = alloca %struct.hash_map*, align 8
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  store %struct.author* %author, %struct.author** %author.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 1120) #10
  %0 = bitcast i8* %call to %struct.repository*
  store %struct.repository* %0, %struct.repository** %repo.addr, align 8
  %1 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %name = getelementptr inbounds %struct.repository, %struct.repository* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  %call1 = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0)) #10
  %2 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %2, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call3 = call i8* @getcwd(i8* noundef %arraydecay2, i64 noundef 1024) #10
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.81, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.author*, %struct.author** %author.addr, align 8
  %4 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %author4 = getelementptr inbounds %struct.repository, %struct.repository* %4, i32 0, i32 1
  store %struct.author* %3, %struct.author** %author4, align 8
  %call5 = call noalias i8* @malloc(i64 noundef 152) #10
  %5 = bitcast i8* %call5 to %struct.commit*
  store %struct.commit* %5, %struct.commit** %first_commit, align 8
  %6 = load %struct.commit*, %struct.commit** %first_commit, align 8
  %hash = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  %call7 = call i8* @strcpy(i8* noundef %arraydecay6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #10
  %7 = load %struct.commit*, %struct.commit** %first_commit, align 8
  %parent_hash = getelementptr inbounds %struct.commit, %struct.commit* %7, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [65 x i8], [65 x i8]* %parent_hash, i64 0, i64 0
  %call9 = call i8* @stpcpy(i8* noundef %arraydecay8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0)) #10
  %8 = load %struct.author*, %struct.author** %author.addr, align 8
  %9 = load %struct.commit*, %struct.commit** %first_commit, align 8
  %author10 = getelementptr inbounds %struct.commit, %struct.commit* %9, i32 0, i32 1
  store %struct.author* %8, %struct.author** %author10, align 8
  %10 = load %struct.commit*, %struct.commit** %first_commit, align 8
  %11 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %last_commit = getelementptr inbounds %struct.repository, %struct.repository* %11, i32 0, i32 3
  store %struct.commit* %10, %struct.commit** %last_commit, align 8
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dotdir_path, i64 0, i64 0
  %12 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir12 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir12, i64 0, i64 0
  %call14 = call i8* @strcpy(i8* noundef %arraydecay11, i8* noundef %arraydecay13) #10
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dotdir_path, i64 0, i64 0
  %call16 = call i8* @strcat(i8* noundef %arraydecay15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #10
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dotdir_path, i64 0, i64 0
  %call18 = call i32 @mkdir(i8* noundef %arraydecay17, i32 noundef 511) #10
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end
  %13 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %call22 = call i32 @write_repository_file(%struct.repository* noundef %13)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  %call26 = call noalias i8* @malloc(i64 noundef 80) #10
  %14 = bitcast i8* %call26 to %struct.hash_map*
  store %struct.hash_map* %14, %struct.hash_map** %map, align 8
  %15 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  call void @init_hash_map(%struct.hash_map* noundef %15)
  %16 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %17 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  %18 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir27 = getelementptr inbounds %struct.repository, %struct.repository* %18, i32 0, i32 2
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir27, i64 0, i64 0
  %call29 = call i32 @make_init_map_repo(%struct.repository* noundef %16, %struct.hash_map* noundef %17, i8* noundef %arraydecay28)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.86, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end25
  %19 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %20 = load %struct.commit*, %struct.commit** %first_commit, align 8
  %21 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  %call33 = call i32 @create_commit(%struct.repository* noundef %19, %struct.commit* noundef %20, %struct.hash_map* noundef %21)
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.87, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  %22 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  call void @clear_hash_map(%struct.hash_map* noundef %22)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then35, %if.then31, %if.then24, %if.then20, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_node* @addFile(%struct.file_node* noundef %head, i8* noundef %path) #0 {
entry:
  %head.addr = alloca %struct.file_node*, align 8
  %path.addr = alloca i8*, align 8
  %newNode = alloca %struct.file_node*, align 8
  store %struct.file_node* %head, %struct.file_node** %head.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 1032) #10
  %0 = bitcast i8* %call to %struct.file_node*
  store %struct.file_node* %0, %struct.file_node** %newNode, align 8
  %1 = load %struct.file_node*, %struct.file_node** %newNode, align 8
  %path1 = getelementptr inbounds %struct.file_node, %struct.file_node* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %path1, i64 0, i64 0
  %2 = load i8*, i8** %path.addr, align 8
  %call2 = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %2) #10
  %3 = load %struct.file_node*, %struct.file_node** %head.addr, align 8
  %4 = load %struct.file_node*, %struct.file_node** %newNode, align 8
  %next = getelementptr inbounds %struct.file_node, %struct.file_node* %4, i32 0, i32 1
  store %struct.file_node* %3, %struct.file_node** %next, align 8
  %5 = load %struct.file_node*, %struct.file_node** %newNode, align 8
  ret %struct.file_node* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_changes(%struct.repository* noundef %repo, %struct.file_node* noundef %files) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %files.addr = alloca %struct.file_node*, align 8
  %track_dir_path = alloca [1024 x i8], align 16
  %dir4 = alloca %struct.__dirstream*, align 8
  %map = alloca %struct.hash_map*, align 8
  %track_file_path = alloca [1024 x i8], align 16
  %trav = alloca %struct.file_node*, align 8
  %tr = alloca i8*, align 8
  %old_file_path = alloca [1024 x i8], align 16
  %hash_string = alloca [65 x i8], align 16
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  store %struct.file_node* %files, %struct.file_node** %files.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %0 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %0, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %arraydecay1) #10
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call3 = call i8* @strcat(i8* noundef %arraydecay2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #10
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call6 = call noalias %struct.__dirstream* @opendir(i8* noundef %arraydecay5)
  store %struct.__dirstream* %call6, %struct.__dirstream** %dir4, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dir4, align 8
  %cmp = icmp eq %struct.__dirstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.__dirstream*, %struct.__dirstream** %dir4, align 8
  %call7 = call i32 @closedir(%struct.__dirstream* noundef %2)
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call9 = call i8* @strcat(i8* noundef %arraydecay8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #10
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call11 = call noalias %struct.__dirstream* @opendir(i8* noundef %arraydecay10)
  store %struct.__dirstream* %call11, %struct.__dirstream** %dir4, align 8
  %3 = load %struct.__dirstream*, %struct.__dirstream** %dir4, align 8
  %cmp12 = icmp eq %struct.__dirstream* %3, null
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call15 = call i32 @mkdir(i8* noundef %arraydecay14, i32 noundef 511) #10
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  %4 = load %struct.__dirstream*, %struct.__dirstream** %dir4, align 8
  %call20 = call i32 @closedir(%struct.__dirstream* noundef %4)
  %call21 = call noalias i8* @malloc(i64 noundef 80) #10
  %5 = bitcast i8* %call21 to %struct.hash_map*
  store %struct.hash_map* %5, %struct.hash_map** %map, align 8
  %6 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  call void @init_hash_map(%struct.hash_map* noundef %6)
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call24 = call i8* @strcpy(i8* noundef %arraydecay22, i8* noundef %arraydecay23) #10
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %call26 = call i8* @strcat(i8* noundef %arraydecay25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0)) #10
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %call28 = call i32 @access(i8* noundef %arraydecay27, i32 noundef 0) #10
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end19
  %7 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %call32 = call i32 @populate_hashmap_from_file(%struct.hash_map* noundef %7, i8* noundef %arraydecay30, i8* noundef %arraydecay31)
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %land.lhs.true, %if.end19
  %8 = load %struct.file_node*, %struct.file_node** %files.addr, align 8
  store %struct.file_node* %8, %struct.file_node** %trav, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end61, %if.end35
  %9 = load %struct.file_node*, %struct.file_node** %trav, align 8
  %cmp36 = icmp ne %struct.file_node* %9, null
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.file_node*, %struct.file_node** %trav, align 8
  %path = getelementptr inbounds %struct.file_node, %struct.file_node* %10, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path, i64 0, i64 0
  %call38 = call i32 @access(i8* noundef %arraydecay37, i32 noundef 0) #10
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %while.body
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.32, i64 0, i64 0))
  %11 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  call void @clear_hash_map(%struct.hash_map* noundef %11)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %while.body
  %12 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  %13 = load %struct.file_node*, %struct.file_node** %trav, align 8
  %path42 = getelementptr inbounds %struct.file_node, %struct.file_node* %13, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path42, i64 0, i64 0
  %call44 = call i8* @get_hash_from_path(%struct.hash_map* noundef %12, i8* noundef %arraydecay43)
  store i8* %call44, i8** %tr, align 8
  %14 = load i8*, i8** %tr, align 8
  %cmp45 = icmp ne i8* %14, null
  br i1 %cmp45, label %if.then46, label %if.end61

if.then46:                                        ; preds = %if.end41
  %arraydecay47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %old_file_path, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call49 = call i8* @strcpy(i8* noundef %arraydecay47, i8* noundef %arraydecay48) #10
  %arraydecay50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %old_file_path, i64 0, i64 0
  %call51 = call i8* @strcat(i8* noundef %arraydecay50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #10
  %arraydecay52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %old_file_path, i64 0, i64 0
  %15 = load i8*, i8** %tr, align 8
  %call53 = call i8* @strcat(i8* noundef %arraydecay52, i8* noundef %15) #10
  %arraydecay54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %old_file_path, i64 0, i64 0
  %call55 = call i32 @remove(i8* noundef %arraydecay54) #10
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then46
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.then46
  %16 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  %17 = load %struct.file_node*, %struct.file_node** %trav, align 8
  %path59 = getelementptr inbounds %struct.file_node, %struct.file_node* %17, i32 0, i32 0
  %arraydecay60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path59, i64 0, i64 0
  call void @delete_from_map(%struct.hash_map* noundef %16, i8* noundef %arraydecay60)
  br label %if.end61

if.end61:                                         ; preds = %if.end58, %if.end41
  %arraydecay62 = getelementptr inbounds [65 x i8], [65 x i8]* %hash_string, i64 0, i64 0
  call void @create_hash(i8* noundef %arraydecay62)
  %18 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  %19 = load %struct.file_node*, %struct.file_node** %trav, align 8
  %path63 = getelementptr inbounds %struct.file_node, %struct.file_node* %19, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path63, i64 0, i64 0
  %arraydecay65 = getelementptr inbounds [65 x i8], [65 x i8]* %hash_string, i64 0, i64 0
  %20 = load %struct.file_node*, %struct.file_node** %trav, align 8
  %path66 = getelementptr inbounds %struct.file_node, %struct.file_node* %20, i32 0, i32 0
  %arraydecay67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path66, i64 0, i64 0
  call void @insert_map(%struct.hash_map* noundef %18, i8* noundef %arraydecay64, i8* noundef %arraydecay65, i8* noundef %arraydecay67)
  %21 = load %struct.file_node*, %struct.file_node** %trav, align 8
  %next = getelementptr inbounds %struct.file_node, %struct.file_node* %21, i32 0, i32 1
  %22 = load %struct.file_node*, %struct.file_node** %next, align 8
  store %struct.file_node* %22, %struct.file_node** %trav, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %23 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %24 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  %call68 = call i32 @make_changes(%struct.repository* noundef %23, %struct.hash_map* noundef %24)
  %cmp69 = icmp eq i32 %call68, -1
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %while.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %while.end
  %25 = load %struct.hash_map*, %struct.hash_map** %map, align 8
  call void @clear_hash_map(%struct.hash_map* noundef %25)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.then70, %if.then57, %if.then40, %if.then34, %if.then17, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commit_changes() #0 {
entry:
  %new_commit = alloca %struct.commit*, align 8
  %repo = alloca %struct.repository*, align 8
  %author = alloca %struct.author*, align 8
  %call = call noalias i8* @malloc(i64 noundef 152) #10
  %0 = bitcast i8* %call to %struct.commit*
  store %struct.commit* %0, %struct.commit** %new_commit, align 8
  store %struct.repository* null, %struct.repository** %repo, align 8
  %call1 = call %struct.author* @load_author()
  store %struct.author* %call1, %struct.author** %author, align 8
  %cmp = icmp eq %struct.author* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0))
  br label %if.end9

if.end:                                           ; preds = %entry
  %call2 = call %struct.repository* @load_repository()
  store %struct.repository* %call2, %struct.repository** %repo, align 8
  %cmp3 = icmp eq %struct.repository* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  br label %if.end9

if.end5:                                          ; preds = %if.end
  %1 = load %struct.repository*, %struct.repository** %repo, align 8
  %2 = load %struct.author*, %struct.author** %author, align 8
  %3 = load %struct.commit*, %struct.commit** %new_commit, align 8
  %call6 = call i32 @make_commit(%struct.repository* noundef %1, %struct.author* noundef %2, %struct.commit* noundef %3)
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @logger(i32 noundef 1, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then4, %if.then8, %if.end5
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_commit(%struct.repository* noundef %repo, %struct.author* noundef %author, %struct.commit* noundef %commit) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %author.addr = alloca %struct.author*, align 8
  %commit.addr = alloca %struct.commit*, align 8
  %changes_map = alloca %struct.hash_map*, align 8
  %track_dir_path = alloca [1024 x i8], align 16
  %track_file_path = alloca [1024 x i8], align 16
  %last_commit_dir_path = alloca [1024 x i8], align 16
  %last_commit_file_path = alloca [1024 x i8], align 16
  %last_commit_map = alloca %struct.hash_map*, align 8
  %i = alloca i32, align 4
  %current = alloca %struct.key_value*, align 8
  %hash47 = alloca i8*, align 8
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  store %struct.author* %author, %struct.author** %author.addr, align 8
  store %struct.commit* %commit, %struct.commit** %commit.addr, align 8
  %0 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %hash = getelementptr inbounds %struct.commit, %struct.commit* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  call void @create_hash(i8* noundef %arraydecay)
  %1 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %parent_hash = getelementptr inbounds %struct.commit, %struct.commit* %1, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [65 x i8], [65 x i8]* %parent_hash, i64 0, i64 0
  %2 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %last_commit = getelementptr inbounds %struct.repository, %struct.repository* %2, i32 0, i32 3
  %3 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %hash2 = getelementptr inbounds %struct.commit, %struct.commit* %3, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [65 x i8], [65 x i8]* %hash2, i64 0, i64 0
  %call = call i8* @strcpy(i8* noundef %arraydecay1, i8* noundef %arraydecay3) #10
  %4 = load %struct.author*, %struct.author** %author.addr, align 8
  %5 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %author4 = getelementptr inbounds %struct.commit, %struct.commit* %5, i32 0, i32 1
  store %struct.author* %4, %struct.author** %author4, align 8
  %call5 = call noalias i8* @malloc(i64 noundef 80) #10
  %6 = bitcast i8* %call5 to %struct.hash_map*
  store %struct.hash_map* %6, %struct.hash_map** %changes_map, align 8
  %7 = load %struct.hash_map*, %struct.hash_map** %changes_map, align 8
  call void @init_hash_map(%struct.hash_map* noundef %7)
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %8 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %8, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call8 = call i8* @strcpy(i8* noundef %arraydecay6, i8* noundef %arraydecay7) #10
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call10 = call i8* @strcat(i8* noundef %arraydecay9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0)) #10
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call13 = call i8* @strcpy(i8* noundef %arraydecay11, i8* noundef %arraydecay12) #10
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %call15 = call i8* @strcat(i8* noundef %arraydecay14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0)) #10
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %call17 = call i32 @access(i8* noundef %arraydecay16, i32 noundef 0) #10
  %cmp = icmp eq i32 %call17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.hash_map*, %struct.hash_map** %changes_map, align 8
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %call20 = call i32 @populate_hashmap_from_file(%struct.hash_map* noundef %9, i8* noundef %arraydecay18, i8* noundef %arraydecay19)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.57, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_dir_path, i64 0, i64 0
  %10 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir23 = getelementptr inbounds %struct.repository, %struct.repository* %10, i32 0, i32 2
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir23, i64 0, i64 0
  %call25 = call i8* @strcpy(i8* noundef %arraydecay22, i8* noundef %arraydecay24) #10
  %arraydecay26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_dir_path, i64 0, i64 0
  %call27 = call i8* @strcat(i8* noundef %arraydecay26, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #10
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_dir_path, i64 0, i64 0
  %11 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %last_commit29 = getelementptr inbounds %struct.repository, %struct.repository* %11, i32 0, i32 3
  %12 = load %struct.commit*, %struct.commit** %last_commit29, align 8
  %hash30 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [65 x i8], [65 x i8]* %hash30, i64 0, i64 0
  %call32 = call i8* @strcat(i8* noundef %arraydecay28, i8* noundef %arraydecay31) #10
  %arraydecay33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_file_path, i64 0, i64 0
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_dir_path, i64 0, i64 0
  %call35 = call i8* @strcpy(i8* noundef %arraydecay33, i8* noundef %arraydecay34) #10
  %arraydecay36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_file_path, i64 0, i64 0
  %call37 = call i8* @strcat(i8* noundef %arraydecay36, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #10
  %call38 = call noalias i8* @malloc(i64 noundef 80) #10
  %13 = bitcast i8* %call38 to %struct.hash_map*
  store %struct.hash_map* %13, %struct.hash_map** %last_commit_map, align 8
  %14 = load %struct.hash_map*, %struct.hash_map** %last_commit_map, align 8
  call void @init_hash_map(%struct.hash_map* noundef %14)
  %15 = load %struct.hash_map*, %struct.hash_map** %last_commit_map, align 8
  %arraydecay39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_dir_path, i64 0, i64 0
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_file_path, i64 0, i64 0
  %call41 = call i32 @populate_hashmap_from_file(%struct.hash_map* noundef %15, i8* noundef %arraydecay39, i8* noundef %arraydecay40)
  %cmp42 = icmp eq i32 %call41, -1
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.58, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end44
  %16 = load i32, i32* %i, align 4
  %cmp45 = icmp slt i32 %16, 10
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.hash_map*, %struct.hash_map** %changes_map, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %17, i32 0, i32 0
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  %19 = load %struct.key_value*, %struct.key_value** %arrayidx, align 8
  store %struct.key_value* %19, %struct.key_value** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %for.body
  %20 = load %struct.key_value*, %struct.key_value** %current, align 8
  %cmp46 = icmp ne %struct.key_value* %20, null
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.hash_map*, %struct.hash_map** %last_commit_map, align 8
  %22 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path = getelementptr inbounds %struct.key_value, %struct.key_value* %22, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path, i64 0, i64 0
  %call49 = call i8* @get_hash_from_path(%struct.hash_map* noundef %21, i8* noundef %arraydecay48)
  store i8* %call49, i8** %hash47, align 8
  %23 = load i8*, i8** %hash47, align 8
  %cmp50 = icmp ne i8* %23, null
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %while.body
  %24 = load %struct.hash_map*, %struct.hash_map** %last_commit_map, align 8
  %25 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path52 = getelementptr inbounds %struct.key_value, %struct.key_value* %25, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path52, i64 0, i64 0
  call void @delete_from_map(%struct.hash_map* noundef %24, i8* noundef %arraydecay53)
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %while.body
  %26 = load %struct.hash_map*, %struct.hash_map** %last_commit_map, align 8
  %27 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path55 = getelementptr inbounds %struct.key_value, %struct.key_value* %27, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path55, i64 0, i64 0
  %28 = load %struct.key_value*, %struct.key_value** %current, align 8
  %hash57 = getelementptr inbounds %struct.key_value, %struct.key_value* %28, i32 0, i32 2
  %arraydecay58 = getelementptr inbounds [65 x i8], [65 x i8]* %hash57, i64 0, i64 0
  %29 = load %struct.key_value*, %struct.key_value** %current, align 8
  %raw_path = getelementptr inbounds %struct.key_value, %struct.key_value* %29, i32 0, i32 1
  %arraydecay59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %raw_path, i64 0, i64 0
  call void @insert_map(%struct.hash_map* noundef %26, i8* noundef %arraydecay56, i8* noundef %arraydecay58, i8* noundef %arraydecay59)
  %30 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next = getelementptr inbounds %struct.key_value, %struct.key_value* %30, i32 0, i32 3
  %31 = load %struct.key_value*, %struct.key_value** %next, align 8
  store %struct.key_value* %31, %struct.key_value** %current, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %33 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %34 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %35 = load %struct.hash_map*, %struct.hash_map** %last_commit_map, align 8
  %call60 = call i32 @create_commit(%struct.repository* noundef %33, %struct.commit* noundef %34, %struct.hash_map* noundef %35)
  %cmp61 = icmp eq i32 %call60, -1
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %for.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %for.end
  %36 = load %struct.hash_map*, %struct.hash_map** %last_commit_map, align 8
  call void @clear_hash_map(%struct.hash_map* noundef %36)
  %37 = load %struct.hash_map*, %struct.hash_map** %changes_map, align 8
  call void @clear_hash_map(%struct.hash_map* noundef %37)
  %38 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %39 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %last_commit64 = getelementptr inbounds %struct.repository, %struct.repository* %39, i32 0, i32 3
  store %struct.commit* %38, %struct.commit** %last_commit64, align 8
  %40 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %call65 = call i32 @write_repository_file(%struct.repository* noundef %40)
  %cmp66 = icmp eq i32 %call65, -1
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end63
  %41 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %call69 = call i32 @delete_tracked_dir(%struct.repository* noundef %41)
  %cmp70 = icmp eq i32 %call69, -1
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.61, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end68
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.then71, %if.then67, %if.then62, %if.then43, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rollback(%struct.repository* noundef %repo, i8* noundef %commit_hash) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %commit_hash.addr = alloca i8*, align 8
  %commit_dir_path = alloca [1024 x i8], align 16
  %commit_dir = alloca %struct.__dirstream*, align 8
  %commit_map = alloca %struct.hash_map*, align 8
  %commit_file_path = alloca [1024 x i8], align 16
  %commit = alloca %struct.commit*, align 8
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  store i8* %commit_hash, i8** %commit_hash.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_dir_path, i64 0, i64 0
  %0 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %0, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %arraydecay1) #10
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_dir_path, i64 0, i64 0
  %call3 = call i8* @strcat(i8* noundef %arraydecay2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #10
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_dir_path, i64 0, i64 0
  %1 = load i8*, i8** %commit_hash.addr, align 8
  %call5 = call i8* @strcat(i8* noundef %arraydecay4, i8* noundef %1) #10
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_dir_path, i64 0, i64 0
  %call7 = call noalias %struct.__dirstream* @opendir(i8* noundef %arraydecay6)
  store %struct.__dirstream* %call7, %struct.__dirstream** %commit_dir, align 8
  %2 = load %struct.__dirstream*, %struct.__dirstream** %commit_dir, align 8
  %cmp = icmp eq %struct.__dirstream* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.__dirstream*, %struct.__dirstream** %commit_dir, align 8
  %call8 = call i32 @closedir(%struct.__dirstream* noundef %3)
  %call9 = call noalias i8* @malloc(i64 noundef 80) #10
  %4 = bitcast i8* %call9 to %struct.hash_map*
  store %struct.hash_map* %4, %struct.hash_map** %commit_map, align 8
  %5 = load %struct.hash_map*, %struct.hash_map** %commit_map, align 8
  call void @init_hash_map(%struct.hash_map* noundef %5)
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_dir_path, i64 0, i64 0
  %call12 = call i8* @strcpy(i8* noundef %arraydecay10, i8* noundef %arraydecay11) #10
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %call14 = call i8* @strcat(i8* noundef %arraydecay13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #10
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %call16 = call i32 @access(i8* noundef %arraydecay15, i32 noundef 0) #10
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.64, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end
  %6 = load %struct.hash_map*, %struct.hash_map** %commit_map, align 8
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_dir_path, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %call22 = call i32 @populate_hashmap_from_file(%struct.hash_map* noundef %6, i8* noundef %arraydecay20, i8* noundef %arraydecay21)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.65, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end19
  %7 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir26 = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 2
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir26, i64 0, i64 0
  %8 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir28 = getelementptr inbounds %struct.repository, %struct.repository* %8, i32 0, i32 2
  %arraydecay29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir28, i64 0, i64 0
  %call30 = call i32 @reset_repo_dir(i8* noundef %arraydecay27, i8* noundef %arraydecay29)
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end25
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.66, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end25
  %9 = load %struct.hash_map*, %struct.hash_map** %commit_map, align 8
  %call34 = call i32 @make_rollback_commit(%struct.hash_map* noundef %9)
  %cmp35 = icmp eq i32 %call34, -1
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.67, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end33
  store %struct.commit* null, %struct.commit** %commit, align 8
  %10 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %11 = load i8*, i8** %commit_hash.addr, align 8
  %call38 = call %struct.commit* @load_commit(%struct.repository* noundef %10, i8* noundef %11)
  store %struct.commit* %call38, %struct.commit** %commit, align 8
  %cmp39 = icmp eq %struct.commit* %call38, null
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end37
  %12 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %last_commit = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 3
  %13 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %14 = bitcast %struct.commit* %13 to i8*
  call void @free(i8* noundef %14) #10
  %15 = load %struct.commit*, %struct.commit** %commit, align 8
  %16 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %last_commit42 = getelementptr inbounds %struct.repository, %struct.repository* %16, i32 0, i32 3
  store %struct.commit* %15, %struct.commit** %last_commit42, align 8
  %17 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %call43 = call i32 @write_repository_file(%struct.repository* noundef %17)
  %cmp44 = icmp eq i32 %call43, -1
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end41
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then45, %if.then40, %if.then36, %if.then32, %if.then24, %if.then18, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_random_data(i8* noundef %word, i32 noundef %length) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %charset = alloca [63 x i8], align 16
  %charset_size = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = bitcast [63 x i8]* %charset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([63 x i8], [63 x i8]* @__const.generate_random_data.charset, i32 0, i32 0), i64 63, i1 false)
  store i64 62, i64* %charset_size, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %word.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %call = call i32 @RAND_bytes(i8* noundef %arrayidx, i32 noundef 1)
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %for.body
  %6 = load i8*, i8** %word.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %8 to i64
  %rem = urem i64 %conv, 62
  %arrayidx5 = getelementptr inbounds [63 x i8], [63 x i8]* %charset, i64 0, i64 %rem
  %9 = load i8, i8* %arrayidx5, align 1
  %10 = load i8*, i8** %word.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %idxprom6
  store i8 %9, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** %word.addr, align 8
  %14 = load i32, i32* %length.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  store i8 0, i8* %arrayidx9, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_hash(i8* noundef %data, i32 noundef %length, i8* noundef %hash) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %sha256 = alloca %struct.SHA256state_st, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  %call = call i32 @SHA256_Init(%struct.SHA256state_st* noundef %sha256)
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i32, i32* %length.addr, align 4
  %conv = sext i32 %1 to i64
  %call1 = call i32 @SHA256_Update(%struct.SHA256state_st* noundef %sha256, i8* noundef %0, i64 noundef %conv)
  %2 = load i8*, i8** %hash.addr, align 8
  %call2 = call i32 @SHA256_Final(i8* noundef %2, %struct.SHA256state_st* noundef %sha256)
  ret void
}

declare dso_local i32 @SHA256_Init(%struct.SHA256state_st* noundef) #2

declare dso_local i32 @SHA256_Update(%struct.SHA256state_st* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @SHA256_Final(i8* noundef, %struct.SHA256state_st* noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @ctime(i64* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @run_cli(i32 noundef %0, i8** noundef %1)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

declare dso_local noalias %struct.__dirstream* @opendir(i8* noundef) #2

declare dso_local i32 @closedir(%struct.__dirstream* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_hash_map(%struct.hash_map* noundef %map) #0 {
entry:
  %map.addr = alloca %struct.hash_map*, align 8
  %i = alloca i32, align 4
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %1, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  store %struct.key_value* null, %struct.key_value** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @access(i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @populate_hashmap_from_file(%struct.hash_map* noundef %map, i8* noundef %raw_path, i8* noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.hash_map*, align 8
  %raw_path.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %line = alloca [1090 x i8], align 16
  %spacePos = alloca i8*, align 8
  %path = alloca i8*, align 8
  %hash = alloca i8*, align 8
  %src_file_path = alloca [1024 x i8], align 16
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  store i8* %raw_path, i8** %raw_path.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.79, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1090 x i8], [1090 x i8]* %line, i64 0, i64 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call1 = call i8* @fgets(i8* noundef %arraydecay, i32 noundef 1090, %struct._IO_FILE* noundef %2)
  %arraydecay2 = getelementptr inbounds [1090 x i8], [1090 x i8]* %line, i64 0, i64 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call3 = call i8* @fgets(i8* noundef %arraydecay2, i32 noundef 1090, %struct._IO_FILE* noundef %3)
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end
  %arraydecay4 = getelementptr inbounds [1090 x i8], [1090 x i8]* %line, i64 0, i64 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call5 = call i8* @fgets(i8* noundef %arraydecay4, i32 noundef 1090, %struct._IO_FILE* noundef %4)
  %cmp6 = icmp ne i8* %call5, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay7 = getelementptr inbounds [1090 x i8], [1090 x i8]* %line, i64 0, i64 0
  %call8 = call i8* @strchr(i8* noundef %arraydecay7, i32 noundef 32) #9
  store i8* %call8, i8** %spacePos, align 8
  %5 = load i8*, i8** %spacePos, align 8
  %cmp9 = icmp ne i8* %5, null
  br i1 %cmp9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %while.body
  %6 = load i8*, i8** %spacePos, align 8
  store i8 0, i8* %6, align 1
  %arraydecay11 = getelementptr inbounds [1090 x i8], [1090 x i8]* %line, i64 0, i64 0
  store i8* %arraydecay11, i8** %path, align 8
  %7 = load i8*, i8** %spacePos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %add.ptr, i8** %hash, align 8
  %8 = load i8*, i8** %hash, align 8
  %9 = load i8*, i8** %hash, align 8
  %call12 = call i64 @strlen(i8* noundef %9) #9
  %sub = sub i64 %call12, 1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %src_file_path, i64 0, i64 0
  %10 = load i8*, i8** %raw_path.addr, align 8
  %call14 = call i8* @strcpy(i8* noundef %arraydecay13, i8* noundef %10) #10
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %src_file_path, i64 0, i64 0
  %call16 = call i8* @strcat(i8* noundef %arraydecay15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #10
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %src_file_path, i64 0, i64 0
  %11 = load i8*, i8** %hash, align 8
  %call18 = call i8* @strcat(i8* noundef %arraydecay17, i8* noundef %11) #10
  %12 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %13 = load i8*, i8** %path, align 8
  %14 = load i8*, i8** %hash, align 8
  %arraydecay19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %src_file_path, i64 0, i64 0
  call void @insert_map(%struct.hash_map* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %arraydecay19)
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %while.body
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call21 = call i32 @fclose(%struct._IO_FILE* noundef %15)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_hash_map(%struct.hash_map* noundef %map) #0 {
entry:
  %map.addr = alloca %struct.hash_map*, align 8
  %i = alloca i32, align 4
  %current = alloca %struct.key_value*, align 8
  %temp = alloca %struct.key_value*, align 8
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %1, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  %3 = load %struct.key_value*, %struct.key_value** %arrayidx, align 8
  store %struct.key_value* %3, %struct.key_value** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load %struct.key_value*, %struct.key_value** %current, align 8
  %cmp1 = icmp ne %struct.key_value* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.key_value*, %struct.key_value** %current, align 8
  store %struct.key_value* %5, %struct.key_value** %temp, align 8
  %6 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next = getelementptr inbounds %struct.key_value, %struct.key_value* %6, i32 0, i32 3
  %7 = load %struct.key_value*, %struct.key_value** %next, align 8
  store %struct.key_value* %7, %struct.key_value** %current, align 8
  %8 = load %struct.key_value*, %struct.key_value** %temp, align 8
  %9 = bitcast %struct.key_value* %8 to i8*
  call void @free(i8* noundef %9) #10
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %10 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table2 = getelementptr inbounds %struct.hash_map, %struct.hash_map* %10, i32 0, i32 0
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table2, i64 0, i64 %idxprom3
  store %struct.key_value* null, %struct.key_value** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_hash_from_path(%struct.hash_map* noundef %map, i8* noundef %path) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct.hash_map*, align 8
  %path.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  %current = alloca %struct.key_value*, align 8
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @hash(i8* noundef %0)
  store i32 %call, i32* %index, align 4
  %1 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %1, i32 0, i32 0
  %2 = load i32, i32* %index, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  %3 = load %struct.key_value*, %struct.key_value** %arrayidx, align 8
  store %struct.key_value* %3, %struct.key_value** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.key_value*, %struct.key_value** %current, align 8
  %cmp = icmp ne %struct.key_value* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path1 = getelementptr inbounds %struct.key_value, %struct.key_value* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %path1, i64 0, i64 0
  %6 = load i8*, i8** %path.addr, align 8
  %call2 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %6) #9
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.key_value*, %struct.key_value** %current, align 8
  %hash = getelementptr inbounds %struct.key_value, %struct.key_value* %7, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  store i8* %arraydecay4, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next = getelementptr inbounds %struct.key_value, %struct.key_value* %8, i32 0, i32 3
  %9 = load %struct.key_value*, %struct.key_value** %next, align 8
  store %struct.key_value* %9, %struct.key_value** %current, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i8*, i8** %retval, align 8
  ret i8* %10
}

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_from_map(%struct.hash_map* noundef %map, i8* noundef %path) #0 {
entry:
  %map.addr = alloca %struct.hash_map*, align 8
  %path.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  %current = alloca %struct.key_value*, align 8
  %previous = alloca %struct.key_value*, align 8
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @hash(i8* noundef %0)
  store i32 %call, i32* %index, align 4
  %1 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %1, i32 0, i32 0
  %2 = load i32, i32* %index, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  %3 = load %struct.key_value*, %struct.key_value** %arrayidx, align 8
  store %struct.key_value* %3, %struct.key_value** %current, align 8
  store %struct.key_value* null, %struct.key_value** %previous, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %4 = load %struct.key_value*, %struct.key_value** %current, align 8
  %cmp = icmp ne %struct.key_value* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path1 = getelementptr inbounds %struct.key_value, %struct.key_value* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %path1, i64 0, i64 0
  %6 = load i8*, i8** %path.addr, align 8
  %call2 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %6) #9
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end11

if.then:                                          ; preds = %while.body
  %7 = load %struct.key_value*, %struct.key_value** %previous, align 8
  %cmp4 = icmp eq %struct.key_value* %7, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %8 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next = getelementptr inbounds %struct.key_value, %struct.key_value* %8, i32 0, i32 3
  %9 = load %struct.key_value*, %struct.key_value** %next, align 8
  %10 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table6 = getelementptr inbounds %struct.hash_map, %struct.hash_map* %10, i32 0, i32 0
  %11 = load i32, i32* %index, align 4
  %idxprom7 = zext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table6, i64 0, i64 %idxprom7
  store %struct.key_value* %9, %struct.key_value** %arrayidx8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next9 = getelementptr inbounds %struct.key_value, %struct.key_value* %12, i32 0, i32 3
  %13 = load %struct.key_value*, %struct.key_value** %next9, align 8
  %14 = load %struct.key_value*, %struct.key_value** %previous, align 8
  %next10 = getelementptr inbounds %struct.key_value, %struct.key_value* %14, i32 0, i32 3
  store %struct.key_value* %13, %struct.key_value** %next10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %15 = load %struct.key_value*, %struct.key_value** %current, align 8
  %16 = bitcast %struct.key_value* %15 to i8*
  call void @free(i8* noundef %16) #10
  br label %while.end

if.end11:                                         ; preds = %while.body
  %17 = load %struct.key_value*, %struct.key_value** %current, align 8
  store %struct.key_value* %17, %struct.key_value** %previous, align 8
  %18 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next12 = getelementptr inbounds %struct.key_value, %struct.key_value* %18, i32 0, i32 3
  %19 = load %struct.key_value*, %struct.key_value** %next12, align 8
  store %struct.key_value* %19, %struct.key_value** %current, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %if.end, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_hash(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %random_data = alloca [16 x i8], align 16
  %hash = alloca [65 x i8], align 16
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %call = call i64 @time(i64* noundef null) #10
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv) #10
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %random_data, i64 0, i64 0
  call void @generate_random_data(i8* noundef %arraydecay, i32 noundef 16)
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %random_data, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  call void @generate_hash(i8* noundef %arraydecay1, i32 noundef 65, i8* noundef %arraydecay2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 %idxprom4
  %4 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %4 to i32
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arrayidx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv6) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 65
  store i8 0, i8* %arrayidx8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_map(%struct.hash_map* noundef %map, i8* noundef %path, i8* noundef %hash_string, i8* noundef %raw_path) #0 {
entry:
  %map.addr = alloca %struct.hash_map*, align 8
  %path.addr = alloca i8*, align 8
  %hash_string.addr = alloca i8*, align 8
  %raw_path.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  %newNode = alloca %struct.key_value*, align 8
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %hash_string, i8** %hash_string.addr, align 8
  store i8* %raw_path, i8** %raw_path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @hash(i8* noundef %0)
  store i32 %call, i32* %index, align 4
  %call1 = call noalias i8* @malloc(i64 noundef 2128) #10
  %1 = bitcast i8* %call1 to %struct.key_value*
  store %struct.key_value* %1, %struct.key_value** %newNode, align 8
  %2 = load %struct.key_value*, %struct.key_value** %newNode, align 8
  %path2 = getelementptr inbounds %struct.key_value, %struct.key_value* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %path2, i64 0, i64 0
  %3 = load i8*, i8** %path.addr, align 8
  %call3 = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %3) #10
  %4 = load %struct.key_value*, %struct.key_value** %newNode, align 8
  %hash = getelementptr inbounds %struct.key_value, %struct.key_value* %4, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  %5 = load i8*, i8** %hash_string.addr, align 8
  %call5 = call i8* @strcpy(i8* noundef %arraydecay4, i8* noundef %5) #10
  %6 = load %struct.key_value*, %struct.key_value** %newNode, align 8
  %raw_path6 = getelementptr inbounds %struct.key_value, %struct.key_value* %6, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %raw_path6, i64 0, i64 0
  %7 = load i8*, i8** %raw_path.addr, align 8
  %call8 = call i8* @strcpy(i8* noundef %arraydecay7, i8* noundef %7) #10
  %8 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %8, i32 0, i32 0
  %9 = load i32, i32* %index, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  %10 = load %struct.key_value*, %struct.key_value** %arrayidx, align 8
  %11 = load %struct.key_value*, %struct.key_value** %newNode, align 8
  %next = getelementptr inbounds %struct.key_value, %struct.key_value* %11, i32 0, i32 3
  store %struct.key_value* %10, %struct.key_value** %next, align 8
  %12 = load %struct.key_value*, %struct.key_value** %newNode, align 8
  %13 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table9 = getelementptr inbounds %struct.hash_map, %struct.hash_map* %13, i32 0, i32 0
  %14 = load i32, i32* %index, align 4
  %idxprom10 = zext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table9, i64 0, i64 %idxprom10
  store %struct.key_value* %12, %struct.key_value** %arrayidx11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_changes(%struct.repository* noundef %repo, %struct.hash_map* noundef %map) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %map.addr = alloca %struct.hash_map*, align 8
  %track_file_path = alloca [1024 x i8], align 16
  %track_dir_path = alloca [1024 x i8], align 16
  %track_file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %current = alloca %struct.key_value*, align 8
  %destination_path = alloca [1024 x i8], align 16
  %changes_file = alloca %struct._IO_FILE*, align 8
  %destination_file = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [1024 x i8], align 16
  %bytesRead = alloca i64, align 8
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %0 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %0, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %arraydecay1) #10
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call3 = call i8* @strcat(i8* noundef %arraydecay2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0)) #10
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call6 = call i8* @strcat(i8* noundef %arraydecay4, i8* noundef %arraydecay5) #10
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %call8 = call i8* @strcat(i8* noundef %arraydecay7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0)) #10
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_file_path, i64 0, i64 0
  %call10 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %track_file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %track_file, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %track_file, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %track_file, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %4, 10
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %5, i32 0, i32 0
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  %7 = load %struct.key_value*, %struct.key_value** %arrayidx, align 8
  store %struct.key_value* %7, %struct.key_value** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %for.body
  %8 = load %struct.key_value*, %struct.key_value** %current, align 8
  %cmp14 = icmp ne %struct.key_value* %8, null
  br i1 %cmp14, label %while.body, label %while.end53

while.body:                                       ; preds = %while.cond
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %destination_path, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %track_dir_path, i64 0, i64 0
  %call17 = call i8* @strcpy(i8* noundef %arraydecay15, i8* noundef %arraydecay16) #10
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %destination_path, i64 0, i64 0
  %call19 = call i8* @strcat(i8* noundef %arraydecay18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #10
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %destination_path, i64 0, i64 0
  %9 = load %struct.key_value*, %struct.key_value** %current, align 8
  %hash = getelementptr inbounds %struct.key_value, %struct.key_value* %9, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  %call22 = call i8* @strcat(i8* noundef %arraydecay20, i8* noundef %arraydecay21) #10
  %10 = load %struct.key_value*, %struct.key_value** %current, align 8
  %raw_path = getelementptr inbounds %struct.key_value, %struct.key_value* %10, i32 0, i32 1
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %raw_path, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %destination_path, i64 0, i64 0
  %call25 = call i32 @strcmp(i8* noundef %arraydecay23, i8* noundef %arraydecay24) #9
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end48

if.then27:                                        ; preds = %while.body
  %11 = load %struct.key_value*, %struct.key_value** %current, align 8
  %raw_path28 = getelementptr inbounds %struct.key_value, %struct.key_value* %11, i32 0, i32 1
  %arraydecay29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %raw_path28, i64 0, i64 0
  %call30 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay29, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %call30, %struct._IO_FILE** %changes_file, align 8
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %destination_path, i64 0, i64 0
  %call32 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay31, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  store %struct._IO_FILE* %call32, %struct._IO_FILE** %destination_file, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %changes_file, align 8
  %cmp33 = icmp eq %struct._IO_FILE* %12, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then27
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then27
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %destination_file, align 8
  %cmp36 = icmp eq %struct._IO_FILE* %13, null
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end35
  br label %while.cond39

while.cond39:                                     ; preds = %while.body43, %if.end38
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %changes_file, align 8
  %call41 = call i64 @fread(i8* noundef %arraydecay40, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef %14)
  store i64 %call41, i64* %bytesRead, align 8
  %cmp42 = icmp ugt i64 %call41, 0
  br i1 %cmp42, label %while.body43, label %while.end

while.body43:                                     ; preds = %while.cond39
  %arraydecay44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %15 = load i64, i64* %bytesRead, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %destination_file, align 8
  %call45 = call i64 @fwrite(i8* noundef %arraydecay44, i64 noundef 1, i64 noundef %15, %struct._IO_FILE* noundef %16)
  br label %while.cond39, !llvm.loop !17

while.end:                                        ; preds = %while.cond39
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %changes_file, align 8
  %call46 = call i32 @fclose(%struct._IO_FILE* noundef %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %destination_file, align 8
  %call47 = call i32 @fclose(%struct._IO_FILE* noundef %18)
  br label %if.end48

if.end48:                                         ; preds = %while.end, %while.body
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %track_file, align 8
  %20 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path = getelementptr inbounds %struct.key_value, %struct.key_value* %20, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path, i64 0, i64 0
  %21 = load %struct.key_value*, %struct.key_value** %current, align 8
  %hash50 = getelementptr inbounds %struct.key_value, %struct.key_value* %21, i32 0, i32 2
  %arraydecay51 = getelementptr inbounds [65 x i8], [65 x i8]* %hash50, i64 0, i64 0
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* noundef %arraydecay49, i8* noundef %arraydecay51)
  %22 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next = getelementptr inbounds %struct.key_value, %struct.key_value* %22, i32 0, i32 3
  %23 = load %struct.key_value*, %struct.key_value** %next, align 8
  store %struct.key_value* %23, %struct.key_value** %current, align 8
  br label %while.cond, !llvm.loop !18

while.end53:                                      ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end53
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %track_file, align 8
  %call54 = call i32 @fclose(%struct._IO_FILE* noundef %25)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then37, %if.then34, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_init_map_repo(%struct.repository* noundef %repo, %struct.hash_map* noundef %map, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %map.addr = alloca %struct.hash_map*, align 8
  %path.addr = alloca i8*, align 8
  %dir = alloca %struct.__dirstream*, align 8
  %entry1 = alloca %struct.dirent*, align 8
  %fullpath = alloca [4096 x i8], align 16
  %hash_string = alloca [65 x i8], align 16
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call noalias %struct.__dirstream* @opendir(i8* noundef %0)
  store %struct.__dirstream* %call, %struct.__dirstream** %dir, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %cmp = icmp eq %struct.__dirstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.45, i64 0, i64 0)) #13
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end
  %2 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call2 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %2)
  store %struct.dirent* %call2, %struct.dirent** %entry1, align 8
  %cmp3 = icmp ne %struct.dirent* %call2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %3, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #9
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name6 = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name6, i64 0, i64 0
  %call8 = call i32 @strcmp(i8* noundef %arraydecay7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #9
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true10, label %if.end30

land.lhs.true10:                                  ; preds = %land.lhs.true
  %5 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name11 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name11, i64 0, i64 0
  %call13 = call i32 @strcmp(i8* noundef %arraydecay12, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #9
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end30

if.then15:                                        ; preds = %land.lhs.true10
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fullpath, i64 0, i64 0
  %6 = load i8*, i8** %path.addr, align 8
  %7 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name17 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name17, i64 0, i64 0
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay16, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* noundef %6, i8* noundef %arraydecay18) #10
  %8 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_type = getelementptr inbounds %struct.dirent, %struct.dirent* %8, i32 0, i32 3
  %9 = load i8, i8* %d_type, align 2
  %conv = zext i8 %9 to i32
  %cmp20 = icmp eq i32 %conv, 4
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then15
  %10 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %11 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %arraydecay23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fullpath, i64 0, i64 0
  %call24 = call i32 @make_init_map_repo(%struct.repository* noundef %10, %struct.hash_map* noundef %11, i8* noundef %arraydecay23)
  br label %if.end29

if.else:                                          ; preds = %if.then15
  %arraydecay25 = getelementptr inbounds [65 x i8], [65 x i8]* %hash_string, i64 0, i64 0
  call void @create_hash(i8* noundef %arraydecay25)
  %12 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %arraydecay26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fullpath, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [65 x i8], [65 x i8]* %hash_string, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fullpath, i64 0, i64 0
  call void @insert_map(%struct.hash_map* noundef %12, i8* noundef %arraydecay26, i8* noundef %arraydecay27, i8* noundef %arraydecay28)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then22
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %land.lhs.true10, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: cold
declare dso_local void @perror(i8* noundef) #7

declare dso_local %struct.dirent* @readdir(%struct.__dirstream* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_commit(%struct.repository* noundef %repo, %struct.commit* noundef %commit, %struct.hash_map* noundef %map) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %commit.addr = alloca %struct.commit*, align 8
  %map.addr = alloca %struct.hash_map*, align 8
  %commit_path = alloca [1024 x i8], align 16
  %commit_file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %current = alloca %struct.key_value*, align 8
  %source_file = alloca %struct._IO_FILE*, align 8
  %destination_path = alloca [1024 x i8], align 16
  %destination_file = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [1024 x i8], align 16
  %bytesRead = alloca i64, align 8
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  store %struct.commit* %commit, %struct.commit** %commit.addr, align 8
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 0
  %0 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %0, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %arraydecay1) #10
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 0
  %call3 = call i8* @strcat(i8* noundef %arraydecay2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #10
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 0
  %1 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %hash = getelementptr inbounds %struct.commit, %struct.commit* %1, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  %call6 = call i8* @strcat(i8* noundef %arraydecay4, i8* noundef %arraydecay5) #10
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 0
  %call8 = call i32 @mkdir(i8* noundef %arraydecay7, i32 noundef 511) #10
  %cmp = icmp ne i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.51, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 0
  %call10 = call i8* @strcat(i8* noundef %arraydecay9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #10
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 0
  %call12 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %commit_file, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %cmp13 = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.53, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %4 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %parent_hash = getelementptr inbounds %struct.commit, %struct.commit* %4, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [65 x i8], [65 x i8]* %parent_hash, i64 0, i64 0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* noundef %arraydecay16)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %6 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %author = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 1
  %7 = load %struct.author*, %struct.author** %author, align 8
  %username = getelementptr inbounds %struct.author, %struct.author* %7, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [50 x i8], [50 x i8]* %username, i64 0, i64 0
  %8 = load %struct.commit*, %struct.commit** %commit.addr, align 8
  %author19 = getelementptr inbounds %struct.commit, %struct.commit* %8, i32 0, i32 1
  %9 = load %struct.author*, %struct.author** %author19, align 8
  %mail = getelementptr inbounds %struct.author, %struct.author* %9, i32 0, i32 1
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %mail, i64 0, i64 0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* noundef %arraydecay18, i8* noundef %arraydecay20)
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 0
  %call23 = call i64 @strlen(i8* noundef %arraydecay22) #9
  %sub = sub i64 %call23, 6
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %10 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %10, 10
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %11, i32 0, i32 0
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  %13 = load %struct.key_value*, %struct.key_value** %arrayidx25, align 8
  store %struct.key_value* %13, %struct.key_value** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.body
  %14 = load %struct.key_value*, %struct.key_value** %current, align 8
  %cmp26 = icmp ne %struct.key_value* %14, null
  br i1 %cmp26, label %while.body, label %while.end57

while.body:                                       ; preds = %while.cond
  %15 = load %struct.key_value*, %struct.key_value** %current, align 8
  %raw_path = getelementptr inbounds %struct.key_value, %struct.key_value* %15, i32 0, i32 1
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %raw_path, i64 0, i64 0
  %call28 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %call28, %struct._IO_FILE** %source_file, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %source_file, align 8
  %cmp29 = icmp eq %struct._IO_FILE* %16, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %while.body
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %while.body
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %destination_path, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_path, i64 0, i64 0
  %call34 = call i8* @strcpy(i8* noundef %arraydecay32, i8* noundef %arraydecay33) #10
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %destination_path, i64 0, i64 0
  %17 = load %struct.key_value*, %struct.key_value** %current, align 8
  %hash36 = getelementptr inbounds %struct.key_value, %struct.key_value* %17, i32 0, i32 2
  %arraydecay37 = getelementptr inbounds [65 x i8], [65 x i8]* %hash36, i64 0, i64 0
  %call38 = call i8* @strcat(i8* noundef %arraydecay35, i8* noundef %arraydecay37) #10
  %arraydecay39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %destination_path, i64 0, i64 0
  %call40 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay39, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  store %struct._IO_FILE* %call40, %struct._IO_FILE** %destination_file, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %destination_file, align 8
  %cmp41 = icmp eq %struct._IO_FILE* %18, null
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end31
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end31
  br label %while.cond44

while.cond44:                                     ; preds = %while.body48, %if.end43
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %source_file, align 8
  %call46 = call i64 @fread(i8* noundef %arraydecay45, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef %19)
  store i64 %call46, i64* %bytesRead, align 8
  %cmp47 = icmp ugt i64 %call46, 0
  br i1 %cmp47, label %while.body48, label %while.end

while.body48:                                     ; preds = %while.cond44
  %arraydecay49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %20 = load i64, i64* %bytesRead, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %destination_file, align 8
  %call50 = call i64 @fwrite(i8* noundef %arraydecay49, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %21)
  br label %while.cond44, !llvm.loop !21

while.end:                                        ; preds = %while.cond44
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %source_file, align 8
  %call51 = call i32 @fclose(%struct._IO_FILE* noundef %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %destination_file, align 8
  %call52 = call i32 @fclose(%struct._IO_FILE* noundef %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %25 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path = getelementptr inbounds %struct.key_value, %struct.key_value* %25, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path, i64 0, i64 0
  %26 = load %struct.key_value*, %struct.key_value** %current, align 8
  %hash54 = getelementptr inbounds %struct.key_value, %struct.key_value* %26, i32 0, i32 2
  %arraydecay55 = getelementptr inbounds [65 x i8], [65 x i8]* %hash54, i64 0, i64 0
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* noundef %arraydecay53, i8* noundef %arraydecay55)
  %27 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next = getelementptr inbounds %struct.key_value, %struct.key_value* %27, i32 0, i32 3
  %28 = load %struct.key_value*, %struct.key_value** %next, align 8
  store %struct.key_value* %28, %struct.key_value** %current, align 8
  br label %while.cond, !llvm.loop !22

while.end57:                                      ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end57
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %call58 = call i32 @fclose(%struct._IO_FILE* noundef %30)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then42, %if.then30, %if.then14, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_repository_file(%struct.repository* noundef %repo) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %repo_file_path = alloca [1024 x i8], align 16
  %repo_file = alloca %struct._IO_FILE*, align 8
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %repo_file_path, i64 0, i64 0
  %0 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %0, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %arraydecay1) #10
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %repo_file_path, i64 0, i64 0
  %call3 = call i8* @strcat(i8* noundef %arraydecay2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0)) #10
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %repo_file_path, i64 0, i64 0
  %call5 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %repo_file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %repo_file, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.89, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %repo_file, align 8
  %3 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir6 = getelementptr inbounds %struct.repository, %struct.repository* %3, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir6, i64 0, i64 0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* noundef %arraydecay7)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %repo_file, align 8
  %5 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %last_commit = getelementptr inbounds %struct.repository, %struct.repository* %5, i32 0, i32 3
  %6 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %hash = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* noundef %arraydecay9)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %repo_file, align 8
  %8 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %name = getelementptr inbounds %struct.repository, %struct.repository* %8, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* noundef %arraydecay11)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %repo_file, align 8
  %10 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %author = getelementptr inbounds %struct.repository, %struct.repository* %10, i32 0, i32 1
  %11 = load %struct.author*, %struct.author** %author, align 8
  %username = getelementptr inbounds %struct.author, %struct.author* %11, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [50 x i8], [50 x i8]* %username, i64 0, i64 0
  %12 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %author14 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 1
  %13 = load %struct.author*, %struct.author** %author14, align 8
  %mail = getelementptr inbounds %struct.author, %struct.author* %13, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [100 x i8], [100 x i8]* %mail, i64 0, i64 0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0), i8* noundef %arraydecay13, i8* noundef %arraydecay15)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %repo_file, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* noundef %14)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_tracked_dir(%struct.repository* noundef %repo) #0 {
entry:
  %retval = alloca i32, align 4
  %repo.addr = alloca %struct.repository*, align 8
  %tracked_dir_path = alloca [1024 x i8], align 16
  %tracked_dir = alloca %struct.__dirstream*, align 8
  %entry6 = alloca %struct.dirent*, align 8
  %file_path = alloca [1024 x i8], align 16
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %tracked_dir_path, i64 0, i64 0
  %0 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %0, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %arraydecay1) #10
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tracked_dir_path, i64 0, i64 0
  %call3 = call i8* @strcat(i8* noundef %arraydecay2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0)) #10
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tracked_dir_path, i64 0, i64 0
  %call5 = call noalias %struct.__dirstream* @opendir(i8* noundef %arraydecay4)
  store %struct.__dirstream* %call5, %struct.__dirstream** %tracked_dir, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %tracked_dir, align 8
  %cmp = icmp eq %struct.__dirstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.end
  %2 = load %struct.__dirstream*, %struct.__dirstream** %tracked_dir, align 8
  %call7 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %2)
  store %struct.dirent* %call7, %struct.dirent** %entry6, align 8
  %cmp8 = icmp ne %struct.dirent* %call7, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.dirent*, %struct.dirent** %entry6, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %3, i32 0, i32 4
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %call10 = call i32 @strcmp(i8* noundef %arraydecay9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #9
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.dirent*, %struct.dirent** %entry6, align 8
  %d_name12 = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name12, i64 0, i64 0
  %call14 = call i32 @strcmp(i8* noundef %arraydecay13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #9
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end32

if.then16:                                        ; preds = %land.lhs.true
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %file_path, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tracked_dir_path, i64 0, i64 0
  %call19 = call i8* @strcpy(i8* noundef %arraydecay17, i8* noundef %arraydecay18) #10
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %file_path, i64 0, i64 0
  %call21 = call i8* @strcat(i8* noundef %arraydecay20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #10
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %file_path, i64 0, i64 0
  %5 = load %struct.dirent*, %struct.dirent** %entry6, align 8
  %d_name23 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name23, i64 0, i64 0
  %call25 = call i8* @strcat(i8* noundef %arraydecay22, i8* noundef %arraydecay24) #10
  %arraydecay26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %file_path, i64 0, i64 0
  %call27 = call i32 @remove(i8* noundef %arraydecay26) #10
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then16
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0))
  %6 = load %struct.__dirstream*, %struct.__dirstream** %tracked_dir, align 8
  %call30 = call i32 @closedir(%struct.__dirstream* noundef %6)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then16
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %7 = load %struct.__dirstream*, %struct.__dirstream** %tracked_dir, align 8
  %call33 = call i32 @closedir(%struct.__dirstream* noundef %7)
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tracked_dir_path, i64 0, i64 0
  %call35 = call i32 @rmdir(i8* noundef %arraydecay34) #10
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %while.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %while.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then37, %if.then29, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare dso_local i32 @rmdir(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_repo_dir(i8* noundef %path, i8* noundef %root_path) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %root_path.addr = alloca i8*, align 8
  %dir = alloca %struct.__dirstream*, align 8
  %entry1 = alloca %struct.dirent*, align 8
  %full_path = alloca [4096 x i8], align 16
  store i8* %path, i8** %path.addr, align 8
  store i8* %root_path, i8** %root_path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call noalias %struct.__dirstream* @opendir(i8* noundef %0)
  store %struct.__dirstream* %call, %struct.__dirstream** %dir, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %cmp = icmp ne %struct.__dirstream* %1, null
  br i1 %cmp, label %if.then, label %if.end48

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.then
  %2 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call2 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %2)
  store %struct.dirent* %call2, %struct.dirent** %entry1, align 8
  %cmp3 = icmp ne %struct.dirent* %call2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %3, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #9
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name6 = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name6, i64 0, i64 0
  %call8 = call i32 @strcmp(i8* noundef %arraydecay7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #9
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true10, label %if.end37

land.lhs.true10:                                  ; preds = %land.lhs.true
  %5 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name11 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name11, i64 0, i64 0
  %call13 = call i32 @strcmp(i8* noundef %arraydecay12, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #9
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end37

if.then15:                                        ; preds = %land.lhs.true10
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %full_path, i64 0, i64 0
  %6 = load i8*, i8** %path.addr, align 8
  %7 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name17 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name17, i64 0, i64 0
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay16, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* noundef %6, i8* noundef %arraydecay18) #10
  %8 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_type = getelementptr inbounds %struct.dirent, %struct.dirent* %8, i32 0, i32 3
  %9 = load i8, i8* %d_type, align 2
  %conv = zext i8 %9 to i32
  %cmp20 = icmp eq i32 %conv, 4
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then15
  %arraydecay23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %full_path, i64 0, i64 0
  %10 = load i8*, i8** %root_path.addr, align 8
  %call24 = call i32 @reset_repo_dir(i8* noundef %arraydecay23, i8* noundef %10)
  %cmp25 = icmp eq i32 %call24, -1
  br i1 %cmp25, label %if.then27, label %if.end

if.then27:                                        ; preds = %if.then22
  %11 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call28 = call i32 @closedir(%struct.__dirstream* noundef %11)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then22
  br label %if.end36

if.else:                                          ; preds = %if.then15
  %arraydecay29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %full_path, i64 0, i64 0
  %call30 = call i32 @remove(i8* noundef %arraydecay29) #10
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.else
  %12 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call34 = call i32 @closedir(%struct.__dirstream* noundef %12)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true10, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  %13 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call38 = call i32 @closedir(%struct.__dirstream* noundef %13)
  %14 = load i8*, i8** %path.addr, align 8
  %15 = load i8*, i8** %root_path.addr, align 8
  %call39 = call i32 @strcmp(i8* noundef %14, i8* noundef %15) #9
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %while.end
  %16 = load i8*, i8** %path.addr, align 8
  %call43 = call i32 @rmdir(i8* noundef %16) #10
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true42
  store i32 -1, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %land.lhs.true42, %while.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.end47, %if.then46, %if.then33, %if.then27
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_rollback_commit(%struct.hash_map* noundef %map) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.hash_map*, align 8
  %i = alloca i32, align 4
  %current = alloca %struct.key_value*, align 8
  %src_file = alloca %struct._IO_FILE*, align 8
  %dest_file = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [1024 x i8], align 16
  %bytesRead = alloca i64, align 8
  store %struct.hash_map* %map, %struct.hash_map** %map.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.hash_map*, %struct.hash_map** %map.addr, align 8
  %table = getelementptr inbounds %struct.hash_map, %struct.hash_map* %1, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.key_value*], [10 x %struct.key_value*]* %table, i64 0, i64 %idxprom
  %3 = load %struct.key_value*, %struct.key_value** %arrayidx, align 8
  store %struct.key_value* %3, %struct.key_value** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.body
  %4 = load %struct.key_value*, %struct.key_value** %current, align 8
  %cmp1 = icmp ne %struct.key_value* %4, null
  br i1 %cmp1, label %while.body, label %while.end31

while.body:                                       ; preds = %while.cond
  %5 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path = getelementptr inbounds %struct.key_value, %struct.key_value* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %path, i64 0, i64 0
  %call = call i32 @create_directories(i8* noundef %arraydecay)
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.70, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct.key_value*, %struct.key_value** %current, align 8
  %raw_path = getelementptr inbounds %struct.key_value, %struct.key_value* %6, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %raw_path, i64 0, i64 0
  %call4 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %src_file, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %src_file, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %7, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.71, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path8 = getelementptr inbounds %struct.key_value, %struct.key_value* %8, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path8, i64 0, i64 0
  %call10 = call i32 @create_directories(i8* noundef %arraydecay9)
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.72, i64 0, i64 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %src_file, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef %9)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end7
  %10 = load %struct.key_value*, %struct.key_value** %current, align 8
  %path15 = getelementptr inbounds %struct.key_value, %struct.key_value* %10, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %path15, i64 0, i64 0
  %call17 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  store %struct._IO_FILE* %call17, %struct._IO_FILE** %dest_file, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %dest_file, align 8
  %cmp18 = icmp eq %struct._IO_FILE* %11, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end14
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.73, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %src_file, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* noundef %12)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end14
  br label %while.cond22

while.cond22:                                     ; preds = %while.body26, %if.end21
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %src_file, align 8
  %call24 = call i64 @fread(i8* noundef %arraydecay23, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef %13)
  store i64 %call24, i64* %bytesRead, align 8
  %cmp25 = icmp ugt i64 %call24, 0
  br i1 %cmp25, label %while.body26, label %while.end

while.body26:                                     ; preds = %while.cond22
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0
  %14 = load i64, i64* %bytesRead, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %dest_file, align 8
  %call28 = call i64 @fwrite(i8* noundef %arraydecay27, i64 noundef 1, i64 noundef %14, %struct._IO_FILE* noundef %15)
  br label %while.cond22, !llvm.loop !26

while.end:                                        ; preds = %while.cond22
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %src_file, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* noundef %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %dest_file, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* noundef %17)
  %18 = load %struct.key_value*, %struct.key_value** %current, align 8
  %next = getelementptr inbounds %struct.key_value, %struct.key_value* %18, i32 0, i32 3
  %19 = load %struct.key_value*, %struct.key_value** %next, align 8
  store %struct.key_value* %19, %struct.key_value** %current, align 8
  br label %while.cond, !llvm.loop !27

while.end31:                                      ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end31
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then19, %if.then12, %if.then6, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @load_commit(%struct.repository* noundef %repo, i8* noundef %hash) #0 {
entry:
  %retval = alloca %struct.commit*, align 8
  %repo.addr = alloca %struct.repository*, align 8
  %hash.addr = alloca i8*, align 8
  %commit_file_path = alloca [1024 x i8], align 16
  %commit_file = alloca %struct._IO_FILE*, align 8
  %commit = alloca %struct.commit*, align 8
  %author = alloca %struct.author*, align 8
  %line = alloca [1024 x i8], align 16
  %spacePos = alloca i8*, align 8
  store %struct.repository* %repo, %struct.repository** %repo.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %0 = load %struct.repository*, %struct.repository** %repo.addr, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %0, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %arraydecay1) #10
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %call3 = call i8* @strcat(i8* noundef %arraydecay2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #10
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %1 = load i8*, i8** %hash.addr, align 8
  %call5 = call i8* @strcat(i8* noundef %arraydecay4, i8* noundef %1) #10
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %call7 = call i8* @strcat(i8* noundef %arraydecay6, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #10
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %commit_file_path, i64 0, i64 0
  %call9 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %commit_file, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %cmp = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0))
  store %struct.commit* null, %struct.commit** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call10 = call noalias i8* @malloc(i64 noundef 152) #10
  %3 = bitcast i8* %call10 to %struct.commit*
  store %struct.commit* %3, %struct.commit** %commit, align 8
  %4 = load %struct.commit*, %struct.commit** %commit, align 8
  %hash11 = getelementptr inbounds %struct.commit, %struct.commit* %4, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [65 x i8], [65 x i8]* %hash11, i64 0, i64 0
  %5 = load i8*, i8** %hash.addr, align 8
  %call13 = call i8* @strcpy(i8* noundef %arraydecay12, i8* noundef %5) #10
  %call14 = call noalias i8* @malloc(i64 noundef 150) #10
  %6 = bitcast i8* %call14 to %struct.author*
  store %struct.author* %6, %struct.author** %author, align 8
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %call16 = call i8* @fgets(i8* noundef %arraydecay15, i32 noundef 1024, %struct._IO_FILE* noundef %7)
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call18 = call i64 @strlen(i8* noundef %arraydecay17) #9
  %sub = sub i64 %call18, 1
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %8 = load %struct.commit*, %struct.commit** %commit, align 8
  %parent_hash = getelementptr inbounds %struct.commit, %struct.commit* %8, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [65 x i8], [65 x i8]* %parent_hash, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call21 = call i8* @strcpy(i8* noundef %arraydecay19, i8* noundef %arraydecay20) #10
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %call23 = call i8* @fgets(i8* noundef %arraydecay22, i32 noundef 1024, %struct._IO_FILE* noundef %9)
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call25 = call i64 @strlen(i8* noundef %arraydecay24) #9
  %sub26 = sub i64 %call25, 1
  %arrayidx27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub26
  store i8 0, i8* %arrayidx27, align 1
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call29 = call i8* @strchr(i8* noundef %arraydecay28, i32 noundef 32) #9
  store i8* %call29, i8** %spacePos, align 8
  %10 = load i8*, i8** %spacePos, align 8
  %cmp30 = icmp eq i8* %10, null
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.77, i64 0, i64 0))
  %11 = load %struct.commit*, %struct.commit** %commit, align 8
  %12 = bitcast %struct.commit* %11 to i8*
  call void @free(i8* noundef %12) #10
  %13 = load %struct.author*, %struct.author** %author, align 8
  %14 = bitcast %struct.author* %13 to i8*
  call void @free(i8* noundef %14) #10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %commit_file, align 8
  %call32 = call i32 @fclose(%struct._IO_FILE* noundef %15)
  store %struct.commit* null, %struct.commit** %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end
  %16 = load i8*, i8** %spacePos, align 8
  store i8 0, i8* %16, align 1
  %17 = load %struct.author*, %struct.author** %author, align 8
  %username = getelementptr inbounds %struct.author, %struct.author* %17, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [50 x i8], [50 x i8]* %username, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call36 = call i8* @strcpy(i8* noundef %arraydecay34, i8* noundef %arraydecay35) #10
  %18 = load %struct.author*, %struct.author** %author, align 8
  %mail = getelementptr inbounds %struct.author, %struct.author* %18, i32 0, i32 1
  %arraydecay37 = getelementptr inbounds [100 x i8], [100 x i8]* %mail, i64 0, i64 0
  %19 = load i8*, i8** %spacePos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 1
  %call38 = call i8* @strcpy(i8* noundef %arraydecay37, i8* noundef %add.ptr) #10
  %20 = load %struct.author*, %struct.author** %author, align 8
  %21 = load %struct.commit*, %struct.commit** %commit, align 8
  %author39 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 1
  store %struct.author* %20, %struct.author** %author39, align 8
  %22 = load %struct.commit*, %struct.commit** %commit, align 8
  store %struct.commit* %22, %struct.commit** %retval, align 8
  br label %return

return:                                           ; preds = %if.end33, %if.then31, %if.then
  %23 = load %struct.commit*, %struct.commit** %retval, align 8
  ret %struct.commit* %23
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_directories(i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %path_copy = alloca i8*, align 8
  %last_slash = alloca i8*, align 8
  %parent_result = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 8
  %call = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0)) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %path.addr, align 8
  %call2 = call noalias i8* @strdup(i8* noundef %2) #10
  store i8* %call2, i8** %path_copy, align 8
  %3 = load i8*, i8** %path_copy, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i8*, i8** %path_copy, align 8
  %call6 = call i8* @strrchr(i8* noundef %4, i32 noundef 47) #9
  store i8* %call6, i8** %last_slash, align 8
  %5 = load i8*, i8** %last_slash, align 8
  %cmp7 = icmp ne i8* %5, null
  br i1 %cmp7, label %if.then8, label %if.end25

if.then8:                                         ; preds = %if.end5
  %6 = load i8*, i8** %last_slash, align 8
  store i8 0, i8* %6, align 1
  %7 = load i8*, i8** %path_copy, align 8
  %call9 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0)) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  store i32 1, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then8
  %8 = load i8*, i8** %path_copy, align 8
  %call13 = call i32 @create_directories(i8* noundef %8)
  store i32 %call13, i32* %parent_result, align 4
  %9 = load i32, i32* %parent_result, align 4
  %cmp14 = icmp ne i32 %9, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %10 = load i8*, i8** %path_copy, align 8
  call void @free(i8* noundef %10) #10
  %11 = load i32, i32* %parent_result, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %12 = load i8*, i8** %path_copy, align 8
  %call17 = call i32 @stat(i8* noundef %12, %struct.stat* noundef %st) #10
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end16
  %13 = load i8*, i8** %path_copy, align 8
  %call20 = call i32 @mkdir(i8* noundef %13, i32 noundef 511) #10
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  %14 = load i8*, i8** %path_copy, align 8
  call void @free(i8* noundef %14) #10
  store i32 -1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end5
  %15 = load i8*, i8** %path_copy, align 8
  call void @free(i8* noundef %15) #10
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then22, %if.then15, %if.then11, %if.then4, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #3

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_file(i8* noundef %filename, i8* noundef %content) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %content.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %content, i8** %content.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %3 = load i8*, i8** %content.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef %3)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* noundef %4)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_dir_exists(i8* noundef %parentDir, i8* noundef %targetDir) #0 {
entry:
  %retval = alloca i32, align 4
  %parentDir.addr = alloca i8*, align 8
  %targetDir.addr = alloca i8*, align 8
  %dir = alloca %struct.__dirstream*, align 8
  %entry1 = alloca %struct.dirent*, align 8
  store i8* %parentDir, i8** %parentDir.addr, align 8
  store i8* %targetDir, i8** %targetDir.addr, align 8
  %0 = load i8*, i8** %parentDir.addr, align 8
  %call = call noalias %struct.__dirstream* @opendir(i8* noundef %0)
  store %struct.__dirstream* %call, %struct.__dirstream** %dir, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %cmp = icmp eq %struct.__dirstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %2 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call2 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %2)
  store %struct.dirent* %call2, %struct.dirent** %entry1, align 8
  %cmp3 = icmp ne %struct.dirent* %call2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_type = getelementptr inbounds %struct.dirent, %struct.dirent* %3, i32 0, i32 3
  %4 = load i8, i8* %d_type, align 2
  %conv = zext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv, 4
  br i1 %cmp4, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %while.body
  %5 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %6 = load i8*, i8** %targetDir.addr, align 8
  %call6 = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %6) #9
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  %7 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call10 = call i32 @closedir(%struct.__dirstream* noundef %7)
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %8 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call12 = call i32 @closedir(%struct.__dirstream* noundef %8)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then9, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_contains(i8** noundef %arr, i8* noundef %str) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i8**, align 8
  %str.addr = alloca i8*, align 8
  store i8** %arr, i8*** %arr.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8**, i8*** %arr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8**, i8*** %arr.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i32 @strcmp(i8* noundef %3, i8* noundef %4) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_string(i8* noundef %dest, i8* noundef %src, ...) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %current = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  %call = call i8* @strcpy(i8* noundef %0, i8* noundef %1) #10
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %2, align 16
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %4 = bitcast i8* %3 to i8**
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %6 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ]
  %7 = load i8*, i8** %vaarg.addr, align 8
  store i8* %7, i8** %current, align 8
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  %8 = load i8*, i8** %dest.addr, align 8
  %9 = load i8*, i8** %current, align 8
  %call3 = call i8* @strcat(i8* noundef %8, i8* noundef %9) #10
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %vaarg.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_node* @removeFileByPath(%struct.file_node* noundef %head, i8* noundef %path) #0 {
entry:
  %retval = alloca %struct.file_node*, align 8
  %head.addr = alloca %struct.file_node*, align 8
  %path.addr = alloca i8*, align 8
  %current = alloca %struct.file_node*, align 8
  %previous = alloca %struct.file_node*, align 8
  store %struct.file_node* %head, %struct.file_node** %head.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct.file_node*, %struct.file_node** %head.addr, align 8
  store %struct.file_node* %0, %struct.file_node** %current, align 8
  store %struct.file_node* null, %struct.file_node** %previous, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %1 = load %struct.file_node*, %struct.file_node** %current, align 8
  %cmp = icmp ne %struct.file_node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.file_node*, %struct.file_node** %current, align 8
  %path1 = getelementptr inbounds %struct.file_node, %struct.file_node* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %path1, i64 0, i64 0
  %3 = load i8*, i8** %path.addr, align 8
  %call = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %3) #9
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  %4 = load %struct.file_node*, %struct.file_node** %previous, align 8
  %cmp3 = icmp eq %struct.file_node* %4, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %5 = load %struct.file_node*, %struct.file_node** %current, align 8
  %next = getelementptr inbounds %struct.file_node, %struct.file_node* %5, i32 0, i32 1
  %6 = load %struct.file_node*, %struct.file_node** %next, align 8
  store %struct.file_node* %6, %struct.file_node** %head.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct.file_node*, %struct.file_node** %current, align 8
  %next5 = getelementptr inbounds %struct.file_node, %struct.file_node* %7, i32 0, i32 1
  %8 = load %struct.file_node*, %struct.file_node** %next5, align 8
  %9 = load %struct.file_node*, %struct.file_node** %previous, align 8
  %next6 = getelementptr inbounds %struct.file_node, %struct.file_node* %9, i32 0, i32 1
  store %struct.file_node* %8, %struct.file_node** %next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %10 = load %struct.file_node*, %struct.file_node** %current, align 8
  %11 = bitcast %struct.file_node* %10 to i8*
  call void @free(i8* noundef %11) #10
  %12 = load %struct.file_node*, %struct.file_node** %head.addr, align 8
  store %struct.file_node* %12, %struct.file_node** %retval, align 8
  br label %return

if.end7:                                          ; preds = %while.body
  %13 = load %struct.file_node*, %struct.file_node** %current, align 8
  store %struct.file_node* %13, %struct.file_node** %previous, align 8
  %14 = load %struct.file_node*, %struct.file_node** %current, align 8
  %next8 = getelementptr inbounds %struct.file_node, %struct.file_node* %14, i32 0, i32 1
  %15 = load %struct.file_node*, %struct.file_node** %next8, align 8
  store %struct.file_node* %15, %struct.file_node** %current, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %16 = load %struct.file_node*, %struct.file_node** %head.addr, align 8
  store %struct.file_node* %16, %struct.file_node** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.end
  %17 = load %struct.file_node*, %struct.file_node** %retval, align 8
  ret %struct.file_node* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_node* @findByPath(%struct.file_node* noundef %head, i8* noundef %path) #0 {
entry:
  %retval = alloca %struct.file_node*, align 8
  %head.addr = alloca %struct.file_node*, align 8
  %path.addr = alloca i8*, align 8
  %current = alloca %struct.file_node*, align 8
  store %struct.file_node* %head, %struct.file_node** %head.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct.file_node*, %struct.file_node** %head.addr, align 8
  store %struct.file_node* %0, %struct.file_node** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.file_node*, %struct.file_node** %current, align 8
  %cmp = icmp ne %struct.file_node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.file_node*, %struct.file_node** %current, align 8
  %path1 = getelementptr inbounds %struct.file_node, %struct.file_node* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %path1, i64 0, i64 0
  %3 = load i8*, i8** %path.addr, align 8
  %call = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %3) #9
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %struct.file_node*, %struct.file_node** %current, align 8
  store %struct.file_node* %4, %struct.file_node** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load %struct.file_node*, %struct.file_node** %current, align 8
  %next = getelementptr inbounds %struct.file_node, %struct.file_node* %5, i32 0, i32 1
  %6 = load %struct.file_node*, %struct.file_node** %next, align 8
  store %struct.file_node* %6, %struct.file_node** %current, align 8
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  store %struct.file_node* null, %struct.file_node** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load %struct.file_node*, %struct.file_node** %retval, align 8
  ret %struct.file_node* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash(i8* noundef %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %hash_value = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  store i32 0, i32* %hash_value, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8*, i8** %path.addr, align 8
  %call = call i64 @strlen(i8* noundef %1) #9
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %hash_value, align 4
  %mul = mul i32 %2, 31
  %3 = load i8*, i8** %path.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %add = add i32 %mul, %conv2
  store i32 %add, i32* %hash_value, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %hash_value, align 4
  %rem = urem i32 %7, 10
  ret i32 %rem
}

; Function Attrs: nounwind
declare dso_local i8* @getcwd(i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @stpcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.repository* @load_repository() #0 {
entry:
  %retval = alloca %struct.repository*, align 8
  %repo = alloca %struct.repository*, align 8
  %last_commit = alloca %struct.commit*, align 8
  %author = alloca %struct.author*, align 8
  %repository_file_path = alloca [1024 x i8], align 16
  %repository_file = alloca %struct._IO_FILE*, align 8
  %line = alloca [1024 x i8], align 16
  %last_commit_path = alloca [1024 x i8], align 16
  %last_commit_file = alloca %struct._IO_FILE*, align 8
  %last_commit_author = alloca %struct.author*, align 8
  %spacePos = alloca i8*, align 8
  %call = call noalias i8* @malloc(i64 noundef 1120) #10
  %0 = bitcast i8* %call to %struct.repository*
  store %struct.repository* %0, %struct.repository** %repo, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 152) #10
  %1 = bitcast i8* %call1 to %struct.commit*
  store %struct.commit* %1, %struct.commit** %last_commit, align 8
  %call2 = call noalias i8* @malloc(i64 noundef 150) #10
  %2 = bitcast i8* %call2 to %struct.author*
  store %struct.author* %2, %struct.author** %author, align 8
  %3 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %4 = load %struct.repository*, %struct.repository** %repo, align 8
  %last_commit3 = getelementptr inbounds %struct.repository, %struct.repository* %4, i32 0, i32 3
  store %struct.commit* %3, %struct.commit** %last_commit3, align 8
  %5 = load %struct.author*, %struct.author** %author, align 8
  %6 = load %struct.repository*, %struct.repository** %repo, align 8
  %author4 = getelementptr inbounds %struct.repository, %struct.repository* %6, i32 0, i32 1
  store %struct.author* %5, %struct.author** %author4, align 8
  %7 = load %struct.repository*, %struct.repository** %repo, align 8
  %dir = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir, i64 0, i64 0
  %call5 = call i8* @getcwd(i8* noundef %arraydecay, i64 noundef 1024) #10
  %cmp = icmp eq i8* %call5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.91, i64 0, i64 0))
  store %struct.repository* null, %struct.repository** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %repository_file_path, i64 0, i64 0
  %8 = load %struct.repository*, %struct.repository** %repo, align 8
  %dir7 = getelementptr inbounds %struct.repository, %struct.repository* %8, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir7, i64 0, i64 0
  %call9 = call i8* @strcpy(i8* noundef %arraydecay6, i8* noundef %arraydecay8) #10
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %repository_file_path, i64 0, i64 0
  %call11 = call i8* @strcat(i8* noundef %arraydecay10, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0)) #10
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %repository_file_path, i64 0, i64 0
  %call13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %repository_file, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %cmp14 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.92, i64 0, i64 0))
  %10 = load %struct.author*, %struct.author** %author, align 8
  %11 = bitcast %struct.author* %10 to i8*
  call void @free(i8* noundef %11) #10
  %12 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %13 = bitcast %struct.commit* %12 to i8*
  call void @free(i8* noundef %13) #10
  %14 = load %struct.repository*, %struct.repository** %repo, align 8
  %15 = bitcast %struct.repository* %14 to i8*
  call void @free(i8* noundef %15) #10
  store %struct.repository* null, %struct.repository** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %call18 = call i8* @fgets(i8* noundef %arraydecay17, i32 noundef 1024, %struct._IO_FILE* noundef %16)
  %arraydecay19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %call20 = call i8* @fgets(i8* noundef %arraydecay19, i32 noundef 1024, %struct._IO_FILE* noundef %17)
  %arraydecay21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call22 = call i64 @strlen(i8* noundef %arraydecay21) #9
  %sub = sub i64 %call22, 1
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_path, i64 0, i64 0
  %18 = load %struct.repository*, %struct.repository** %repo, align 8
  %dir24 = getelementptr inbounds %struct.repository, %struct.repository* %18, i32 0, i32 2
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dir24, i64 0, i64 0
  %call26 = call i8* @strcpy(i8* noundef %arraydecay23, i8* noundef %arraydecay25) #10
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_path, i64 0, i64 0
  %call28 = call i8* @strcat(i8* noundef %arraydecay27, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #10
  %arraydecay29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_path, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call31 = call i8* @strcat(i8* noundef %arraydecay29, i8* noundef %arraydecay30) #10
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_path, i64 0, i64 0
  %call33 = call i8* @strcat(i8* noundef %arraydecay32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #10
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %last_commit_path, i64 0, i64 0
  %call35 = call noalias %struct._IO_FILE* @fopen(i8* noundef %arraydecay34, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  store %struct._IO_FILE* %call35, %struct._IO_FILE** %last_commit_file, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %last_commit_file, align 8
  %cmp36 = icmp eq %struct._IO_FILE* %19, null
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end16
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* noundef %20)
  %21 = load %struct.author*, %struct.author** %author, align 8
  %22 = bitcast %struct.author* %21 to i8*
  call void @free(i8* noundef %22) #10
  %23 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %24 = bitcast %struct.commit* %23 to i8*
  call void @free(i8* noundef %24) #10
  %25 = load %struct.repository*, %struct.repository** %repo, align 8
  %26 = bitcast %struct.repository* %25 to i8*
  call void @free(i8* noundef %26) #10
  store %struct.repository* null, %struct.repository** %retval, align 8
  br label %return

if.end39:                                         ; preds = %if.end16
  %27 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %hash = getelementptr inbounds %struct.commit, %struct.commit* %27, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [65 x i8], [65 x i8]* %hash, i64 0, i64 0
  %arraydecay41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call42 = call i8* @strcpy(i8* noundef %arraydecay40, i8* noundef %arraydecay41) #10
  %arraydecay43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %call44 = call i8* @fgets(i8* noundef %arraydecay43, i32 noundef 80, %struct._IO_FILE* noundef %28)
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call46 = call i64 @strlen(i8* noundef %arraydecay45) #9
  %sub47 = sub i64 %call46, 1
  %arrayidx48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub47
  store i8 0, i8* %arrayidx48, align 1
  %29 = load %struct.repository*, %struct.repository** %repo, align 8
  %name = getelementptr inbounds %struct.repository, %struct.repository* %29, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  %arraydecay50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call51 = call i8* @strcpy(i8* noundef %arraydecay49, i8* noundef %arraydecay50) #10
  %arraydecay52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %last_commit_file, align 8
  %call53 = call i8* @fgets(i8* noundef %arraydecay52, i32 noundef 1024, %struct._IO_FILE* noundef %30)
  %arraydecay54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call55 = call i64 @strlen(i8* noundef %arraydecay54) #9
  %sub56 = sub i64 %call55, 1
  %arrayidx57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub56
  store i8 0, i8* %arrayidx57, align 1
  %31 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %parent_hash = getelementptr inbounds %struct.commit, %struct.commit* %31, i32 0, i32 2
  %arraydecay58 = getelementptr inbounds [65 x i8], [65 x i8]* %parent_hash, i64 0, i64 0
  %arraydecay59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call60 = call i8* @strcpy(i8* noundef %arraydecay58, i8* noundef %arraydecay59) #10
  %call61 = call noalias i8* @malloc(i64 noundef 150) #10
  %32 = bitcast i8* %call61 to %struct.author*
  store %struct.author* %32, %struct.author** %last_commit_author, align 8
  %arraydecay62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %last_commit_file, align 8
  %call63 = call i8* @fgets(i8* noundef %arraydecay62, i32 noundef 151, %struct._IO_FILE* noundef %33)
  %arraydecay64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call65 = call i64 @strlen(i8* noundef %arraydecay64) #9
  %sub66 = sub i64 %call65, 1
  %arrayidx67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub66
  store i8 0, i8* %arrayidx67, align 1
  %arraydecay68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call69 = call i8* @strchr(i8* noundef %arraydecay68, i32 noundef 32) #9
  store i8* %call69, i8** %spacePos, align 8
  %34 = load i8*, i8** %spacePos, align 8
  %cmp70 = icmp eq i8* %34, null
  br i1 %cmp70, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end39
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.94, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %call72 = call i32 @fclose(%struct._IO_FILE* noundef %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %last_commit_file, align 8
  %call73 = call i32 @fclose(%struct._IO_FILE* noundef %36)
  %37 = load %struct.author*, %struct.author** %last_commit_author, align 8
  %38 = bitcast %struct.author* %37 to i8*
  call void @free(i8* noundef %38) #10
  %39 = load %struct.author*, %struct.author** %author, align 8
  %40 = bitcast %struct.author* %39 to i8*
  call void @free(i8* noundef %40) #10
  %41 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %42 = bitcast %struct.commit* %41 to i8*
  call void @free(i8* noundef %42) #10
  %43 = load %struct.repository*, %struct.repository** %repo, align 8
  %44 = bitcast %struct.repository* %43 to i8*
  call void @free(i8* noundef %44) #10
  store %struct.repository* null, %struct.repository** %retval, align 8
  br label %return

if.end74:                                         ; preds = %if.end39
  %45 = load i8*, i8** %spacePos, align 8
  store i8 0, i8* %45, align 1
  %46 = load %struct.author*, %struct.author** %last_commit_author, align 8
  %username = getelementptr inbounds %struct.author, %struct.author* %46, i32 0, i32 0
  %arraydecay75 = getelementptr inbounds [50 x i8], [50 x i8]* %username, i64 0, i64 0
  %arraydecay76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call77 = call i8* @strcpy(i8* noundef %arraydecay75, i8* noundef %arraydecay76) #10
  %47 = load %struct.author*, %struct.author** %last_commit_author, align 8
  %mail = getelementptr inbounds %struct.author, %struct.author* %47, i32 0, i32 1
  %arraydecay78 = getelementptr inbounds [100 x i8], [100 x i8]* %mail, i64 0, i64 0
  %48 = load i8*, i8** %spacePos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 1
  %call79 = call i8* @strcpy(i8* noundef %arraydecay78, i8* noundef %add.ptr) #10
  %49 = load %struct.author*, %struct.author** %last_commit_author, align 8
  %50 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %author80 = getelementptr inbounds %struct.commit, %struct.commit* %50, i32 0, i32 1
  store %struct.author* %49, %struct.author** %author80, align 8
  %arraydecay81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %call82 = call i8* @fgets(i8* noundef %arraydecay81, i32 noundef 151, %struct._IO_FILE* noundef %51)
  %arraydecay83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call84 = call i64 @strlen(i8* noundef %arraydecay83) #9
  %sub85 = sub i64 %call84, 1
  %arrayidx86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 %sub85
  store i8 0, i8* %arrayidx86, align 1
  %arraydecay87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call88 = call i8* @strchr(i8* noundef %arraydecay87, i32 noundef 32) #9
  store i8* %call88, i8** %spacePos, align 8
  %52 = load i8*, i8** %spacePos, align 8
  %cmp89 = icmp eq i8* %52, null
  br i1 %cmp89, label %if.then90, label %if.end93

if.then90:                                        ; preds = %if.end74
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.95, i64 0, i64 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %call91 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %last_commit_file, align 8
  %call92 = call i32 @fclose(%struct._IO_FILE* noundef %54)
  %55 = load %struct.author*, %struct.author** %last_commit_author, align 8
  %56 = bitcast %struct.author* %55 to i8*
  call void @free(i8* noundef %56) #10
  %57 = load %struct.author*, %struct.author** %author, align 8
  %58 = bitcast %struct.author* %57 to i8*
  call void @free(i8* noundef %58) #10
  %59 = load %struct.commit*, %struct.commit** %last_commit, align 8
  %60 = bitcast %struct.commit* %59 to i8*
  call void @free(i8* noundef %60) #10
  %61 = load %struct.repository*, %struct.repository** %repo, align 8
  %62 = bitcast %struct.repository* %61 to i8*
  call void @free(i8* noundef %62) #10
  store %struct.repository* null, %struct.repository** %retval, align 8
  br label %return

if.end93:                                         ; preds = %if.end74
  %63 = load i8*, i8** %spacePos, align 8
  store i8 0, i8* %63, align 1
  %64 = load %struct.author*, %struct.author** %author, align 8
  %username94 = getelementptr inbounds %struct.author, %struct.author* %64, i32 0, i32 0
  %arraydecay95 = getelementptr inbounds [50 x i8], [50 x i8]* %username94, i64 0, i64 0
  %arraydecay96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i64 0, i64 0
  %call97 = call i8* @strcpy(i8* noundef %arraydecay95, i8* noundef %arraydecay96) #10
  %65 = load %struct.author*, %struct.author** %author, align 8
  %mail98 = getelementptr inbounds %struct.author, %struct.author* %65, i32 0, i32 1
  %arraydecay99 = getelementptr inbounds [100 x i8], [100 x i8]* %mail98, i64 0, i64 0
  %66 = load i8*, i8** %spacePos, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %66, i64 1
  %call101 = call i8* @strcpy(i8* noundef %arraydecay99, i8* noundef %add.ptr100) #10
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %repository_file, align 8
  %call102 = call i32 @fclose(%struct._IO_FILE* noundef %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %last_commit_file, align 8
  %call103 = call i32 @fclose(%struct._IO_FILE* noundef %68)
  %69 = load %struct.repository*, %struct.repository** %repo, align 8
  store %struct.repository* %69, %struct.repository** %retval, align 8
  br label %return

return:                                           ; preds = %if.end93, %if.then90, %if.then71, %if.then37, %if.then15, %if.then
  %70 = load %struct.repository*, %struct.repository** %retval, align 8
  ret %struct.repository* %70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.author* @load_author() #0 {
entry:
  %retval = alloca %struct.author*, align 8
  %author = alloca %struct.author*, align 8
  %vsync_config_path = alloca i8*, align 8
  %vsync_config_file = alloca %struct._IO_FILE*, align 8
  %line = alloca [151 x i8], align 16
  %spacePos = alloca i8*, align 8
  %call = call noalias i8* @malloc(i64 noundef 150) #10
  %0 = bitcast i8* %call to %struct.author*
  store %struct.author* %0, %struct.author** %author, align 8
  %call1 = call i8* @getenv(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i64 0, i64 0)) #10
  store i8* %call1, i8** %vsync_config_path, align 8
  %1 = load i8*, i8** %vsync_config_path, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %vsync_config_path, align 8
  %call2 = call noalias %struct._IO_FILE* @fopen(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %vsync_config_file, align 8
  %arraydecay = getelementptr inbounds [151 x i8], [151 x i8]* %line, i64 0, i64 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %vsync_config_file, align 8
  %call3 = call i8* @fgets(i8* noundef %arraydecay, i32 noundef 151, %struct._IO_FILE* noundef %3)
  %arraydecay4 = getelementptr inbounds [151 x i8], [151 x i8]* %line, i64 0, i64 0
  %call5 = call i8* @strchr(i8* noundef %arraydecay4, i32 noundef 32) #9
  store i8* %call5, i8** %spacePos, align 8
  %4 = load i8*, i8** %spacePos, align 8
  %cmp6 = icmp ne i8* %4, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %5 = load i8*, i8** %spacePos, align 8
  store i8 0, i8* %5, align 1
  %6 = load %struct.author*, %struct.author** %author, align 8
  %username = getelementptr inbounds %struct.author, %struct.author* %6, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [50 x i8], [50 x i8]* %username, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [151 x i8], [151 x i8]* %line, i64 0, i64 0
  %call10 = call i8* @strcpy(i8* noundef %arraydecay8, i8* noundef %arraydecay9) #10
  %7 = load %struct.author*, %struct.author** %author, align 8
  %mail = getelementptr inbounds %struct.author, %struct.author* %7, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [100 x i8], [100 x i8]* %mail, i64 0, i64 0
  %8 = load i8*, i8** %spacePos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %call12 = call i8* @strcpy(i8* noundef %arraydecay11, i8* noundef %add.ptr) #10
  %9 = load %struct.author*, %struct.author** %author, align 8
  %mail13 = getelementptr inbounds %struct.author, %struct.author* %9, i32 0, i32 1
  %10 = load %struct.author*, %struct.author** %author, align 8
  %mail14 = getelementptr inbounds %struct.author, %struct.author* %10, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [100 x i8], [100 x i8]* %mail14, i64 0, i64 0
  %call16 = call i64 @strlen(i8* noundef %arraydecay15) #9
  %sub = sub i64 %call16, 1
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %mail13, i64 0, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %11 = load %struct.author*, %struct.author** %author, align 8
  store %struct.author* %11, %struct.author** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry
  %12 = load %struct.author*, %struct.author** %author, align 8
  %13 = bitcast %struct.author* %12 to i8*
  call void @free(i8* noundef %13) #10
  call void @logger(i32 noundef 2, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.97, i64 0, i64 0))
  store %struct.author* null, %struct.author** %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then7
  %14 = load %struct.author*, %struct.author** %retval, align 8
  ret %struct.author* %14
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold }

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
