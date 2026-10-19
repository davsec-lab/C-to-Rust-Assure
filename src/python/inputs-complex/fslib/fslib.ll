; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/fslib.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/fslib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._arc = type { i32, float, i32, i32 }
%struct._sr = type { float (float, float)*, float (float, float)*, float, float }
%struct._bitset = type { i32*, i32 }
%struct._symt = type { i64, i64, i8**, %struct._hash* }
%struct._hash = type { %struct._bucket*, i64, i64, i64, i64, i64 (i8*)*, i32 (i8*, i8*)* }
%struct._bucket = type { %struct._bitem*, %struct._bitem* }
%struct._bitem = type { i8*, i8*, %struct._bitem* }
%struct._fst = type { i32, i32, i32, i8, i8, %struct._state* }
%struct._state = type { i32, i32, float, i32, %struct._arc* }
%struct._spair = type { i32, i32 }
%struct._queue = type { %struct._qnode*, %struct._qnode*, i64, i64 }
%struct._qnode = type { %struct._qnode*, [1 x i8] }
%struct._match_item = type { %struct._arc, %struct._arc }
%struct._arc_pair = type { %struct._arc, %struct._arc }
%struct._heap = type { i64, i64, i64, i64, i32 (i8*, i8*)*, %struct._hash*, i8* }
%struct._fst_iter = type { %struct._fst*, %struct._bitset*, %struct._queue*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"a->n_words == b->n_words\00", align 1
@.str.3 = private unnamed_addr constant [97 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/bitset.c\00", align 1
@__PRETTY_FUNCTION__.bitset_union = private unnamed_addr constant [60 x i8] c"void bitset_union(struct _bitset *, const struct _bitset *)\00", align 1
@__PRETTY_FUNCTION__.bitset_intersect = private unnamed_addr constant [64 x i8] c"void bitset_intersect(struct _bitset *, const struct _bitset *)\00", align 1
@_fst_header = internal constant i32 1718825009, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Incorrect token: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Unknown token: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%zd\09%zd\09%zd\09%zd\09%f\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%zd\09%zd\09%zd\09%zd\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%zd\09%f\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%zd\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%s\09%s\09%s\09%s\09%f\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s\09%s\09%s\09%s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s\09%f\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%s\09%s\09%s\09%f\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%s\09%s\09%s\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Invalid input line %zd: %s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"<start>\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Invalid input line %zd: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"digraph T {\0A\09rankdir = LR;\0A\09orientation = Landscape;\0A\00", align 1
@header = internal global i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@footer = internal global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), align 8
@.str.21 = private unnamed_addr constant [50 x i8] c"\09%u [label = \22%u\22, shape = circle, style = %s ];\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"filled\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"\09%u [label = \22%u\22, shape = doublecircle, style = filled ];\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"\09\09%u -> %u [ label = \22%u:%u/%g\22 ];\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"\09%s [label = \22%s\22, shape = circle, style = %s ];\0A\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"\09%s [label = \22%s\22, shape = doublecircle, style = filled ];\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"\09\09%s -> %s [ label = \22%s:%s/%g\22 ];\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Wrong file format\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"Error opening file: %s\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"heap != NULL\00", align 1
@.str.35 = private unnamed_addr constant [95 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/heap.c\00", align 1
@__PRETTY_FUNCTION__.heap_remove = private unnamed_addr constant [33 x i8] c"void heap_remove(struct _heap *)\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"heap->items != NULL\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"i < heap->n_items\00", align 1
@__PRETTY_FUNCTION__.heap_heapify = private unnamed_addr constant [42 x i8] c"void heap_heapify(struct _heap *, size_t)\00", align 1
@__PRETTY_FUNCTION__.heap_update = private unnamed_addr constant [49 x i8] c"void heap_update(struct _heap *, void *, size_t)\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"heap->cmp(item, items + i*s)\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"heap->ht != NULL\00", align 1
@__PRETTY_FUNCTION__.heap_find = private unnamed_addr constant [50 x i8] c"void *heap_find(struct _heap *, void *, size_t *)\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"%u\09%u\09%u\09%u\09%.5f\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"%u\09%f\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"%s\09%s\09%s\09%s\09%.5f\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%s\09%f\0A\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"q != NULL\00", align 1
@.str.45 = private unnamed_addr constant [96 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/queue.c\00", align 1
@__PRETTY_FUNCTION__.queue_enque = private unnamed_addr constant [42 x i8] c"void queue_enque(struct _queue *, void *)\00", align 1
@__PRETTY_FUNCTION__.queue_deque = private unnamed_addr constant [43 x i8] c"void *queue_deque(struct _queue *, void *)\00", align 1
@W = internal global float* null, align 8
@B = internal global %struct._arc* null, align 8
@sr = internal global %struct._sr zeroinitializer, align 8
@.str.46 = private unnamed_addr constant [28 x i8] c"fst->sr_type == SR_TROPICAL\00", align 1
@.str.47 = private unnamed_addr constant [99 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/shortest.c\00", align 1
@__PRETTY_FUNCTION__.fst_shortest = private unnamed_addr constant [62 x i8] c"struct _fst *fst_shortest(const struct _fst *, struct _fst *)\00", align 1
@sr_real = dso_local constant %struct._sr { float (float, float)* @real_sum, float (float, float)* @real_product, float 0.000000e+00, float 1.000000e+00 }, align 8
@sr_tropical = dso_local constant %struct._sr { float (float, float)* @tropical_sum, float (float, float)* @tropical_product, float 0x47EFFFFFE0000000, float 0.000000e+00 }, align 8
@.str.48 = private unnamed_addr constant [7 x i8] c"%s\09%zu\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"%s\09%zd\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"Error opening file: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"st->sym != NULL\00", align 1
@.str.53 = private unnamed_addr constant [95 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/fslib/src/symt.c\00", align 1
@__PRETTY_FUNCTION__.symt_add = private unnamed_addr constant [53 x i8] c"char *symt_add(struct _symt *, size_t, const char *)\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"st->n_max != 0\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"%s\09%zd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %shift = alloca i32, align 4
  %x = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %shift, align 4
  %0 = bitcast [10 x i32]* %x to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %1 = bitcast i8* %0 to [10 x i32]*
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 0
  store i32 1, i32* %2, align 16
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 1
  store i32 2, i32* %3, align 4
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 3
  store i32 2, i32* %4, align 4
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 5
  store i32 2, i32* %5, align 4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 8
  store i32 5, i32* %6, align 16
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 9
  store i32 1, i32* %7, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %x, i64 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %10, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %shift, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %shift, align 4
  br label %if.end8

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %shift, align 4
  %cmp2 = icmp ne i32 %12, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %x, i64 0, i64 %idxprom4
  %14 = load i32, i32* %arrayidx5, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %shift, align 4
  %sub = sub nsw i32 %15, %16
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %x, i64 0, i64 %idxprom6
  store i32 %14, i32* %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %17 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %17, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end
  %18 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %18, 10
  br i1 %cmp11, label %for.body12, label %for.end17

for.body12:                                       ; preds = %for.cond10
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %x, i64 0, i64 %idxprom13
  %20 = load i32, i32* %arrayidx14, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %20)
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %21 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond10, !llvm.loop !6

for.end17:                                        ; preds = %for.cond10
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

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
define internal i32 @bindex(i32 noundef %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %div = sdiv i32 %0, 32
  ret i32 %div
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boffset(i32 noundef %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %rem = srem i32 %0, 32
  ret i32 %rem
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._bitset* @bitset_create(i32 noundef %nbits) #0 {
entry:
  %nbits.addr = alloca i32, align 4
  %bitset = alloca %struct._bitset*, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 16) #8
  %0 = bitcast i8* %call to %struct._bitset*
  store %struct._bitset* %0, %struct._bitset** %bitset, align 8
  %1 = load i32, i32* %nbits.addr, align 4
  %div = sdiv i32 %1, 32
  %add = add nsw i32 %div, 1
  %2 = load %struct._bitset*, %struct._bitset** %bitset, align 8
  %n_words = getelementptr inbounds %struct._bitset, %struct._bitset* %2, i32 0, i32 1
  store i32 %add, i32* %n_words, align 8
  %3 = load %struct._bitset*, %struct._bitset** %bitset, align 8
  %n_words1 = getelementptr inbounds %struct._bitset, %struct._bitset* %3, i32 0, i32 1
  %4 = load i32, i32* %n_words1, align 8
  %conv = sext i32 %4 to i64
  %mul = mul i64 4, %conv
  %call2 = call noalias i8* @malloc(i64 noundef %mul) #8
  %5 = bitcast i8* %call2 to i32*
  %6 = load %struct._bitset*, %struct._bitset** %bitset, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %6, i32 0, i32 0
  store i32* %5, i32** %words, align 8
  %7 = load %struct._bitset*, %struct._bitset** %bitset, align 8
  call void @bitset_clear_all(%struct._bitset* noundef %7)
  %8 = load %struct._bitset*, %struct._bitset** %bitset, align 8
  ret %struct._bitset* %8
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitset_clear_all(%struct._bitset* noundef %bitset) #0 {
entry:
  %bitset.addr = alloca %struct._bitset*, align 8
  %i = alloca i32, align 4
  store %struct._bitset* %bitset, %struct._bitset** %bitset.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %n_words = getelementptr inbounds %struct._bitset, %struct._bitset* %1, i32 0, i32 1
  %2 = load i32, i32* %n_words, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %3, i32 0, i32 0
  %4 = load i32*, i32** %words, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitset_remove(%struct._bitset* noundef %bitset) #0 {
entry:
  %bitset.addr = alloca %struct._bitset*, align 8
  store %struct._bitset* %bitset, %struct._bitset** %bitset.addr, align 8
  %0 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %0, i32 0, i32 0
  %1 = load i32*, i32** %words, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* noundef %2) #8
  %3 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %4 = bitcast %struct._bitset* %3 to i8*
  call void @free(i8* noundef %4) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitset_set(%struct._bitset* noundef %bitset, i32 noundef %b) #0 {
entry:
  %bitset.addr = alloca %struct._bitset*, align 8
  %b.addr = alloca i32, align 4
  store %struct._bitset* %bitset, %struct._bitset** %bitset.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %call = call i32 @boffset(i32 noundef %0)
  %shl = shl i32 1, %call
  %1 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %1, i32 0, i32 0
  %2 = load i32*, i32** %words, align 8
  %3 = load i32, i32* %b.addr, align 4
  %call1 = call i32 @bindex(i32 noundef %3)
  %idxprom = sext i32 %call1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %or = or i32 %4, %shl
  store i32 %or, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitset_clear(%struct._bitset* noundef %bitset, i32 noundef %b) #0 {
entry:
  %bitset.addr = alloca %struct._bitset*, align 8
  %b.addr = alloca i32, align 4
  store %struct._bitset* %bitset, %struct._bitset** %bitset.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %call = call i32 @boffset(i32 noundef %0)
  %shl = shl i32 1, %call
  %neg = xor i32 %shl, -1
  %1 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %1, i32 0, i32 0
  %2 = load i32*, i32** %words, align 8
  %3 = load i32, i32* %b.addr, align 4
  %call1 = call i32 @bindex(i32 noundef %3)
  %idxprom = sext i32 %call1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and = and i32 %4, %neg
  store i32 %and, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitset_get(%struct._bitset* noundef %bitset, i32 noundef %b) #0 {
entry:
  %bitset.addr = alloca %struct._bitset*, align 8
  %b.addr = alloca i32, align 4
  store %struct._bitset* %bitset, %struct._bitset** %bitset.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %0, i32 0, i32 0
  %1 = load i32*, i32** %words, align 8
  %2 = load i32, i32* %b.addr, align 4
  %call = call i32 @bindex(i32 noundef %2)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %b.addr, align 4
  %call1 = call i32 @boffset(i32 noundef %4)
  %shl = shl i32 1, %call1
  %and = and i32 %3, %shl
  %tobool = icmp ne i32 %and, 0
  %5 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitset_set_all(%struct._bitset* noundef %bitset) #0 {
entry:
  %bitset.addr = alloca %struct._bitset*, align 8
  %i = alloca i32, align 4
  store %struct._bitset* %bitset, %struct._bitset** %bitset.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %n_words = getelementptr inbounds %struct._bitset, %struct._bitset* %1, i32 0, i32 1
  %2 = load i32, i32* %n_words, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %3, i32 0, i32 0
  %4 = load i32*, i32** %words, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitset_union(%struct._bitset* noundef %a, %struct._bitset* noundef %b) #0 {
entry:
  %a.addr = alloca %struct._bitset*, align 8
  %b.addr = alloca %struct._bitset*, align 8
  %i = alloca i32, align 4
  store %struct._bitset* %a, %struct._bitset** %a.addr, align 8
  store %struct._bitset* %b, %struct._bitset** %b.addr, align 8
  %0 = load %struct._bitset*, %struct._bitset** %a.addr, align 8
  %n_words = getelementptr inbounds %struct._bitset, %struct._bitset* %0, i32 0, i32 1
  %1 = load i32, i32* %n_words, align 8
  %2 = load %struct._bitset*, %struct._bitset** %b.addr, align 8
  %n_words1 = getelementptr inbounds %struct._bitset, %struct._bitset* %2, i32 0, i32 1
  %3 = load i32, i32* %n_words1, align 8
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.bitset_union, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct._bitset*, %struct._bitset** %a.addr, align 8
  %n_words2 = getelementptr inbounds %struct._bitset, %struct._bitset* %5, i32 0, i32 1
  %6 = load i32, i32* %n_words2, align 8
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._bitset*, %struct._bitset** %b.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %7, i32 0, i32 0
  %8 = load i32*, i32** %words, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load %struct._bitset*, %struct._bitset** %a.addr, align 8
  %words4 = getelementptr inbounds %struct._bitset, %struct._bitset* %11, i32 0, i32 0
  %12 = load i32*, i32** %words4, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %or = or i32 %14, %10
  store i32 %or, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitset_intersect(%struct._bitset* noundef %a, %struct._bitset* noundef %b) #0 {
entry:
  %a.addr = alloca %struct._bitset*, align 8
  %b.addr = alloca %struct._bitset*, align 8
  %i = alloca i32, align 4
  store %struct._bitset* %a, %struct._bitset** %a.addr, align 8
  store %struct._bitset* %b, %struct._bitset** %b.addr, align 8
  %0 = load %struct._bitset*, %struct._bitset** %a.addr, align 8
  %n_words = getelementptr inbounds %struct._bitset, %struct._bitset* %0, i32 0, i32 1
  %1 = load i32, i32* %n_words, align 8
  %2 = load %struct._bitset*, %struct._bitset** %b.addr, align 8
  %n_words1 = getelementptr inbounds %struct._bitset, %struct._bitset* %2, i32 0, i32 1
  %3 = load i32, i32* %n_words1, align 8
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.bitset_intersect, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct._bitset*, %struct._bitset** %a.addr, align 8
  %n_words2 = getelementptr inbounds %struct._bitset, %struct._bitset* %5, i32 0, i32 1
  %6 = load i32, i32* %n_words2, align 8
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._bitset*, %struct._bitset** %b.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %7, i32 0, i32 0
  %8 = load i32*, i32** %words, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load %struct._bitset*, %struct._bitset** %a.addr, align 8
  %words4 = getelementptr inbounds %struct._bitset, %struct._bitset* %11, i32 0, i32 0
  %12 = load i32*, i32** %words4, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %and = and i32 %14, %10
  store i32 %and, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._bitset* @bitset_toggle_all(%struct._bitset* noundef %bitset) #0 {
entry:
  %bitset.addr = alloca %struct._bitset*, align 8
  %i = alloca i32, align 4
  store %struct._bitset* %bitset, %struct._bitset** %bitset.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %n_words = getelementptr inbounds %struct._bitset, %struct._bitset* %1, i32 0, i32 1
  %2 = load i32, i32* %n_words, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  %words = getelementptr inbounds %struct._bitset, %struct._bitset* %3, i32 0, i32 0
  %4 = load i32*, i32** %words, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %xor = xor i32 %6, -1
  store i32 %xor, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %8 = load %struct._bitset*, %struct._bitset** %bitset.addr, align 8
  ret %struct._bitset* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trn__src_compile(i8* noundef %token, %struct._symt* noundef %st) #0 {
entry:
  %retval = alloca i64, align 8
  %token.addr = alloca i8*, align 8
  %st.addr = alloca %struct._symt*, align 8
  %end = alloca i8*, align 8
  %dig = alloca i64, align 8
  store i8* %token, i8** %token.addr, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  %0 = load i8*, i8** %token.addr, align 8
  %call = call i64 @strtol(i8* noundef %0, i8** noundef %end, i32 noundef 10) #8
  store i64 %call, i64* %dig, align 8
  %1 = load i8*, i8** %end, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %dig, align 8
  store i64 %3, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %token.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* noundef %5)
  store i64 -1, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8
  ret i64 %6
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trt__src_compile(i8* noundef %token, %struct._symt* noundef %st) #0 {
entry:
  %token.addr = alloca i8*, align 8
  %st.addr = alloca %struct._symt*, align 8
  %t = alloca i64, align 8
  store i8* %token, i8** %token.addr, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  %0 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %1 = load i8*, i8** %token.addr, align 8
  %call = call i64 @symt_getr(%struct._symt* noundef %0, i8* noundef %1)
  store i64 %call, i64* %t, align 8
  %2 = load i64, i64* %t, align 8
  %cmp = icmp eq i64 -1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %token.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %t, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @symt_getr(%struct._symt* noundef %st, i8* noundef %token) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %token.addr = alloca i8*, align 8
  %id = alloca i64, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  store i64 -1, i64* %id, align 8
  %0 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev = getelementptr inbounds %struct._symt, %struct._symt* %0, i32 0, i32 3
  %1 = load %struct._hash*, %struct._hash** %rev, align 8
  %cmp = icmp eq %struct._hash* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %call = call %struct._hash* @symt_reverse(%struct._symt* noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev1 = getelementptr inbounds %struct._symt, %struct._symt* %3, i32 0, i32 3
  %4 = load %struct._hash*, %struct._hash** %rev1, align 8
  %5 = load i8*, i8** %token.addr, align 8
  %6 = bitcast i64* %id to i8*
  %call2 = call i8* @hash_get(%struct._hash* noundef %4, i8* noundef %5, i8* noundef %6)
  %7 = load i64, i64* %id, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_add_arc(%struct._fst* noundef %fst, i64 noundef %sa, i64 noundef %sb, i64 noundef %li, i64 noundef %lo, float noundef %w) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %sa.addr = alloca i64, align 8
  %sb.addr = alloca i64, align 8
  %li.addr = alloca i64, align 8
  %lo.addr = alloca i64, align 8
  %w.addr = alloca float, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i64 %sa, i64* %sa.addr, align 8
  store i64 %sb, i64* %sb.addr, align 8
  store i64 %li, i64* %li.addr, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store float %w, float* %w.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %sa.addr, align 8
  %add = add i64 %0, 1
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 1
  %2 = load i32, i32* %n_states, align 4
  %conv = zext i32 %2 to i64
  %cmp = icmp ugt i64 %add, %conv
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load i64, i64* %sb.addr, align 8
  %add2 = add i64 %3, 1
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states3 = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 1
  %5 = load i32, i32* %n_states3, align 4
  %conv4 = zext i32 %5 to i64
  %cmp5 = icmp ugt i64 %add2, %conv4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp5, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %call = call i32 @fst_add_state(%struct._fst* noundef %7)
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %lor.end
  %8 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %9 = load i64, i64* %sa.addr, align 8
  %conv7 = trunc i64 %9 to i32
  %10 = load i64, i64* %sb.addr, align 8
  %conv8 = trunc i64 %10 to i32
  %11 = load i64, i64* %li.addr, align 8
  %conv9 = trunc i64 %11 to i32
  %12 = load i64, i64* %lo.addr, align 8
  %conv10 = trunc i64 %12 to i32
  %13 = load float, float* %w.addr, align 4
  %call11 = call i32 @fst_add_arc(%struct._fst* noundef %8, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10, float noundef %13)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_add_state(%struct._fst* noundef %fst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %state = alloca %struct._state*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 1
  %1 = load i32, i32* %n_states, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %n_states, align 4
  %2 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states1 = getelementptr inbounds %struct._fst, %struct._fst* %2, i32 0, i32 1
  %3 = load i32, i32* %n_states1, align 4
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_max = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 2
  %5 = load i32, i32* %n_max, align 8
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states2 = getelementptr inbounds %struct._fst, %struct._fst* %6, i32 0, i32 1
  %7 = load i32, i32* %n_states2, align 4
  %mul = mul i32 %7, 2
  %8 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_max3 = getelementptr inbounds %struct._fst, %struct._fst* %8, i32 0, i32 2
  store i32 %mul, i32* %n_max3, align 8
  %9 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %9, i32 0, i32 5
  %10 = load %struct._state*, %struct._state** %states, align 8
  %11 = bitcast %struct._state* %10 to i8*
  %12 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_max4 = getelementptr inbounds %struct._fst, %struct._fst* %12, i32 0, i32 2
  %13 = load i32, i32* %n_max4, align 8
  %conv = zext i32 %13 to i64
  %mul5 = mul i64 24, %conv
  %call = call i8* @realloc(i8* noundef %11, i64 noundef %mul5) #8
  %14 = bitcast i8* %call to %struct._state*
  %15 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states6 = getelementptr inbounds %struct._fst, %struct._fst* %15, i32 0, i32 5
  store %struct._state* %14, %struct._state** %states6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states7 = getelementptr inbounds %struct._fst, %struct._fst* %16, i32 0, i32 5
  %17 = load %struct._state*, %struct._state** %states7, align 8
  %18 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states8 = getelementptr inbounds %struct._fst, %struct._fst* %18, i32 0, i32 1
  %19 = load i32, i32* %n_states8, align 4
  %sub = sub i32 %19, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %17, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %20 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %20, i32 0, i32 0
  store i32 0, i32* %n_arcs, align 8
  %21 = load %struct._state*, %struct._state** %state, align 8
  %n_max9 = getelementptr inbounds %struct._state, %struct._state* %21, i32 0, i32 1
  store i32 0, i32* %n_max9, align 4
  %22 = load %struct._state*, %struct._state** %state, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %22, i32 0, i32 3
  store i32 0, i32* %final, align 4
  %23 = load %struct._state*, %struct._state** %state, align 8
  %weight = getelementptr inbounds %struct._state, %struct._state* %23, i32 0, i32 2
  store float 0.000000e+00, float* %weight, align 8
  %24 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %24, i32 0, i32 4
  store %struct._arc* null, %struct._arc** %arcs, align 8
  %25 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states10 = getelementptr inbounds %struct._fst, %struct._fst* %25, i32 0, i32 1
  %26 = load i32, i32* %n_states10, align 4
  %sub11 = sub i32 %26, 1
  ret i32 %sub11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_add_arc(%struct._fst* noundef %fst, i32 noundef %src, i32 noundef %dst, i32 noundef %il, i32 noundef %ol, float noundef %weight) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %src.addr = alloca i32, align 4
  %dst.addr = alloca i32, align 4
  %il.addr = alloca i32, align 4
  %ol.addr = alloca i32, align 4
  %weight.addr = alloca float, align 4
  %arc = alloca %struct._arc*, align 8
  %state = alloca %struct._state*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i32 %src, i32* %src.addr, align 4
  store i32 %dst, i32* %dst.addr, align 4
  store i32 %il, i32* %il.addr, align 4
  store i32 %ol, i32* %ol.addr, align 4
  store float %weight, float* %weight.addr, align 4
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 5
  %1 = load %struct._state*, %struct._state** %states, align 8
  %2 = load i32, i32* %src.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %1, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %3 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %3, i32 0, i32 0
  %4 = load i32, i32* %n_arcs, align 8
  %inc = add i32 %4, 1
  store i32 %inc, i32* %n_arcs, align 8
  %5 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs1 = getelementptr inbounds %struct._state, %struct._state* %5, i32 0, i32 0
  %6 = load i32, i32* %n_arcs1, align 8
  %7 = load %struct._state*, %struct._state** %state, align 8
  %n_max = getelementptr inbounds %struct._state, %struct._state* %7, i32 0, i32 1
  %8 = load i32, i32* %n_max, align 4
  %cmp = icmp ugt i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs2 = getelementptr inbounds %struct._state, %struct._state* %9, i32 0, i32 0
  %10 = load i32, i32* %n_arcs2, align 8
  %mul = mul i32 %10, 2
  %11 = load %struct._state*, %struct._state** %state, align 8
  %n_max3 = getelementptr inbounds %struct._state, %struct._state* %11, i32 0, i32 1
  store i32 %mul, i32* %n_max3, align 4
  %12 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %12, i32 0, i32 4
  %13 = load %struct._arc*, %struct._arc** %arcs, align 8
  %14 = bitcast %struct._arc* %13 to i8*
  %15 = load %struct._state*, %struct._state** %state, align 8
  %n_max4 = getelementptr inbounds %struct._state, %struct._state* %15, i32 0, i32 1
  %16 = load i32, i32* %n_max4, align 4
  %conv = zext i32 %16 to i64
  %mul5 = mul i64 16, %conv
  %call = call i8* @realloc(i8* noundef %14, i64 noundef %mul5) #8
  %17 = bitcast i8* %call to %struct._arc*
  %18 = load %struct._state*, %struct._state** %state, align 8
  %arcs6 = getelementptr inbounds %struct._state, %struct._state* %18, i32 0, i32 4
  store %struct._arc* %17, %struct._arc** %arcs6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._state*, %struct._state** %state, align 8
  %arcs7 = getelementptr inbounds %struct._state, %struct._state* %19, i32 0, i32 4
  %20 = load %struct._arc*, %struct._arc** %arcs7, align 8
  %21 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs8 = getelementptr inbounds %struct._state, %struct._state* %21, i32 0, i32 0
  %22 = load i32, i32* %n_arcs8, align 8
  %sub = sub i32 %22, 1
  %idxprom9 = zext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds %struct._arc, %struct._arc* %20, i64 %idxprom9
  store %struct._arc* %arrayidx10, %struct._arc** %arc, align 8
  %23 = load i32, i32* %dst.addr, align 4
  %24 = load %struct._arc*, %struct._arc** %arc, align 8
  %state11 = getelementptr inbounds %struct._arc, %struct._arc* %24, i32 0, i32 0
  store i32 %23, i32* %state11, align 4
  %25 = load i32, i32* %il.addr, align 4
  %26 = load %struct._arc*, %struct._arc** %arc, align 8
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %26, i32 0, i32 2
  store i32 %25, i32* %ilabel, align 4
  %27 = load i32, i32* %ol.addr, align 4
  %28 = load %struct._arc*, %struct._arc** %arc, align 8
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %28, i32 0, i32 3
  store i32 %27, i32* %olabel, align 4
  %29 = load float, float* %weight.addr, align 4
  %30 = load %struct._arc*, %struct._arc** %arc, align 8
  %weight12 = getelementptr inbounds %struct._arc, %struct._arc* %30, i32 0, i32 1
  store float %29, float* %weight12, align 4
  %31 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs13 = getelementptr inbounds %struct._state, %struct._state* %31, i32 0, i32 0
  %32 = load i32, i32* %n_arcs13, align 8
  %sub14 = sub i32 %32, 1
  ret i32 %sub14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_add_final(%struct._fst* noundef %fst, i64 noundef %s, float noundef %w) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %s.addr = alloca i64, align 8
  %w.addr = alloca float, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  store float %w, float* %w.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %s.addr, align 8
  %add = add i64 %0, 1
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 1
  %2 = load i32, i32* %n_states, align 4
  %conv = zext i32 %2 to i64
  %cmp = icmp ugt i64 %add, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %call = call i32 @fst_add_state(%struct._fst* noundef %3)
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %5 = load i64, i64* %s.addr, align 8
  %conv2 = trunc i64 %5 to i32
  %6 = load float, float* %w.addr, align 4
  call void @fst_set_final(%struct._fst* noundef %4, i32 noundef %conv2, float noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_set_final(%struct._fst* noundef %fst, i32 noundef %s, float noundef %w) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %s.addr = alloca i32, align 4
  %w.addr = alloca float, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store float %w, float* %w.addr, align 4
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 5
  %1 = load %struct._state*, %struct._state** %states, align 8
  %2 = load i32, i32* %s.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %1, i64 %idxprom
  %final = getelementptr inbounds %struct._state, %struct._state* %arrayidx, i32 0, i32 3
  store i32 1, i32* %final, align 4
  %3 = load float, float* %w.addr, align 4
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states1 = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 5
  %5 = load %struct._state*, %struct._state** %states1, align 8
  %6 = load i32, i32* %s.addr, align 4
  %idxprom2 = zext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds %struct._state, %struct._state* %5, i64 %idxprom2
  %weight = getelementptr inbounds %struct._state, %struct._state* %arrayidx3, i32 0, i32 2
  store float %3, float* %weight, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_parse_line(%struct._fst* noundef %fst, i8* noundef %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %fst.addr = alloca %struct._fst*, align 8
  %buf.addr = alloca i8*, align 8
  %sa = alloca i64, align 8
  %sb = alloca i64, align 8
  %sf = alloca i64, align 8
  %li = alloca i64, align 8
  %lo = alloca i64, align 8
  %w = alloca float, align 4
  %sr = alloca %struct._sr, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 3
  %1 = load i8, i8* %sr_type, align 4
  call void @sr_get(%struct._sr* sret(%struct._sr) align 8 %sr, i8 noundef zeroext %1)
  %2 = load i8*, i8** %buf.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64* noundef %sa, i64* noundef %sb, i64* noundef %li, i64* noundef %lo, float* noundef %w) #8
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %4 = load i64, i64* %sa, align 8
  %5 = load i64, i64* %sb, align 8
  %6 = load i64, i64* %li, align 8
  %7 = load i64, i64* %lo, align 8
  %8 = load float, float* %w, align 4
  call void @_add_arc(%struct._fst* noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, float noundef %8)
  br label %if.end16

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %buf.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64* noundef %sa, i64* noundef %sb, i64* noundef %li, i64* noundef %lo) #8
  %cmp2 = icmp eq i32 %call1, 4
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %10 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %11 = load i64, i64* %sa, align 8
  %12 = load i64, i64* %sb, align 8
  %13 = load i64, i64* %li, align 8
  %14 = load i64, i64* %lo, align 8
  %one = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %15 = load float, float* %one, align 4
  call void @_add_arc(%struct._fst* noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, float noundef %15)
  br label %if.end15

if.else4:                                         ; preds = %if.else
  %16 = load i8*, i8** %buf.addr, align 8
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64* noundef %sf, float* noundef %w) #8
  %cmp6 = icmp eq i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  %17 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %18 = load i64, i64* %sf, align 8
  %19 = load float, float* %w, align 4
  call void @_add_final(%struct._fst* noundef %17, i64 noundef %18, float noundef %19)
  br label %if.end14

if.else8:                                         ; preds = %if.else4
  %20 = load i8*, i8** %buf.addr, align 8
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64* noundef %sf) #8
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else8
  %21 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %22 = load i64, i64* %sf, align 8
  %one12 = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %23 = load float, float* %one12, align 4
  call void @_add_final(%struct._fst* noundef %21, i64 noundef %22, float noundef %23)
  br label %if.end

if.else13:                                        ; preds = %if.else8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then3
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.else13
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sr_get(%struct._sr* noalias sret(%struct._sr) align 8 %agg.result, i8 noundef zeroext %sr_type) #0 {
entry:
  %sr_type.addr = alloca i8, align 1
  store i8 %sr_type, i8* %sr_type.addr, align 1
  %0 = load i8, i8* %sr_type.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = bitcast %struct._sr* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct._sr* @sr_real to i8*), i64 24, i1 false)
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = bitcast %struct._sr* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct._sr* @sr_tropical to i8*), i64 24, i1 false)
  br label %return

sw.default:                                       ; preds = %entry
  %3 = bitcast %struct._sr* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct._sr* @sr_tropical to i8*), i64 24, i1 false)
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_parse_line_sym(%struct._fst* noundef %fst, i8* noundef %buf, %struct._symt* noundef %ist, %struct._symt* noundef %ost, %struct._symt* noundef %sst) #0 {
entry:
  %retval = alloca i32, align 4
  %fst.addr = alloca %struct._fst*, align 8
  %buf.addr = alloca i8*, align 8
  %ist.addr = alloca %struct._symt*, align 8
  %ost.addr = alloca %struct._symt*, align 8
  %sst.addr = alloca %struct._symt*, align 8
  %strans = alloca i64 (i8*, %struct._symt*)*, align 8
  %itrans = alloca i64 (i8*, %struct._symt*)*, align 8
  %otrans = alloca i64 (i8*, %struct._symt*)*, align 8
  %sa = alloca [1024 x i8], align 16
  %sb = alloca [1024 x i8], align 16
  %sf = alloca [1024 x i8], align 16
  %li = alloca [1024 x i8], align 16
  %lo = alloca [1024 x i8], align 16
  %_sa = alloca i64, align 8
  %_sb = alloca i64, align 8
  %_sf = alloca i64, align 8
  %_li = alloca i64, align 8
  %_lo = alloca i64, align 8
  %w = alloca float, align 4
  %sr = alloca %struct._sr, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store %struct._symt* %ist, %struct._symt** %ist.addr, align 8
  store %struct._symt* %ost, %struct._symt** %ost.addr, align 8
  store %struct._symt* %sst, %struct._symt** %sst.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 3
  %1 = load i8, i8* %sr_type, align 4
  call void @sr_get(%struct._sr* sret(%struct._sr) align 8 %sr, i8 noundef zeroext %1)
  %2 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %cmp = icmp eq %struct._symt* %2, null
  %3 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i64 (i8*, %struct._symt*)* @trn__src_compile, i64 (i8*, %struct._symt*)* @trt__src_compile
  store i64 (i8*, %struct._symt*)* %cond, i64 (i8*, %struct._symt*)** %itrans, align 8
  %4 = load %struct._symt*, %struct._symt** %ost.addr, align 8
  %cmp1 = icmp eq %struct._symt* %4, null
  %5 = zext i1 %cmp1 to i64
  %cond2 = select i1 %cmp1, i64 (i8*, %struct._symt*)* @trn__src_compile, i64 (i8*, %struct._symt*)* @trt__src_compile
  store i64 (i8*, %struct._symt*)* %cond2, i64 (i8*, %struct._symt*)** %otrans, align 8
  %6 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %cmp3 = icmp eq %struct._symt* %6, null
  %7 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i64 (i8*, %struct._symt*)* @trn__src_compile, i64 (i8*, %struct._symt*)* @trt__src_compile
  store i64 (i8*, %struct._symt*)* %cond4, i64 (i8*, %struct._symt*)** %strans, align 8
  %8 = load i8*, i8** %buf.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %lo, i64 0, i64 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* noundef %arraydecay, i8* noundef %arraydecay5, i8* noundef %arraydecay6, i8* noundef %arraydecay7, float* noundef %w) #8
  %cmp8 = icmp eq i32 %call, 5
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %10 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call10 = call i64 %9(i8* noundef %arraydecay9, %struct._symt* noundef %10)
  store i64 %call10, i64* %_sa, align 8
  %11 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %12 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call12 = call i64 %11(i8* noundef %arraydecay11, %struct._symt* noundef %12)
  store i64 %call12, i64* %_sb, align 8
  %13 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %itrans, align 8
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %14 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %call14 = call i64 %13(i8* noundef %arraydecay13, %struct._symt* noundef %14)
  store i64 %call14, i64* %_li, align 8
  %15 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %otrans, align 8
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %lo, i64 0, i64 0
  %16 = load %struct._symt*, %struct._symt** %ost.addr, align 8
  %call16 = call i64 %15(i8* noundef %arraydecay15, %struct._symt* noundef %16)
  store i64 %call16, i64* %_lo, align 8
  %17 = load i64, i64* %_sa, align 8
  %cmp17 = icmp eq i64 %17, -1
  br i1 %cmp17, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %18 = load i64, i64* %_sb, align 8
  %cmp18 = icmp eq i64 %18, -1
  br i1 %cmp18, label %if.then23, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %19 = load i64, i64* %_li, align 8
  %cmp20 = icmp eq i64 %19, -1
  br i1 %cmp20, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %20 = load i64, i64* %_lo, align 8
  %cmp22 = icmp eq i64 %20, -1
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %lor.lhs.false21, %lor.lhs.false19, %lor.lhs.false, %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false21
  %21 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %22 = load i64, i64* %_sa, align 8
  %23 = load i64, i64* %_sb, align 8
  %24 = load i64, i64* %_li, align 8
  %25 = load i64, i64* %_lo, align 8
  %26 = load float, float* %w, align 4
  call void @_add_arc(%struct._fst* noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, float noundef %26)
  br label %if.end73

if.else:                                          ; preds = %entry
  %27 = load i8*, i8** %buf.addr, align 8
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %lo, i64 0, i64 0
  %call28 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %27, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* noundef %arraydecay24, i8* noundef %arraydecay25, i8* noundef %arraydecay26, i8* noundef %arraydecay27) #8
  %cmp29 = icmp eq i32 %call28, 4
  br i1 %cmp29, label %if.then30, label %if.else48

if.then30:                                        ; preds = %if.else
  %28 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %29 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call32 = call i64 %28(i8* noundef %arraydecay31, %struct._symt* noundef %29)
  store i64 %call32, i64* %_sa, align 8
  %30 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %31 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call34 = call i64 %30(i8* noundef %arraydecay33, %struct._symt* noundef %31)
  store i64 %call34, i64* %_sb, align 8
  %32 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %itrans, align 8
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %33 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %call36 = call i64 %32(i8* noundef %arraydecay35, %struct._symt* noundef %33)
  store i64 %call36, i64* %_li, align 8
  %34 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %otrans, align 8
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %lo, i64 0, i64 0
  %35 = load %struct._symt*, %struct._symt** %ost.addr, align 8
  %call38 = call i64 %34(i8* noundef %arraydecay37, %struct._symt* noundef %35)
  store i64 %call38, i64* %_lo, align 8
  %36 = load i64, i64* %_sa, align 8
  %cmp39 = icmp eq i64 %36, -1
  br i1 %cmp39, label %if.then46, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.then30
  %37 = load i64, i64* %_sb, align 8
  %cmp41 = icmp eq i64 %37, -1
  br i1 %cmp41, label %if.then46, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false40
  %38 = load i64, i64* %_li, align 8
  %cmp43 = icmp eq i64 %38, -1
  br i1 %cmp43, label %if.then46, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %39 = load i64, i64* %_lo, align 8
  %cmp45 = icmp eq i64 %39, -1
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false44, %lor.lhs.false42, %lor.lhs.false40, %if.then30
  store i32 -1, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %lor.lhs.false44
  %40 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %41 = load i64, i64* %_sa, align 8
  %42 = load i64, i64* %_sb, align 8
  %43 = load i64, i64* %_li, align 8
  %44 = load i64, i64* %_lo, align 8
  %one = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %45 = load float, float* %one, align 4
  call void @_add_arc(%struct._fst* noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %44, float noundef %45)
  br label %if.end72

if.else48:                                        ; preds = %if.else
  %46 = load i8*, i8** %buf.addr, align 8
  %arraydecay49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sf, i64 0, i64 0
  %call50 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %46, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %arraydecay49, float* noundef %w) #8
  %cmp51 = icmp eq i32 %call50, 2
  br i1 %cmp51, label %if.then52, label %if.else58

if.then52:                                        ; preds = %if.else48
  %47 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sf, i64 0, i64 0
  %48 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call54 = call i64 %47(i8* noundef %arraydecay53, %struct._symt* noundef %48)
  store i64 %call54, i64* %_sf, align 8
  %49 = load i64, i64* %_sf, align 8
  %cmp55 = icmp eq i64 -1, %49
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then52
  store i32 -1, i32* %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.then52
  %50 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %51 = load i64, i64* %_sf, align 8
  %52 = load float, float* %w, align 4
  call void @_add_final(%struct._fst* noundef %50, i64 noundef %51, float noundef %52)
  br label %if.end71

if.else58:                                        ; preds = %if.else48
  %53 = load i8*, i8** %buf.addr, align 8
  %arraydecay59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sf, i64 0, i64 0
  %call60 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %53, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %arraydecay59) #8
  %cmp61 = icmp eq i32 %call60, 1
  br i1 %cmp61, label %if.then62, label %if.else69

if.then62:                                        ; preds = %if.else58
  %54 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sf, i64 0, i64 0
  %55 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call64 = call i64 %54(i8* noundef %arraydecay63, %struct._symt* noundef %55)
  store i64 %call64, i64* %_sf, align 8
  %56 = load i64, i64* %_sf, align 8
  %cmp65 = icmp eq i64 -1, %56
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then62
  store i32 -1, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.then62
  %57 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %58 = load i64, i64* %_sf, align 8
  %one68 = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %59 = load float, float* %one68, align 4
  call void @_add_final(%struct._fst* noundef %57, i64 noundef %58, float noundef %59)
  br label %if.end70

if.else69:                                        ; preds = %if.else58
  store i32 -1, i32* %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end67
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end57
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end47
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.else69, %if.then66, %if.then56, %if.then46, %if.then23
  %60 = load i32, i32* %retval, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_parse_line_sym_acc(%struct._fst* noundef %fst, i8* noundef %buf, %struct._symt* noundef %ist, %struct._symt* noundef %sst) #0 {
entry:
  %retval = alloca i32, align 4
  %fst.addr = alloca %struct._fst*, align 8
  %buf.addr = alloca i8*, align 8
  %ist.addr = alloca %struct._symt*, align 8
  %sst.addr = alloca %struct._symt*, align 8
  %strans = alloca i64 (i8*, %struct._symt*)*, align 8
  %itrans = alloca i64 (i8*, %struct._symt*)*, align 8
  %sa = alloca [1024 x i8], align 16
  %sb = alloca [1024 x i8], align 16
  %sf = alloca [1024 x i8], align 16
  %li = alloca [1024 x i8], align 16
  %_sa = alloca i64, align 8
  %_sb = alloca i64, align 8
  %_sf = alloca i64, align 8
  %_li = alloca i64, align 8
  %w = alloca float, align 4
  %sr = alloca %struct._sr, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store %struct._symt* %ist, %struct._symt** %ist.addr, align 8
  store %struct._symt* %sst, %struct._symt** %sst.addr, align 8
  store float -1.000000e+00, float* %w, align 4
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 3
  %1 = load i8, i8* %sr_type, align 4
  call void @sr_get(%struct._sr* sret(%struct._sr) align 8 %sr, i8 noundef zeroext %1)
  %2 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %cmp = icmp eq %struct._symt* %2, null
  %3 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i64 (i8*, %struct._symt*)* @trn__src_compile, i64 (i8*, %struct._symt*)* @trt__src_compile
  store i64 (i8*, %struct._symt*)* %cond, i64 (i8*, %struct._symt*)** %itrans, align 8
  %4 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %cmp1 = icmp eq %struct._symt* %4, null
  %5 = zext i1 %cmp1 to i64
  %cond2 = select i1 %cmp1, i64 (i8*, %struct._symt*)* @trn__src_compile, i64 (i8*, %struct._symt*)* @trt__src_compile
  store i64 (i8*, %struct._symt*)* %cond2, i64 (i8*, %struct._symt*)** %strans, align 8
  %6 = load i8*, i8** %buf.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* noundef %arraydecay, i8* noundef %arraydecay3, i8* noundef %arraydecay4, float* noundef %w) #8
  %cmp5 = icmp eq i32 %call, 4
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %8 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call7 = call i64 %7(i8* noundef %arraydecay6, %struct._symt* noundef %8)
  store i64 %call7, i64* %_sa, align 8
  %9 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %10 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call9 = call i64 %9(i8* noundef %arraydecay8, %struct._symt* noundef %10)
  store i64 %call9, i64* %_sb, align 8
  %11 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %itrans, align 8
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %12 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %call11 = call i64 %11(i8* noundef %arraydecay10, %struct._symt* noundef %12)
  store i64 %call11, i64* %_li, align 8
  %13 = load i64, i64* %_sa, align 8
  %cmp12 = icmp eq i64 %13, -1
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %14 = load i64, i64* %_sb, align 8
  %cmp13 = icmp eq i64 %14, -1
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %15 = load i64, i64* %_li, align 8
  %cmp15 = icmp eq i64 %15, -1
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false14
  %16 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %17 = load i64, i64* %_sa, align 8
  %18 = load i64, i64* %_sb, align 8
  %19 = load i64, i64* %_li, align 8
  %20 = load i64, i64* %_li, align 8
  %21 = load float, float* %w, align 4
  call void @_add_arc(%struct._fst* noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, float noundef %21)
  br label %if.end61

if.else:                                          ; preds = %entry
  %22 = load i8*, i8** %buf.addr, align 8
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %22, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* noundef %arraydecay17, i8* noundef %arraydecay18, i8* noundef %arraydecay19) #8
  %cmp21 = icmp eq i32 %call20, 3
  br i1 %cmp21, label %if.then22, label %if.else36

if.then22:                                        ; preds = %if.else
  %23 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %24 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call24 = call i64 %23(i8* noundef %arraydecay23, %struct._symt* noundef %24)
  store i64 %call24, i64* %_sa, align 8
  %25 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %26 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call26 = call i64 %25(i8* noundef %arraydecay25, %struct._symt* noundef %26)
  store i64 %call26, i64* %_sb, align 8
  %27 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %itrans, align 8
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %28 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %call28 = call i64 %27(i8* noundef %arraydecay27, %struct._symt* noundef %28)
  store i64 %call28, i64* %_li, align 8
  %29 = load i64, i64* %_sa, align 8
  %cmp29 = icmp eq i64 %29, -1
  br i1 %cmp29, label %if.then34, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.then22
  %30 = load i64, i64* %_sb, align 8
  %cmp31 = icmp eq i64 %30, -1
  br i1 %cmp31, label %if.then34, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false30
  %31 = load i64, i64* %_li, align 8
  %cmp33 = icmp eq i64 %31, -1
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false32, %lor.lhs.false30, %if.then22
  store i32 -1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false32
  %32 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %33 = load i64, i64* %_sa, align 8
  %34 = load i64, i64* %_sb, align 8
  %35 = load i64, i64* %_li, align 8
  %36 = load i64, i64* %_li, align 8
  %one = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %37 = load float, float* %one, align 4
  call void @_add_arc(%struct._fst* noundef %32, i64 noundef %33, i64 noundef %34, i64 noundef %35, i64 noundef %36, float noundef %37)
  br label %if.end60

if.else36:                                        ; preds = %if.else
  %38 = load i8*, i8** %buf.addr, align 8
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sf, i64 0, i64 0
  %call38 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %38, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %arraydecay37, float* noundef %w) #8
  %cmp39 = icmp eq i32 %call38, 2
  br i1 %cmp39, label %if.then40, label %if.else46

if.then40:                                        ; preds = %if.else36
  %39 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sf, i64 0, i64 0
  %40 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call42 = call i64 %39(i8* noundef %arraydecay41, %struct._symt* noundef %40)
  store i64 %call42, i64* %_sf, align 8
  %41 = load i64, i64* %_sf, align 8
  %cmp43 = icmp eq i64 -1, %41
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then40
  store i32 -1, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.then40
  %42 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %43 = load i64, i64* %_sf, align 8
  %44 = load float, float* %w, align 4
  call void @_add_final(%struct._fst* noundef %42, i64 noundef %43, float noundef %44)
  br label %if.end59

if.else46:                                        ; preds = %if.else36
  %45 = load i8*, i8** %buf.addr, align 8
  %arraydecay47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sf, i64 0, i64 0
  %call48 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %arraydecay47) #8
  %cmp49 = icmp eq i32 %call48, 1
  br i1 %cmp49, label %if.then50, label %if.else57

if.then50:                                        ; preds = %if.else46
  %46 = load i64 (i8*, %struct._symt*)*, i64 (i8*, %struct._symt*)** %strans, align 8
  %arraydecay51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sf, i64 0, i64 0
  %47 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call52 = call i64 %46(i8* noundef %arraydecay51, %struct._symt* noundef %47)
  store i64 %call52, i64* %_sf, align 8
  %48 = load i64, i64* %_sf, align 8
  %cmp53 = icmp eq i64 -1, %48
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then50
  store i32 -1, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.then50
  %49 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %50 = load i64, i64* %_sf, align 8
  %one56 = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %51 = load float, float* %one56, align 4
  call void @_add_final(%struct._fst* noundef %49, i64 noundef %50, float noundef %51)
  br label %if.end58

if.else57:                                        ; preds = %if.else46
  store i32 -1, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end55
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end45
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end35
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end61, %if.else57, %if.then54, %if.then44, %if.then34, %if.then16
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._fst* @fst_compile(%struct._fst* noundef %fst, %struct._IO_FILE* noundef %fin, %struct._symt* noundef %ist, %struct._symt* noundef %ost, %struct._symt* noundef %sst, i32 noundef %is_acc) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %ist.addr = alloca %struct._symt*, align 8
  %ost.addr = alloca %struct._symt*, align 8
  %sst.addr = alloca %struct._symt*, align 8
  %is_acc.addr = alloca i32, align 4
  %p = alloca [65535 x i8], align 16
  %line = alloca i64, align 8
  %res = alloca i32, align 4
  %start_state = alloca i64, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  store %struct._symt* %ist, %struct._symt** %ist.addr, align 8
  store %struct._symt* %ost, %struct._symt** %ost.addr, align 8
  store %struct._symt* %sst, %struct._symt** %sst.addr, align 8
  store i32 %is_acc, i32* %is_acc.addr, align 4
  store i64 1, i64* %line, align 8
  store i32 0, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %arraydecay = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call = call i8* @fgets(i8* noundef %arraydecay, i32 noundef 65535, %struct._IO_FILE* noundef %0)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %line, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %line, align 8
  %2 = load i32, i32* %is_acc.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %arraydecay2 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %4 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %5 = load %struct._symt*, %struct._symt** %ost.addr, align 8
  %6 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call3 = call i32 @_parse_line_sym(%struct._fst* noundef %3, i8* noundef %arraydecay2, %struct._symt* noundef %4, %struct._symt* noundef %5, %struct._symt* noundef %6)
  store i32 %call3, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %7 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %arraydecay4 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %8 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %9 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call5 = call i32 @_parse_line_sym_acc(%struct._fst* noundef %7, i8* noundef %arraydecay4, %struct._symt* noundef %8, %struct._symt* noundef %9)
  store i32 %call5, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %res, align 4
  %cmp6 = icmp ne i32 %10, 0
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i64, i64* %line, align 8
  %arraydecay8 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64 noundef %12, i8* noundef %arraydecay8)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end10:                                         ; preds = %if.end
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %13 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %cmp11 = icmp ne %struct._symt* %13, null
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %while.end
  %14 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %call13 = call i64 @symt_getr(%struct._symt* noundef %14, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i64 %call13, i64* %start_state, align 8
  %cmp14 = icmp ne i64 %call13, -1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  %15 = load i64, i64* %start_state, align 8
  %conv = trunc i64 %15 to i32
  %16 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %16, i32 0, i32 0
  store i32 %conv, i32* %start, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %while.end
  %17 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  ret %struct._fst* %17
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._fst* @fst_compile_str(%struct._fst* noundef %fst, i8* noundef %str) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %str.addr = alloca i8*, align 8
  %p = alloca [65535 x i8], align 16
  %tok = alloca i8*, align 8
  %line = alloca i64, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 1, i64* %line, align 8
  %arraydecay = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %0) #8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i64, i64* %line, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %arraydecay1 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %call2 = call i8* @strtok(i8* noundef %arraydecay1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #8
  store i8* %call2, i8** %tok, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %call3 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #8
  store i8* %call3, i8** %tok, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %tok, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %4 = load i8*, i8** %tok, align 8
  %call5 = call i32 @_parse_line(%struct._fst* noundef %3, i8* noundef %4)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i64, i64* %line, align 8
  %7 = load i8*, i8** %tok, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i64 noundef %6, i8* noundef %7)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end9:                                          ; preds = %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %8 = load i64, i64* %line, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %line, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end10
  %9 = load i8*, i8** %tok, align 8
  %tobool11 = icmp ne i8* %9, null
  br i1 %tobool11, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %10 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  ret %struct._fst* %10
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_pair(i8* noundef %a, i8* noundef %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call = call i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef 8) #10
  %cmp = icmp eq i32 %call, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash_pair(i8* noundef %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %hash = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 17, i64* %hash, align 8
  %0 = load i64, i64* %hash, align 8
  %mul = mul i64 %0, 31
  %1 = load i8*, i8** %p.addr, align 8
  %2 = bitcast i8* %1 to %struct._spair*
  %a = getelementptr inbounds %struct._spair, %struct._spair* %2, i32 0, i32 0
  %3 = load i32, i32* %a, align 4
  %conv = zext i32 %3 to i64
  %add = add i64 %mul, %conv
  store i64 %add, i64* %hash, align 8
  %4 = load i64, i64* %hash, align 8
  %mul1 = mul i64 %4, 31
  %5 = load i8*, i8** %p.addr, align 8
  %6 = bitcast i8* %5 to %struct._spair*
  %b = getelementptr inbounds %struct._spair, %struct._spair* %6, i32 0, i32 1
  %7 = load i32, i32* %b, align 4
  %conv2 = zext i32 %7 to i64
  %add3 = add i64 %mul1, %conv2
  store i64 %add3, i64* %hash, align 8
  %8 = load i64, i64* %hash, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @match_arcs(%struct._fst* noundef %fst_a, %struct._fst* noundef %fst_b, %struct._spair* noundef %pair, %struct._sr* noundef %sr, %struct._queue* noundef %mq) #0 {
entry:
  %fst_a.addr = alloca %struct._fst*, align 8
  %fst_b.addr = alloca %struct._fst*, align 8
  %pair.addr = alloca %struct._spair*, align 8
  %sr.addr = alloca %struct._sr*, align 8
  %mq.addr = alloca %struct._queue*, align 8
  %state_a = alloca %struct._state*, align 8
  %state_b = alloca %struct._state*, align 8
  %osort = alloca i32, align 4
  %isort = alloca i32, align 4
  %asize = alloca i64, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %arcs_a = alloca %struct._arc*, align 8
  %arcs_b = alloca %struct._arc*, align 8
  %loop_arc_a = alloca %struct._arc, align 4
  %loop_arc_b = alloca %struct._arc, align 4
  store %struct._fst* %fst_a, %struct._fst** %fst_a.addr, align 8
  store %struct._fst* %fst_b, %struct._fst** %fst_b.addr, align 8
  store %struct._spair* %pair, %struct._spair** %pair.addr, align 8
  store %struct._sr* %sr, %struct._sr** %sr.addr, align 8
  store %struct._queue* %mq, %struct._queue** %mq.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst_a.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 5
  %1 = load %struct._state*, %struct._state** %states, align 8
  %2 = load %struct._spair*, %struct._spair** %pair.addr, align 8
  %a = getelementptr inbounds %struct._spair, %struct._spair* %2, i32 0, i32 0
  %3 = load i32, i32* %a, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %1, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state_a, align 8
  %4 = load %struct._fst*, %struct._fst** %fst_b.addr, align 8
  %states1 = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 5
  %5 = load %struct._state*, %struct._state** %states1, align 8
  %6 = load %struct._spair*, %struct._spair** %pair.addr, align 8
  %b = getelementptr inbounds %struct._spair, %struct._spair* %6, i32 0, i32 1
  %7 = load i32, i32* %b, align 4
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds %struct._state, %struct._state* %5, i64 %idxprom2
  store %struct._state* %arrayidx3, %struct._state** %state_b, align 8
  %8 = load %struct._fst*, %struct._fst** %fst_a.addr, align 8
  %flags = getelementptr inbounds %struct._fst, %struct._fst* %8, i32 0, i32 4
  %9 = load i8, i8* %flags, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 2
  store i32 %and, i32* %osort, align 4
  %10 = load %struct._fst*, %struct._fst** %fst_b.addr, align 8
  %flags4 = getelementptr inbounds %struct._fst, %struct._fst* %10, i32 0, i32 4
  %11 = load i8, i8* %flags4, align 1
  %conv5 = zext i8 %11 to i32
  %and6 = and i32 %conv5, 1
  store i32 %and6, i32* %isort, align 4
  store i64 16, i64* %asize, align 8
  %12 = load %struct._state*, %struct._state** %state_a, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %12, i32 0, i32 0
  %13 = load i32, i32* %n_arcs, align 8
  %add = add i32 %13, 1
  store i32 %add, i32* %m, align 4
  %14 = load %struct._state*, %struct._state** %state_b, align 8
  %n_arcs7 = getelementptr inbounds %struct._state, %struct._state* %14, i32 0, i32 0
  %15 = load i32, i32* %n_arcs7, align 8
  %add8 = add i32 %15, 1
  store i32 %add8, i32* %n, align 4
  %16 = load i64, i64* %asize, align 8
  %17 = load i32, i32* %m, align 4
  %conv9 = zext i32 %17 to i64
  %mul = mul i64 %16, %conv9
  %call = call noalias i8* @malloc(i64 noundef %mul) #8
  %18 = bitcast i8* %call to %struct._arc*
  store %struct._arc* %18, %struct._arc** %arcs_a, align 8
  %19 = load i64, i64* %asize, align 8
  %20 = load i32, i32* %n, align 4
  %conv10 = zext i32 %20 to i64
  %mul11 = mul i64 %19, %conv10
  %call12 = call noalias i8* @malloc(i64 noundef %mul11) #8
  %21 = bitcast i8* %call12 to %struct._arc*
  store %struct._arc* %21, %struct._arc** %arcs_b, align 8
  %22 = load %struct._arc*, %struct._arc** %arcs_a, align 8
  %add.ptr = getelementptr inbounds %struct._arc, %struct._arc* %22, i64 1
  %23 = bitcast %struct._arc* %add.ptr to i8*
  %24 = load %struct._state*, %struct._state** %state_a, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %24, i32 0, i32 4
  %25 = load %struct._arc*, %struct._arc** %arcs, align 8
  %26 = bitcast %struct._arc* %25 to i8*
  %27 = load i64, i64* %asize, align 8
  %28 = load i32, i32* %m, align 4
  %sub = sub i32 %28, 1
  %conv13 = zext i32 %sub to i64
  %mul14 = mul i64 %27, %conv13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %26, i64 %mul14, i1 false)
  %29 = load %struct._arc*, %struct._arc** %arcs_b, align 8
  %add.ptr15 = getelementptr inbounds %struct._arc, %struct._arc* %29, i64 1
  %30 = bitcast %struct._arc* %add.ptr15 to i8*
  %31 = load %struct._state*, %struct._state** %state_b, align 8
  %arcs16 = getelementptr inbounds %struct._state, %struct._state* %31, i32 0, i32 4
  %32 = load %struct._arc*, %struct._arc** %arcs16, align 8
  %33 = bitcast %struct._arc* %32 to i8*
  %34 = load i64, i64* %asize, align 8
  %35 = load i32, i32* %n, align 4
  %sub17 = sub i32 %35, 1
  %conv18 = zext i32 %sub17 to i64
  %mul19 = mul i64 %34, %conv18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %33, i64 %mul19, i1 false)
  %state = getelementptr inbounds %struct._arc, %struct._arc* %loop_arc_a, i32 0, i32 0
  %36 = load %struct._spair*, %struct._spair** %pair.addr, align 8
  %a20 = getelementptr inbounds %struct._spair, %struct._spair* %36, i32 0, i32 0
  %37 = load i32, i32* %a20, align 4
  store i32 %37, i32* %state, align 4
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %loop_arc_a, i32 0, i32 1
  %38 = load %struct._sr*, %struct._sr** %sr.addr, align 8
  %one = getelementptr inbounds %struct._sr, %struct._sr* %38, i32 0, i32 3
  %39 = load float, float* %one, align 4
  store float %39, float* %weight, align 4
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %loop_arc_a, i32 0, i32 2
  store i32 0, i32* %ilabel, align 4
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %loop_arc_a, i32 0, i32 3
  store i32 0, i32* %olabel, align 4
  %state21 = getelementptr inbounds %struct._arc, %struct._arc* %loop_arc_b, i32 0, i32 0
  %40 = load %struct._spair*, %struct._spair** %pair.addr, align 8
  %b22 = getelementptr inbounds %struct._spair, %struct._spair* %40, i32 0, i32 1
  %41 = load i32, i32* %b22, align 4
  store i32 %41, i32* %state21, align 4
  %weight23 = getelementptr inbounds %struct._arc, %struct._arc* %loop_arc_b, i32 0, i32 1
  %42 = load %struct._sr*, %struct._sr** %sr.addr, align 8
  %one24 = getelementptr inbounds %struct._sr, %struct._sr* %42, i32 0, i32 3
  %43 = load float, float* %one24, align 4
  store float %43, float* %weight23, align 4
  %ilabel25 = getelementptr inbounds %struct._arc, %struct._arc* %loop_arc_b, i32 0, i32 2
  store i32 0, i32* %ilabel25, align 4
  %olabel26 = getelementptr inbounds %struct._arc, %struct._arc* %loop_arc_b, i32 0, i32 3
  store i32 0, i32* %olabel26, align 4
  %44 = load %struct._arc*, %struct._arc** %arcs_a, align 8
  %arrayidx27 = getelementptr inbounds %struct._arc, %struct._arc* %44, i64 0
  %45 = bitcast %struct._arc* %arrayidx27 to i8*
  %46 = bitcast %struct._arc* %loop_arc_a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 16, i1 false)
  %47 = load %struct._arc*, %struct._arc** %arcs_b, align 8
  %arrayidx28 = getelementptr inbounds %struct._arc, %struct._arc* %47, i64 0
  %48 = bitcast %struct._arc* %arrayidx28 to i8*
  %49 = bitcast %struct._arc* %loop_arc_b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 16, i1 false)
  %50 = load i32, i32* %isort, align 4
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %51 = load i32, i32* %osort, align 4
  %tobool29 = icmp ne i32 %51, 0
  br i1 %tobool29, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %52 = load %struct._arc*, %struct._arc** %arcs_a, align 8
  %53 = load %struct._arc*, %struct._arc** %arcs_b, align 8
  %54 = load i32, i32* %m, align 4
  %55 = load i32, i32* %n, align 4
  %56 = load %struct._queue*, %struct._queue** %mq.addr, align 8
  call void @match_full_sorted(%struct._arc* noundef %52, %struct._arc* noundef %53, i32 noundef %54, i32 noundef %55, %struct._queue* noundef %56)
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true, %entry
  %57 = load i32, i32* %isort, align 4
  %tobool30 = icmp ne i32 %57, 0
  br i1 %tobool30, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %58 = load i32, i32* %osort, align 4
  %tobool31 = icmp ne i32 %58, 0
  br i1 %tobool31, label %if.then32, label %if.else36

if.then32:                                        ; preds = %lor.lhs.false, %if.else
  %59 = load i32, i32* %isort, align 4
  %tobool33 = icmp ne i32 %59, 0
  br i1 %tobool33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then32
  %60 = load %struct._arc*, %struct._arc** %arcs_a, align 8
  %61 = load %struct._arc*, %struct._arc** %arcs_b, align 8
  %62 = load i32, i32* %m, align 4
  %63 = load i32, i32* %n, align 4
  %64 = load %struct._queue*, %struct._queue** %mq.addr, align 8
  call void @match_half_sorted(%struct._arc* noundef %60, %struct._arc* noundef %61, i32 noundef %62, i32 noundef %63, %struct._queue* noundef %64)
  br label %if.end

if.else35:                                        ; preds = %if.then32
  %65 = load %struct._arc*, %struct._arc** %arcs_a, align 8
  %66 = load %struct._arc*, %struct._arc** %arcs_b, align 8
  %67 = load i32, i32* %m, align 4
  %68 = load i32, i32* %n, align 4
  %69 = load %struct._queue*, %struct._queue** %mq.addr, align 8
  call void @match_half_sorted_rev(%struct._arc* noundef %65, %struct._arc* noundef %66, i32 noundef %67, i32 noundef %68, %struct._queue* noundef %69)
  br label %if.end

if.end:                                           ; preds = %if.else35, %if.then34
  br label %if.end37

if.else36:                                        ; preds = %lor.lhs.false
  %70 = load %struct._arc*, %struct._arc** %arcs_a, align 8
  %71 = load %struct._arc*, %struct._arc** %arcs_b, align 8
  %72 = load i32, i32* %m, align 4
  %73 = load i32, i32* %n, align 4
  %74 = load %struct._queue*, %struct._queue** %mq.addr, align 8
  call void @match_unsorted(%struct._arc* noundef %70, %struct._arc* noundef %71, i32 noundef %72, i32 noundef %73, %struct._queue* noundef %74)
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  %75 = load %struct._arc*, %struct._arc** %arcs_a, align 8
  %76 = bitcast %struct._arc* %75 to i8*
  call void @free(i8* noundef %76) #8
  %77 = load %struct._arc*, %struct._arc** %arcs_b, align 8
  %78 = bitcast %struct._arc* %77 to i8*
  call void @free(i8* noundef %78) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @match_full_sorted(%struct._arc* noundef %a, %struct._arc* noundef %b, i32 noundef %M, i32 noundef %N, %struct._queue* noundef %q) #0 {
entry:
  %a.addr = alloca %struct._arc*, align 8
  %b.addr = alloca %struct._arc*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %q.addr = alloca %struct._queue*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %mi = alloca %struct._match_item, align 4
  store %struct._arc* %a, %struct._arc** %a.addr, align 8
  store %struct._arc* %b, %struct._arc** %b.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store %struct._queue* %q, %struct._queue** %q.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %M.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp1 = icmp ult i32 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct._arc, %struct._arc* %5, i64 %idxprom
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx, i32 0, i32 3
  %7 = load i32, i32* %olabel, align 4
  %8 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom2 = zext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds %struct._arc, %struct._arc* %8, i64 %idxprom2
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx3, i32 0, i32 2
  %10 = load i32, i32* %ilabel, align 4
  %cmp4 = icmp ult i32 %7, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end32

if.else:                                          ; preds = %while.body
  %12 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct._arc, %struct._arc* %12, i64 %idxprom5
  %olabel7 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx6, i32 0, i32 3
  %14 = load i32, i32* %olabel7, align 4
  %15 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom8 = zext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds %struct._arc, %struct._arc* %15, i64 %idxprom8
  %ilabel10 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx9, i32 0, i32 2
  %17 = load i32, i32* %ilabel10, align 4
  %cmp11 = icmp ugt i32 %14, %17
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  %18 = load i32, i32* %j, align 4
  %inc13 = add i32 %18, 1
  store i32 %inc13, i32* %j, align 4
  br label %if.end31

if.else14:                                        ; preds = %if.else
  %19 = load i32, i32* %j, align 4
  store i32 %19, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else14
  %20 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds %struct._arc, %struct._arc* %20, i64 %idxprom15
  %olabel17 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx16, i32 0, i32 3
  %22 = load i32, i32* %olabel17, align 4
  %23 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %24 = load i32, i32* %t, align 4
  %idxprom18 = zext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds %struct._arc, %struct._arc* %23, i64 %idxprom18
  %ilabel20 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx19, i32 0, i32 2
  %25 = load i32, i32* %ilabel20, align 4
  %cmp21 = icmp eq i32 %22, %25
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %a22 = getelementptr inbounds %struct._match_item, %struct._match_item* %mi, i32 0, i32 0
  %26 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds %struct._arc, %struct._arc* %26, i64 %idxprom23
  %28 = bitcast %struct._arc* %a22 to i8*
  %29 = bitcast %struct._arc* %arrayidx24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 16, i1 false)
  %b25 = getelementptr inbounds %struct._match_item, %struct._match_item* %mi, i32 0, i32 1
  %30 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %31 = load i32, i32* %t, align 4
  %idxprom26 = zext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds %struct._arc, %struct._arc* %30, i64 %idxprom26
  %32 = bitcast %struct._arc* %b25 to i8*
  %33 = bitcast %struct._arc* %arrayidx27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 16, i1 false)
  %34 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %35 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %t, align 4
  %call = call i32 @_match(%struct._arc* noundef %34, %struct._arc* noundef %35, i32 noundef %36, i32 noundef %37)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %for.body
  %38 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %39 = bitcast %struct._match_item* %mi to i8*
  call void @queue_enque(%struct._queue* noundef %38, i8* noundef %39)
  br label %if.end

if.end:                                           ; preds = %if.then28, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %t, align 4
  %inc29 = add i32 %40, 1
  store i32 %inc29, i32* %t, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %i, align 4
  %inc30 = add i32 %41, 1
  store i32 %inc30, i32* %i, align 4
  br label %if.end31

if.end31:                                         ; preds = %for.end, %if.then12
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @match_half_sorted(%struct._arc* noundef %a, %struct._arc* noundef %b, i32 noundef %M, i32 noundef %N, %struct._queue* noundef %q) #0 {
entry:
  %a.addr = alloca %struct._arc*, align 8
  %b.addr = alloca %struct._arc*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %q.addr = alloca %struct._queue*, align 8
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %ll = alloca i32, align 4
  %hh = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %mi = alloca %struct._match_item, align 4
  store %struct._arc* %a, %struct._arc** %a.addr, align 8
  store %struct._arc* %b, %struct._arc** %b.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store %struct._queue* %q, %struct._queue** %q.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %M.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l, align 4
  %2 = load i32, i32* %N.addr, align 4
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end57, %for.body
  %3 = load i32, i32* %l, align 4
  %4 = load i32, i32* %h, align 4
  %cmp1 = icmp ule i32 %3, %4
  br i1 %cmp1, label %while.body, label %while.end58

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %l, align 4
  %6 = load i32, i32* %h, align 4
  %add = add i32 %5, %6
  %shr = lshr i32 %add, 1
  store i32 %shr, i32* %m, align 4
  %7 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct._arc, %struct._arc* %7, i64 %idxprom
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx, i32 0, i32 3
  %9 = load i32, i32* %olabel, align 4
  %10 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %11 = load i32, i32* %m, align 4
  %idxprom2 = zext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds %struct._arc, %struct._arc* %10, i64 %idxprom2
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx3, i32 0, i32 2
  %12 = load i32, i32* %ilabel, align 4
  %cmp4 = icmp ugt i32 %9, %12
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = load i32, i32* %m, align 4
  %add5 = add i32 %13, 1
  store i32 %add5, i32* %l, align 4
  br label %if.end57

if.else:                                          ; preds = %while.body
  %14 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds %struct._arc, %struct._arc* %14, i64 %idxprom6
  %olabel8 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx7, i32 0, i32 3
  %16 = load i32, i32* %olabel8, align 4
  %17 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %18 = load i32, i32* %m, align 4
  %idxprom9 = zext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds %struct._arc, %struct._arc* %17, i64 %idxprom9
  %ilabel11 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx10, i32 0, i32 2
  %19 = load i32, i32* %ilabel11, align 4
  %cmp12 = icmp ult i32 %16, %19
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else
  %20 = load i32, i32* %m, align 4
  %cmp14 = icmp eq i32 %20, 0
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then13
  br label %while.end58

if.end:                                           ; preds = %if.then13
  %21 = load i32, i32* %m, align 4
  %sub16 = sub i32 %21, 1
  store i32 %sub16, i32* %h, align 4
  br label %if.end56

if.else17:                                        ; preds = %if.else
  %22 = load i32, i32* %m, align 4
  store i32 %22, i32* %hh, align 4
  store i32 %22, i32* %ll, align 4
  br label %while.cond18

while.cond18:                                     ; preds = %while.body28, %if.else17
  %23 = load i32, i32* %ll, align 4
  %24 = load i32, i32* %l, align 4
  %cmp19 = icmp ugt i32 %23, %24
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond18
  %25 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds %struct._arc, %struct._arc* %25, i64 %idxprom20
  %olabel22 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx21, i32 0, i32 3
  %27 = load i32, i32* %olabel22, align 4
  %28 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %29 = load i32, i32* %ll, align 4
  %sub23 = sub i32 %29, 1
  %idxprom24 = zext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds %struct._arc, %struct._arc* %28, i64 %idxprom24
  %ilabel26 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx25, i32 0, i32 2
  %30 = load i32, i32* %ilabel26, align 4
  %cmp27 = icmp eq i32 %27, %30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond18
  %31 = phi i1 [ false, %while.cond18 ], [ %cmp27, %land.rhs ]
  br i1 %31, label %while.body28, label %while.end

while.body28:                                     ; preds = %land.end
  %32 = load i32, i32* %ll, align 4
  %dec = add i32 %32, -1
  store i32 %dec, i32* %ll, align 4
  br label %while.cond18, !llvm.loop !18

while.end:                                        ; preds = %land.end
  br label %while.cond29

while.cond29:                                     ; preds = %while.body41, %while.end
  %33 = load i32, i32* %hh, align 4
  %34 = load i32, i32* %h, align 4
  %cmp30 = icmp ult i32 %33, %34
  br i1 %cmp30, label %land.rhs31, label %land.end40

land.rhs31:                                       ; preds = %while.cond29
  %35 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom32 = zext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds %struct._arc, %struct._arc* %35, i64 %idxprom32
  %olabel34 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx33, i32 0, i32 3
  %37 = load i32, i32* %olabel34, align 4
  %38 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %39 = load i32, i32* %hh, align 4
  %add35 = add i32 %39, 1
  %idxprom36 = zext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds %struct._arc, %struct._arc* %38, i64 %idxprom36
  %ilabel38 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx37, i32 0, i32 2
  %40 = load i32, i32* %ilabel38, align 4
  %cmp39 = icmp eq i32 %37, %40
  br label %land.end40

land.end40:                                       ; preds = %land.rhs31, %while.cond29
  %41 = phi i1 [ false, %while.cond29 ], [ %cmp39, %land.rhs31 ]
  br i1 %41, label %while.body41, label %while.end42

while.body41:                                     ; preds = %land.end40
  %42 = load i32, i32* %hh, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %hh, align 4
  br label %while.cond29, !llvm.loop !19

while.end42:                                      ; preds = %land.end40
  br label %while.cond43

while.cond43:                                     ; preds = %if.end53, %while.end42
  %43 = load i32, i32* %ll, align 4
  %44 = load i32, i32* %hh, align 4
  %cmp44 = icmp ule i32 %43, %44
  br i1 %cmp44, label %while.body45, label %while.end55

while.body45:                                     ; preds = %while.cond43
  %a46 = getelementptr inbounds %struct._match_item, %struct._match_item* %mi, i32 0, i32 0
  %45 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom47 = zext i32 %46 to i64
  %arrayidx48 = getelementptr inbounds %struct._arc, %struct._arc* %45, i64 %idxprom47
  %47 = bitcast %struct._arc* %a46 to i8*
  %48 = bitcast %struct._arc* %arrayidx48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 16, i1 false)
  %b49 = getelementptr inbounds %struct._match_item, %struct._match_item* %mi, i32 0, i32 1
  %49 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %50 = load i32, i32* %ll, align 4
  %idxprom50 = zext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds %struct._arc, %struct._arc* %49, i64 %idxprom50
  %51 = bitcast %struct._arc* %b49 to i8*
  %52 = bitcast %struct._arc* %arrayidx51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 16, i1 false)
  %53 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %54 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %ll, align 4
  %call = call i32 @_match(%struct._arc* noundef %53, %struct._arc* noundef %54, i32 noundef %55, i32 noundef %56)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then52, label %if.end53

if.then52:                                        ; preds = %while.body45
  %57 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %58 = bitcast %struct._match_item* %mi to i8*
  call void @queue_enque(%struct._queue* noundef %57, i8* noundef %58)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %while.body45
  %59 = load i32, i32* %ll, align 4
  %inc54 = add i32 %59, 1
  store i32 %inc54, i32* %ll, align 4
  br label %while.cond43, !llvm.loop !20

while.end55:                                      ; preds = %while.cond43
  br label %while.end58

if.end56:                                         ; preds = %if.end
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then
  br label %while.cond, !llvm.loop !21

while.end58:                                      ; preds = %while.end55, %if.then15, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end58
  %60 = load i32, i32* %i, align 4
  %inc59 = add i32 %60, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @match_half_sorted_rev(%struct._arc* noundef %a, %struct._arc* noundef %b, i32 noundef %M, i32 noundef %N, %struct._queue* noundef %q) #0 {
entry:
  %a.addr = alloca %struct._arc*, align 8
  %b.addr = alloca %struct._arc*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %q.addr = alloca %struct._queue*, align 8
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %ll = alloca i32, align 4
  %hh = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %mi = alloca %struct._match_item, align 4
  store %struct._arc* %a, %struct._arc** %a.addr, align 8
  store %struct._arc* %b, %struct._arc** %b.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store %struct._queue* %q, %struct._queue** %q.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l, align 4
  %2 = load i32, i32* %M.addr, align 4
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end57, %for.body
  %3 = load i32, i32* %l, align 4
  %4 = load i32, i32* %h, align 4
  %cmp1 = icmp ule i32 %3, %4
  br i1 %cmp1, label %while.body, label %while.end58

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %l, align 4
  %6 = load i32, i32* %h, align 4
  %add = add i32 %5, %6
  %shr = lshr i32 %add, 1
  store i32 %shr, i32* %m, align 4
  %7 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct._arc, %struct._arc* %7, i64 %idxprom
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx, i32 0, i32 2
  %9 = load i32, i32* %ilabel, align 4
  %10 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %11 = load i32, i32* %m, align 4
  %idxprom2 = zext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds %struct._arc, %struct._arc* %10, i64 %idxprom2
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx3, i32 0, i32 3
  %12 = load i32, i32* %olabel, align 4
  %cmp4 = icmp ugt i32 %9, %12
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = load i32, i32* %m, align 4
  %add5 = add i32 %13, 1
  store i32 %add5, i32* %l, align 4
  br label %if.end57

if.else:                                          ; preds = %while.body
  %14 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds %struct._arc, %struct._arc* %14, i64 %idxprom6
  %ilabel8 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx7, i32 0, i32 2
  %16 = load i32, i32* %ilabel8, align 4
  %17 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %18 = load i32, i32* %m, align 4
  %idxprom9 = zext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds %struct._arc, %struct._arc* %17, i64 %idxprom9
  %olabel11 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx10, i32 0, i32 3
  %19 = load i32, i32* %olabel11, align 4
  %cmp12 = icmp ult i32 %16, %19
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else
  %20 = load i32, i32* %m, align 4
  %cmp14 = icmp eq i32 %20, 0
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then13
  br label %while.end58

if.end:                                           ; preds = %if.then13
  %21 = load i32, i32* %m, align 4
  %sub16 = sub i32 %21, 1
  store i32 %sub16, i32* %h, align 4
  br label %if.end56

if.else17:                                        ; preds = %if.else
  %22 = load i32, i32* %m, align 4
  store i32 %22, i32* %hh, align 4
  store i32 %22, i32* %ll, align 4
  br label %while.cond18

while.cond18:                                     ; preds = %while.body28, %if.else17
  %23 = load i32, i32* %ll, align 4
  %24 = load i32, i32* %l, align 4
  %cmp19 = icmp ugt i32 %23, %24
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond18
  %25 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds %struct._arc, %struct._arc* %25, i64 %idxprom20
  %ilabel22 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx21, i32 0, i32 2
  %27 = load i32, i32* %ilabel22, align 4
  %28 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %29 = load i32, i32* %ll, align 4
  %sub23 = sub i32 %29, 1
  %idxprom24 = zext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds %struct._arc, %struct._arc* %28, i64 %idxprom24
  %olabel26 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx25, i32 0, i32 3
  %30 = load i32, i32* %olabel26, align 4
  %cmp27 = icmp eq i32 %27, %30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond18
  %31 = phi i1 [ false, %while.cond18 ], [ %cmp27, %land.rhs ]
  br i1 %31, label %while.body28, label %while.end

while.body28:                                     ; preds = %land.end
  %32 = load i32, i32* %ll, align 4
  %dec = add i32 %32, -1
  store i32 %dec, i32* %ll, align 4
  br label %while.cond18, !llvm.loop !23

while.end:                                        ; preds = %land.end
  br label %while.cond29

while.cond29:                                     ; preds = %while.body41, %while.end
  %33 = load i32, i32* %hh, align 4
  %34 = load i32, i32* %h, align 4
  %cmp30 = icmp ult i32 %33, %34
  br i1 %cmp30, label %land.rhs31, label %land.end40

land.rhs31:                                       ; preds = %while.cond29
  %35 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom32 = zext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds %struct._arc, %struct._arc* %35, i64 %idxprom32
  %ilabel34 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx33, i32 0, i32 2
  %37 = load i32, i32* %ilabel34, align 4
  %38 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %39 = load i32, i32* %hh, align 4
  %add35 = add i32 %39, 1
  %idxprom36 = zext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds %struct._arc, %struct._arc* %38, i64 %idxprom36
  %olabel38 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx37, i32 0, i32 3
  %40 = load i32, i32* %olabel38, align 4
  %cmp39 = icmp eq i32 %37, %40
  br label %land.end40

land.end40:                                       ; preds = %land.rhs31, %while.cond29
  %41 = phi i1 [ false, %while.cond29 ], [ %cmp39, %land.rhs31 ]
  br i1 %41, label %while.body41, label %while.end42

while.body41:                                     ; preds = %land.end40
  %42 = load i32, i32* %hh, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %hh, align 4
  br label %while.cond29, !llvm.loop !24

while.end42:                                      ; preds = %land.end40
  br label %while.cond43

while.cond43:                                     ; preds = %if.end53, %while.end42
  %43 = load i32, i32* %ll, align 4
  %44 = load i32, i32* %hh, align 4
  %cmp44 = icmp ule i32 %43, %44
  br i1 %cmp44, label %while.body45, label %while.end55

while.body45:                                     ; preds = %while.cond43
  %a46 = getelementptr inbounds %struct._match_item, %struct._match_item* %mi, i32 0, i32 0
  %45 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %46 = load i32, i32* %ll, align 4
  %idxprom47 = zext i32 %46 to i64
  %arrayidx48 = getelementptr inbounds %struct._arc, %struct._arc* %45, i64 %idxprom47
  %47 = bitcast %struct._arc* %a46 to i8*
  %48 = bitcast %struct._arc* %arrayidx48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 16, i1 false)
  %b49 = getelementptr inbounds %struct._match_item, %struct._match_item* %mi, i32 0, i32 1
  %49 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom50 = zext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds %struct._arc, %struct._arc* %49, i64 %idxprom50
  %51 = bitcast %struct._arc* %b49 to i8*
  %52 = bitcast %struct._arc* %arrayidx51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 16, i1 false)
  %53 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %54 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %55 = load i32, i32* %ll, align 4
  %56 = load i32, i32* %i, align 4
  %call = call i32 @_match(%struct._arc* noundef %53, %struct._arc* noundef %54, i32 noundef %55, i32 noundef %56)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then52, label %if.end53

if.then52:                                        ; preds = %while.body45
  %57 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %58 = bitcast %struct._match_item* %mi to i8*
  call void @queue_enque(%struct._queue* noundef %57, i8* noundef %58)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %while.body45
  %59 = load i32, i32* %ll, align 4
  %inc54 = add i32 %59, 1
  store i32 %inc54, i32* %ll, align 4
  br label %while.cond43, !llvm.loop !25

while.end55:                                      ; preds = %while.cond43
  br label %while.end58

if.end56:                                         ; preds = %if.end
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then
  br label %while.cond, !llvm.loop !26

while.end58:                                      ; preds = %while.end55, %if.then15, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end58
  %60 = load i32, i32* %i, align 4
  %inc59 = add i32 %60, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @match_unsorted(%struct._arc* noundef %a, %struct._arc* noundef %b, i32 noundef %M, i32 noundef %N, %struct._queue* noundef %q) #0 {
entry:
  %a.addr = alloca %struct._arc*, align 8
  %b.addr = alloca %struct._arc*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %q.addr = alloca %struct._queue*, align 8
  %mi = alloca %struct._match_item, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._arc* %a, %struct._arc** %a.addr, align 8
  store %struct._arc* %b, %struct._arc** %b.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store %struct._queue* %q, %struct._queue** %q.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %M.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp2 = icmp ult i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct._arc, %struct._arc* %4, i64 %idxprom
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx, i32 0, i32 3
  %6 = load i32, i32* %olabel, align 4
  %7 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom4 = zext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds %struct._arc, %struct._arc* %7, i64 %idxprom4
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx5, i32 0, i32 2
  %9 = load i32, i32* %ilabel, align 4
  %cmp6 = icmp eq i32 %6, %9
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %10 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %11 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %call = call i32 @_match(%struct._arc* noundef %10, %struct._arc* noundef %11, i32 noundef %12, i32 noundef %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %a7 = getelementptr inbounds %struct._match_item, %struct._match_item* %mi, i32 0, i32 0
  %14 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct._arc, %struct._arc* %14, i64 %idxprom8
  %16 = bitcast %struct._arc* %a7 to i8*
  %17 = bitcast %struct._arc* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 16, i1 false)
  %b10 = getelementptr inbounds %struct._match_item, %struct._match_item* %mi, i32 0, i32 1
  %18 = load %struct._arc*, %struct._arc** %b.addr, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom11 = zext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds %struct._arc, %struct._arc* %18, i64 %idxprom11
  %20 = bitcast %struct._arc* %b10 to i8*
  %21 = bitcast %struct._arc* %arrayidx12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 16, i1 false)
  %22 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %23 = bitcast %struct._match_item* %mi to i8*
  call void @queue_enque(%struct._queue* noundef %22, i8* noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %j, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !28

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc14 = add i32 %25, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end15:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._fst* @fst_compose(%struct._fst* noundef %fst_a, %struct._fst* noundef %fst_b, %struct._fst* noundef %fst_c) #0 {
entry:
  %fst_a.addr = alloca %struct._fst*, align 8
  %fst_b.addr = alloca %struct._fst*, align 8
  %fst_c.addr = alloca %struct._fst*, align 8
  %sr = alloca %struct._sr, align 8
  %q = alloca %struct._queue*, align 8
  %mq = alloca %struct._queue*, align 8
  %marked = alloca %struct._hash*, align 8
  %pair = alloca %struct._spair, align 4
  %mi = alloca %struct._arc_pair, align 4
  %sc = alloca i32, align 4
  %dst_sc = alloca i32, align 4
  %state_a = alloca %struct._state*, align 8
  %state_b = alloca %struct._state*, align 8
  %dst_state_a = alloca %struct._state*, align 8
  %dst_state_b = alloca %struct._state*, align 8
  %arc_a = alloca %struct._arc*, align 8
  %arc_b = alloca %struct._arc*, align 8
  store %struct._fst* %fst_a, %struct._fst** %fst_a.addr, align 8
  store %struct._fst* %fst_b, %struct._fst** %fst_b.addr, align 8
  store %struct._fst* %fst_c, %struct._fst** %fst_c.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst_a.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 3
  %1 = load i8, i8* %sr_type, align 4
  call void @sr_get(%struct._sr* sret(%struct._sr) align 8 %sr, i8 noundef zeroext %1)
  %call = call %struct._queue* @queue_create(i64 noundef 8)
  store %struct._queue* %call, %struct._queue** %q, align 8
  %call1 = call %struct._queue* @queue_create(i64 noundef 32)
  store %struct._queue* %call1, %struct._queue** %mq, align 8
  %call2 = call %struct._hash* @hash_create(i64 (i8*)* noundef @hash_pair, i32 (i8*, i8*)* noundef @cmp_pair, i64 noundef 8, i64 noundef 4, i64 noundef 1000)
  store %struct._hash* %call2, %struct._hash** %marked, align 8
  %2 = load %struct._fst*, %struct._fst** %fst_a.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %2, i32 0, i32 0
  %3 = load i32, i32* %start, align 8
  %a = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 0
  store i32 %3, i32* %a, align 4
  %4 = load %struct._fst*, %struct._fst** %fst_b.addr, align 8
  %start3 = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 0
  %5 = load i32, i32* %start3, align 8
  %b = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 1
  store i32 %5, i32* %b, align 4
  %6 = load %struct._queue*, %struct._queue** %q, align 8
  %7 = bitcast %struct._spair* %pair to i8*
  call void @queue_enque(%struct._queue* noundef %6, i8* noundef %7)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %8 = load %struct._queue*, %struct._queue** %q, align 8
  %9 = bitcast %struct._spair* %pair to i8*
  %call4 = call i8* @queue_deque(%struct._queue* noundef %8, i8* noundef %9)
  %cmp = icmp ne i8* %call4, null
  br i1 %cmp, label %while.body, label %while.end60

while.body:                                       ; preds = %while.cond
  %10 = load %struct._fst*, %struct._fst** %fst_a.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %10, i32 0, i32 5
  %11 = load %struct._state*, %struct._state** %states, align 8
  %a5 = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 0
  %12 = load i32, i32* %a5, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %11, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state_a, align 8
  %13 = load %struct._fst*, %struct._fst** %fst_b.addr, align 8
  %states6 = getelementptr inbounds %struct._fst, %struct._fst* %13, i32 0, i32 5
  %14 = load %struct._state*, %struct._state** %states6, align 8
  %b7 = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 1
  %15 = load i32, i32* %b7, align 4
  %idxprom8 = zext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct._state, %struct._state* %14, i64 %idxprom8
  store %struct._state* %arrayidx9, %struct._state** %state_b, align 8
  %16 = load %struct._hash*, %struct._hash** %marked, align 8
  %17 = bitcast %struct._spair* %pair to i8*
  %18 = bitcast i32* %sc to i8*
  %call10 = call i8* @hash_get(%struct._hash* noundef %16, i8* noundef %17, i8* noundef %18)
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then, label %if.end26

if.then:                                          ; preds = %while.body
  %19 = load %struct._fst*, %struct._fst** %fst_c.addr, align 8
  %call12 = call i32 @fst_add_state(%struct._fst* noundef %19)
  store i32 %call12, i32* %sc, align 4
  %20 = load %struct._state*, %struct._state** %state_a, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %20, i32 0, i32 3
  %21 = load i32, i32* %final, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %22 = load %struct._state*, %struct._state** %state_b, align 8
  %final13 = getelementptr inbounds %struct._state, %struct._state* %22, i32 0, i32 3
  %23 = load i32, i32* %final13, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %land.lhs.true
  %24 = load %struct._fst*, %struct._fst** %fst_c.addr, align 8
  %25 = load i32, i32* %sc, align 4
  %one = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %26 = load float, float* %one, align 4
  call void @fst_set_final(%struct._fst* noundef %24, i32 noundef %25, float noundef %26)
  br label %if.end

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then
  %a16 = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 0
  %27 = load i32, i32* %a16, align 4
  %28 = load %struct._fst*, %struct._fst** %fst_a.addr, align 8
  %start17 = getelementptr inbounds %struct._fst, %struct._fst* %28, i32 0, i32 0
  %29 = load i32, i32* %start17, align 8
  %cmp18 = icmp eq i32 %27, %29
  br i1 %cmp18, label %land.lhs.true19, label %if.end25

land.lhs.true19:                                  ; preds = %if.end
  %b20 = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 1
  %30 = load i32, i32* %b20, align 4
  %31 = load %struct._fst*, %struct._fst** %fst_b.addr, align 8
  %start21 = getelementptr inbounds %struct._fst, %struct._fst* %31, i32 0, i32 0
  %32 = load i32, i32* %start21, align 8
  %cmp22 = icmp eq i32 %30, %32
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %land.lhs.true19
  %33 = load i32, i32* %sc, align 4
  %34 = load %struct._fst*, %struct._fst** %fst_c.addr, align 8
  %start24 = getelementptr inbounds %struct._fst, %struct._fst* %34, i32 0, i32 0
  store i32 %33, i32* %start24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true19, %if.end
  %35 = load %struct._hash*, %struct._hash** %marked, align 8
  %36 = bitcast %struct._spair* %pair to i8*
  %37 = bitcast i32* %sc to i8*
  call void @hash_add(%struct._hash* noundef %35, i8* noundef %36, i8* noundef %37)
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %while.body
  %38 = load %struct._fst*, %struct._fst** %fst_a.addr, align 8
  %39 = load %struct._fst*, %struct._fst** %fst_b.addr, align 8
  %40 = load %struct._queue*, %struct._queue** %mq, align 8
  call void @match_arcs(%struct._fst* noundef %38, %struct._fst* noundef %39, %struct._spair* noundef %pair, %struct._sr* noundef %sr, %struct._queue* noundef %40)
  br label %while.cond27

while.cond27:                                     ; preds = %if.end56, %if.end26
  %41 = load %struct._queue*, %struct._queue** %mq, align 8
  %42 = bitcast %struct._arc_pair* %mi to i8*
  %call28 = call i8* @queue_deque(%struct._queue* noundef %41, i8* noundef %42)
  %cmp29 = icmp ne i8* %call28, null
  br i1 %cmp29, label %while.body30, label %while.end

while.body30:                                     ; preds = %while.cond27
  %a31 = getelementptr inbounds %struct._arc_pair, %struct._arc_pair* %mi, i32 0, i32 0
  store %struct._arc* %a31, %struct._arc** %arc_a, align 8
  %b32 = getelementptr inbounds %struct._arc_pair, %struct._arc_pair* %mi, i32 0, i32 1
  store %struct._arc* %b32, %struct._arc** %arc_b, align 8
  %43 = load %struct._arc*, %struct._arc** %arc_a, align 8
  %state = getelementptr inbounds %struct._arc, %struct._arc* %43, i32 0, i32 0
  %44 = load i32, i32* %state, align 4
  %a33 = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 0
  store i32 %44, i32* %a33, align 4
  %45 = load %struct._arc*, %struct._arc** %arc_b, align 8
  %state34 = getelementptr inbounds %struct._arc, %struct._arc* %45, i32 0, i32 0
  %46 = load i32, i32* %state34, align 4
  %b35 = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 1
  store i32 %46, i32* %b35, align 4
  %47 = load %struct._hash*, %struct._hash** %marked, align 8
  %48 = bitcast %struct._spair* %pair to i8*
  %49 = bitcast i32* %dst_sc to i8*
  %call36 = call i8* @hash_get(%struct._hash* noundef %47, i8* noundef %48, i8* noundef %49)
  %cmp37 = icmp eq i8* %call36, null
  br i1 %cmp37, label %if.then38, label %if.end56

if.then38:                                        ; preds = %while.body30
  %50 = load %struct._fst*, %struct._fst** %fst_a.addr, align 8
  %states39 = getelementptr inbounds %struct._fst, %struct._fst* %50, i32 0, i32 5
  %51 = load %struct._state*, %struct._state** %states39, align 8
  %a40 = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 0
  %52 = load i32, i32* %a40, align 4
  %idxprom41 = zext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds %struct._state, %struct._state* %51, i64 %idxprom41
  store %struct._state* %arrayidx42, %struct._state** %dst_state_a, align 8
  %53 = load %struct._fst*, %struct._fst** %fst_b.addr, align 8
  %states43 = getelementptr inbounds %struct._fst, %struct._fst* %53, i32 0, i32 5
  %54 = load %struct._state*, %struct._state** %states43, align 8
  %b44 = getelementptr inbounds %struct._spair, %struct._spair* %pair, i32 0, i32 1
  %55 = load i32, i32* %b44, align 4
  %idxprom45 = zext i32 %55 to i64
  %arrayidx46 = getelementptr inbounds %struct._state, %struct._state* %54, i64 %idxprom45
  store %struct._state* %arrayidx46, %struct._state** %dst_state_b, align 8
  %56 = load %struct._fst*, %struct._fst** %fst_c.addr, align 8
  %call47 = call i32 @fst_add_state(%struct._fst* noundef %56)
  store i32 %call47, i32* %dst_sc, align 4
  %57 = load %struct._state*, %struct._state** %dst_state_a, align 8
  %final48 = getelementptr inbounds %struct._state, %struct._state* %57, i32 0, i32 3
  %58 = load i32, i32* %final48, align 4
  %tobool49 = icmp ne i32 %58, 0
  br i1 %tobool49, label %land.lhs.true50, label %if.end55

land.lhs.true50:                                  ; preds = %if.then38
  %59 = load %struct._state*, %struct._state** %dst_state_b, align 8
  %final51 = getelementptr inbounds %struct._state, %struct._state* %59, i32 0, i32 3
  %60 = load i32, i32* %final51, align 4
  %tobool52 = icmp ne i32 %60, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %land.lhs.true50
  %61 = load %struct._fst*, %struct._fst** %fst_c.addr, align 8
  %62 = load i32, i32* %dst_sc, align 4
  %one54 = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %63 = load float, float* %one54, align 4
  call void @fst_set_final(%struct._fst* noundef %61, i32 noundef %62, float noundef %63)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %land.lhs.true50, %if.then38
  %64 = load %struct._queue*, %struct._queue** %q, align 8
  %65 = bitcast %struct._spair* %pair to i8*
  call void @queue_enque(%struct._queue* noundef %64, i8* noundef %65)
  %66 = load %struct._hash*, %struct._hash** %marked, align 8
  %67 = bitcast %struct._spair* %pair to i8*
  %68 = bitcast i32* %dst_sc to i8*
  call void @hash_add(%struct._hash* noundef %66, i8* noundef %67, i8* noundef %68)
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %while.body30
  %69 = load %struct._fst*, %struct._fst** %fst_c.addr, align 8
  %70 = load i32, i32* %sc, align 4
  %71 = load i32, i32* %dst_sc, align 4
  %72 = load %struct._arc*, %struct._arc** %arc_a, align 8
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %72, i32 0, i32 2
  %73 = load i32, i32* %ilabel, align 4
  %74 = load %struct._arc*, %struct._arc** %arc_b, align 8
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %74, i32 0, i32 3
  %75 = load i32, i32* %olabel, align 4
  %prod = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 1
  %76 = load float (float, float)*, float (float, float)** %prod, align 8
  %77 = load %struct._arc*, %struct._arc** %arc_a, align 8
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %77, i32 0, i32 1
  %78 = load float, float* %weight, align 4
  %79 = load %struct._arc*, %struct._arc** %arc_b, align 8
  %weight57 = getelementptr inbounds %struct._arc, %struct._arc* %79, i32 0, i32 1
  %80 = load float, float* %weight57, align 4
  %call58 = call float %76(float noundef %78, float noundef %80)
  %call59 = call i32 @fst_add_arc(%struct._fst* noundef %69, i32 noundef %70, i32 noundef %71, i32 noundef %73, i32 noundef %75, float noundef %call58)
  br label %while.cond27, !llvm.loop !30

while.end:                                        ; preds = %while.cond27
  br label %while.cond, !llvm.loop !31

while.end60:                                      ; preds = %while.cond
  %81 = load %struct._queue*, %struct._queue** %q, align 8
  call void @queue_remove(%struct._queue* noundef %81)
  %82 = load %struct._queue*, %struct._queue** %mq, align 8
  call void @queue_remove(%struct._queue* noundef %82)
  %83 = load %struct._hash*, %struct._hash** %marked, align 8
  call void @hash_remove(%struct._hash* noundef %83)
  %84 = load %struct._fst*, %struct._fst** %fst_c.addr, align 8
  ret %struct._fst* %84
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._queue* @queue_create(i64 noundef %item_size) #0 {
entry:
  %item_size.addr = alloca i64, align 8
  %q = alloca %struct._queue*, align 8
  store i64 %item_size, i64* %item_size.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 32) #8
  %0 = bitcast i8* %call to %struct._queue*
  store %struct._queue* %0, %struct._queue** %q, align 8
  %1 = load i64, i64* %item_size.addr, align 8
  %2 = load %struct._queue*, %struct._queue** %q, align 8
  %item_size1 = getelementptr inbounds %struct._queue, %struct._queue* %2, i32 0, i32 2
  store i64 %1, i64* %item_size1, align 8
  %3 = load %struct._queue*, %struct._queue** %q, align 8
  %n_items = getelementptr inbounds %struct._queue, %struct._queue* %3, i32 0, i32 3
  store i64 0, i64* %n_items, align 8
  %4 = load %struct._queue*, %struct._queue** %q, align 8
  %head = getelementptr inbounds %struct._queue, %struct._queue* %4, i32 0, i32 0
  store %struct._qnode* null, %struct._qnode** %head, align 8
  %5 = load %struct._queue*, %struct._queue** %q, align 8
  %tail = getelementptr inbounds %struct._queue, %struct._queue* %5, i32 0, i32 1
  store %struct._qnode* null, %struct._qnode** %tail, align 8
  %6 = load %struct._queue*, %struct._queue** %q, align 8
  ret %struct._queue* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._hash* @hash_create(i64 (i8*)* noundef %hash_f, i32 (i8*, i8*)* noundef %cmp_f, i64 noundef %key_size, i64 noundef %item_size, i64 noundef %size) #0 {
entry:
  %hash_f.addr = alloca i64 (i8*)*, align 8
  %cmp_f.addr = alloca i32 (i8*, i8*)*, align 8
  %key_size.addr = alloca i64, align 8
  %item_size.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %hash = alloca %struct._hash*, align 8
  %buckets = alloca %struct._bucket*, align 8
  %i = alloca i64, align 8
  store i64 (i8*)* %hash_f, i64 (i8*)** %hash_f.addr, align 8
  store i32 (i8*, i8*)* %cmp_f, i32 (i8*, i8*)** %cmp_f.addr, align 8
  store i64 %key_size, i64* %key_size.addr, align 8
  store i64 %item_size, i64* %item_size.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 56) #8
  %0 = bitcast i8* %call to %struct._hash*
  store %struct._hash* %0, %struct._hash** %hash, align 8
  %1 = load i64, i64* %size.addr, align 8
  %mul = mul i64 %1, 16
  %call1 = call noalias i8* @malloc(i64 noundef %mul) #8
  %2 = bitcast i8* %call1 to %struct._bucket*
  store %struct._bucket* %2, %struct._bucket** %buckets, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._bucket*, %struct._bucket** %buckets, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct._bucket, %struct._bucket* %5, i64 %6
  %tail = getelementptr inbounds %struct._bucket, %struct._bucket* %arrayidx, i32 0, i32 1
  store %struct._bitem* null, %struct._bitem** %tail, align 8
  %7 = load %struct._bucket*, %struct._bucket** %buckets, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds %struct._bucket, %struct._bucket* %7, i64 %8
  %head = getelementptr inbounds %struct._bucket, %struct._bucket* %arrayidx2, i32 0, i32 0
  store %struct._bitem* null, %struct._bitem** %head, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* %key_size.addr, align 8
  %11 = load %struct._hash*, %struct._hash** %hash, align 8
  %key_size3 = getelementptr inbounds %struct._hash, %struct._hash* %11, i32 0, i32 2
  store i64 %10, i64* %key_size3, align 8
  %12 = load i64, i64* %item_size.addr, align 8
  %13 = load %struct._hash*, %struct._hash** %hash, align 8
  %item_size4 = getelementptr inbounds %struct._hash, %struct._hash* %13, i32 0, i32 1
  store i64 %12, i64* %item_size4, align 8
  %14 = load i64, i64* %size.addr, align 8
  %15 = load %struct._hash*, %struct._hash** %hash, align 8
  %size5 = getelementptr inbounds %struct._hash, %struct._hash* %15, i32 0, i32 3
  store i64 %14, i64* %size5, align 8
  %16 = load %struct._bucket*, %struct._bucket** %buckets, align 8
  %17 = load %struct._hash*, %struct._hash** %hash, align 8
  %buckets6 = getelementptr inbounds %struct._hash, %struct._hash* %17, i32 0, i32 0
  store %struct._bucket* %16, %struct._bucket** %buckets6, align 8
  %18 = load i64 (i8*)*, i64 (i8*)** %hash_f.addr, align 8
  %19 = load %struct._hash*, %struct._hash** %hash, align 8
  %hash_f7 = getelementptr inbounds %struct._hash, %struct._hash* %19, i32 0, i32 5
  store i64 (i8*)* %18, i64 (i8*)** %hash_f7, align 8
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp_f.addr, align 8
  %21 = load %struct._hash*, %struct._hash** %hash, align 8
  %cmp_f8 = getelementptr inbounds %struct._hash, %struct._hash* %21, i32 0, i32 6
  store i32 (i8*, i8*)* %20, i32 (i8*, i8*)** %cmp_f8, align 8
  %22 = load %struct._hash*, %struct._hash** %hash, align 8
  %n_items = getelementptr inbounds %struct._hash, %struct._hash* %22, i32 0, i32 4
  store i64 0, i64* %n_items, align 8
  %23 = load %struct._hash*, %struct._hash** %hash, align 8
  ret %struct._hash* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_enque(%struct._queue* noundef %q, i8* noundef %item) #0 {
entry:
  %q.addr = alloca %struct._queue*, align 8
  %item.addr = alloca i8*, align 8
  %node = alloca %struct._qnode*, align 8
  store %struct._queue* %q, %struct._queue** %q.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %cmp = icmp ne %struct._queue* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.45, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.queue_enque, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %item_size = getelementptr inbounds %struct._queue, %struct._queue* %1, i32 0, i32 2
  %2 = load i64, i64* %item_size, align 8
  %add = add i64 15, %2
  %call = call noalias i8* @malloc(i64 noundef %add) #8
  %3 = bitcast i8* %call to %struct._qnode*
  store %struct._qnode* %3, %struct._qnode** %node, align 8
  %4 = load %struct._qnode*, %struct._qnode** %node, align 8
  %next = getelementptr inbounds %struct._qnode, %struct._qnode* %4, i32 0, i32 0
  store %struct._qnode* null, %struct._qnode** %next, align 8
  %5 = load %struct._qnode*, %struct._qnode** %node, align 8
  %item1 = getelementptr inbounds %struct._qnode, %struct._qnode* %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %item1, i64 0, i64 0
  %6 = load i8*, i8** %item.addr, align 8
  %7 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %item_size2 = getelementptr inbounds %struct._queue, %struct._queue* %7, i32 0, i32 2
  %8 = load i64, i64* %item_size2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay, i8* align 1 %6, i64 %8, i1 false)
  %9 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %head = getelementptr inbounds %struct._queue, %struct._queue* %9, i32 0, i32 0
  %10 = load %struct._qnode*, %struct._qnode** %head, align 8
  %cmp3 = icmp eq %struct._qnode* %10, null
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.end
  %11 = load %struct._qnode*, %struct._qnode** %node, align 8
  %12 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %tail = getelementptr inbounds %struct._queue, %struct._queue* %12, i32 0, i32 1
  store %struct._qnode* %11, %struct._qnode** %tail, align 8
  %13 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %head5 = getelementptr inbounds %struct._queue, %struct._queue* %13, i32 0, i32 0
  store %struct._qnode* %11, %struct._qnode** %head5, align 8
  br label %if.end10

if.else6:                                         ; preds = %if.end
  %14 = load %struct._qnode*, %struct._qnode** %node, align 8
  %15 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %tail7 = getelementptr inbounds %struct._queue, %struct._queue* %15, i32 0, i32 1
  %16 = load %struct._qnode*, %struct._qnode** %tail7, align 8
  %next8 = getelementptr inbounds %struct._qnode, %struct._qnode* %16, i32 0, i32 0
  store %struct._qnode* %14, %struct._qnode** %next8, align 8
  %17 = load %struct._qnode*, %struct._qnode** %node, align 8
  %18 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %tail9 = getelementptr inbounds %struct._queue, %struct._queue* %18, i32 0, i32 1
  store %struct._qnode* %17, %struct._qnode** %tail9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else6, %if.then4
  %19 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %n_items = getelementptr inbounds %struct._queue, %struct._queue* %19, i32 0, i32 3
  %20 = load i64, i64* %n_items, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %n_items, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @queue_deque(%struct._queue* noundef %q, i8* noundef %item) #0 {
entry:
  %retval = alloca i8*, align 8
  %q.addr = alloca %struct._queue*, align 8
  %item.addr = alloca i8*, align 8
  %t_node = alloca %struct._qnode*, align 8
  store %struct._queue* %q, %struct._queue** %q.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %cmp = icmp ne %struct._queue* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.45, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.queue_deque, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %head = getelementptr inbounds %struct._queue, %struct._queue* %1, i32 0, i32 0
  %2 = load %struct._qnode*, %struct._qnode** %head, align 8
  %cmp1 = icmp eq %struct._qnode* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %head4 = getelementptr inbounds %struct._queue, %struct._queue* %3, i32 0, i32 0
  %4 = load %struct._qnode*, %struct._qnode** %head4, align 8
  store %struct._qnode* %4, %struct._qnode** %t_node, align 8
  %5 = load i8*, i8** %item.addr, align 8
  %6 = load %struct._qnode*, %struct._qnode** %t_node, align 8
  %item5 = getelementptr inbounds %struct._qnode, %struct._qnode* %6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %item5, i64 0, i64 0
  %7 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %item_size = getelementptr inbounds %struct._queue, %struct._queue* %7, i32 0, i32 2
  %8 = load i64, i64* %item_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %arraydecay, i64 %8, i1 false)
  %9 = load %struct._qnode*, %struct._qnode** %t_node, align 8
  %next = getelementptr inbounds %struct._qnode, %struct._qnode* %9, i32 0, i32 0
  %10 = load %struct._qnode*, %struct._qnode** %next, align 8
  %11 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %head6 = getelementptr inbounds %struct._queue, %struct._queue* %11, i32 0, i32 0
  store %struct._qnode* %10, %struct._qnode** %head6, align 8
  %12 = load %struct._qnode*, %struct._qnode** %t_node, align 8
  %13 = bitcast %struct._qnode* %12 to i8*
  call void @free(i8* noundef %13) #8
  %14 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %n_items = getelementptr inbounds %struct._queue, %struct._queue* %14, i32 0, i32 3
  %15 = load i64, i64* %n_items, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %n_items, align 8
  %16 = load i8*, i8** %item.addr, align 8
  store i8* %16, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2
  %17 = load i8*, i8** %retval, align 8
  ret i8* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_get(%struct._hash* noundef %hash, i8* noundef %key, i8* noundef %item) #0 {
entry:
  %retval = alloca i8*, align 8
  %hash.addr = alloca %struct._hash*, align 8
  %key.addr = alloca i8*, align 8
  %item.addr = alloca i8*, align 8
  %bucket = alloca %struct._bucket, align 8
  %bi = alloca %struct._bitem*, align 8
  store %struct._hash* %hash, %struct._hash** %hash.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets = getelementptr inbounds %struct._hash, %struct._hash* %0, i32 0, i32 0
  %1 = load %struct._bucket*, %struct._bucket** %buckets, align 8
  %2 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %hash_f = getelementptr inbounds %struct._hash, %struct._hash* %2, i32 0, i32 5
  %3 = load i64 (i8*)*, i64 (i8*)** %hash_f, align 8
  %4 = load i8*, i8** %key.addr, align 8
  %call = call i64 %3(i8* noundef %4)
  %5 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size = getelementptr inbounds %struct._hash, %struct._hash* %5, i32 0, i32 3
  %6 = load i64, i64* %size, align 8
  %rem = urem i64 %call, %6
  %arrayidx = getelementptr inbounds %struct._bucket, %struct._bucket* %1, i64 %rem
  %7 = bitcast %struct._bucket* %bucket to i8*
  %8 = bitcast %struct._bucket* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %head = getelementptr inbounds %struct._bucket, %struct._bucket* %bucket, i32 0, i32 0
  %9 = load %struct._bitem*, %struct._bitem** %head, align 8
  store %struct._bitem* %9, %struct._bitem** %bi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %cmp = icmp ne %struct._bitem* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %cmp_f = getelementptr inbounds %struct._hash, %struct._hash* %11, i32 0, i32 6
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp_f, align 8
  %13 = load i8*, i8** %key.addr, align 8
  %14 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %key1 = getelementptr inbounds %struct._bitem, %struct._bitem* %14, i32 0, i32 0
  %15 = load i8*, i8** %key1, align 8
  %call2 = call i32 %12(i8* noundef %13, i8* noundef %15)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i8*, i8** %item.addr, align 8
  %17 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %value = getelementptr inbounds %struct._bitem, %struct._bitem* %17, i32 0, i32 1
  %18 = load i8*, i8** %value, align 8
  %19 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %item_size = getelementptr inbounds %struct._hash, %struct._hash* %19, i32 0, i32 1
  %20 = load i64, i64* %item_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %18, i64 %20, i1 false)
  %21 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %value3 = getelementptr inbounds %struct._bitem, %struct._bitem* %21, i32 0, i32 1
  %22 = load i8*, i8** %value3, align 8
  store i8* %22, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %next = getelementptr inbounds %struct._bitem, %struct._bitem* %23, i32 0, i32 2
  %24 = load %struct._bitem*, %struct._bitem** %next, align 8
  store %struct._bitem* %24, %struct._bitem** %bi, align 8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %25 = load i8*, i8** %retval, align 8
  ret i8* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_add(%struct._hash* noundef %hash, i8* noundef %key, i8* noundef %value) #0 {
entry:
  %hash.addr = alloca %struct._hash*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %bnum = alloca i64, align 8
  %bucket = alloca %struct._bucket*, align 8
  %bi = alloca %struct._bitem*, align 8
  %bitem = alloca %struct._bitem*, align 8
  store %struct._hash* %hash, %struct._hash** %hash.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %hash_f = getelementptr inbounds %struct._hash, %struct._hash* %0, i32 0, i32 5
  %1 = load i64 (i8*)*, i64 (i8*)** %hash_f, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i64 %1(i8* noundef %2)
  %3 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size = getelementptr inbounds %struct._hash, %struct._hash* %3, i32 0, i32 3
  %4 = load i64, i64* %size, align 8
  %rem = urem i64 %call, %4
  store i64 %rem, i64* %bnum, align 8
  %5 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets = getelementptr inbounds %struct._hash, %struct._hash* %5, i32 0, i32 0
  %6 = load %struct._bucket*, %struct._bucket** %buckets, align 8
  %7 = load i64, i64* %bnum, align 8
  %arrayidx = getelementptr inbounds %struct._bucket, %struct._bucket* %6, i64 %7
  store %struct._bucket* %arrayidx, %struct._bucket** %bucket, align 8
  %8 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %head = getelementptr inbounds %struct._bucket, %struct._bucket* %8, i32 0, i32 0
  %9 = load %struct._bitem*, %struct._bitem** %head, align 8
  store %struct._bitem* %9, %struct._bitem** %bi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %cmp = icmp ne %struct._bitem* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %cmp_f = getelementptr inbounds %struct._hash, %struct._hash* %11, i32 0, i32 6
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp_f, align 8
  %13 = load i8*, i8** %key.addr, align 8
  %14 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %key1 = getelementptr inbounds %struct._bitem, %struct._bitem* %14, i32 0, i32 0
  %15 = load i8*, i8** %key1, align 8
  %call2 = call i32 %12(i8* noundef %13, i8* noundef %15)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %key3 = getelementptr inbounds %struct._bitem, %struct._bitem* %16, i32 0, i32 0
  %17 = load i8*, i8** %key3, align 8
  %18 = load i8*, i8** %key.addr, align 8
  %19 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %key_size = getelementptr inbounds %struct._hash, %struct._hash* %19, i32 0, i32 2
  %20 = load i64, i64* %key_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 %20, i1 false)
  %21 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %value4 = getelementptr inbounds %struct._bitem, %struct._bitem* %21, i32 0, i32 1
  %22 = load i8*, i8** %value4, align 8
  %23 = load i8*, i8** %value.addr, align 8
  %24 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %item_size = getelementptr inbounds %struct._hash, %struct._hash* %24, i32 0, i32 1
  %25 = load i64, i64* %item_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 %25, i1 false)
  br label %if.end34

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %next = getelementptr inbounds %struct._bitem, %struct._bitem* %26, i32 0, i32 2
  %27 = load %struct._bitem*, %struct._bitem** %next, align 8
  store %struct._bitem* %27, %struct._bitem** %bi, align 8
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %call5 = call noalias i8* @malloc(i64 noundef 24) #8
  %28 = bitcast i8* %call5 to %struct._bitem*
  store %struct._bitem* %28, %struct._bitem** %bitem, align 8
  %29 = load i8*, i8** %key.addr, align 8
  %30 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %key6 = getelementptr inbounds %struct._bitem, %struct._bitem* %30, i32 0, i32 0
  store i8* %29, i8** %key6, align 8
  %31 = load i8*, i8** %value.addr, align 8
  %32 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %value7 = getelementptr inbounds %struct._bitem, %struct._bitem* %32, i32 0, i32 1
  store i8* %31, i8** %value7, align 8
  %33 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %next8 = getelementptr inbounds %struct._bitem, %struct._bitem* %33, i32 0, i32 2
  store %struct._bitem* null, %struct._bitem** %next8, align 8
  %34 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %key_size9 = getelementptr inbounds %struct._hash, %struct._hash* %34, i32 0, i32 2
  %35 = load i64, i64* %key_size9, align 8
  %call10 = call noalias i8* @malloc(i64 noundef %35) #8
  %36 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %key11 = getelementptr inbounds %struct._bitem, %struct._bitem* %36, i32 0, i32 0
  store i8* %call10, i8** %key11, align 8
  %37 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %key12 = getelementptr inbounds %struct._bitem, %struct._bitem* %37, i32 0, i32 0
  %38 = load i8*, i8** %key12, align 8
  %39 = load i8*, i8** %key.addr, align 8
  %40 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %key_size13 = getelementptr inbounds %struct._hash, %struct._hash* %40, i32 0, i32 2
  %41 = load i64, i64* %key_size13, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %38, i8* align 1 %39, i64 %41, i1 false)
  %42 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %item_size14 = getelementptr inbounds %struct._hash, %struct._hash* %42, i32 0, i32 1
  %43 = load i64, i64* %item_size14, align 8
  %call15 = call noalias i8* @malloc(i64 noundef %43) #8
  %44 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %value16 = getelementptr inbounds %struct._bitem, %struct._bitem* %44, i32 0, i32 1
  store i8* %call15, i8** %value16, align 8
  %45 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %value17 = getelementptr inbounds %struct._bitem, %struct._bitem* %45, i32 0, i32 1
  %46 = load i8*, i8** %value17, align 8
  %47 = load i8*, i8** %value.addr, align 8
  %48 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %item_size18 = getelementptr inbounds %struct._hash, %struct._hash* %48, i32 0, i32 1
  %49 = load i64, i64* %item_size18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 %47, i64 %49, i1 false)
  %50 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %tail = getelementptr inbounds %struct._bucket, %struct._bucket* %50, i32 0, i32 1
  %51 = load %struct._bitem*, %struct._bitem** %tail, align 8
  %cmp19 = icmp eq %struct._bitem* %51, null
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.end
  %52 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %53 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %head21 = getelementptr inbounds %struct._bucket, %struct._bucket* %53, i32 0, i32 0
  store %struct._bitem* %52, %struct._bitem** %head21, align 8
  %54 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %tail22 = getelementptr inbounds %struct._bucket, %struct._bucket* %54, i32 0, i32 1
  store %struct._bitem* %52, %struct._bitem** %tail22, align 8
  br label %if.end26

if.else:                                          ; preds = %for.end
  %55 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %56 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %tail23 = getelementptr inbounds %struct._bucket, %struct._bucket* %56, i32 0, i32 1
  %57 = load %struct._bitem*, %struct._bitem** %tail23, align 8
  %next24 = getelementptr inbounds %struct._bitem, %struct._bitem* %57, i32 0, i32 2
  store %struct._bitem* %55, %struct._bitem** %next24, align 8
  %58 = load %struct._bitem*, %struct._bitem** %bitem, align 8
  %59 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %tail25 = getelementptr inbounds %struct._bucket, %struct._bucket* %59, i32 0, i32 1
  store %struct._bitem* %58, %struct._bitem** %tail25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then20
  %60 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %n_items = getelementptr inbounds %struct._hash, %struct._hash* %60, i32 0, i32 4
  %61 = load i64, i64* %n_items, align 8
  %inc = add i64 %61, 1
  store i64 %inc, i64* %n_items, align 8
  %62 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %n_items27 = getelementptr inbounds %struct._hash, %struct._hash* %62, i32 0, i32 4
  %63 = load i64, i64* %n_items27, align 8
  %conv = uitofp i64 %63 to float
  %64 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size28 = getelementptr inbounds %struct._hash, %struct._hash* %64, i32 0, i32 3
  %65 = load i64, i64* %size28, align 8
  %conv29 = uitofp i64 %65 to float
  %div = fdiv float %conv, %conv29
  %conv30 = fpext float %div to double
  %cmp31 = fcmp ogt double %conv30, 7.500000e-01
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end26
  %66 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  call void @hash_resize(%struct._hash* noundef %66)
  br label %if.end34

if.end34:                                         ; preds = %if.then, %if.then33, %if.end26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_remove(%struct._queue* noundef %q) #0 {
entry:
  %q.addr = alloca %struct._queue*, align 8
  store %struct._queue* %q, %struct._queue** %q.addr, align 8
  %0 = load %struct._queue*, %struct._queue** %q.addr, align 8
  call void @queue_empty(%struct._queue* noundef %0)
  %1 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %2 = bitcast %struct._queue* %1 to i8*
  call void @free(i8* noundef %2) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_remove(%struct._hash* noundef %hash) #0 {
entry:
  %hash.addr = alloca %struct._hash*, align 8
  %i = alloca i64, align 8
  store %struct._hash* %hash, %struct._hash** %hash.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size = getelementptr inbounds %struct._hash, %struct._hash* %1, i32 0, i32 3
  %2 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets = getelementptr inbounds %struct._hash, %struct._hash* %3, i32 0, i32 0
  %4 = load %struct._bucket*, %struct._bucket** %buckets, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct._bucket, %struct._bucket* %4, i64 %5
  %head = getelementptr inbounds %struct._bucket, %struct._bucket* %arrayidx, i32 0, i32 0
  %6 = load %struct._bitem*, %struct._bitem** %head, align 8
  call void @empty_chain(%struct._bitem* noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %8 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets1 = getelementptr inbounds %struct._hash, %struct._hash* %8, i32 0, i32 0
  %9 = load %struct._bucket*, %struct._bucket** %buckets1, align 8
  %10 = bitcast %struct._bucket* %9 to i8*
  call void @free(i8* noundef %10) #8
  %11 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %12 = bitcast %struct._hash* %11 to i8*
  call void @free(i8* noundef %12) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_draw(%struct._fst* noundef %fst, %struct._IO_FILE* noundef %fout) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %fout.addr = alloca %struct._IO_FILE*, align 8
  %state = alloca %struct._state*, align 8
  %arc = alloca %struct._arc*, align 8
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._IO_FILE* %fout, %struct._IO_FILE** %fout.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %1 = load i8*, i8** @header, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1)
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %2 = load i32, i32* %s, align 4
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 1
  %4 = load i32, i32* %n_states, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %5 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %5, i32 0, i32 5
  %6 = load %struct._state*, %struct._state** %states, align 8
  %7 = load i32, i32* %s, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %6, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %8 = load %struct._state*, %struct._state** %state, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %8, i32 0, i32 3
  %9 = load i32, i32* %final, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %11 = load i32, i32* %s, align 4
  %12 = load i32, i32* %s, align 4
  %13 = load i32, i32* %s, align 4
  %14 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %14, i32 0, i32 0
  %15 = load i32, i32* %start, align 8
  %cmp1 = icmp eq i32 %13, %15
  %16 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i32 noundef %11, i32 noundef %12, i8* noundef %cond)
  br label %if.end

if.else:                                          ; preds = %for.body
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %18 = load i32, i32* %s, align 4
  %19 = load i32, i32* %s, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.24, i64 0, i64 0), i32 noundef %18, i32 noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %a, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %if.end
  %20 = load i32, i32* %a, align 4
  %21 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %21, i32 0, i32 0
  %22 = load i32, i32* %n_arcs, align 8
  %cmp5 = icmp ult i32 %20, %22
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %23 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %23, i32 0, i32 4
  %24 = load %struct._arc*, %struct._arc** %arcs, align 8
  %25 = load i32, i32* %a, align 4
  %idxprom7 = zext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds %struct._arc, %struct._arc* %24, i64 %idxprom7
  store %struct._arc* %arrayidx8, %struct._arc** %arc, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %27 = load i32, i32* %s, align 4
  %28 = load %struct._arc*, %struct._arc** %arc, align 8
  %state9 = getelementptr inbounds %struct._arc, %struct._arc* %28, i32 0, i32 0
  %29 = load i32, i32* %state9, align 4
  %30 = load %struct._arc*, %struct._arc** %arc, align 8
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %30, i32 0, i32 2
  %31 = load i32, i32* %ilabel, align 4
  %32 = load %struct._arc*, %struct._arc** %arc, align 8
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %32, i32 0, i32 3
  %33 = load i32, i32* %olabel, align 4
  %34 = load %struct._arc*, %struct._arc** %arc, align 8
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %34, i32 0, i32 1
  %35 = load float, float* %weight, align 4
  %conv = fpext float %35 to double
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %36 = load i32, i32* %a, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %37 = load i32, i32* %s, align 4
  %inc12 = add i32 %37, 1
  store i32 %inc12, i32* %s, align 4
  br label %for.cond, !llvm.loop !37

for.end13:                                        ; preds = %for.cond
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %39 = load i8*, i8** @footer, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %39)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trn__src_draw(%struct._symt* noundef %st, i64 noundef %id, i8* noundef %token) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %id.addr = alloca i64, align 8
  %token.addr = alloca i8*, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i64 %id, i64* %id.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  %0 = load i8*, i8** %token.addr, align 8
  %1 = load i64, i64* %id.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 noundef %1) #8
  %2 = load i8*, i8** %token.addr, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trt__src_draw(%struct._symt* noundef %st, i64 noundef %id, i8* noundef %token) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %id.addr = alloca i64, align 8
  %token.addr = alloca i8*, align 8
  %t = alloca i8*, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i64 %id, i64* %id.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  %0 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %1 = load i64, i64* %id.addr, align 8
  %call = call i8* @symt_get(%struct._symt* noundef %0, i64 noundef %1)
  store i8* %call, i8** %t, align 8
  %2 = load i8*, i8** %t, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %token.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %token.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %token.addr, align 8
  %6 = load i8*, i8** %t, align 8
  %call2 = call i8* @strcpy(i8* noundef %5, i8* noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %token.addr, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @symt_get(%struct._symt* noundef %st, i64 noundef %id) #0 {
entry:
  %retval = alloca i8*, align 8
  %st.addr = alloca %struct._symt*, align 8
  %id.addr = alloca i64, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i64 %id, i64* %id.addr, align 8
  %0 = load i64, i64* %id.addr, align 8
  %1 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_items = getelementptr inbounds %struct._symt, %struct._symt* %1, i32 0, i32 0
  %2 = load i64, i64* %n_items, align 8
  %cmp = icmp ugt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym = getelementptr inbounds %struct._symt, %struct._symt* %3, i32 0, i32 2
  %4 = load i8**, i8*** %sym, align 8
  %5 = load i64, i64* %id.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %5
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_draw_sym(%struct._fst* noundef %fst, %struct._IO_FILE* noundef %fout, %struct._symt* noundef %ist, %struct._symt* noundef %ost, %struct._symt* noundef %sst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %fout.addr = alloca %struct._IO_FILE*, align 8
  %ist.addr = alloca %struct._symt*, align 8
  %ost.addr = alloca %struct._symt*, align 8
  %sst.addr = alloca %struct._symt*, align 8
  %state = alloca %struct._state*, align 8
  %arc = alloca %struct._arc*, align 8
  %sa = alloca [1024 x i8], align 16
  %sb = alloca [1024 x i8], align 16
  %li = alloca [1024 x i8], align 16
  %lo = alloca [1024 x i8], align 16
  %strans = alloca i8* (%struct._symt*, i64, i8*)*, align 8
  %itrans = alloca i8* (%struct._symt*, i64, i8*)*, align 8
  %otrans = alloca i8* (%struct._symt*, i64, i8*)*, align 8
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._IO_FILE* %fout, %struct._IO_FILE** %fout.addr, align 8
  store %struct._symt* %ist, %struct._symt** %ist.addr, align 8
  store %struct._symt* %ost, %struct._symt** %ost.addr, align 8
  store %struct._symt* %sst, %struct._symt** %sst.addr, align 8
  %0 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %cmp = icmp eq %struct._symt* %0, null
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* (%struct._symt*, i64, i8*)* @trn__src_draw, i8* (%struct._symt*, i64, i8*)* @trt__src_draw
  store i8* (%struct._symt*, i64, i8*)* %cond, i8* (%struct._symt*, i64, i8*)** %itrans, align 8
  %2 = load %struct._symt*, %struct._symt** %ost.addr, align 8
  %cmp1 = icmp eq %struct._symt* %2, null
  %3 = zext i1 %cmp1 to i64
  %cond2 = select i1 %cmp1, i8* (%struct._symt*, i64, i8*)* @trn__src_draw, i8* (%struct._symt*, i64, i8*)* @trt__src_draw
  store i8* (%struct._symt*, i64, i8*)* %cond2, i8* (%struct._symt*, i64, i8*)** %otrans, align 8
  %4 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %cmp3 = icmp eq %struct._symt* %4, null
  %5 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i8* (%struct._symt*, i64, i8*)* @trn__src_draw, i8* (%struct._symt*, i64, i8*)* @trt__src_draw
  store i8* (%struct._symt*, i64, i8*)* %cond4, i8* (%struct._symt*, i64, i8*)** %strans, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %7 = load i8*, i8** @header, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %7)
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %8 = load i32, i32* %s, align 4
  %9 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %9, i32 0, i32 1
  %10 = load i32, i32* %n_states, align 4
  %cmp5 = icmp ult i32 %8, %10
  br i1 %cmp5, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %11 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %11, i32 0, i32 5
  %12 = load %struct._state*, %struct._state** %states, align 8
  %13 = load i32, i32* %s, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %12, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %14 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %strans, align 8
  %15 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %16 = load i32, i32* %s, align 4
  %conv = zext i32 %16 to i64
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %call6 = call i8* %14(%struct._symt* noundef %15, i64 noundef %conv, i8* noundef %arraydecay)
  %17 = load %struct._state*, %struct._state** %state, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %17, i32 0, i32 3
  %18 = load i32, i32* %final, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %20 = load i32, i32* %s, align 4
  %21 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %21, i32 0, i32 0
  %22 = load i32, i32* %start, align 8
  %cmp9 = icmp eq i32 %20, %22
  %23 = zext i1 %cmp9 to i64
  %cond11 = select i1 %cmp9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay7, i8* noundef %arraydecay8, i8* noundef %cond11)
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i64 0, i64 0), i8* noundef %arraydecay13, i8* noundef %arraydecay14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %a, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.end
  %25 = load i32, i32* %a, align 4
  %26 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %26, i32 0, i32 0
  %27 = load i32, i32* %n_arcs, align 8
  %cmp17 = icmp ult i32 %25, %27
  br i1 %cmp17, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond16
  %28 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %28, i32 0, i32 4
  %29 = load %struct._arc*, %struct._arc** %arcs, align 8
  %30 = load i32, i32* %a, align 4
  %idxprom20 = zext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds %struct._arc, %struct._arc* %29, i64 %idxprom20
  store %struct._arc* %arrayidx21, %struct._arc** %arc, align 8
  %31 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %strans, align 8
  %32 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %33 = load %struct._arc*, %struct._arc** %arc, align 8
  %state22 = getelementptr inbounds %struct._arc, %struct._arc* %33, i32 0, i32 0
  %34 = load i32, i32* %state22, align 4
  %conv23 = zext i32 %34 to i64
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %call25 = call i8* %31(%struct._symt* noundef %32, i64 noundef %conv23, i8* noundef %arraydecay24)
  %35 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %itrans, align 8
  %36 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %37 = load %struct._arc*, %struct._arc** %arc, align 8
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %37, i32 0, i32 2
  %38 = load i32, i32* %ilabel, align 4
  %conv26 = zext i32 %38 to i64
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %call28 = call i8* %35(%struct._symt* noundef %36, i64 noundef %conv26, i8* noundef %arraydecay27)
  %39 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %otrans, align 8
  %40 = load %struct._symt*, %struct._symt** %ost.addr, align 8
  %41 = load %struct._arc*, %struct._arc** %arc, align 8
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %41, i32 0, i32 3
  %42 = load i32, i32* %olabel, align 4
  %conv29 = zext i32 %42 to i64
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %lo, i64 0, i64 0
  %call31 = call i8* %39(%struct._symt* noundef %40, i64 noundef %conv29, i8* noundef %arraydecay30)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %lo, i64 0, i64 0
  %44 = load %struct._arc*, %struct._arc** %arc, align 8
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %44, i32 0, i32 1
  %45 = load float, float* %weight, align 4
  %conv36 = fpext float %45 to double
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay32, i8* noundef %arraydecay33, i8* noundef %arraydecay34, i8* noundef %arraydecay35, double noundef %conv36)
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %46 = load i32, i32* %a, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond16, !llvm.loop !38

for.end:                                          ; preds = %for.cond16
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %47 = load i32, i32* %s, align 4
  %inc39 = add i32 %47, 1
  store i32 %inc39, i32* %s, align 4
  br label %for.cond, !llvm.loop !39

for.end40:                                        ; preds = %for.cond
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %49 = load i8*, i8** @footer, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %49)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._fst* @fst_create() #0 {
entry:
  %fst = alloca %struct._fst*, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #8
  %0 = bitcast i8* %call to %struct._fst*
  store %struct._fst* %0, %struct._fst** %fst, align 8
  %1 = load %struct._fst*, %struct._fst** %fst, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 3
  store i8 0, i8* %sr_type, align 4
  %2 = load %struct._fst*, %struct._fst** %fst, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %2, i32 0, i32 1
  store i32 0, i32* %n_states, align 4
  %3 = load %struct._fst*, %struct._fst** %fst, align 8
  %n_max = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 2
  store i32 0, i32* %n_max, align 8
  %4 = load %struct._fst*, %struct._fst** %fst, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 0
  store i32 0, i32* %start, align 8
  %5 = load %struct._fst*, %struct._fst** %fst, align 8
  %flags = getelementptr inbounds %struct._fst, %struct._fst* %5, i32 0, i32 4
  store i8 0, i8* %flags, align 1
  %6 = load %struct._fst*, %struct._fst** %fst, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %6, i32 0, i32 5
  store %struct._state* null, %struct._state** %states, align 8
  %7 = load %struct._fst*, %struct._fst** %fst, align 8
  ret %struct._fst* %7
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_remove(%struct._fst* noundef %fst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  call void @fst_empty(%struct._fst* noundef %0)
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %2 = bitcast %struct._fst* %1 to i8*
  call void @free(i8* noundef %2) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_empty(%struct._fst* noundef %fst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %state = alloca %struct._state*, align 8
  %s = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %s, align 4
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 1
  %2 = load i32, i32* %n_states, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 5
  %4 = load %struct._state*, %struct._state** %states, align 8
  %5 = load i32, i32* %s, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct._state, %struct._state* %4, i64 %idx.ext
  store %struct._state* %add.ptr, %struct._state** %state, align 8
  %6 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %6, i32 0, i32 4
  %7 = load %struct._arc*, %struct._arc** %arcs, align 8
  %cmp1 = icmp ne %struct._arc* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._state*, %struct._state** %state, align 8
  %arcs2 = getelementptr inbounds %struct._state, %struct._state* %8, i32 0, i32 4
  %9 = load %struct._arc*, %struct._arc** %arcs2, align 8
  %10 = bitcast %struct._arc* %9 to i8*
  call void @free(i8* noundef %10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %s, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %12 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states3 = getelementptr inbounds %struct._fst, %struct._fst* %12, i32 0, i32 5
  %13 = load %struct._state*, %struct._state** %states3, align 8
  %cmp4 = icmp ne %struct._state* %13, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %for.end
  %14 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states6 = getelementptr inbounds %struct._fst, %struct._fst* %14, i32 0, i32 5
  %15 = load %struct._state*, %struct._state** %states6, align 8
  %16 = bitcast %struct._state* %15 to i8*
  call void @free(i8* noundef %16) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.end
  %17 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states8 = getelementptr inbounds %struct._fst, %struct._fst* %17, i32 0, i32 1
  store i32 0, i32* %n_states8, align 4
  %18 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_max = getelementptr inbounds %struct._fst, %struct._fst* %18, i32 0, i32 2
  store i32 0, i32* %n_max, align 8
  %19 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states9 = getelementptr inbounds %struct._fst, %struct._fst* %19, i32 0, i32 5
  store %struct._state* null, %struct._state** %states9, align 8
  %20 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %20, i32 0, i32 0
  store i32 0, i32* %start, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_write(%struct._fst* noundef %fst, %struct._IO_FILE* noundef %fout) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %fout.addr = alloca %struct._IO_FILE*, align 8
  %state = alloca %struct._state*, align 8
  %s = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._IO_FILE* %fout, %struct._IO_FILE** %fout.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call = call i64 @fwrite(i8* noundef bitcast (i32* @_fst_header to i8*), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %0)
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 0
  %2 = bitcast i32* %start to i8*
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call1 = call i64 @fwrite(i8* noundef %2, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %3)
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 1
  %5 = bitcast i32* %n_states to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call2 = call i64 @fwrite(i8* noundef %5, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %6)
  %7 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %7, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call3 = call i64 @fwrite(i8* noundef %sr_type, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %8)
  %9 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %flags = getelementptr inbounds %struct._fst, %struct._fst* %9, i32 0, i32 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call4 = call i64 @fwrite(i8* noundef %flags, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %10)
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %s, align 4
  %12 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states5 = getelementptr inbounds %struct._fst, %struct._fst* %12, i32 0, i32 1
  %13 = load i32, i32* %n_states5, align 4
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %14, i32 0, i32 5
  %15 = load %struct._state*, %struct._state** %states, align 8
  %16 = load i32, i32* %s, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %15, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %17 = load %struct._state*, %struct._state** %state, align 8
  %weight = getelementptr inbounds %struct._state, %struct._state* %17, i32 0, i32 2
  %18 = bitcast float* %weight to i8*
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call6 = call i64 @fwrite(i8* noundef %18, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %19)
  %20 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %20, i32 0, i32 0
  %21 = bitcast i32* %n_arcs to i8*
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call7 = call i64 @fwrite(i8* noundef %21, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %22)
  %23 = load %struct._state*, %struct._state** %state, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %23, i32 0, i32 3
  %24 = bitcast i32* %final to i8*
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call8 = call i64 @fwrite(i8* noundef %24, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %25)
  %26 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %26, i32 0, i32 4
  %27 = load %struct._arc*, %struct._arc** %arcs, align 8
  %28 = bitcast %struct._arc* %27 to i8*
  %29 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs9 = getelementptr inbounds %struct._state, %struct._state* %29, i32 0, i32 0
  %30 = load i32, i32* %n_arcs9, align 8
  %conv = zext i32 %30 to i64
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call10 = call i64 @fwrite(i8* noundef %28, i64 noundef 16, i64 noundef %conv, %struct._IO_FILE* noundef %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %s, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_read(%struct._fst* noundef %fst, %struct._IO_FILE* noundef %fin) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %state = alloca %struct._state*, align 8
  %header = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  store i32 0, i32* %header, align 4
  %0 = bitcast i32* %header to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call = call i64 @fread(i8* noundef %0, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %1)
  %2 = load i32, i32* %header, align 4
  %cmp = icmp ne i32 %2, 1718825009
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 0
  %4 = bitcast i32* %start to i8*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call2 = call i64 @fread(i8* noundef %4, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %5)
  %6 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %6, i32 0, i32 1
  %7 = bitcast i32* %n_states to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call3 = call i64 @fread(i8* noundef %7, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %8)
  %9 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %9, i32 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call4 = call i64 @fread(i8* noundef %sr_type, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %10)
  %11 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %flags = getelementptr inbounds %struct._fst, %struct._fst* %11, i32 0, i32 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call5 = call i64 @fread(i8* noundef %flags, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %12)
  %13 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states6 = getelementptr inbounds %struct._fst, %struct._fst* %13, i32 0, i32 1
  %14 = load i32, i32* %n_states6, align 4
  %15 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_max = getelementptr inbounds %struct._fst, %struct._fst* %15, i32 0, i32 2
  store i32 %14, i32* %n_max, align 8
  %16 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states7 = getelementptr inbounds %struct._fst, %struct._fst* %16, i32 0, i32 1
  %17 = load i32, i32* %n_states7, align 4
  %conv = zext i32 %17 to i64
  %mul = mul i64 24, %conv
  %call8 = call noalias i8* @malloc(i64 noundef %mul) #8
  %18 = bitcast i8* %call8 to %struct._state*
  %19 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %19, i32 0, i32 5
  store %struct._state* %18, %struct._state** %states, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %s, align 4
  %21 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states9 = getelementptr inbounds %struct._fst, %struct._fst* %21, i32 0, i32 1
  %22 = load i32, i32* %n_states9, align 4
  %cmp10 = icmp ult i32 %20, %22
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states12 = getelementptr inbounds %struct._fst, %struct._fst* %23, i32 0, i32 5
  %24 = load %struct._state*, %struct._state** %states12, align 8
  %25 = load i32, i32* %s, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %24, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %26 = load %struct._state*, %struct._state** %state, align 8
  %weight = getelementptr inbounds %struct._state, %struct._state* %26, i32 0, i32 2
  %27 = bitcast float* %weight to i8*
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call13 = call i64 @fread(i8* noundef %27, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %28)
  %29 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %29, i32 0, i32 0
  %30 = bitcast i32* %n_arcs to i8*
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call14 = call i64 @fread(i8* noundef %30, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %31)
  %32 = load %struct._state*, %struct._state** %state, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %32, i32 0, i32 3
  %33 = bitcast i32* %final to i8*
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call15 = call i64 @fread(i8* noundef %33, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %34)
  %35 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs16 = getelementptr inbounds %struct._state, %struct._state* %35, i32 0, i32 0
  %36 = load i32, i32* %n_arcs16, align 8
  %37 = load %struct._state*, %struct._state** %state, align 8
  %n_max17 = getelementptr inbounds %struct._state, %struct._state* %37, i32 0, i32 1
  store i32 %36, i32* %n_max17, align 4
  %38 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs18 = getelementptr inbounds %struct._state, %struct._state* %38, i32 0, i32 0
  %39 = load i32, i32* %n_arcs18, align 8
  %conv19 = zext i32 %39 to i64
  %mul20 = mul i64 16, %conv19
  %call21 = call noalias i8* @malloc(i64 noundef %mul20) #8
  %40 = bitcast i8* %call21 to %struct._arc*
  %41 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %41, i32 0, i32 4
  store %struct._arc* %40, %struct._arc** %arcs, align 8
  %42 = load %struct._state*, %struct._state** %state, align 8
  %arcs22 = getelementptr inbounds %struct._state, %struct._state* %42, i32 0, i32 4
  %43 = load %struct._arc*, %struct._arc** %arcs22, align 8
  %44 = bitcast %struct._arc* %43 to i8*
  %45 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs23 = getelementptr inbounds %struct._state, %struct._state* %45, i32 0, i32 0
  %46 = load i32, i32* %n_arcs23, align 8
  %conv24 = zext i32 %46 to i64
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call25 = call i64 @fread(i8* noundef %44, i64 noundef 16, i64 noundef %conv24, %struct._IO_FILE* noundef %47)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %s, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_fwrite(%struct._fst* noundef %fst, i8* noundef %filename) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %filename.addr = alloca i8*, align 8
  %fout = alloca %struct._IO_FILE*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fout, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fout, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i8* noundef %2)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  call void @fst_write(%struct._fst* noundef %3, %struct._IO_FILE* noundef %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* noundef %5)
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_fread(%struct._fst* noundef %fst, i8* noundef %filename) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %filename.addr = alloca i8*, align 8
  %fin = alloca %struct._IO_FILE*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fin, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fin, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i8* noundef %2)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  call void @fst_read(%struct._fst* noundef %3, %struct._IO_FILE* noundef %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_get_n_arcs(%struct._fst* noundef %fst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %s, align 4
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 1
  %2 = load i32, i32* %n_states, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 5
  %4 = load %struct._state*, %struct._state** %states, align 8
  %5 = load i32, i32* %s, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %4, i64 %idxprom
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %n_arcs, align 8
  %7 = load i32, i32* %n, align 4
  %add = add i32 %7, %6
  store i32 %add, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %s, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %n, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_stack(%struct._fst* noundef %a, %struct._fst* noundef %b) #0 {
entry:
  %a.addr = alloca %struct._fst*, align 8
  %b.addr = alloca %struct._fst*, align 8
  %state = alloca %struct._state*, align 8
  %arc_tmp = alloca %struct._arc*, align 8
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._fst* %a, %struct._fst** %a.addr, align 8
  store %struct._fst* %b, %struct._fst** %b.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 1
  %1 = load i32, i32* %n_states, align 4
  store i32 %1, i32* %offset, align 4
  %2 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_states1 = getelementptr inbounds %struct._fst, %struct._fst* %2, i32 0, i32 1
  %3 = load i32, i32* %n_states1, align 4
  %4 = load %struct._fst*, %struct._fst** %b.addr, align 8
  %n_states2 = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 1
  %5 = load i32, i32* %n_states2, align 4
  %add = add i32 %3, %5
  %6 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_states3 = getelementptr inbounds %struct._fst, %struct._fst* %6, i32 0, i32 1
  store i32 %add, i32* %n_states3, align 4
  %7 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_max = getelementptr inbounds %struct._fst, %struct._fst* %7, i32 0, i32 2
  %8 = load i32, i32* %n_max, align 8
  %9 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_states4 = getelementptr inbounds %struct._fst, %struct._fst* %9, i32 0, i32 1
  %10 = load i32, i32* %n_states4, align 4
  %cmp = icmp ult i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_states5 = getelementptr inbounds %struct._fst, %struct._fst* %11, i32 0, i32 1
  %12 = load i32, i32* %n_states5, align 4
  %13 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_max6 = getelementptr inbounds %struct._fst, %struct._fst* %13, i32 0, i32 2
  store i32 %12, i32* %n_max6, align 8
  %14 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %14, i32 0, i32 5
  %15 = load %struct._state*, %struct._state** %states, align 8
  %16 = bitcast %struct._state* %15 to i8*
  %17 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_max7 = getelementptr inbounds %struct._fst, %struct._fst* %17, i32 0, i32 2
  %18 = load i32, i32* %n_max7, align 8
  %conv = zext i32 %18 to i64
  %mul = mul i64 %conv, 24
  %call = call i8* @realloc(i8* noundef %16, i64 noundef %mul) #8
  %19 = bitcast i8* %call to %struct._state*
  %20 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %states8 = getelementptr inbounds %struct._fst, %struct._fst* %20, i32 0, i32 5
  store %struct._state* %19, %struct._state** %states8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %states9 = getelementptr inbounds %struct._fst, %struct._fst* %21, i32 0, i32 5
  %22 = load %struct._state*, %struct._state** %states9, align 8
  %23 = load i32, i32* %offset, align 4
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %22, i64 %idxprom
  %24 = bitcast %struct._state* %arrayidx to i8*
  %25 = load %struct._fst*, %struct._fst** %b.addr, align 8
  %states10 = getelementptr inbounds %struct._fst, %struct._fst* %25, i32 0, i32 5
  %26 = load %struct._state*, %struct._state** %states10, align 8
  %27 = bitcast %struct._state* %26 to i8*
  %28 = load %struct._fst*, %struct._fst** %b.addr, align 8
  %n_states11 = getelementptr inbounds %struct._fst, %struct._fst* %28, i32 0, i32 1
  %29 = load i32, i32* %n_states11, align 4
  %conv12 = zext i32 %29 to i64
  %mul13 = mul i64 %conv12, 24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %27, i64 %mul13, i1 false)
  %30 = load i32, i32* %offset, align 4
  store i32 %30, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %if.end
  %31 = load i32, i32* %i, align 4
  %32 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %n_states14 = getelementptr inbounds %struct._fst, %struct._fst* %32, i32 0, i32 1
  %33 = load i32, i32* %n_states14, align 4
  %cmp15 = icmp ult i32 %31, %33
  br i1 %cmp15, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %34 = load %struct._fst*, %struct._fst** %a.addr, align 8
  %states17 = getelementptr inbounds %struct._fst, %struct._fst* %34, i32 0, i32 5
  %35 = load %struct._state*, %struct._state** %states17, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %36 to i64
  %arrayidx19 = getelementptr inbounds %struct._state, %struct._state* %35, i64 %idxprom18
  store %struct._state* %arrayidx19, %struct._state** %state, align 8
  %37 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %37, i32 0, i32 4
  %38 = load %struct._arc*, %struct._arc** %arcs, align 8
  store %struct._arc* %38, %struct._arc** %arc_tmp, align 8
  %39 = load %struct._state*, %struct._state** %state, align 8
  %n_max20 = getelementptr inbounds %struct._state, %struct._state* %39, i32 0, i32 1
  %40 = load i32, i32* %n_max20, align 4
  %conv21 = zext i32 %40 to i64
  %mul22 = mul i64 %conv21, 16
  %call23 = call noalias i8* @malloc(i64 noundef %mul22) #8
  %41 = bitcast i8* %call23 to %struct._arc*
  %42 = load %struct._state*, %struct._state** %state, align 8
  %arcs24 = getelementptr inbounds %struct._state, %struct._state* %42, i32 0, i32 4
  store %struct._arc* %41, %struct._arc** %arcs24, align 8
  %43 = load %struct._state*, %struct._state** %state, align 8
  %arcs25 = getelementptr inbounds %struct._state, %struct._state* %43, i32 0, i32 4
  %44 = load %struct._arc*, %struct._arc** %arcs25, align 8
  %45 = bitcast %struct._arc* %44 to i8*
  %46 = load %struct._arc*, %struct._arc** %arc_tmp, align 8
  %47 = bitcast %struct._arc* %46 to i8*
  %48 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %48, i32 0, i32 0
  %49 = load i32, i32* %n_arcs, align 8
  %conv26 = zext i32 %49 to i64
  %mul27 = mul i64 %conv26, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %47, i64 %mul27, i1 false)
  store i32 0, i32* %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %50 = load i32, i32* %j, align 4
  %51 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs29 = getelementptr inbounds %struct._state, %struct._state* %51, i32 0, i32 0
  %52 = load i32, i32* %n_arcs29, align 8
  %cmp30 = icmp ult i32 %50, %52
  br i1 %cmp30, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond28
  %53 = load i32, i32* %offset, align 4
  %54 = load %struct._state*, %struct._state** %state, align 8
  %arcs33 = getelementptr inbounds %struct._state, %struct._state* %54, i32 0, i32 4
  %55 = load %struct._arc*, %struct._arc** %arcs33, align 8
  %56 = load i32, i32* %j, align 4
  %idxprom34 = zext i32 %56 to i64
  %arrayidx35 = getelementptr inbounds %struct._arc, %struct._arc* %55, i64 %idxprom34
  %state36 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx35, i32 0, i32 0
  %57 = load i32, i32* %state36, align 4
  %add37 = add i32 %57, %53
  store i32 %add37, i32* %state36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body32
  %58 = load i32, i32* %j, align 4
  %inc = add i32 %58, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond28, !llvm.loop !44

for.end:                                          ; preds = %for.cond28
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %59 = load i32, i32* %i, align 4
  %inc39 = add i32 %59, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond, !llvm.loop !45

for.end40:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_copy(%struct._fst* noundef %orig, %struct._fst* noundef %copy) #0 {
entry:
  %orig.addr = alloca %struct._fst*, align 8
  %copy.addr = alloca %struct._fst*, align 8
  %so = alloca %struct._state*, align 8
  %sc = alloca %struct._state*, align 8
  %s = alloca i32, align 4
  store %struct._fst* %orig, %struct._fst** %orig.addr, align 8
  store %struct._fst* %copy, %struct._fst** %copy.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %copy.addr, align 8
  %1 = bitcast %struct._fst* %0 to i8*
  %2 = load %struct._fst*, %struct._fst** %orig.addr, align 8
  %3 = bitcast %struct._fst* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %3, i64 24, i1 false)
  %4 = load %struct._fst*, %struct._fst** %orig.addr, align 8
  %n_max = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 2
  %5 = load i32, i32* %n_max, align 8
  %conv = zext i32 %5 to i64
  %mul = mul i64 24, %conv
  %call = call noalias i8* @malloc(i64 noundef %mul) #8
  %6 = bitcast i8* %call to %struct._state*
  %7 = load %struct._fst*, %struct._fst** %copy.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %7, i32 0, i32 5
  store %struct._state* %6, %struct._state** %states, align 8
  %8 = load %struct._fst*, %struct._fst** %copy.addr, align 8
  %states1 = getelementptr inbounds %struct._fst, %struct._fst* %8, i32 0, i32 5
  %9 = load %struct._state*, %struct._state** %states1, align 8
  %10 = bitcast %struct._state* %9 to i8*
  %11 = load %struct._fst*, %struct._fst** %orig.addr, align 8
  %states2 = getelementptr inbounds %struct._fst, %struct._fst* %11, i32 0, i32 5
  %12 = load %struct._state*, %struct._state** %states2, align 8
  %13 = bitcast %struct._state* %12 to i8*
  %14 = load %struct._fst*, %struct._fst** %orig.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %14, i32 0, i32 1
  %15 = load i32, i32* %n_states, align 4
  %conv3 = zext i32 %15 to i64
  %mul4 = mul i64 24, %conv3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %13, i64 %mul4, i1 false)
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %s, align 4
  %17 = load %struct._fst*, %struct._fst** %copy.addr, align 8
  %n_states5 = getelementptr inbounds %struct._fst, %struct._fst* %17, i32 0, i32 1
  %18 = load i32, i32* %n_states5, align 4
  %cmp = icmp ult i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._fst*, %struct._fst** %copy.addr, align 8
  %states7 = getelementptr inbounds %struct._fst, %struct._fst* %19, i32 0, i32 5
  %20 = load %struct._state*, %struct._state** %states7, align 8
  %21 = load i32, i32* %s, align 4
  %idxprom = zext i32 %21 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %20, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %sc, align 8
  %22 = load %struct._fst*, %struct._fst** %orig.addr, align 8
  %states8 = getelementptr inbounds %struct._fst, %struct._fst* %22, i32 0, i32 5
  %23 = load %struct._state*, %struct._state** %states8, align 8
  %24 = load i32, i32* %s, align 4
  %idxprom9 = zext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds %struct._state, %struct._state* %23, i64 %idxprom9
  store %struct._state* %arrayidx10, %struct._state** %so, align 8
  %25 = load %struct._state*, %struct._state** %sc, align 8
  %n_max11 = getelementptr inbounds %struct._state, %struct._state* %25, i32 0, i32 1
  %26 = load i32, i32* %n_max11, align 4
  %conv12 = zext i32 %26 to i64
  %mul13 = mul i64 16, %conv12
  %call14 = call noalias i8* @malloc(i64 noundef %mul13) #8
  %27 = bitcast i8* %call14 to %struct._arc*
  %28 = load %struct._state*, %struct._state** %sc, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %28, i32 0, i32 4
  store %struct._arc* %27, %struct._arc** %arcs, align 8
  %29 = load %struct._state*, %struct._state** %sc, align 8
  %arcs15 = getelementptr inbounds %struct._state, %struct._state* %29, i32 0, i32 4
  %30 = load %struct._arc*, %struct._arc** %arcs15, align 8
  %31 = bitcast %struct._arc* %30 to i8*
  %32 = load %struct._state*, %struct._state** %so, align 8
  %arcs16 = getelementptr inbounds %struct._state, %struct._state* %32, i32 0, i32 4
  %33 = load %struct._arc*, %struct._arc** %arcs16, align 8
  %34 = bitcast %struct._arc* %33 to i8*
  %35 = load %struct._state*, %struct._state** %sc, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %35, i32 0, i32 0
  %36 = load i32, i32* %n_arcs, align 8
  %conv17 = zext i32 %36 to i64
  %mul18 = mul i64 16, %conv17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %34, i64 %mul18, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %s, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_relabel(%struct._fst* noundef %fst, i32 noundef %old, i32 noundef %new, i32 noundef %dir) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %state = alloca %struct._state*, align 8
  %arc = alloca %struct._arc*, align 8
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i32 %old, i32* %old.addr, align 4
  store i32 %new, i32* %new.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %s, align 4
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 1
  %2 = load i32, i32* %n_states, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 5
  %4 = load %struct._state*, %struct._state** %states, align 8
  %5 = load i32, i32* %s, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %4, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  store i32 0, i32* %a, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %a, align 4
  %7 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %7, i32 0, i32 0
  %8 = load i32, i32* %n_arcs, align 8
  %cmp2 = icmp ult i32 %6, %8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %9 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %9, i32 0, i32 4
  %10 = load %struct._arc*, %struct._arc** %arcs, align 8
  %11 = load i32, i32* %a, align 4
  %idxprom4 = zext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds %struct._arc, %struct._arc* %10, i64 %idxprom4
  store %struct._arc* %arrayidx5, %struct._arc** %arc, align 8
  %12 = load i32, i32* %dir.addr, align 4
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %13 = load %struct._arc*, %struct._arc** %arc, align 8
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %13, i32 0, i32 2
  %14 = load i32, i32* %ilabel, align 4
  %15 = load i32, i32* %old.addr, align 4
  %cmp7 = icmp eq i32 %14, %15
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %16 = load i32, i32* %new.addr, align 4
  %17 = load %struct._arc*, %struct._arc** %arc, align 8
  %ilabel9 = getelementptr inbounds %struct._arc, %struct._arc* %17, i32 0, i32 2
  store i32 %16, i32* %ilabel9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  br label %if.end14

if.else:                                          ; preds = %for.body3
  %18 = load %struct._arc*, %struct._arc** %arc, align 8
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %18, i32 0, i32 3
  %19 = load i32, i32* %olabel, align 4
  %20 = load i32, i32* %old.addr, align 4
  %cmp10 = icmp eq i32 %19, %20
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %21 = load i32, i32* %new.addr, align 4
  %22 = load %struct._arc*, %struct._arc** %arc, align 8
  %olabel12 = getelementptr inbounds %struct._arc, %struct._arc* %22, i32 0, i32 3
  store i32 %21, i32* %olabel12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %23 = load i32, i32* %a, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond1, !llvm.loop !47

for.end:                                          ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %24 = load i32, i32* %s, align 4
  %inc16 = add i32 %24, 1
  store i32 %inc16, i32* %s, align 4
  br label %for.cond, !llvm.loop !48

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_resize(%struct._hash* noundef %hash) #0 {
entry:
  %hash.addr = alloca %struct._hash*, align 8
  %old_size = alloca i64, align 8
  %old_buckets = alloca %struct._bucket*, align 8
  %i = alloca i64, align 8
  %i9 = alloca i64, align 8
  %bi = alloca %struct._bitem*, align 8
  %i23 = alloca i64, align 8
  store %struct._hash* %hash, %struct._hash** %hash.addr, align 8
  %0 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size = getelementptr inbounds %struct._hash, %struct._hash* %0, i32 0, i32 3
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %old_size, align 8
  %2 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets = getelementptr inbounds %struct._hash, %struct._hash* %2, i32 0, i32 0
  %3 = load %struct._bucket*, %struct._bucket** %buckets, align 8
  store %struct._bucket* %3, %struct._bucket** %old_buckets, align 8
  %4 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size1 = getelementptr inbounds %struct._hash, %struct._hash* %4, i32 0, i32 3
  %5 = load i64, i64* %size1, align 8
  %mul = mul i64 %5, 2
  store i64 %mul, i64* %size1, align 8
  %6 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %n_items = getelementptr inbounds %struct._hash, %struct._hash* %6, i32 0, i32 4
  store i64 0, i64* %n_items, align 8
  %7 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size2 = getelementptr inbounds %struct._hash, %struct._hash* %7, i32 0, i32 3
  %8 = load i64, i64* %size2, align 8
  %mul3 = mul i64 %8, 16
  %call = call noalias i8* @malloc(i64 noundef %mul3) #8
  %9 = bitcast i8* %call to %struct._bucket*
  %10 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets4 = getelementptr inbounds %struct._hash, %struct._hash* %10, i32 0, i32 0
  store %struct._bucket* %9, %struct._bucket** %buckets4, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size5 = getelementptr inbounds %struct._hash, %struct._hash* %12, i32 0, i32 3
  %13 = load i64, i64* %size5, align 8
  %cmp = icmp ult i64 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets6 = getelementptr inbounds %struct._hash, %struct._hash* %14, i32 0, i32 0
  %15 = load %struct._bucket*, %struct._bucket** %buckets6, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct._bucket, %struct._bucket* %15, i64 %16
  %tail = getelementptr inbounds %struct._bucket, %struct._bucket* %arrayidx, i32 0, i32 1
  store %struct._bitem* null, %struct._bitem** %tail, align 8
  %17 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets7 = getelementptr inbounds %struct._hash, %struct._hash* %17, i32 0, i32 0
  %18 = load %struct._bucket*, %struct._bucket** %buckets7, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds %struct._bucket, %struct._bucket* %18, i64 %19
  %head = getelementptr inbounds %struct._bucket, %struct._bucket* %arrayidx8, i32 0, i32 0
  store %struct._bitem* null, %struct._bitem** %head, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i9, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc20, %for.end
  %21 = load i64, i64* %i9, align 8
  %22 = load i64, i64* %old_size, align 8
  %cmp11 = icmp ult i64 %21, %22
  br i1 %cmp11, label %for.body12, label %for.end22

for.body12:                                       ; preds = %for.cond10
  %23 = load %struct._bucket*, %struct._bucket** %old_buckets, align 8
  %24 = load i64, i64* %i9, align 8
  %arrayidx13 = getelementptr inbounds %struct._bucket, %struct._bucket* %23, i64 %24
  %head14 = getelementptr inbounds %struct._bucket, %struct._bucket* %arrayidx13, i32 0, i32 0
  %25 = load %struct._bitem*, %struct._bitem** %head14, align 8
  store %struct._bitem* %25, %struct._bitem** %bi, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc18, %for.body12
  %26 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %cmp16 = icmp ne %struct._bitem* %26, null
  br i1 %cmp16, label %for.body17, label %for.end19

for.body17:                                       ; preds = %for.cond15
  %27 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %28 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %key = getelementptr inbounds %struct._bitem, %struct._bitem* %28, i32 0, i32 0
  %29 = load i8*, i8** %key, align 8
  %30 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %value = getelementptr inbounds %struct._bitem, %struct._bitem* %30, i32 0, i32 1
  %31 = load i8*, i8** %value, align 8
  call void @hash_add(%struct._hash* noundef %27, i8* noundef %29, i8* noundef %31)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body17
  %32 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %next = getelementptr inbounds %struct._bitem, %struct._bitem* %32, i32 0, i32 2
  %33 = load %struct._bitem*, %struct._bitem** %next, align 8
  store %struct._bitem* %33, %struct._bitem** %bi, align 8
  br label %for.cond15, !llvm.loop !50

for.end19:                                        ; preds = %for.cond15
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %34 = load i64, i64* %i9, align 8
  %inc21 = add i64 %34, 1
  store i64 %inc21, i64* %i9, align 8
  br label %for.cond10, !llvm.loop !51

for.end22:                                        ; preds = %for.cond10
  store i64 0, i64* %i23, align 8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc29, %for.end22
  %35 = load i64, i64* %i23, align 8
  %36 = load i64, i64* %old_size, align 8
  %cmp25 = icmp ult i64 %35, %36
  br i1 %cmp25, label %for.body26, label %for.end31

for.body26:                                       ; preds = %for.cond24
  %37 = load %struct._bucket*, %struct._bucket** %old_buckets, align 8
  %38 = load i64, i64* %i23, align 8
  %arrayidx27 = getelementptr inbounds %struct._bucket, %struct._bucket* %37, i64 %38
  %head28 = getelementptr inbounds %struct._bucket, %struct._bucket* %arrayidx27, i32 0, i32 0
  %39 = load %struct._bitem*, %struct._bitem** %head28, align 8
  call void @empty_chain(%struct._bitem* noundef %39)
  br label %for.inc29

for.inc29:                                        ; preds = %for.body26
  %40 = load i64, i64* %i23, align 8
  %inc30 = add i64 %40, 1
  store i64 %inc30, i64* %i23, align 8
  br label %for.cond24, !llvm.loop !52

for.end31:                                        ; preds = %for.cond24
  %41 = load %struct._bucket*, %struct._bucket** %old_buckets, align 8
  %42 = bitcast %struct._bucket* %41 to i8*
  call void @free(i8* noundef %42) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @empty_chain(%struct._bitem* noundef %bitem) #0 {
entry:
  %bitem.addr = alloca %struct._bitem*, align 8
  %t_bitem = alloca %struct._bitem*, align 8
  store %struct._bitem* %bitem, %struct._bitem** %bitem.addr, align 8
  store %struct._bitem* null, %struct._bitem** %t_bitem, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._bitem*, %struct._bitem** %bitem.addr, align 8
  %cmp = icmp ne %struct._bitem* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._bitem*, %struct._bitem** %bitem.addr, align 8
  store %struct._bitem* %1, %struct._bitem** %t_bitem, align 8
  %2 = load %struct._bitem*, %struct._bitem** %bitem.addr, align 8
  %next = getelementptr inbounds %struct._bitem, %struct._bitem* %2, i32 0, i32 2
  %3 = load %struct._bitem*, %struct._bitem** %next, align 8
  store %struct._bitem* %3, %struct._bitem** %bitem.addr, align 8
  %4 = load %struct._bitem*, %struct._bitem** %t_bitem, align 8
  %value = getelementptr inbounds %struct._bitem, %struct._bitem* %4, i32 0, i32 1
  %5 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct._bitem*, %struct._bitem** %t_bitem, align 8
  %key = getelementptr inbounds %struct._bitem, %struct._bitem* %6, i32 0, i32 0
  %7 = load i8*, i8** %key, align 8
  call void @free(i8* noundef %7) #8
  %8 = load %struct._bitem*, %struct._bitem** %t_bitem, align 8
  %value1 = getelementptr inbounds %struct._bitem, %struct._bitem* %8, i32 0, i32 1
  %9 = load i8*, i8** %value1, align 8
  call void @free(i8* noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct._bitem*, %struct._bitem** %t_bitem, align 8
  %11 = bitcast %struct._bitem* %10 to i8*
  call void @free(i8* noundef %11) #8
  br label %while.cond, !llvm.loop !53

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_delete(%struct._hash* noundef %hash, i8* noundef %key, i8* noundef %item) #0 {
entry:
  %hash.addr = alloca %struct._hash*, align 8
  %key.addr = alloca i8*, align 8
  %item.addr = alloca i8*, align 8
  %bucket = alloca %struct._bucket*, align 8
  %bi = alloca %struct._bitem*, align 8
  %bi_prev = alloca %struct._bitem*, align 8
  %bi_next = alloca %struct._bitem*, align 8
  store %struct._hash* %hash, %struct._hash** %hash.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %buckets = getelementptr inbounds %struct._hash, %struct._hash* %0, i32 0, i32 0
  %1 = load %struct._bucket*, %struct._bucket** %buckets, align 8
  %2 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %hash_f = getelementptr inbounds %struct._hash, %struct._hash* %2, i32 0, i32 5
  %3 = load i64 (i8*)*, i64 (i8*)** %hash_f, align 8
  %4 = load i8*, i8** %key.addr, align 8
  %call = call i64 %3(i8* noundef %4)
  %5 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %size = getelementptr inbounds %struct._hash, %struct._hash* %5, i32 0, i32 3
  %6 = load i64, i64* %size, align 8
  %rem = urem i64 %call, %6
  %arrayidx = getelementptr inbounds %struct._bucket, %struct._bucket* %1, i64 %rem
  store %struct._bucket* %arrayidx, %struct._bucket** %bucket, align 8
  %7 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %head = getelementptr inbounds %struct._bucket, %struct._bucket* %7, i32 0, i32 0
  %8 = load %struct._bitem*, %struct._bitem** %head, align 8
  store %struct._bitem* %8, %struct._bitem** %bi, align 8
  store %struct._bitem* null, %struct._bitem** %bi_prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %entry
  %9 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %cmp = icmp ne %struct._bitem* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %next = getelementptr inbounds %struct._bitem, %struct._bitem* %10, i32 0, i32 2
  %11 = load %struct._bitem*, %struct._bitem** %next, align 8
  store %struct._bitem* %11, %struct._bitem** %bi_next, align 8
  %12 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %cmp_f = getelementptr inbounds %struct._hash, %struct._hash* %12, i32 0, i32 6
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp_f, align 8
  %14 = load i8*, i8** %key.addr, align 8
  %15 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %key1 = getelementptr inbounds %struct._bitem, %struct._bitem* %15, i32 0, i32 0
  %16 = load i8*, i8** %key1, align 8
  %call2 = call i32 %13(i8* noundef %14, i8* noundef %16)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %while.body
  %17 = load %struct._bitem*, %struct._bitem** %bi_prev, align 8
  %cmp3 = icmp eq %struct._bitem* %17, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %18 = load %struct._bitem*, %struct._bitem** %bi_next, align 8
  %19 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %head5 = getelementptr inbounds %struct._bucket, %struct._bucket* %19, i32 0, i32 0
  store %struct._bitem* %18, %struct._bitem** %head5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct._bitem*, %struct._bitem** %bi_next, align 8
  %21 = load %struct._bitem*, %struct._bitem** %bi_prev, align 8
  %next6 = getelementptr inbounds %struct._bitem, %struct._bitem* %21, i32 0, i32 2
  store %struct._bitem* %20, %struct._bitem** %next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %22 = load %struct._bitem*, %struct._bitem** %bi_next, align 8
  %cmp7 = icmp eq %struct._bitem* %22, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %23 = load %struct._bitem*, %struct._bitem** %bi_prev, align 8
  %24 = load %struct._bucket*, %struct._bucket** %bucket, align 8
  %tail = getelementptr inbounds %struct._bucket, %struct._bucket* %24, i32 0, i32 1
  store %struct._bitem* %23, %struct._bitem** %tail, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %25 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %value = getelementptr inbounds %struct._bitem, %struct._bitem* %25, i32 0, i32 1
  %26 = load i8*, i8** %value, align 8
  %tobool10 = icmp ne i8* %26, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %27 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %value12 = getelementptr inbounds %struct._bitem, %struct._bitem* %27, i32 0, i32 1
  %28 = load i8*, i8** %value12, align 8
  call void @free(i8* noundef %28) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %29 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %key14 = getelementptr inbounds %struct._bitem, %struct._bitem* %29, i32 0, i32 0
  %30 = load i8*, i8** %key14, align 8
  call void @free(i8* noundef %30) #8
  %31 = load %struct._bitem*, %struct._bitem** %bi, align 8
  %32 = bitcast %struct._bitem* %31 to i8*
  call void @free(i8* noundef %32) #8
  %33 = load %struct._hash*, %struct._hash** %hash.addr, align 8
  %n_items = getelementptr inbounds %struct._hash, %struct._hash* %33, i32 0, i32 4
  %34 = load i64, i64* %n_items, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %n_items, align 8
  br label %while.end

if.end15:                                         ; preds = %while.body
  %35 = load %struct._bitem*, %struct._bitem** %bi, align 8
  store %struct._bitem* %35, %struct._bitem** %bi_prev, align 8
  %36 = load %struct._bitem*, %struct._bitem** %bi_next, align 8
  store %struct._bitem* %36, %struct._bitem** %bi, align 8
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %if.end13, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_items_swap(%struct._heap* noundef %heap, i64 noundef %i, i64 noundef %j) #0 {
entry:
  %heap.addr = alloca %struct._heap*, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %items = alloca i8*, align 8
  %s = alloca i64, align 8
  %tmp = alloca i8*, align 8
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items1 = getelementptr inbounds %struct._heap, %struct._heap* %0, i32 0, i32 6
  %1 = load i8*, i8** %items1, align 8
  store i8* %1, i8** %items, align 8
  %2 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %item_size = getelementptr inbounds %struct._heap, %struct._heap* %2, i32 0, i32 2
  %3 = load i64, i64* %item_size, align 8
  store i64 %3, i64* %s, align 8
  %4 = load i64, i64* %s, align 8
  %call = call noalias i8* @malloc(i64 noundef %4) #8
  store i8* %call, i8** %tmp, align 8
  %5 = load i8*, i8** %tmp, align 8
  %6 = load i8*, i8** %items, align 8
  %7 = load i64, i64* %i.addr, align 8
  %8 = load i64, i64* %s, align 8
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %mul
  %9 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %add.ptr, i64 %9, i1 false)
  %10 = load i8*, i8** %items, align 8
  %11 = load i64, i64* %i.addr, align 8
  %12 = load i64, i64* %s, align 8
  %mul2 = mul i64 %11, %12
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 %mul2
  %13 = load i8*, i8** %items, align 8
  %14 = load i64, i64* %j.addr, align 8
  %15 = load i64, i64* %s, align 8
  %mul4 = mul i64 %14, %15
  %add.ptr5 = getelementptr inbounds i8, i8* %13, i64 %mul4
  %16 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr3, i8* align 1 %add.ptr5, i64 %16, i1 false)
  %17 = load i8*, i8** %items, align 8
  %18 = load i64, i64* %j.addr, align 8
  %19 = load i64, i64* %s, align 8
  %mul6 = mul i64 %18, %19
  %add.ptr7 = getelementptr inbounds i8, i8* %17, i64 %mul6
  %20 = load i8*, i8** %tmp, align 8
  %21 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr7, i8* align 1 %20, i64 %21, i1 false)
  %22 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %22, i32 0, i32 5
  %23 = load %struct._hash*, %struct._hash** %ht, align 8
  %cmp = icmp ne %struct._hash* %23, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht8 = getelementptr inbounds %struct._heap, %struct._heap* %24, i32 0, i32 5
  %25 = load %struct._hash*, %struct._hash** %ht8, align 8
  %26 = load i8*, i8** %items, align 8
  %27 = load i64, i64* %i.addr, align 8
  %28 = load i64, i64* %s, align 8
  %mul9 = mul i64 %27, %28
  %add.ptr10 = getelementptr inbounds i8, i8* %26, i64 %mul9
  %29 = bitcast i64* %i.addr to i8*
  call void @hash_add(%struct._hash* noundef %25, i8* noundef %add.ptr10, i8* noundef %29)
  %30 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht11 = getelementptr inbounds %struct._heap, %struct._heap* %30, i32 0, i32 5
  %31 = load %struct._hash*, %struct._hash** %ht11, align 8
  %32 = load i8*, i8** %items, align 8
  %33 = load i64, i64* %j.addr, align 8
  %34 = load i64, i64* %s, align 8
  %mul12 = mul i64 %33, %34
  %add.ptr13 = getelementptr inbounds i8, i8* %32, i64 %mul12
  %35 = bitcast i64* %j.addr to i8*
  call void @hash_add(%struct._hash* noundef %31, i8* noundef %add.ptr13, i8* noundef %35)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load i8*, i8** %tmp, align 8
  call void @free(i8* noundef %36) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._heap* @heap_create(i32 (i8*, i8*)* noundef %cmp, i64 noundef %item_size, i64 noundef %init_size, i64 noundef %limit) #0 {
entry:
  %cmp.addr = alloca i32 (i8*, i8*)*, align 8
  %item_size.addr = alloca i64, align 8
  %init_size.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %heap = alloca %struct._heap*, align 8
  store i32 (i8*, i8*)* %cmp, i32 (i8*, i8*)** %cmp.addr, align 8
  store i64 %item_size, i64* %item_size.addr, align 8
  store i64 %init_size, i64* %init_size.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 56) #8
  %0 = bitcast i8* %call to %struct._heap*
  store %struct._heap* %0, %struct._heap** %heap, align 8
  %1 = load %struct._heap*, %struct._heap** %heap, align 8
  %n_items = getelementptr inbounds %struct._heap, %struct._heap* %1, i32 0, i32 0
  store i64 0, i64* %n_items, align 8
  %2 = load i64, i64* %item_size.addr, align 8
  %3 = load %struct._heap*, %struct._heap** %heap, align 8
  %item_size1 = getelementptr inbounds %struct._heap, %struct._heap* %3, i32 0, i32 2
  store i64 %2, i64* %item_size1, align 8
  %4 = load i64, i64* %limit.addr, align 8
  %5 = load %struct._heap*, %struct._heap** %heap, align 8
  %limit2 = getelementptr inbounds %struct._heap, %struct._heap* %5, i32 0, i32 3
  store i64 %4, i64* %limit2, align 8
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp.addr, align 8
  %7 = load %struct._heap*, %struct._heap** %heap, align 8
  %cmp3 = getelementptr inbounds %struct._heap, %struct._heap* %7, i32 0, i32 4
  store i32 (i8*, i8*)* %6, i32 (i8*, i8*)** %cmp3, align 8
  %8 = load i64, i64* %limit.addr, align 8
  %cmp4 = icmp ne i64 %8, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %limit.addr, align 8
  %add = add i64 %9, 1
  %10 = load %struct._heap*, %struct._heap** %heap, align 8
  %n_max = getelementptr inbounds %struct._heap, %struct._heap* %10, i32 0, i32 1
  store i64 %add, i64* %n_max, align 8
  br label %if.end10

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %init_size.addr, align 8
  %cmp5 = icmp eq i64 %11, 0
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  %12 = load %struct._heap*, %struct._heap** %heap, align 8
  %n_max7 = getelementptr inbounds %struct._heap, %struct._heap* %12, i32 0, i32 1
  store i64 255, i64* %n_max7, align 8
  br label %if.end

if.else8:                                         ; preds = %if.else
  %13 = load i64, i64* %init_size.addr, align 8
  %14 = load %struct._heap*, %struct._heap** %heap, align 8
  %n_max9 = getelementptr inbounds %struct._heap, %struct._heap* %14, i32 0, i32 1
  store i64 %13, i64* %n_max9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %15 = load %struct._heap*, %struct._heap** %heap, align 8
  %item_size11 = getelementptr inbounds %struct._heap, %struct._heap* %15, i32 0, i32 2
  %16 = load i64, i64* %item_size11, align 8
  %17 = load %struct._heap*, %struct._heap** %heap, align 8
  %n_max12 = getelementptr inbounds %struct._heap, %struct._heap* %17, i32 0, i32 1
  %18 = load i64, i64* %n_max12, align 8
  %mul = mul i64 %16, %18
  %call13 = call noalias i8* @malloc(i64 noundef %mul) #8
  %19 = load %struct._heap*, %struct._heap** %heap, align 8
  %items = getelementptr inbounds %struct._heap, %struct._heap* %19, i32 0, i32 6
  store i8* %call13, i8** %items, align 8
  %20 = load %struct._heap*, %struct._heap** %heap, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %20, i32 0, i32 5
  store %struct._hash* null, %struct._hash** %ht, align 8
  %21 = load %struct._heap*, %struct._heap** %heap, align 8
  ret %struct._heap* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._hash* @heap_index(%struct._heap* noundef %heap, i64 (i8*)* noundef %hsh, i32 (i8*, i8*)* noundef %hcmp) #0 {
entry:
  %heap.addr = alloca %struct._heap*, align 8
  %hsh.addr = alloca i64 (i8*)*, align 8
  %hcmp.addr = alloca i32 (i8*, i8*)*, align 8
  %i = alloca i64, align 8
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  store i64 (i8*)* %hsh, i64 (i8*)** %hsh.addr, align 8
  store i32 (i8*, i8*)* %hcmp, i32 (i8*, i8*)** %hcmp.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %0, i32 0, i32 5
  %1 = load %struct._hash*, %struct._hash** %ht, align 8
  %cmp = icmp ne %struct._hash* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht1 = getelementptr inbounds %struct._heap, %struct._heap* %2, i32 0, i32 5
  %3 = load %struct._hash*, %struct._hash** %ht1, align 8
  call void @hash_remove(%struct._hash* noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64 (i8*)*, i64 (i8*)** %hsh.addr, align 8
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %hcmp.addr, align 8
  %6 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %item_size = getelementptr inbounds %struct._heap, %struct._heap* %6, i32 0, i32 2
  %7 = load i64, i64* %item_size, align 8
  %8 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_max = getelementptr inbounds %struct._heap, %struct._heap* %8, i32 0, i32 1
  %9 = load i64, i64* %n_max, align 8
  %call = call %struct._hash* @hash_create(i64 (i8*)* noundef %4, i32 (i8*, i8*)* noundef %5, i64 noundef %7, i64 noundef 8, i64 noundef %9)
  %10 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht2 = getelementptr inbounds %struct._heap, %struct._heap* %10, i32 0, i32 5
  store %struct._hash* %call, %struct._hash** %ht2, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items = getelementptr inbounds %struct._heap, %struct._heap* %12, i32 0, i32 0
  %13 = load i64, i64* %n_items, align 8
  %cmp3 = icmp ult i64 %11, %13
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht4 = getelementptr inbounds %struct._heap, %struct._heap* %14, i32 0, i32 5
  %15 = load %struct._hash*, %struct._hash** %ht4, align 8
  %16 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items = getelementptr inbounds %struct._heap, %struct._heap* %16, i32 0, i32 6
  %17 = load i8*, i8** %items, align 8
  %18 = load i64, i64* %i, align 8
  %19 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %item_size5 = getelementptr inbounds %struct._heap, %struct._heap* %19, i32 0, i32 2
  %20 = load i64, i64* %item_size5, align 8
  %mul = mul i64 %18, %20
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %mul
  %21 = bitcast i64* %i to i8*
  call void @hash_add(%struct._hash* noundef %15, i8* noundef %add.ptr, i8* noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %23 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht6 = getelementptr inbounds %struct._heap, %struct._heap* %23, i32 0, i32 5
  %24 = load %struct._hash*, %struct._hash** %ht6, align 8
  ret %struct._hash* %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_remove(%struct._heap* noundef %heap) #0 {
entry:
  %heap.addr = alloca %struct._heap*, align 8
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %cmp = icmp ne %struct._heap* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.heap_remove, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items = getelementptr inbounds %struct._heap, %struct._heap* %1, i32 0, i32 6
  %2 = load i8*, i8** %items, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.heap_remove, i64 0, i64 0)) #9
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %3, i32 0, i32 5
  %4 = load %struct._hash*, %struct._hash** %ht, align 8
  %cmp5 = icmp ne %struct._hash* %4, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %5 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht7 = getelementptr inbounds %struct._heap, %struct._heap* %5, i32 0, i32 5
  %6 = load %struct._hash*, %struct._hash** %ht7, align 8
  call void @hash_remove(%struct._hash* noundef %6)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %7 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items9 = getelementptr inbounds %struct._heap, %struct._heap* %7, i32 0, i32 6
  %8 = load i8*, i8** %items9, align 8
  call void @free(i8* noundef %8) #8
  %9 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %10 = bitcast %struct._heap* %9 to i8*
  call void @free(i8* noundef %10) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @heap_pop(%struct._heap* noundef %heap, i8* noundef %item) #0 {
entry:
  %retval = alloca i8*, align 8
  %heap.addr = alloca %struct._heap*, align 8
  %item.addr = alloca i8*, align 8
  %items = alloca i8*, align 8
  %s = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items1 = getelementptr inbounds %struct._heap, %struct._heap* %0, i32 0, i32 6
  %1 = load i8*, i8** %items1, align 8
  store i8* %1, i8** %items, align 8
  %2 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %item_size = getelementptr inbounds %struct._heap, %struct._heap* %2, i32 0, i32 2
  %3 = load i64, i64* %item_size, align 8
  store i64 %3, i64* %s, align 8
  %4 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items = getelementptr inbounds %struct._heap, %struct._heap* %4, i32 0, i32 0
  %5 = load i64, i64* %n_items, align 8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %item.addr, align 8
  %7 = load i8*, i8** %items, align 8
  %8 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false)
  %9 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items2 = getelementptr inbounds %struct._heap, %struct._heap* %9, i32 0, i32 0
  %10 = load i64, i64* %n_items2, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %n_items2, align 8
  %11 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items3 = getelementptr inbounds %struct._heap, %struct._heap* %11, i32 0, i32 0
  %12 = load i64, i64* %n_items3, align 8
  %cmp4 = icmp ugt i64 %12, 0
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %13 = load i8*, i8** %items, align 8
  %14 = load i8*, i8** %items, align 8
  %15 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items6 = getelementptr inbounds %struct._heap, %struct._heap* %15, i32 0, i32 0
  %16 = load i64, i64* %n_items6, align 8
  %17 = load i64, i64* %s, align 8
  %mul = mul i64 %16, %17
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %mul
  %18 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %add.ptr, i64 %18, i1 false)
  store i64 0, i64* %i, align 8
  %19 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %19, i32 0, i32 5
  %20 = load %struct._hash*, %struct._hash** %ht, align 8
  %cmp7 = icmp ne %struct._hash* %20, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  %21 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht9 = getelementptr inbounds %struct._heap, %struct._heap* %21, i32 0, i32 5
  %22 = load %struct._hash*, %struct._hash** %ht9, align 8
  %23 = load i8*, i8** %items, align 8
  %24 = bitcast i64* %i to i8*
  call void @hash_add(%struct._hash* noundef %22, i8* noundef %23, i8* noundef %24)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %25 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items12 = getelementptr inbounds %struct._heap, %struct._heap* %25, i32 0, i32 0
  %26 = load i64, i64* %n_items12, align 8
  %cmp13 = icmp ugt i64 %26, 1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %27 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  call void @heap_heapify(%struct._heap* noundef %27, i64 noundef 0)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  %28 = load i8*, i8** %item.addr, align 8
  store i8* %28, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %29 = load i8*, i8** %retval, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_heapify(%struct._heap* noundef %heap, i64 noundef %i) #0 {
entry:
  %heap.addr = alloca %struct._heap*, align 8
  %i.addr = alloca i64, align 8
  %items = alloca i8*, align 8
  %s = alloca i64, align 8
  %l = alloca i64, align 8
  %r = alloca i64, align 8
  %mx = alloca i64, align 8
  %done = alloca i32, align 4
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items1 = getelementptr inbounds %struct._heap, %struct._heap* %0, i32 0, i32 6
  %1 = load i8*, i8** %items1, align 8
  store i8* %1, i8** %items, align 8
  %2 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %item_size = getelementptr inbounds %struct._heap, %struct._heap* %2, i32 0, i32 2
  %3 = load i64, i64* %item_size, align 8
  store i64 %3, i64* %s, align 8
  store i32 0, i32* %done, align 4
  %4 = load i64, i64* %i.addr, align 8
  %5 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items = getelementptr inbounds %struct._heap, %struct._heap* %5, i32 0, i32 0
  %6 = load i64, i64* %n_items, align 8
  %cmp = icmp ult i64 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.heap_heapify, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end
  %7 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %7, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i64, i64* %i.addr, align 8
  %add = add i64 %8, 1
  %shl = shl i64 %add, 1
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %l, align 8
  %9 = load i64, i64* %i.addr, align 8
  %add2 = add i64 %9, 1
  %shl3 = shl i64 %add2, 1
  store i64 %shl3, i64* %r, align 8
  %10 = load i64, i64* %l, align 8
  %11 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items4 = getelementptr inbounds %struct._heap, %struct._heap* %11, i32 0, i32 0
  %12 = load i64, i64* %n_items4, align 8
  %cmp5 = icmp ult i64 %10, %12
  br i1 %cmp5, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %while.body
  %13 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %cmp6 = getelementptr inbounds %struct._heap, %struct._heap* %13, i32 0, i32 4
  %14 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp6, align 8
  %15 = load i8*, i8** %items, align 8
  %16 = load i64, i64* %l, align 8
  %17 = load i64, i64* %s, align 8
  %mul = mul i64 %16, %17
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %mul
  %18 = load i8*, i8** %items, align 8
  %19 = load i64, i64* %i.addr, align 8
  %20 = load i64, i64* %s, align 8
  %mul7 = mul i64 %19, %20
  %add.ptr8 = getelementptr inbounds i8, i8* %18, i64 %mul7
  %call = call i32 %14(i8* noundef %add.ptr, i8* noundef %add.ptr8)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %21 = load i64, i64* %l, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %while.body
  %22 = load i64, i64* %i.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ %22, %cond.false ]
  store i64 %cond, i64* %mx, align 8
  %23 = load i64, i64* %r, align 8
  %24 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items10 = getelementptr inbounds %struct._heap, %struct._heap* %24, i32 0, i32 0
  %25 = load i64, i64* %n_items10, align 8
  %cmp11 = icmp ult i64 %23, %25
  br i1 %cmp11, label %land.lhs.true12, label %cond.false21

land.lhs.true12:                                  ; preds = %cond.end
  %26 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %cmp13 = getelementptr inbounds %struct._heap, %struct._heap* %26, i32 0, i32 4
  %27 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp13, align 8
  %28 = load i8*, i8** %items, align 8
  %29 = load i64, i64* %r, align 8
  %30 = load i64, i64* %s, align 8
  %mul14 = mul i64 %29, %30
  %add.ptr15 = getelementptr inbounds i8, i8* %28, i64 %mul14
  %31 = load i8*, i8** %items, align 8
  %32 = load i64, i64* %mx, align 8
  %33 = load i64, i64* %s, align 8
  %mul16 = mul i64 %32, %33
  %add.ptr17 = getelementptr inbounds i8, i8* %31, i64 %mul16
  %call18 = call i32 %27(i8* noundef %add.ptr15, i8* noundef %add.ptr17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %land.lhs.true12
  %34 = load i64, i64* %r, align 8
  br label %cond.end22

cond.false21:                                     ; preds = %land.lhs.true12, %cond.end
  %35 = load i64, i64* %mx, align 8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i64 [ %34, %cond.true20 ], [ %35, %cond.false21 ]
  store i64 %cond23, i64* %mx, align 8
  %36 = load i64, i64* %mx, align 8
  %37 = load i64, i64* %i.addr, align 8
  %cmp24 = icmp ne i64 %36, %37
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %cond.end22
  %38 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %39 = load i64, i64* %i.addr, align 8
  %40 = load i64, i64* %mx, align 8
  call void @heap_items_swap(%struct._heap* noundef %38, i64 noundef %39, i64 noundef %40)
  %41 = load i64, i64* %mx, align 8
  store i64 %41, i64* %i.addr, align 8
  br label %if.end27

if.else26:                                        ; preds = %cond.end22
  store i32 1, i32* %done, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  br label %while.cond, !llvm.loop !56

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_delete_max(%struct._heap* noundef %heap) #0 {
entry:
  %heap.addr = alloca %struct._heap*, align 8
  %items = alloca i8*, align 8
  %s = alloca i64, align 8
  %m = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items1 = getelementptr inbounds %struct._heap, %struct._heap* %0, i32 0, i32 6
  %1 = load i8*, i8** %items1, align 8
  store i8* %1, i8** %items, align 8
  %2 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %item_size = getelementptr inbounds %struct._heap, %struct._heap* %2, i32 0, i32 2
  %3 = load i64, i64* %item_size, align 8
  store i64 %3, i64* %s, align 8
  store i64 0, i64* %m, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items = getelementptr inbounds %struct._heap, %struct._heap* %5, i32 0, i32 0
  %6 = load i64, i64* %n_items, align 8
  %add = add i64 %6, 1
  %cmp = icmp ult i64 %4, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %cmp2 = getelementptr inbounds %struct._heap, %struct._heap* %7, i32 0, i32 4
  %8 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp2, align 8
  %9 = load i8*, i8** %items, align 8
  %10 = load i64, i64* %m, align 8
  %11 = load i64, i64* %s, align 8
  %mul = mul i64 %10, %11
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %mul
  %12 = load i8*, i8** %items, align 8
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %s, align 8
  %mul3 = mul i64 %13, %14
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 %mul3
  %call = call i32 %8(i8* noundef %add.ptr, i8* noundef %add.ptr4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  store i64 %15, i64* %m, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* %m, align 8
  %18 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items5 = getelementptr inbounds %struct._heap, %struct._heap* %18, i32 0, i32 0
  %19 = load i64, i64* %n_items5, align 8
  %cmp6 = icmp ne i64 %17, %19
  br i1 %cmp6, label %if.then7, label %if.end19

if.then7:                                         ; preds = %for.end
  %20 = load i8*, i8** %items, align 8
  %21 = load i64, i64* %m, align 8
  %22 = load i64, i64* %s, align 8
  %mul8 = mul i64 %21, %22
  %add.ptr9 = getelementptr inbounds i8, i8* %20, i64 %mul8
  %23 = load i8*, i8** %items, align 8
  %24 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items10 = getelementptr inbounds %struct._heap, %struct._heap* %24, i32 0, i32 0
  %25 = load i64, i64* %n_items10, align 8
  %26 = load i64, i64* %s, align 8
  %mul11 = mul i64 %25, %26
  %add.ptr12 = getelementptr inbounds i8, i8* %23, i64 %mul11
  %27 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr9, i8* align 1 %add.ptr12, i64 %27, i1 false)
  %28 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %28, i32 0, i32 5
  %29 = load %struct._hash*, %struct._hash** %ht, align 8
  %cmp13 = icmp ne %struct._hash* %29, null
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.then7
  %30 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht15 = getelementptr inbounds %struct._heap, %struct._heap* %30, i32 0, i32 5
  %31 = load %struct._hash*, %struct._hash** %ht15, align 8
  %32 = load i8*, i8** %items, align 8
  %33 = load i64, i64* %m, align 8
  %34 = load i64, i64* %s, align 8
  %mul16 = mul i64 %33, %34
  %add.ptr17 = getelementptr inbounds i8, i8* %32, i64 %mul16
  %35 = bitcast i64* %m to i8*
  call void @hash_add(%struct._hash* noundef %31, i8* noundef %add.ptr17, i8* noundef %35)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then7
  %36 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %37 = load i64, i64* %m, align 8
  call void @heap_update(%struct._heap* noundef %36, i8* noundef null, i64 noundef %37)
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_update(%struct._heap* noundef %heap, i8* noundef %item, i64 noundef %i) #0 {
entry:
  %heap.addr = alloca %struct._heap*, align 8
  %item.addr = alloca i8*, align 8
  %i.addr = alloca i64, align 8
  %items = alloca i8*, align 8
  %s = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items1 = getelementptr inbounds %struct._heap, %struct._heap* %0, i32 0, i32 6
  %1 = load i8*, i8** %items1, align 8
  store i8* %1, i8** %items, align 8
  %2 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %item_size = getelementptr inbounds %struct._heap, %struct._heap* %2, i32 0, i32 2
  %3 = load i64, i64* %item_size, align 8
  store i64 %3, i64* %s, align 8
  %4 = load i64, i64* %i.addr, align 8
  %5 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items = getelementptr inbounds %struct._heap, %struct._heap* %5, i32 0, i32 0
  %6 = load i64, i64* %n_items, align 8
  %cmp = icmp ult i64 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.heap_update, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %7 = load i8*, i8** %item.addr, align 8
  %cmp2 = icmp ne i8* %7, null
  br i1 %cmp2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %8 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %cmp4 = getelementptr inbounds %struct._heap, %struct._heap* %8, i32 0, i32 4
  %9 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp4, align 8
  %10 = load i8*, i8** %item.addr, align 8
  %11 = load i8*, i8** %items, align 8
  %12 = load i64, i64* %i.addr, align 8
  %13 = load i64, i64* %s, align 8
  %mul = mul i64 %12, %13
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %mul
  %call = call i32 %9(i8* noundef %10, i8* noundef %add.ptr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then3
  br label %if.end7

if.else6:                                         ; preds = %if.then3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.heap_update, i64 0, i64 0)) #9
  unreachable

if.end7:                                          ; preds = %if.then5
  %14 = load i8*, i8** %items, align 8
  %15 = load i64, i64* %i.addr, align 8
  %16 = load i64, i64* %s, align 8
  %mul8 = mul i64 %15, %16
  %add.ptr9 = getelementptr inbounds i8, i8* %14, i64 %mul8
  %17 = load i8*, i8** %item.addr, align 8
  %18 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr9, i8* align 1 %17, i64 %18, i1 false)
  %19 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %19, i32 0, i32 5
  %20 = load %struct._hash*, %struct._hash** %ht, align 8
  %cmp10 = icmp ne %struct._hash* %20, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %21 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht12 = getelementptr inbounds %struct._heap, %struct._heap* %21, i32 0, i32 5
  %22 = load %struct._hash*, %struct._hash** %ht12, align 8
  %23 = load i8*, i8** %item.addr, align 8
  %24 = bitcast i64* %i.addr to i8*
  call void @hash_add(%struct._hash* noundef %22, i8* noundef %23, i8* noundef %24)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end14
  %25 = load i64, i64* %i.addr, align 8
  %cmp15 = icmp ugt i64 %25, 0
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %cmp16 = getelementptr inbounds %struct._heap, %struct._heap* %26, i32 0, i32 4
  %27 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp16, align 8
  %28 = load i8*, i8** %items, align 8
  %29 = load i64, i64* %i.addr, align 8
  %30 = load i64, i64* %s, align 8
  %mul17 = mul i64 %29, %30
  %add.ptr18 = getelementptr inbounds i8, i8* %28, i64 %mul17
  %31 = load i8*, i8** %items, align 8
  %32 = load i64, i64* %i.addr, align 8
  %add = add i64 %32, 1
  %shr = lshr i64 %add, 1
  %sub = sub i64 %shr, 1
  %33 = load i64, i64* %s, align 8
  %mul19 = mul i64 %sub, %33
  %add.ptr20 = getelementptr inbounds i8, i8* %31, i64 %mul19
  %call21 = call i32 %27(i8* noundef %add.ptr18, i8* noundef %add.ptr20)
  %tobool22 = icmp ne i32 %call21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %34 = phi i1 [ false, %while.cond ], [ %tobool22, %land.rhs ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %35 = load i64, i64* %i.addr, align 8
  %add23 = add i64 %35, 1
  %shr24 = lshr i64 %add23, 1
  %sub25 = sub i64 %shr24, 1
  store i64 %sub25, i64* %j, align 8
  %36 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %37 = load i64, i64* %i.addr, align 8
  %38 = load i64, i64* %j, align 8
  call void @heap_items_swap(%struct._heap* noundef %36, i64 noundef %37, i64 noundef %38)
  %39 = load i64, i64* %j, align 8
  store i64 %39, i64* %i.addr, align 8
  br label %while.cond, !llvm.loop !58

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_insert(%struct._heap* noundef %heap, i8* noundef %item) #0 {
entry:
  %heap.addr = alloca %struct._heap*, align 8
  %item.addr = alloca i8*, align 8
  %s = alloca i64, align 8
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %item_size = getelementptr inbounds %struct._heap, %struct._heap* %0, i32 0, i32 2
  %1 = load i64, i64* %item_size, align 8
  store i64 %1, i64* %s, align 8
  %2 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %limit = getelementptr inbounds %struct._heap, %struct._heap* %2, i32 0, i32 3
  %3 = load i64, i64* %limit, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_max = getelementptr inbounds %struct._heap, %struct._heap* %4, i32 0, i32 1
  %5 = load i64, i64* %n_max, align 8
  %6 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items = getelementptr inbounds %struct._heap, %struct._heap* %6, i32 0, i32 0
  %7 = load i64, i64* %n_items, align 8
  %cmp1 = icmp eq i64 %5, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_max2 = getelementptr inbounds %struct._heap, %struct._heap* %8, i32 0, i32 1
  %9 = load i64, i64* %n_max2, align 8
  %mul = mul i64 %9, 2
  store i64 %mul, i64* %n_max2, align 8
  %10 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items = getelementptr inbounds %struct._heap, %struct._heap* %10, i32 0, i32 6
  %11 = load i8*, i8** %items, align 8
  %12 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_max3 = getelementptr inbounds %struct._heap, %struct._heap* %12, i32 0, i32 1
  %13 = load i64, i64* %n_max3, align 8
  %14 = load i64, i64* %s, align 8
  %mul4 = mul i64 %13, %14
  %call = call i8* @realloc(i8* noundef %11, i64 noundef %mul4) #8
  %15 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items5 = getelementptr inbounds %struct._heap, %struct._heap* %15, i32 0, i32 6
  store i8* %call, i8** %items5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %items6 = getelementptr inbounds %struct._heap, %struct._heap* %16, i32 0, i32 6
  %17 = load i8*, i8** %items6, align 8
  %18 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items7 = getelementptr inbounds %struct._heap, %struct._heap* %18, i32 0, i32 0
  %19 = load i64, i64* %n_items7, align 8
  %20 = load i64, i64* %s, align 8
  %mul8 = mul i64 %19, %20
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %mul8
  %21 = load i8*, i8** %item.addr, align 8
  %22 = load i64, i64* %s, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %21, i64 %22, i1 false)
  %23 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %23, i32 0, i32 5
  %24 = load %struct._hash*, %struct._hash** %ht, align 8
  %cmp9 = icmp ne %struct._hash* %24, null
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  %25 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht11 = getelementptr inbounds %struct._heap, %struct._heap* %25, i32 0, i32 5
  %26 = load %struct._hash*, %struct._hash** %ht11, align 8
  %27 = load i8*, i8** %item.addr, align 8
  %28 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items12 = getelementptr inbounds %struct._heap, %struct._heap* %28, i32 0, i32 0
  %29 = bitcast i64* %n_items12 to i8*
  call void @hash_add(%struct._hash* noundef %26, i8* noundef %27, i8* noundef %29)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  %30 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %limit14 = getelementptr inbounds %struct._heap, %struct._heap* %30, i32 0, i32 3
  %31 = load i64, i64* %limit14, align 8
  %cmp15 = icmp eq i64 %31, 0
  br i1 %cmp15, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %32 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items16 = getelementptr inbounds %struct._heap, %struct._heap* %32, i32 0, i32 0
  %33 = load i64, i64* %n_items16, align 8
  %34 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %limit17 = getelementptr inbounds %struct._heap, %struct._heap* %34, i32 0, i32 3
  %35 = load i64, i64* %limit17, align 8
  %cmp18 = icmp ult i64 %33, %35
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  %36 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %37 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %n_items20 = getelementptr inbounds %struct._heap, %struct._heap* %37, i32 0, i32 0
  %38 = load i64, i64* %n_items20, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %n_items20, align 8
  call void @heap_update(%struct._heap* noundef %36, i8* noundef null, i64 noundef %38)
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false
  %39 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  call void @heap_delete_max(%struct._heap* noundef %39)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @heap_find(%struct._heap* noundef %heap, i8* noundef %item, i64* noundef %pi) #0 {
entry:
  %heap.addr = alloca %struct._heap*, align 8
  %item.addr = alloca i8*, align 8
  %pi.addr = alloca i64*, align 8
  store %struct._heap* %heap, %struct._heap** %heap.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  store i64* %pi, i64** %pi.addr, align 8
  %0 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht = getelementptr inbounds %struct._heap, %struct._heap* %0, i32 0, i32 5
  %1 = load %struct._hash*, %struct._hash** %ht, align 8
  %cmp = icmp ne %struct._hash* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.heap_find, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct._heap*, %struct._heap** %heap.addr, align 8
  %ht1 = getelementptr inbounds %struct._heap, %struct._heap* %2, i32 0, i32 5
  %3 = load %struct._hash*, %struct._hash** %ht1, align 8
  %4 = load i8*, i8** %item.addr, align 8
  %5 = load i64*, i64** %pi.addr, align 8
  %6 = bitcast i64* %5 to i8*
  %call = call i8* @hash_get(%struct._hash* noundef %3, i8* noundef %4, i8* noundef %6)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._fst_iter* @fst_iter_create(%struct._fst* noundef %fst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %iter = alloca %struct._fst_iter*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 32) #8
  %0 = bitcast i8* %call to %struct._fst_iter*
  store %struct._fst_iter* %0, %struct._fst_iter** %iter, align 8
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %2 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %fst1 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %2, i32 0, i32 0
  store %struct._fst* %1, %struct._fst** %fst1, align 8
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 0
  %4 = load i32, i32* %start, align 8
  %5 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %state = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %5, i32 0, i32 3
  store i32 %4, i32* %state, align 8
  %6 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %6, i32 0, i32 1
  %7 = load i32, i32* %n_states, align 4
  %call2 = call %struct._bitset* @bitset_create(i32 noundef %7)
  %8 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %marked = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %8, i32 0, i32 1
  store %struct._bitset* %call2, %struct._bitset** %marked, align 8
  %call3 = call %struct._queue* @queue_create(i64 noundef 4)
  %9 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %queue = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %9, i32 0, i32 2
  store %struct._queue* %call3, %struct._queue** %queue, align 8
  %10 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %queue4 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %10, i32 0, i32 2
  %11 = load %struct._queue*, %struct._queue** %queue4, align 8
  %12 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %state5 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %12, i32 0, i32 3
  %13 = bitcast i32* %state5 to i8*
  call void @queue_enque(%struct._queue* noundef %11, i8* noundef %13)
  %14 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %marked6 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %14, i32 0, i32 1
  %15 = load %struct._bitset*, %struct._bitset** %marked6, align 8
  %16 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %state7 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %16, i32 0, i32 3
  %17 = load i32, i32* %state7, align 8
  call void @bitset_set(%struct._bitset* noundef %15, i32 noundef %17)
  %18 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  ret %struct._fst_iter* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_iter_remove(%struct._fst_iter* noundef %iter) #0 {
entry:
  %iter.addr = alloca %struct._fst_iter*, align 8
  store %struct._fst_iter* %iter, %struct._fst_iter** %iter.addr, align 8
  %0 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %marked = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %0, i32 0, i32 1
  %1 = load %struct._bitset*, %struct._bitset** %marked, align 8
  call void @bitset_remove(%struct._bitset* noundef %1)
  %2 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %queue = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %2, i32 0, i32 2
  %3 = load %struct._queue*, %struct._queue** %queue, align 8
  call void @queue_remove(%struct._queue* noundef %3)
  %4 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %fst = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %4, i32 0, i32 0
  store %struct._fst* null, %struct._fst** %fst, align 8
  %5 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %6 = bitcast %struct._fst_iter* %5 to i8*
  call void @free(i8* noundef %6) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_iter_next(%struct._fst_iter* noundef %iter) #0 {
entry:
  %iter.addr = alloca %struct._fst_iter*, align 8
  %arc = alloca %struct._arc*, align 8
  %state = alloca %struct._state*, align 8
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  store %struct._fst_iter* %iter, %struct._fst_iter** %iter.addr, align 8
  %0 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %queue = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %0, i32 0, i32 2
  %1 = load %struct._queue*, %struct._queue** %queue, align 8
  %2 = bitcast i32* %s to i8*
  %call = call i8* @queue_deque(%struct._queue* noundef %1, i8* noundef %2)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %s, align 4
  %4 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %state1 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %4, i32 0, i32 3
  store i32 %3, i32* %state1, align 8
  %5 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %fst = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %5, i32 0, i32 0
  %6 = load %struct._fst*, %struct._fst** %fst, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %6, i32 0, i32 5
  %7 = load %struct._state*, %struct._state** %states, align 8
  %8 = load i32, i32* %s, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %7, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  store i32 0, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %a, align 4
  %10 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %10, i32 0, i32 0
  %11 = load i32, i32* %n_arcs, align 8
  %cmp2 = icmp ult i32 %9, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %12, i32 0, i32 4
  %13 = load %struct._arc*, %struct._arc** %arcs, align 8
  %14 = load i32, i32* %a, align 4
  %idxprom3 = zext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds %struct._arc, %struct._arc* %13, i64 %idxprom3
  store %struct._arc* %arrayidx4, %struct._arc** %arc, align 8
  %15 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %marked = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %15, i32 0, i32 1
  %16 = load %struct._bitset*, %struct._bitset** %marked, align 8
  %17 = load %struct._arc*, %struct._arc** %arc, align 8
  %state5 = getelementptr inbounds %struct._arc, %struct._arc* %17, i32 0, i32 0
  %18 = load i32, i32* %state5, align 4
  %call6 = call i32 @bitset_get(%struct._bitset* noundef %16, i32 noundef %18)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  %19 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %queue9 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %19, i32 0, i32 2
  %20 = load %struct._queue*, %struct._queue** %queue9, align 8
  %21 = load %struct._arc*, %struct._arc** %arc, align 8
  %state10 = getelementptr inbounds %struct._arc, %struct._arc* %21, i32 0, i32 0
  %22 = bitcast i32* %state10 to i8*
  call void @queue_enque(%struct._queue* noundef %20, i8* noundef %22)
  %23 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %marked11 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %23, i32 0, i32 1
  %24 = load %struct._bitset*, %struct._bitset** %marked11, align 8
  %25 = load %struct._arc*, %struct._arc** %arc, align 8
  %state12 = getelementptr inbounds %struct._arc, %struct._arc* %25, i32 0, i32 0
  %26 = load i32, i32* %state12, align 4
  call void @bitset_set(%struct._bitset* noundef %24, i32 noundef %26)
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %a, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  br label %if.end14

if.else:                                          ; preds = %entry
  %28 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %state13 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %28, i32 0, i32 3
  store i32 -1, i32* %state13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %for.end
  %29 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %state15 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %29, i32 0, i32 3
  %30 = load i32, i32* %state15, align 8
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_iter_visited(%struct._fst_iter* noundef %iter, i32 noundef %s) #0 {
entry:
  %iter.addr = alloca %struct._fst_iter*, align 8
  %s.addr = alloca i32, align 4
  store %struct._fst_iter* %iter, %struct._fst_iter** %iter.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load %struct._fst_iter*, %struct._fst_iter** %iter.addr, align 8
  %marked = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %0, i32 0, i32 1
  %1 = load %struct._bitset*, %struct._bitset** %marked, align 8
  %2 = load i32, i32* %s.addr, align 4
  %call = call i32 @bitset_get(%struct._bitset* noundef %1, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_match(%struct._arc* noundef %a, %struct._arc* noundef %b, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._arc*, align 8
  %b.addr = alloca %struct._arc*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %al = alloca i32, align 4
  store %struct._arc* %a, %struct._arc** %a.addr, align 8
  store %struct._arc* %b, %struct._arc** %b.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct._arc*, %struct._arc** %a.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct._arc, %struct._arc* %0, i64 %idxprom
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx, i32 0, i32 3
  %2 = load i32, i32* %olabel, align 4
  store i32 %2, i32* %al, align 4
  %3 = load i32, i32* %al, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* %j.addr, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %6 = load i32, i32* %i.addr, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %7 = load i32, i32* %j.addr, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true4, %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %lor.lhs.false
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_print(%struct._fst* noundef %fst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %state = alloca %struct._state, align 8
  %arc = alloca %struct._arc, align 4
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  %finals = alloca %struct._queue*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  %call = call %struct._queue* @queue_create(i64 noundef 4)
  store %struct._queue* %call, %struct._queue** %finals, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %s, align 4
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 1
  %2 = load i32, i32* %n_states, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 5
  %4 = load %struct._state*, %struct._state** %states, align 8
  %5 = load i32, i32* %s, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %4, i64 %idxprom
  %6 = bitcast %struct._state* %state to i8*
  %7 = bitcast %struct._state* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  store i32 0, i32* %a, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %a, align 4
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %state, i32 0, i32 0
  %9 = load i32, i32* %n_arcs, align 8
  %cmp2 = icmp ult i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arcs = getelementptr inbounds %struct._state, %struct._state* %state, i32 0, i32 4
  %10 = load %struct._arc*, %struct._arc** %arcs, align 8
  %11 = load i32, i32* %a, align 4
  %idxprom4 = zext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds %struct._arc, %struct._arc* %10, i64 %idxprom4
  %12 = bitcast %struct._arc* %arc to i8*
  %13 = bitcast %struct._arc* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 16, i1 false)
  %14 = load i32, i32* %s, align 4
  %state6 = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 0
  %15 = load i32, i32* %state6, align 4
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 2
  %16 = load i32, i32* %ilabel, align 4
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 3
  %17 = load i32, i32* %olabel, align 4
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 1
  %18 = load float, float* %weight, align 4
  %conv = fpext float %18 to double
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %19 = load i32, i32* %a, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond1, !llvm.loop !60

for.end:                                          ; preds = %for.cond1
  %final = getelementptr inbounds %struct._state, %struct._state* %state, i32 0, i32 3
  %20 = load i32, i32* %final, align 4
  %cmp8 = icmp eq i32 %20, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load %struct._queue*, %struct._queue** %finals, align 8
  %22 = bitcast i32* %s to i8*
  call void @queue_enque(%struct._queue* noundef %21, i8* noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc10

for.inc10:                                        ; preds = %if.end
  %23 = load i32, i32* %s, align 4
  %inc11 = add i32 %23, 1
  store i32 %inc11, i32* %s, align 4
  br label %for.cond, !llvm.loop !61

for.end12:                                        ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end12
  %24 = load %struct._queue*, %struct._queue** %finals, align 8
  %25 = bitcast i32* %s to i8*
  %call13 = call i8* @queue_deque(%struct._queue* noundef %24, i8* noundef %25)
  %cmp14 = icmp ne i8* %call13, null
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states16 = getelementptr inbounds %struct._fst, %struct._fst* %26, i32 0, i32 5
  %27 = load %struct._state*, %struct._state** %states16, align 8
  %28 = load i32, i32* %s, align 4
  %idxprom17 = zext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds %struct._state, %struct._state* %27, i64 %idxprom17
  %29 = bitcast %struct._state* %state to i8*
  %30 = bitcast %struct._state* %arrayidx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 24, i1 false)
  %31 = load i32, i32* %s, align 4
  %weight19 = getelementptr inbounds %struct._state, %struct._state* %state, i32 0, i32 2
  %32 = load float, float* %weight19, align 8
  %conv20 = fpext float %32 to double
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i32 noundef %31, double noundef %conv20)
  br label %while.cond, !llvm.loop !62

while.end:                                        ; preds = %while.cond
  %33 = load %struct._queue*, %struct._queue** %finals, align 8
  call void @queue_remove(%struct._queue* noundef %33)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trn__src_print(%struct._symt* noundef %st, i64 noundef %id, i8* noundef %token) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %id.addr = alloca i64, align 8
  %token.addr = alloca i8*, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i64 %id, i64* %id.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  %0 = load i8*, i8** %token.addr, align 8
  %1 = load i64, i64* %id.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 noundef %1) #8
  %2 = load i8*, i8** %token.addr, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trt__src_print(%struct._symt* noundef %st, i64 noundef %id, i8* noundef %token) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %id.addr = alloca i64, align 8
  %token.addr = alloca i8*, align 8
  %t = alloca i8*, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i64 %id, i64* %id.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  %0 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %1 = load i64, i64* %id.addr, align 8
  %call = call i8* @symt_get(%struct._symt* noundef %0, i64 noundef %1)
  store i8* %call, i8** %t, align 8
  %2 = load i8*, i8** %t, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %token.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %token.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %token.addr, align 8
  %6 = load i8*, i8** %t, align 8
  %call2 = call i8* @strcpy(i8* noundef %5, i8* noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %token.addr, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_print_sym(%struct._fst* noundef %fst, %struct._symt* noundef %ist, %struct._symt* noundef %ost, %struct._symt* noundef %sst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %ist.addr = alloca %struct._symt*, align 8
  %ost.addr = alloca %struct._symt*, align 8
  %sst.addr = alloca %struct._symt*, align 8
  %state = alloca %struct._state, align 8
  %arc = alloca %struct._arc, align 4
  %sa = alloca [1024 x i8], align 16
  %sb = alloca [1024 x i8], align 16
  %li = alloca [1024 x i8], align 16
  %lo = alloca [1024 x i8], align 16
  %strans = alloca i8* (%struct._symt*, i64, i8*)*, align 8
  %itrans = alloca i8* (%struct._symt*, i64, i8*)*, align 8
  %otrans = alloca i8* (%struct._symt*, i64, i8*)*, align 8
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  %finals = alloca %struct._queue*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._symt* %ist, %struct._symt** %ist.addr, align 8
  store %struct._symt* %ost, %struct._symt** %ost.addr, align 8
  store %struct._symt* %sst, %struct._symt** %sst.addr, align 8
  %0 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %cmp = icmp eq %struct._symt* %0, null
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* (%struct._symt*, i64, i8*)* @trn__src_print, i8* (%struct._symt*, i64, i8*)* @trt__src_print
  store i8* (%struct._symt*, i64, i8*)* %cond, i8* (%struct._symt*, i64, i8*)** %itrans, align 8
  %2 = load %struct._symt*, %struct._symt** %ost.addr, align 8
  %cmp1 = icmp eq %struct._symt* %2, null
  %3 = zext i1 %cmp1 to i64
  %cond2 = select i1 %cmp1, i8* (%struct._symt*, i64, i8*)* @trn__src_print, i8* (%struct._symt*, i64, i8*)* @trt__src_print
  store i8* (%struct._symt*, i64, i8*)* %cond2, i8* (%struct._symt*, i64, i8*)** %otrans, align 8
  %4 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %cmp3 = icmp eq %struct._symt* %4, null
  %5 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i8* (%struct._symt*, i64, i8*)* @trn__src_print, i8* (%struct._symt*, i64, i8*)* @trt__src_print
  store i8* (%struct._symt*, i64, i8*)* %cond4, i8* (%struct._symt*, i64, i8*)** %strans, align 8
  %call = call %struct._queue* @queue_create(i64 noundef 4)
  store %struct._queue* %call, %struct._queue** %finals, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %6 = load i32, i32* %s, align 4
  %7 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %7, i32 0, i32 1
  %8 = load i32, i32* %n_states, align 4
  %cmp5 = icmp ult i32 %6, %8
  br i1 %cmp5, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %9 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %9, i32 0, i32 5
  %10 = load %struct._state*, %struct._state** %states, align 8
  %11 = load i32, i32* %s, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %10, i64 %idxprom
  %12 = bitcast %struct._state* %state to i8*
  %13 = bitcast %struct._state* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  store i32 0, i32* %a, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %a, align 4
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %state, i32 0, i32 0
  %15 = load i32, i32* %n_arcs, align 8
  %cmp7 = icmp ult i32 %14, %15
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arcs = getelementptr inbounds %struct._state, %struct._state* %state, i32 0, i32 4
  %16 = load %struct._arc*, %struct._arc** %arcs, align 8
  %17 = load i32, i32* %a, align 4
  %idxprom9 = zext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds %struct._arc, %struct._arc* %16, i64 %idxprom9
  %18 = bitcast %struct._arc* %arc to i8*
  %19 = bitcast %struct._arc* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 16, i1 false)
  %20 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %strans, align 8
  %21 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %22 = load i32, i32* %s, align 4
  %conv = zext i32 %22 to i64
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %call11 = call i8* %20(%struct._symt* noundef %21, i64 noundef %conv, i8* noundef %arraydecay)
  %23 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %strans, align 8
  %24 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %state12 = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 0
  %25 = load i32, i32* %state12, align 4
  %conv13 = zext i32 %25 to i64
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %call15 = call i8* %23(%struct._symt* noundef %24, i64 noundef %conv13, i8* noundef %arraydecay14)
  %26 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %itrans, align 8
  %27 = load %struct._symt*, %struct._symt** %ist.addr, align 8
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 2
  %28 = load i32, i32* %ilabel, align 4
  %conv16 = zext i32 %28 to i64
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %call18 = call i8* %26(%struct._symt* noundef %27, i64 noundef %conv16, i8* noundef %arraydecay17)
  %29 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %otrans, align 8
  %30 = load %struct._symt*, %struct._symt** %ost.addr, align 8
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 3
  %31 = load i32, i32* %olabel, align 4
  %conv19 = zext i32 %31 to i64
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %lo, i64 0, i64 0
  %call21 = call i8* %29(%struct._symt* noundef %30, i64 noundef %conv19, i8* noundef %arraydecay20)
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sb, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %li, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %lo, i64 0, i64 0
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 1
  %32 = load float, float* %weight, align 4
  %conv26 = fpext float %32 to double
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i8* noundef %arraydecay22, i8* noundef %arraydecay23, i8* noundef %arraydecay24, i8* noundef %arraydecay25, double noundef %conv26)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %33 = load i32, i32* %a, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond6, !llvm.loop !63

for.end:                                          ; preds = %for.cond6
  %final = getelementptr inbounds %struct._state, %struct._state* %state, i32 0, i32 3
  %34 = load i32, i32* %final, align 4
  %cmp28 = icmp eq i32 %34, 1
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %35 = load %struct._queue*, %struct._queue** %finals, align 8
  %36 = bitcast i32* %s to i8*
  call void @queue_enque(%struct._queue* noundef %35, i8* noundef %36)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc30

for.inc30:                                        ; preds = %if.end
  %37 = load i32, i32* %s, align 4
  %inc31 = add i32 %37, 1
  store i32 %inc31, i32* %s, align 4
  br label %for.cond, !llvm.loop !64

for.end32:                                        ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end32
  %38 = load %struct._queue*, %struct._queue** %finals, align 8
  %39 = bitcast i32* %s to i8*
  %call33 = call i8* @queue_deque(%struct._queue* noundef %38, i8* noundef %39)
  %cmp34 = icmp ne i8* %call33, null
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states36 = getelementptr inbounds %struct._fst, %struct._fst* %40, i32 0, i32 5
  %41 = load %struct._state*, %struct._state** %states36, align 8
  %42 = load i32, i32* %s, align 4
  %idxprom37 = zext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds %struct._state, %struct._state* %41, i64 %idxprom37
  %43 = bitcast %struct._state* %state to i8*
  %44 = bitcast %struct._state* %arrayidx38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 24, i1 false)
  %45 = load i8* (%struct._symt*, i64, i8*)*, i8* (%struct._symt*, i64, i8*)** %strans, align 8
  %46 = load %struct._symt*, %struct._symt** %sst.addr, align 8
  %47 = load i32, i32* %s, align 4
  %conv39 = zext i32 %47 to i64
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %call41 = call i8* %45(%struct._symt* noundef %46, i64 noundef %conv39, i8* noundef %arraydecay40)
  %arraydecay42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sa, i64 0, i64 0
  %weight43 = getelementptr inbounds %struct._state, %struct._state* %state, i32 0, i32 2
  %48 = load float, float* %weight43, align 8
  %conv44 = fpext float %48 to double
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef %arraydecay42, double noundef %conv44)
  br label %while.cond, !llvm.loop !65

while.end:                                        ; preds = %while.cond
  %49 = load %struct._queue*, %struct._queue** %finals, align 8
  call void @queue_remove(%struct._queue* noundef %49)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_empty(%struct._queue* noundef %q) #0 {
entry:
  %q.addr = alloca %struct._queue*, align 8
  %item = alloca i8*, align 8
  store %struct._queue* %q, %struct._queue** %q.addr, align 8
  %0 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %item_size = getelementptr inbounds %struct._queue, %struct._queue* %0, i32 0, i32 2
  %1 = load i64, i64* %item_size, align 8
  %call = call noalias i8* @malloc(i64 noundef %1) #8
  store i8* %call, i8** %item, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %3 = load i8*, i8** %item, align 8
  %call1 = call i8* @queue_deque(%struct._queue* noundef %2, i8* noundef %3)
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !66

while.end:                                        ; preds = %while.cond
  %4 = load %struct._queue*, %struct._queue** %q.addr, align 8
  %n_items = getelementptr inbounds %struct._queue, %struct._queue* %4, i32 0, i32 3
  store i64 0, i64* %n_items, align 8
  %5 = load i8*, i8** %item, align 8
  call void @free(i8* noundef %5) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @states_cmp(i8* noundef %a, i8* noundef %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load float*, float** @W, align 8
  %1 = load i8*, i8** %a.addr, align 8
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %0, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load float (float, float)*, float (float, float)** getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 0), align 8
  %6 = load float*, float** @W, align 8
  %7 = load i8*, i8** %a.addr, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %idxprom1 = zext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %10 = load float, float* %arrayidx2, align 4
  %11 = load float*, float** @W, align 8
  %12 = load i8*, i8** %b.addr, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %idxprom3 = zext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds float, float* %11, i64 %idxprom3
  %15 = load float, float* %arrayidx4, align 4
  %call = call float %5(float noundef %10, float noundef %15)
  %cmp = fcmp oeq float %4, %call
  %16 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @states_hash(i8* noundef %a) #0 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %conv = sext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @states_key_eq(i8* noundef %a, i8* noundef %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %cmp = icmp eq i32 %2, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backtrace(%struct._fst* noundef %path, i32 noundef %f) #0 {
entry:
  %path.addr = alloca %struct._fst*, align 8
  %f.addr = alloca i32, align 4
  %arc = alloca %struct._arc, align 4
  %s = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._fst* %path, %struct._fst** %path.addr, align 8
  store i32 %f, i32* %f.addr, align 4
  store i32 0, i32* %n, align 4
  %0 = load %struct._fst*, %struct._fst** %path.addr, align 8
  %call = call i32 @fst_add_state(%struct._fst* noundef %0)
  %1 = load i32, i32* %f.addr, align 4
  store i32 %1, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %s, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._fst*, %struct._fst** %path.addr, align 8
  %call1 = call i32 @fst_add_state(%struct._fst* noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct._arc*, %struct._arc** @B, align 8
  %5 = load i32, i32* %s, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct._arc, %struct._arc* %4, i64 %idxprom
  %state = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %state, align 4
  store i32 %6, i32* %s, align 4
  %7 = load i32, i32* %n, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  %8 = load %struct._fst*, %struct._fst** %path.addr, align 8
  %9 = load i32, i32* %n, align 4
  %10 = load float, float* getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 3), align 4
  call void @fst_set_final(%struct._fst* noundef %8, i32 noundef %9, float noundef %10)
  %11 = load i32, i32* %f.addr, align 4
  store i32 %11, i32* %s, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %12 = load i32, i32* %s, align 4
  %cmp3 = icmp ne i32 %12, 0
  br i1 %cmp3, label %for.body4, label %for.end12

for.body4:                                        ; preds = %for.cond2
  %13 = load %struct._arc*, %struct._arc** @B, align 8
  %14 = load i32, i32* %s, align 4
  %idxprom5 = zext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds %struct._arc, %struct._arc* %13, i64 %idxprom5
  %15 = bitcast %struct._arc* %arc to i8*
  %16 = bitcast %struct._arc* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 16, i1 false)
  %17 = load %struct._fst*, %struct._fst** %path.addr, align 8
  %18 = load i32, i32* %n, align 4
  %sub = sub i32 %18, 1
  %19 = load i32, i32* %n, align 4
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 2
  %20 = load i32, i32* %ilabel, align 4
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 3
  %21 = load i32, i32* %olabel, align 4
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %arc, i32 0, i32 1
  %22 = load float, float* %weight, align 4
  %call7 = call i32 @fst_add_arc(%struct._fst* noundef %17, i32 noundef %sub, i32 noundef %19, i32 noundef %20, i32 noundef %21, float noundef %22)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %23 = load %struct._arc*, %struct._arc** @B, align 8
  %24 = load i32, i32* %s, align 4
  %idxprom9 = zext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds %struct._arc, %struct._arc* %23, i64 %idxprom9
  %state11 = getelementptr inbounds %struct._arc, %struct._arc* %arrayidx10, i32 0, i32 0
  %25 = load i32, i32* %state11, align 4
  store i32 %25, i32* %s, align 4
  %26 = load i32, i32* %n, align 4
  %dec = add i32 %26, -1
  store i32 %dec, i32* %n, align 4
  br label %for.cond2, !llvm.loop !68

for.end12:                                        ; preds = %for.cond2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._fst* @fst_shortest(%struct._fst* noundef %fst, %struct._fst* noundef %path) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %path.addr = alloca %struct._fst*, align 8
  %state = alloca %struct._state*, align 8
  %arc = alloca %struct._arc*, align 8
  %r_arc = alloca %struct._arc, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %i = alloca i64, align 8
  %tmp = alloca %struct._sr, align 8
  %Q = alloca %struct._heap*, align 8
  %i10 = alloca i32, align 4
  %a = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._fst* %path, %struct._fst** %path.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 3
  %1 = load i8, i8* %sr_type, align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.47, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.fst_shortest, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type2 = getelementptr inbounds %struct._fst, %struct._fst* %2, i32 0, i32 3
  %3 = load i8, i8* %sr_type2, align 4
  call void @sr_get(%struct._sr* sret(%struct._sr) align 8 %tmp, i8 noundef zeroext %3)
  %4 = bitcast %struct._sr* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._sr* @sr to i8*), i8* align 8 %4, i64 24, i1 false)
  %call = call %struct._heap* @heap_create(i32 (i8*, i8*)* noundef @states_cmp, i64 noundef 4, i64 noundef 0, i64 noundef 0)
  store %struct._heap* %call, %struct._heap** %Q, align 8
  %5 = load %struct._heap*, %struct._heap** %Q, align 8
  %call3 = call %struct._hash* @heap_index(%struct._heap* noundef %5, i64 (i8*)* noundef @states_hash, i32 (i8*, i8*)* noundef @states_key_eq)
  %6 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %6, i32 0, i32 1
  %7 = load i32, i32* %n_states, align 4
  %conv4 = zext i32 %7 to i64
  %mul = mul i64 4, %conv4
  %call5 = call noalias i8* @malloc(i64 noundef %mul) #8
  %8 = bitcast i8* %call5 to float*
  store float* %8, float** @W, align 8
  %9 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states6 = getelementptr inbounds %struct._fst, %struct._fst* %9, i32 0, i32 1
  %10 = load i32, i32* %n_states6, align 4
  %conv7 = zext i32 %10 to i64
  %mul8 = mul i64 16, %conv7
  %call9 = call noalias i8* @malloc(i64 noundef %mul8) #8
  %11 = bitcast i8* %call9 to %struct._arc*
  store %struct._arc* %11, %struct._arc** @B, align 8
  store i32 0, i32* %i10, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i10, align 4
  %13 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states11 = getelementptr inbounds %struct._fst, %struct._fst* %13, i32 0, i32 1
  %14 = load i32, i32* %n_states11, align 4
  %cmp12 = icmp ult i32 %12, %14
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load float, float* getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 2), align 8
  %16 = load float*, float** @W, align 8
  %17 = load i32, i32* %i10, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds float, float* %16, i64 %idxprom
  store float %15, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i10, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i10, align 4
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  %19 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %19, i32 0, i32 0
  %20 = load i32, i32* %start, align 8
  store i32 %20, i32* %q, align 4
  %21 = load float, float* getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 3), align 4
  %22 = load float*, float** @W, align 8
  %23 = load i32, i32* %q, align 4
  %idxprom14 = zext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds float, float* %22, i64 %idxprom14
  store float %21, float* %arrayidx15, align 4
  %24 = load %struct._heap*, %struct._heap** %Q, align 8
  %25 = bitcast i32* %q to i8*
  call void @heap_insert(%struct._heap* noundef %24, i8* noundef %25)
  br label %while.cond

while.cond:                                       ; preds = %for.end71, %for.end
  %26 = load %struct._heap*, %struct._heap** %Q, align 8
  %27 = bitcast i32* %p to i8*
  %call16 = call i8* @heap_pop(%struct._heap* noundef %26, i8* noundef %27)
  %cmp17 = icmp ne i8* %call16, null
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %28, i32 0, i32 5
  %29 = load %struct._state*, %struct._state** %states, align 8
  %30 = load i32, i32* %p, align 4
  %idxprom19 = zext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds %struct._state, %struct._state* %29, i64 %idxprom19
  store %struct._state* %arrayidx20, %struct._state** %state, align 8
  %31 = load %struct._state*, %struct._state** %state, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %31, i32 0, i32 3
  %32 = load i32, i32* %final, align 4
  %cmp21 = icmp eq i32 %32, 1
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body
  %33 = load %struct._fst*, %struct._fst** %path.addr, align 8
  %34 = load i32, i32* %p, align 4
  call void @backtrace(%struct._fst* noundef %33, i32 noundef %34)
  br label %while.end

if.end24:                                         ; preds = %while.body
  store i32 0, i32* %a, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc69, %if.end24
  %35 = load i32, i32* %a, align 4
  %36 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %36, i32 0, i32 0
  %37 = load i32, i32* %n_arcs, align 8
  %cmp26 = icmp ult i32 %35, %37
  br i1 %cmp26, label %for.body28, label %for.end71

for.body28:                                       ; preds = %for.cond25
  %38 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %38, i32 0, i32 4
  %39 = load %struct._arc*, %struct._arc** %arcs, align 8
  %40 = load i32, i32* %a, align 4
  %idxprom29 = zext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds %struct._arc, %struct._arc* %39, i64 %idxprom29
  store %struct._arc* %arrayidx30, %struct._arc** %arc, align 8
  %41 = load %struct._arc*, %struct._arc** %arc, align 8
  %state31 = getelementptr inbounds %struct._arc, %struct._arc* %41, i32 0, i32 0
  %42 = load i32, i32* %state31, align 4
  store i32 %42, i32* %q, align 4
  %43 = load %struct._arc*, %struct._arc** %arc, align 8
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %43, i32 0, i32 1
  %44 = load float, float* %weight, align 4
  %45 = load float, float* getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 2), align 8
  %cmp32 = fcmp oeq float %44, %45
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body28
  br label %for.inc69

if.end35:                                         ; preds = %for.body28
  %46 = load float*, float** @W, align 8
  %47 = load i32, i32* %q, align 4
  %idxprom36 = zext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds float, float* %46, i64 %idxprom36
  %48 = load float, float* %arrayidx37, align 4
  %49 = load float, float* getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 2), align 8
  %cmp38 = fcmp oeq float %48, %49
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end35
  %50 = load %struct._heap*, %struct._heap** %Q, align 8
  %51 = bitcast i32* %q to i8*
  call void @heap_insert(%struct._heap* noundef %50, i8* noundef %51)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end35
  %52 = load float*, float** @W, align 8
  %53 = load i32, i32* %q, align 4
  %idxprom42 = zext i32 %53 to i64
  %arrayidx43 = getelementptr inbounds float, float* %52, i64 %idxprom42
  %54 = load float, float* %arrayidx43, align 4
  %55 = load float (float, float)*, float (float, float)** getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 0), align 8
  %56 = load float*, float** @W, align 8
  %57 = load i32, i32* %q, align 4
  %idxprom44 = zext i32 %57 to i64
  %arrayidx45 = getelementptr inbounds float, float* %56, i64 %idxprom44
  %58 = load float, float* %arrayidx45, align 4
  %59 = load float (float, float)*, float (float, float)** getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 1), align 8
  %60 = load float*, float** @W, align 8
  %61 = load i32, i32* %p, align 4
  %idxprom46 = zext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds float, float* %60, i64 %idxprom46
  %62 = load float, float* %arrayidx47, align 4
  %63 = load %struct._arc*, %struct._arc** %arc, align 8
  %weight48 = getelementptr inbounds %struct._arc, %struct._arc* %63, i32 0, i32 1
  %64 = load float, float* %weight48, align 4
  %call49 = call float %59(float noundef %62, float noundef %64)
  %call50 = call float %55(float noundef %58, float noundef %call49)
  %cmp51 = fcmp une float %54, %call50
  br i1 %cmp51, label %if.then53, label %if.end68

if.then53:                                        ; preds = %if.end41
  %65 = load float (float, float)*, float (float, float)** getelementptr inbounds (%struct._sr, %struct._sr* @sr, i32 0, i32 1), align 8
  %66 = load float*, float** @W, align 8
  %67 = load i32, i32* %p, align 4
  %idxprom54 = zext i32 %67 to i64
  %arrayidx55 = getelementptr inbounds float, float* %66, i64 %idxprom54
  %68 = load float, float* %arrayidx55, align 4
  %69 = load %struct._arc*, %struct._arc** %arc, align 8
  %weight56 = getelementptr inbounds %struct._arc, %struct._arc* %69, i32 0, i32 1
  %70 = load float, float* %weight56, align 4
  %call57 = call float %65(float noundef %68, float noundef %70)
  %71 = load float*, float** @W, align 8
  %72 = load i32, i32* %q, align 4
  %idxprom58 = zext i32 %72 to i64
  %arrayidx59 = getelementptr inbounds float, float* %71, i64 %idxprom58
  store float %call57, float* %arrayidx59, align 4
  %73 = load %struct._arc*, %struct._arc** %arc, align 8
  %74 = bitcast %struct._arc* %r_arc to i8*
  %75 = bitcast %struct._arc* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 16, i1 false)
  %76 = load i32, i32* %p, align 4
  %state60 = getelementptr inbounds %struct._arc, %struct._arc* %r_arc, i32 0, i32 0
  store i32 %76, i32* %state60, align 4
  %77 = load %struct._arc*, %struct._arc** @B, align 8
  %78 = load i32, i32* %q, align 4
  %idxprom61 = zext i32 %78 to i64
  %arrayidx62 = getelementptr inbounds %struct._arc, %struct._arc* %77, i64 %idxprom61
  %79 = bitcast %struct._arc* %arrayidx62 to i8*
  %80 = bitcast %struct._arc* %r_arc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 16, i1 false)
  %81 = load %struct._heap*, %struct._heap** %Q, align 8
  %82 = bitcast i32* %q to i8*
  %call63 = call i8* @heap_find(%struct._heap* noundef %81, i8* noundef %82, i64* noundef %i)
  %cmp64 = icmp ne i8* %call63, null
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then53
  %83 = load %struct._heap*, %struct._heap** %Q, align 8
  %84 = bitcast i32* %q to i8*
  %85 = load i64, i64* %i, align 8
  call void @heap_update(%struct._heap* noundef %83, i8* noundef %84, i64 noundef %85)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then53
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end41
  br label %for.inc69

for.inc69:                                        ; preds = %if.end68, %if.then34
  %86 = load i32, i32* %a, align 4
  %inc70 = add i32 %86, 1
  store i32 %inc70, i32* %a, align 4
  br label %for.cond25, !llvm.loop !70

for.end71:                                        ; preds = %for.cond25
  br label %while.cond, !llvm.loop !71

while.end:                                        ; preds = %if.then23, %while.cond
  %87 = load %struct._heap*, %struct._heap** %Q, align 8
  call void @heap_remove(%struct._heap* noundef %87)
  %88 = load float*, float** @W, align 8
  %89 = bitcast float* %88 to i8*
  call void @free(i8* noundef %89) #8
  %90 = load %struct._arc*, %struct._arc** @B, align 8
  %91 = bitcast %struct._arc* %90 to i8*
  call void @free(i8* noundef %91) #8
  %92 = load %struct._fst*, %struct._fst** %path.addr, align 8
  ret %struct._fst* %92
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icomp(i8* noundef %a, i8* noundef %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._arc*
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %1, i32 0, i32 2
  %2 = load i32, i32* %ilabel, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to %struct._arc*
  %ilabel1 = getelementptr inbounds %struct._arc, %struct._arc* %4, i32 0, i32 2
  %5 = load i32, i32* %ilabel1, align 4
  %sub = sub i32 %2, %5
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocomp(i8* noundef %a, i8* noundef %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._arc*
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %1, i32 0, i32 3
  %2 = load i32, i32* %olabel, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to %struct._arc*
  %olabel1 = getelementptr inbounds %struct._arc, %struct._arc* %4, i32 0, i32 3
  %5 = load i32, i32* %olabel1, align 4
  %sub = sub i32 %2, %5
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_arc_sort(%struct._fst* noundef %fst, i32 noundef %sort_outer) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %sort_outer.addr = alloca i32, align 4
  %state = alloca %struct._state*, align 8
  %comp = alloca i32 (i8*, i8*)*, align 8
  %s = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store i32 %sort_outer, i32* %sort_outer.addr, align 4
  %0 = load i32, i32* %sort_outer.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 (i8*, i8*)* @icomp, i32 (i8*, i8*)** %comp, align 8
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %flags = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 4
  %2 = load i8, i8* %flags, align 1
  %conv = zext i8 %2 to i32
  %or = or i32 %conv, 1
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %flags, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 (i8*, i8*)* @ocomp, i32 (i8*, i8*)** %comp, align 8
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %flags2 = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 4
  %4 = load i8, i8* %flags2, align 1
  %conv3 = zext i8 %4 to i32
  %or4 = or i32 %conv3, 2
  %conv5 = trunc i32 %or4 to i8
  store i8 %conv5, i8* %flags2, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %s, align 4
  %6 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %6, i32 0, i32 1
  %7 = load i32, i32* %n_states, align 4
  %cmp6 = icmp ult i32 %5, %7
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %8, i32 0, i32 5
  %9 = load %struct._state*, %struct._state** %states, align 8
  %10 = load i32, i32* %s, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %9, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %11 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %11, i32 0, i32 4
  %12 = load %struct._arc*, %struct._arc** %arcs, align 8
  %13 = bitcast %struct._arc* %12 to i8*
  %14 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %14, i32 0, i32 0
  %15 = load i32, i32* %n_arcs, align 8
  %conv8 = zext i32 %15 to i64
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %comp, align 8
  call void @qsort(i8* noundef %13, i64 noundef %conv8, i64 noundef 16, i32 (i8*, i8*)* noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %s, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @real_sum(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %add = fadd float %0, %1
  ret float %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @real_product(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %mul = fmul float %0, %1
  ret float %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @tropical_sum(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %cmp = fcmp olt float %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load float, float* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, float* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @tropical_product(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %add = fadd float %0, %1
  ret float %add
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fnv32(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %hsh = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %s, align 8
  store i32 -2128831035, i32* %hsh, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = zext i32 %1 to i64
  %2 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* noundef %2) #10
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %hsh, align 4
  %4 = load i8*, i8** %s, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  %xor = xor i32 %3, %conv2
  store i32 %xor, i32* %hsh, align 4
  %7 = load i32, i32* %hsh, align 4
  %mul = mul i32 %7, 16777619
  store i32 %mul, i32* %hsh, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %hsh, align 4
  %conv3 = zext i32 %9 to i64
  ret i64 %conv3
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_cmp(i8* noundef %a, i8* noundef %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef %1) #10
  %cmp = icmp eq i32 %call, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._symt* @symt_read(%struct._symt* noundef %st, %struct._IO_FILE* noundef %fin) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca [65535 x i8], align 16
  %token = alloca [1024 x i8], align 16
  %line = alloca i64, align 8
  %token_id = alloca i64, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  store i64 1, i64* %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %arraydecay = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call = call i8* @fgets(i8* noundef %arraydecay, i32 noundef 65535, %struct._IO_FILE* noundef %0)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %token, i64 0, i64 0
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %arraydecay1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* noundef %arraydecay2, i64* noundef %token_id) #8
  %cmp4 = icmp eq i32 %call3, 2
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %2 = load i64, i64* %token_id, align 8
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %token, i64 0, i64 0
  %call6 = call i8* @symt_add(%struct._symt* noundef %1, i64 noundef %2, i8* noundef %arraydecay5)
  br label %if.end

if.else:                                          ; preds = %while.body
  %3 = load i64, i64* %line, align 8
  %arraydecay7 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64 noundef %3, i8* noundef %arraydecay7)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %if.then
  %4 = load i64, i64* %line, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %line, align 8
  br label %while.cond, !llvm.loop !74

while.end:                                        ; preds = %while.cond
  %5 = load %struct._symt*, %struct._symt** %st.addr, align 8
  ret %struct._symt* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @symt_add(%struct._symt* noundef %st, i64 noundef %id, i8* noundef %token) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %id.addr = alloca i64, align 8
  %token.addr = alloca i8*, align 8
  %s = alloca i64, align 8
  %p = alloca i8**, align 8
  %i = alloca i64, align 8
  %t = alloca i8*, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i64 %id, i64* %id.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  %0 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max = getelementptr inbounds %struct._symt, %struct._symt* %0, i32 0, i32 1
  %1 = load i64, i64* %n_max, align 8
  store i64 %1, i64* %s, align 8
  %2 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym = getelementptr inbounds %struct._symt, %struct._symt* %2, i32 0, i32 2
  %3 = load i8**, i8*** %sym, align 8
  %cmp = icmp ne i8** %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.53, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.symt_add, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %4 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max1 = getelementptr inbounds %struct._symt, %struct._symt* %4, i32 0, i32 1
  %5 = load i64, i64* %n_max1, align 8
  %cmp2 = icmp ne i64 %5, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  br label %if.end5

if.else4:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.53, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.symt_add, i64 0, i64 0)) #9
  unreachable

if.end5:                                          ; preds = %if.then3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %6 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max6 = getelementptr inbounds %struct._symt, %struct._symt* %6, i32 0, i32 1
  %7 = load i64, i64* %n_max6, align 8
  %8 = load i64, i64* %id.addr, align 8
  %cmp7 = icmp ule i64 %7, %8
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max8 = getelementptr inbounds %struct._symt, %struct._symt* %9, i32 0, i32 1
  %10 = load i64, i64* %n_max8, align 8
  %mul = mul i64 %10, 2
  store i64 %mul, i64* %n_max8, align 8
  br label %while.cond, !llvm.loop !75

while.end:                                        ; preds = %while.cond
  %11 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max9 = getelementptr inbounds %struct._symt, %struct._symt* %11, i32 0, i32 1
  %12 = load i64, i64* %n_max9, align 8
  %13 = load i64, i64* %s, align 8
  %cmp10 = icmp ugt i64 %12, %13
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %while.end
  %14 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym12 = getelementptr inbounds %struct._symt, %struct._symt* %14, i32 0, i32 2
  %15 = load i8**, i8*** %sym12, align 8
  %16 = bitcast i8** %15 to i8*
  %17 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max13 = getelementptr inbounds %struct._symt, %struct._symt* %17, i32 0, i32 1
  %18 = load i64, i64* %n_max13, align 8
  %mul14 = mul i64 %18, 8
  %call = call i8* @realloc(i8* noundef %16, i64 noundef %mul14) #8
  %19 = bitcast i8* %call to i8**
  store i8** %19, i8*** %p, align 8
  %20 = load i8**, i8*** %p, align 8
  %21 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym15 = getelementptr inbounds %struct._symt, %struct._symt* %21, i32 0, i32 2
  store i8** %20, i8*** %sym15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %while.end
  %22 = load i64, i64* %s, align 8
  store i64 %22, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %23 = load i64, i64* %i, align 8
  %24 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max17 = getelementptr inbounds %struct._symt, %struct._symt* %24, i32 0, i32 1
  %25 = load i64, i64* %n_max17, align 8
  %cmp18 = icmp ult i64 %23, %25
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym19 = getelementptr inbounds %struct._symt, %struct._symt* %26, i32 0, i32 2
  %27 = load i8**, i8*** %sym19, align 8
  %28 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i64, i64* %i, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  %30 = load i8*, i8** %token.addr, align 8
  %call20 = call i64 @strlen(i8* noundef %30) #10
  %add = add i64 %call20, 1
  %call21 = call noalias i8* @malloc(i64 noundef %add) #8
  store i8* %call21, i8** %t, align 8
  %31 = load i8*, i8** %t, align 8
  %32 = load i8*, i8** %token.addr, align 8
  %call22 = call i8* @strcpy(i8* noundef %31, i8* noundef %32) #8
  %33 = load i8*, i8** %t, align 8
  %34 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym23 = getelementptr inbounds %struct._symt, %struct._symt* %34, i32 0, i32 2
  %35 = load i8**, i8*** %sym23, align 8
  %36 = load i64, i64* %id.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8* %33, i8** %arrayidx24, align 8
  %37 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_items = getelementptr inbounds %struct._symt, %struct._symt* %37, i32 0, i32 0
  %38 = load i64, i64* %n_items, align 8
  %inc25 = add i64 %38, 1
  store i64 %inc25, i64* %n_items, align 8
  %39 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym26 = getelementptr inbounds %struct._symt, %struct._symt* %39, i32 0, i32 2
  %40 = load i8**, i8*** %sym26, align 8
  %41 = load i64, i64* %id.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %40, i64 %41
  %42 = load i8*, i8** %arrayidx27, align 8
  ret i8* %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._symt* @symt_compile(%struct._symt* noundef %st, i8* noundef %str) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %str.addr = alloca i8*, align 8
  %p = alloca [65535 x i8], align 16
  %token = alloca [1024 x i8], align 16
  %tok = alloca i8*, align 8
  %line = alloca i64, align 8
  %token_id = alloca i64, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 1, i64* %line, align 8
  %arraydecay = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef %0) #8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i64, i64* %line, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %arraydecay1 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %call2 = call i8* @strtok(i8* noundef %arraydecay1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #8
  store i8* %call2, i8** %tok, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %call3 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #8
  store i8* %call3, i8** %tok, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %tok, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then4, label %if.end16

if.then4:                                         ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %token, i64 0, i64 0
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %arraydecay5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8* noundef %arraydecay6, i64* noundef %token_id) #8
  %cmp8 = icmp eq i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.then4
  %3 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %4 = load i64, i64* %token_id, align 8
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %token, i64 0, i64 0
  %call11 = call i8* @symt_add(%struct._symt* noundef %3, i64 noundef %4, i8* noundef %arraydecay10)
  br label %if.end15

if.else12:                                        ; preds = %if.then4
  %5 = load i64, i64* %line, align 8
  %arraydecay13 = getelementptr inbounds [65535 x i8], [65535 x i8]* %p, i64 0, i64 0
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64 noundef %5, i8* noundef %arraydecay13)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end15:                                         ; preds = %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %6 = load i64, i64* %line, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %line, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end16
  %7 = load i8*, i8** %tok, align 8
  %tobool17 = icmp ne i8* %7, null
  br i1 %tobool17, label %do.body, label %do.end, !llvm.loop !77

do.end:                                           ; preds = %do.cond
  %8 = load %struct._symt*, %struct._symt** %st.addr, align 8
  ret %struct._symt* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._symt* @symt_fread(%struct._symt* noundef %st, i8* noundef %filename) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %filename.addr = alloca i8*, align 8
  %fin = alloca %struct._IO_FILE*, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fin, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fin, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0), i8* noundef %2)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call2 = call %struct._symt* @symt_read(%struct._symt* noundef %3, %struct._IO_FILE* noundef %4)
  store %struct._symt* %call2, %struct._symt** %st.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %cmp3 = icmp ne %struct._IO_FILE* %5, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %7 = load %struct._symt*, %struct._symt** %st.addr, align 8
  ret %struct._symt* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._symt* @symt_create() #0 {
entry:
  %st = alloca %struct._symt*, align 8
  %i = alloca i64, align 8
  %call = call noalias i8* @malloc(i64 noundef 32) #8
  %0 = bitcast i8* %call to %struct._symt*
  store %struct._symt* %0, %struct._symt** %st, align 8
  %1 = load %struct._symt*, %struct._symt** %st, align 8
  %rev = getelementptr inbounds %struct._symt, %struct._symt* %1, i32 0, i32 3
  store %struct._hash* null, %struct._hash** %rev, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 8192) #8
  %2 = bitcast i8* %call1 to i8**
  %3 = load %struct._symt*, %struct._symt** %st, align 8
  %sym = getelementptr inbounds %struct._symt, %struct._symt* %3, i32 0, i32 2
  store i8** %2, i8*** %sym, align 8
  %4 = load %struct._symt*, %struct._symt** %st, align 8
  %n_items = getelementptr inbounds %struct._symt, %struct._symt* %4, i32 0, i32 0
  store i64 0, i64* %n_items, align 8
  %5 = load %struct._symt*, %struct._symt** %st, align 8
  %n_max = getelementptr inbounds %struct._symt, %struct._symt* %5, i32 0, i32 1
  store i64 1024, i64* %n_max, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %i, align 8
  %7 = load %struct._symt*, %struct._symt** %st, align 8
  %n_max2 = getelementptr inbounds %struct._symt, %struct._symt* %7, i32 0, i32 1
  %8 = load i64, i64* %n_max2, align 8
  %cmp = icmp ult i64 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._symt*, %struct._symt** %st, align 8
  %sym3 = getelementptr inbounds %struct._symt, %struct._symt* %9, i32 0, i32 2
  %10 = load i8**, i8*** %sym3, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %11
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  %13 = load %struct._symt*, %struct._symt** %st, align 8
  ret %struct._symt* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symt_remove(%struct._symt* noundef %st) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %i = alloca i64, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max = getelementptr inbounds %struct._symt, %struct._symt* %1, i32 0, i32 1
  %2 = load i64, i64* %n_max, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym = getelementptr inbounds %struct._symt, %struct._symt* %3, i32 0, i32 2
  %4 = load i8**, i8*** %sym, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %5
  %6 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp ne i8* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym2 = getelementptr inbounds %struct._symt, %struct._symt* %7, i32 0, i32 2
  %8 = load i8**, i8*** %sym2, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %9
  %10 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* noundef %10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %12 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev = getelementptr inbounds %struct._symt, %struct._symt* %12, i32 0, i32 3
  %13 = load %struct._hash*, %struct._hash** %rev, align 8
  %cmp4 = icmp ne %struct._hash* %13, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %for.end
  %14 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev6 = getelementptr inbounds %struct._symt, %struct._symt* %14, i32 0, i32 3
  %15 = load %struct._hash*, %struct._hash** %rev6, align 8
  call void @hash_remove(%struct._hash* noundef %15)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.end
  %16 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym8 = getelementptr inbounds %struct._symt, %struct._symt* %16, i32 0, i32 2
  %17 = load i8**, i8*** %sym8, align 8
  %18 = bitcast i8** %17 to i8*
  call void @free(i8* noundef %18) #8
  %19 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %20 = bitcast %struct._symt* %19 to i8*
  call void @free(i8* noundef %20) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symt_print(%struct._symt* noundef %st) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %i = alloca i64, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max = getelementptr inbounds %struct._symt, %struct._symt* %1, i32 0, i32 1
  %2 = load i64, i64* %n_max, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym = getelementptr inbounds %struct._symt, %struct._symt* %3, i32 0, i32 2
  %4 = load i8**, i8*** %sym, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %5
  %6 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp ne i8* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym2 = getelementptr inbounds %struct._symt, %struct._symt* %7, i32 0, i32 2
  %8 = load i8**, i8*** %sym2, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %9
  %10 = load i8*, i8** %arrayidx3, align 8
  %11 = load i64, i64* %i, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i8* noundef %10, i64 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._hash* @symt_reverse(%struct._symt* noundef %st) #0 {
entry:
  %st.addr = alloca %struct._symt*, align 8
  %token = alloca [1024 x i8], align 16
  %i = alloca i64, align 8
  store %struct._symt* %st, %struct._symt** %st.addr, align 8
  %0 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev = getelementptr inbounds %struct._symt, %struct._symt* %0, i32 0, i32 3
  %1 = load %struct._hash*, %struct._hash** %rev, align 8
  %cmp = icmp ne %struct._hash* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev1 = getelementptr inbounds %struct._symt, %struct._symt* %2, i32 0, i32 3
  %3 = load %struct._hash*, %struct._hash** %rev1, align 8
  call void @hash_remove(%struct._hash* noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_items = getelementptr inbounds %struct._symt, %struct._symt* %4, i32 0, i32 0
  %5 = load i64, i64* %n_items, align 8
  %mul = mul i64 %5, 2
  %call = call %struct._hash* @hash_create(i64 (i8*)* noundef @fnv32, i32 (i8*, i8*)* noundef @str_cmp, i64 noundef 1024, i64 noundef 8, i64 noundef %mul)
  %6 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev2 = getelementptr inbounds %struct._symt, %struct._symt* %6, i32 0, i32 3
  store %struct._hash* %call, %struct._hash** %rev2, align 8
  %7 = bitcast [1024 x i8]* %token to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 1024, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %9 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %n_max = getelementptr inbounds %struct._symt, %struct._symt* %9, i32 0, i32 1
  %10 = load i64, i64* %n_max, align 8
  %cmp3 = icmp ult i64 %8, %10
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym = getelementptr inbounds %struct._symt, %struct._symt* %11, i32 0, i32 2
  %12 = load i8**, i8*** %sym, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %13
  %14 = load i8*, i8** %arrayidx, align 8
  %cmp4 = icmp ne i8* %14, null
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %for.body
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %token, i64 0, i64 0
  %15 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %sym6 = getelementptr inbounds %struct._symt, %struct._symt* %15, i32 0, i32 2
  %16 = load i8**, i8*** %sym6, align 8
  %17 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %16, i64 %17
  %18 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i8* @strncpy(i8* noundef %arraydecay, i8* noundef %18, i64 noundef 1023) #8
  %19 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev9 = getelementptr inbounds %struct._symt, %struct._symt* %19, i32 0, i32 3
  %20 = load %struct._hash*, %struct._hash** %rev9, align 8
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %token, i64 0, i64 0
  %21 = bitcast i64* %i to i8*
  call void @hash_add(%struct._hash* noundef %20, i8* noundef %arraydecay10, i8* noundef %21)
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %23 = load %struct._symt*, %struct._symt** %st.addr, align 8
  %rev12 = getelementptr inbounds %struct._symt, %struct._symt* %23, i32 0, i32 3
  %24 = load %struct._hash*, %struct._hash** %rev12, align 8
  ret %struct._hash* %24
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_close(%struct._fst* noundef %fst, %struct._queue* noundef %finals) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %finals.addr = alloca %struct._queue*, align 8
  %state = alloca %struct._state*, align 8
  %sr = alloca %struct._sr, align 8
  %final = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._queue* %finals, %struct._queue** %finals.addr, align 8
  %0 = load %struct._queue*, %struct._queue** %finals.addr, align 8
  %n_items = getelementptr inbounds %struct._queue, %struct._queue* %0, i32 0, i32 3
  %1 = load i64, i64* %n_items, align 8
  %cmp = icmp ult i64 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %2 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %2, i32 0, i32 3
  %3 = load i8, i8* %sr_type, align 4
  call void @sr_get(%struct._sr* sret(%struct._sr) align 8 %sr, i8 noundef zeroext %3)
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %call = call i32 @fst_add_state(%struct._fst* noundef %4)
  store i32 %call, i32* %final, align 4
  %5 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %6 = load i32, i32* %final, align 4
  %one = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %7 = load float, float* %one, align 4
  call void @fst_set_final(%struct._fst* noundef %5, i32 noundef %6, float noundef %7)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load %struct._queue*, %struct._queue** %finals.addr, align 8
  %9 = bitcast i32* %s to i8*
  %call1 = call i8* @queue_deque(%struct._queue* noundef %8, i8* noundef %9)
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %10, i32 0, i32 5
  %11 = load %struct._state*, %struct._state** %states, align 8
  %12 = load i32, i32* %s, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %11, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %13 = load %struct._state*, %struct._state** %state, align 8
  %final3 = getelementptr inbounds %struct._state, %struct._state* %13, i32 0, i32 3
  store i32 0, i32* %final3, align 4
  %14 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %15 = load i32, i32* %s, align 4
  %16 = load i32, i32* %final, align 4
  %17 = load %struct._state*, %struct._state** %state, align 8
  %weight = getelementptr inbounds %struct._state, %struct._state* %17, i32 0, i32 2
  %18 = load float, float* %weight, align 8
  %call4 = call i32 @fst_add_arc(%struct._fst* noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef 0, i32 noundef 0, float noundef %18)
  br label %while.cond, !llvm.loop !82

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_reverse(%struct._fst* noundef %fst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %sr = alloca %struct._sr, align 8
  %state = alloca %struct._state*, align 8
  %arc = alloca %struct._arc*, align 8
  %orig = alloca %struct._fst*, align 8
  %s = alloca i32, align 4
  %start_s = alloca i32, align 4
  %a = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %sr_type = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 3
  %1 = load i8, i8* %sr_type, align 4
  call void @sr_get(%struct._sr* sret(%struct._sr) align 8 %sr, i8 noundef zeroext %1)
  %call = call %struct._fst* @fst_create()
  store %struct._fst* %call, %struct._fst** %orig, align 8
  %2 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start = getelementptr inbounds %struct._fst, %struct._fst* %2, i32 0, i32 0
  %3 = load i32, i32* %start, align 8
  store i32 %3, i32* %start_s, align 4
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %5 = load %struct._fst*, %struct._fst** %orig, align 8
  call void @fst_copy(%struct._fst* noundef %4, %struct._fst* noundef %5)
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %s, align 4
  %7 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %7, i32 0, i32 1
  %8 = load i32, i32* %n_states, align 4
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %9, i32 0, i32 5
  %10 = load %struct._state*, %struct._state** %states, align 8
  %11 = load i32, i32* %s, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct._state, %struct._state* %10, i64 %idxprom
  store %struct._state* %arrayidx, %struct._state** %state, align 8
  %12 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %12, i32 0, i32 0
  store i32 0, i32* %n_arcs, align 8
  %13 = load %struct._state*, %struct._state** %state, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %13, i32 0, i32 3
  %14 = load i32, i32* %final, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %s, align 4
  %16 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %start1 = getelementptr inbounds %struct._fst, %struct._fst* %16, i32 0, i32 0
  store i32 %15, i32* %start1, align 8
  %17 = load %struct._state*, %struct._state** %state, align 8
  %final2 = getelementptr inbounds %struct._state, %struct._state* %17, i32 0, i32 3
  store i32 0, i32* %final2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %s, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  %19 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %20 = load i32, i32* %start_s, align 4
  %one = getelementptr inbounds %struct._sr, %struct._sr* %sr, i32 0, i32 3
  %21 = load float, float* %one, align 4
  call void @fst_set_final(%struct._fst* noundef %19, i32 noundef %20, float noundef %21)
  store i32 0, i32* %s, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc21, %for.end
  %22 = load i32, i32* %s, align 4
  %23 = load %struct._fst*, %struct._fst** %orig, align 8
  %n_states4 = getelementptr inbounds %struct._fst, %struct._fst* %23, i32 0, i32 1
  %24 = load i32, i32* %n_states4, align 4
  %cmp5 = icmp ult i32 %22, %24
  br i1 %cmp5, label %for.body6, label %for.end23

for.body6:                                        ; preds = %for.cond3
  %25 = load %struct._fst*, %struct._fst** %orig, align 8
  %states7 = getelementptr inbounds %struct._fst, %struct._fst* %25, i32 0, i32 5
  %26 = load %struct._state*, %struct._state** %states7, align 8
  %27 = load i32, i32* %s, align 4
  %idxprom8 = zext i32 %27 to i64
  %arrayidx9 = getelementptr inbounds %struct._state, %struct._state* %26, i64 %idxprom8
  store %struct._state* %arrayidx9, %struct._state** %state, align 8
  store i32 0, i32* %a, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %for.body6
  %28 = load i32, i32* %a, align 4
  %29 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs11 = getelementptr inbounds %struct._state, %struct._state* %29, i32 0, i32 0
  %30 = load i32, i32* %n_arcs11, align 8
  %cmp12 = icmp ult i32 %28, %30
  br i1 %cmp12, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond10
  %31 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %31, i32 0, i32 4
  %32 = load %struct._arc*, %struct._arc** %arcs, align 8
  %33 = load i32, i32* %a, align 4
  %idxprom14 = zext i32 %33 to i64
  %arrayidx15 = getelementptr inbounds %struct._arc, %struct._arc* %32, i64 %idxprom14
  store %struct._arc* %arrayidx15, %struct._arc** %arc, align 8
  %34 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %35 = load %struct._arc*, %struct._arc** %arc, align 8
  %state16 = getelementptr inbounds %struct._arc, %struct._arc* %35, i32 0, i32 0
  %36 = load i32, i32* %state16, align 4
  %37 = load i32, i32* %s, align 4
  %38 = load %struct._arc*, %struct._arc** %arc, align 8
  %ilabel = getelementptr inbounds %struct._arc, %struct._arc* %38, i32 0, i32 2
  %39 = load i32, i32* %ilabel, align 4
  %40 = load %struct._arc*, %struct._arc** %arc, align 8
  %olabel = getelementptr inbounds %struct._arc, %struct._arc* %40, i32 0, i32 3
  %41 = load i32, i32* %olabel, align 4
  %42 = load %struct._arc*, %struct._arc** %arc, align 8
  %weight = getelementptr inbounds %struct._arc, %struct._arc* %42, i32 0, i32 1
  %43 = load float, float* %weight, align 4
  %call17 = call i32 @fst_add_arc(%struct._fst* noundef %34, i32 noundef %36, i32 noundef %37, i32 noundef %39, i32 noundef %41, float noundef %43)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body13
  %44 = load i32, i32* %a, align 4
  %inc19 = add i32 %44, 1
  store i32 %inc19, i32* %a, align 4
  br label %for.cond10, !llvm.loop !84

for.end20:                                        ; preds = %for.cond10
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %45 = load i32, i32* %s, align 4
  %inc22 = add i32 %45, 1
  store i32 %inc22, i32* %s, align 4
  br label %for.cond3, !llvm.loop !85

for.end23:                                        ; preds = %for.cond3
  %46 = load %struct._fst*, %struct._fst** %orig, align 8
  call void @fst_remove(%struct._fst* noundef %46)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._fst* @fst_rm_states(%struct._fst* noundef %fst, %struct._bitset* noundef %mask) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %mask.addr = alloca %struct._bitset*, align 8
  %state = alloca %struct._state*, align 8
  %arc = alloca %struct._arc*, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %shift = alloca i32, align 4
  %s = alloca i32, align 4
  %s11 = alloca i32, align 4
  %sh = alloca i32, align 4
  %a = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._bitset* %mask, %struct._bitset** %mask.addr, align 8
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %0, i32 0, i32 1
  %1 = load i32, i32* %n_states, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 4, %conv
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %mul, align 16
  store i64 %mul, i64* %__vla_expr0, align 8
  store i32 0, i32* %shift, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %s, align 4
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states1 = getelementptr inbounds %struct._fst, %struct._fst* %4, i32 0, i32 1
  %5 = load i32, i32* %n_states1, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._bitset*, %struct._bitset** %mask.addr, align 8
  %7 = load i32, i32* %s, align 4
  %call = call i32 @bitset_get(%struct._bitset* noundef %6, i32 noundef %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %shift, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %shift, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %shift, align 4
  %10 = load i32, i32* %s, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %9, i32* %arrayidx, align 4
  %11 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %11, i32 0, i32 5
  %12 = load %struct._state*, %struct._state** %states, align 8
  %13 = load i32, i32* %s, align 4
  %14 = load i32, i32* %shift, align 4
  %sub = sub i32 %13, %14
  %idxprom3 = zext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds %struct._state, %struct._state* %12, i64 %idxprom3
  %15 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states5 = getelementptr inbounds %struct._fst, %struct._fst* %15, i32 0, i32 5
  %16 = load %struct._state*, %struct._state** %states5, align 8
  %17 = load i32, i32* %s, align 4
  %idxprom6 = zext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds %struct._state, %struct._state* %16, i64 %idxprom6
  %18 = bitcast %struct._state* %arrayidx4 to i8*
  %19 = bitcast %struct._state* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %s, align 4
  %inc8 = add i32 %20, 1
  store i32 %inc8, i32* %s, align 4
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %shift, align 4
  %22 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states9 = getelementptr inbounds %struct._fst, %struct._fst* %22, i32 0, i32 1
  %23 = load i32, i32* %n_states9, align 4
  %sub10 = sub i32 %23, %21
  store i32 %sub10, i32* %n_states9, align 4
  store i32 0, i32* %s11, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc51, %for.end
  %24 = load i32, i32* %s11, align 4
  %25 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states13 = getelementptr inbounds %struct._fst, %struct._fst* %25, i32 0, i32 1
  %26 = load i32, i32* %n_states13, align 4
  %cmp14 = icmp ult i32 %24, %26
  br i1 %cmp14, label %for.body16, label %for.end53

for.body16:                                       ; preds = %for.cond12
  %27 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states17 = getelementptr inbounds %struct._fst, %struct._fst* %27, i32 0, i32 5
  %28 = load %struct._state*, %struct._state** %states17, align 8
  %29 = load i32, i32* %s11, align 4
  %idxprom18 = zext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds %struct._state, %struct._state* %28, i64 %idxprom18
  store %struct._state* %arrayidx19, %struct._state** %state, align 8
  store i32 0, i32* %sh, align 4
  store i32 0, i32* %a, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc46, %for.body16
  %30 = load i32, i32* %a, align 4
  %31 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs = getelementptr inbounds %struct._state, %struct._state* %31, i32 0, i32 0
  %32 = load i32, i32* %n_arcs, align 8
  %cmp21 = icmp ult i32 %30, %32
  br i1 %cmp21, label %for.body23, label %for.end48

for.body23:                                       ; preds = %for.cond20
  %33 = load %struct._state*, %struct._state** %state, align 8
  %arcs = getelementptr inbounds %struct._state, %struct._state* %33, i32 0, i32 4
  %34 = load %struct._arc*, %struct._arc** %arcs, align 8
  %35 = load i32, i32* %a, align 4
  %idxprom24 = zext i32 %35 to i64
  %arrayidx25 = getelementptr inbounds %struct._arc, %struct._arc* %34, i64 %idxprom24
  store %struct._arc* %arrayidx25, %struct._arc** %arc, align 8
  %36 = load %struct._arc*, %struct._arc** %arc, align 8
  %state26 = getelementptr inbounds %struct._arc, %struct._arc* %36, i32 0, i32 0
  %37 = load i32, i32* %state26, align 4
  %idxprom27 = zext i32 %37 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %vla, i64 %idxprom27
  %38 = load i32, i32* %arrayidx28, align 4
  %39 = load %struct._arc*, %struct._arc** %arc, align 8
  %state29 = getelementptr inbounds %struct._arc, %struct._arc* %39, i32 0, i32 0
  %40 = load i32, i32* %state29, align 4
  %sub30 = sub i32 %40, %38
  store i32 %sub30, i32* %state29, align 4
  %41 = load %struct._arc*, %struct._arc** %arc, align 8
  %state31 = getelementptr inbounds %struct._arc, %struct._arc* %41, i32 0, i32 0
  %42 = load i32, i32* %state31, align 4
  %43 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states32 = getelementptr inbounds %struct._fst, %struct._fst* %43, i32 0, i32 1
  %44 = load i32, i32* %n_states32, align 4
  %cmp33 = icmp uge i32 %42, %44
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %for.body23
  %45 = load i32, i32* %sh, align 4
  %inc36 = add i32 %45, 1
  store i32 %inc36, i32* %sh, align 4
  br label %if.end45

if.else37:                                        ; preds = %for.body23
  %46 = load %struct._state*, %struct._state** %state, align 8
  %arcs38 = getelementptr inbounds %struct._state, %struct._state* %46, i32 0, i32 4
  %47 = load %struct._arc*, %struct._arc** %arcs38, align 8
  %48 = load i32, i32* %a, align 4
  %49 = load i32, i32* %sh, align 4
  %sub39 = sub i32 %48, %49
  %idxprom40 = zext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds %struct._arc, %struct._arc* %47, i64 %idxprom40
  %50 = load %struct._state*, %struct._state** %state, align 8
  %arcs42 = getelementptr inbounds %struct._state, %struct._state* %50, i32 0, i32 4
  %51 = load %struct._arc*, %struct._arc** %arcs42, align 8
  %52 = load i32, i32* %a, align 4
  %idxprom43 = zext i32 %52 to i64
  %arrayidx44 = getelementptr inbounds %struct._arc, %struct._arc* %51, i64 %idxprom43
  %53 = bitcast %struct._arc* %arrayidx41 to i8*
  %54 = bitcast %struct._arc* %arrayidx44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 16, i1 false)
  br label %if.end45

if.end45:                                         ; preds = %if.else37, %if.then35
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %55 = load i32, i32* %a, align 4
  %inc47 = add i32 %55, 1
  store i32 %inc47, i32* %a, align 4
  br label %for.cond20, !llvm.loop !87

for.end48:                                        ; preds = %for.cond20
  %56 = load i32, i32* %sh, align 4
  %57 = load %struct._state*, %struct._state** %state, align 8
  %n_arcs49 = getelementptr inbounds %struct._state, %struct._state* %57, i32 0, i32 0
  %58 = load i32, i32* %n_arcs49, align 8
  %sub50 = sub i32 %58, %56
  store i32 %sub50, i32* %n_arcs49, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.end48
  %59 = load i32, i32* %s11, align 4
  %inc52 = add i32 %59, 1
  store i32 %inc52, i32* %s11, align 4
  br label %for.cond12, !llvm.loop !88

for.end53:                                        ; preds = %for.cond12
  %60 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %61 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %61)
  ret %struct._fst* %60
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_get_finals(%struct._fst* noundef %fst, %struct._queue* noundef %finals) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %finals.addr = alloca %struct._queue*, align 8
  %state = alloca %struct._state*, align 8
  %s = alloca i32, align 4
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  store %struct._queue* %finals, %struct._queue** %finals.addr, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %s, align 4
  %1 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %n_states = getelementptr inbounds %struct._fst, %struct._fst* %1, i32 0, i32 1
  %2 = load i32, i32* %n_states, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %states = getelementptr inbounds %struct._fst, %struct._fst* %3, i32 0, i32 5
  %4 = load %struct._state*, %struct._state** %states, align 8
  %5 = load i32, i32* %s, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct._state, %struct._state* %4, i64 %idx.ext
  store %struct._state* %add.ptr, %struct._state** %state, align 8
  %6 = load %struct._state*, %struct._state** %state, align 8
  %final = getelementptr inbounds %struct._state, %struct._state* %6, i32 0, i32 3
  %7 = load i32, i32* %final, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._queue*, %struct._queue** %finals.addr, align 8
  %9 = bitcast i32* %s to i8*
  call void @queue_enque(%struct._queue* noundef %8, i8* noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %s, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._fst* @fst_trim(%struct._fst* noundef %fst) #0 {
entry:
  %fst.addr = alloca %struct._fst*, align 8
  %finals = alloca %struct._queue*, align 8
  %iter = alloca %struct._fst_iter*, align 8
  %iter_rev = alloca %struct._fst_iter*, align 8
  store %struct._fst* %fst, %struct._fst** %fst.addr, align 8
  %call = call %struct._queue* @queue_create(i64 noundef 4)
  store %struct._queue* %call, %struct._queue** %finals, align 8
  %0 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %1 = load %struct._queue*, %struct._queue** %finals, align 8
  call void @fst_get_finals(%struct._fst* noundef %0, %struct._queue* noundef %1)
  %2 = load %struct._queue*, %struct._queue** %finals, align 8
  %n_items = getelementptr inbounds %struct._queue, %struct._queue* %2, i32 0, i32 3
  %3 = load i64, i64* %n_items, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  call void @fst_empty(%struct._fst* noundef %4)
  br label %if.end18

if.else:                                          ; preds = %entry
  %5 = load %struct._queue*, %struct._queue** %finals, align 8
  %n_items1 = getelementptr inbounds %struct._queue, %struct._queue* %5, i32 0, i32 3
  %6 = load i64, i64* %n_items1, align 8
  %cmp2 = icmp ugt i64 %6, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %7 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %8 = load %struct._queue*, %struct._queue** %finals, align 8
  call void @fst_close(%struct._fst* noundef %7, %struct._queue* noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  %9 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %call4 = call %struct._fst_iter* @fst_iter_create(%struct._fst* noundef %9)
  store %struct._fst_iter* %call4, %struct._fst_iter** %iter, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %call5 = call i32 @fst_iter_next(%struct._fst_iter* noundef %10)
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !90

while.end:                                        ; preds = %while.cond
  %11 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  call void @fst_reverse(%struct._fst* noundef %11)
  %12 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %call7 = call %struct._fst_iter* @fst_iter_create(%struct._fst* noundef %12)
  store %struct._fst_iter* %call7, %struct._fst_iter** %iter_rev, align 8
  br label %while.cond8

while.cond8:                                      ; preds = %while.body11, %while.end
  %13 = load %struct._fst_iter*, %struct._fst_iter** %iter_rev, align 8
  %call9 = call i32 @fst_iter_next(%struct._fst_iter* noundef %13)
  %cmp10 = icmp ne i32 %call9, -1
  br i1 %cmp10, label %while.body11, label %while.end12

while.body11:                                     ; preds = %while.cond8
  br label %while.cond8, !llvm.loop !91

while.end12:                                      ; preds = %while.cond8
  %14 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  call void @fst_reverse(%struct._fst* noundef %14)
  %15 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %marked = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %15, i32 0, i32 1
  %16 = load %struct._bitset*, %struct._bitset** %marked, align 8
  %17 = load %struct._fst_iter*, %struct._fst_iter** %iter_rev, align 8
  %marked13 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %17, i32 0, i32 1
  %18 = load %struct._bitset*, %struct._bitset** %marked13, align 8
  call void @bitset_intersect(%struct._bitset* noundef %16, %struct._bitset* noundef %18)
  %19 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %marked14 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %19, i32 0, i32 1
  %20 = load %struct._bitset*, %struct._bitset** %marked14, align 8
  %call15 = call %struct._bitset* @bitset_toggle_all(%struct._bitset* noundef %20)
  %21 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  %22 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  %marked16 = getelementptr inbounds %struct._fst_iter, %struct._fst_iter* %22, i32 0, i32 1
  %23 = load %struct._bitset*, %struct._bitset** %marked16, align 8
  %call17 = call %struct._fst* @fst_rm_states(%struct._fst* noundef %21, %struct._bitset* noundef %23)
  %24 = load %struct._fst_iter*, %struct._fst_iter** %iter_rev, align 8
  call void @fst_iter_remove(%struct._fst_iter* noundef %24)
  %25 = load %struct._fst_iter*, %struct._fst_iter** %iter, align 8
  call void @fst_iter_remove(%struct._fst_iter* noundef %25)
  br label %if.end18

if.end18:                                         ; preds = %while.end12, %if.then
  %26 = load %struct._queue*, %struct._queue** %finals, align 8
  call void @queue_remove(%struct._queue* noundef %26)
  %27 = load %struct._fst*, %struct._fst** %fst.addr, align 8
  ret %struct._fst* %27
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }

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
