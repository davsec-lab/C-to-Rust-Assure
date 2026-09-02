; ModuleID = 'skiplist.c'
source_filename = "skiplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.skip_list_t = type { i16, float, i16, i64, %struct.skip_node_t*, i8 (i8*, i8*)*, void (i8*)* }
%struct.skip_node_t = type { %struct.link*, i8*, i8* }
%struct.link = type { i64, %struct.skip_node_t* }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"level < skip_list->max_level\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"skiplist.c\00", align 1
@__PRETTY_FUNCTION__.jrsl_insert = private unnamed_addr constant [49 x i8] c"void *jrsl_insert(skip_list_t *, void *, void *)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%*s%s%*s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"o%.*s> \00", align 1
@.str.7 = private unnamed_addr constant [127 x i8] c"------------------------------------------------------------------------------------------------------------------------------\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"x \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" Level %i \0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"Usage: %s <data.bin>\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Error: cannot open '%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Error: short read on header\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Allocation failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Error: short read on body\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"  Inserts:  %zu\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"  Updates:  %zu\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"  Removes:  %zu (hits: %zu, misses: %zu)\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"  Searches: %zu (hits: %zu, misses: %zu)\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Final skiplist length: %zu\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Checksum: %zu\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"elapsed_ms: %lld\0A\00", align 1
@str = private unnamed_addr constant [35 x i8] c"=== SkipList Benchmark Results ===\00", align 1
@str.26 = private unnamed_addr constant [22 x i8] c"Operations completed:\00", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @jrsl_initialize(%struct.skip_list_t* nocapture noundef %skip_list, i8 (i8*, i8*)* noundef %comparator, void (i8*)* noundef %key_destructor, float noundef %p, i16 noundef zeroext %max_level) local_unnamed_addr #3 {
entry:
  %level = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 2
  store i16 1, i16* %level, align 8, !tbaa !3
  %width = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 3
  store i64 0, i64* %width, align 8, !tbaa !11
  %max_level1 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 0
  store i16 %max_level, i16* %max_level1, align 8, !tbaa !12
  %p2 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 1
  store float %p, float* %p2, align 4, !tbaa !13
  %comparator3 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 5
  store i8 (i8*, i8*)* %comparator, i8 (i8*, i8*)** %comparator3, align 8, !tbaa !14
  %key_destructor4 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 6
  store void (i8*)* %key_destructor, void (i8*)** %key_destructor4, align 8, !tbaa !15
  tail call void @srand(i32 noundef 42) #14
  %call.i = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #14
  %tobool.not.i = icmp eq i8* %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end.i:                                         ; preds = %entry
  %0 = bitcast i8* %call.i to %struct.skip_node_t*
  %key.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %0, i64 0, i32 1
  %1 = bitcast i8** %key.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false) #14
  %2 = load i16, i16* %max_level1, align 8, !tbaa !12
  %conv.i = zext i16 %2 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 4
  %call1.i = tail call noalias i8* @malloc(i64 noundef %mul.i) #14
  %3 = bitcast i8* %call.i to i8**
  store i8* %call1.i, i8** %3, align 8, !tbaa !16
  %tobool3.not.i = icmp eq i8* %call1.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %jrsl_init_head.exit

if.then4.i:                                       ; preds = %if.end.i
  tail call void @exit(i32 noundef 1) #15
  unreachable

jrsl_init_head.exit:                              ; preds = %if.end.i
  %head9.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %4 = bitcast %struct.skip_node_t** %head9.i to i8**
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %call1.i, i8 0, i64 16, i1 false) #14
  store i8* %call.i, i8** %4, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @jrsl_destroy(%struct.skip_list_t* nocapture noundef readonly %skip_list, void (i8*, i8*)* nocapture noundef readonly %node_visitor) local_unnamed_addr #3 {
entry:
  %head = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %0 = load %struct.skip_node_t*, %struct.skip_node_t** %head, align 8, !tbaa !18
  %tobool.not10 = icmp eq %struct.skip_node_t* %0, null
  br i1 %tobool.not10, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %node.011 = phi %struct.skip_node_t* [ %2, %while.body ], [ %0, %entry ]
  %forward = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %node.011, i64 0, i32 0
  %1 = load %struct.link*, %struct.link** %forward, align 8, !tbaa !16
  %node1 = getelementptr inbounds %struct.link, %struct.link* %1, i64 0, i32 1
  %2 = load %struct.skip_node_t*, %struct.skip_node_t** %node1, align 8, !tbaa !19
  %key = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %node.011, i64 0, i32 1
  %3 = load i8*, i8** %key, align 8, !tbaa !21
  %data = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %node.011, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !22
  tail call void %node_visitor(i8* noundef %3, i8* noundef %4) #14
  %5 = bitcast %struct.skip_node_t* %node.011 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !16
  tail call void @free(i8* noundef %6) #14
  %7 = bitcast %struct.skip_node_t* %node.011 to i8*
  tail call void @free(i8* noundef %7) #14
  %tobool.not = icmp eq %struct.skip_node_t* %2, null
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !23

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i8* @jrsl_key_at(%struct.skip_list_t* nocapture noundef readonly %skip_list, i64 noundef %index) local_unnamed_addr #6 {
entry:
  %width.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 3
  %0 = load i64, i64* %width.i, align 8, !tbaa !11
  %cmp.not.i = icmp ugt i64 %0, %index
  br i1 %cmp.not.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %entry
  %add.i = add nuw i64 %index, 1
  %head.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %1 = load %struct.skip_node_t*, %struct.skip_node_t** %head.i, align 8, !tbaa !18
  %level.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 2
  %2 = load i16, i16* %level.i, align 8, !tbaa !3
  %conv.i = zext i16 %2 to i64
  br label %for.cond.i

for.cond.i.loopexit:                              ; preds = %land.rhs.i, %while.cond.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.loopexit, %if.end.i
  %i.0.in.i = phi i64 [ %conv.i, %if.end.i ], [ %i.0.i, %for.cond.i.loopexit ]
  %w.0.i = phi i64 [ %add.i, %if.end.i ], [ %w.1.i, %for.cond.i.loopexit ]
  %x.0.i = phi %struct.skip_node_t* [ %1, %if.end.i ], [ %x.1.i, %for.cond.i.loopexit ]
  %i.0.i = add i64 %i.0.in.i, -1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.cond.i
  %w.1.i = phi i64 [ %w.0.i, %for.cond.i ], [ %sub12.i, %while.body.i ]
  %x.1.i = phi %struct.skip_node_t* [ %x.0.i, %for.cond.i ], [ %4, %while.body.i ]
  %forward.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %x.1.i, i64 0, i32 0
  %3 = load %struct.link*, %struct.link** %forward.i, align 8, !tbaa !16
  %node.i = getelementptr inbounds %struct.link, %struct.link* %3, i64 %i.0.i, i32 1
  %4 = load %struct.skip_node_t*, %struct.skip_node_t** %node.i, align 8, !tbaa !19
  %tobool.not.i = icmp eq %struct.skip_node_t* %4, null
  br i1 %tobool.not.i, label %for.cond.i.loopexit, label %land.rhs.i, !llvm.loop !25

land.rhs.i:                                       ; preds = %while.cond.i
  %width6.i = getelementptr inbounds %struct.link, %struct.link* %3, i64 %i.0.i, i32 0
  %5 = load i64, i64* %width6.i, align 8, !tbaa !26
  %cmp7.not.i = icmp ult i64 %w.1.i, %5
  br i1 %cmp7.not.i, label %for.cond.i.loopexit, label %while.body.i, !llvm.loop !25

while.body.i:                                     ; preds = %land.rhs.i
  %sub12.i = sub i64 %w.1.i, %5
  %cmp16.i = icmp eq i64 %sub12.i, 0
  br i1 %cmp16.i, label %if.then, label %while.cond.i, !llvm.loop !27

if.then:                                          ; preds = %while.body.i
  %key = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %4, i64 0, i32 1
  %6 = load i8*, i8** %key, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %6, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i8* @jrsl_data_at(%struct.skip_list_t* nocapture noundef readonly %skip_list, i64 noundef %index) local_unnamed_addr #6 {
entry:
  %width.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 3
  %0 = load i64, i64* %width.i, align 8, !tbaa !11
  %cmp.not.i = icmp ugt i64 %0, %index
  br i1 %cmp.not.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %entry
  %add.i = add nuw i64 %index, 1
  %head.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %1 = load %struct.skip_node_t*, %struct.skip_node_t** %head.i, align 8, !tbaa !18
  %level.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 2
  %2 = load i16, i16* %level.i, align 8, !tbaa !3
  %conv.i = zext i16 %2 to i64
  br label %for.cond.i

for.cond.i.loopexit:                              ; preds = %land.rhs.i, %while.cond.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.loopexit, %if.end.i
  %i.0.in.i = phi i64 [ %conv.i, %if.end.i ], [ %i.0.i, %for.cond.i.loopexit ]
  %w.0.i = phi i64 [ %add.i, %if.end.i ], [ %w.1.i, %for.cond.i.loopexit ]
  %x.0.i = phi %struct.skip_node_t* [ %1, %if.end.i ], [ %x.1.i, %for.cond.i.loopexit ]
  %i.0.i = add i64 %i.0.in.i, -1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.cond.i
  %w.1.i = phi i64 [ %w.0.i, %for.cond.i ], [ %sub12.i, %while.body.i ]
  %x.1.i = phi %struct.skip_node_t* [ %x.0.i, %for.cond.i ], [ %4, %while.body.i ]
  %forward.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %x.1.i, i64 0, i32 0
  %3 = load %struct.link*, %struct.link** %forward.i, align 8, !tbaa !16
  %node.i = getelementptr inbounds %struct.link, %struct.link* %3, i64 %i.0.i, i32 1
  %4 = load %struct.skip_node_t*, %struct.skip_node_t** %node.i, align 8, !tbaa !19
  %tobool.not.i = icmp eq %struct.skip_node_t* %4, null
  br i1 %tobool.not.i, label %for.cond.i.loopexit, label %land.rhs.i, !llvm.loop !25

land.rhs.i:                                       ; preds = %while.cond.i
  %width6.i = getelementptr inbounds %struct.link, %struct.link* %3, i64 %i.0.i, i32 0
  %5 = load i64, i64* %width6.i, align 8, !tbaa !26
  %cmp7.not.i = icmp ult i64 %w.1.i, %5
  br i1 %cmp7.not.i, label %for.cond.i.loopexit, label %while.body.i, !llvm.loop !25

while.body.i:                                     ; preds = %land.rhs.i
  %sub12.i = sub i64 %w.1.i, %5
  %cmp16.i = icmp eq i64 %sub12.i, 0
  br i1 %cmp16.i, label %if.then, label %while.cond.i, !llvm.loop !27

if.then:                                          ; preds = %while.body.i
  %data = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %4, i64 0, i32 2
  %6 = load i8*, i8** %data, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %6, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i8* @jrsl_search(%struct.skip_list_t* nocapture noundef readonly %skip_list, i8* noundef %key) local_unnamed_addr #3 {
entry:
  %level = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 2
  %0 = load i16, i16* %level, align 8, !tbaa !3
  %cmp.not66 = icmp eq i16 %0, 0
  br i1 %cmp.not66, label %cleanup, label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %entry
  %conv = zext i16 %0 to i64
  %head = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %1 = load %struct.skip_node_t*, %struct.skip_node_t** %head, align 8, !tbaa !18
  %comparator = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.inc
  %x.068 = phi %struct.skip_node_t* [ %1, %while.cond.preheader.lr.ph ], [ %x.1.lcssa77, %for.inc ]
  %i.067 = phi i64 [ %conv, %while.cond.preheader.lr.ph ], [ %sub, %for.inc ]
  %sub = add nsw i64 %i.067, -1
  %forward56 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %x.068, i64 0, i32 0
  %2 = load %struct.link*, %struct.link** %forward56, align 8, !tbaa !16
  %node57 = getelementptr inbounds %struct.link, %struct.link* %2, i64 %sub, i32 1
  %3 = load %struct.skip_node_t*, %struct.skip_node_t** %node57, align 8, !tbaa !19
  %cmp2.not58 = icmp eq %struct.skip_node_t* %3, null
  br i1 %cmp2.not58, label %for.inc, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %4 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator, align 8, !tbaa !14
  %key884 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %3, i64 0, i32 1
  %5 = load i8*, i8** %key884, align 8, !tbaa !21
  %call85 = tail call signext i8 %4(i8* noundef %5, i8* noundef %key) #14
  %cmp1086 = icmp slt i8 %call85, 0
  br i1 %cmp1086, label %while.body, label %while.end

land.rhs:                                         ; preds = %while.body
  %6 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator, align 8, !tbaa !14
  %key8 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %11, i64 0, i32 1
  %7 = load i8*, i8** %key8, align 8, !tbaa !21
  %call = tail call signext i8 %6(i8* noundef %7, i8* noundef %key) #14
  %cmp10 = icmp slt i8 %call, 0
  br i1 %cmp10, label %while.body, label %while.end, !llvm.loop !28

while.body:                                       ; preds = %land.rhs.preheader, %land.rhs
  %forward6087 = phi %struct.link** [ %forward, %land.rhs ], [ %forward56, %land.rhs.preheader ]
  %8 = load %struct.link*, %struct.link** %forward6087, align 8, !tbaa !16
  %node15 = getelementptr inbounds %struct.link, %struct.link* %8, i64 %sub, i32 1
  %9 = load %struct.skip_node_t*, %struct.skip_node_t** %node15, align 8, !tbaa !19
  %forward = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %9, i64 0, i32 0
  %10 = load %struct.link*, %struct.link** %forward, align 8, !tbaa !16
  %node = getelementptr inbounds %struct.link, %struct.link* %10, i64 %sub, i32 1
  %11 = load %struct.skip_node_t*, %struct.skip_node_t** %node, align 8, !tbaa !19
  %cmp2.not = icmp eq %struct.skip_node_t* %11, null
  br i1 %cmp2.not, label %for.inc, label %land.rhs, !llvm.loop !28

while.end:                                        ; preds = %land.rhs, %land.rhs.preheader
  %forward60.lcssa = phi %struct.link** [ %forward56, %land.rhs.preheader ], [ %forward, %land.rhs ]
  %x.159.lcssa = phi %struct.skip_node_t* [ %x.068, %land.rhs.preheader ], [ %9, %land.rhs ]
  %.pre.pre = load %struct.link*, %struct.link** %forward60.lcssa, align 8, !tbaa !16
  %node19.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.link, %struct.link* %.pre.pre, i64 %sub, i32 1
  %.pre71.pre = load %struct.skip_node_t*, %struct.skip_node_t** %node19.phi.trans.insert.phi.trans.insert, align 8, !tbaa !19
  %cmp20.not = icmp eq %struct.skip_node_t* %.pre71.pre, null
  br i1 %cmp20.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %12 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator, align 8, !tbaa !14
  %key27 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %.pre71.pre, i64 0, i32 1
  %13 = load i8*, i8** %key27, align 8, !tbaa !21
  %call28 = tail call signext i8 %12(i8* noundef %13, i8* noundef %key) #14
  %cmp30 = icmp eq i8 %call28, 0
  br i1 %cmp30, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.link*, %struct.link** %forward60.lcssa, align 8, !tbaa !16
  %node35 = getelementptr inbounds %struct.link, %struct.link* %14, i64 %sub, i32 1
  %15 = load %struct.skip_node_t*, %struct.skip_node_t** %node35, align 8, !tbaa !19
  %data = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %15, i64 0, i32 2
  %16 = load i8*, i8** %data, align 8, !tbaa !22
  br label %cleanup

for.inc:                                          ; preds = %while.body, %while.cond.preheader, %while.end, %land.lhs.true
  %x.1.lcssa77 = phi %struct.skip_node_t* [ %x.159.lcssa, %while.end ], [ %x.159.lcssa, %land.lhs.true ], [ %x.068, %while.cond.preheader ], [ %9, %while.body ]
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %cleanup, label %while.cond.preheader, !llvm.loop !29

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i8* [ %16, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret i8* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i8* @jrsl_insert(%struct.skip_list_t* nocapture noundef %skip_list, i8* noundef %key, i8* noundef %data) local_unnamed_addr #3 {
entry:
  %max_level = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 0
  %0 = load i16, i16* %max_level, align 8, !tbaa !12
  %conv = zext i16 %0 to i64
  %mul = shl nuw nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #14
  %1 = bitcast i8* %call to %struct.skip_node_t**
  %call4 = tail call noalias i8* @malloc(i64 noundef %mul) #14
  %2 = bitcast i8* %call4 to i64*
  %tobool = icmp ne i8* %call, null
  %tobool5 = icmp ne i8* %call4, null
  %or.cond = and i1 %tobool, %tobool5
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %3 = load %struct.skip_node_t*, %struct.skip_node_t** %head, align 8, !tbaa !18
  %level6 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 2
  %4 = load i16, i16* %level6, align 8, !tbaa !3
  %cmp.not336 = icmp eq i16 %4, 0
  br i1 %cmp.not336, label %for.end, label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %conv7 = zext i16 %4 to i64
  %comparator = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %i.0338 = phi i64 [ %conv7, %while.cond.preheader.lr.ph ], [ %sub, %while.end ]
  %x.0337 = phi %struct.skip_node_t* [ %3, %while.cond.preheader.lr.ph ], [ %x.1.lcssa, %while.end ]
  %sub = add nsw i64 %i.0338, -1
  %forward325 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %x.0337, i64 0, i32 0
  %5 = load %struct.link*, %struct.link** %forward325, align 8, !tbaa !16
  %node326 = getelementptr inbounds %struct.link, %struct.link* %5, i64 %sub, i32 1
  %6 = load %struct.skip_node_t*, %struct.skip_node_t** %node326, align 8, !tbaa !19
  %cmp9.not327 = icmp eq %struct.skip_node_t* %6, null
  br i1 %cmp9.not327, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %7 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator, align 8, !tbaa !14
  %key15353 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %6, i64 0, i32 1
  %8 = load i8*, i8** %key15353, align 8, !tbaa !21
  %call16354 = tail call signext i8 %7(i8* noundef %8, i8* noundef %key) #14
  %cmp18355 = icmp slt i8 %call16354, 0
  br i1 %cmp18355, label %while.body, label %while.end

land.rhs:                                         ; preds = %while.body
  %9 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator, align 8, !tbaa !14
  %key15 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %15, i64 0, i32 1
  %10 = load i8*, i8** %key15, align 8, !tbaa !21
  %call16 = tail call signext i8 %9(i8* noundef %10, i8* noundef %key) #14
  %cmp18 = icmp slt i8 %call16, 0
  br i1 %cmp18, label %while.body, label %while.end, !llvm.loop !30

while.body:                                       ; preds = %land.rhs.preheader, %land.rhs
  %width_sum.0329357 = phi i64 [ %add, %land.rhs ], [ 0, %land.rhs.preheader ]
  %forward330356 = phi %struct.link** [ %forward, %land.rhs ], [ %forward325, %land.rhs.preheader ]
  %11 = load %struct.link*, %struct.link** %forward330356, align 8, !tbaa !16
  %width = getelementptr inbounds %struct.link, %struct.link* %11, i64 %sub, i32 0
  %12 = load i64, i64* %width, align 8, !tbaa !26
  %add = add i64 %12, %width_sum.0329357
  %node26 = getelementptr inbounds %struct.link, %struct.link* %11, i64 %sub, i32 1
  %13 = load %struct.skip_node_t*, %struct.skip_node_t** %node26, align 8, !tbaa !19
  %forward = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %13, i64 0, i32 0
  %14 = load %struct.link*, %struct.link** %forward, align 8, !tbaa !16
  %node = getelementptr inbounds %struct.link, %struct.link* %14, i64 %sub, i32 1
  %15 = load %struct.skip_node_t*, %struct.skip_node_t** %node, align 8, !tbaa !19
  %cmp9.not = icmp eq %struct.skip_node_t* %15, null
  br i1 %cmp9.not, label %while.end, label %land.rhs, !llvm.loop !30

while.end:                                        ; preds = %while.body, %land.rhs, %land.rhs.preheader, %while.cond.preheader
  %x.1.lcssa = phi %struct.skip_node_t* [ %x.0337, %while.cond.preheader ], [ %x.0337, %land.rhs.preheader ], [ %13, %land.rhs ], [ %13, %while.body ]
  %width_sum.0.lcssa = phi i64 [ 0, %while.cond.preheader ], [ 0, %land.rhs.preheader ], [ %add, %land.rhs ], [ %add, %while.body ]
  %arrayidx28 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %sub
  store %struct.skip_node_t* %x.1.lcssa, %struct.skip_node_t** %arrayidx28, align 8, !tbaa !31
  %arrayidx30 = getelementptr inbounds i64, i64* %2, i64 %sub
  store i64 %width_sum.0.lcssa, i64* %arrayidx30, align 8, !tbaa !32
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %for.end, label %while.cond.preheader, !llvm.loop !33

for.end:                                          ; preds = %while.end, %if.end
  %x.0.lcssa = phi %struct.skip_node_t* [ %3, %if.end ], [ %x.1.lcssa, %while.end ]
  %forward31 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %x.0.lcssa, i64 0, i32 0
  %16 = load %struct.link*, %struct.link** %forward31, align 8, !tbaa !16
  %node33 = getelementptr inbounds %struct.link, %struct.link* %16, i64 0, i32 1
  %17 = load %struct.skip_node_t*, %struct.skip_node_t** %node33, align 8, !tbaa !19
  %tobool34.not = icmp eq %struct.skip_node_t* %17, null
  br i1 %tobool34.not, label %if.end55, label %if.then35

if.then35:                                        ; preds = %for.end
  %comparator36 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 5
  %18 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator36, align 8, !tbaa !14
  %key40 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %17, i64 0, i32 1
  %19 = load i8*, i8** %key40, align 8, !tbaa !21
  %call41 = tail call signext i8 %18(i8* noundef %19, i8* noundef %key) #14
  %cmp43 = icmp eq i8 %call41, 0
  br i1 %cmp43, label %if.then45, label %if.end55

if.then45:                                        ; preds = %if.then35
  %20 = load %struct.link*, %struct.link** %forward31, align 8, !tbaa !16
  %node48 = getelementptr inbounds %struct.link, %struct.link* %20, i64 0, i32 1
  %21 = load %struct.skip_node_t*, %struct.skip_node_t** %node48, align 8, !tbaa !19
  %data49 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %21, i64 0, i32 2
  %22 = load i8*, i8** %data49, align 8, !tbaa !22
  store i8* %data, i8** %data49, align 8, !tbaa !22
  tail call void @free(i8* noundef nonnull %call) #14
  tail call void @free(i8* noundef nonnull %call4) #14
  br label %cleanup

if.end55:                                         ; preds = %if.then35, %for.end
  %call.i = tail call i32 @rand() #14
  %p.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 1
  %rnd.0.in15.i = sitofp i32 %call.i to float
  %rnd.016.i = fmul float %rnd.0.in15.i, 0x3E00000000000000
  %23 = load float, float* %p.i, align 4, !tbaa !13
  %cmp17.i = fcmp olt float %rnd.016.i, %23
  br i1 %cmp17.i, label %land.rhs.i, label %jrsl_random_level.exit

land.rhs.i:                                       ; preds = %if.end55, %while.body.i
  %level.018.i = phi i64 [ %inc.i, %while.body.i ], [ 1, %if.end55 ]
  %24 = load i16, i16* %max_level, align 8, !tbaa !12
  %conv2.i = zext i16 %24 to i64
  %sub.i = add nsw i64 %conv2.i, -1
  %cmp4.i = icmp ult i64 %level.018.i, %sub.i
  br i1 %cmp4.i, label %while.body.i, label %jrsl_random_level.exit

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add nuw i64 %level.018.i, 1
  %call6.i = tail call i32 @rand() #14
  %rnd.0.in.i = sitofp i32 %call6.i to float
  %rnd.0.i = fmul float %rnd.0.in.i, 0x3E00000000000000
  %25 = load float, float* %p.i, align 4, !tbaa !13
  %cmp.i = fcmp olt float %rnd.0.i, %25
  br i1 %cmp.i, label %land.rhs.i, label %jrsl_random_level.exit, !llvm.loop !34

jrsl_random_level.exit:                           ; preds = %land.rhs.i, %while.body.i, %if.end55
  %level.0.lcssa.i = phi i64 [ 1, %if.end55 ], [ %level.018.i, %land.rhs.i ], [ %inc.i, %while.body.i ]
  %conv9.i = trunc i64 %level.0.lcssa.i to i16
  %26 = load i16, i16* %max_level, align 8, !tbaa !12
  %cmp60 = icmp ugt i16 %26, %conv9.i
  br i1 %cmp60, label %if.end63, label %if.else

if.else:                                          ; preds = %jrsl_random_level.exit
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.jrsl_insert, i64 0, i64 0)) #15
  unreachable

if.end63:                                         ; preds = %jrsl_random_level.exit
  %27 = load i16, i16* %level6, align 8, !tbaa !3
  %cmp67 = icmp ult i16 %27, %conv9.i
  br i1 %cmp67, label %if.then69, label %if.end92

if.then69:                                        ; preds = %if.end63
  %conv72 = zext i16 %27 to i64
  %conv74 = and i64 %level.0.lcssa.i, 65535
  %cmp75340 = icmp ugt i64 %conv74, %conv72
  br i1 %cmp75340, label %for.body77.lr.ph, label %for.end90

for.body77.lr.ph:                                 ; preds = %if.then69
  %28 = load %struct.skip_node_t*, %struct.skip_node_t** %head, align 8, !tbaa !18
  %forward82 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %28, i64 0, i32 0
  %29 = load %struct.link*, %struct.link** %forward82, align 8, !tbaa !16
  %30 = shl nuw nsw i64 %conv72, 3
  %scevgep = getelementptr i8, i8* %call4, i64 %30
  %31 = sub nsw i64 %conv74, %conv72
  %32 = shl nsw i64 %31, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep, i8 0, i64 %32, i1 false), !tbaa !32
  %scevgep348 = getelementptr %struct.link, %struct.link* %29, i64 %conv72
  %scevgep348349 = bitcast %struct.link* %scevgep348 to i8*
  %33 = sub nsw i64 %conv74, %conv72
  %34 = shl nsw i64 %33, 4
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep348349, i8 0, i64 %34, i1 false), !tbaa !26
  %35 = sub nsw i64 %conv74, %conv72
  %min.iters.check = icmp ult i64 %35, 4
  br i1 %min.iters.check, label %for.body77.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body77.lr.ph
  %n.vec = and i64 %35, -4
  %ind.end = add nsw i64 %n.vec, %conv72
  %broadcast.splatinsert = insertelement <2 x %struct.skip_node_t*> poison, %struct.skip_node_t* %28, i64 0
  %broadcast.splat = shufflevector <2 x %struct.skip_node_t*> %broadcast.splatinsert, <2 x %struct.skip_node_t*> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert361 = insertelement <2 x %struct.skip_node_t*> poison, %struct.skip_node_t* %28, i64 0
  %broadcast.splat362 = shufflevector <2 x %struct.skip_node_t*> %broadcast.splatinsert361, <2 x %struct.skip_node_t*> poison, <2 x i32> zeroinitializer
  %36 = add nsw i64 %n.vec, -4
  %37 = lshr exact i64 %36, 2
  %38 = add nuw nsw i64 %37, 1
  %xtraiter = and i64 %38, 3
  %39 = icmp ult i64 %36, 12
  br i1 %39, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %38, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %index, %conv72
  %40 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %offset.idx
  %41 = bitcast %struct.skip_node_t** %40 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat, <2 x %struct.skip_node_t*>* %41, align 8, !tbaa !31
  %42 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %40, i64 2
  %43 = bitcast %struct.skip_node_t** %42 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat362, <2 x %struct.skip_node_t*>* %43, align 8, !tbaa !31
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %index.next, %conv72
  %44 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %offset.idx.1
  %45 = bitcast %struct.skip_node_t** %44 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat, <2 x %struct.skip_node_t*>* %45, align 8, !tbaa !31
  %46 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %44, i64 2
  %47 = bitcast %struct.skip_node_t** %46 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat362, <2 x %struct.skip_node_t*>* %47, align 8, !tbaa !31
  %index.next.1 = or i64 %index, 8
  %offset.idx.2 = add i64 %index.next.1, %conv72
  %48 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %offset.idx.2
  %49 = bitcast %struct.skip_node_t** %48 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat, <2 x %struct.skip_node_t*>* %49, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %48, i64 2
  %51 = bitcast %struct.skip_node_t** %50 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat362, <2 x %struct.skip_node_t*>* %51, align 8, !tbaa !31
  %index.next.2 = or i64 %index, 12
  %offset.idx.3 = add i64 %index.next.2, %conv72
  %52 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %offset.idx.3
  %53 = bitcast %struct.skip_node_t** %52 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat, <2 x %struct.skip_node_t*>* %53, align 8, !tbaa !31
  %54 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %52, i64 2
  %55 = bitcast %struct.skip_node_t** %54 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat362, <2 x %struct.skip_node_t*>* %55, align 8, !tbaa !31
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !35

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %index.epil, %conv72
  %56 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %offset.idx.epil
  %57 = bitcast %struct.skip_node_t** %56 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat, <2 x %struct.skip_node_t*>* %57, align 8, !tbaa !31
  %58 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %56, i64 2
  %59 = bitcast %struct.skip_node_t** %58 to <2 x %struct.skip_node_t*>*
  store <2 x %struct.skip_node_t*> %broadcast.splat362, <2 x %struct.skip_node_t*>* %59, align 8, !tbaa !31
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !37

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %35, %n.vec
  br i1 %cmp.n, label %for.end90, label %for.body77.preheader

for.body77.preheader:                             ; preds = %for.body77.lr.ph, %middle.block
  %i70.0341.ph = phi i64 [ %conv72, %for.body77.lr.ph ], [ %ind.end, %middle.block ]
  br label %for.body77

for.body77:                                       ; preds = %for.body77.preheader, %for.body77
  %i70.0341 = phi i64 [ %inc, %for.body77 ], [ %i70.0341.ph, %for.body77.preheader ]
  %arrayidx79 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %i70.0341
  store %struct.skip_node_t* %28, %struct.skip_node_t** %arrayidx79, align 8, !tbaa !31
  %inc = add nuw nsw i64 %i70.0341, 1
  %exitcond.not = icmp eq i64 %inc, %conv74
  br i1 %exitcond.not, label %for.end90, label %for.body77, !llvm.loop !39

for.end90:                                        ; preds = %for.body77, %middle.block, %if.then69
  store i16 %conv9.i, i16* %level6, align 8, !tbaa !3
  br label %if.end92

if.end92:                                         ; preds = %for.end90, %if.end63
  %60 = phi i16 [ %conv9.i, %for.end90 ], [ %27, %if.end63 ]
  %call93 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #14
  %61 = bitcast i8* %call93 to %struct.skip_node_t*
  %tobool94.not = icmp eq i8* %call93, null
  br i1 %tobool94.not, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end96:                                         ; preds = %if.end92
  %data97 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %61, i64 0, i32 2
  store i8* %data, i8** %data97, align 8, !tbaa !22
  %key98 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %61, i64 0, i32 1
  store i8* %key, i8** %key98, align 8, !tbaa !21
  %conv99 = and i64 %level.0.lcssa.i, 65535
  %mul100 = shl nuw nsw i64 %conv99, 4
  %call101 = tail call noalias i8* @malloc(i64 noundef %mul100) #14
  %62 = bitcast i8* %call93 to i8**
  store i8* %call101, i8** %62, align 8, !tbaa !16
  %tobool104.not = icmp eq i8* %call101, null
  %63 = bitcast i8* %call101 to %struct.link*
  br i1 %tobool104.not, label %if.then105, label %for.cond107.preheader

for.cond107.preheader:                            ; preds = %if.end96
  %cmp109342.not = icmp eq i64 %conv99, 0
  br i1 %cmp109342.not, label %for.cond177.preheader, label %for.inc173.peel

for.inc173.peel:                                  ; preds = %for.cond107.preheader
  %64 = load %struct.skip_node_t*, %struct.skip_node_t** %1, align 8, !tbaa !31
  %forward113.peel = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %64, i64 0, i32 0
  %65 = load %struct.link*, %struct.link** %forward113.peel, align 8, !tbaa !16
  %node115.peel = getelementptr inbounds %struct.link, %struct.link* %65, i64 0, i32 1
  %66 = load %struct.skip_node_t*, %struct.skip_node_t** %node115.peel, align 8, !tbaa !19
  %node118.peel = getelementptr inbounds %struct.link, %struct.link* %63, i64 0, i32 1
  store %struct.skip_node_t* %66, %struct.skip_node_t** %node118.peel, align 8, !tbaa !19
  %67 = bitcast %struct.skip_node_t** %node115.peel to i8**
  store i8* %call93, i8** %67, align 8, !tbaa !19
  %width167 = getelementptr inbounds %struct.link, %struct.link* %63, i64 0, i32 0
  %width164.peel = getelementptr inbounds %struct.link, %struct.link* %65, i64 0, i32 0
  %68 = load i64, i64* %width164.peel, align 8, !tbaa !26
  store i64 %68, i64* %width167, align 8, !tbaa !26
  store i64 1, i64* %width164.peel, align 8, !tbaa !26
  %exitcond350.peel.not = icmp eq i64 %conv99, 1
  br i1 %exitcond350.peel.not, label %for.cond177.preheader, label %if.then125

if.then105:                                       ; preds = %if.end96
  tail call void @exit(i32 noundef 1) #15
  unreachable

for.cond177.preheader:                            ; preds = %if.then125, %for.inc173.peel, %for.cond107.preheader
  %conv179 = zext i16 %60 to i64
  %cmp180346 = icmp ult i64 %conv99, %conv179
  br i1 %cmp180346, label %for.body182, label %for.end198

if.then125:                                       ; preds = %for.inc173.peel, %if.then125
  %i.1343 = phi i64 [ %inc174, %if.then125 ], [ 1, %for.inc173.peel ]
  %arrayidx112 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %i.1343
  %69 = load %struct.skip_node_t*, %struct.skip_node_t** %arrayidx112, align 8, !tbaa !31
  %forward113 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %69, i64 0, i32 0
  %70 = load %struct.link*, %struct.link** %forward113, align 8, !tbaa !16
  %node115 = getelementptr inbounds %struct.link, %struct.link* %70, i64 %i.1343, i32 1
  %71 = load %struct.skip_node_t*, %struct.skip_node_t** %node115, align 8, !tbaa !19
  %node118 = getelementptr inbounds %struct.link, %struct.link* %63, i64 %i.1343, i32 1
  store %struct.skip_node_t* %71, %struct.skip_node_t** %node118, align 8, !tbaa !19
  %72 = bitcast %struct.skip_node_t** %node115 to i8**
  store i8* %call93, i8** %72, align 8, !tbaa !19
  %sub126 = add nsw i64 %i.1343, -1
  %arrayidx127 = getelementptr inbounds i64, i64* %2, i64 %sub126
  %73 = load i64, i64* %arrayidx127, align 8, !tbaa !32
  %arrayidx129 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %sub126
  %74 = load %struct.skip_node_t*, %struct.skip_node_t** %arrayidx129, align 8, !tbaa !31
  %forward130 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %74, i64 0, i32 0
  %75 = load %struct.link*, %struct.link** %forward130, align 8, !tbaa !16
  %width133 = getelementptr inbounds %struct.link, %struct.link* %75, i64 %sub126, i32 0
  %76 = load i64, i64* %width133, align 8, !tbaa !26
  %add134 = add i64 %76, %73
  %width138 = getelementptr inbounds %struct.link, %struct.link* %70, i64 %i.1343, i32 0
  %77 = load i64, i64* %width138, align 8, !tbaa !26
  %cmp139.not = icmp eq i64 %77, 0
  %add146 = add i64 %77, 1
  %sub147 = sub i64 %add146, %add134
  %sub147.sink = select i1 %cmp139.not, i64 0, i64 %sub147
  %78 = getelementptr inbounds %struct.link, %struct.link* %63, i64 %i.1343, i32 0
  store i64 %sub147.sink, i64* %78, align 8
  store i64 %add134, i64* %width138, align 8, !tbaa !26
  %inc174 = add nuw nsw i64 %i.1343, 1
  %exitcond350.not = icmp eq i64 %inc174, %conv99
  br i1 %exitcond350.not, label %for.cond177.preheader, label %if.then125, !llvm.loop !41

for.body182:                                      ; preds = %for.cond177.preheader, %if.then188
  %i.2347 = phi i64 [ %inc197, %if.then188 ], [ %conv99, %for.cond177.preheader ]
  %arrayidx183 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %i.2347
  %79 = load %struct.skip_node_t*, %struct.skip_node_t** %arrayidx183, align 8, !tbaa !31
  %forward184 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %79, i64 0, i32 0
  %80 = load %struct.link*, %struct.link** %forward184, align 8, !tbaa !16
  %node186 = getelementptr inbounds %struct.link, %struct.link* %80, i64 %i.2347, i32 1
  %81 = load %struct.skip_node_t*, %struct.skip_node_t** %node186, align 8, !tbaa !19
  %tobool187.not = icmp eq %struct.skip_node_t* %81, null
  br i1 %tobool187.not, label %for.end198, label %if.then188

if.then188:                                       ; preds = %for.body182
  %width192 = getelementptr inbounds %struct.link, %struct.link* %80, i64 %i.2347, i32 0
  %82 = load i64, i64* %width192, align 8, !tbaa !26
  %inc193 = add i64 %82, 1
  store i64 %inc193, i64* %width192, align 8, !tbaa !26
  %inc197 = add nuw nsw i64 %i.2347, 1
  %exitcond352.not = icmp eq i64 %inc197, %conv179
  br i1 %exitcond352.not, label %for.end198, label %for.body182, !llvm.loop !43

for.end198:                                       ; preds = %if.then188, %for.body182, %for.cond177.preheader
  %width199 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 3
  %83 = load i64, i64* %width199, align 8, !tbaa !11
  %inc200 = add i64 %83, 1
  store i64 %inc200, i64* %width199, align 8, !tbaa !11
  tail call void @free(i8* noundef %call) #14
  tail call void @free(i8* noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end198, %if.then45
  %retval.0 = phi i8* [ %22, %if.then45 ], [ null, %for.end198 ]
  ret i8* %retval.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @jrsl_remove(%struct.skip_list_t* nocapture noundef %skip_list, i8* noundef %key) local_unnamed_addr #3 {
entry:
  %level = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 2
  %0 = load i16, i16* %level, align 8, !tbaa !3
  %conv = zext i16 %0 to i64
  %mul = shl nuw nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 noundef %mul) #14
  %1 = bitcast i8* %call to %struct.skip_node_t**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %2 = load %struct.skip_node_t*, %struct.skip_node_t** %head, align 8, !tbaa !18
  %cmp.not189 = icmp eq i16 %0, 0
  br i1 %cmp.not189, label %for.end, label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %comparator = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %i.0191 = phi i64 [ %conv, %while.cond.preheader.lr.ph ], [ %sub, %while.end ]
  %x.0190 = phi %struct.skip_node_t* [ %2, %while.cond.preheader.lr.ph ], [ %x.1.lcssa, %while.end ]
  %sub = add nsw i64 %i.0191, -1
  %forward181 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %x.0190, i64 0, i32 0
  %3 = load %struct.link*, %struct.link** %forward181, align 8, !tbaa !16
  %node182 = getelementptr inbounds %struct.link, %struct.link* %3, i64 %sub, i32 1
  %4 = load %struct.skip_node_t*, %struct.skip_node_t** %node182, align 8, !tbaa !19
  %cmp4.not183 = icmp eq %struct.skip_node_t* %4, null
  br i1 %cmp4.not183, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %5 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator, align 8, !tbaa !14
  %key10198 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %4, i64 0, i32 1
  %6 = load i8*, i8** %key10198, align 8, !tbaa !21
  %call11199 = tail call signext i8 %5(i8* noundef %6, i8* noundef %key) #14
  %cmp13200 = icmp slt i8 %call11199, 0
  br i1 %cmp13200, label %while.body, label %while.end

land.rhs:                                         ; preds = %while.body
  %7 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator, align 8, !tbaa !14
  %key10 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %12, i64 0, i32 1
  %8 = load i8*, i8** %key10, align 8, !tbaa !21
  %call11 = tail call signext i8 %7(i8* noundef %8, i8* noundef %key) #14
  %cmp13 = icmp slt i8 %call11, 0
  br i1 %cmp13, label %while.body, label %while.end, !llvm.loop !44

while.body:                                       ; preds = %land.rhs.preheader, %land.rhs
  %forward185201 = phi %struct.link** [ %forward, %land.rhs ], [ %forward181, %land.rhs.preheader ]
  %9 = load %struct.link*, %struct.link** %forward185201, align 8, !tbaa !16
  %node18 = getelementptr inbounds %struct.link, %struct.link* %9, i64 %sub, i32 1
  %10 = load %struct.skip_node_t*, %struct.skip_node_t** %node18, align 8, !tbaa !19
  %forward = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %10, i64 0, i32 0
  %11 = load %struct.link*, %struct.link** %forward, align 8, !tbaa !16
  %node = getelementptr inbounds %struct.link, %struct.link* %11, i64 %sub, i32 1
  %12 = load %struct.skip_node_t*, %struct.skip_node_t** %node, align 8, !tbaa !19
  %cmp4.not = icmp eq %struct.skip_node_t* %12, null
  br i1 %cmp4.not, label %while.end, label %land.rhs, !llvm.loop !44

while.end:                                        ; preds = %while.body, %land.rhs, %land.rhs.preheader, %while.cond.preheader
  %x.1.lcssa = phi %struct.skip_node_t* [ %x.0190, %while.cond.preheader ], [ %x.0190, %land.rhs.preheader ], [ %10, %land.rhs ], [ %10, %while.body ]
  %arrayidx20 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %sub
  store %struct.skip_node_t* %x.1.lcssa, %struct.skip_node_t** %arrayidx20, align 8, !tbaa !31
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %for.end, label %while.cond.preheader, !llvm.loop !45

for.end:                                          ; preds = %while.end, %if.end
  %x.0.lcssa = phi %struct.skip_node_t* [ %2, %if.end ], [ %x.1.lcssa, %while.end ]
  %forward21 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %x.0.lcssa, i64 0, i32 0
  %13 = load %struct.link*, %struct.link** %forward21, align 8, !tbaa !16
  %node23 = getelementptr inbounds %struct.link, %struct.link* %13, i64 0, i32 1
  %14 = load %struct.skip_node_t*, %struct.skip_node_t** %node23, align 8, !tbaa !19
  %cmp24 = icmp eq %struct.skip_node_t* %14, null
  br i1 %cmp24, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %comparator26 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 5
  %15 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator26, align 8, !tbaa !14
  %key27 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %14, i64 0, i32 1
  %16 = load i8*, i8** %key27, align 8, !tbaa !21
  %call28 = tail call signext i8 %15(i8* noundef %16, i8* noundef %key) #14
  %cmp30.not = icmp eq i8 %call28, 0
  br i1 %cmp30.not, label %for.cond34.preheader, label %if.then32

for.cond34.preheader:                             ; preds = %lor.lhs.false
  %17 = load i16, i16* %level, align 8, !tbaa !3
  %cmp37194.not = icmp eq i16 %17, 0
  br i1 %cmp37194.not, label %for.end91, label %for.body39.lr.ph

for.body39.lr.ph:                                 ; preds = %for.cond34.preheader
  %forward57 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %14, i64 0, i32 0
  br label %for.body39

if.then32:                                        ; preds = %lor.lhs.false, %for.end
  tail call void @free(i8* noundef nonnull %call) #14
  br label %cleanup

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc90
  %i.1195 = phi i64 [ 0, %for.body39.lr.ph ], [ %inc, %for.inc90 ]
  %arrayidx40 = getelementptr inbounds %struct.skip_node_t*, %struct.skip_node_t** %1, i64 %i.1195
  %18 = load %struct.skip_node_t*, %struct.skip_node_t** %arrayidx40, align 8, !tbaa !31
  %forward41 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %18, i64 0, i32 0
  %19 = load %struct.link*, %struct.link** %forward41, align 8, !tbaa !16
  %node43 = getelementptr inbounds %struct.link, %struct.link* %19, i64 %i.1195, i32 1
  %20 = load %struct.skip_node_t*, %struct.skip_node_t** %node43, align 8, !tbaa !19
  %tobool44.not = icmp eq %struct.skip_node_t* %20, null
  br i1 %tobool44.not, label %for.inc90, label %if.then45

if.then45:                                        ; preds = %for.body39
  %21 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator26, align 8, !tbaa !14
  %key51 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %20, i64 0, i32 1
  %22 = load i8*, i8** %key51, align 8, !tbaa !21
  %call52 = tail call signext i8 %21(i8* noundef %22, i8* noundef %key) #14
  %cmp54 = icmp eq i8 %call52, 0
  br i1 %cmp54, label %if.then56, label %if.else82

if.then56:                                        ; preds = %if.then45
  %23 = load %struct.link*, %struct.link** %forward57, align 8, !tbaa !16
  %node59 = getelementptr inbounds %struct.link, %struct.link* %23, i64 %i.1195, i32 1
  %24 = load %struct.skip_node_t*, %struct.skip_node_t** %node59, align 8, !tbaa !19
  %25 = load %struct.link*, %struct.link** %forward41, align 8, !tbaa !16
  %node63 = getelementptr inbounds %struct.link, %struct.link* %25, i64 %i.1195, i32 1
  store %struct.skip_node_t* %24, %struct.skip_node_t** %node63, align 8, !tbaa !19
  %width = getelementptr inbounds %struct.link, %struct.link* %23, i64 %i.1195, i32 0
  %26 = load i64, i64* %width, align 8, !tbaa !26
  %cmp66.not = icmp eq i64 %26, 0
  br i1 %cmp66.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.then56
  %sub72 = add i64 %26, -1
  %width76 = getelementptr inbounds %struct.link, %struct.link* %25, i64 %i.1195, i32 0
  %27 = load i64, i64* %width76, align 8, !tbaa !26
  %add = add i64 %sub72, %27
  store i64 %add, i64* %width76, align 8, !tbaa !26
  br label %for.inc90

if.else:                                          ; preds = %if.then56
  %width80 = getelementptr inbounds %struct.link, %struct.link* %25, i64 %i.1195, i32 0
  store i64 0, i64* %width80, align 8, !tbaa !26
  br label %for.inc90

if.else82:                                        ; preds = %if.then45
  %28 = load %struct.link*, %struct.link** %forward41, align 8, !tbaa !16
  %width86 = getelementptr inbounds %struct.link, %struct.link* %28, i64 %i.1195, i32 0
  %29 = load i64, i64* %width86, align 8, !tbaa !26
  %dec87 = add i64 %29, -1
  store i64 %dec87, i64* %width86, align 8, !tbaa !26
  br label %for.inc90

for.inc90:                                        ; preds = %for.body39, %if.else82, %if.then68, %if.else
  %inc = add nuw nsw i64 %i.1195, 1
  %30 = load i16, i16* %level, align 8, !tbaa !3
  %conv36 = zext i16 %30 to i64
  %cmp37 = icmp ult i64 %inc, %conv36
  br i1 %cmp37, label %for.body39, label %for.end91, !llvm.loop !46

for.end91:                                        ; preds = %for.inc90, %for.cond34.preheader
  tail call void @free(i8* noundef nonnull %call) #14
  %data = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %14, i64 0, i32 2
  %31 = load i8*, i8** %data, align 8, !tbaa !22
  %32 = bitcast %struct.skip_node_t* %14 to i8**
  %33 = load i8*, i8** %32, align 8, !tbaa !16
  tail call void @free(i8* noundef %33) #14
  %34 = bitcast %struct.skip_node_t* %14 to i8*
  tail call void @free(i8* noundef %34) #14
  %.pr = load i16, i16* %level, align 8, !tbaa !3
  %cmp96197 = icmp ugt i16 %.pr, 1
  br i1 %cmp96197, label %land.rhs98.lr.ph, label %while.end111

land.rhs98.lr.ph:                                 ; preds = %for.end91
  %35 = load %struct.skip_node_t*, %struct.skip_node_t** %head, align 8, !tbaa !18
  %forward100 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %35, i64 0, i32 0
  %36 = load %struct.link*, %struct.link** %forward100, align 8, !tbaa !16
  br label %land.rhs98

land.rhs98:                                       ; preds = %land.rhs98.lr.ph, %while.body108
  %37 = phi i16 [ %.pr, %land.rhs98.lr.ph ], [ %dec110, %while.body108 ]
  %conv95 = zext i16 %37 to i64
  %sub103 = add nuw nsw i64 %conv95, 4294967295
  %38 = and i64 %sub103, 4294967295
  %node105 = getelementptr inbounds %struct.link, %struct.link* %36, i64 %38, i32 1
  %39 = load %struct.skip_node_t*, %struct.skip_node_t** %node105, align 8, !tbaa !19
  %tobool106.not = icmp eq %struct.skip_node_t* %39, null
  br i1 %tobool106.not, label %while.body108, label %while.end111

while.body108:                                    ; preds = %land.rhs98
  %dec110 = add i16 %37, -1
  store i16 %dec110, i16* %level, align 8, !tbaa !3
  %cmp96 = icmp ugt i16 %dec110, 1
  br i1 %cmp96, label %land.rhs98, label %while.end111, !llvm.loop !47

while.end111:                                     ; preds = %land.rhs98, %while.body108, %for.end91
  %width112 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 3
  %40 = load i64, i64* %width112, align 8, !tbaa !11
  %dec113 = add i64 %40, -1
  store i64 %dec113, i64* %width112, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %while.end111, %if.then32
  %retval.0 = phi i8* [ null, %if.then32 ], [ %31, %while.end111 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local zeroext i16 @jrsl_max_level(i64 noundef %max_n, float noundef %p) local_unnamed_addr #7 {
entry:
  %cmp = fcmp oge float %p, 0.000000e+00
  %cmp1 = fcmp ole float %p, 1.000000e+00
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %conv = uitofp i64 %max_n to double
  %call = tail call double @log(double noundef %conv) #14
  %div = fdiv float 1.000000e+00, %p
  %conv2 = fpext float %div to double
  %call3 = tail call double @log(double noundef %conv2) #14
  %div4 = fdiv double %call, %call3
  %conv5 = fptoui double %div4 to i64
  %conv6 = trunc i64 %conv5 to i16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i16 [ %conv6, %if.end ], [ 0, %entry ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @log(double noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @jrsl_display_list(%struct.skip_list_t* nocapture noundef readonly %skip_list, void (i8*, i8*)* noundef readonly %label_printer) local_unnamed_addr #3 {
entry:
  %str = alloca [10 x i8], align 1
  %level = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 2
  %0 = load i16, i16* %level, align 8, !tbaa !3
  %cmp.not95 = icmp eq i16 %0, 0
  br i1 %cmp.not95, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %0 to i64
  %head = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %while.end43
  %i.096 = phi i64 [ %conv, %for.body.lr.ph ], [ %.pre101, %while.end43 ]
  %node.089 = load %struct.skip_node_t*, %struct.skip_node_t** %head, align 8, !tbaa !31
  %tobool.not90 = icmp eq %struct.skip_node_t* %node.089, null
  br i1 %tobool.not90, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %for.body
  %sub = add nsw i64 %i.096, -1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %node.091 = phi %struct.skip_node_t* [ %node.089, %while.body.lr.ph ], [ %node.0, %if.end ]
  %forward = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %node.091, i64 0, i32 0
  %2 = load %struct.link*, %struct.link** %forward, align 8, !tbaa !16
  %width = getelementptr inbounds %struct.link, %struct.link* %2, i64 %sub, i32 0
  %3 = load i64, i64* %width, align 8, !tbaa !26
  %cmp2.not = icmp eq i64 %3, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %1) #14
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 noundef %3) #14
  %4 = load %struct.link*, %struct.link** %forward, align 8, !tbaa !16
  %width12 = getelementptr inbounds %struct.link, %struct.link* %4, i64 %sub, i32 0
  %5 = load i64, i64* %width12, align 8, !tbaa !26
  %mul = mul i64 %5, 6
  %sub13 = add i64 %mul, -1
  %call.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #16
  %sub.i = sub i64 %sub13, %call.i
  %div.i = lshr i64 %sub.i, 1
  %sub1.i = sub i64 %sub13, %div.i
  %call2.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 noundef %div.i, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %sub1.i, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #14
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %1) #14
  %.pre = load %struct.link*, %struct.link** %forward, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = phi %struct.link* [ %.pre, %if.then ], [ %2, %while.body ]
  %node17 = getelementptr inbounds %struct.link, %struct.link* %6, i64 %sub, i32 1
  %node.0 = load %struct.skip_node_t*, %struct.skip_node_t** %node17, align 8, !tbaa !31
  %tobool.not = icmp eq %struct.skip_node_t* %node.0, null
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !48

while.end:                                        ; preds = %if.end, %for.body
  %putchar = call i32 @putchar(i32 10)
  %node.192 = load %struct.skip_node_t*, %struct.skip_node_t** %head, align 8, !tbaa !31
  %tobool21.not93 = icmp eq %struct.skip_node_t* %node.192, null
  %.pre101 = add nsw i64 %i.096, -1
  br i1 %tobool21.not93, label %while.end43, label %while.body22

while.body22:                                     ; preds = %while.end, %if.end38
  %node.194 = phi %struct.skip_node_t* [ %node.1, %if.end38 ], [ %node.192, %while.end ]
  %forward23 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %node.194, i64 0, i32 0
  %7 = load %struct.link*, %struct.link** %forward23, align 8, !tbaa !16
  %width26 = getelementptr inbounds %struct.link, %struct.link* %7, i64 %.pre101, i32 0
  %8 = load i64, i64* %width26, align 8, !tbaa !26
  %cmp27.not = icmp eq i64 %8, 0
  br i1 %cmp27.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %while.body22
  %mul34 = mul i64 %8, 6
  %sub35 = add i64 %mul34, -3
  %call36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 noundef %sub35, i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end38

if.else:                                          ; preds = %while.body22
  %call37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then29
  %9 = load %struct.link*, %struct.link** %forward23, align 8, !tbaa !16
  %node42 = getelementptr inbounds %struct.link, %struct.link* %9, i64 %.pre101, i32 1
  %node.1 = load %struct.skip_node_t*, %struct.skip_node_t** %node42, align 8, !tbaa !31
  %tobool21.not = icmp eq %struct.skip_node_t* %node.1, null
  br i1 %tobool21.not, label %while.end43, label %while.body22, !llvm.loop !49

while.end43:                                      ; preds = %if.end38, %while.end
  %call45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 noundef %.pre101)
  %cmp.not = icmp eq i64 %.pre101, 0
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !50

for.end:                                          ; preds = %while.end43, %entry
  %tobool46.not = icmp eq void (i8*, i8*)* %label_printer, null
  br i1 %tobool46.not, label %if.end61, label %if.then47

if.then47:                                        ; preds = %for.end
  %head49 = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %skip_list, i64 0, i32 4
  %10 = load %struct.skip_node_t*, %struct.skip_node_t** %head49, align 8, !tbaa !18
  %forward50 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %10, i64 0, i32 0
  %11 = load %struct.link*, %struct.link** %forward50, align 8, !tbaa !16
  %node52 = getelementptr inbounds %struct.link, %struct.link* %11, i64 0, i32 1
  %12 = load %struct.skip_node_t*, %struct.skip_node_t** %node52, align 8, !tbaa !19
  %call53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %tobool55.not99 = icmp eq %struct.skip_node_t* %12, null
  br i1 %tobool55.not99, label %if.end61, label %while.body56

while.body56:                                     ; preds = %if.then47, %while.body56
  %node48.0100 = phi %struct.skip_node_t* [ %16, %while.body56 ], [ %12, %if.then47 ]
  %key = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %node48.0100, i64 0, i32 1
  %13 = load i8*, i8** %key, align 8, !tbaa !21
  %data = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %node48.0100, i64 0, i32 2
  %14 = load i8*, i8** %data, align 8, !tbaa !22
  call void %label_printer(i8* noundef %13, i8* noundef %14) #14
  %forward57 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %node48.0100, i64 0, i32 0
  %15 = load %struct.link*, %struct.link** %forward57, align 8, !tbaa !16
  %node59 = getelementptr inbounds %struct.link, %struct.link* %15, i64 0, i32 1
  %16 = load %struct.skip_node_t*, %struct.skip_node_t** %node59, align 8, !tbaa !19
  %tobool55.not = icmp eq %struct.skip_node_t* %16, null
  br i1 %tobool55.not, label %if.end61, label %while.body56, !llvm.loop !51

if.end61:                                         ; preds = %while.body56, %if.then47, %for.end
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @intcmp(i8* nocapture noundef readonly %a, i8* nocapture noundef readonly %b) #11 {
entry:
  %0 = bitcast i8* %a to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !52
  %2 = bitcast i8* %b to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !52
  %cmp = icmp sgt i32 %1, %3
  %conv = zext i1 %cmp to i32
  %cmp1 = icmp slt i32 %1, %3
  %conv2.neg = sext i1 %cmp1 to i32
  %sub = add nsw i32 %conv2.neg, %conv
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #3 {
entry:
  %header = alloca [4 x i64], align 16
  %sl = alloca %struct.skip_list_t, align 8
  %t0 = alloca %struct.timespec, align 8
  %t1 = alloca %struct.timespec, align 8
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !31
  %1 = load i8*, i8** %argv, align 8, !tbaa !31
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* noundef %1) #17
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1
  %2 = load i8*, i8** %arrayidx1, align 8, !tbaa !31
  %call2 = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %tobool.not = icmp eq %struct._IO_FILE* %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !31
  %4 = load i8*, i8** %arrayidx1, align 8, !tbaa !31
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* noundef %4) #17
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = bitcast [4 x i64]* %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #14
  %call7 = call i64 @fread(i8* noundef nonnull %5, i64 noundef 8, i64 noundef 4, %struct._IO_FILE* noundef nonnull %call2)
  %cmp8.not = icmp eq i64 %call7, 4
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !31
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %6) #17
  %call11 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call2)
  br label %cleanup139

if.end12:                                         ; preds = %if.end6
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %header, i64 0, i64 0
  %8 = load i64, i64* %arraydecay, align 16, !tbaa !32
  %arrayidx14 = getelementptr inbounds [4 x i64], [4 x i64]* %header, i64 0, i64 1
  %9 = load i64, i64* %arrayidx14, align 8, !tbaa !32
  %arrayidx15 = getelementptr inbounds [4 x i64], [4 x i64]* %header, i64 0, i64 2
  %10 = load i64, i64* %arrayidx15, align 16, !tbaa !32
  %arrayidx16 = getelementptr inbounds [4 x i64], [4 x i64]* %header, i64 0, i64 3
  %11 = load i64, i64* %arrayidx16, align 8, !tbaa !32
  %mul = shl i64 %8, 2
  %call17 = tail call noalias i8* @malloc(i64 noundef %mul) #14
  %12 = bitcast i8* %call17 to i32*
  %call19 = tail call noalias i8* @malloc(i64 noundef %8) #14
  %mul20 = shl i64 %9, 2
  %call21 = tail call noalias i8* @malloc(i64 noundef %mul20) #14
  %13 = bitcast i8* %call21 to i32*
  %call23 = tail call noalias i8* @malloc(i64 noundef %9) #14
  %mul24 = shl i64 %10, 2
  %call25 = tail call noalias i8* @malloc(i64 noundef %mul24) #14
  %14 = bitcast i8* %call25 to i32*
  %mul26 = shl i64 %11, 2
  %call27 = tail call noalias i8* @malloc(i64 noundef %mul26) #14
  %15 = bitcast i8* %call27 to i32*
  %tobool28 = icmp ne i8* %call17, null
  %tobool29 = icmp ne i8* %call19, null
  %or.cond = and i1 %tobool28, %tobool29
  %tobool31 = icmp ne i8* %call21, null
  %or.cond141 = and i1 %or.cond, %tobool31
  %tobool33 = icmp ne i8* %call23, null
  %or.cond142 = and i1 %or.cond141, %tobool33
  %tobool35 = icmp ne i8* %call25, null
  %or.cond143 = and i1 %or.cond142, %tobool35
  %tobool37 = icmp ne i8* %call27, null
  %or.cond144 = and i1 %or.cond143, %tobool37
  br i1 %or.cond144, label %if.end41, label %if.then38

if.then38:                                        ; preds = %if.end12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !31
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %16) #17
  %call40 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call2)
  br label %cleanup139

if.end41:                                         ; preds = %if.end12
  %call42 = tail call i64 @fread(i8* noundef nonnull %call17, i64 noundef 4, i64 noundef %8, %struct._IO_FILE* noundef nonnull %call2)
  %cmp43.not = icmp eq i64 %call42, %8
  br i1 %cmp43.not, label %lor.lhs.false44, label %if.then59

lor.lhs.false44:                                  ; preds = %if.end41
  %call45 = tail call i64 @fread(i8* noundef nonnull %call19, i64 noundef 1, i64 noundef %8, %struct._IO_FILE* noundef nonnull %call2)
  %cmp46.not = icmp eq i64 %call45, %8
  br i1 %cmp46.not, label %lor.lhs.false47, label %if.then59

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %call48 = tail call i64 @fread(i8* noundef nonnull %call21, i64 noundef 4, i64 noundef %9, %struct._IO_FILE* noundef nonnull %call2)
  %cmp49.not = icmp eq i64 %call48, %9
  br i1 %cmp49.not, label %lor.lhs.false50, label %if.then59

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %call51 = tail call i64 @fread(i8* noundef nonnull %call23, i64 noundef 1, i64 noundef %9, %struct._IO_FILE* noundef nonnull %call2)
  %cmp52.not = icmp eq i64 %call51, %9
  br i1 %cmp52.not, label %lor.lhs.false53, label %if.then59

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %call54 = tail call i64 @fread(i8* noundef nonnull %call25, i64 noundef 4, i64 noundef %10, %struct._IO_FILE* noundef nonnull %call2)
  %cmp55.not = icmp eq i64 %call54, %10
  br i1 %cmp55.not, label %lor.lhs.false56, label %if.then59

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %call57 = tail call i64 @fread(i8* noundef nonnull %call27, i64 noundef 4, i64 noundef %11, %struct._IO_FILE* noundef nonnull %call2)
  %cmp58.not = icmp eq i64 %call57, %11
  br i1 %cmp58.not, label %if.end62, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false56, %lor.lhs.false53, %lor.lhs.false50, %lor.lhs.false47, %lor.lhs.false44, %if.end41
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !31
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %18) #17
  %call61 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call2)
  br label %cleanup139

if.end62:                                         ; preds = %lor.lhs.false56
  %call63 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call2)
  %20 = bitcast %struct.skip_list_t* %sl to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %20) #14
  %conv.i = uitofp i64 %8 to double
  %call.i = tail call double @log(double noundef %conv.i) #14
  %div4.i = fdiv double %call.i, 0x3FE62E42FEFA39EF
  %conv5.i = fptoui double %div4.i to i64
  %conv6.i = trunc i64 %conv5.i to i16
  %level.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %sl, i64 0, i32 2
  store i16 1, i16* %level.i, align 8, !tbaa !3
  %width.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %sl, i64 0, i32 3
  store i64 0, i64* %width.i, align 8, !tbaa !11
  %max_level1.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %sl, i64 0, i32 0
  store i16 %conv6.i, i16* %max_level1.i, align 8, !tbaa !12
  %p2.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %sl, i64 0, i32 1
  store float 5.000000e-01, float* %p2.i, align 4, !tbaa !13
  %comparator3.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %sl, i64 0, i32 5
  store i8 (i8*, i8*)* bitcast (i32 (i8*, i8*)* @intcmp to i8 (i8*, i8*)*), i8 (i8*, i8*)** %comparator3.i, align 8, !tbaa !14
  %key_destructor4.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %sl, i64 0, i32 6
  store void (i8*)* null, void (i8*)** %key_destructor4.i, align 8, !tbaa !15
  tail call void @srand(i32 noundef 42) #14
  %call.i.i = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #14
  %tobool.not.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end62
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end.i.i:                                       ; preds = %if.end62
  %21 = bitcast i8* %call.i.i to %struct.skip_node_t*
  %key.i.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %21, i64 0, i32 1
  %22 = bitcast i8** %key.i.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false) #14
  %conv.i.i = shl i64 %conv5.i, 4
  %mul.i.i = and i64 %conv.i.i, 1048560
  %call1.i.i = tail call noalias i8* @malloc(i64 noundef %mul.i.i) #14
  %23 = bitcast i8* %call.i.i to i8**
  store i8* %call1.i.i, i8** %23, align 8, !tbaa !16
  %tobool3.not.i.i = icmp eq i8* %call1.i.i, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %jrsl_initialize.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  tail call void @exit(i32 noundef 1) #15
  unreachable

jrsl_initialize.exit:                             ; preds = %if.end.i.i
  %head9.i.i = getelementptr inbounds %struct.skip_list_t, %struct.skip_list_t* %sl, i64 0, i32 4
  %24 = bitcast %struct.skip_node_t** %head9.i.i to i8**
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %call1.i.i, i8 0, i64 16, i1 false) #14
  store i8* %call.i.i, i8** %24, align 8, !tbaa !18
  %25 = bitcast %struct.timespec* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #14
  %26 = bitcast %struct.timespec* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #14
  %call66 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %t0) #14
  %cmp67254.not = icmp eq i64 %8, 0
  br i1 %cmp67254.not, label %for.cond73.preheader, label %for.body

for.cond73.preheader:                             ; preds = %for.body, %jrsl_initialize.exit
  %cmp74256.not = icmp eq i64 %9, 0
  br i1 %cmp74256.not, label %for.cond85.preheader, label %for.body77

for.body:                                         ; preds = %jrsl_initialize.exit, %for.body
  %i.0255 = phi i64 [ %inc, %for.body ], [ 0, %jrsl_initialize.exit ]
  %arrayidx69 = getelementptr inbounds i32, i32* %12, i64 %i.0255
  %27 = bitcast i32* %arrayidx69 to i8*
  %arrayidx70 = getelementptr inbounds i8, i8* %call19, i64 %i.0255
  %call71 = call i8* @jrsl_insert(%struct.skip_list_t* noundef nonnull %sl, i8* noundef nonnull %27, i8* noundef nonnull %arrayidx70)
  %inc = add nuw i64 %i.0255, 1
  %exitcond.not = icmp eq i64 %inc, %8
  br i1 %exitcond.not, label %for.cond73.preheader, label %for.body, !llvm.loop !54

for.cond85.preheader:                             ; preds = %for.body77, %for.cond73.preheader
  %cmp86258.not = icmp eq i64 %10, 0
  br i1 %cmp86258.not, label %for.cond101.preheader, label %for.body89

for.body77:                                       ; preds = %for.cond73.preheader, %for.body77
  %i72.0257 = phi i64 [ %inc82, %for.body77 ], [ 0, %for.cond73.preheader ]
  %arrayidx78 = getelementptr inbounds i32, i32* %13, i64 %i72.0257
  %28 = bitcast i32* %arrayidx78 to i8*
  %arrayidx79 = getelementptr inbounds i8, i8* %call23, i64 %i72.0257
  %call80 = call i8* @jrsl_insert(%struct.skip_list_t* noundef nonnull %sl, i8* noundef nonnull %28, i8* noundef nonnull %arrayidx79)
  %inc82 = add nuw i64 %i72.0257, 1
  %exitcond281.not = icmp eq i64 %inc82, %9
  br i1 %exitcond281.not, label %for.cond85.preheader, label %for.body77, !llvm.loop !55

for.cond101.preheader:                            ; preds = %for.body89, %for.cond85.preheader
  %remove_hits.0.lcssa = phi i64 [ 0, %for.cond85.preheader ], [ %remove_hits.1, %for.body89 ]
  %remove_misses.0.lcssa = phi i64 [ 0, %for.cond85.preheader ], [ %remove_misses.1, %for.body89 ]
  %cmp102270.not = icmp eq i64 %11, 0
  br i1 %cmp102270.not, label %for.cond.cleanup104, label %for.body105.lr.ph

for.body105.lr.ph:                                ; preds = %for.cond101.preheader
  %29 = load i16, i16* %level.i, align 8, !tbaa !3
  %cmp.not66.i = icmp eq i16 %29, 0
  %conv.i246 = zext i16 %29 to i64
  %30 = load %struct.skip_node_t*, %struct.skip_node_t** %head9.i.i, align 8
  %31 = load i8 (i8*, i8*)*, i8 (i8*, i8*)** %comparator3.i, align 8
  br i1 %cmp.not66.i, label %for.cond.cleanup104, label %for.body105

for.body89:                                       ; preds = %for.cond85.preheader, %for.body89
  %i84.0261 = phi i64 [ %inc98, %for.body89 ], [ 0, %for.cond85.preheader ]
  %remove_misses.0260 = phi i64 [ %remove_misses.1, %for.body89 ], [ 0, %for.cond85.preheader ]
  %remove_hits.0259 = phi i64 [ %remove_hits.1, %for.body89 ], [ 0, %for.cond85.preheader ]
  %arrayidx90 = getelementptr inbounds i32, i32* %14, i64 %i84.0261
  %32 = bitcast i32* %arrayidx90 to i8*
  %call91 = call i8* @jrsl_remove(%struct.skip_list_t* noundef nonnull %sl, i8* noundef nonnull %32)
  %tobool92.not = icmp eq i8* %call91, null
  %not.tobool92.not = xor i1 %tobool92.not, true
  %inc94 = zext i1 %not.tobool92.not to i64
  %remove_hits.1 = add i64 %remove_hits.0259, %inc94
  %inc95 = zext i1 %tobool92.not to i64
  %remove_misses.1 = add i64 %remove_misses.0260, %inc95
  %inc98 = add nuw i64 %i84.0261, 1
  %exitcond282.not = icmp eq i64 %inc98, %10
  br i1 %exitcond282.not, label %for.cond101.preheader, label %for.body89, !llvm.loop !56

for.cond.cleanup104:                              ; preds = %jrsl_search.exit, %for.body105.lr.ph, %for.cond101.preheader
  %search_hits.0.lcssa = phi i64 [ 0, %for.cond101.preheader ], [ 0, %for.body105.lr.ph ], [ %search_hits.1, %jrsl_search.exit ]
  %search_misses.0.lcssa = phi i64 [ 0, %for.cond101.preheader ], [ %11, %for.body105.lr.ph ], [ %search_misses.1, %jrsl_search.exit ]
  %call117 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %t1) #14
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @str, i64 0, i64 0))
  %puts242 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.26, i64 0, i64 0))
  %call120 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i64 noundef %8)
  %call121 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i64 noundef %9)
  %call122 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i64 noundef %10, i64 noundef %remove_hits.0.lcssa, i64 noundef %remove_misses.0.lcssa)
  %call123 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i64 noundef %11, i64 noundef %search_hits.0.lcssa, i64 noundef %search_misses.0.lcssa)
  %33 = load i64, i64* %width.i, align 8, !tbaa !11
  %call124 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i64 noundef %33)
  %add = add i64 %search_hits.0.lcssa, %remove_hits.0.lcssa
  %add126 = add i64 %add, %33
  %call127 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i64 noundef %add126)
  %t0.idx = getelementptr inbounds %struct.timespec, %struct.timespec* %t0, i64 0, i32 0
  %t0.idx.val = load i64, i64* %t0.idx, align 8, !tbaa !57
  %t0.idx243 = getelementptr inbounds %struct.timespec, %struct.timespec* %t0, i64 0, i32 1
  %t0.idx243.val = load i64, i64* %t0.idx243, align 8, !tbaa !59
  %t1.idx = getelementptr inbounds %struct.timespec, %struct.timespec* %t1, i64 0, i32 0
  %t1.idx.val = load i64, i64* %t1.idx, align 8, !tbaa !57
  %t1.idx244 = getelementptr inbounds %struct.timespec, %struct.timespec* %t1, i64 0, i32 1
  %t1.idx244.val = load i64, i64* %t1.idx244, align 8, !tbaa !59
  %sub.i = sub nsw i64 %t1.idx.val, %t0.idx.val
  %sub3.i = sub nsw i64 %t1.idx244.val, %t0.idx243.val
  %mul.i = mul nsw i64 %sub.i, 1000
  %div.i = sdiv i64 %sub3.i, 1000000
  %add.i = add nsw i64 %div.i, %mul.i
  %call129 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i64 noundef %add.i)
  call void @free(i8* noundef %call17) #14
  call void @free(i8* noundef %call19) #14
  call void @free(i8* noundef %call21) #14
  call void @free(i8* noundef %call23) #14
  call void @free(i8* noundef %call25) #14
  call void @free(i8* noundef %call27) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %20) #14
  br label %cleanup139

for.body105:                                      ; preds = %for.body105.lr.ph, %jrsl_search.exit
  %i100.0273 = phi i64 [ %inc115, %jrsl_search.exit ], [ 0, %for.body105.lr.ph ]
  %search_misses.0272 = phi i64 [ %search_misses.1, %jrsl_search.exit ], [ 0, %for.body105.lr.ph ]
  %search_hits.0271 = phi i64 [ %search_hits.1, %jrsl_search.exit ], [ 0, %for.body105.lr.ph ]
  %arrayidx106 = getelementptr inbounds i32, i32* %15, i64 %i100.0273
  %34 = bitcast i32* %arrayidx106 to i8*
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i, %for.body105
  %x.068.i = phi %struct.skip_node_t* [ %30, %for.body105 ], [ %x.1.lcssa77.i, %for.inc.i ]
  %i.067.i = phi i64 [ %conv.i246, %for.body105 ], [ %sub.i247, %for.inc.i ]
  %sub.i247 = add nsw i64 %i.067.i, -1
  %forward56.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %x.068.i, i64 0, i32 0
  %35 = load %struct.link*, %struct.link** %forward56.i, align 8, !tbaa !16
  %node57.i = getelementptr inbounds %struct.link, %struct.link* %35, i64 %sub.i247, i32 1
  %36 = load %struct.skip_node_t*, %struct.skip_node_t** %node57.i, align 8, !tbaa !19
  %cmp2.not58.i = icmp eq %struct.skip_node_t* %36, null
  br i1 %cmp2.not58.i, label %for.inc.i, label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %while.cond.preheader.i
  %key8.i263 = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %36, i64 0, i32 1
  %37 = load i8*, i8** %key8.i263, align 8, !tbaa !21
  %call.i248264 = call signext i8 %31(i8* noundef %37, i8* noundef nonnull %34) #14
  %cmp10.i265 = icmp slt i8 %call.i248264, 0
  br i1 %cmp10.i265, label %while.body.i, label %while.end.i

land.rhs.i:                                       ; preds = %while.body.i
  %key8.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %42, i64 0, i32 1
  %38 = load i8*, i8** %key8.i, align 8, !tbaa !21
  %call.i248 = call signext i8 %31(i8* noundef %38, i8* noundef nonnull %34) #14
  %cmp10.i = icmp slt i8 %call.i248, 0
  br i1 %cmp10.i, label %while.body.i, label %while.end.i, !llvm.loop !28

while.body.i:                                     ; preds = %land.rhs.i.preheader, %land.rhs.i
  %forward60.i266 = phi %struct.link** [ %forward.i, %land.rhs.i ], [ %forward56.i, %land.rhs.i.preheader ]
  %39 = load %struct.link*, %struct.link** %forward60.i266, align 8, !tbaa !16
  %node15.i = getelementptr inbounds %struct.link, %struct.link* %39, i64 %sub.i247, i32 1
  %40 = load %struct.skip_node_t*, %struct.skip_node_t** %node15.i, align 8, !tbaa !19
  %forward.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %40, i64 0, i32 0
  %41 = load %struct.link*, %struct.link** %forward.i, align 8, !tbaa !16
  %node.i = getelementptr inbounds %struct.link, %struct.link* %41, i64 %sub.i247, i32 1
  %42 = load %struct.skip_node_t*, %struct.skip_node_t** %node.i, align 8, !tbaa !19
  %cmp2.not.i = icmp eq %struct.skip_node_t* %42, null
  br i1 %cmp2.not.i, label %for.inc.i, label %land.rhs.i, !llvm.loop !28

while.end.i:                                      ; preds = %land.rhs.i, %land.rhs.i.preheader
  %forward60.i.lcssa = phi %struct.link** [ %forward56.i, %land.rhs.i.preheader ], [ %forward.i, %land.rhs.i ]
  %x.159.i.lcssa = phi %struct.skip_node_t* [ %x.068.i, %land.rhs.i.preheader ], [ %40, %land.rhs.i ]
  %.pre.pre.i = load %struct.link*, %struct.link** %forward60.i.lcssa, align 8, !tbaa !16
  %node19.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds %struct.link, %struct.link* %.pre.pre.i, i64 %sub.i247, i32 1
  %.pre71.pre.i = load %struct.skip_node_t*, %struct.skip_node_t** %node19.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !19
  %cmp20.not.i = icmp eq %struct.skip_node_t* %.pre71.pre.i, null
  br i1 %cmp20.not.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %key27.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %.pre71.pre.i, i64 0, i32 1
  %43 = load i8*, i8** %key27.i, align 8, !tbaa !21
  %call28.i = call signext i8 %31(i8* noundef %43, i8* noundef nonnull %34) #14
  %cmp30.i = icmp eq i8 %call28.i, 0
  br i1 %cmp30.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %44 = load %struct.link*, %struct.link** %forward60.i.lcssa, align 8, !tbaa !16
  %node35.i = getelementptr inbounds %struct.link, %struct.link* %44, i64 %sub.i247, i32 1
  %45 = load %struct.skip_node_t*, %struct.skip_node_t** %node35.i, align 8, !tbaa !19
  %data.i = getelementptr inbounds %struct.skip_node_t, %struct.skip_node_t* %45, i64 0, i32 2
  %46 = load i8*, i8** %data.i, align 8, !tbaa !22
  br label %jrsl_search.exit

for.inc.i:                                        ; preds = %while.body.i, %land.lhs.true.i, %while.end.i, %while.cond.preheader.i
  %x.1.lcssa77.i = phi %struct.skip_node_t* [ %x.159.i.lcssa, %while.end.i ], [ %x.159.i.lcssa, %land.lhs.true.i ], [ %x.068.i, %while.cond.preheader.i ], [ %40, %while.body.i ]
  %cmp.not.i = icmp eq i64 %sub.i247, 0
  br i1 %cmp.not.i, label %jrsl_search.exit, label %while.cond.preheader.i, !llvm.loop !29

jrsl_search.exit:                                 ; preds = %for.inc.i, %if.then.i
  %retval.0.i = phi i8* [ %46, %if.then.i ], [ null, %for.inc.i ]
  %tobool108.not = icmp eq i8* %retval.0.i, null
  %not.tobool108.not = xor i1 %tobool108.not, true
  %inc110 = zext i1 %not.tobool108.not to i64
  %search_hits.1 = add i64 %search_hits.0271, %inc110
  %inc112 = zext i1 %tobool108.not to i64
  %search_misses.1 = add i64 %search_misses.0272, %inc112
  %inc115 = add nuw i64 %i100.0273, 1
  %exitcond283.not = icmp eq i64 %inc115, %11
  br i1 %exitcond283.not, label %for.cond.cleanup104, label %for.body105, !llvm.loop !60

cleanup139:                                       ; preds = %if.then38, %if.then59, %for.cond.cleanup104, %if.then9
  %retval.1 = phi i32 [ 1, %if.then9 ], [ 1, %if.then59 ], [ 0, %for.cond.cleanup104 ], [ 1, %if.then38 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #14
  br label %return

return:                                           ; preds = %if.then3, %cleanup139, %if.then
  %retval.3 = phi i32 [ 1, %if.then ], [ %retval.1, %cleanup139 ], [ 1, %if.then3 ]
  ret i32 %retval.3
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!3 = !{!4, !5, i64 8}
!4 = !{!"skip_list_t", !5, i64 0, !8, i64 4, !5, i64 8, !9, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!5 = !{!"short", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"float", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!4, !9, i64 16}
!12 = !{!4, !5, i64 0}
!13 = !{!4, !8, i64 4}
!14 = !{!4, !10, i64 32}
!15 = !{!4, !10, i64 40}
!16 = !{!17, !10, i64 0}
!17 = !{!"skip_node_t", !10, i64 0, !10, i64 8, !10, i64 16}
!18 = !{!4, !10, i64 24}
!19 = !{!20, !10, i64 8}
!20 = !{!"link", !9, i64 0, !10, i64 8}
!21 = !{!17, !10, i64 8}
!22 = !{!17, !10, i64 16}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!20, !9, i64 0}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = !{!10, !10, i64 0}
!32 = !{!9, !9, i64 0}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24, !36}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !24, !40, !36}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !24, !42}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !6, i64 0}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = !{!58, !9, i64 0}
!58 = !{!"timespec", !9, i64 0, !9, i64 8}
!59 = !{!58, !9, i64 8}
!60 = distinct !{!60, !24}
