; ModuleID = 'pagerank.c'
source_filename = "pagerank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Detected indexing: %s (min node ID: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"1-indexed\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0-indexed\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Checksum: %llu\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Usage: %s <graph_file>\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"  graph_file: Path to the graph edge list file\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"[Error] Cannot open the file: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%*s %d %*s %d\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\0AGraph data:\0A\0A  Nodes: %d, Edges: %d \0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Allocation failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Valid edges processed: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"\0ANumber of iteration to converge: %d \0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"elapsed_ms: %lld\0A\00", align 1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @getc(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @detect_indexing(i8* nocapture noundef readonly %filename) local_unnamed_addr #2 {
entry:
  %line = alloca [256 x i8], align 16
  %fromnode = alloca i32, align 4
  %tonode = alloca i32, align 4
  %call = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %filename, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %tobool.not = icmp eq %struct._IO_FILE* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #14
  %1 = bitcast i32* %fromnode to i8*
  %2 = bitcast i32* %tonode to i8*
  br label %while.cond.outer.split

while.cond.us:                                    ; preds = %if.end20
  %call1.us = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 256, %struct._IO_FILE* noundef nonnull %call)
  br label %while.end

while.cond.outer.split:                           ; preds = %if.end, %if.end20
  %samples.0.ph41 = phi i32 [ 0, %if.end ], [ %samples.1, %if.end20 ]
  %min_node.0.ph40 = phi i32 [ 2147483647, %if.end ], [ %min_node.3, %if.end20 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer.split, %while.body
  %call1 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 256, %struct._IO_FILE* noundef nonnull %call)
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i8, i8* %0, align 16, !tbaa !3
  %cmp3 = icmp eq i8 %3, 35
  br i1 %cmp3, label %while.cond, label %if.end6, !llvm.loop !6

if.end6:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %fromnode, i32* noundef nonnull %tonode) #14
  %cmp9 = icmp eq i32 %call8, 2
  br i1 %cmp9, label %if.then11, label %if.end20

if.then11:                                        ; preds = %if.end6
  %4 = load i32, i32* %fromnode, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %4, %min_node.0.ph40
  %spec.select = select i1 %cmp12, i32 %4, i32 %min_node.0.ph40
  %5 = load i32, i32* %tonode, align 4, !tbaa !8
  %cmp16 = icmp slt i32 %5, %spec.select
  %min_node.2 = select i1 %cmp16, i32 %5, i32 %spec.select
  %inc = add nsw i32 %samples.0.ph41, 1
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end6
  %min_node.3 = phi i32 [ %min_node.2, %if.then11 ], [ %min_node.0.ph40, %if.end6 ]
  %samples.1 = phi i32 [ %inc, %if.then11 ], [ %samples.0.ph41, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  %cmp = icmp slt i32 %samples.1, 100
  br i1 %cmp, label %while.cond.outer.split, label %while.cond.us, !llvm.loop !6

while.end:                                        ; preds = %while.cond, %while.cond.us
  %.us-phi = phi i32 [ %min_node.3, %while.cond.us ], [ %min_node.0.ph40, %while.cond ]
  %call21 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call)
  %cmp22 = icmp ne i32 %.us-phi, 0
  %conv23 = zext i1 %cmp22 to i32
  %cond = select i1 %cmp22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %call25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* noundef %cond, i32 noundef %.us-phi)
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %conv23, %while.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @pagerank_roi(i32 noundef %n, i32 noundef %valid_edges, float* nocapture noundef %val, i32* nocapture noundef readonly %col_ind, i32* nocapture noundef readonly %row_ptr, i32* nocapture noundef %out_link, float* nocapture noundef %p, float* nocapture noundef %p_new) local_unnamed_addr #4 {
entry:
  %p_new254 = bitcast float* %p_new to i8*
  %cmp214 = icmp sgt i32 %n, 0
  br i1 %cmp214, label %for.body.preheader, label %while.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  %0 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %for.cond9.preheader.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %for.body

for.cond9.preheader.unr-lcssa:                    ; preds = %for.inc.1, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.inc.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond9.preheader, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond9.preheader.unr-lcssa
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.unr, 1
  %arrayidx.epil = getelementptr inbounds i32, i32* %row_ptr, i64 %indvars.iv.next.epil
  %2 = load i32, i32* %arrayidx.epil, align 4, !tbaa !8
  %cmp1.not.epil = icmp eq i32 %2, 0
  br i1 %cmp1.not.epil, label %for.cond9.preheader, label %if.then.epil

if.then.epil:                                     ; preds = %for.body.epil
  %arrayidx6.epil = getelementptr inbounds i32, i32* %row_ptr, i64 %indvars.iv.unr
  %3 = load i32, i32* %arrayidx6.epil, align 4, !tbaa !8
  %sub.epil = sub nsw i32 %2, %3
  %arrayidx8.epil = getelementptr inbounds i32, i32* %out_link, i64 %indvars.iv.unr
  store i32 %sub.epil, i32* %arrayidx8.epil, align 4, !tbaa !8
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.body.epil, %if.then.epil, %for.cond9.preheader.unr-lcssa
  br i1 %cmp214, label %for.body11.preheader, label %while.end

for.body11.preheader:                             ; preds = %for.cond9.preheader
  %wide.trip.count252 = zext i32 %n to i64
  %.pre = load i32, i32* %row_ptr, align 4, !tbaa !8
  br label %for.body11

for.body:                                         ; preds = %for.inc.1, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.inc.1 ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.inc.1 ]
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32, i32* %row_ptr, i64 %indvars.iv.next
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, i32* %row_ptr, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx6, align 4, !tbaa !8
  %sub = sub nsw i32 %4, %5
  %arrayidx8 = getelementptr inbounds i32, i32* %out_link, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx8, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.1 = getelementptr inbounds i32, i32* %row_ptr, i64 %indvars.iv.next.1
  %6 = load i32, i32* %arrayidx.1, align 4, !tbaa !8
  %cmp1.not.1 = icmp eq i32 %6, 0
  br i1 %cmp1.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %arrayidx6.1 = getelementptr inbounds i32, i32* %row_ptr, i64 %indvars.iv.next
  %7 = load i32, i32* %arrayidx6.1, align 4, !tbaa !8
  %sub.1 = sub nsw i32 %6, %7
  %arrayidx8.1 = getelementptr inbounds i32, i32* %out_link, i64 %indvars.iv.next
  store i32 %sub.1, i32* %arrayidx8.1, align 4, !tbaa !8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond9.preheader.unr-lcssa, label %for.body, !llvm.loop !10

for.cond9.loopexit.loopexit:                      ; preds = %for.body20.us, %middle.block
  %indvars.iv.next246.lcssa = phi i64 [ %ind.end, %middle.block ], [ %indvars.iv.next246, %for.body20.us ]
  %8 = trunc i64 %indvars.iv.next246.lcssa to i32
  br label %for.cond9.loopexit

for.cond9.loopexit:                               ; preds = %for.body20.preheader, %for.cond9.loopexit.loopexit, %for.body11
  %curcol.1.lcssa = phi i32 [ %curcol.0220, %for.body11 ], [ %8, %for.cond9.loopexit.loopexit ], [ %115, %for.body20.preheader ]
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %while.cond.preheader, label %for.body11, !llvm.loop !11

while.cond.preheader:                             ; preds = %for.cond9.loopexit
  %conv94 = sitofp i32 %n to float
  %div95 = fdiv float 0x3FC3333300000000, %conv94
  br i1 %cmp214, label %for.cond39.preheader.us.preheader, label %while.end

for.cond39.preheader.us.preheader:                ; preds = %while.cond.preheader
  %9 = zext i32 %n to i64
  %10 = shl nuw nsw i64 %9, 2
  %11 = sext i32 %valid_edges to i64
  %.pre302 = load i32, i32* %row_ptr, align 4, !tbaa !8
  %scevgep = getelementptr float, float* %p, i64 %wide.trip.count
  %scevgep310 = getelementptr float, float* %p_new, i64 %wide.trip.count
  %12 = and i64 %wide.trip.count, 4294967288
  %13 = add nsw i64 %12, -8
  %14 = lshr exact i64 %13, 3
  %15 = add nuw nsw i64 %14, 1
  %min.iters.check328 = icmp ult i32 %n, 8
  %n.vec331 = and i64 %wide.trip.count, 4294967288
  %broadcast.splatinsert337 = insertelement <4 x float> poison, float %div95, i64 0
  %broadcast.splat338 = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert339 = insertelement <4 x float> poison, float %div95, i64 0
  %broadcast.splat340 = shufflevector <4 x float> %broadcast.splatinsert339, <4 x float> poison, <4 x i32> zeroinitializer
  %xtraiter350 = and i64 %15, 1
  %16 = icmp eq i64 %13, 0
  %unroll_iter352 = and i64 %15, 4611686018427387902
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  %cmp.n333 = icmp eq i64 %n.vec331, %wide.trip.count
  %xtraiter354 = and i64 %wide.trip.count, 1
  %17 = icmp eq i64 %0, 0
  %unroll_iter357 = and i64 %wide.trip.count, 4294967294
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  %min.iters.check315 = icmp ult i32 %n, 8
  %bound0 = icmp ugt float* %scevgep310, %p
  %bound1 = icmp ugt float* %scevgep, %p_new
  %found.conflict = and i1 %bound0, %bound1
  %n.vec318 = and i64 %wide.trip.count, 4294967288
  %xtraiter359 = and i64 %15, 3
  %18 = icmp ult i64 %13, 24
  %unroll_iter361 = and i64 %15, 4611686018427387900
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  %cmp.n320 = icmp eq i64 %n.vec318, %wide.trip.count
  %xtraiter363 = and i64 %wide.trip.count, 3
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br label %for.cond48.preheader.us

for.body121.us.preheader.unr-lcssa:               ; preds = %for.body104.us, %for.body104.us.preheader
  %add110.us.lcssa.ph = phi float [ undef, %for.body104.us.preheader ], [ %add110.us.1, %for.body104.us ]
  %indvars.iv291.unr = phi i64 [ 0, %for.body104.us.preheader ], [ %indvars.iv.next292.1, %for.body104.us ]
  %error.0236.us.unr = phi float [ 0.000000e+00, %for.body104.us.preheader ], [ %add110.us.1, %for.body104.us ]
  br i1 %lcmp.mod355.not, label %for.body121.us.preheader, label %for.body104.us.epil

for.body104.us.epil:                              ; preds = %for.body121.us.preheader.unr-lcssa
  %arrayidx106.us.epil = getelementptr inbounds float, float* %p_new, i64 %indvars.iv291.unr
  %19 = load float, float* %arrayidx106.us.epil, align 4, !tbaa !12
  %arrayidx108.us.epil = getelementptr inbounds float, float* %p, i64 %indvars.iv291.unr
  %20 = load float, float* %arrayidx108.us.epil, align 4, !tbaa !12
  %sub109.us.epil = fsub float %19, %20
  %21 = tail call float @llvm.fabs.f32(float %sub109.us.epil)
  %add110.us.epil = fadd float %error.0236.us.unr, %21
  br label %for.body121.us.preheader

for.body121.us.preheader:                         ; preds = %for.body121.us.preheader.unr-lcssa, %for.body104.us.epil
  %add110.us.lcssa = phi float [ %add110.us.lcssa.ph, %for.body121.us.preheader.unr-lcssa ], [ %add110.us.epil, %for.body104.us.epil ]
  %cmp114.us = fcmp olt float %add110.us.lcssa, 0x3EB0C6F7A0000000
  %brmerge = or i1 %min.iters.check315, %found.conflict
  br i1 %brmerge, label %for.body121.us.preheader342, label %vector.ph316

vector.ph316:                                     ; preds = %for.body121.us.preheader
  br i1 %18, label %middle.block312.unr-lcssa, label %vector.body314

vector.body314:                                   ; preds = %vector.ph316, %vector.body314
  %index321 = phi i64 [ %index.next324.3, %vector.body314 ], [ 0, %vector.ph316 ]
  %niter362 = phi i64 [ %niter362.next.3, %vector.body314 ], [ 0, %vector.ph316 ]
  %22 = getelementptr inbounds float, float* %p_new, i64 %index321
  %23 = bitcast float* %22 to <4 x float>*
  %wide.load322 = load <4 x float>, <4 x float>* %23, align 4, !tbaa !12, !alias.scope !14
  %24 = getelementptr inbounds float, float* %22, i64 4
  %25 = bitcast float* %24 to <4 x float>*
  %wide.load323 = load <4 x float>, <4 x float>* %25, align 4, !tbaa !12, !alias.scope !14
  %26 = getelementptr inbounds float, float* %p, i64 %index321
  %27 = bitcast float* %26 to <4 x float>*
  store <4 x float> %wide.load322, <4 x float>* %27, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %28 = getelementptr inbounds float, float* %26, i64 4
  %29 = bitcast float* %28 to <4 x float>*
  store <4 x float> %wide.load323, <4 x float>* %29, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next324 = or i64 %index321, 8
  %30 = getelementptr inbounds float, float* %p_new, i64 %index.next324
  %31 = bitcast float* %30 to <4 x float>*
  %wide.load322.1 = load <4 x float>, <4 x float>* %31, align 4, !tbaa !12, !alias.scope !14
  %32 = getelementptr inbounds float, float* %30, i64 4
  %33 = bitcast float* %32 to <4 x float>*
  %wide.load323.1 = load <4 x float>, <4 x float>* %33, align 4, !tbaa !12, !alias.scope !14
  %34 = getelementptr inbounds float, float* %p, i64 %index.next324
  %35 = bitcast float* %34 to <4 x float>*
  store <4 x float> %wide.load322.1, <4 x float>* %35, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %36 = getelementptr inbounds float, float* %34, i64 4
  %37 = bitcast float* %36 to <4 x float>*
  store <4 x float> %wide.load323.1, <4 x float>* %37, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next324.1 = or i64 %index321, 16
  %38 = getelementptr inbounds float, float* %p_new, i64 %index.next324.1
  %39 = bitcast float* %38 to <4 x float>*
  %wide.load322.2 = load <4 x float>, <4 x float>* %39, align 4, !tbaa !12, !alias.scope !14
  %40 = getelementptr inbounds float, float* %38, i64 4
  %41 = bitcast float* %40 to <4 x float>*
  %wide.load323.2 = load <4 x float>, <4 x float>* %41, align 4, !tbaa !12, !alias.scope !14
  %42 = getelementptr inbounds float, float* %p, i64 %index.next324.1
  %43 = bitcast float* %42 to <4 x float>*
  store <4 x float> %wide.load322.2, <4 x float>* %43, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %44 = getelementptr inbounds float, float* %42, i64 4
  %45 = bitcast float* %44 to <4 x float>*
  store <4 x float> %wide.load323.2, <4 x float>* %45, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next324.2 = or i64 %index321, 24
  %46 = getelementptr inbounds float, float* %p_new, i64 %index.next324.2
  %47 = bitcast float* %46 to <4 x float>*
  %wide.load322.3 = load <4 x float>, <4 x float>* %47, align 4, !tbaa !12, !alias.scope !14
  %48 = getelementptr inbounds float, float* %46, i64 4
  %49 = bitcast float* %48 to <4 x float>*
  %wide.load323.3 = load <4 x float>, <4 x float>* %49, align 4, !tbaa !12, !alias.scope !14
  %50 = getelementptr inbounds float, float* %p, i64 %index.next324.2
  %51 = bitcast float* %50 to <4 x float>*
  store <4 x float> %wide.load322.3, <4 x float>* %51, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %52 = getelementptr inbounds float, float* %50, i64 4
  %53 = bitcast float* %52 to <4 x float>*
  store <4 x float> %wide.load323.3, <4 x float>* %53, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next324.3 = add nuw i64 %index321, 32
  %niter362.next.3 = add i64 %niter362, 4
  %niter362.ncmp.3 = icmp eq i64 %niter362.next.3, %unroll_iter361
  br i1 %niter362.ncmp.3, label %middle.block312.unr-lcssa, label %vector.body314, !llvm.loop !19

middle.block312.unr-lcssa:                        ; preds = %vector.body314, %vector.ph316
  %index321.unr = phi i64 [ 0, %vector.ph316 ], [ %index.next324.3, %vector.body314 ]
  br i1 %lcmp.mod360.not, label %middle.block312, label %vector.body314.epil

vector.body314.epil:                              ; preds = %middle.block312.unr-lcssa, %vector.body314.epil
  %index321.epil = phi i64 [ %index.next324.epil, %vector.body314.epil ], [ %index321.unr, %middle.block312.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body314.epil ], [ 0, %middle.block312.unr-lcssa ]
  %54 = getelementptr inbounds float, float* %p_new, i64 %index321.epil
  %55 = bitcast float* %54 to <4 x float>*
  %wide.load322.epil = load <4 x float>, <4 x float>* %55, align 4, !tbaa !12, !alias.scope !14
  %56 = getelementptr inbounds float, float* %54, i64 4
  %57 = bitcast float* %56 to <4 x float>*
  %wide.load323.epil = load <4 x float>, <4 x float>* %57, align 4, !tbaa !12, !alias.scope !14
  %58 = getelementptr inbounds float, float* %p, i64 %index321.epil
  %59 = bitcast float* %58 to <4 x float>*
  store <4 x float> %wide.load322.epil, <4 x float>* %59, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %60 = getelementptr inbounds float, float* %58, i64 4
  %61 = bitcast float* %60 to <4 x float>*
  store <4 x float> %wide.load323.epil, <4 x float>* %61, align 4, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next324.epil = add nuw i64 %index321.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter359
  br i1 %epil.iter.cmp.not, label %middle.block312, label %vector.body314.epil, !llvm.loop !21

middle.block312:                                  ; preds = %vector.body314.epil, %middle.block312.unr-lcssa
  br i1 %cmp.n320, label %for.end128.us, label %for.body121.us.preheader342

for.body121.us.preheader342:                      ; preds = %for.body121.us.preheader, %middle.block312
  %indvars.iv297.ph = phi i64 [ 0, %for.body121.us.preheader ], [ %n.vec318, %middle.block312 ]
  %62 = xor i64 %indvars.iv297.ph, -1
  %63 = add nsw i64 %62, %wide.trip.count
  br i1 %lcmp.mod364.not, label %for.body121.us.prol.loopexit, label %for.body121.us.prol

for.body121.us.prol:                              ; preds = %for.body121.us.preheader342, %for.body121.us.prol
  %indvars.iv297.prol = phi i64 [ %indvars.iv.next298.prol, %for.body121.us.prol ], [ %indvars.iv297.ph, %for.body121.us.preheader342 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body121.us.prol ], [ 0, %for.body121.us.preheader342 ]
  %arrayidx123.us.prol = getelementptr inbounds float, float* %p_new, i64 %indvars.iv297.prol
  %64 = load float, float* %arrayidx123.us.prol, align 4, !tbaa !12
  %arrayidx125.us.prol = getelementptr inbounds float, float* %p, i64 %indvars.iv297.prol
  store float %64, float* %arrayidx125.us.prol, align 4, !tbaa !12
  %indvars.iv.next298.prol = add nuw nsw i64 %indvars.iv297.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter363
  br i1 %prol.iter.cmp.not, label %for.body121.us.prol.loopexit, label %for.body121.us.prol, !llvm.loop !23

for.body121.us.prol.loopexit:                     ; preds = %for.body121.us.prol, %for.body121.us.preheader342
  %indvars.iv297.unr = phi i64 [ %indvars.iv297.ph, %for.body121.us.preheader342 ], [ %indvars.iv.next298.prol, %for.body121.us.prol ]
  %65 = icmp ult i64 %63, 3
  br i1 %65, label %for.end128.us, label %for.body121.us

for.end128.us:                                    ; preds = %for.body121.us.prol.loopexit, %for.body121.us, %middle.block312
  %inc129.us = add nuw nsw i32 %k_iter.0240.us, 1
  br i1 %cmp114.us, label %while.end, label %for.cond48.preheader.us, !llvm.loop !24

for.body121.us:                                   ; preds = %for.body121.us.prol.loopexit, %for.body121.us
  %indvars.iv297 = phi i64 [ %indvars.iv.next298.3, %for.body121.us ], [ %indvars.iv297.unr, %for.body121.us.prol.loopexit ]
  %arrayidx123.us = getelementptr inbounds float, float* %p_new, i64 %indvars.iv297
  %66 = load float, float* %arrayidx123.us, align 4, !tbaa !12
  %arrayidx125.us = getelementptr inbounds float, float* %p, i64 %indvars.iv297
  store float %66, float* %arrayidx125.us, align 4, !tbaa !12
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1
  %arrayidx123.us.1 = getelementptr inbounds float, float* %p_new, i64 %indvars.iv.next298
  %67 = load float, float* %arrayidx123.us.1, align 4, !tbaa !12
  %arrayidx125.us.1 = getelementptr inbounds float, float* %p, i64 %indvars.iv.next298
  store float %67, float* %arrayidx125.us.1, align 4, !tbaa !12
  %indvars.iv.next298.1 = add nuw nsw i64 %indvars.iv297, 2
  %arrayidx123.us.2 = getelementptr inbounds float, float* %p_new, i64 %indvars.iv.next298.1
  %68 = load float, float* %arrayidx123.us.2, align 4, !tbaa !12
  %arrayidx125.us.2 = getelementptr inbounds float, float* %p, i64 %indvars.iv.next298.1
  store float %68, float* %arrayidx125.us.2, align 4, !tbaa !12
  %indvars.iv.next298.2 = add nuw nsw i64 %indvars.iv297, 3
  %arrayidx123.us.3 = getelementptr inbounds float, float* %p_new, i64 %indvars.iv.next298.2
  %69 = load float, float* %arrayidx123.us.3, align 4, !tbaa !12
  %arrayidx125.us.3 = getelementptr inbounds float, float* %p, i64 %indvars.iv.next298.2
  store float %69, float* %arrayidx125.us.3, align 4, !tbaa !12
  %indvars.iv.next298.3 = add nuw nsw i64 %indvars.iv297, 4
  %exitcond301.not.3 = icmp eq i64 %indvars.iv.next298.3, %9
  br i1 %exitcond301.not.3, label %for.end128.us, label %for.body121.us, !llvm.loop !25

for.body104.us:                                   ; preds = %for.body104.us.preheader, %for.body104.us
  %indvars.iv291 = phi i64 [ %indvars.iv.next292.1, %for.body104.us ], [ 0, %for.body104.us.preheader ]
  %error.0236.us = phi float [ %add110.us.1, %for.body104.us ], [ 0.000000e+00, %for.body104.us.preheader ]
  %niter358 = phi i64 [ %niter358.next.1, %for.body104.us ], [ 0, %for.body104.us.preheader ]
  %arrayidx106.us = getelementptr inbounds float, float* %p_new, i64 %indvars.iv291
  %70 = load float, float* %arrayidx106.us, align 4, !tbaa !12
  %arrayidx108.us = getelementptr inbounds float, float* %p, i64 %indvars.iv291
  %71 = load float, float* %arrayidx108.us, align 4, !tbaa !12
  %sub109.us = fsub float %70, %71
  %72 = tail call float @llvm.fabs.f32(float %sub109.us)
  %add110.us = fadd float %error.0236.us, %72
  %indvars.iv.next292 = or i64 %indvars.iv291, 1
  %arrayidx106.us.1 = getelementptr inbounds float, float* %p_new, i64 %indvars.iv.next292
  %73 = load float, float* %arrayidx106.us.1, align 4, !tbaa !12
  %arrayidx108.us.1 = getelementptr inbounds float, float* %p, i64 %indvars.iv.next292
  %74 = load float, float* %arrayidx108.us.1, align 4, !tbaa !12
  %sub109.us.1 = fsub float %73, %74
  %75 = tail call float @llvm.fabs.f32(float %sub109.us.1)
  %add110.us.1 = fadd float %add110.us, %75
  %indvars.iv.next292.1 = add nuw nsw i64 %indvars.iv291, 2
  %niter358.next.1 = add i64 %niter358, 2
  %niter358.ncmp.1 = icmp eq i64 %niter358.next.1, %unroll_iter357
  br i1 %niter358.ncmp.1, label %for.body121.us.preheader.unr-lcssa, label %for.body104.us, !llvm.loop !26

for.body90.us:                                    ; preds = %for.body90.us.preheader343, %for.body90.us
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %for.body90.us ], [ %indvars.iv286.ph, %for.body90.us.preheader343 ]
  %arrayidx92.us = getelementptr inbounds float, float* %p_new, i64 %indvars.iv286
  %76 = load float, float* %arrayidx92.us, align 4, !tbaa !12
  %77 = tail call float @llvm.fmuladd.f32(float %76, float 0x3FEB333340000000, float %div95)
  store float %77, float* %arrayidx92.us, align 4, !tbaa !12
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %9
  br i1 %exitcond290.not, label %for.body104.us.preheader, label %for.body90.us, !llvm.loop !27

for.body51.us:                                    ; preds = %for.cond48.preheader.us, %for.cond48.loopexit.us
  %78 = phi i32 [ %.pre302, %for.cond48.preheader.us ], [ %79, %for.cond48.loopexit.us ]
  %indvars.iv281 = phi i64 [ 0, %for.cond48.preheader.us ], [ %indvars.iv.next282, %for.cond48.loopexit.us ]
  %curcol2.0230.us = phi i32 [ 0, %for.cond48.preheader.us ], [ %curcol2.1.lcssa.us, %for.cond48.loopexit.us ]
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1
  %arrayidx56.us = getelementptr inbounds i32, i32* %row_ptr, i64 %indvars.iv.next282
  %79 = load i32, i32* %arrayidx56.us, align 4, !tbaa !8
  %sub57.us = sub i32 %79, %78
  %cmp60224.us = icmp sgt i32 %sub57.us, 0
  br i1 %cmp60224.us, label %for.body63.lr.ph.us, label %for.cond48.loopexit.us

for.body63.us:                                    ; preds = %for.body63.lr.ph.us, %if.end79.us
  %indvars.iv277 = phi i64 [ %110, %for.body63.lr.ph.us ], [ %indvars.iv.next278, %if.end79.us ]
  %j58.0227.us = phi i32 [ 0, %for.body63.lr.ph.us ], [ %inc82.us, %if.end79.us ]
  %cmp64.us = icmp slt i64 %indvars.iv277, %11
  br i1 %cmp64.us, label %land.lhs.true.us, label %if.end79.us

land.lhs.true.us:                                 ; preds = %for.body63.us
  %arrayidx67.us = getelementptr inbounds i32, i32* %col_ind, i64 %indvars.iv277
  %80 = load i32, i32* %arrayidx67.us, align 4, !tbaa !8
  %cmp68.us = icmp slt i32 %80, %n
  br i1 %cmp68.us, label %if.then70.us, label %if.end79.us

if.then70.us:                                     ; preds = %land.lhs.true.us
  %arrayidx72.us = getelementptr inbounds float, float* %val, i64 %indvars.iv277
  %81 = load float, float* %arrayidx72.us, align 4, !tbaa !12
  %82 = load float, float* %arrayidx74.us, align 4, !tbaa !12
  %idxprom77.us = sext i32 %80 to i64
  %arrayidx78.us = getelementptr inbounds float, float* %p_new, i64 %idxprom77.us
  %83 = load float, float* %arrayidx78.us, align 4, !tbaa !12
  %84 = tail call float @llvm.fmuladd.f32(float %81, float %82, float %83)
  store float %84, float* %arrayidx78.us, align 4, !tbaa !12
  br label %if.end79.us

if.end79.us:                                      ; preds = %if.then70.us, %land.lhs.true.us, %for.body63.us
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, 1
  %inc82.us = add nuw nsw i32 %j58.0227.us, 1
  %exitcond280.not = icmp eq i32 %inc82.us, %sub57.us
  br i1 %exitcond280.not, label %for.cond48.loopexit.us.loopexit, label %for.body63.us, !llvm.loop !29

for.cond48.loopexit.us.loopexit:                  ; preds = %if.end79.us
  %85 = trunc i64 %indvars.iv.next278 to i32
  br label %for.cond48.loopexit.us

for.cond48.loopexit.us:                           ; preds = %for.cond48.loopexit.us.loopexit, %for.body51.us
  %curcol2.1.lcssa.us = phi i32 [ %curcol2.0230.us, %for.body51.us ], [ %85, %for.cond48.loopexit.us.loopexit ]
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %9
  br i1 %exitcond285.not, label %for.body90.us.preheader, label %for.body51.us, !llvm.loop !30

for.body90.us.preheader:                          ; preds = %for.cond48.loopexit.us
  br i1 %min.iters.check328, label %for.body90.us.preheader343, label %vector.ph329

vector.ph329:                                     ; preds = %for.body90.us.preheader
  br i1 %16, label %middle.block325.unr-lcssa, label %vector.body327

vector.body327:                                   ; preds = %vector.ph329, %vector.body327
  %index334 = phi i64 [ %index.next341.1, %vector.body327 ], [ 0, %vector.ph329 ]
  %niter353 = phi i64 [ %niter353.next.1, %vector.body327 ], [ 0, %vector.ph329 ]
  %86 = getelementptr inbounds float, float* %p_new, i64 %index334
  %87 = bitcast float* %86 to <4 x float>*
  %wide.load335 = load <4 x float>, <4 x float>* %87, align 4, !tbaa !12
  %88 = getelementptr inbounds float, float* %86, i64 4
  %89 = bitcast float* %88 to <4 x float>*
  %wide.load336 = load <4 x float>, <4 x float>* %89, align 4, !tbaa !12
  %90 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load335, <4 x float> <float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000>, <4 x float> %broadcast.splat338)
  %91 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load336, <4 x float> <float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000>, <4 x float> %broadcast.splat340)
  %92 = bitcast float* %86 to <4 x float>*
  store <4 x float> %90, <4 x float>* %92, align 4, !tbaa !12
  %93 = bitcast float* %88 to <4 x float>*
  store <4 x float> %91, <4 x float>* %93, align 4, !tbaa !12
  %index.next341 = or i64 %index334, 8
  %94 = getelementptr inbounds float, float* %p_new, i64 %index.next341
  %95 = bitcast float* %94 to <4 x float>*
  %wide.load335.1 = load <4 x float>, <4 x float>* %95, align 4, !tbaa !12
  %96 = getelementptr inbounds float, float* %94, i64 4
  %97 = bitcast float* %96 to <4 x float>*
  %wide.load336.1 = load <4 x float>, <4 x float>* %97, align 4, !tbaa !12
  %98 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load335.1, <4 x float> <float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000>, <4 x float> %broadcast.splat338)
  %99 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load336.1, <4 x float> <float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000>, <4 x float> %broadcast.splat340)
  %100 = bitcast float* %94 to <4 x float>*
  store <4 x float> %98, <4 x float>* %100, align 4, !tbaa !12
  %101 = bitcast float* %96 to <4 x float>*
  store <4 x float> %99, <4 x float>* %101, align 4, !tbaa !12
  %index.next341.1 = add nuw i64 %index334, 16
  %niter353.next.1 = add i64 %niter353, 2
  %niter353.ncmp.1 = icmp eq i64 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %middle.block325.unr-lcssa, label %vector.body327, !llvm.loop !31

middle.block325.unr-lcssa:                        ; preds = %vector.body327, %vector.ph329
  %index334.unr = phi i64 [ 0, %vector.ph329 ], [ %index.next341.1, %vector.body327 ]
  br i1 %lcmp.mod351.not, label %middle.block325, label %vector.body327.epil

vector.body327.epil:                              ; preds = %middle.block325.unr-lcssa
  %102 = getelementptr inbounds float, float* %p_new, i64 %index334.unr
  %103 = bitcast float* %102 to <4 x float>*
  %wide.load335.epil = load <4 x float>, <4 x float>* %103, align 4, !tbaa !12
  %104 = getelementptr inbounds float, float* %102, i64 4
  %105 = bitcast float* %104 to <4 x float>*
  %wide.load336.epil = load <4 x float>, <4 x float>* %105, align 4, !tbaa !12
  %106 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load335.epil, <4 x float> <float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000>, <4 x float> %broadcast.splat338)
  %107 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load336.epil, <4 x float> <float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000>, <4 x float> %broadcast.splat340)
  %108 = bitcast float* %102 to <4 x float>*
  store <4 x float> %106, <4 x float>* %108, align 4, !tbaa !12
  %109 = bitcast float* %104 to <4 x float>*
  store <4 x float> %107, <4 x float>* %109, align 4, !tbaa !12
  br label %middle.block325

middle.block325:                                  ; preds = %middle.block325.unr-lcssa, %vector.body327.epil
  br i1 %cmp.n333, label %for.body104.us.preheader, label %for.body90.us.preheader343

for.body90.us.preheader343:                       ; preds = %for.body90.us.preheader, %middle.block325
  %indvars.iv286.ph = phi i64 [ 0, %for.body90.us.preheader ], [ %n.vec331, %middle.block325 ]
  br label %for.body90.us

for.body104.us.preheader:                         ; preds = %for.body90.us, %middle.block325
  br i1 %17, label %for.body121.us.preheader.unr-lcssa, label %for.body104.us

for.cond48.preheader.us:                          ; preds = %for.cond39.preheader.us.preheader, %for.end128.us
  %k_iter.0240.us = phi i32 [ %inc129.us, %for.end128.us ], [ 0, %for.cond39.preheader.us.preheader ]
  call void @llvm.memset.p0i8.i64(i8* align 4 %p_new254, i8 0, i64 %10, i1 false), !tbaa !12
  br label %for.body51.us

for.body63.lr.ph.us:                              ; preds = %for.body51.us
  %arrayidx74.us = getelementptr inbounds float, float* %p, i64 %indvars.iv281
  %110 = sext i32 %curcol2.0230.us to i64
  br label %for.body63.us

for.body11:                                       ; preds = %for.body11.preheader, %for.cond9.loopexit
  %111 = phi i32 [ %.pre, %for.body11.preheader ], [ %112, %for.cond9.loopexit ]
  %indvars.iv249 = phi i64 [ 0, %for.body11.preheader ], [ %indvars.iv.next250, %for.cond9.loopexit ]
  %curcol.0220 = phi i32 [ 0, %for.body11.preheader ], [ %curcol.1.lcssa, %for.cond9.loopexit ]
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  %arrayidx14 = getelementptr inbounds i32, i32* %row_ptr, i64 %indvars.iv.next250
  %112 = load i32, i32* %arrayidx14, align 4, !tbaa !8
  %sub17 = sub i32 %112, %111
  %cmp19216 = icmp sgt i32 %sub17, 0
  br i1 %cmp19216, label %for.body20.lr.ph, label %for.cond9.loopexit

for.body20.lr.ph:                                 ; preds = %for.body11
  %arrayidx22 = getelementptr inbounds i32, i32* %out_link, i64 %indvars.iv249
  %113 = load i32, i32* %arrayidx22, align 4, !tbaa !8
  %cmp23 = icmp sgt i32 %113, 0
  %conv = sitofp i32 %113 to float
  br i1 %cmp23, label %for.body20.us.preheader, label %for.body20.preheader

for.body20.preheader:                             ; preds = %for.body20.lr.ph
  %114 = add i32 %curcol.0220, %112
  %115 = sub i32 %114, %111
  br label %for.cond9.loopexit

for.body20.us.preheader:                          ; preds = %for.body20.lr.ph
  %116 = sext i32 %curcol.0220 to i64
  %117 = xor i32 %111, -1
  %118 = add i32 %112, %117
  %119 = zext i32 %118 to i64
  %120 = add nuw nsw i64 %119, 1
  %min.iters.check = icmp ult i32 %118, 3
  br i1 %min.iters.check, label %for.body20.us.preheader344, label %vector.ph

vector.ph:                                        ; preds = %for.body20.us.preheader
  %n.vec = and i64 %120, 8589934588
  %ind.end = add nsw i64 %n.vec, %116
  %ind.end306 = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x float> poison, float %conv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %121 = add nsw i64 %n.vec, -4
  %122 = lshr exact i64 %121, 2
  %123 = add nuw nsw i64 %122, 1
  %xtraiter346 = and i64 %123, 1
  %124 = icmp eq i64 %121, 0
  br i1 %124, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter348 = and i64 %123, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter349 = phi i64 [ 0, %vector.ph.new ], [ %niter349.next.1, %vector.body ]
  %offset.idx = add i64 %index, %116
  %125 = getelementptr inbounds float, float* %val, i64 %offset.idx
  %126 = bitcast float* %125 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %126, align 4, !tbaa !12
  %127 = fdiv <4 x float> %wide.load, %broadcast.splat
  %128 = bitcast float* %125 to <4 x float>*
  store <4 x float> %127, <4 x float>* %128, align 4, !tbaa !12
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %index.next, %116
  %129 = getelementptr inbounds float, float* %val, i64 %offset.idx.1
  %130 = bitcast float* %129 to <4 x float>*
  %wide.load.1 = load <4 x float>, <4 x float>* %130, align 4, !tbaa !12
  %131 = fdiv <4 x float> %wide.load.1, %broadcast.splat
  %132 = bitcast float* %129 to <4 x float>*
  store <4 x float> %131, <4 x float>* %132, align 4, !tbaa !12
  %index.next.1 = add nuw i64 %index, 8
  %niter349.next.1 = add i64 %niter349, 2
  %niter349.ncmp.1 = icmp eq i64 %niter349.next.1, %unroll_iter348
  br i1 %niter349.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !32

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %index.unr, %116
  %133 = getelementptr inbounds float, float* %val, i64 %offset.idx.epil
  %134 = bitcast float* %133 to <4 x float>*
  %wide.load.epil = load <4 x float>, <4 x float>* %134, align 4, !tbaa !12
  %135 = fdiv <4 x float> %wide.load.epil, %broadcast.splat
  %136 = bitcast float* %133 to <4 x float>*
  store <4 x float> %135, <4 x float>* %136, align 4, !tbaa !12
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %120, %n.vec
  br i1 %cmp.n, label %for.cond9.loopexit.loopexit, label %for.body20.us.preheader344

for.body20.us.preheader344:                       ; preds = %for.body20.us.preheader, %middle.block
  %indvars.iv245.ph = phi i64 [ %116, %for.body20.us.preheader ], [ %ind.end, %middle.block ]
  %j.0218.us.ph = phi i32 [ 0, %for.body20.us.preheader ], [ %ind.end306, %middle.block ]
  br label %for.body20.us

for.body20.us:                                    ; preds = %for.body20.us.preheader344, %for.body20.us
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %for.body20.us ], [ %indvars.iv245.ph, %for.body20.us.preheader344 ]
  %j.0218.us = phi i32 [ %inc34.us, %for.body20.us ], [ %j.0218.us.ph, %for.body20.us.preheader344 ]
  %arrayidx26.us = getelementptr inbounds float, float* %val, i64 %indvars.iv245
  %137 = load float, float* %arrayidx26.us, align 4, !tbaa !12
  %div.us = fdiv float %137, %conv
  store float %div.us, float* %arrayidx26.us, align 4, !tbaa !12
  %indvars.iv.next246 = add nsw i64 %indvars.iv245, 1
  %inc34.us = add nuw nsw i32 %j.0218.us, 1
  %exitcond248.not = icmp eq i32 %inc34.us, %sub17
  br i1 %exitcond248.not, label %for.cond9.loopexit.loopexit, label %for.body20.us, !llvm.loop !33

while.end:                                        ; preds = %for.end128.us, %while.cond.preheader, %for.cond9.preheader, %entry
  %.us-phi241 = phi i32 [ 1, %entry ], [ 1, %for.cond9.preheader ], [ 1, %while.cond.preheader ], [ %inc129.us, %for.end128.us ]
  ret i32 %.us-phi241
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #5 {
entry:
  %n = alloca i32, align 4
  %e = alloca i32, align 4
  %str = alloca [256 x i8], align 16
  %fromnode = alloca i32, align 4
  %tonode = alloca i32, align 4
  %pr_start = alloca %struct.timespec, align 8
  %pr_end = alloca %struct.timespec, align 8
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %1 = load i8*, i8** %argv, align 8, !tbaa !34
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* noundef %1) #15
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %2) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8*, i8** %argv, i64 1
  %4 = load i8*, i8** %arrayidx2, align 8, !tbaa !34
  %call3 = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %cmp4 = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* noundef %4) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end7:                                          ; preds = %if.end
  %6 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14
  store i32 0, i32* %n, align 4, !tbaa !8
  %7 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14
  store i32 0, i32* %e, align 4, !tbaa !8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #14
  %call8 = tail call i32 @getc(%struct._IO_FILE* noundef nonnull %call3)
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end7
  %ch.0.in = phi i32 [ %call8, %if.end7 ], [ %call19, %if.end16 ]
  %sext = shl i32 %ch.0.in, 24
  switch i32 %sext, label %if.then24 [
    i32 587202560, label %while.body
    i32 -16777216, label %if.end27
  ]

while.body:                                       ; preds = %while.cond
  %call12 = call i8* @fgets(i8* noundef nonnull %8, i32 noundef 255, %struct._IO_FILE* noundef nonnull %call3)
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then24, label %if.end16

if.end16:                                         ; preds = %while.body
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %n, i32* noundef nonnull %e) #14
  %call19 = call i32 @getc(%struct._IO_FILE* noundef nonnull %call3)
  br label %while.cond, !llvm.loop !36

if.then24:                                        ; preds = %while.body, %while.cond
  %conv9.le = ashr exact i32 %sext, 24
  %call26 = call i32 @ungetc(i32 noundef %conv9.le, %struct._IO_FILE* noundef nonnull %call3)
  br label %if.end27

if.end27:                                         ; preds = %while.cond, %if.then24
  %9 = load i32, i32* %n, align 4, !tbaa !8
  %10 = load i32, i32* %e, align 4, !tbaa !8
  %call28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 noundef %9, i32 noundef %10)
  %11 = load i32, i32* %e, align 4, !tbaa !8
  %conv29 = sext i32 %11 to i64
  %call30 = call noalias i8* @calloc(i64 noundef %conv29, i64 noundef 4) #14
  %12 = bitcast i8* %call30 to float*
  %call32 = call noalias i8* @calloc(i64 noundef %conv29, i64 noundef 4) #14
  %13 = bitcast i8* %call32 to i32*
  %14 = load i32, i32* %n, align 4, !tbaa !8
  %add = add nsw i32 %14, 1
  %conv33 = sext i32 %add to i64
  %call34 = call noalias i8* @calloc(i64 noundef %conv33, i64 noundef 4) #14
  %15 = bitcast i8* %call34 to i32*
  %tobool = icmp ne i8* %call30, null
  %tobool35 = icmp ne i8* %call32, null
  %or.cond = and i1 %tobool, %tobool35
  %tobool37 = icmp ne i8* %call34, null
  %or.cond135 = and i1 %or.cond, %tobool37
  br i1 %or.cond135, label %if.end41, label %if.then38

if.then38:                                        ; preds = %if.end27
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %16) #15
  call void @free(i8* noundef %call30) #14
  call void @free(i8* noundef %call32) #14
  call void @free(i8* noundef %call34) #14
  %call40 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call3)
  call void @exit(i32 noundef 1) #16
  unreachable

if.end41:                                         ; preds = %if.end27
  %call42 = call i32 @detect_indexing(i8* noundef %4)
  %18 = bitcast i32* %fromnode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #14
  %19 = bitcast i32* %tonode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #14
  %call45233258 = call i32 @feof(%struct._IO_FILE* noundef nonnull %call3) #14
  %tobool46.not234259 = icmp eq i32 %call45233258, 0
  br i1 %tobool46.not234259, label %while.body47.lr.ph.lr.ph, label %while.end90

while.body47.lr.ph.lr.ph:                         ; preds = %if.end41
  %tobool53.not = icmp eq i32 %call42, 0
  br label %while.body47.lr.ph

while.body47.lr.ph:                               ; preds = %while.body47.lr.ph.lr.ph, %if.then82
  %indvars.iv289 = phi i64 [ 0, %while.body47.lr.ph.lr.ph ], [ %indvars.iv.next290, %if.then82 ]
  %cur_row.0.ph267 = phi i32 [ 0, %while.body47.lr.ph.lr.ph ], [ %cur_row.1, %if.then82 ]
  %elrow.0.ph264 = phi i32 [ 0, %while.body47.lr.ph.lr.ph ], [ %inc87, %if.then82 ]
  %curel.0.ph260 = phi i32 [ 0, %while.body47.lr.ph.lr.ph ], [ %curel.1, %if.then82 ]
  br i1 %tobool53.not, label %while.body47.us, label %while.body47

while.body47.us:                                  ; preds = %while.body47.lr.ph, %if.then68.us
  %call48.us = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %call3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* noundef nonnull %fromnode, i32* noundef nonnull %tonode) #14
  %cmp49.not.us = icmp eq i32 %call48.us, 2
  br i1 %cmp49.not.us, label %if.end52.us, label %while.end90.loopexit

if.end52.us:                                      ; preds = %while.body47.us
  %20 = load i32, i32* %fromnode, align 4, !tbaa !8
  %21 = load i32, i32* %n, align 4, !tbaa !8
  %cmp57.not.us = icmp slt i32 %20, %21
  br i1 %cmp57.not.us, label %lor.lhs.false59.us, label %if.then68.us

lor.lhs.false59.us:                               ; preds = %if.end52.us
  %22 = load i32, i32* %tonode, align 4, !tbaa !8
  %cmp60.us = icmp sge i32 %22, %21
  %cmp63.us = icmp slt i32 %20, 0
  %or.cond136.us = select i1 %cmp60.us, i1 true, i1 %cmp63.us
  %cmp66.us = icmp slt i32 %22, 0
  %or.cond137.us = or i1 %cmp66.us, %or.cond136.us
  br i1 %or.cond137.us, label %if.then68.us, label %if.end69

if.then68.us:                                     ; preds = %lor.lhs.false59.us, %if.end52.us
  %call45.us = call i32 @feof(%struct._IO_FILE* noundef nonnull %call3) #14
  %tobool46.not.us = icmp eq i32 %call45.us, 0
  br i1 %tobool46.not.us, label %while.body47.us, label %while.end90.loopexit, !llvm.loop !37

while.body47:                                     ; preds = %while.body47.lr.ph, %if.then68
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %call3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* noundef nonnull %fromnode, i32* noundef nonnull %tonode) #14
  %cmp49.not = icmp eq i32 %call48, 2
  br i1 %cmp49.not, label %if.end52, label %while.end90.loopexit300

if.end52:                                         ; preds = %while.body47
  %23 = load i32, i32* %fromnode, align 4, !tbaa !8
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %fromnode, align 4, !tbaa !8
  %24 = load i32, i32* %tonode, align 4, !tbaa !8
  %dec55 = add nsw i32 %24, -1
  store i32 %dec55, i32* %tonode, align 4, !tbaa !8
  %25 = load i32, i32* %n, align 4, !tbaa !8
  %cmp57.not.not = icmp sgt i32 %23, %25
  br i1 %cmp57.not.not, label %if.then68, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end52
  %cmp60 = icmp sgt i32 %24, %25
  %cmp63 = icmp slt i32 %23, 1
  %or.cond136 = select i1 %cmp60, i1 true, i1 %cmp63
  %cmp66 = icmp slt i32 %24, 1
  %or.cond137 = or i1 %cmp66, %or.cond136
  br i1 %or.cond137, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false59, %if.end52
  %call45 = call i32 @feof(%struct._IO_FILE* noundef nonnull %call3) #14
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %while.body47, label %while.end90.loopexit300, !llvm.loop !37

if.end69:                                         ; preds = %lor.lhs.false59, %lor.lhs.false59.us
  %.us-phi249 = phi i32 [ %22, %lor.lhs.false59.us ], [ %dec55, %lor.lhs.false59 ]
  %.us-phi250 = phi i32 [ %20, %lor.lhs.false59.us ], [ %dec, %lor.lhs.false59 ]
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1
  %cmp70 = icmp sgt i32 %.us-phi250, %cur_row.0.ph267
  br i1 %cmp70, label %if.then72, label %if.end79

if.then72:                                        ; preds = %if.end69
  %add73 = add nsw i32 %elrow.0.ph264, %curel.0.ph260
  %26 = sext i32 %cur_row.0.ph267 to i64
  %wide.trip.count299 = zext i32 %.us-phi250 to i64
  %27 = sub nsw i64 %wide.trip.count299, %26
  %min.iters.check = icmp ult i64 %27, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %if.then72
  %n.vec = and i64 %27, -8
  %ind.end = add nsw i64 %n.vec, %26
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %add73, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert326 = insertelement <4 x i32> poison, i32 %add73, i64 0
  %broadcast.splat327 = shufflevector <4 x i32> %broadcast.splatinsert326, <4 x i32> poison, <4 x i32> zeroinitializer
  %28 = add nsw i64 %n.vec, -8
  %29 = lshr exact i64 %28, 3
  %30 = add nuw nsw i64 %29, 1
  %xtraiter = and i64 %30, 3
  %31 = icmp ult i64 %28, 24
  br i1 %31, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %30, 4611686018427387900
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %index, %26
  %32 = add nsw i64 %offset.idx, 1
  %33 = getelementptr inbounds i32, i32* %15, i64 %32
  %34 = bitcast i32* %33 to <4 x i32>*
  store <4 x i32> %broadcast.splat, <4 x i32>* %34, align 4, !tbaa !8
  %35 = getelementptr inbounds i32, i32* %33, i64 4
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> %broadcast.splat327, <4 x i32>* %36, align 4, !tbaa !8
  %index.next = or i64 %index, 8
  %offset.idx.1 = add i64 %index.next, %26
  %37 = add nsw i64 %offset.idx.1, 1
  %38 = getelementptr inbounds i32, i32* %15, i64 %37
  %39 = bitcast i32* %38 to <4 x i32>*
  store <4 x i32> %broadcast.splat, <4 x i32>* %39, align 4, !tbaa !8
  %40 = getelementptr inbounds i32, i32* %38, i64 4
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> %broadcast.splat327, <4 x i32>* %41, align 4, !tbaa !8
  %index.next.1 = or i64 %index, 16
  %offset.idx.2 = add i64 %index.next.1, %26
  %42 = add nsw i64 %offset.idx.2, 1
  %43 = getelementptr inbounds i32, i32* %15, i64 %42
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> %broadcast.splat, <4 x i32>* %44, align 4, !tbaa !8
  %45 = getelementptr inbounds i32, i32* %43, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> %broadcast.splat327, <4 x i32>* %46, align 4, !tbaa !8
  %index.next.2 = or i64 %index, 24
  %offset.idx.3 = add i64 %index.next.2, %26
  %47 = add nsw i64 %offset.idx.3, 1
  %48 = getelementptr inbounds i32, i32* %15, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  store <4 x i32> %broadcast.splat, <4 x i32>* %49, align 4, !tbaa !8
  %50 = getelementptr inbounds i32, i32* %48, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  store <4 x i32> %broadcast.splat327, <4 x i32>* %51, align 4, !tbaa !8
  %index.next.3 = add nuw i64 %index, 32
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !38

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %index.epil, %26
  %52 = add nsw i64 %offset.idx.epil, 1
  %53 = getelementptr inbounds i32, i32* %15, i64 %52
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %broadcast.splat, <4 x i32>* %54, align 4, !tbaa !8
  %55 = getelementptr inbounds i32, i32* %53, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> %broadcast.splat327, <4 x i32>* %56, align 4, !tbaa !8
  %index.next.epil = add nuw i64 %index.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !39

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %27, %n.vec
  br i1 %cmp.n, label %if.end79, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then72, %middle.block
  %indvars.iv.ph = phi i64 [ %26, %if.then72 ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx77 = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next
  store i32 %add73, i32* %arrayidx77, align 4, !tbaa !8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count299
  br i1 %exitcond.not, label %if.end79, label %for.body, !llvm.loop !40

if.end79:                                         ; preds = %for.body, %middle.block, %if.end69
  %curel.1 = phi i32 [ %curel.0.ph260, %if.end69 ], [ %add73, %middle.block ], [ %add73, %for.body ]
  %elrow.1 = phi i32 [ %elrow.0.ph264, %if.end69 ], [ 0, %middle.block ], [ 0, %for.body ]
  %cur_row.1 = phi i32 [ %cur_row.0.ph267, %if.end69 ], [ %.us-phi250, %middle.block ], [ %.us-phi250, %for.body ]
  %57 = load i32, i32* %e, align 4, !tbaa !8
  %58 = sext i32 %57 to i64
  %cmp80 = icmp slt i64 %indvars.iv289, %58
  br i1 %cmp80, label %if.then82, label %while.end90.loopexit302

if.then82:                                        ; preds = %if.end79
  %arrayidx84 = getelementptr inbounds float, float* %12, i64 %indvars.iv289
  store float 1.000000e+00, float* %arrayidx84, align 4, !tbaa !12
  %arrayidx86 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv289
  store i32 %.us-phi249, i32* %arrayidx86, align 4, !tbaa !8
  %inc87 = add nsw i32 %elrow.1, 1
  %call45233 = call i32 @feof(%struct._IO_FILE* noundef nonnull %call3) #14
  %tobool46.not234 = icmp eq i32 %call45233, 0
  br i1 %tobool46.not234, label %while.body47.lr.ph, label %while.end90.loopexit302, !llvm.loop !37

while.end90.loopexit:                             ; preds = %while.body47.us, %if.then68.us
  %indvars293.le = trunc i64 %indvars.iv289 to i32
  br label %while.end90

while.end90.loopexit300:                          ; preds = %while.body47, %if.then68
  %indvars293.le313 = trunc i64 %indvars.iv289 to i32
  br label %while.end90

while.end90.loopexit302:                          ; preds = %if.then82, %if.end79
  %elrow.2.ph = phi i32 [ %inc87, %if.then82 ], [ %elrow.1, %if.end79 ]
  %indvars292.le = trunc i64 %indvars.iv.next290 to i32
  br label %while.end90

while.end90:                                      ; preds = %while.end90.loopexit302, %while.end90.loopexit300, %while.end90.loopexit, %if.end41
  %curel.2 = phi i32 [ 0, %if.end41 ], [ %curel.0.ph260, %while.end90.loopexit ], [ %curel.0.ph260, %while.end90.loopexit300 ], [ %curel.1, %while.end90.loopexit302 ]
  %valid_edges.1 = phi i32 [ 0, %if.end41 ], [ %indvars293.le, %while.end90.loopexit ], [ %indvars293.le313, %while.end90.loopexit300 ], [ %indvars292.le, %while.end90.loopexit302 ]
  %elrow.2 = phi i32 [ 0, %if.end41 ], [ %elrow.0.ph264, %while.end90.loopexit ], [ %elrow.0.ph264, %while.end90.loopexit300 ], [ %elrow.2.ph, %while.end90.loopexit302 ]
  %cur_row.2 = phi i32 [ 0, %if.end41 ], [ %cur_row.0.ph267, %while.end90.loopexit ], [ %cur_row.0.ph267, %while.end90.loopexit300 ], [ %cur_row.1, %while.end90.loopexit302 ]
  %add91 = add nsw i32 %elrow.2, %curel.2
  %add92 = add nsw i32 %cur_row.2, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds i32, i32* %15, i64 %idxprom93
  store i32 %add91, i32* %arrayidx94, align 4, !tbaa !8
  %call95 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 noundef %valid_edges.1)
  %59 = load i32, i32* %n, align 4, !tbaa !8
  %conv96 = sext i32 %59 to i64
  %call97 = call noalias i8* @calloc(i64 noundef %conv96, i64 noundef 4) #14
  %tobool98.not = icmp eq i8* %call97, null
  br i1 %tobool98.not, label %if.then99, label %if.end102

if.then99:                                        ; preds = %while.end90
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %61 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %60) #15
  call void @free(i8* noundef %call30) #14
  call void @free(i8* noundef %call32) #14
  call void @free(i8* noundef nonnull %call34) #14
  %call101 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call3)
  call void @exit(i32 noundef 1) #16
  unreachable

if.end102:                                        ; preds = %while.end90
  %call104 = call noalias i8* @calloc(i64 noundef %conv96, i64 noundef 4) #14
  %62 = bitcast i8* %call104 to float*
  %call106 = call noalias i8* @calloc(i64 noundef %conv96, i64 noundef 4) #14
  %tobool107 = icmp ne i8* %call104, null
  %tobool109 = icmp ne i8* %call106, null
  %or.cond138 = and i1 %tobool107, %tobool109
  br i1 %or.cond138, label %for.cond114.preheader, label %if.then110

for.cond114.preheader:                            ; preds = %if.end102
  %cmp115272 = icmp sgt i32 %59, 0
  br i1 %cmp115272, label %for.body117.lr.ph, label %for.end123

for.body117.lr.ph:                                ; preds = %for.cond114.preheader
  %conv118 = sitofp i32 %59 to float
  %div = fdiv float 1.000000e+00, %conv118
  %wide.trip.count297 = zext i32 %59 to i64
  %min.iters.check331 = icmp ult i32 %59, 8
  br i1 %min.iters.check331, label %for.body117.preheader, label %vector.ph332

vector.ph332:                                     ; preds = %for.body117.lr.ph
  %n.vec334 = and i64 %wide.trip.count297, 4294967288
  %broadcast.splatinsert338 = insertelement <4 x float> poison, float %div, i64 0
  %broadcast.splat339 = shufflevector <4 x float> %broadcast.splatinsert338, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert340 = insertelement <4 x float> poison, float %div, i64 0
  %broadcast.splat341 = shufflevector <4 x float> %broadcast.splatinsert340, <4 x float> poison, <4 x i32> zeroinitializer
  %63 = add nsw i64 %n.vec334, -8
  %64 = lshr exact i64 %63, 3
  %65 = add nuw nsw i64 %64, 1
  %xtraiter354 = and i64 %65, 7
  %66 = icmp ult i64 %63, 56
  br i1 %66, label %middle.block328.unr-lcssa, label %vector.ph332.new

vector.ph332.new:                                 ; preds = %vector.ph332
  %unroll_iter357 = and i64 %65, 4611686018427387896
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph332.new
  %index337 = phi i64 [ 0, %vector.ph332.new ], [ %index.next342.7, %vector.body330 ]
  %niter358 = phi i64 [ 0, %vector.ph332.new ], [ %niter358.next.7, %vector.body330 ]
  %67 = getelementptr inbounds float, float* %62, i64 %index337
  %68 = bitcast float* %67 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %68, align 4, !tbaa !12
  %69 = getelementptr inbounds float, float* %67, i64 4
  %70 = bitcast float* %69 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %70, align 4, !tbaa !12
  %index.next342 = or i64 %index337, 8
  %71 = getelementptr inbounds float, float* %62, i64 %index.next342
  %72 = bitcast float* %71 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %72, align 4, !tbaa !12
  %73 = getelementptr inbounds float, float* %71, i64 4
  %74 = bitcast float* %73 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %74, align 4, !tbaa !12
  %index.next342.1 = or i64 %index337, 16
  %75 = getelementptr inbounds float, float* %62, i64 %index.next342.1
  %76 = bitcast float* %75 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %76, align 4, !tbaa !12
  %77 = getelementptr inbounds float, float* %75, i64 4
  %78 = bitcast float* %77 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %78, align 4, !tbaa !12
  %index.next342.2 = or i64 %index337, 24
  %79 = getelementptr inbounds float, float* %62, i64 %index.next342.2
  %80 = bitcast float* %79 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %80, align 4, !tbaa !12
  %81 = getelementptr inbounds float, float* %79, i64 4
  %82 = bitcast float* %81 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %82, align 4, !tbaa !12
  %index.next342.3 = or i64 %index337, 32
  %83 = getelementptr inbounds float, float* %62, i64 %index.next342.3
  %84 = bitcast float* %83 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %84, align 4, !tbaa !12
  %85 = getelementptr inbounds float, float* %83, i64 4
  %86 = bitcast float* %85 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %86, align 4, !tbaa !12
  %index.next342.4 = or i64 %index337, 40
  %87 = getelementptr inbounds float, float* %62, i64 %index.next342.4
  %88 = bitcast float* %87 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %88, align 4, !tbaa !12
  %89 = getelementptr inbounds float, float* %87, i64 4
  %90 = bitcast float* %89 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %90, align 4, !tbaa !12
  %index.next342.5 = or i64 %index337, 48
  %91 = getelementptr inbounds float, float* %62, i64 %index.next342.5
  %92 = bitcast float* %91 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %92, align 4, !tbaa !12
  %93 = getelementptr inbounds float, float* %91, i64 4
  %94 = bitcast float* %93 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %94, align 4, !tbaa !12
  %index.next342.6 = or i64 %index337, 56
  %95 = getelementptr inbounds float, float* %62, i64 %index.next342.6
  %96 = bitcast float* %95 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %96, align 4, !tbaa !12
  %97 = getelementptr inbounds float, float* %95, i64 4
  %98 = bitcast float* %97 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %98, align 4, !tbaa !12
  %index.next342.7 = add nuw i64 %index337, 64
  %niter358.next.7 = add nuw i64 %niter358, 8
  %niter358.ncmp.7 = icmp eq i64 %niter358.next.7, %unroll_iter357
  br i1 %niter358.ncmp.7, label %middle.block328.unr-lcssa, label %vector.body330, !llvm.loop !41

middle.block328.unr-lcssa:                        ; preds = %vector.body330, %vector.ph332
  %index337.unr = phi i64 [ 0, %vector.ph332 ], [ %index.next342.7, %vector.body330 ]
  %lcmp.mod356.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod356.not, label %middle.block328, label %vector.body330.epil

vector.body330.epil:                              ; preds = %middle.block328.unr-lcssa, %vector.body330.epil
  %index337.epil = phi i64 [ %index.next342.epil, %vector.body330.epil ], [ %index337.unr, %middle.block328.unr-lcssa ]
  %epil.iter355 = phi i64 [ %epil.iter355.next, %vector.body330.epil ], [ 0, %middle.block328.unr-lcssa ]
  %99 = getelementptr inbounds float, float* %62, i64 %index337.epil
  %100 = bitcast float* %99 to <4 x float>*
  store <4 x float> %broadcast.splat339, <4 x float>* %100, align 4, !tbaa !12
  %101 = getelementptr inbounds float, float* %99, i64 4
  %102 = bitcast float* %101 to <4 x float>*
  store <4 x float> %broadcast.splat341, <4 x float>* %102, align 4, !tbaa !12
  %index.next342.epil = add nuw i64 %index337.epil, 8
  %epil.iter355.next = add i64 %epil.iter355, 1
  %epil.iter355.cmp.not = icmp eq i64 %epil.iter355.next, %xtraiter354
  br i1 %epil.iter355.cmp.not, label %middle.block328, label %vector.body330.epil, !llvm.loop !42

middle.block328:                                  ; preds = %vector.body330.epil, %middle.block328.unr-lcssa
  %cmp.n336 = icmp eq i64 %n.vec334, %wide.trip.count297
  br i1 %cmp.n336, label %for.end123, label %for.body117.preheader

for.body117.preheader:                            ; preds = %for.body117.lr.ph, %middle.block328
  %indvars.iv294.ph = phi i64 [ 0, %for.body117.lr.ph ], [ %n.vec334, %middle.block328 ]
  br label %for.body117

if.then110:                                       ; preds = %if.end102
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %104 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %103) #15
  call void @free(i8* noundef %call30) #14
  call void @free(i8* noundef %call32) #14
  call void @free(i8* noundef nonnull %call34) #14
  call void @free(i8* noundef nonnull %call97) #14
  call void @free(i8* noundef %call104) #14
  call void @free(i8* noundef %call106) #14
  %call112 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call3)
  call void @exit(i32 noundef 1) #16
  unreachable

for.body117:                                      ; preds = %for.body117.preheader, %for.body117
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %for.body117 ], [ %indvars.iv294.ph, %for.body117.preheader ]
  %arrayidx120 = getelementptr inbounds float, float* %62, i64 %indvars.iv294
  store float %div, float* %arrayidx120, align 4, !tbaa !12
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %for.end123, label %for.body117, !llvm.loop !43

for.end123:                                       ; preds = %for.body117, %middle.block328, %for.cond114.preheader
  %105 = bitcast i8* %call106 to float*
  %106 = bitcast i8* %call97 to i32*
  %107 = bitcast %struct.timespec* %pr_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %107) #14
  %108 = bitcast %struct.timespec* %pr_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %108) #14
  %call124 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %pr_start) #14
  %109 = load i32, i32* %n, align 4, !tbaa !8
  %call125 = call i32 @pagerank_roi(i32 noundef %109, i32 noundef %valid_edges.1, float* noundef nonnull %12, i32* noundef nonnull %13, i32* noundef nonnull %15, i32* noundef nonnull %106, float* noundef nonnull %62, float* noundef nonnull %105)
  %call126 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %pr_end) #14
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %pr_end, i64 0, i32 0
  %110 = load i64, i64* %tv_sec, align 8, !tbaa !44
  %tv_sec127 = getelementptr inbounds %struct.timespec, %struct.timespec* %pr_start, i64 0, i32 0
  %111 = load i64, i64* %tv_sec127, align 8, !tbaa !44
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %pr_end, i64 0, i32 1
  %112 = load i64, i64* %tv_nsec, align 8, !tbaa !47
  %tv_nsec128 = getelementptr inbounds %struct.timespec, %struct.timespec* %pr_start, i64 0, i32 1
  %113 = load i64, i64* %tv_nsec128, align 8, !tbaa !47
  %call132 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call125)
  %114 = load i32, i32* %n, align 4, !tbaa !8
  %cmp27.i = icmp sgt i32 %114, 0
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %print_pagerank_checksum.exit

for.body.lr.ph.i:                                 ; preds = %for.end123
  %conv1.i = sitofp i32 %114 to double
  %wide.trip.count.i = zext i32 %114 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %checksum.029.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.7.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds float, float* %62, i64 %indvars.iv.i
  %115 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %conv.i = fpext float %115 to double
  %mul.i = fmul double %conv1.i, %conv.i
  %116 = call double @llvm.fmuladd.f64(double %mul.i, double 1.000000e+06, double 5.000000e-01) #14
  %conv3.i = fptosi double %116 to i64
  %mul9.i = mul i64 %checksum.029.i, 131
  %and.i = and i64 %conv3.i, 255
  %add.i = add i64 %and.i, %mul9.i
  %mul9.1.i = mul i64 %add.i, 131
  %shr.1.i = lshr i64 %conv3.i, 8
  %and.1.i = and i64 %shr.1.i, 255
  %add.1.i = add i64 %mul9.1.i, %and.1.i
  %mul9.2.i = mul i64 %add.1.i, 131
  %shr.2.i = lshr i64 %conv3.i, 16
  %and.2.i = and i64 %shr.2.i, 255
  %add.2.i = add i64 %mul9.2.i, %and.2.i
  %mul9.3.i = mul i64 %add.2.i, 131
  %shr.3.i = lshr i64 %conv3.i, 24
  %and.3.i = and i64 %shr.3.i, 255
  %add.3.i = add i64 %mul9.3.i, %and.3.i
  %mul9.4.i = mul i64 %add.3.i, 131
  %shr.4.i = lshr i64 %conv3.i, 32
  %and.4.i = and i64 %shr.4.i, 255
  %add.4.i = add i64 %mul9.4.i, %and.4.i
  %mul9.5.i = mul i64 %add.4.i, 131
  %shr.5.i = lshr i64 %conv3.i, 40
  %and.5.i = and i64 %shr.5.i, 255
  %add.5.i = add i64 %mul9.5.i, %and.5.i
  %mul9.6.i = mul i64 %add.5.i, 131
  %shr.6.i = lshr i64 %conv3.i, 48
  %and.6.i = and i64 %shr.6.i, 255
  %add.6.i = add i64 %mul9.6.i, %and.6.i
  %mul9.7.i = mul i64 %add.6.i, 131
  %shr.7.i = lshr i64 %conv3.i, 56
  %add.7.i = add i64 %mul9.7.i, %shr.7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %print_pagerank_checksum.exit, label %for.body.i, !llvm.loop !48

print_pagerank_checksum.exit:                     ; preds = %for.body.i, %for.end123
  %checksum.0.lcssa.i = phi i64 [ 0, %for.end123 ], [ %add.7.i, %for.body.i ]
  %sub = sub nsw i64 %110, %111
  %mul = mul nsw i64 %sub, 1000
  %sub129 = sub nsw i64 %112, %113
  %div130 = sdiv i64 %sub129, 1000000
  %add131 = add nsw i64 %div130, %mul
  %call.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 noundef %checksum.0.lcssa.i) #14
  %call133 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i64 noundef %add131)
  call void @free(i8* noundef %call30) #14
  call void @free(i8* noundef %call32) #14
  call void @free(i8* noundef %call34) #14
  call void @free(i8* noundef %call97) #14
  call void @free(i8* noundef nonnull %call104) #14
  call void @free(i8* noundef %call106) #14
  %call134 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call3)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %108) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %107) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #14
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @ungetc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @feof(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #0

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

attributes #0 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !4, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !7, !20}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7, !20}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7, !28, !20}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7, !20}
!32 = distinct !{!32, !7, !20}
!33 = distinct !{!33, !7, !28, !20}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !4, i64 0}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7, !20}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !7, !28, !20}
!41 = distinct !{!41, !7, !20}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !7, !28, !20}
!44 = !{!45, !46, i64 0}
!45 = !{!"timespec", !46, i64 0, !46, i64 8}
!46 = !{!"long", !4, i64 0}
!47 = !{!45, !46, i64 8}
!48 = distinct !{!48, !7}
