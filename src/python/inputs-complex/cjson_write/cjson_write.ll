; ModuleID = 'cjson_write.c'
source_filename = "cjson_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_hooks = type { i8* (i64)*, void (i8*)*, i8* (i8*, i64)* }
%struct.cJSON = type { %struct.cJSON*, %struct.cJSON*, %struct.cJSON*, i32, i8*, i32, double, i8* }
%struct.parse_buffer = type { i8*, i64, i64, i64, %struct.internal_hooks }
%struct.timespec = type { i64, i64 }

@global_error.0 = internal unnamed_addr global i8* null, align 8
@global_error.1 = internal unnamed_addr global i64 0, align 8
@global_hooks = internal unnamed_addr constant %struct.internal_hooks { i8* (i64)* @malloc, void (i8*)* @free, i8* (i8*, i64)* @realloc }, align 8
@.str = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"create_objects entries: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Checksum: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Usage: %s <iterations> <size>\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"elapsed_time_seconds: %.6f\0A\00", align 1
@str = private unnamed_addr constant [21 x i8] c"create_objects JSON:\00", align 1
@str.12 = private unnamed_addr constant [58 x i8] c"test_create_objects failed: create_objects returned NULL.\00", align 1
@str.15 = private unnamed_addr constant [26 x i8] c"Memory allocation failed.\00", align 1
@str.16 = private unnamed_addr constant [70 x i8] c"Invalid number of iterations or size. Please enter positive integers.\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local double @strtod(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @cJSON_GetErrorPtr() local_unnamed_addr #2 {
entry:
  %0 = load i8*, i8** @global_error.0, align 8, !tbaa !3
  %1 = load i64, i64* @global_error.1, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  ret i8* %add.ptr
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @cJSON_Delete(%struct.cJSON* noundef %item) local_unnamed_addr #5 {
entry:
  %cmp.not38 = icmp eq %struct.cJSON* %item, null
  br i1 %cmp.not38, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end21
  %item.addr.039 = phi %struct.cJSON* [ %0, %if.end21 ], [ %item, %entry ]
  %next1 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.039, i64 0, i32 0
  %0 = load %struct.cJSON*, %struct.cJSON** %next1, align 8, !tbaa !10
  %type = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.039, i64 0, i32 3
  %1 = load i32, i32* %type, align 8, !tbaa !14
  %and = and i32 %1, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %child = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.039, i64 0, i32 2
  %2 = load %struct.cJSON*, %struct.cJSON** %child, align 8, !tbaa !15
  %cmp2.not = icmp eq %struct.cJSON* %2, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @cJSON_Delete(%struct.cJSON* noundef nonnull %2)
  %.pre = load i32, i32* %type, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %3 = phi i32 [ %.pre, %if.then ], [ %1, %land.lhs.true ], [ %1, %while.body ]
  %and5 = and i32 %3, 256
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %if.end
  %valuestring = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.039, i64 0, i32 4
  %4 = load i8*, i8** %valuestring, align 8, !tbaa !16
  %cmp8.not = icmp eq i8* %4, null
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %land.lhs.true7
  tail call void @free(i8* noundef nonnull %4) #17
  store i8* null, i8** %valuestring, align 8, !tbaa !16
  %.pre40 = load i32, i32* %type, align 8, !tbaa !14
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true7, %if.end
  %5 = phi i32 [ %.pre40, %if.then9 ], [ %3, %land.lhs.true7 ], [ %3, %if.end ]
  %and14 = and i32 %5, 512
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %if.end21

land.lhs.true16:                                  ; preds = %if.end12
  %string = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.039, i64 0, i32 7
  %6 = load i8*, i8** %string, align 8, !tbaa !17
  %cmp17.not = icmp eq i8* %6, null
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  tail call void @free(i8* noundef nonnull %6) #17
  store i8* null, i8** %string, align 8, !tbaa !17
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %if.end12
  %7 = bitcast %struct.cJSON* %item.addr.039 to i8*
  tail call void @free(i8* noundef nonnull %7) #17
  %cmp.not = icmp eq %struct.cJSON* %0, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !18

while.end:                                        ; preds = %if.end21, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @parse_hex4(i8* nocapture noundef readonly %input) unnamed_addr #8 {
entry:
  %0 = load i8, i8* %input, align 1, !tbaa !20
  %conv = zext i8 %0 to i32
  %1 = add i8 %0, -48
  %2 = icmp ult i8 %1, 10
  br i1 %2, label %if.end42, label %if.else

if.else:                                          ; preds = %entry
  %3 = add i8 %0, -65
  %4 = icmp ult i8 %3, 6
  br i1 %4, label %if.end42, label %if.else24

if.else24:                                        ; preds = %if.else
  %5 = add i8 %0, -97
  %6 = icmp ult i8 %5, 6
  br i1 %6, label %if.end42, label %cleanup

if.end42:                                         ; preds = %if.else24, %if.else, %entry
  %.sink = phi i32 [ -48, %entry ], [ -55, %if.else ], [ -87, %if.else24 ]
  %sub22 = add nsw i32 %.sink, %conv
  %shl = shl nsw i32 %sub22, 4
  %arrayidx.1 = getelementptr inbounds i8, i8* %input, i64 1
  %7 = load i8, i8* %arrayidx.1, align 1, !tbaa !20
  %conv.1 = zext i8 %7 to i32
  %8 = add i8 %7, -48
  %9 = icmp ult i8 %8, 10
  br i1 %9, label %if.end42.1, label %if.else.1

if.else.1:                                        ; preds = %if.end42
  %10 = add i8 %7, -65
  %11 = icmp ult i8 %10, 6
  br i1 %11, label %if.end42.1, label %if.else24.1

if.else24.1:                                      ; preds = %if.else.1
  %12 = add i8 %7, -97
  %13 = icmp ult i8 %12, 6
  br i1 %13, label %if.end42.1, label %cleanup

if.end42.1:                                       ; preds = %if.end42, %if.else.1, %if.else24.1
  %.sink77 = phi i32 [ -87, %if.else24.1 ], [ -55, %if.else.1 ], [ -48, %if.end42 ]
  %sub.1 = add nsw i32 %.sink77, %conv.1
  %h.1.1 = add nsw i32 %sub.1, %shl
  %shl.1 = shl nsw i32 %h.1.1, 4
  %arrayidx.2 = getelementptr inbounds i8, i8* %input, i64 2
  %14 = load i8, i8* %arrayidx.2, align 1, !tbaa !20
  %conv.2 = zext i8 %14 to i32
  %15 = add i8 %14, -48
  %16 = icmp ult i8 %15, 10
  br i1 %16, label %if.end42.2, label %if.else.2

if.else.2:                                        ; preds = %if.end42.1
  %17 = add i8 %14, -65
  %18 = icmp ult i8 %17, 6
  br i1 %18, label %if.end42.2, label %if.else24.2

if.else24.2:                                      ; preds = %if.else.2
  %19 = add i8 %14, -97
  %20 = icmp ult i8 %19, 6
  br i1 %20, label %if.end42.2, label %cleanup

if.end42.2:                                       ; preds = %if.end42.1, %if.else.2, %if.else24.2
  %.sink78 = phi i32 [ -87, %if.else24.2 ], [ -55, %if.else.2 ], [ -48, %if.end42.1 ]
  %sub.2 = add nsw i32 %.sink78, %conv.2
  %h.1.2 = add nsw i32 %sub.2, %shl.1
  %shl.2 = shl i32 %h.1.2, 4
  %arrayidx.3 = getelementptr inbounds i8, i8* %input, i64 3
  %21 = load i8, i8* %arrayidx.3, align 1, !tbaa !20
  %conv.3 = zext i8 %21 to i32
  %22 = add i8 %21, -48
  %23 = icmp ult i8 %22, 10
  br i1 %23, label %if.end42.3, label %if.else.3

if.else.3:                                        ; preds = %if.end42.2
  %24 = add i8 %21, -65
  %25 = icmp ult i8 %24, 6
  br i1 %25, label %if.end42.3, label %if.else24.3

if.else24.3:                                      ; preds = %if.else.3
  %26 = add i8 %21, -97
  %27 = icmp ult i8 %26, 6
  br i1 %27, label %if.end42.3, label %cleanup

if.end42.3:                                       ; preds = %if.end42.2, %if.else.3, %if.else24.3
  %.sink79 = phi i32 [ -87, %if.else24.3 ], [ -55, %if.else.3 ], [ -48, %if.end42.2 ]
  %sub.3 = add nsw i32 %.sink79, %conv.3
  %h.1.3 = add i32 %sub.3, %shl.2
  br label %cleanup

cleanup:                                          ; preds = %if.end42.3, %if.else24.3, %if.else24.2, %if.else24.1, %if.else24
  %retval.0 = phi i32 [ 0, %if.else24 ], [ 0, %if.else24.1 ], [ 0, %if.else24.2 ], [ 0, %if.else24.3 ], [ %h.1.3, %if.end42.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_string(%struct.cJSON* nocapture noundef writeonly %item, %struct.parse_buffer* nocapture noundef %input_buffer) unnamed_addr #5 {
entry:
  %content = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 0
  %0 = load i8*, i8** %content, align 8, !tbaa !21
  %offset = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 2
  %1 = load i64, i64* %offset, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  %add.ptr1.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !20
  %cmp.not = icmp eq i8 %2, 34
  br i1 %cmp.not, label %while.cond.preheader, label %if.then115

while.cond.preheader:                             ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64
  %length = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 1
  %3 = load i64, i64* %length, align 8, !tbaa !25
  %sub.ptr.lhs.cast213 = ptrtoint i8* %add.ptr1.ptr to i64
  %sub.ptr.sub214 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast
  %cmp11215 = icmp ult i64 %sub.ptr.sub214, %3
  br i1 %cmp11215, label %land.rhs, label %if.then115

land.rhs:                                         ; preds = %while.cond.preheader, %if.end31
  %skipped_bytes.0217 = phi i64 [ %skipped_bytes.1, %if.end31 ], [ 0, %while.cond.preheader ]
  %input_end.0216.idx = phi i64 [ %input_end.1.add, %if.end31 ], [ 1, %while.cond.preheader ]
  %input_end.0216.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 %input_end.0216.idx
  %4 = load i8, i8* %input_end.0216.ptr, align 1, !tbaa !20
  switch i8 %4, label %if.end31 [
    i8 34, label %if.end44
    i8 92, label %if.then20
  ]

if.then20:                                        ; preds = %land.rhs
  %input_end.0216.add = add nsw i64 %input_end.0216.idx, 1
  %add.ptr21.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 %input_end.0216.add
  %sub.ptr.lhs.cast23 = ptrtoint i8* %add.ptr21.ptr to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast
  %cmp27.not = icmp ult i64 %sub.ptr.sub25, %3
  br i1 %cmp27.not, label %if.end30, label %if.then115

if.end30:                                         ; preds = %if.then20
  %inc = add i64 %skipped_bytes.0217, 1
  br label %if.end31

if.end31:                                         ; preds = %land.rhs, %if.end30
  %input_end.1.idx = phi i64 [ %input_end.0216.add, %if.end30 ], [ %input_end.0216.idx, %land.rhs ]
  %skipped_bytes.1 = phi i64 [ %inc, %if.end30 ], [ %skipped_bytes.0217, %land.rhs ]
  %input_end.1.add = add nsw i64 %input_end.1.idx, 1
  %incdec.ptr32.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 %input_end.1.add
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr32.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp11 = icmp ult i64 %sub.ptr.sub, %3
  br i1 %cmp11, label %land.rhs, label %if.then115, !llvm.loop !26

if.end44:                                         ; preds = %land.rhs
  %input_end.0216.ptr.le = getelementptr inbounds i8, i8* %add.ptr, i64 %input_end.0216.idx
  %sub.ptr.lhs.cast.le = ptrtoint i8* %input_end.0216.ptr.le to i64
  %sub.ptr.rhs.cast49 = ptrtoint i8* %add.ptr to i64
  %allocate = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 4, i32 0
  %5 = load i8* (i64)*, i8* (i64)** %allocate, align 8, !tbaa !27
  %6 = add i64 %skipped_bytes.0217, %sub.ptr.rhs.cast49
  %sub = sub i64 1, %6
  %add = add i64 %sub, %sub.ptr.lhs.cast.le
  %call = tail call i8* %5(i64 noundef %add) #17
  %cmp51 = icmp eq i8* %call, null
  br i1 %cmp51, label %if.then115, label %while.cond56.preheader

while.cond56.preheader:                           ; preds = %if.end44
  %cmp57218 = icmp sgt i64 %input_end.0216.idx, 1
  br i1 %cmp57218, label %while.body59, label %while.end100

while.body59:                                     ; preds = %while.cond56.preheader, %if.end99
  %input_pointer.0222 = phi i8* [ %input_pointer.2, %if.end99 ], [ %add.ptr1.ptr, %while.cond56.preheader ]
  %output_pointer.0219 = phi i8* [ %output_pointer.4, %if.end99 ], [ %call, %while.cond56.preheader ]
  %7 = load i8, i8* %input_pointer.0222, align 1, !tbaa !20
  %cmp61.not = icmp eq i8 %7, 92
  br i1 %cmp61.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %while.body59
  %incdec.ptr64 = getelementptr inbounds i8, i8* %input_pointer.0222, i64 1
  %incdec.ptr65 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 1
  store i8 %7, i8* %output_pointer.0219, align 1, !tbaa !20
  br label %if.end99

if.else:                                          ; preds = %while.body59
  %sub.ptr.rhs.cast67 = ptrtoint i8* %input_pointer.0222 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast.le, %sub.ptr.rhs.cast67
  %cmp69 = icmp slt i64 %sub.ptr.sub68, 1
  br i1 %cmp69, label %if.then110, label %if.end72

if.end72:                                         ; preds = %if.else
  %arrayidx73 = getelementptr inbounds i8, i8* %input_pointer.0222, i64 1
  %8 = load i8, i8* %arrayidx73, align 1, !tbaa !20
  switch i8 %8, label %if.then110 [
    i8 98, label %sw.bb
    i8 102, label %sw.bb76
    i8 110, label %sw.bb78
    i8 114, label %sw.bb80
    i8 116, label %sw.bb82
    i8 34, label %sw.bb84
    i8 92, label %sw.bb84
    i8 47, label %sw.bb84
    i8 117, label %sw.bb87
  ]

sw.bb:                                            ; preds = %if.end72
  %incdec.ptr75 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 1
  store i8 8, i8* %output_pointer.0219, align 1, !tbaa !20
  br label %cleanup96

sw.bb76:                                          ; preds = %if.end72
  %incdec.ptr77 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 1
  store i8 12, i8* %output_pointer.0219, align 1, !tbaa !20
  br label %cleanup96

sw.bb78:                                          ; preds = %if.end72
  %incdec.ptr79 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 1
  store i8 10, i8* %output_pointer.0219, align 1, !tbaa !20
  br label %cleanup96

sw.bb80:                                          ; preds = %if.end72
  %incdec.ptr81 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 1
  store i8 13, i8* %output_pointer.0219, align 1, !tbaa !20
  br label %cleanup96

sw.bb82:                                          ; preds = %if.end72
  %incdec.ptr83 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 1
  store i8 9, i8* %output_pointer.0219, align 1, !tbaa !20
  br label %cleanup96

sw.bb84:                                          ; preds = %if.end72, %if.end72, %if.end72
  %incdec.ptr86 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 1
  store i8 %8, i8* %output_pointer.0219, align 1, !tbaa !20
  br label %cleanup96

sw.bb87:                                          ; preds = %if.end72
  %cmp.i = icmp ult i64 %sub.ptr.sub68, 6
  br i1 %cmp.i, label %if.then110, label %if.end.i

if.end.i:                                         ; preds = %sw.bb87
  %add.ptr.i = getelementptr inbounds i8, i8* %input_pointer.0222, i64 2
  %9 = load i8, i8* %add.ptr.i, align 1, !tbaa !20
  %conv.i.i = zext i8 %9 to i32
  %10 = add i8 %9, -48
  %11 = icmp ult i8 %10, 10
  br i1 %11, label %if.end42.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end.i
  %12 = add i8 %9, -65
  %13 = icmp ult i8 %12, 6
  br i1 %13, label %if.end42.i.i, label %if.else24.i.i

if.else24.i.i:                                    ; preds = %if.else.i.i
  %14 = add i8 %9, -97
  %15 = icmp ult i8 %14, 6
  br i1 %15, label %if.end42.i.i, label %if.else76.i

if.end42.i.i:                                     ; preds = %if.else24.i.i, %if.else.i.i, %if.end.i
  %.sink.i.i = phi i32 [ -48, %if.end.i ], [ -55, %if.else.i.i ], [ -87, %if.else24.i.i ]
  %sub22.i.i = add nsw i32 %.sink.i.i, %conv.i.i
  %shl.i.i = shl nsw i32 %sub22.i.i, 4
  %arrayidx.1.i.i = getelementptr inbounds i8, i8* %input_pointer.0222, i64 3
  %16 = load i8, i8* %arrayidx.1.i.i, align 1, !tbaa !20
  %conv.1.i.i = zext i8 %16 to i32
  %17 = add i8 %16, -48
  %18 = icmp ult i8 %17, 10
  br i1 %18, label %if.end42.1.i.i, label %if.else.1.i.i

if.else.1.i.i:                                    ; preds = %if.end42.i.i
  %19 = add i8 %16, -65
  %20 = icmp ult i8 %19, 6
  br i1 %20, label %if.end42.1.i.i, label %if.else24.1.i.i

if.else24.1.i.i:                                  ; preds = %if.else.1.i.i
  %21 = add i8 %16, -97
  %22 = icmp ult i8 %21, 6
  br i1 %22, label %if.end42.1.i.i, label %if.else76.i

if.end42.1.i.i:                                   ; preds = %if.else24.1.i.i, %if.else.1.i.i, %if.end42.i.i
  %.sink77.i.i = phi i32 [ -87, %if.else24.1.i.i ], [ -55, %if.else.1.i.i ], [ -48, %if.end42.i.i ]
  %sub.1.i.i = add nsw i32 %shl.i.i, %conv.1.i.i
  %h.1.1.i.i = add nsw i32 %sub.1.i.i, %.sink77.i.i
  %shl.1.i.i = shl nsw i32 %h.1.1.i.i, 4
  %arrayidx.2.i.i = getelementptr inbounds i8, i8* %input_pointer.0222, i64 4
  %23 = load i8, i8* %arrayidx.2.i.i, align 1, !tbaa !20
  %conv.2.i.i = zext i8 %23 to i32
  %24 = add i8 %23, -48
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %if.end42.2.i.i, label %if.else.2.i.i

if.else.2.i.i:                                    ; preds = %if.end42.1.i.i
  %26 = add i8 %23, -65
  %27 = icmp ult i8 %26, 6
  br i1 %27, label %if.end42.2.i.i, label %if.else24.2.i.i

if.else24.2.i.i:                                  ; preds = %if.else.2.i.i
  %28 = add i8 %23, -97
  %29 = icmp ult i8 %28, 6
  br i1 %29, label %if.end42.2.i.i, label %if.else76.i

if.end42.2.i.i:                                   ; preds = %if.else24.2.i.i, %if.else.2.i.i, %if.end42.1.i.i
  %.sink78.i.i = phi i32 [ -87, %if.else24.2.i.i ], [ -55, %if.else.2.i.i ], [ -48, %if.end42.1.i.i ]
  %sub.2.i.i = add i32 %shl.1.i.i, %conv.2.i.i
  %h.1.2.i.i = add i32 %sub.2.i.i, %.sink78.i.i
  %shl.2.i.i = shl i32 %h.1.2.i.i, 4
  %arrayidx.3.i.i = getelementptr inbounds i8, i8* %input_pointer.0222, i64 5
  %30 = load i8, i8* %arrayidx.3.i.i, align 1, !tbaa !20
  %conv.3.i.i = zext i8 %30 to i32
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %parse_hex4.exit.i, label %if.else.3.i.i

if.else.3.i.i:                                    ; preds = %if.end42.2.i.i
  %33 = add i8 %30, -65
  %34 = icmp ult i8 %33, 6
  br i1 %34, label %parse_hex4.exit.i, label %if.else24.3.i.i

if.else24.3.i.i:                                  ; preds = %if.else.3.i.i
  %35 = add i8 %30, -97
  %36 = icmp ult i8 %35, 6
  br i1 %36, label %parse_hex4.exit.i, label %if.else76.i

parse_hex4.exit.i:                                ; preds = %if.else24.3.i.i, %if.else.3.i.i, %if.end42.2.i.i
  %.sink79.i.i = phi i32 [ -87, %if.else24.3.i.i ], [ -55, %if.else.3.i.i ], [ -48, %if.end42.2.i.i ]
  %sub.3.i.i = add i32 %shl.2.i.i, %conv.3.i.i
  %h.1.3.i.i = add i32 %sub.3.i.i, %.sink79.i.i
  %37 = and i32 %h.1.3.i.i, -1024
  switch i32 %37, label %if.end37.i [
    i32 56320, label %if.then110
    i32 55296, label %if.then8.i
  ]

if.then8.i:                                       ; preds = %parse_hex4.exit.i
  %add.ptr9.i = getelementptr inbounds i8, i8* %input_pointer.0222, i64 6
  %sub.ptr.rhs.cast11.i = ptrtoint i8* %add.ptr9.i to i64
  %sub.ptr.sub12.i = sub i64 %sub.ptr.lhs.cast.le, %sub.ptr.rhs.cast11.i
  %cmp13.i = icmp slt i64 %sub.ptr.sub12.i, 6
  br i1 %cmp13.i, label %if.then110, label %if.end15.i

if.end15.i:                                       ; preds = %if.then8.i
  %38 = load i8, i8* %add.ptr9.i, align 1, !tbaa !20
  %cmp16.not.i = icmp eq i8 %38, 92
  br i1 %cmp16.not.i, label %lor.lhs.false.i, label %if.then110

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %arrayidx18.i = getelementptr inbounds i8, i8* %input_pointer.0222, i64 7
  %39 = load i8, i8* %arrayidx18.i, align 1, !tbaa !20
  %cmp20.not.i = icmp eq i8 %39, 117
  br i1 %cmp20.not.i, label %if.end23.i, label %if.then110

if.end23.i:                                       ; preds = %lor.lhs.false.i
  %add.ptr24.i = getelementptr inbounds i8, i8* %input_pointer.0222, i64 8
  %call25.i = tail call fastcc i32 @parse_hex4(i8* noundef nonnull %add.ptr24.i) #17
  %40 = add i32 %call25.i, -57344
  %41 = icmp ult i32 %40, -1024
  br i1 %41, label %if.then110, label %if.else45.thread.i

if.else45.thread.i:                               ; preds = %if.end23.i
  %and.i = shl nuw nsw i32 %h.1.3.i.i, 10
  %shl.i = and i32 %and.i, 1047552
  %and33.i = and i32 %call25.i, 1023
  %or.i = add nuw nsw i32 %shl.i, 65536
  %add.i = or i32 %and33.i, %or.i
  %conv34.i = zext i32 %add.i to i64
  br label %if.else49.i

if.end37.i:                                       ; preds = %parse_hex4.exit.i
  %conv36.i = zext i32 %h.1.3.i.i to i64
  %cmp38.i = icmp ult i32 %h.1.3.i.i, 128
  br i1 %cmp38.i, label %if.else76.i, label %if.else41.i

if.else41.i:                                      ; preds = %if.end37.i
  %cmp42.i = icmp ult i32 %h.1.3.i.i, 2048
  br i1 %cmp42.i, label %for.body.preheader.i, label %if.else45.i

if.else45.i:                                      ; preds = %if.else41.i
  %cmp46.i = icmp ult i32 %h.1.3.i.i, 65536
  br i1 %cmp46.i, label %for.body.preheader.i, label %if.else49.i

if.else49.i:                                      ; preds = %if.else45.i, %if.else45.thread.i
  %sequence_length.0137146152.i = phi i64 [ 12, %if.else45.thread.i ], [ 6, %if.else45.i ]
  %codepoint.1135147151.i = phi i64 [ %conv34.i, %if.else45.thread.i ], [ %conv36.i, %if.else45.i ]
  %cmp50.i = icmp ult i64 %codepoint.1135147151.i, 1114112
  br i1 %cmp50.i, label %for.body.preheader.i, label %if.then110

for.body.preheader.i:                             ; preds = %if.else49.i, %if.else45.i, %if.else41.i
  %sequence_length.0138.i = phi i64 [ 6, %if.else41.i ], [ 6, %if.else45.i ], [ %sequence_length.0137146152.i, %if.else49.i ]
  %codepoint.1136.i = phi i64 [ %conv36.i, %if.else41.i ], [ %conv36.i, %if.else45.i ], [ %codepoint.1135147151.i, %if.else49.i ]
  %utf8_length.0.i = phi i32 [ 2, %if.else41.i ], [ 3, %if.else45.i ], [ 4, %if.else49.i ]
  %first_byte_mark.0.i = phi i64 [ 192, %if.else41.i ], [ 224, %if.else45.i ], [ 240, %if.else49.i ]
  %narrow.i = add nuw nsw i32 %utf8_length.0.i, 255
  %42 = and i32 %narrow.i, 255
  %43 = zext i32 %42 to i64
  %44 = trunc i64 %codepoint.1136.i to i8
  %45 = and i8 %44, 63
  %conv65.i = or i8 %45, -128
  %arrayidx66.i = getelementptr inbounds i8, i8* %output_pointer.0219, i64 %43
  store i8 %conv65.i, i8* %arrayidx66.i, align 1, !tbaa !20
  %shr.i = lshr i64 %codepoint.1136.i, 6
  %indvars.iv.next.i = add nsw i64 %43, -1
  %indvars.i = trunc i64 %indvars.iv.next.i to i8
  %cmp61.not.i = icmp eq i8 %indvars.i, 0
  br i1 %cmp61.not.i, label %if.then70.i, label %for.body.i.1, !llvm.loop !28

for.body.i.1:                                     ; preds = %for.body.preheader.i
  %46 = trunc i64 %shr.i to i8
  %47 = and i8 %46, 63
  %conv65.i.1 = or i8 %47, -128
  %arrayidx66.i.1 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 %indvars.iv.next.i
  store i8 %conv65.i.1, i8* %arrayidx66.i.1, align 1, !tbaa !20
  %shr.i.1 = lshr i64 %codepoint.1136.i, 12
  %indvars.iv.next.i.1 = add nsw i64 %43, -2
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i8
  %cmp61.not.i.1 = icmp eq i8 %indvars.i.1, 0
  br i1 %cmp61.not.i.1, label %if.then70.i, label %for.body.i.2, !llvm.loop !28

for.body.i.2:                                     ; preds = %for.body.i.1
  %48 = trunc i64 %shr.i.1 to i8
  %49 = and i8 %48, 63
  %conv65.i.2 = or i8 %49, -128
  %arrayidx66.i.2 = getelementptr inbounds i8, i8* %output_pointer.0219, i64 %indvars.iv.next.i.1
  store i8 %conv65.i.2, i8* %arrayidx66.i.2, align 1, !tbaa !20
  %shr.i.2 = lshr i64 %codepoint.1136.i, 18
  br label %if.then70.i

if.then70.i:                                      ; preds = %for.body.i.2, %for.body.i.1, %for.body.preheader.i
  %shr.i.lcssa = phi i64 [ %shr.i, %for.body.preheader.i ], [ %shr.i.1, %for.body.i.1 ], [ %shr.i.2, %for.body.i.2 ]
  %and73.i = or i64 %shr.i.lcssa, %first_byte_mark.0.i
  %conv74.i = trunc i64 %and73.i to i8
  br label %utf16_literal_to_utf8.exit

if.else76.i:                                      ; preds = %if.end37.i, %if.else24.3.i.i, %if.else24.2.i.i, %if.else24.1.i.i, %if.else24.i.i
  %codepoint.2.lcssa178.i = phi i64 [ 0, %if.else24.3.i.i ], [ 0, %if.else24.2.i.i ], [ 0, %if.else24.1.i.i ], [ 0, %if.else24.i.i ], [ %conv36.i, %if.end37.i ]
  %50 = trunc i64 %codepoint.2.lcssa178.i to i8
  %conv78.i = and i8 %50, 127
  br label %utf16_literal_to_utf8.exit

utf16_literal_to_utf8.exit:                       ; preds = %if.then70.i, %if.else76.i
  %conv78.sink.i = phi i8 [ %conv78.i, %if.else76.i ], [ %conv74.i, %if.then70.i ]
  %sequence_length.0138165176.i = phi i64 [ 6, %if.else76.i ], [ %sequence_length.0138.i, %if.then70.i ]
  %utf8_length.0167174.i = phi i32 [ 1, %if.else76.i ], [ %utf8_length.0.i, %if.then70.i ]
  store i8 %conv78.sink.i, i8* %output_pointer.0219, align 1, !tbaa !20
  %51 = zext i32 %utf8_length.0167174.i to i64
  %add.ptr82.i = getelementptr inbounds i8, i8* %output_pointer.0219, i64 %51
  br label %cleanup96

cleanup96:                                        ; preds = %sw.bb, %sw.bb76, %sw.bb78, %sw.bb80, %sw.bb82, %sw.bb84, %utf16_literal_to_utf8.exit
  %output_pointer.2 = phi i8* [ %add.ptr82.i, %utf16_literal_to_utf8.exit ], [ %incdec.ptr86, %sw.bb84 ], [ %incdec.ptr83, %sw.bb82 ], [ %incdec.ptr81, %sw.bb80 ], [ %incdec.ptr79, %sw.bb78 ], [ %incdec.ptr77, %sw.bb76 ], [ %incdec.ptr75, %sw.bb ]
  %sequence_length.0 = phi i64 [ %sequence_length.0138165176.i, %utf16_literal_to_utf8.exit ], [ 2, %sw.bb84 ], [ 2, %sw.bb82 ], [ 2, %sw.bb80 ], [ 2, %sw.bb78 ], [ 2, %sw.bb76 ], [ 2, %sw.bb ]
  %52 = and i64 %sequence_length.0, 255
  %add.ptr95 = getelementptr inbounds i8, i8* %input_pointer.0222, i64 %52
  br label %if.end99

if.end99:                                         ; preds = %cleanup96, %if.then63
  %output_pointer.4 = phi i8* [ %output_pointer.2, %cleanup96 ], [ %incdec.ptr65, %if.then63 ]
  %input_pointer.2 = phi i8* [ %add.ptr95, %cleanup96 ], [ %incdec.ptr64, %if.then63 ]
  %cmp57 = icmp ult i8* %input_pointer.2, %input_end.0216.ptr.le
  br i1 %cmp57, label %while.body59, label %while.end100, !llvm.loop !29

while.end100:                                     ; preds = %if.end99, %while.cond56.preheader
  %output_pointer.0.lcssa = phi i8* [ %call, %while.cond56.preheader ], [ %output_pointer.4, %if.end99 ]
  store i8 0, i8* %output_pointer.0.lcssa, align 1, !tbaa !20
  %type = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 3
  store i32 16, i32* %type, align 8, !tbaa !14
  %valuestring = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 4
  store i8* %call, i8** %valuestring, align 8, !tbaa !16
  %53 = load i8*, i8** %content, align 8, !tbaa !21
  %sub.ptr.rhs.cast103 = ptrtoint i8* %53 to i64
  %sub.ptr.sub104 = add i64 %sub.ptr.lhs.cast.le, 1
  %inc107 = sub i64 %sub.ptr.sub104, %sub.ptr.rhs.cast103
  br label %cleanup122

if.then110:                                       ; preds = %if.end72, %if.else, %if.else49.i, %parse_hex4.exit.i, %sw.bb87, %if.then8.i, %lor.lhs.false.i, %if.end15.i, %if.end23.i
  %deallocate = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 4, i32 1
  %54 = load void (i8*)*, void (i8*)** %deallocate, align 8, !tbaa !30
  tail call void %54(i8* noundef nonnull %call) #17
  br label %if.then115

if.then115:                                       ; preds = %if.then20, %if.end31, %while.cond.preheader, %if.end44, %entry, %if.then110
  %input_pointer.3207 = phi i8* [ %input_pointer.0222, %if.then110 ], [ %add.ptr1.ptr, %entry ], [ %add.ptr1.ptr, %if.end44 ], [ %add.ptr1.ptr, %while.cond.preheader ], [ %add.ptr1.ptr, %if.end31 ], [ %add.ptr1.ptr, %if.then20 ]
  %55 = load i8*, i8** %content, align 8, !tbaa !21
  %sub.ptr.lhs.cast117 = ptrtoint i8* %input_pointer.3207 to i64
  %sub.ptr.rhs.cast118 = ptrtoint i8* %55 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  br label %cleanup122

cleanup122:                                       ; preds = %if.then115, %while.end100
  %storemerge = phi i64 [ %sub.ptr.sub119, %if.then115 ], [ %inc107, %while.end100 ]
  %retval.0 = phi i32 [ 0, %if.then115 ], [ 1, %while.end100 ]
  store i64 %storemerge, i64* %offset, align 8, !tbaa !24
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %buffer) unnamed_addr #9 {
entry:
  %cmp = icmp eq %struct.parse_buffer* %buffer, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %content = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 0
  %0 = load i8*, i8** %content, align 8, !tbaa !21
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 2
  %1 = load i64, i64* %offset, align 8, !tbaa !24
  %length = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 1
  %2 = load i64, i64* %length, align 8, !tbaa !25
  %cmp3 = icmp ult i64 %1, %2
  br i1 %cmp3, label %land.rhs, label %return

land.rhs:                                         ; preds = %land.lhs.true, %while.body
  %3 = phi i64 [ %inc, %while.body ], [ %1, %land.lhs.true ]
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %3
  %4 = load i8, i8* %add.ptr, align 1, !tbaa !20
  %cmp14 = icmp ult i8 %4, 33
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add i64 %3, 1
  store i64 %inc, i64* %offset, align 8, !tbaa !24
  %exitcond.not = icmp eq i64 %inc, %2
  br i1 %exitcond.not, label %if.then21, label %land.rhs, !llvm.loop !31

while.end:                                        ; preds = %land.rhs
  %cmp19 = icmp eq i64 %3, %2
  br i1 %cmp19, label %if.then21, label %return

if.then21:                                        ; preds = %while.body, %while.end
  %dec = add i64 %2, -1
  store i64 %dec, i64* %offset, align 8, !tbaa !24
  br label %return

return:                                           ; preds = %while.end, %if.then21, %land.lhs.true, %entry, %lor.lhs.false
  %retval.0 = phi %struct.parse_buffer* [ null, %lor.lhs.false ], [ null, %entry ], [ %buffer, %land.lhs.true ], [ %buffer, %if.then21 ], [ %buffer, %while.end ]
  ret %struct.parse_buffer* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local %struct.cJSON* @cJSON_ParseWithLengthOpts(i8* noundef %value, i64 noundef %buffer_length, i8** noundef writeonly %return_parse_end, i32 noundef %require_null_terminated) local_unnamed_addr #5 {
entry:
  %buffer = alloca %struct.parse_buffer, align 8
  %0 = bitcast %struct.parse_buffer* %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  store i8* null, i8** @global_error.0, align 8, !tbaa !3
  store i64 0, i64* @global_error.1, align 8, !tbaa !9
  %cmp = icmp eq i8* %value, null
  %cmp1 = icmp eq i64 %buffer_length, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end34, label %if.end

if.end:                                           ; preds = %entry
  %content = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 0
  store i8* %value, i8** %content, align 8, !tbaa !21
  %length = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 1
  store i64 %buffer_length, i64* %length, align 8, !tbaa !25
  %offset = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 2
  %hooks = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 4
  %1 = bitcast %struct.internal_hooks* %hooks to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.internal_hooks* @global_hooks to i8*), i64 24, i1 false), !tbaa.struct !32
  %call.i = tail call dereferenceable_or_null(64) i8* @malloc(i64 noundef 64) #17
  %cmp.not.i = icmp eq i8* %call.i, null
  br i1 %cmp.not.i, label %if.end34, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %call.i, i8 0, i64 64, i1 false) #17
  %2 = bitcast i8* %call.i to %struct.cJSON*
  %cmp6.i = icmp ugt i64 %buffer_length, 4
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true.i83

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %call.i78 = tail call i32 @strncmp(i8* noundef nonnull %value, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 noundef 3) #18
  %cmp10.i = icmp eq i32 %call.i78, 0
  br i1 %cmp10.i, label %if.then11.i, label %land.lhs.true.i83

if.then11.i:                                      ; preds = %land.lhs.true7.i
  store i64 3, i64* %offset, align 8, !tbaa !24
  br label %land.lhs.true.i83

land.lhs.true.i83:                                ; preds = %land.lhs.true.i, %land.lhs.true7.i, %if.then11.i
  %3 = phi i64 [ 3, %if.then11.i ], [ 0, %land.lhs.true7.i ], [ 0, %land.lhs.true.i ]
  %cmp3.i = icmp ult i64 %3, %buffer_length
  br i1 %cmp3.i, label %land.rhs.i.preheader, label %buffer_skip_whitespace.exit

land.rhs.i.preheader:                             ; preds = %land.lhs.true.i83
  %offset.promoted = load i64, i64* %offset, align 8, !tbaa !24
  %add.ptr.i126 = getelementptr inbounds i8, i8* %value, i64 %3
  %4 = load i8, i8* %add.ptr.i126, align 1, !tbaa !20
  %cmp14.i127 = icmp ult i8 %4, 33
  br i1 %cmp14.i127, label %while.body.i, label %while.end.i

land.rhs.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8, i8* %value, i64 %inc.i
  %5 = load i8, i8* %add.ptr.i, align 1, !tbaa !20
  %cmp14.i = icmp ult i8 %5, 33
  br i1 %cmp14.i, label %while.body.i, label %while.end.i, !llvm.loop !31

while.body.i:                                     ; preds = %land.rhs.i.preheader, %land.rhs.i
  %6 = phi i64 [ %inc.i, %land.rhs.i ], [ %3, %land.rhs.i.preheader ]
  %inc.i = add i64 %6, 1
  %exitcond.not.i = icmp eq i64 %inc.i, %buffer_length
  br i1 %exitcond.not.i, label %if.then21.i.loopexit, label %land.rhs.i, !llvm.loop !31

while.end.i:                                      ; preds = %land.rhs.i, %land.rhs.i.preheader
  %inc.i120.lcssa = phi i64 [ %offset.promoted, %land.rhs.i.preheader ], [ %inc.i, %land.rhs.i ]
  %.lcssa123 = phi i64 [ %3, %land.rhs.i.preheader ], [ %inc.i, %land.rhs.i ]
  store i64 %inc.i120.lcssa, i64* %offset, align 8, !tbaa !24
  %cmp19.i = icmp eq i64 %.lcssa123, %buffer_length
  br i1 %cmp19.i, label %if.then21.i, label %buffer_skip_whitespace.exit

if.then21.i.loopexit:                             ; preds = %while.body.i
  store i64 %inc.i, i64* %offset, align 8, !tbaa !24
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.then21.i.loopexit, %while.end.i
  %dec.i = add i64 %buffer_length, -1
  store i64 %dec.i, i64* %offset, align 8, !tbaa !24
  br label %buffer_skip_whitespace.exit

buffer_skip_whitespace.exit:                      ; preds = %land.lhs.true.i83, %while.end.i, %if.then21.i
  %call7 = call fastcc i32 @parse_value(%struct.cJSON* noundef nonnull %2, %struct.parse_buffer* noundef nonnull %buffer)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then33, label %if.end9

if.end9:                                          ; preds = %buffer_skip_whitespace.exit
  %tobool10.not = icmp eq i32 %require_null_terminated, 0
  br i1 %tobool10.not, label %if.end23, label %if.then11

if.then11:                                        ; preds = %if.end9
  %7 = load i8*, i8** %content, align 8, !tbaa !21
  %cmp1.i86 = icmp ne i8* %7, null
  %.pre = load i64, i64* %offset, align 8, !tbaa !24
  %.pre116 = load i64, i64* %length, align 8, !tbaa !25
  %cmp3.i90 = icmp ult i64 %.pre, %.pre116
  %or.cond121 = select i1 %cmp1.i86, i1 %cmp3.i90, i1 false
  br i1 %or.cond121, label %land.rhs.i94, label %buffer_skip_whitespace.exit103

land.rhs.i94:                                     ; preds = %if.then11, %while.body.i97
  %8 = phi i64 [ %inc.i95, %while.body.i97 ], [ %.pre, %if.then11 ]
  %add.ptr.i92 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %add.ptr.i92, align 1, !tbaa !20
  %cmp14.i93 = icmp ult i8 %9, 33
  br i1 %cmp14.i93, label %while.body.i97, label %while.end.i99

while.body.i97:                                   ; preds = %land.rhs.i94
  %inc.i95 = add i64 %8, 1
  store i64 %inc.i95, i64* %offset, align 8, !tbaa !24
  %exitcond.not.i96 = icmp eq i64 %inc.i95, %.pre116
  br i1 %exitcond.not.i96, label %if.then21.i101, label %land.rhs.i94, !llvm.loop !31

while.end.i99:                                    ; preds = %land.rhs.i94
  %cmp19.i98 = icmp eq i64 %8, %.pre116
  br i1 %cmp19.i98, label %if.then21.i101, label %buffer_skip_whitespace.exit103

if.then21.i101:                                   ; preds = %while.body.i97, %while.end.i99
  %dec.i100 = add i64 %.pre116, -1
  store i64 %dec.i100, i64* %offset, align 8, !tbaa !24
  br label %buffer_skip_whitespace.exit103

buffer_skip_whitespace.exit103:                   ; preds = %if.then11, %while.end.i99, %if.then21.i101
  %10 = phi i64 [ %8, %while.end.i99 ], [ %dec.i100, %if.then21.i101 ], [ %.pre, %if.then11 ]
  %cmp15.not = icmp ult i64 %10, %.pre116
  br i1 %cmp15.not, label %lor.lhs.false16, label %if.then33

lor.lhs.false16:                                  ; preds = %buffer_skip_whitespace.exit103
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %10
  %11 = load i8, i8* %add.ptr, align 1, !tbaa !20
  %cmp19.not = icmp eq i8 %11, 0
  br i1 %cmp19.not, label %if.end23, label %if.then33

if.end23:                                         ; preds = %lor.lhs.false16, %if.end9
  %cmp24.not = icmp eq i8** %return_parse_end, null
  br i1 %cmp24.not, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.end23
  %12 = load i8*, i8** %content, align 8, !tbaa !21
  %13 = load i64, i64* %offset, align 8, !tbaa !24
  %add.ptr29 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %add.ptr29, i8** %return_parse_end, align 8, !tbaa !33
  br label %cleanup

if.then33:                                        ; preds = %buffer_skip_whitespace.exit, %lor.lhs.false16, %buffer_skip_whitespace.exit103
  call void @cJSON_Delete(%struct.cJSON* noundef nonnull %2)
  br label %if.end34

if.end34:                                         ; preds = %if.end, %entry, %if.then33
  br i1 %cmp, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.end34
  %offset38 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 2
  %14 = load i64, i64* %offset38, align 8, !tbaa !24
  %length39 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %buffer, i64 0, i32 1
  %15 = load i64, i64* %length39, align 8, !tbaa !25
  %cmp40 = icmp ult i64 %14, %15
  %cmp46.not = icmp eq i64 %15, 0
  %sub = add i64 %15, -1
  %spec.select = select i1 %cmp46.not, i64 0, i64 %sub
  %local_error.sroa.5.0 = select i1 %cmp40, i64 %14, i64 %spec.select
  %cmp53.not = icmp eq i8** %return_parse_end, null
  br i1 %cmp53.not, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.then37
  %add.ptr58 = getelementptr inbounds i8, i8* %value, i64 %local_error.sroa.5.0
  store i8* %add.ptr58, i8** %return_parse_end, align 8, !tbaa !33
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then37
  store i8* %value, i8** @global_error.0, align 8, !tbaa.struct !34
  store i64 %local_error.sroa.5.0, i64* @global_error.1, align 8, !tbaa.struct !36
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end59, %if.end23, %if.then26
  %retval.0 = phi %struct.cJSON* [ %2, %if.then26 ], [ %2, %if.end23 ], [ null, %if.end59 ], [ null, %if.end34 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #17
  ret %struct.cJSON* %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_value(%struct.cJSON* nocapture noundef writeonly %item, %struct.parse_buffer* noundef %input_buffer) unnamed_addr #5 {
entry:
  %after_end.i = alloca i8*, align 8
  %cmp = icmp eq %struct.parse_buffer* %input_buffer, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %content = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 0
  %0 = load i8*, i8** %content, align 8, !tbaa !21
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 2
  %1 = load i64, i64* %offset, align 8, !tbaa !24
  %add = add i64 %1, 4
  %length = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 1
  %2 = load i64, i64* %length, align 8, !tbaa !25
  %cmp3.not = icmp ugt i64 %add, %2
  br i1 %cmp3.not, label %land.lhs.true13, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  %call = tail call i32 @strncmp(i8* noundef nonnull %add.ptr, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4) #18
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true13

if.then8:                                         ; preds = %land.lhs.true4
  %type = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 3
  store i32 4, i32* %type, align 8, !tbaa !14
  store i64 %add, i64* %offset, align 8, !tbaa !24
  br label %return

land.lhs.true13:                                  ; preds = %land.lhs.true, %land.lhs.true4
  %add15 = add i64 %1, 5
  %cmp17.not = icmp ugt i64 %add15, %2
  br i1 %cmp17.not, label %land.lhs.true30, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %add.ptr21 = getelementptr inbounds i8, i8* %0, i64 %1
  %call22 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %add.ptr21, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 5) #18
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %land.lhs.true30

if.then24:                                        ; preds = %land.lhs.true18
  %type25 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 3
  store i32 1, i32* %type25, align 8, !tbaa !14
  store i64 %add15, i64* %offset, align 8, !tbaa !24
  br label %return

land.lhs.true30:                                  ; preds = %land.lhs.true13, %land.lhs.true18
  br i1 %cmp3.not, label %land.lhs.true47, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %add.ptr38 = getelementptr inbounds i8, i8* %0, i64 %1
  %call39 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %add.ptr38, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef 4) #18
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %land.lhs.true47

if.then41:                                        ; preds = %land.lhs.true35
  %type42 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 3
  store i32 2, i32* %type42, align 8, !tbaa !14
  %valueint = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 5
  store i32 1, i32* %valueint, align 8, !tbaa !37
  store i64 %add, i64* %offset, align 8, !tbaa !24
  br label %return

land.lhs.true47:                                  ; preds = %land.lhs.true30, %land.lhs.true35
  %cmp51 = icmp ugt i64 %2, %1
  br i1 %cmp51, label %land.lhs.true52, label %return

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %add.ptr55 = getelementptr inbounds i8, i8* %0, i64 %1
  %3 = load i8, i8* %add.ptr55, align 1, !tbaa !20
  %cmp56 = icmp eq i8 %3, 34
  br i1 %cmp56, label %if.then58, label %land.lhs.true69

if.then58:                                        ; preds = %land.lhs.true52
  %call59 = tail call fastcc i32 @parse_string(%struct.cJSON* noundef %item, %struct.parse_buffer* noundef nonnull %input_buffer)
  br label %return

land.lhs.true69:                                  ; preds = %land.lhs.true52
  %cmp75 = icmp eq i8 %3, 45
  %4 = add i8 %3, -48
  %5 = icmp ult i8 %4, 10
  %or.cond = or i1 %cmp75, %5
  br i1 %or.cond, label %for.body.lr.ph.i, label %land.lhs.true104

for.body.lr.ph.i:                                 ; preds = %land.lhs.true69
  %6 = bitcast i8** %after_end.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #17
  store i8* null, i8** %after_end.i, align 8, !tbaa !33
  %7 = sub i64 %2, %1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %8 = phi i8 [ %3, %for.body.lr.ph.i ], [ %.pre, %for.inc.i.for.body.i_crit_edge ]
  %has_decimal_point.0110.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %has_decimal_point.1.i, %for.inc.i.for.body.i_crit_edge ]
  %number_string_length.0109.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %number_string_length.1.i, %for.inc.i.for.body.i_crit_edge ]
  switch i8 %8, label %loop_end.i [
    i8 48, label %for.inc.i
    i8 49, label %for.inc.i
    i8 50, label %for.inc.i
    i8 51, label %for.inc.i
    i8 52, label %for.inc.i
    i8 53, label %for.inc.i
    i8 54, label %for.inc.i
    i8 55, label %for.inc.i
    i8 56, label %for.inc.i
    i8 57, label %for.inc.i
    i8 43, label %for.inc.i
    i8 45, label %for.inc.i
    i8 101, label %for.inc.i
    i8 69, label %for.inc.i
    i8 46, label %sw.bb6.i
  ]

sw.bb6.i:                                         ; preds = %for.body.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb6.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i
  %has_decimal_point.1.i = phi i32 [ 1, %sw.bb6.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ], [ %has_decimal_point.0110.i, %for.body.i ]
  %number_string_length.1.i = add nuw i64 %number_string_length.0109.i, 1
  %exitcond.not.i = icmp eq i64 %number_string_length.1.i, %7
  br i1 %exitcond.not.i, label %loop_end.i, label %for.inc.i.for.body.i_crit_edge, !llvm.loop !38

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  %arrayidx.i.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr55, i64 %number_string_length.1.i
  %.pre = load i8, i8* %arrayidx.i.phi.trans.insert, align 1, !tbaa !20
  br label %for.body.i

loop_end.i:                                       ; preds = %for.inc.i, %for.body.i
  %number_string_length.0.lcssa.i = phi i64 [ %7, %for.inc.i ], [ %number_string_length.0109.i, %for.body.i ]
  %has_decimal_point.0.lcssa.i = phi i32 [ %has_decimal_point.1.i, %for.inc.i ], [ %has_decimal_point.0110.i, %for.body.i ]
  %allocate.i = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 4, i32 0
  %9 = load i8* (i64)*, i8* (i64)** %allocate.i, align 8, !tbaa !27
  %add9.i = add i64 %number_string_length.0.lcssa.i, 1
  %call10.i = tail call i8* %9(i64 noundef %add9.i) #17
  %cmp11.i = icmp eq i8* %call10.i, null
  br i1 %cmp11.i, label %parse_number.exit, label %if.end14.i

if.end14.i:                                       ; preds = %loop_end.i
  %10 = load i8*, i8** %content, align 8, !tbaa !21
  %11 = load i64, i64* %offset, align 8, !tbaa !24
  %add.ptr17.i = getelementptr inbounds i8, i8* %10, i64 %11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %call10.i, i8* align 1 %add.ptr17.i, i64 %number_string_length.0.lcssa.i, i1 false) #17
  %arrayidx18.i = getelementptr inbounds i8, i8* %call10.i, i64 %number_string_length.0.lcssa.i
  store i8 0, i8* %arrayidx18.i, align 1, !tbaa !20
  %tobool.not.i = icmp ne i32 %has_decimal_point.0.lcssa.i, 0
  %cmp21114.i = icmp ne i64 %number_string_length.0.lcssa.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp21114.i, i1 false
  br i1 %or.cond.i, label %for.body23.i.preheader, label %if.end34.i

for.body23.i.preheader:                           ; preds = %if.end14.i
  %min.iters.check = icmp ult i64 %number_string_length.0.lcssa.i, 16
  br i1 %min.iters.check, label %for.body23.i.preheader412, label %vector.ph

vector.ph:                                        ; preds = %for.body23.i.preheader
  %n.vec = and i64 %number_string_length.0.lcssa.i, -16
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue411, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue411 ]
  %12 = or i64 %index, 8
  %13 = getelementptr inbounds i8, i8* %call10.i, i64 %index
  %14 = bitcast i8* %13 to <8 x i8>*
  %wide.load = load <8 x i8>, <8 x i8>* %14, align 1, !tbaa !20
  %15 = getelementptr inbounds i8, i8* %13, i64 8
  %16 = bitcast i8* %15 to <8 x i8>*
  %wide.load381 = load <8 x i8>, <8 x i8>* %16, align 1, !tbaa !20
  %17 = icmp eq <8 x i8> %wide.load, <i8 46, i8 46, i8 46, i8 46, i8 46, i8 46, i8 46, i8 46>
  %18 = icmp eq <8 x i8> %wide.load381, <i8 46, i8 46, i8 46, i8 46, i8 46, i8 46, i8 46, i8 46>
  %19 = extractelement <8 x i1> %17, i64 0
  br i1 %19, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %20 = getelementptr inbounds i8, i8* %call10.i, i64 %index
  store i8 46, i8* %20, align 1, !tbaa !20
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %21 = extractelement <8 x i1> %17, i64 1
  br i1 %21, label %pred.store.if382, label %pred.store.continue383

pred.store.if382:                                 ; preds = %pred.store.continue
  %22 = or i64 %index, 1
  %23 = getelementptr inbounds i8, i8* %call10.i, i64 %22
  store i8 46, i8* %23, align 1, !tbaa !20
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.if382, %pred.store.continue
  %24 = extractelement <8 x i1> %17, i64 2
  br i1 %24, label %pred.store.if384, label %pred.store.continue385

pred.store.if384:                                 ; preds = %pred.store.continue383
  %25 = or i64 %index, 2
  %26 = getelementptr inbounds i8, i8* %call10.i, i64 %25
  store i8 46, i8* %26, align 1, !tbaa !20
  br label %pred.store.continue385

pred.store.continue385:                           ; preds = %pred.store.if384, %pred.store.continue383
  %27 = extractelement <8 x i1> %17, i64 3
  br i1 %27, label %pred.store.if386, label %pred.store.continue387

pred.store.if386:                                 ; preds = %pred.store.continue385
  %28 = or i64 %index, 3
  %29 = getelementptr inbounds i8, i8* %call10.i, i64 %28
  store i8 46, i8* %29, align 1, !tbaa !20
  br label %pred.store.continue387

pred.store.continue387:                           ; preds = %pred.store.if386, %pred.store.continue385
  %30 = extractelement <8 x i1> %17, i64 4
  br i1 %30, label %pred.store.if388, label %pred.store.continue389

pred.store.if388:                                 ; preds = %pred.store.continue387
  %31 = or i64 %index, 4
  %32 = getelementptr inbounds i8, i8* %call10.i, i64 %31
  store i8 46, i8* %32, align 1, !tbaa !20
  br label %pred.store.continue389

pred.store.continue389:                           ; preds = %pred.store.if388, %pred.store.continue387
  %33 = extractelement <8 x i1> %17, i64 5
  br i1 %33, label %pred.store.if390, label %pred.store.continue391

pred.store.if390:                                 ; preds = %pred.store.continue389
  %34 = or i64 %index, 5
  %35 = getelementptr inbounds i8, i8* %call10.i, i64 %34
  store i8 46, i8* %35, align 1, !tbaa !20
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.if390, %pred.store.continue389
  %36 = extractelement <8 x i1> %17, i64 6
  br i1 %36, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %pred.store.continue391
  %37 = or i64 %index, 6
  %38 = getelementptr inbounds i8, i8* %call10.i, i64 %37
  store i8 46, i8* %38, align 1, !tbaa !20
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %pred.store.continue391
  %39 = extractelement <8 x i1> %17, i64 7
  br i1 %39, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  %40 = or i64 %index, 7
  %41 = getelementptr inbounds i8, i8* %call10.i, i64 %40
  store i8 46, i8* %41, align 1, !tbaa !20
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %42 = extractelement <8 x i1> %18, i64 0
  br i1 %42, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395
  %43 = getelementptr inbounds i8, i8* %call10.i, i64 %12
  store i8 46, i8* %43, align 1, !tbaa !20
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395
  %44 = extractelement <8 x i1> %18, i64 1
  br i1 %44, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  %45 = or i64 %index, 9
  %46 = getelementptr inbounds i8, i8* %call10.i, i64 %45
  store i8 46, i8* %46, align 1, !tbaa !20
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %47 = extractelement <8 x i1> %18, i64 2
  br i1 %47, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  %48 = or i64 %index, 10
  %49 = getelementptr inbounds i8, i8* %call10.i, i64 %48
  store i8 46, i8* %49, align 1, !tbaa !20
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %50 = extractelement <8 x i1> %18, i64 3
  br i1 %50, label %pred.store.if402, label %pred.store.continue403

pred.store.if402:                                 ; preds = %pred.store.continue401
  %51 = or i64 %index, 11
  %52 = getelementptr inbounds i8, i8* %call10.i, i64 %51
  store i8 46, i8* %52, align 1, !tbaa !20
  br label %pred.store.continue403

pred.store.continue403:                           ; preds = %pred.store.if402, %pred.store.continue401
  %53 = extractelement <8 x i1> %18, i64 4
  br i1 %53, label %pred.store.if404, label %pred.store.continue405

pred.store.if404:                                 ; preds = %pred.store.continue403
  %54 = or i64 %index, 12
  %55 = getelementptr inbounds i8, i8* %call10.i, i64 %54
  store i8 46, i8* %55, align 1, !tbaa !20
  br label %pred.store.continue405

pred.store.continue405:                           ; preds = %pred.store.if404, %pred.store.continue403
  %56 = extractelement <8 x i1> %18, i64 5
  br i1 %56, label %pred.store.if406, label %pred.store.continue407

pred.store.if406:                                 ; preds = %pred.store.continue405
  %57 = or i64 %index, 13
  %58 = getelementptr inbounds i8, i8* %call10.i, i64 %57
  store i8 46, i8* %58, align 1, !tbaa !20
  br label %pred.store.continue407

pred.store.continue407:                           ; preds = %pred.store.if406, %pred.store.continue405
  %59 = extractelement <8 x i1> %18, i64 6
  br i1 %59, label %pred.store.if408, label %pred.store.continue409

pred.store.if408:                                 ; preds = %pred.store.continue407
  %60 = or i64 %index, 14
  %61 = getelementptr inbounds i8, i8* %call10.i, i64 %60
  store i8 46, i8* %61, align 1, !tbaa !20
  br label %pred.store.continue409

pred.store.continue409:                           ; preds = %pred.store.if408, %pred.store.continue407
  %62 = extractelement <8 x i1> %18, i64 7
  br i1 %62, label %pred.store.if410, label %pred.store.continue411

pred.store.if410:                                 ; preds = %pred.store.continue409
  %63 = or i64 %index, 15
  %64 = getelementptr inbounds i8, i8* %call10.i, i64 %63
  store i8 46, i8* %64, align 1, !tbaa !20
  br label %pred.store.continue411

pred.store.continue411:                           ; preds = %pred.store.if410, %pred.store.continue409
  %index.next = add nuw i64 %index, 16
  %65 = icmp eq i64 %index.next, %n.vec
  br i1 %65, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %pred.store.continue411
  %cmp.n = icmp eq i64 %number_string_length.0.lcssa.i, %n.vec
  br i1 %cmp.n, label %if.end34.i, label %for.body23.i.preheader412

for.body23.i.preheader412:                        ; preds = %for.body23.i.preheader, %middle.block
  %i.1115.i.ph = phi i64 [ 0, %for.body23.i.preheader ], [ %n.vec, %middle.block ]
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.preheader412, %for.inc31.i
  %i.1115.i = phi i64 [ %inc32.i, %for.inc31.i ], [ %i.1115.i.ph, %for.body23.i.preheader412 ]
  %arrayidx24.i = getelementptr inbounds i8, i8* %call10.i, i64 %i.1115.i
  %66 = load i8, i8* %arrayidx24.i, align 1, !tbaa !20
  %cmp26.i = icmp eq i8 %66, 46
  br i1 %cmp26.i, label %if.then28.i, label %for.inc31.i

if.then28.i:                                      ; preds = %for.body23.i
  store i8 46, i8* %arrayidx24.i, align 1, !tbaa !20
  br label %for.inc31.i

for.inc31.i:                                      ; preds = %if.then28.i, %for.body23.i
  %inc32.i = add nuw i64 %i.1115.i, 1
  %exitcond116.not.i = icmp eq i64 %inc32.i, %number_string_length.0.lcssa.i
  br i1 %exitcond116.not.i, label %if.end34.i, label %for.body23.i, !llvm.loop !41

if.end34.i:                                       ; preds = %for.inc31.i, %middle.block, %if.end14.i
  %call35.i = call double @strtod(i8* noundef nonnull %call10.i, i8** noundef nonnull %after_end.i) #17
  %67 = load i8*, i8** %after_end.i, align 8, !tbaa !33
  %cmp36.i = icmp eq i8* %call10.i, %67
  br i1 %cmp36.i, label %cleanup.sink.split.i, label %if.end40.i

if.end40.i:                                       ; preds = %if.end34.i
  %valuedouble.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 6
  store double %call35.i, double* %valuedouble.i, align 8, !tbaa !43
  %cmp41.i = fcmp ult double %call35.i, 0x41DFFFFFFFC00000
  br i1 %cmp41.i, label %if.else.i, label %if.end52.i

if.else.i:                                        ; preds = %if.end40.i
  %cmp44.i = fcmp ugt double %call35.i, 0xC1E0000000000000
  br i1 %cmp44.i, label %if.else48.i, label %if.end52.i

if.else48.i:                                      ; preds = %if.else.i
  %conv49.i = fptosi double %call35.i to i32
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else48.i, %if.else.i, %if.end40.i
  %.sink.i = phi i32 [ %conv49.i, %if.else48.i ], [ 2147483647, %if.end40.i ], [ -2147483648, %if.else.i ]
  %valueint47.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 5
  store i32 %.sink.i, i32* %valueint47.i, align 8, !tbaa !37
  %type.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 3
  store i32 8, i32* %type.i, align 8, !tbaa !14
  %sub.ptr.lhs.cast.i = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call10.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %68 = load i64, i64* %offset, align 8, !tbaa !24
  %add54.i = add i64 %sub.ptr.sub.i, %68
  store i64 %add54.i, i64* %offset, align 8, !tbaa !24
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end52.i, %if.end34.i
  %retval.0.ph.i = phi i32 [ 1, %if.end52.i ], [ 0, %if.end34.i ]
  %deallocate56.i = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 4, i32 1
  %69 = load void (i8*)*, void (i8*)** %deallocate56.i, align 8, !tbaa !30
  tail call void %69(i8* noundef nonnull %call10.i) #17
  br label %parse_number.exit

parse_number.exit:                                ; preds = %loop_end.i, %cleanup.sink.split.i
  %retval.0.i = phi i32 [ 0, %loop_end.i ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #17
  br label %return

land.lhs.true104:                                 ; preds = %land.lhs.true69
  switch i8 %3, label %return [
    i8 91, label %if.then112
    i8 123, label %if.then131
  ]

if.then112:                                       ; preds = %land.lhs.true104
  %depth.i = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 3
  %70 = load i64, i64* %depth.i, align 8, !tbaa !44
  %cmp.i192 = icmp ugt i64 %70, 999
  br i1 %cmp.i192, label %return, label %if.end.i

if.end.i:                                         ; preds = %if.then112
  %inc.i = add nuw nsw i64 %70, 1
  store i64 %inc.i, i64* %depth.i, align 8, !tbaa !44
  %71 = load i8, i8* %add.ptr55, align 1, !tbaa !20
  %cmp2.not.i = icmp eq i8 %71, 91
  br i1 %cmp2.not.i, label %land.lhs.true.i, label %return

land.lhs.true.i:                                  ; preds = %if.end.i
  %inc7.i = add nuw i64 %1, 1
  store i64 %inc7.i, i64* %offset, align 8, !tbaa !24
  %call.i = tail call fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef nonnull %input_buffer) #17
  %72 = load i64, i64* %offset, align 8, !tbaa !24
  %73 = load i64, i64* %length, align 8, !tbaa !25
  %cmp11.i197 = icmp ult i64 %72, %73
  br i1 %cmp11.i197, label %land.lhs.true13.i, label %if.then31.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %74 = load i8*, i8** %content, align 8, !tbaa !21
  %add.ptr16.i = getelementptr inbounds i8, i8* %74, i64 %72
  %75 = load i8, i8* %add.ptr16.i, align 1, !tbaa !20
  %cmp19.i = icmp eq i8 %75, 93
  br i1 %cmp19.i, label %success.i.thread, label %if.end33.i

success.i.thread:                                 ; preds = %land.lhs.true13.i
  %76 = load i64, i64* %depth.i, align 8, !tbaa !44
  %dec85.i262 = add i64 %76, -1
  store i64 %dec85.i262, i64* %depth.i, align 8, !tbaa !44
  br label %if.end90.i

if.then31.i:                                      ; preds = %land.lhs.true.i
  %dec.i = add i64 %72, -1
  store i64 %dec.i, i64* %offset, align 8, !tbaa !24
  br label %return

if.end33.i:                                       ; preds = %land.lhs.true13.i
  %dec35.i = add i64 %72, -1
  store i64 %dec35.i, i64* %offset, align 8, !tbaa !24
  %hooks.idx.i = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 4, i32 0
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i, %if.end33.i
  %head.0.i = phi %struct.cJSON* [ null, %if.end33.i ], [ %head.1.i, %land.rhs.i ]
  %current_item.0.i = phi %struct.cJSON* [ null, %if.end33.i ], [ %77, %land.rhs.i ]
  %hooks.idx.val.i = load i8* (i64)*, i8* (i64)** %hooks.idx.i, align 8, !tbaa !45
  %call.i243 = tail call i8* %hooks.idx.val.i(i64 noundef 64) #17
  %cmp.not.i = icmp eq i8* %call.i243, null
  br i1 %cmp.not.i, label %fail.i, label %if.end40.i199

if.end40.i199:                                    ; preds = %do.body.i
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %call.i243, i8 0, i64 64, i1 false) #17
  %77 = bitcast i8* %call.i243 to %struct.cJSON*
  %cmp41.i198 = icmp eq %struct.cJSON* %head.0.i, null
  br i1 %cmp41.i198, label %if.end44.i, label %if.else.i200

if.else.i200:                                     ; preds = %if.end40.i199
  %78 = bitcast %struct.cJSON* %current_item.0.i to i8**
  store i8* %call.i243, i8** %78, align 8, !tbaa !10
  %prev.i = getelementptr inbounds i8, i8* %call.i243, i64 8
  %79 = bitcast i8* %prev.i to %struct.cJSON**
  store %struct.cJSON* %current_item.0.i, %struct.cJSON** %79, align 8, !tbaa !46
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i200, %if.end40.i199
  %head.1.i = phi %struct.cJSON* [ %head.0.i, %if.else.i200 ], [ %77, %if.end40.i199 ]
  %80 = load i64, i64* %offset, align 8, !tbaa !24
  %inc46.i = add i64 %80, 1
  store i64 %inc46.i, i64* %offset, align 8, !tbaa !24
  %call47.i = tail call fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef nonnull %input_buffer) #17
  %call48.i = tail call fastcc i32 @parse_value(%struct.cJSON* noundef nonnull %77, %struct.parse_buffer* noundef nonnull %input_buffer) #17
  %tobool.not.i201 = icmp eq i32 %call48.i, 0
  br i1 %tobool.not.i201, label %if.then95.i, label %land.lhs.true54.i

land.lhs.true54.i:                                ; preds = %if.end44.i
  %call51.i = tail call fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef nonnull %input_buffer) #17
  %81 = load i64, i64* %offset, align 8, !tbaa !24
  %82 = load i64, i64* %length, align 8, !tbaa !25
  %cmp58.i = icmp ult i64 %81, %82
  br i1 %cmp58.i, label %land.rhs.i, label %if.then95.i

land.rhs.i:                                       ; preds = %land.lhs.true54.i
  %83 = load i8*, i8** %content, align 8, !tbaa !21
  %add.ptr62.i = getelementptr inbounds i8, i8* %83, i64 %81
  %84 = load i8, i8* %add.ptr62.i, align 1, !tbaa !20
  switch i8 %84, label %if.then95.i [
    i8 44, label %do.body.i
    i8 93, label %if.then88.i
  ]

if.then88.i:                                      ; preds = %land.rhs.i
  %85 = load i64, i64* %depth.i, align 8, !tbaa !44
  %dec85.i = add i64 %85, -1
  store i64 %dec85.i, i64* %depth.i, align 8, !tbaa !44
  %prev89.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %head.1.i, i64 0, i32 1
  %86 = bitcast %struct.cJSON** %prev89.i to i8**
  store i8* %call.i243, i8** %86, align 8, !tbaa !46
  br label %if.end90.i

if.end90.i:                                       ; preds = %success.i.thread, %if.then88.i
  %87 = phi i64 [ %72, %success.i.thread ], [ %81, %if.then88.i ]
  %head.3.i264 = phi %struct.cJSON* [ null, %success.i.thread ], [ %head.1.i, %if.then88.i ]
  %type.i203 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 3
  store i32 32, i32* %type.i203, align 8, !tbaa !14
  %child.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 2
  store %struct.cJSON* %head.3.i264, %struct.cJSON** %child.i, align 8, !tbaa !15
  %inc92.i = add nuw i64 %87, 1
  store i64 %inc92.i, i64* %offset, align 8, !tbaa !24
  br label %return

fail.i:                                           ; preds = %do.body.i
  %cmp93.not.i = icmp eq %struct.cJSON* %head.0.i, null
  br i1 %cmp93.not.i, label %return, label %if.then95.i

if.then95.i:                                      ; preds = %land.rhs.i, %land.lhs.true54.i, %if.end44.i, %fail.i
  %head.4.i271 = phi %struct.cJSON* [ %head.0.i, %fail.i ], [ %head.1.i, %if.end44.i ], [ %head.1.i, %land.lhs.true54.i ], [ %head.1.i, %land.rhs.i ]
  tail call void @cJSON_Delete(%struct.cJSON* noundef nonnull %head.4.i271) #17
  br label %return

if.then131:                                       ; preds = %land.lhs.true104
  %depth.i205 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 3
  %88 = load i64, i64* %depth.i205, align 8, !tbaa !44
  %cmp.i206 = icmp ugt i64 %88, 999
  br i1 %cmp.i206, label %return, label %lor.lhs.false.i215

lor.lhs.false.i215:                               ; preds = %if.then131
  %inc.i207 = add nuw nsw i64 %88, 1
  store i64 %inc.i207, i64* %depth.i205, align 8, !tbaa !44
  %89 = load i8, i8* %add.ptr55, align 1, !tbaa !20
  %cmp5.not.i = icmp eq i8 %89, 123
  br i1 %cmp5.not.i, label %if.end8.i, label %return

if.end8.i:                                        ; preds = %lor.lhs.false.i215
  %inc10.i = add nuw i64 %1, 1
  store i64 %inc10.i, i64* %offset, align 8, !tbaa !24
  %call.i216 = tail call fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef nonnull %input_buffer) #17
  %90 = load i64, i64* %offset, align 8, !tbaa !24
  %91 = load i64, i64* %length, align 8, !tbaa !25
  %cmp17.i = icmp ult i64 %90, %91
  br i1 %cmp17.i, label %land.lhs.true19.i, label %if.then37.i

land.lhs.true19.i:                                ; preds = %if.end8.i
  %92 = load i8*, i8** %content, align 8, !tbaa !21
  %add.ptr22.i = getelementptr inbounds i8, i8* %92, i64 %90
  %93 = load i8, i8* %add.ptr22.i, align 1, !tbaa !20
  %cmp25.i = icmp eq i8 %93, 125
  br i1 %cmp25.i, label %success.i237.thread, label %if.end39.i

success.i237.thread:                              ; preds = %land.lhs.true19.i
  %94 = load i64, i64* %depth.i205, align 8, !tbaa !44
  %dec129.i287 = add i64 %94, -1
  store i64 %dec129.i287, i64* %depth.i205, align 8, !tbaa !44
  br label %if.end134.i

if.then37.i:                                      ; preds = %if.end8.i
  %dec.i217 = add i64 %90, -1
  store i64 %dec.i217, i64* %offset, align 8, !tbaa !24
  br label %return

if.end39.i:                                       ; preds = %land.lhs.true19.i
  %dec41.i = add i64 %90, -1
  store i64 %dec41.i, i64* %offset, align 8, !tbaa !24
  %hooks.idx.i221 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %input_buffer, i64 0, i32 4, i32 0
  br label %do.body.i223

do.body.i223:                                     ; preds = %land.rhs.i234, %if.end39.i
  %head.0.i218 = phi %struct.cJSON* [ null, %if.end39.i ], [ %head.1.i227, %land.rhs.i234 ]
  %current_item.0.i219 = phi %struct.cJSON* [ null, %if.end39.i ], [ %95, %land.rhs.i234 ]
  %hooks.idx.val.i222 = load i8* (i64)*, i8* (i64)** %hooks.idx.i221, align 8, !tbaa !45
  %call.i245 = tail call i8* %hooks.idx.val.i222(i64 noundef 64) #17
  %cmp.not.i246 = icmp eq i8* %call.i245, null
  br i1 %cmp.not.i246, label %fail.i241, label %if.end46.i

if.end46.i:                                       ; preds = %do.body.i223
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %call.i245, i8 0, i64 64, i1 false) #17
  %95 = bitcast i8* %call.i245 to %struct.cJSON*
  %cmp47.i = icmp eq %struct.cJSON* %head.0.i218, null
  br i1 %cmp47.i, label %land.lhs.true53.i, label %if.else.i226

if.else.i226:                                     ; preds = %if.end46.i
  %96 = bitcast %struct.cJSON* %current_item.0.i219 to i8**
  store i8* %call.i245, i8** %96, align 8, !tbaa !10
  %prev.i225 = getelementptr inbounds i8, i8* %call.i245, i64 8
  %97 = bitcast i8* %prev.i225 to %struct.cJSON**
  store %struct.cJSON* %current_item.0.i219, %struct.cJSON** %97, align 8, !tbaa !46
  br label %land.lhs.true53.i

land.lhs.true53.i:                                ; preds = %if.else.i226, %if.end46.i
  %head.1.i227 = phi %struct.cJSON* [ %head.0.i218, %if.else.i226 ], [ %95, %if.end46.i ]
  %98 = load i64, i64* %offset, align 8, !tbaa !24
  %add55.i = add i64 %98, 1
  %99 = load i64, i64* %length, align 8, !tbaa !25
  %cmp57.i = icmp ult i64 %add55.i, %99
  br i1 %cmp57.i, label %if.end60.i, label %if.then139.i

if.end60.i:                                       ; preds = %land.lhs.true53.i
  store i64 %add55.i, i64* %offset, align 8, !tbaa !24
  %call63.i = tail call fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef nonnull %input_buffer) #17
  %call64.i = tail call fastcc i32 @parse_string(%struct.cJSON* noundef nonnull %95, %struct.parse_buffer* noundef nonnull %input_buffer) #17
  %tobool.not.i228 = icmp eq i32 %call64.i, 0
  br i1 %tobool.not.i228, label %if.then139.i, label %if.end66.i

if.end66.i:                                       ; preds = %if.end60.i
  %call67.i = tail call fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef nonnull %input_buffer) #17
  %valuestring.i = getelementptr inbounds i8, i8* %call.i245, i64 32
  %100 = bitcast i8* %valuestring.i to i8**
  %101 = load i8*, i8** %100, align 8, !tbaa !16
  %string.i = getelementptr inbounds i8, i8* %call.i245, i64 56
  %102 = bitcast i8* %string.i to i8**
  store i8* %101, i8** %102, align 8, !tbaa !17
  store i8* null, i8** %100, align 8, !tbaa !16
  %103 = load i64, i64* %offset, align 8, !tbaa !24
  %104 = load i64, i64* %length, align 8, !tbaa !25
  %cmp75.i = icmp ult i64 %103, %104
  br i1 %cmp75.i, label %lor.lhs.false77.i, label %if.then139.i

lor.lhs.false77.i:                                ; preds = %if.end66.i
  %105 = load i8*, i8** %content, align 8, !tbaa !21
  %add.ptr80.i = getelementptr inbounds i8, i8* %105, i64 %103
  %106 = load i8, i8* %add.ptr80.i, align 1, !tbaa !20
  %cmp83.not.i = icmp eq i8 %106, 58
  br i1 %cmp83.not.i, label %if.end86.i, label %if.then139.i

if.end86.i:                                       ; preds = %lor.lhs.false77.i
  %inc88.i = add nuw i64 %103, 1
  store i64 %inc88.i, i64* %offset, align 8, !tbaa !24
  %call89.i = tail call fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef nonnull %input_buffer) #17
  %call90.i = tail call fastcc i32 @parse_value(%struct.cJSON* noundef nonnull %95, %struct.parse_buffer* noundef nonnull %input_buffer) #17
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.then139.i, label %land.lhs.true97.i

land.lhs.true97.i:                                ; preds = %if.end86.i
  %call94.i = tail call fastcc %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef nonnull %input_buffer) #17
  %107 = load i64, i64* %offset, align 8, !tbaa !24
  %108 = load i64, i64* %length, align 8, !tbaa !25
  %cmp101.i = icmp ult i64 %107, %108
  br i1 %cmp101.i, label %land.rhs.i234, label %if.then139.i

land.rhs.i234:                                    ; preds = %land.lhs.true97.i
  %109 = load i8*, i8** %content, align 8, !tbaa !21
  %add.ptr105.i = getelementptr inbounds i8, i8* %109, i64 %107
  %110 = load i8, i8* %add.ptr105.i, align 1, !tbaa !20
  switch i8 %110, label %if.then139.i [
    i8 44, label %do.body.i223
    i8 125, label %if.then132.i
  ]

if.then132.i:                                     ; preds = %land.rhs.i234
  %111 = load i64, i64* %depth.i205, align 8, !tbaa !44
  %dec129.i = add i64 %111, -1
  store i64 %dec129.i, i64* %depth.i205, align 8, !tbaa !44
  %prev133.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %head.1.i227, i64 0, i32 1
  %112 = bitcast %struct.cJSON** %prev133.i to i8**
  store i8* %call.i245, i8** %112, align 8, !tbaa !46
  br label %if.end134.i

if.end134.i:                                      ; preds = %success.i237.thread, %if.then132.i
  %113 = phi i64 [ %90, %success.i237.thread ], [ %107, %if.then132.i ]
  %head.3.i235289 = phi %struct.cJSON* [ null, %success.i237.thread ], [ %head.1.i227, %if.then132.i ]
  %type.i238 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 3
  store i32 64, i32* %type.i238, align 8, !tbaa !14
  %child.i239 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 2
  store %struct.cJSON* %head.3.i235289, %struct.cJSON** %child.i239, align 8, !tbaa !15
  %inc136.i = add nuw i64 %113, 1
  store i64 %inc136.i, i64* %offset, align 8, !tbaa !24
  br label %return

fail.i241:                                        ; preds = %do.body.i223
  %cmp137.not.i = icmp eq %struct.cJSON* %head.0.i218, null
  br i1 %cmp137.not.i, label %return, label %if.then139.i

if.then139.i:                                     ; preds = %land.rhs.i234, %land.lhs.true53.i, %if.end60.i, %lor.lhs.false77.i, %if.end66.i, %if.end86.i, %land.lhs.true97.i, %fail.i241
  %head.4.i240296 = phi %struct.cJSON* [ %head.0.i218, %fail.i241 ], [ %head.1.i227, %land.lhs.true97.i ], [ %head.1.i227, %if.end86.i ], [ %head.1.i227, %if.end66.i ], [ %head.1.i227, %lor.lhs.false77.i ], [ %head.1.i227, %if.end60.i ], [ %head.1.i227, %land.lhs.true53.i ], [ %head.1.i227, %land.rhs.i234 ]
  tail call void @cJSON_Delete(%struct.cJSON* noundef nonnull %head.4.i240296) #17
  br label %return

return:                                           ; preds = %land.lhs.true104, %if.then37.i, %lor.lhs.false.i215, %if.then31.i, %if.end.i, %if.then139.i, %fail.i241, %if.end134.i, %if.then131, %land.lhs.true47, %if.then95.i, %fail.i, %if.end90.i, %if.then112, %entry, %lor.lhs.false, %parse_number.exit, %if.then58, %if.then41, %if.then24, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then24 ], [ 1, %if.then41 ], [ %call59, %if.then58 ], [ %retval.0.i, %parse_number.exit ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.end90.i ], [ 0, %if.then112 ], [ 0, %if.then95.i ], [ 0, %fail.i ], [ 0, %land.lhs.true47 ], [ 1, %if.end134.i ], [ 0, %if.then131 ], [ 0, %if.then139.i ], [ 0, %fail.i241 ], [ 0, %if.end.i ], [ 0, %if.then31.i ], [ 0, %lor.lhs.false.i215 ], [ 0, %if.then37.i ], [ 0, %land.lhs.true104 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cJSON* @cJSON_ParseWithOpts(i8* noundef %value, i8** noundef %return_parse_end, i32 noundef %require_null_terminated) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq i8* %value, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %value) #18
  %add = add i64 %call, 1
  %call1 = tail call %struct.cJSON* @cJSON_ParseWithLengthOpts(i8* noundef nonnull %value, i64 noundef %add, i8** noundef %return_parse_end, i32 noundef %require_null_terminated)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.cJSON* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.cJSON* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local %struct.cJSON* @cJSON_Parse(i8* noundef %value) local_unnamed_addr #5 {
entry:
  %cmp.i = icmp eq i8* %value, null
  br i1 %cmp.i, label %cJSON_ParseWithOpts.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i = tail call i64 @strlen(i8* noundef nonnull %value) #18
  %add.i = add i64 %call.i, 1
  %call1.i = tail call %struct.cJSON* @cJSON_ParseWithLengthOpts(i8* noundef nonnull %value, i64 noundef %add.i, i8** noundef null, i32 noundef 0) #17
  br label %cJSON_ParseWithOpts.exit

cJSON_ParseWithOpts.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi %struct.cJSON* [ %call1.i, %if.end.i ], [ null, %entry ]
  ret %struct.cJSON* %retval.0.i
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cJSON* @cJSON_ParseWithLength(i8* noundef %value, i64 noundef %buffer_length) local_unnamed_addr #5 {
entry:
  %call = tail call %struct.cJSON* @cJSON_ParseWithLengthOpts(i8* noundef %value, i64 noundef %buffer_length, i8** noundef null, i32 noundef 0)
  ret %struct.cJSON* %call
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cJSON* @cJSON_CreateString(i8* noundef readonly %string) local_unnamed_addr #5 {
entry:
  %call.i = tail call dereferenceable_or_null(64) i8* @malloc(i64 noundef 64) #17
  %cmp.not.i = icmp eq i8* %call.i, null
  br i1 %cmp.not.i, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %call.i, i8 0, i64 64, i1 false) #17
  %0 = bitcast i8* %call.i to %struct.cJSON*
  %type = getelementptr inbounds i8, i8* %call.i, i64 24
  %1 = bitcast i8* %type to i32*
  store i32 16, i32* %1, align 8, !tbaa !14
  %cmp.i = icmp eq i8* %string, null
  br i1 %cmp.i, label %if.then4, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %call.i12 = tail call i64 @strlen(i8* noundef nonnull %string) #18
  %add.i = add i64 %call.i12, 1
  %call1.i = tail call i8* @malloc(i64 noundef %add.i) #17
  %cmp2.i = icmp eq i8* %call1.i, null
  br i1 %cmp2.i, label %if.then4, label %cJSON_strdup.exit

cJSON_strdup.exit:                                ; preds = %if.end.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %call1.i, i8* nonnull align 1 %string, i64 %add.i, i1 false) #17
  %valuestring = getelementptr inbounds i8, i8* %call.i, i64 32
  %2 = bitcast i8* %valuestring to i8**
  store i8* %call1.i, i8** %2, align 8, !tbaa !16
  br label %cleanup

if.then4:                                         ; preds = %if.then, %if.end.i
  %valuestring14 = getelementptr inbounds i8, i8* %call.i, i64 32
  %3 = bitcast i8* %valuestring14 to i8**
  store i8* null, i8** %3, align 8, !tbaa !16
  tail call void @cJSON_Delete(%struct.cJSON* noundef nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %entry, %cJSON_strdup.exit, %if.then4
  %retval.0 = phi %struct.cJSON* [ null, %if.then4 ], [ %0, %cJSON_strdup.exit ], [ null, %entry ]
  ret %struct.cJSON* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cJSON* @cJSON_CreateObject() local_unnamed_addr #5 {
entry:
  %call.i = tail call dereferenceable_or_null(64) i8* @malloc(i64 noundef 64) #17
  %cond = icmp eq i8* %call.i, null
  br i1 %cond, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %call.i, i8 0, i64 64, i1 false) #17
  %type = getelementptr inbounds i8, i8* %call.i, i64 24
  %0 = bitcast i8* %type to i32*
  store i32 64, i32* %0, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %entry, %if.then.i
  %1 = bitcast i8* %call.i to %struct.cJSON*
  ret %struct.cJSON* %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @add_item_to_array(%struct.cJSON* noundef %array, %struct.cJSON* noundef %item) local_unnamed_addr #11 {
entry:
  %cmp = icmp eq %struct.cJSON* %item, null
  %cmp1 = icmp eq %struct.cJSON* %array, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq %struct.cJSON* %array, %item
  %or.cond30 = or i1 %cmp3, %or.cond
  br i1 %or.cond30, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %child4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %array, i64 0, i32 2
  %0 = load %struct.cJSON*, %struct.cJSON** %child4, align 8, !tbaa !15
  %cmp5 = icmp eq %struct.cJSON* %0, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  store %struct.cJSON* %item, %struct.cJSON** %child4, align 8, !tbaa !15
  %prev = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 1
  store %struct.cJSON* %item, %struct.cJSON** %prev, align 8, !tbaa !46
  %next = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 0
  store %struct.cJSON* null, %struct.cJSON** %next, align 8, !tbaa !10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %prev8 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 1
  %1 = load %struct.cJSON*, %struct.cJSON** %prev8, align 8, !tbaa !46
  %tobool.not = icmp eq %struct.cJSON* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.else
  %next.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %1, i64 0, i32 0
  store %struct.cJSON* %item, %struct.cJSON** %next.i, align 8, !tbaa !10
  %prev1.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 1
  store %struct.cJSON* %1, %struct.cJSON** %prev1.i, align 8, !tbaa !46
  store %struct.cJSON* %item, %struct.cJSON** %prev8, align 8, !tbaa !46
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then9, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 1, %if.then9 ], [ 1, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cJSON_AddItemToObject(%struct.cJSON* noundef %object, i8* noundef readonly %string, %struct.cJSON* noundef %item) local_unnamed_addr #5 {
entry:
  %cmp.i = icmp eq %struct.cJSON* %object, null
  %cmp1.i = icmp eq i8* %string, null
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  %cmp3.i = icmp eq %struct.cJSON* %item, null
  %or.cond25.i = or i1 %or.cond.i, %cmp3.i
  %cmp5.i = icmp eq %struct.cJSON* %object, %item
  %or.cond1.i = or i1 %cmp5.i, %or.cond25.i
  br i1 %or.cond1.i, label %add_item_to_object.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %call.i.i = tail call i64 @strlen(i8* noundef nonnull %string) #18
  %add.i.i = add i64 %call.i.i, 1
  %call1.i.i = tail call i8* @malloc(i64 noundef %add.i.i) #17
  %cmp2.i.i = icmp eq i8* %call1.i.i, null
  br i1 %cmp2.i.i, label %add_item_to_object.exit, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %call1.i.i, i8* nonnull align 1 %string, i64 %add.i.i, i1 false) #17
  %type11.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 3
  %0 = load i32, i32* %type11.i, align 8, !tbaa !14
  %and.i = and i32 %0, -513
  %and14.i = and i32 %0, 512
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i, label %if.end.i3.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %string16.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 7
  %1 = load i8*, i8** %string16.i, align 8, !tbaa !17
  %cmp17.not.i = icmp eq i8* %1, null
  br i1 %cmp17.not.i, label %if.end.i3.i, label %if.then18.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  tail call void @free(i8* noundef nonnull %1) #17
  br label %if.end.i3.i

if.end.i3.i:                                      ; preds = %if.then18.i, %land.lhs.true.i, %if.end10.i
  %string21.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 7
  store i8* %call1.i.i, i8** %string21.i, align 8, !tbaa !17
  store i32 %and.i, i32* %type11.i, align 8, !tbaa !14
  %child4.i.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %object, i64 0, i32 2
  %2 = load %struct.cJSON*, %struct.cJSON** %child4.i.i, align 8, !tbaa !15
  %cmp5.i.i = icmp eq %struct.cJSON* %2, null
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.end.i3.i
  store %struct.cJSON* %item, %struct.cJSON** %child4.i.i, align 8, !tbaa !15
  %prev.i.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 1
  store %struct.cJSON* %item, %struct.cJSON** %prev.i.i, align 8, !tbaa !46
  %next.i.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 0
  store %struct.cJSON* null, %struct.cJSON** %next.i.i, align 8, !tbaa !10
  br label %add_item_to_object.exit

if.else.i.i:                                      ; preds = %if.end.i3.i
  %prev8.i.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %2, i64 0, i32 1
  %3 = load %struct.cJSON*, %struct.cJSON** %prev8.i.i, align 8, !tbaa !46
  %tobool.not.i.i = icmp eq %struct.cJSON* %3, null
  br i1 %tobool.not.i.i, label %add_item_to_object.exit, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  %next.i.i.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %3, i64 0, i32 0
  store %struct.cJSON* %item, %struct.cJSON** %next.i.i.i, align 8, !tbaa !10
  %prev1.i.i.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item, i64 0, i32 1
  store %struct.cJSON* %3, %struct.cJSON** %prev1.i.i.i, align 8, !tbaa !46
  store %struct.cJSON* %item, %struct.cJSON** %prev8.i.i, align 8, !tbaa !46
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %entry, %if.end.i.i, %if.then6.i.i, %if.else.i.i, %if.then9.i.i
  %retval.0.i = phi i32 [ 0, %entry ], [ 1, %if.then6.i.i ], [ 1, %if.else.i.i ], [ 1, %if.then9.i.i ], [ 0, %if.end.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local double @tree_checksum(%struct.cJSON* noundef readonly %item) local_unnamed_addr #12 {
entry:
  %cmp.not54 = icmp eq %struct.cJSON* %item, null
  br i1 %cmp.not54, label %while.end25, label %while.body

while.body:                                       ; preds = %entry, %if.end24
  %acc.056 = phi double [ %acc.5, %if.end24 ], [ 0.000000e+00, %entry ]
  %item.addr.055 = phi %struct.cJSON* [ %10, %if.end24 ], [ %item, %entry ]
  %valuedouble = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.055, i64 0, i32 6
  %0 = load double, double* %valuedouble, align 8, !tbaa !43
  %add = fadd double %acc.056, %0
  %valuestring = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.055, i64 0, i32 4
  %1 = load i8*, i8** %valuestring, align 8, !tbaa !16
  %cmp1.not = icmp eq i8* %1, null
  br i1 %cmp1.not, label %if.end, label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %while.body
  %2 = load i8, i8* %1, align 1, !tbaa !20
  %tobool.not47 = icmp eq i8 %2, 0
  br i1 %tobool.not47, label %if.end, label %while.body4

while.body4:                                      ; preds = %while.cond3.preheader, %while.body4
  %3 = phi i8 [ %4, %while.body4 ], [ %2, %while.cond3.preheader ]
  %p.049 = phi i8* [ %incdec.ptr, %while.body4 ], [ %1, %while.cond3.preheader ]
  %acc.148 = phi double [ %add5, %while.body4 ], [ %add, %while.cond3.preheader ]
  %incdec.ptr = getelementptr inbounds i8, i8* %p.049, i64 1
  %conv = uitofp i8 %3 to double
  %add5 = fadd double %acc.148, %conv
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !20
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %while.body4, !llvm.loop !47

if.end:                                           ; preds = %while.body4, %while.cond3.preheader, %while.body
  %acc.2 = phi double [ %add, %while.body ], [ %add, %while.cond3.preheader ], [ %add5, %while.body4 ]
  %string = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.055, i64 0, i32 7
  %5 = load i8*, i8** %string, align 8, !tbaa !17
  %cmp6.not = icmp eq i8* %5, null
  br i1 %cmp6.not, label %if.end18, label %while.cond11.preheader

while.cond11.preheader:                           ; preds = %if.end
  %6 = load i8, i8* %5, align 1, !tbaa !20
  %tobool12.not50 = icmp eq i8 %6, 0
  br i1 %tobool12.not50, label %if.end18, label %while.body13

while.body13:                                     ; preds = %while.cond11.preheader, %while.body13
  %7 = phi i8 [ %8, %while.body13 ], [ %6, %while.cond11.preheader ]
  %p9.052 = phi i8* [ %incdec.ptr14, %while.body13 ], [ %5, %while.cond11.preheader ]
  %acc.351 = phi double [ %add16, %while.body13 ], [ %acc.2, %while.cond11.preheader ]
  %incdec.ptr14 = getelementptr inbounds i8, i8* %p9.052, i64 1
  %conv15 = uitofp i8 %7 to double
  %add16 = fadd double %acc.351, %conv15
  %8 = load i8, i8* %incdec.ptr14, align 1, !tbaa !20
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %if.end18, label %while.body13, !llvm.loop !48

if.end18:                                         ; preds = %while.body13, %while.cond11.preheader, %if.end
  %acc.4 = phi double [ %acc.2, %if.end ], [ %acc.2, %while.cond11.preheader ], [ %add16, %while.body13 ]
  %child = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.055, i64 0, i32 2
  %9 = load %struct.cJSON*, %struct.cJSON** %child, align 8, !tbaa !15
  %cmp19.not = icmp eq %struct.cJSON* %9, null
  br i1 %cmp19.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end18
  %call = tail call double @tree_checksum(%struct.cJSON* noundef nonnull %9)
  %add23 = fadd double %acc.4, %call
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18
  %acc.5 = phi double [ %add23, %if.then21 ], [ %acc.4, %if.end18 ]
  %next = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.addr.055, i64 0, i32 0
  %10 = load %struct.cJSON*, %struct.cJSON** %next, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.cJSON* %10, null
  br i1 %cmp.not, label %while.end25, label %while.body, !llvm.loop !49

while.end25:                                      ; preds = %if.end24, %entry
  %acc.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %acc.5, %if.end24 ]
  ret double %acc.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cJSON* @create_objects(i8** nocapture noundef readonly %keys, i8** nocapture noundef readonly %values, i32 noundef %size) local_unnamed_addr #5 {
entry:
  %call.i.i = tail call dereferenceable_or_null(64) i8* @malloc(i64 noundef 64) #17
  %cond.i = icmp eq i8* %call.i.i, null
  br i1 %cond.i, label %cJSON_CreateObject.exit, label %cJSON_CreateObject.exit.thread

cJSON_CreateObject.exit:                          ; preds = %entry
  %cmp15 = icmp sgt i32 %size, 0
  br i1 %cmp15, label %for.body.us.preheader, label %for.cond.cleanup

cJSON_CreateObject.exit.thread:                   ; preds = %entry
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %call.i.i, i8 0, i64 64, i1 false) #17
  %type.i = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %0 = bitcast i8* %type.i to i32*
  store i32 64, i32* %0, align 8, !tbaa !14
  %cmp1524 = icmp sgt i32 %size, 0
  br i1 %cmp1524, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %cJSON_CreateObject.exit.thread
  %child4.i.i.i25 = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %1 = bitcast i8* %child4.i.i.i25 to %struct.cJSON**
  %wide.trip.count = zext i32 %size to i64
  %2 = bitcast i8* %child4.i.i.i25 to i8**
  br label %for.body

for.body.us.preheader:                            ; preds = %cJSON_CreateObject.exit
  %wide.trip.count22 = zext i32 %size to i64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %cJSON_CreateString.exit.us
  %indvars.iv19 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next20, %cJSON_CreateString.exit.us ]
  %arrayidx2.us = getelementptr inbounds i8*, i8** %values, i64 %indvars.iv19
  %3 = load i8*, i8** %arrayidx2.us, align 8, !tbaa !33
  %call.i.i12.us = tail call dereferenceable_or_null(64) i8* @malloc(i64 noundef 64) #17
  %cmp.not.i.i.us = icmp eq i8* %call.i.i12.us, null
  br i1 %cmp.not.i.i.us, label %cJSON_CreateString.exit.us, label %if.then.i.us

if.then.i.us:                                     ; preds = %for.body.us
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %call.i.i12.us, i8 0, i64 64, i1 false) #17
  %4 = bitcast i8* %call.i.i12.us to %struct.cJSON*
  %type.i13.us = getelementptr inbounds i8, i8* %call.i.i12.us, i64 24
  %5 = bitcast i8* %type.i13.us to i32*
  store i32 16, i32* %5, align 8, !tbaa !14
  %cmp.i.i.us = icmp eq i8* %3, null
  br i1 %cmp.i.i.us, label %if.then4.i.us, label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then.i.us
  %call.i12.i.us = tail call i64 @strlen(i8* noundef nonnull %3) #18
  %add.i.i.us = add i64 %call.i12.i.us, 1
  %call1.i.i.us = tail call i8* @malloc(i64 noundef %add.i.i.us) #17
  %cmp2.i.i.us = icmp eq i8* %call1.i.i.us, null
  br i1 %cmp2.i.i.us, label %if.then4.i.us, label %cJSON_strdup.exit.i.us

cJSON_strdup.exit.i.us:                           ; preds = %if.end.i.i.us
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %call1.i.i.us, i8* nonnull align 1 %3, i64 %add.i.i.us, i1 false) #17
  %valuestring.i.us = getelementptr inbounds i8, i8* %call.i.i12.us, i64 32
  %6 = bitcast i8* %valuestring.i.us to i8**
  store i8* %call1.i.i.us, i8** %6, align 8, !tbaa !16
  br label %cJSON_CreateString.exit.us

if.then4.i.us:                                    ; preds = %if.end.i.i.us, %if.then.i.us
  %valuestring14.i.us = getelementptr inbounds i8, i8* %call.i.i12.us, i64 32
  %7 = bitcast i8* %valuestring14.i.us to i8**
  store i8* null, i8** %7, align 8, !tbaa !16
  tail call void @cJSON_Delete(%struct.cJSON* noundef nonnull %4) #17
  br label %cJSON_CreateString.exit.us

cJSON_CreateString.exit.us:                       ; preds = %if.then4.i.us, %cJSON_strdup.exit.i.us, %for.body.us
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count22
  br i1 %exitcond23.not, label %for.cond.cleanup, label %for.body.us, !llvm.loop !50

for.cond.cleanup:                                 ; preds = %cJSON_AddItemToObject.exit, %cJSON_CreateString.exit.us, %cJSON_CreateObject.exit.thread, %cJSON_CreateObject.exit
  %8 = bitcast i8* %call.i.i to %struct.cJSON*
  ret %struct.cJSON* %8

for.body:                                         ; preds = %for.body.preheader, %cJSON_AddItemToObject.exit
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cJSON_AddItemToObject.exit ]
  %arrayidx = getelementptr inbounds i8*, i8** %keys, i64 %indvars.iv
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !33
  %arrayidx2 = getelementptr inbounds i8*, i8** %values, i64 %indvars.iv
  %10 = load i8*, i8** %arrayidx2, align 8, !tbaa !33
  %call.i.i12 = tail call dereferenceable_or_null(64) i8* @malloc(i64 noundef 64) #17
  %cmp.not.i.i = icmp eq i8* %call.i.i12, null
  br i1 %cmp.not.i.i, label %cJSON_AddItemToObject.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %call.i.i12, i8 0, i64 64, i1 false) #17
  %11 = bitcast i8* %call.i.i12 to %struct.cJSON*
  %type.i13 = getelementptr inbounds i8, i8* %call.i.i12, i64 24
  %12 = bitcast i8* %type.i13 to i32*
  store i32 16, i32* %12, align 8, !tbaa !14
  %cmp.i.i = icmp eq i8* %10, null
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %call.i12.i = tail call i64 @strlen(i8* noundef nonnull %10) #18
  %add.i.i = add i64 %call.i12.i, 1
  %call1.i.i = tail call i8* @malloc(i64 noundef %add.i.i) #17
  %cmp2.i.i = icmp eq i8* %call1.i.i, null
  br i1 %cmp2.i.i, label %if.then4.i, label %cJSON_CreateString.exit

if.then4.i:                                       ; preds = %if.end.i.i, %if.then.i
  %valuestring14.i = getelementptr inbounds i8, i8* %call.i.i12, i64 32
  %13 = bitcast i8* %valuestring14.i to i8**
  store i8* null, i8** %13, align 8, !tbaa !16
  tail call void @cJSON_Delete(%struct.cJSON* noundef nonnull %11) #17
  br label %cJSON_AddItemToObject.exit

cJSON_CreateString.exit:                          ; preds = %if.end.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %call1.i.i, i8* nonnull align 1 %10, i64 %add.i.i, i1 false) #17
  %valuestring.i = getelementptr inbounds i8, i8* %call.i.i12, i64 32
  %14 = bitcast i8* %valuestring.i to i8**
  store i8* %call1.i.i, i8** %14, align 8, !tbaa !16
  %cmp1.i.i = icmp eq i8* %9, null
  %cmp5.i.i = icmp eq i8* %call.i.i12, %call.i.i
  %or.cond1.i.i = or i1 %cmp5.i.i, %cmp1.i.i
  br i1 %or.cond1.i.i, label %cJSON_AddItemToObject.exit, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %cJSON_CreateString.exit
  %call.i.i.i = tail call i64 @strlen(i8* noundef nonnull %9) #18
  %add.i.i.i = add i64 %call.i.i.i, 1
  %call1.i.i.i = tail call i8* @malloc(i64 noundef %add.i.i.i) #17
  %cmp2.i.i.i = icmp eq i8* %call1.i.i.i, null
  br i1 %cmp2.i.i.i, label %cJSON_AddItemToObject.exit, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %call1.i.i.i, i8* nonnull align 1 %9, i64 %add.i.i.i, i1 false) #17
  %type11.i.i = getelementptr inbounds i8, i8* %call.i.i12, i64 24
  %15 = bitcast i8* %type11.i.i to i32*
  %16 = load i32, i32* %15, align 8, !tbaa !14
  %and.i.i = and i32 %16, -513
  %and14.i.i = and i32 %16, 512
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true.i.i, label %if.end.i3.i.i

land.lhs.true.i.i:                                ; preds = %if.end10.i.i
  %string16.i.i = getelementptr inbounds i8, i8* %call.i.i12, i64 56
  %17 = bitcast i8* %string16.i.i to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !17
  %cmp17.not.i.i = icmp eq i8* %18, null
  br i1 %cmp17.not.i.i, label %if.end.i3.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @free(i8* noundef nonnull %18) #17
  br label %if.end.i3.i.i

if.end.i3.i.i:                                    ; preds = %if.then18.i.i, %land.lhs.true.i.i, %if.end10.i.i
  %string21.i.i = getelementptr inbounds i8, i8* %call.i.i12, i64 56
  %19 = bitcast i8* %string21.i.i to i8**
  store i8* %call1.i.i.i, i8** %19, align 8, !tbaa !17
  store i32 %and.i.i, i32* %15, align 8, !tbaa !14
  %20 = load %struct.cJSON*, %struct.cJSON** %1, align 8, !tbaa !15
  %cmp5.i.i.i = icmp eq %struct.cJSON* %20, null
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.else.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i3.i.i
  store i8* %call.i.i12, i8** %2, align 8, !tbaa !15
  %prev.i.i.i = getelementptr inbounds i8, i8* %call.i.i12, i64 8
  %21 = bitcast i8* %prev.i.i.i to i8**
  store i8* %call.i.i12, i8** %21, align 8, !tbaa !46
  %next.i.i.i = bitcast i8* %call.i.i12 to %struct.cJSON**
  store %struct.cJSON* null, %struct.cJSON** %next.i.i.i, align 8, !tbaa !10
  br label %cJSON_AddItemToObject.exit

if.else.i.i.i:                                    ; preds = %if.end.i3.i.i
  %prev8.i.i.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %20, i64 0, i32 1
  %22 = load %struct.cJSON*, %struct.cJSON** %prev8.i.i.i, align 8, !tbaa !46
  %tobool.not.i.i.i = icmp eq %struct.cJSON* %22, null
  br i1 %tobool.not.i.i.i, label %cJSON_AddItemToObject.exit, label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %if.else.i.i.i
  %23 = bitcast %struct.cJSON* %22 to i8**
  store i8* %call.i.i12, i8** %23, align 8, !tbaa !10
  %prev1.i.i.i.i = getelementptr inbounds i8, i8* %call.i.i12, i64 8
  %24 = bitcast i8* %prev1.i.i.i.i to %struct.cJSON**
  store %struct.cJSON* %22, %struct.cJSON** %24, align 8, !tbaa !46
  %25 = bitcast %struct.cJSON** %prev8.i.i.i to i8**
  store i8* %call.i.i12, i8** %25, align 8, !tbaa !46
  br label %cJSON_AddItemToObject.exit

cJSON_AddItemToObject.exit:                       ; preds = %for.body, %if.then4.i, %cJSON_CreateString.exit, %if.end.i.i.i, %if.then6.i.i.i, %if.else.i.i.i, %if.then9.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !50
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_json_object(%struct.cJSON* noundef readonly %root) local_unnamed_addr #13 {
entry:
  %cmp.not = icmp eq %struct.cJSON* %root, null
  br i1 %cmp.not, label %if.end35, label %if.then

if.then:                                          ; preds = %entry
  %child = getelementptr inbounds %struct.cJSON, %struct.cJSON* %root, i64 0, i32 2
  %item.065 = load %struct.cJSON*, %struct.cJSON** %child, align 8, !tbaa !33
  %cmp1.not66 = icmp eq %struct.cJSON* %item.065, null
  br i1 %cmp1.not66, label %if.end35, label %for.body

for.body:                                         ; preds = %if.then, %if.end30
  %item.069 = phi %struct.cJSON* [ %item.0, %if.end30 ], [ %item.065, %if.then ]
  %entry_count.068 = phi i32 [ %inc, %if.end30 ], [ 0, %if.then ]
  %checksum.067 = phi i64 [ %add32, %if.end30 ], [ 0, %if.then ]
  %inc = add nuw nsw i32 %entry_count.068, 1
  %string = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.069, i64 0, i32 7
  %0 = load i8*, i8** %string, align 8, !tbaa !17
  %cmp2.not = icmp eq i8* %0, null
  br i1 %cmp2.not, label %if.end, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body
  %1 = load i8, i8* %0, align 1, !tbaa !20
  %cmp6.not58 = icmp eq i8 %1, 0
  br i1 %cmp6.not58, label %if.end, label %for.body9

for.body9:                                        ; preds = %for.cond5.preheader, %for.body9
  %2 = phi i8 [ %3, %for.body9 ], [ %1, %for.cond5.preheader ]
  %p.060 = phi i8* [ %incdec.ptr, %for.body9 ], [ %0, %for.cond5.preheader ]
  %checksum.159 = phi i64 [ %add, %for.body9 ], [ %checksum.067, %for.cond5.preheader ]
  %mul = mul i64 %checksum.159, 131
  %conv10 = zext i8 %2 to i64
  %add = add i64 %mul, %conv10
  %incdec.ptr = getelementptr inbounds i8, i8* %p.060, i64 1
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !20
  %cmp6.not = icmp eq i8 %3, 0
  br i1 %cmp6.not, label %if.end, label %for.body9, !llvm.loop !51

if.end:                                           ; preds = %for.body9, %for.cond5.preheader, %for.body
  %checksum.2 = phi i64 [ %checksum.067, %for.body ], [ %checksum.067, %for.cond5.preheader ], [ %add, %for.body9 ]
  %mul11 = mul i64 %checksum.2, 131
  %add12 = add i64 %mul11, 61
  %valuestring = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.069, i64 0, i32 4
  %4 = load i8*, i8** %valuestring, align 8, !tbaa !16
  %cmp13.not = icmp eq i8* %4, null
  br i1 %cmp13.not, label %if.end30, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %if.end
  %5 = load i8, i8* %4, align 1, !tbaa !20
  %cmp20.not61 = icmp eq i8 %5, 0
  br i1 %cmp20.not61, label %if.end30, label %for.body23

for.body23:                                       ; preds = %for.cond18.preheader, %for.body23
  %6 = phi i8 [ %7, %for.body23 ], [ %5, %for.cond18.preheader ]
  %p16.063 = phi i8* [ %incdec.ptr28, %for.body23 ], [ %4, %for.cond18.preheader ]
  %checksum.362 = phi i64 [ %add26, %for.body23 ], [ %add12, %for.cond18.preheader ]
  %mul24 = mul i64 %checksum.362, 131
  %conv25 = zext i8 %6 to i64
  %add26 = add i64 %mul24, %conv25
  %incdec.ptr28 = getelementptr inbounds i8, i8* %p16.063, i64 1
  %7 = load i8, i8* %incdec.ptr28, align 1, !tbaa !20
  %cmp20.not = icmp eq i8 %7, 0
  br i1 %cmp20.not, label %if.end30, label %for.body23, !llvm.loop !52

if.end30:                                         ; preds = %for.body23, %for.cond18.preheader, %if.end
  %checksum.4 = phi i64 [ %add12, %if.end ], [ %add12, %for.cond18.preheader ], [ %add26, %for.body23 ]
  %mul31 = mul i64 %checksum.4, 131
  %add32 = add i64 %mul31, 59
  %next = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.069, i64 0, i32 0
  %item.0 = load %struct.cJSON*, %struct.cJSON** %next, align 8, !tbaa !33
  %cmp1.not = icmp eq %struct.cJSON* %item.0, null
  br i1 %cmp1.not, label %if.end35, label %for.body, !llvm.loop !53

if.end35:                                         ; preds = %if.end30, %if.then, %entry
  %checksum.5 = phi i64 [ 0, %entry ], [ 0, %if.then ], [ %add32, %if.end30 ]
  %entry_count.1 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ %inc, %if.end30 ]
  %call = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 noundef %entry_count.1)
  %call36 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 noundef %checksum.5)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @test_create_objects(i8** nocapture noundef readonly %keys, i8** nocapture noundef readonly %values, i32 noundef %size) local_unnamed_addr #5 {
entry:
  %call = tail call %struct.cJSON* @create_objects(i8** noundef %keys, i8** noundef %values, i32 noundef %size)
  %cmp = icmp eq %struct.cJSON* %call, null
  br i1 %cmp, label %if.then, label %if.then.i

if.then:                                          ; preds = %entry
  %puts6 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @str.12, i64 0, i64 0))
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str, i64 0, i64 0))
  %child.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %call, i64 0, i32 2
  %item.065.i = load %struct.cJSON*, %struct.cJSON** %child.i, align 8, !tbaa !33
  %cmp1.not66.i = icmp eq %struct.cJSON* %item.065.i, null
  br i1 %cmp1.not66.i, label %print_json_object.exit, label %for.body.i

for.body.i:                                       ; preds = %if.then.i, %if.end30.i
  %item.069.i = phi %struct.cJSON* [ %item.0.i, %if.end30.i ], [ %item.065.i, %if.then.i ]
  %entry_count.068.i = phi i32 [ %inc.i, %if.end30.i ], [ 0, %if.then.i ]
  %checksum.067.i = phi i64 [ %add32.i, %if.end30.i ], [ 0, %if.then.i ]
  %inc.i = add nuw nsw i32 %entry_count.068.i, 1
  %string.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.069.i, i64 0, i32 7
  %0 = load i8*, i8** %string.i, align 8, !tbaa !17
  %cmp2.not.i = icmp eq i8* %0, null
  br i1 %cmp2.not.i, label %if.end.i, label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.body.i
  %1 = load i8, i8* %0, align 1, !tbaa !20
  %cmp6.not58.i = icmp eq i8 %1, 0
  br i1 %cmp6.not58.i, label %if.end.i, label %for.body9.i

for.body9.i:                                      ; preds = %for.cond5.preheader.i, %for.body9.i
  %2 = phi i8 [ %3, %for.body9.i ], [ %1, %for.cond5.preheader.i ]
  %p.060.i = phi i8* [ %incdec.ptr.i, %for.body9.i ], [ %0, %for.cond5.preheader.i ]
  %checksum.159.i = phi i64 [ %add.i, %for.body9.i ], [ %checksum.067.i, %for.cond5.preheader.i ]
  %mul.i = mul i64 %checksum.159.i, 131
  %conv10.i = zext i8 %2 to i64
  %add.i = add i64 %mul.i, %conv10.i
  %incdec.ptr.i = getelementptr inbounds i8, i8* %p.060.i, i64 1
  %3 = load i8, i8* %incdec.ptr.i, align 1, !tbaa !20
  %cmp6.not.i = icmp eq i8 %3, 0
  br i1 %cmp6.not.i, label %if.end.i, label %for.body9.i, !llvm.loop !51

if.end.i:                                         ; preds = %for.body9.i, %for.cond5.preheader.i, %for.body.i
  %checksum.2.i = phi i64 [ %checksum.067.i, %for.body.i ], [ %checksum.067.i, %for.cond5.preheader.i ], [ %add.i, %for.body9.i ]
  %mul11.i = mul i64 %checksum.2.i, 131
  %add12.i = add i64 %mul11.i, 61
  %valuestring.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.069.i, i64 0, i32 4
  %4 = load i8*, i8** %valuestring.i, align 8, !tbaa !16
  %cmp13.not.i = icmp eq i8* %4, null
  br i1 %cmp13.not.i, label %if.end30.i, label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %if.end.i
  %5 = load i8, i8* %4, align 1, !tbaa !20
  %cmp20.not61.i = icmp eq i8 %5, 0
  br i1 %cmp20.not61.i, label %if.end30.i, label %for.body23.i

for.body23.i:                                     ; preds = %for.cond18.preheader.i, %for.body23.i
  %6 = phi i8 [ %7, %for.body23.i ], [ %5, %for.cond18.preheader.i ]
  %p16.063.i = phi i8* [ %incdec.ptr28.i, %for.body23.i ], [ %4, %for.cond18.preheader.i ]
  %checksum.362.i = phi i64 [ %add26.i, %for.body23.i ], [ %add12.i, %for.cond18.preheader.i ]
  %mul24.i = mul i64 %checksum.362.i, 131
  %conv25.i = zext i8 %6 to i64
  %add26.i = add i64 %mul24.i, %conv25.i
  %incdec.ptr28.i = getelementptr inbounds i8, i8* %p16.063.i, i64 1
  %7 = load i8, i8* %incdec.ptr28.i, align 1, !tbaa !20
  %cmp20.not.i = icmp eq i8 %7, 0
  br i1 %cmp20.not.i, label %if.end30.i, label %for.body23.i, !llvm.loop !52

if.end30.i:                                       ; preds = %for.body23.i, %for.cond18.preheader.i, %if.end.i
  %checksum.4.i = phi i64 [ %add12.i, %if.end.i ], [ %add12.i, %for.cond18.preheader.i ], [ %add26.i, %for.body23.i ]
  %mul31.i = mul i64 %checksum.4.i, 131
  %add32.i = add i64 %mul31.i, 59
  %next.i = getelementptr inbounds %struct.cJSON, %struct.cJSON* %item.069.i, i64 0, i32 0
  %item.0.i = load %struct.cJSON*, %struct.cJSON** %next.i, align 8, !tbaa !33
  %cmp1.not.i = icmp eq %struct.cJSON* %item.0.i, null
  br i1 %cmp1.not.i, label %print_json_object.exit, label %for.body.i, !llvm.loop !53

print_json_object.exit:                           ; preds = %if.end30.i, %if.then.i
  %checksum.5.i = phi i64 [ 0, %if.then.i ], [ %add32.i, %if.end30.i ]
  %entry_count.1.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %if.end30.i ]
  %call.i = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 noundef %entry_count.1.i) #17
  %call36.i = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 noundef %checksum.5.i) #17
  tail call void @cJSON_Delete(%struct.cJSON* noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %print_json_object.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %print_json_object.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #5 {
entry:
  %start_time = alloca %struct.timespec, align 8
  %end_time = alloca %struct.timespec, align 8
  %cmp.not = icmp eq i32 %argc, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %argv, align 8, !tbaa !33
  %call = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* noundef %0)
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1
  %1 = load i8*, i8** %arrayidx1, align 8, !tbaa !33
  %call.i = tail call i64 @strtol(i8* nocapture noundef nonnull %1, i8** noundef null, i32 noundef 10) #17
  %conv.i = trunc i64 %call.i to i32
  %arrayidx3 = getelementptr inbounds i8*, i8** %argv, i64 2
  %2 = load i8*, i8** %arrayidx3, align 8, !tbaa !33
  %call.i196 = tail call i64 @strtol(i8* nocapture noundef nonnull %2, i8** noundef null, i32 noundef 10) #17
  %conv.i197 = trunc i64 %call.i196 to i32
  %cmp5 = icmp slt i32 %conv.i, 1
  %cmp6 = icmp slt i32 %conv.i197, 1
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %puts195 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([70 x i8], [70 x i8]* @str.16, i64 0, i64 0))
  br label %return

if.end9:                                          ; preds = %if.end
  tail call void @srand(i32 noundef 42) #17
  %conv203 = shl i64 %call.i196, 3
  %mul = and i64 %conv203, 34359738360
  %call10 = tail call noalias i8* @malloc(i64 noundef %mul) #17
  %3 = bitcast i8* %call10 to i8**
  %call13 = tail call noalias i8* @malloc(i64 noundef %mul) #17
  %4 = bitcast i8* %call13 to i8**
  %cmp14 = icmp eq i8* %call10, null
  %cmp17 = icmp eq i8* %call13, null
  %or.cond132 = or i1 %cmp14, %cmp17
  br i1 %or.cond132, label %if.then19, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end9
  %sext = shl i64 %call.i196, 32
  %5 = ashr exact i64 %sext, 32
  %wide.trip.count = and i64 %call.i196, 4294967295
  br label %for.body

if.then19:                                        ; preds = %if.end9
  %puts194 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.15, i64 0, i64 0))
  br label %return

for.body:                                         ; preds = %for.body.preheader, %for.body52.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body52.preheader ]
  %cmp22210 = phi i1 [ true, %for.body.preheader ], [ %cmp22, %for.body52.preheader ]
  %call24 = tail call noalias dereferenceable_or_null(11) i8* @malloc(i64 noundef 11) #17
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %cleanup68.thread202, label %for.body34.preheader

for.body34.preheader:                             ; preds = %for.body
  %call35 = tail call i32 @rand() #17
  %rem = srem i32 %call35, 26
  %6 = trunc i32 %rem to i8
  %conv36 = add nsw i8 %6, 97
  store i8 %conv36, i8* %call24, align 1, !tbaa !20
  %call35.1 = tail call i32 @rand() #17
  %rem.1 = srem i32 %call35.1, 26
  %7 = trunc i32 %rem.1 to i8
  %conv36.1 = add nsw i8 %7, 97
  %arrayidx37.1 = getelementptr inbounds i8, i8* %call24, i64 1
  store i8 %conv36.1, i8* %arrayidx37.1, align 1, !tbaa !20
  %call35.2 = tail call i32 @rand() #17
  %rem.2 = srem i32 %call35.2, 26
  %8 = trunc i32 %rem.2 to i8
  %conv36.2 = add nsw i8 %8, 97
  %arrayidx37.2 = getelementptr inbounds i8, i8* %call24, i64 2
  store i8 %conv36.2, i8* %arrayidx37.2, align 1, !tbaa !20
  %call35.3 = tail call i32 @rand() #17
  %rem.3 = srem i32 %call35.3, 26
  %9 = trunc i32 %rem.3 to i8
  %conv36.3 = add nsw i8 %9, 97
  %arrayidx37.3 = getelementptr inbounds i8, i8* %call24, i64 3
  store i8 %conv36.3, i8* %arrayidx37.3, align 1, !tbaa !20
  %call35.4 = tail call i32 @rand() #17
  %rem.4 = srem i32 %call35.4, 26
  %10 = trunc i32 %rem.4 to i8
  %conv36.4 = add nsw i8 %10, 97
  %arrayidx37.4 = getelementptr inbounds i8, i8* %call24, i64 4
  store i8 %conv36.4, i8* %arrayidx37.4, align 1, !tbaa !20
  %call35.5 = tail call i32 @rand() #17
  %rem.5 = srem i32 %call35.5, 26
  %11 = trunc i32 %rem.5 to i8
  %conv36.5 = add nsw i8 %11, 97
  %arrayidx37.5 = getelementptr inbounds i8, i8* %call24, i64 5
  store i8 %conv36.5, i8* %arrayidx37.5, align 1, !tbaa !20
  %call35.6 = tail call i32 @rand() #17
  %rem.6 = srem i32 %call35.6, 26
  %12 = trunc i32 %rem.6 to i8
  %conv36.6 = add nsw i8 %12, 97
  %arrayidx37.6 = getelementptr inbounds i8, i8* %call24, i64 6
  store i8 %conv36.6, i8* %arrayidx37.6, align 1, !tbaa !20
  %call35.7 = tail call i32 @rand() #17
  %rem.7 = srem i32 %call35.7, 26
  %13 = trunc i32 %rem.7 to i8
  %conv36.7 = add nsw i8 %13, 97
  %arrayidx37.7 = getelementptr inbounds i8, i8* %call24, i64 7
  store i8 %conv36.7, i8* %arrayidx37.7, align 1, !tbaa !20
  %call35.8 = tail call i32 @rand() #17
  %rem.8 = srem i32 %call35.8, 26
  %14 = trunc i32 %rem.8 to i8
  %conv36.8 = add nsw i8 %14, 97
  %arrayidx37.8 = getelementptr inbounds i8, i8* %call24, i64 8
  store i8 %conv36.8, i8* %arrayidx37.8, align 1, !tbaa !20
  %call35.9 = tail call i32 @rand() #17
  %rem.9 = srem i32 %call35.9, 26
  %15 = trunc i32 %rem.9 to i8
  %conv36.9 = add nsw i8 %15, 97
  %arrayidx37.9 = getelementptr inbounds i8, i8* %call24, i64 9
  store i8 %conv36.9, i8* %arrayidx37.9, align 1, !tbaa !20
  %arrayidx38 = getelementptr inbounds i8, i8* %call24, i64 10
  store i8 0, i8* %arrayidx38, align 1, !tbaa !20
  %arrayidx40 = getelementptr inbounds i8*, i8** %3, i64 %indvars.iv
  store i8* %call24, i8** %arrayidx40, align 8, !tbaa !33
  %call41 = tail call noalias dereferenceable_or_null(11) i8* @malloc(i64 noundef 11) #17
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %cleanup68, label %for.body52.preheader

cleanup68.thread202:                              ; preds = %for.body
  %puts193 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.15, i64 0, i64 0))
  br label %return

for.body52.preheader:                             ; preds = %for.body34.preheader
  %call53 = tail call i32 @rand() #17
  %rem54 = srem i32 %call53, 26
  %16 = trunc i32 %rem54 to i8
  %conv56 = add nsw i8 %16, 97
  store i8 %conv56, i8* %call41, align 1, !tbaa !20
  %call53.1 = tail call i32 @rand() #17
  %rem54.1 = srem i32 %call53.1, 26
  %17 = trunc i32 %rem54.1 to i8
  %conv56.1 = add nsw i8 %17, 97
  %arrayidx58.1 = getelementptr inbounds i8, i8* %call41, i64 1
  store i8 %conv56.1, i8* %arrayidx58.1, align 1, !tbaa !20
  %call53.2 = tail call i32 @rand() #17
  %rem54.2 = srem i32 %call53.2, 26
  %18 = trunc i32 %rem54.2 to i8
  %conv56.2 = add nsw i8 %18, 97
  %arrayidx58.2 = getelementptr inbounds i8, i8* %call41, i64 2
  store i8 %conv56.2, i8* %arrayidx58.2, align 1, !tbaa !20
  %call53.3 = tail call i32 @rand() #17
  %rem54.3 = srem i32 %call53.3, 26
  %19 = trunc i32 %rem54.3 to i8
  %conv56.3 = add nsw i8 %19, 97
  %arrayidx58.3 = getelementptr inbounds i8, i8* %call41, i64 3
  store i8 %conv56.3, i8* %arrayidx58.3, align 1, !tbaa !20
  %call53.4 = tail call i32 @rand() #17
  %rem54.4 = srem i32 %call53.4, 26
  %20 = trunc i32 %rem54.4 to i8
  %conv56.4 = add nsw i8 %20, 97
  %arrayidx58.4 = getelementptr inbounds i8, i8* %call41, i64 4
  store i8 %conv56.4, i8* %arrayidx58.4, align 1, !tbaa !20
  %call53.5 = tail call i32 @rand() #17
  %rem54.5 = srem i32 %call53.5, 26
  %21 = trunc i32 %rem54.5 to i8
  %conv56.5 = add nsw i8 %21, 97
  %arrayidx58.5 = getelementptr inbounds i8, i8* %call41, i64 5
  store i8 %conv56.5, i8* %arrayidx58.5, align 1, !tbaa !20
  %call53.6 = tail call i32 @rand() #17
  %rem54.6 = srem i32 %call53.6, 26
  %22 = trunc i32 %rem54.6 to i8
  %conv56.6 = add nsw i8 %22, 97
  %arrayidx58.6 = getelementptr inbounds i8, i8* %call41, i64 6
  store i8 %conv56.6, i8* %arrayidx58.6, align 1, !tbaa !20
  %call53.7 = tail call i32 @rand() #17
  %rem54.7 = srem i32 %call53.7, 26
  %23 = trunc i32 %rem54.7 to i8
  %conv56.7 = add nsw i8 %23, 97
  %arrayidx58.7 = getelementptr inbounds i8, i8* %call41, i64 7
  store i8 %conv56.7, i8* %arrayidx58.7, align 1, !tbaa !20
  %call53.8 = tail call i32 @rand() #17
  %rem54.8 = srem i32 %call53.8, 26
  %24 = trunc i32 %rem54.8 to i8
  %conv56.8 = add nsw i8 %24, 97
  %arrayidx58.8 = getelementptr inbounds i8, i8* %call41, i64 8
  store i8 %conv56.8, i8* %arrayidx58.8, align 1, !tbaa !20
  %call53.9 = tail call i32 @rand() #17
  %rem54.9 = srem i32 %call53.9, 26
  %25 = trunc i32 %rem54.9 to i8
  %conv56.9 = add nsw i8 %25, 97
  %arrayidx58.9 = getelementptr inbounds i8, i8* %call41, i64 9
  store i8 %conv56.9, i8* %arrayidx58.9, align 1, !tbaa !20
  %arrayidx62 = getelementptr inbounds i8, i8* %call41, i64 10
  store i8 0, i8* %arrayidx62, align 1, !tbaa !20
  %arrayidx64 = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv
  store i8* %call41, i8** %arrayidx64, align 8, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp22 = icmp slt i64 %indvars.iv.next, %5
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end70, label %for.body, !llvm.loop !54

cleanup68:                                        ; preds = %for.body34.preheader
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.15, i64 0, i64 0))
  br i1 %cmp22210, label %return, label %for.end70

for.end70:                                        ; preds = %for.body52.preheader, %cleanup68
  %call71 = tail call i32 @test_create_objects(i8** noundef nonnull %3, i8** noundef %4, i32 noundef %conv.i197)
  %cmp72.not = icmp eq i32 %call71, 0
  br i1 %cmp72.not, label %if.end89, label %for.body80.preheader

for.body80.preheader:                             ; preds = %for.end70
  %wide.trip.count224 = and i64 %call.i196, 4294967295
  br label %for.body80

for.cond.cleanup79:                               ; preds = %for.body80
  tail call void @free(i8* noundef nonnull %call10) #17
  tail call void @free(i8* noundef nonnull %call13) #17
  br label %return

for.body80:                                       ; preds = %for.body80.preheader, %for.body80
  %indvars.iv221 = phi i64 [ 0, %for.body80.preheader ], [ %indvars.iv.next222, %for.body80 ]
  %arrayidx82 = getelementptr inbounds i8*, i8** %3, i64 %indvars.iv221
  %26 = load i8*, i8** %arrayidx82, align 8, !tbaa !33
  tail call void @free(i8* noundef %26) #17
  %arrayidx84 = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv221
  %27 = load i8*, i8** %arrayidx84, align 8, !tbaa !33
  tail call void @free(i8* noundef %27) #17
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %for.cond.cleanup79, label %for.body80, !llvm.loop !55

if.end89:                                         ; preds = %for.end70
  %28 = bitcast %struct.timespec* %start_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #17
  %29 = bitcast %struct.timespec* %end_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #17
  %call90 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %start_time) #17
  %cmp93213 = icmp sgt i32 %conv.i, 0
  br i1 %cmp93213, label %for.body96, label %for.body115.preheader

for.body115.preheader:                            ; preds = %for.body96, %if.end89
  %call102 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %end_time) #17
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %end_time, i64 0, i32 0
  %30 = load i64, i64* %tv_sec, align 8, !tbaa !56
  %tv_sec103 = getelementptr inbounds %struct.timespec, %struct.timespec* %start_time, i64 0, i32 0
  %31 = load i64, i64* %tv_sec103, align 8, !tbaa !56
  %sub = sub nsw i64 %30, %31
  %conv104 = sitofp i64 %sub to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %end_time, i64 0, i32 1
  %32 = load i64, i64* %tv_nsec, align 8, !tbaa !58
  %tv_nsec105 = getelementptr inbounds %struct.timespec, %struct.timespec* %start_time, i64 0, i32 1
  %33 = load i64, i64* %tv_nsec105, align 8, !tbaa !58
  %sub106 = sub nsw i64 %32, %33
  %conv107 = sitofp i64 %sub106 to double
  %div = fdiv double %conv107, 1.000000e+09
  %add108 = fadd double %div, %conv104
  %call109 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), double noundef %add108)
  %wide.trip.count230 = and i64 %call.i196, 4294967295
  br label %for.body115

for.body96:                                       ; preds = %if.end89, %for.body96
  %i91.0214 = phi i32 [ %inc99, %for.body96 ], [ 0, %if.end89 ]
  %call97 = call %struct.cJSON* @create_objects(i8** noundef %3, i8** noundef %4, i32 noundef %conv.i197)
  call void @cJSON_Delete(%struct.cJSON* noundef %call97)
  %inc99 = add nuw nsw i32 %i91.0214, 1
  %exitcond226.not = icmp eq i32 %inc99, %conv.i
  br i1 %exitcond226.not, label %for.body115.preheader, label %for.body96, !llvm.loop !59

for.cond.cleanup114:                              ; preds = %for.body115
  call void @free(i8* noundef nonnull %call10) #17
  call void @free(i8* noundef nonnull %call13) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #17
  br label %return

for.body115:                                      ; preds = %for.body115.preheader, %for.body115
  %indvars.iv227 = phi i64 [ 0, %for.body115.preheader ], [ %indvars.iv.next228, %for.body115 ]
  %arrayidx117 = getelementptr inbounds i8*, i8** %3, i64 %indvars.iv227
  %34 = load i8*, i8** %arrayidx117, align 8, !tbaa !33
  call void @free(i8* noundef %34) #17
  %arrayidx119 = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv227
  %35 = load i8*, i8** %arrayidx119, align 8, !tbaa !33
  call void @free(i8* noundef %35) #17
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %for.cond.cleanup114, label %for.body115, !llvm.loop !60

return:                                           ; preds = %cleanup68.thread202, %if.then7, %cleanup68, %for.cond.cleanup114, %for.cond.cleanup79, %if.then19, %if.then
  %retval.6 = phi i32 [ 1, %if.then ], [ 1, %if.then7 ], [ 1, %if.then19 ], [ 1, %for.cond.cleanup79 ], [ 0, %for.cond.cleanup114 ], [ 1, %cleanup68 ], [ 1, %cleanup68.thread202 ]
  ret i32 %retval.6
}

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #15

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #16

attributes #0 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{!11, !5, i64 0}
!11 = !{!"cJSON", !5, i64 0, !5, i64 8, !5, i64 16, !12, i64 24, !5, i64 32, !12, i64 40, !13, i64 48, !5, i64 56}
!12 = !{!"int", !6, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!11, !12, i64 24}
!15 = !{!11, !5, i64 16}
!16 = !{!11, !5, i64 32}
!17 = !{!11, !5, i64 56}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!6, !6, i64 0}
!21 = !{!22, !5, i64 0}
!22 = !{!"", !5, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !23, i64 32}
!23 = !{!"internal_hooks", !5, i64 0, !5, i64 8, !5, i64 16}
!24 = !{!22, !8, i64 16}
!25 = !{!22, !8, i64 8}
!26 = distinct !{!26, !19}
!27 = !{!22, !5, i64 32}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = !{!22, !5, i64 40}
!31 = distinct !{!31, !19}
!32 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33}
!33 = !{!5, !5, i64 0}
!34 = !{i64 0, i64 8, !33, i64 8, i64 8, !35}
!35 = !{!8, !8, i64 0}
!36 = !{i64 0, i64 8, !35}
!37 = !{!11, !12, i64 40}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19, !40}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = distinct !{!41, !19, !42, !40}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!11, !13, i64 48}
!44 = !{!22, !8, i64 24}
!45 = !{!23, !5, i64 0}
!46 = !{!11, !5, i64 8}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = !{!57, !8, i64 0}
!57 = !{!"timespec", !8, i64 0, !8, i64 8}
!58 = !{!57, !8, i64 8}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
