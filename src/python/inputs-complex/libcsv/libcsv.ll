; ModuleID = 'libcsv.c'
source_filename = "libcsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"error parsing data while strict checking enabled\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"memory exhausted while increasing buffer size\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"data size too large\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid status code\00", align 1
@csv_errors = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [32 x i8] c"p && \22received null csv_parser\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"libcsv.c\00", align 1
@__PRETTY_FUNCTION__.csv_error = private unnamed_addr constant [41 x i8] c"int csv_error(const struct csv_parser *)\00", align 1
@__PRETTY_FUNCTION__.csv_get_delim = private unnamed_addr constant [55 x i8] c"unsigned char csv_get_delim(const struct csv_parser *)\00", align 1
@__PRETTY_FUNCTION__.csv_get_quote = private unnamed_addr constant [55 x i8] c"unsigned char csv_get_quote(const struct csv_parser *)\00", align 1
@__PRETTY_FUNCTION__.csv_parse = private unnamed_addr constant [125 x i8] c"size_t csv_parse(struct csv_parser *, const void *, size_t, void (*)(void *, size_t, void *), void (*)(int, void *), void *)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"Usage: %s <csv_file>\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"time start failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Read failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Malformed CSV at byte %zu (csv_error=%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"csv_fini failed (csv_error=%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"time end failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"bytes_processed: %zu\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"elapsed_ms: %lld\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"well-formed\00", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @csv_error(%struct.csv_parser* noundef readonly %p) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.csv_error, i64 0, i64 0)) #14
  unreachable

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 6
  %0 = load i32, i32* %status, align 8, !tbaa !3
  ret i32 %0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @csv_strerror(i32 noundef %status) local_unnamed_addr #3 {
entry:
  %0 = icmp ugt i32 %status, 3
  br i1 %0, label %return, label %if.else

if.else:                                          ; preds = %entry
  %idxprom4 = zext i32 %status to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @csv_errors, i64 0, i64 %idxprom4
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi i8* [ %1, %if.else ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef readonly %p) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.csv_parser* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 7
  %0 = load i8, i8* %options, align 4, !tbaa !11
  %conv = zext i8 %0 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @csv_set_opts(%struct.csv_parser* noundef writeonly %p, i8 noundef zeroext %options) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.csv_parser* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %options1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 7
  store i8 %options, i8* %options1, align 4, !tbaa !11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @csv_init(%struct.csv_parser* noundef writeonly %p, i8 noundef zeroext %options) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.csv_parser* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %options1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 7
  %0 = bitcast %struct.csv_parser* %p to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  store i8 %options, i8* %options1, align 4, !tbaa !11
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 8
  store i8 34, i8* %quote_char, align 1, !tbaa !12
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 9
  store i8 44, i8* %delim_char, align 2, !tbaa !13
  %is_space = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 10
  %blk_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 12
  %1 = bitcast i32 (i8)** %is_space to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i64 128, i64* %blk_size, align 8, !tbaa !14
  %malloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 13
  store i8* (i64)* null, i8* (i64)** %malloc_func, align 8, !tbaa !15
  %realloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 14
  store i8* (i8*, i64)* @realloc, i8* (i8*, i64)** %realloc_func, align 8, !tbaa !16
  %free_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 15
  store void (i8*)* @free, void (i8*)** %free_func, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) #6

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) #6

; Function Attrs: nounwind uwtable
define dso_local void @csv_free(%struct.csv_parser* noundef %p) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.csv_parser* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 3
  %0 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %free_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 15
  %1 = load void (i8*)*, void (i8*)** %free_func, align 8, !tbaa !17
  %tobool1.not = icmp eq void (i8*)* %1, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  tail call void %1(i8* noundef nonnull %0) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  store i8* null, i8** %entry_buf, align 8, !tbaa !18
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 5
  store i64 0, i64* %entry_size, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %entry, %if.end5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @csv_fini(%struct.csv_parser* noundef %p, void (i8*, i64, i8*)* noundef readonly %cb1, void (i32, i8*)* noundef readonly %cb2, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.csv_parser* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %quoted1 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 1
  %0 = load i32, i32* %quoted1, align 4, !tbaa !20
  %pstate2 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 0
  %1 = load i32, i32* %pstate2, align 8, !tbaa !21
  %spaces3 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 2
  %2 = load i64, i64* %spaces3, align 8, !tbaa !22
  %entry_pos4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 4
  %3 = load i64, i64* %entry_pos4, align 8, !tbaa !23
  %cmp5 = icmp ne i32 %1, 2
  %tobool.not = icmp eq i32 %0, 0
  %or.cond99 = select i1 %cmp5, i1 true, i1 %tobool.not
  br i1 %or.cond99, label %if.end15, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %options = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 7
  %4 = load i8, i8* %options, align 4, !tbaa !11
  %5 = and i8 %4, 5
  %.not = icmp eq i8 %5, 5
  br i1 %.not, label %if.then14, label %do.body

if.then14:                                        ; preds = %land.lhs.true7
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 6
  store i32 1, i32* %status, align 8, !tbaa !3
  br label %return

if.end15:                                         ; preds = %if.end
  switch i32 %1, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %do.body
    i32 2, label %do.body
  ]

sw.bb:                                            ; preds = %if.end15
  %add.neg = xor i64 %2, -1
  %sub = add i64 %3, %add.neg
  store i64 %sub, i64* %entry_pos4, align 8, !tbaa !23
  br label %do.body

do.body:                                          ; preds = %land.lhs.true7, %sw.bb, %if.end15, %if.end15
  %entry_pos.0 = phi i64 [ %3, %if.end15 ], [ %3, %if.end15 ], [ %sub, %sw.bb ], [ %3, %land.lhs.true7 ]
  %tobool20 = icmp ne i32 %0, 0
  %sub22 = select i1 %tobool20, i64 0, i64 %2
  %spec.select = sub i64 %entry_pos.0, %sub22
  %options24 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 7
  %6 = load i8, i8* %options24, align 4, !tbaa !11
  %7 = and i8 %6, 8
  %tobool27.not = icmp eq i8 %7, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.body
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 3
  %8 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %spec.select
  store i8 0, i8* %arrayidx, align 1, !tbaa !24
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %do.body
  %tobool30.not = icmp eq void (i8*, i64, i8*)* %cb1, null
  br i1 %tobool30.not, label %if.end46, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end29
  %9 = load i8, i8* %options24, align 4, !tbaa !11
  %10 = and i8 %9, 16
  %tobool35 = icmp eq i8 %10, 0
  %or.cond = select i1 %tobool35, i1 true, i1 %tobool20
  %or.cond.not = xor i1 %or.cond, true
  %cmp39 = icmp eq i64 %spec.select, 0
  %or.cond62 = select i1 %or.cond.not, i1 %cmp39, i1 false
  br i1 %or.cond62, label %if.then41, label %if.then43

if.then41:                                        ; preds = %land.lhs.true31
  tail call void %cb1(i8* noundef null, i64 noundef 0, i8* noundef %data) #15
  br label %if.end46

if.then43:                                        ; preds = %land.lhs.true31
  %entry_buf44 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 3
  %11 = load i8*, i8** %entry_buf44, align 8, !tbaa !18
  tail call void %cb1(i8* noundef %11, i64 noundef %spec.select, i8* noundef %data) #15
  br label %if.end46

if.end46:                                         ; preds = %if.end29, %if.then43, %if.then41
  %tobool48.not = icmp eq void (i32, i8*)* %cb2, null
  br i1 %tobool48.not, label %sw.epilog, label %if.then49

if.then49:                                        ; preds = %if.end46
  tail call void %cb2(i32 noundef -1, i8* noundef %data) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end46, %if.then49, %if.end15
  %status54 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 6
  store i32 0, i32* %status54, align 8, !tbaa !3
  store i64 0, i64* %entry_pos4, align 8, !tbaa !23
  %12 = bitcast %struct.csv_parser* %p to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %return

return:                                           ; preds = %if.then14, %sw.epilog, %entry
  %retval.1 = phi i32 [ -1, %entry ], [ -1, %if.then14 ], [ 0, %sw.epilog ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @csv_set_delim(%struct.csv_parser* noundef writeonly %p, i8 noundef zeroext %c) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 9
  store i8 %c, i8* %delim_char, align 2, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @csv_set_quote(%struct.csv_parser* noundef writeonly %p, i8 noundef zeroext %c) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 8
  store i8 %c, i8* %quote_char, align 1, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @csv_get_delim(%struct.csv_parser* noundef readonly %p) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.csv_get_delim, i64 0, i64 0)) #14
  unreachable

if.end:                                           ; preds = %entry
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 9
  %0 = load i8, i8* %delim_char, align 2, !tbaa !13
  ret i8 %0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @csv_get_quote(%struct.csv_parser* noundef readonly %p) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.csv_get_quote, i64 0, i64 0)) #14
  unreachable

if.end:                                           ; preds = %entry
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 8
  %0 = load i8, i8* %quote_char, align 1, !tbaa !12
  ret i8 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @csv_set_space_func(%struct.csv_parser* noundef writeonly %p, i32 (i8)* noundef %f) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %is_space = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 10
  store i32 (i8)* %f, i32 (i8)** %is_space, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @csv_set_term_func(%struct.csv_parser* noundef writeonly %p, i32 (i8)* noundef %f) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %is_term = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 11
  store i32 (i8)* %f, i32 (i8)** %is_term, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @csv_set_realloc_func(%struct.csv_parser* noundef writeonly %p, i8* (i8*, i64)* noundef %f) local_unnamed_addr #5 {
entry:
  %tobool = icmp ne %struct.csv_parser* %p, null
  %tobool1 = icmp ne i8* (i8*, i64)* %f, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %realloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 14
  store i8* (i8*, i64)* %f, i8* (i8*, i64)** %realloc_func, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @csv_set_free_func(%struct.csv_parser* noundef writeonly %p, void (i8*)* noundef %f) local_unnamed_addr #5 {
entry:
  %tobool = icmp ne %struct.csv_parser* %p, null
  %tobool1 = icmp ne void (i8*)* %f, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %free_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 15
  store void (i8*)* %f, void (i8*)** %free_func, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @csv_set_blk_size(%struct.csv_parser* noundef writeonly %p, i64 noundef %size) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %blk_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 12
  store i64 %size, i64* %blk_size, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @csv_get_buffer_size(%struct.csv_parser* noundef readonly %p) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 5
  %0 = load i64, i64* %entry_size, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %0, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @csv_parse(%struct.csv_parser* noundef %p, i8* noundef readonly %s, i64 noundef %len, void (i8*, i64, i8*)* noundef readonly %cb1, void (i32, i8*)* noundef readonly %cb2, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.csv_parser* %p, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([125 x i8], [125 x i8]* @__PRETTY_FUNCTION__.csv_parse, i64 0, i64 0)) #14
  unreachable

if.end:                                           ; preds = %entry
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %delim_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 9
  %0 = load i8, i8* %delim_char, align 2, !tbaa !13
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 8
  %1 = load i8, i8* %quote_char, align 1, !tbaa !12
  %is_space3 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 10
  %2 = load i32 (i8)*, i32 (i8)** %is_space3, align 8, !tbaa !25
  %is_term4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 11
  %3 = load i32 (i8)*, i32 (i8)** %is_term4, align 8, !tbaa !26
  %quoted5 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 1
  %4 = load i32, i32* %quoted5, align 4, !tbaa !20
  %pstate6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 0
  %5 = load i32, i32* %pstate6, align 8, !tbaa !21
  %spaces7 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 2
  %6 = load i64, i64* %spaces7, align 8, !tbaa !22
  %entry_pos8 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 4
  %7 = load i64, i64* %entry_pos8, align 8, !tbaa !23
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 3
  %8 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %tobool9.not = icmp ne i8* %8, null
  %cmp11.not = icmp eq i64 %len, 0
  %or.cond818 = or i1 %cmp11.not, %tobool9.not
  br i1 %or.cond818, label %if.end20, label %if.end.i

if.end.i:                                         ; preds = %if.end2
  %realloc_func.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 14
  %9 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func.i, align 8, !tbaa !16
  %cmp1.i = icmp eq i8* (i8*, i64)* %9, null
  br i1 %cmp1.i, label %if.end20, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %blk_size.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 12
  %10 = load i64, i64* %blk_size.i, align 8, !tbaa !14
  %entry_size.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 5
  %11 = load i64, i64* %entry_size.i, align 8, !tbaa !19
  %sub.i = xor i64 %10, -1
  %cmp4.not.i = icmp ult i64 %11, %sub.i
  %sub7.i = xor i64 %11, -1
  %spec.select.i = select i1 %cmp4.not.i, i64 %10, i64 %sub7.i
  %tobool.not.i = icmp eq i64 %spec.select.i, 0
  br i1 %tobool.not.i, label %return.sink.split.sink.split, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end3.i
  %add.i910 = add i64 %spec.select.i, %11
  %call.i911 = tail call i8* %9(i8* noundef null, i64 noundef %add.i910) #15
  %cmp13.i912 = icmp eq i8* %call.i911, null
  br i1 %cmp13.i912, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i.preheader, %while.body.while.cond_crit_edge.i
  %to_add.1.i913 = phi i64 [ %div.i, %while.body.while.cond_crit_edge.i ], [ %spec.select.i, %while.cond.i.preheader ]
  %tobool14.not.i = icmp ult i64 %to_add.1.i913, 2
  br i1 %tobool14.not.i, label %return.sink.split.sink.split, label %while.body.while.cond_crit_edge.i, !llvm.loop !27

while.body.while.cond_crit_edge.i:                ; preds = %while.body.i
  %div.i = lshr i64 %to_add.1.i913, 1
  %.pre.i = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func.i, align 8, !tbaa !16
  %.pre45.i = load i64, i64* %entry_size.i, align 8, !tbaa !19
  %12 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %add.i = add i64 %div.i, %.pre45.i
  %call.i = tail call i8* %.pre.i(i8* noundef %12, i64 noundef %add.i) #15
  %cmp13.i = icmp eq i8* %call.i, null
  br i1 %cmp13.i, label %while.body.i, label %while.end.i

while.end.i:                                      ; preds = %while.body.while.cond_crit_edge.i, %while.cond.i.preheader
  %to_add.1.i.lcssa = phi i64 [ %spec.select.i, %while.cond.i.preheader ], [ %div.i, %while.body.while.cond_crit_edge.i ]
  %call.i.lcssa = phi i8* [ %call.i911, %while.cond.i.preheader ], [ %call.i, %while.body.while.cond_crit_edge.i ]
  store i8* %call.i.lcssa, i8** %entry_buf, align 8, !tbaa !18
  %13 = load i64, i64* %entry_size.i, align 8, !tbaa !19
  %add20.i = add i64 %13, %to_add.1.i.lcssa
  store i64 %add20.i, i64* %entry_size.i, align 8, !tbaa !19
  br label %if.end20

if.end20:                                         ; preds = %while.end.i, %if.end.i, %if.end2
  br i1 %cmp11.not, label %return.sink.split, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end20
  %options = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 7
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 5
  %realloc_func.i823 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 14
  %blk_size.i826 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 12
  %tobool37.not = icmp eq i32 (i8)* %2, null
  %tobool379.not = icmp eq i32 (i8)* %3, null
  %tobool407.not = icmp eq void (i8*, i64, i8*)* %cb1, null
  %tobool428.not = icmp eq void (i32, i8*)* %cb2, null
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %while.cond.outer.backedge
  %entry_pos.0.ph951 = phi i64 [ %7, %while.body.lr.ph.lr.ph ], [ %entry_pos.0.ph.be, %while.cond.outer.backedge ]
  %spaces.0.ph945 = phi i64 [ %6, %while.body.lr.ph.lr.ph ], [ %spaces.0.ph.be, %while.cond.outer.backedge ]
  %pstate.0.ph943 = phi i32 [ %5, %while.body.lr.ph.lr.ph ], [ %pstate.0.ph.be, %while.cond.outer.backedge ]
  %quoted.0.ph937 = phi i32 [ %4, %while.body.lr.ph.lr.ph ], [ %quoted.0.ph.be, %while.cond.outer.backedge ]
  %pos.0.ph936 = phi i64 [ 0, %while.body.lr.ph.lr.ph ], [ %inc, %while.cond.outer.backedge ]
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %pos.0924 = phi i64 [ %pos.0.ph936, %while.body.lr.ph ], [ %inc, %while.cond.backedge ]
  %14 = load i8, i8* %options, align 4, !tbaa !11
  %15 = load i64, i64* %entry_size, align 8, !tbaa !19
  %16 = shl i8 %14, 4
  %sext = ashr i8 %16, 7
  %sub = sext i8 %sext to i64
  %cond = add i64 %15, %sub
  %cmp24 = icmp eq i64 %entry_pos.0.ph951, %cond
  br i1 %cmp24, label %if.end.i825, label %if.end36

if.end.i825:                                      ; preds = %while.body
  %17 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func.i823, align 8, !tbaa !16
  %cmp1.i824 = icmp eq i8* (i8*, i64)* %17, null
  br i1 %cmp1.i824, label %if.end36, label %if.end3.i833

if.end3.i833:                                     ; preds = %if.end.i825
  %18 = load i64, i64* %blk_size.i826, align 8, !tbaa !14
  %sub.i828 = xor i64 %18, -1
  %cmp4.not.i829 = icmp ult i64 %15, %sub.i828
  %sub7.i830 = xor i64 %15, -1
  %spec.select.i831 = select i1 %cmp4.not.i829, i64 %18, i64 %sub7.i830
  %tobool.not.i832 = icmp eq i64 %spec.select.i831, 0
  br i1 %tobool.not.i832, label %return.sink.split.sink.split, label %while.cond.i842.preheader

while.cond.i842.preheader:                        ; preds = %if.end3.i833
  %19 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %add.i839915 = add i64 %spec.select.i831, %15
  %call.i840916 = tail call i8* %17(i8* noundef %19, i64 noundef %add.i839915) #15
  %cmp13.i841917 = icmp eq i8* %call.i840916, null
  br i1 %cmp13.i841917, label %while.body.i844, label %while.end.i852

while.body.i844:                                  ; preds = %while.cond.i842.preheader, %while.body.while.cond_crit_edge.i848
  %to_add.1.i838918 = phi i64 [ %div.i845, %while.body.while.cond_crit_edge.i848 ], [ %spec.select.i831, %while.cond.i842.preheader ]
  %tobool14.not.i843 = icmp ult i64 %to_add.1.i838918, 2
  br i1 %tobool14.not.i843, label %return.sink.split.sink.split, label %while.body.while.cond_crit_edge.i848, !llvm.loop !27

while.body.while.cond_crit_edge.i848:             ; preds = %while.body.i844
  %div.i845 = lshr i64 %to_add.1.i838918, 1
  %.pre.i846 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func.i823, align 8, !tbaa !16
  %.pre45.i847 = load i64, i64* %entry_size, align 8, !tbaa !19
  %20 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %add.i839 = add i64 %div.i845, %.pre45.i847
  %call.i840 = tail call i8* %.pre.i846(i8* noundef %20, i64 noundef %add.i839) #15
  %cmp13.i841 = icmp eq i8* %call.i840, null
  br i1 %cmp13.i841, label %while.body.i844, label %while.end.i852

while.end.i852:                                   ; preds = %while.body.while.cond_crit_edge.i848, %while.cond.i842.preheader
  %to_add.1.i838.lcssa = phi i64 [ %spec.select.i831, %while.cond.i842.preheader ], [ %div.i845, %while.body.while.cond_crit_edge.i848 ]
  %call.i840.lcssa = phi i8* [ %call.i840916, %while.cond.i842.preheader ], [ %call.i840, %while.body.while.cond_crit_edge.i848 ]
  store i8* %call.i840.lcssa, i8** %entry_buf, align 8, !tbaa !18
  %21 = load i64, i64* %entry_size, align 8, !tbaa !19
  %add20.i851 = add i64 %21, %to_add.1.i838.lcssa
  store i64 %add20.i851, i64* %entry_size, align 8, !tbaa !19
  br label %if.end36

if.end36:                                         ; preds = %while.end.i852, %if.end.i825, %while.body
  %inc = add i64 %pos.0924, 1
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 %pos.0924
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !24
  switch i32 %pstate.0.ph943, label %while.cond.outer.backedge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb176
    i32 3, label %sw.bb338
  ]

sw.bb:                                            ; preds = %if.end36, %if.end36
  br i1 %tobool37.not, label %cond.false41, label %cond.true38

cond.true38:                                      ; preds = %sw.bb
  %call39 = tail call i32 %2(i8 noundef zeroext %22) #15
  %tobool40.not = icmp eq i32 %call39, 0
  %cmp51.not = icmp eq i8 %22, %0
  %or.cond = select i1 %tobool40.not, i1 true, i1 %cmp51.not
  br i1 %or.cond, label %if.else54, label %while.cond.backedge

cond.false41:                                     ; preds = %sw.bb
  switch i8 %22, label %if.else54 [
    i8 32, label %land.lhs.true48
    i8 9, label %land.lhs.true48
  ]

land.lhs.true48:                                  ; preds = %cond.false41, %cond.false41
  %cmp51.not.old = icmp eq i8 %22, %0
  br i1 %cmp51.not.old, label %if.else54, label %while.cond.backedge

while.cond.backedge:                              ; preds = %land.lhs.true48, %cond.true38
  %cmp21 = icmp ult i64 %inc, %len
  br i1 %cmp21, label %while.body, label %return.sink.split, !llvm.loop !29

if.else54:                                        ; preds = %cond.false41, %land.lhs.true48, %cond.true38
  %.lcssa975 = phi i8 [ %22, %cond.false41 ], [ %0, %land.lhs.true48 ], [ %22, %cond.true38 ]
  br i1 %tobool379.not, label %cond.false59, label %cond.true56

cond.true56:                                      ; preds = %if.else54
  %call57 = tail call i32 %3(i8 noundef zeroext %.lcssa975) #15
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.else123, label %if.then67

cond.false59:                                     ; preds = %if.else54
  switch i8 %.lcssa975, label %if.else123 [
    i8 13, label %if.then67
    i8 10, label %if.then67
  ]

if.then67:                                        ; preds = %cond.false59, %cond.false59, %cond.true56
  %cmp68 = icmp eq i32 %pstate.0.ph943, 1
  br i1 %cmp68, label %do.body, label %if.else108

do.body:                                          ; preds = %if.then67
  %tobool71 = icmp ne i32 %quoted.0.ph937, 0
  %sub73 = select i1 %tobool71, i64 0, i64 %spaces.0.ph945
  %spec.select = sub i64 %entry_pos.0.ph951, %sub73
  %23 = load i8, i8* %options, align 4, !tbaa !11
  %24 = and i8 %23, 8
  %tobool78.not = icmp eq i8 %24, 0
  br i1 %tobool78.not, label %if.end82, label %if.then79

if.then79:                                        ; preds = %do.body
  %25 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %arrayidx81 = getelementptr inbounds i8, i8* %25, i64 %spec.select
  store i8 0, i8* %arrayidx81, align 1, !tbaa !24
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %do.body
  br i1 %tobool407.not, label %if.end100, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.end82
  %26 = load i8, i8* %options, align 4, !tbaa !11
  %27 = and i8 %26, 16
  %tobool88 = icmp eq i8 %27, 0
  %or.cond512 = select i1 %tobool88, i1 true, i1 %tobool71
  %or.cond512.not = xor i1 %or.cond512, true
  %cmp92 = icmp eq i64 %spec.select, 0
  %or.cond513 = select i1 %or.cond512.not, i1 %cmp92, i1 false
  br i1 %or.cond513, label %if.then94, label %if.then97

if.then94:                                        ; preds = %land.lhs.true84
  tail call void %cb1(i8* noundef null, i64 noundef 0, i8* noundef %data) #15
  br label %if.end100

if.then97:                                        ; preds = %land.lhs.true84
  %28 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  tail call void %cb1(i8* noundef %28, i64 noundef %spec.select, i8* noundef %data) #15
  br label %if.end100

if.end100:                                        ; preds = %if.end82, %if.then97, %if.then94
  br i1 %tobool428.not, label %while.cond.outer.backedge, label %if.then103

if.then103:                                       ; preds = %if.end100
  %conv104 = zext i8 %.lcssa975 to i32
  tail call void %cb2(i32 noundef %conv104, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.else108:                                       ; preds = %if.then67
  %29 = load i8, i8* %options, align 4, !tbaa !11
  %30 = and i8 %29, 2
  %tobool112.not = icmp eq i8 %30, 0
  %brmerge = or i1 %tobool112.not, %tobool428.not
  %quoted.0.ph940.mux = select i1 %tobool112.not, i32 %quoted.0.ph937, i32 0
  %spaces.0.ph949.mux = select i1 %tobool112.not, i64 %spaces.0.ph945, i64 0
  %entry_pos.0.ph957.mux = select i1 %tobool112.not, i64 %entry_pos.0.ph951, i64 0
  br i1 %brmerge, label %while.cond.outer.backedge, label %if.then116

if.then116:                                       ; preds = %if.else108
  %conv117 = zext i8 %.lcssa975 to i32
  tail call void %cb2(i32 noundef %conv117, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.else123:                                       ; preds = %cond.false59, %cond.true56
  %cmp126 = icmp eq i8 %.lcssa975, %0
  br i1 %cmp126, label %do.body129, label %if.else162

do.body129:                                       ; preds = %if.else123
  %tobool130 = icmp ne i32 %quoted.0.ph937, 0
  %sub132 = select i1 %tobool130, i64 0, i64 %spaces.0.ph945
  %spec.select819 = sub i64 %entry_pos.0.ph951, %sub132
  %31 = load i8, i8* %options, align 4, !tbaa !11
  %32 = and i8 %31, 8
  %tobool137.not = icmp eq i8 %32, 0
  br i1 %tobool137.not, label %if.end141, label %if.then138

if.then138:                                       ; preds = %do.body129
  %33 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %arrayidx140 = getelementptr inbounds i8, i8* %33, i64 %spec.select819
  store i8 0, i8* %arrayidx140, align 1, !tbaa !24
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %do.body129
  br i1 %tobool407.not, label %while.cond.outer.backedge, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %if.end141
  %34 = load i8, i8* %options, align 4, !tbaa !11
  %35 = and i8 %34, 16
  %tobool147 = icmp eq i8 %35, 0
  %or.cond514 = select i1 %tobool147, i1 true, i1 %tobool130
  %or.cond514.not = xor i1 %or.cond514, true
  %cmp151 = icmp eq i64 %spec.select819, 0
  %or.cond515 = select i1 %or.cond514.not, i1 %cmp151, i1 false
  br i1 %or.cond515, label %if.then153, label %if.then156

if.then153:                                       ; preds = %land.lhs.true143
  tail call void %cb1(i8* noundef null, i64 noundef 0, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.then156:                                       ; preds = %land.lhs.true143
  %36 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  tail call void %cb1(i8* noundef %36, i64 noundef %spec.select819, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.else162:                                       ; preds = %if.else123
  %cmp165 = icmp eq i8 %.lcssa975, %1
  br i1 %cmp165, label %while.cond.outer.backedge, label %if.else168

if.else168:                                       ; preds = %if.else162
  %37 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc170 = add i64 %entry_pos.0.ph951, 1
  %arrayidx171 = getelementptr inbounds i8, i8* %37, i64 %entry_pos.0.ph951
  store i8 %.lcssa975, i8* %arrayidx171, align 1, !tbaa !24
  br label %while.cond.outer.backedge

sw.bb176:                                         ; preds = %if.end36
  %conv177 = zext i8 %22 to i32
  %cmp179 = icmp eq i8 %22, %1
  br i1 %cmp179, label %if.then181, label %if.else203

if.then181:                                       ; preds = %sw.bb176
  %tobool182.not = icmp eq i32 %quoted.0.ph937, 0
  br i1 %tobool182.not, label %if.else187, label %if.then183

if.then183:                                       ; preds = %if.then181
  %38 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc185 = add i64 %entry_pos.0.ph951, 1
  %arrayidx186 = getelementptr inbounds i8, i8* %38, i64 %entry_pos.0.ph951
  store i8 %1, i8* %arrayidx186, align 1, !tbaa !24
  br label %while.cond.outer.backedge

if.else187:                                       ; preds = %if.then181
  %39 = load i8, i8* %options, align 4, !tbaa !11
  %40 = and i8 %39, 1
  %tobool191.not = icmp eq i8 %40, 0
  br i1 %tobool191.not, label %if.end198, label %return.sink.split.sink.split

if.end198:                                        ; preds = %if.else187
  %41 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc200 = add i64 %entry_pos.0.ph951, 1
  %arrayidx201 = getelementptr inbounds i8, i8* %41, i64 %entry_pos.0.ph951
  store i8 %1, i8* %arrayidx201, align 1, !tbaa !24
  br label %while.cond.outer.backedge

if.else203:                                       ; preds = %sw.bb176
  %cmp206 = icmp eq i8 %22, %0
  br i1 %cmp206, label %if.then208, label %if.else249

if.then208:                                       ; preds = %if.else203
  %tobool209.not = icmp eq i32 %quoted.0.ph937, 0
  br i1 %tobool209.not, label %if.then217, label %if.then210

if.then210:                                       ; preds = %if.then208
  %42 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc212 = add i64 %entry_pos.0.ph951, 1
  %arrayidx213 = getelementptr inbounds i8, i8* %42, i64 %entry_pos.0.ph951
  store i8 %0, i8* %arrayidx213, align 1, !tbaa !24
  br label %while.cond.outer.backedge

if.then217:                                       ; preds = %if.then208
  %sub218 = sub i64 %entry_pos.0.ph951, %spaces.0.ph945
  %43 = load i8, i8* %options, align 4, !tbaa !11
  %44 = and i8 %43, 8
  %tobool223.not = icmp eq i8 %44, 0
  br i1 %tobool223.not, label %if.end227, label %if.then224

if.then224:                                       ; preds = %if.then217
  %45 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %arrayidx226 = getelementptr inbounds i8, i8* %45, i64 %sub218
  store i8 0, i8* %arrayidx226, align 1, !tbaa !24
  br label %if.end227

if.end227:                                        ; preds = %if.then224, %if.then217
  br i1 %tobool407.not, label %while.cond.outer.backedge, label %land.lhs.true229

land.lhs.true229:                                 ; preds = %if.end227
  %46 = load i8, i8* %options, align 4, !tbaa !11
  %47 = and i8 %46, 16
  %tobool233 = icmp ne i8 %47, 0
  %cmp237 = icmp eq i64 %sub218, 0
  %or.cond517 = select i1 %tobool233, i1 %cmp237, i1 false
  br i1 %or.cond517, label %if.then239, label %if.then242

if.then239:                                       ; preds = %land.lhs.true229
  tail call void %cb1(i8* noundef null, i64 noundef 0, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.then242:                                       ; preds = %land.lhs.true229
  %48 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  tail call void %cb1(i8* noundef %48, i64 noundef %sub218, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.else249:                                       ; preds = %if.else203
  br i1 %tobool379.not, label %cond.false254, label %cond.true251

cond.true251:                                     ; preds = %if.else249
  %call252 = tail call i32 %3(i8 noundef zeroext %22) #15
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.else310, label %if.then262

cond.false254:                                    ; preds = %if.else249
  switch i8 %22, label %if.else310 [
    i8 13, label %if.then262
    i8 10, label %if.then262
  ]

if.then262:                                       ; preds = %cond.false254, %cond.false254, %cond.true251
  %tobool263.not = icmp eq i32 %quoted.0.ph937, 0
  br i1 %tobool263.not, label %if.then267, label %if.else305

if.then267:                                       ; preds = %if.then262
  %sub268 = sub i64 %entry_pos.0.ph951, %spaces.0.ph945
  %49 = load i8, i8* %options, align 4, !tbaa !11
  %50 = and i8 %49, 8
  %tobool273.not = icmp eq i8 %50, 0
  br i1 %tobool273.not, label %if.end277, label %if.then274

if.then274:                                       ; preds = %if.then267
  %51 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %arrayidx276 = getelementptr inbounds i8, i8* %51, i64 %sub268
  store i8 0, i8* %arrayidx276, align 1, !tbaa !24
  br label %if.end277

if.end277:                                        ; preds = %if.then274, %if.then267
  br i1 %tobool407.not, label %if.end295, label %land.lhs.true279

land.lhs.true279:                                 ; preds = %if.end277
  %52 = load i8, i8* %options, align 4, !tbaa !11
  %53 = and i8 %52, 16
  %tobool283 = icmp ne i8 %53, 0
  %cmp287 = icmp eq i64 %sub268, 0
  %or.cond520 = select i1 %tobool283, i1 %cmp287, i1 false
  br i1 %or.cond520, label %if.then289, label %if.then292

if.then289:                                       ; preds = %land.lhs.true279
  tail call void %cb1(i8* noundef null, i64 noundef 0, i8* noundef %data) #15
  br label %if.end295

if.then292:                                       ; preds = %land.lhs.true279
  %54 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  tail call void %cb1(i8* noundef %54, i64 noundef %sub268, i8* noundef %data) #15
  br label %if.end295

if.end295:                                        ; preds = %if.end277, %if.then292, %if.then289
  br i1 %tobool428.not, label %while.cond.outer.backedge, label %if.then300

if.then300:                                       ; preds = %if.end295
  tail call void %cb2(i32 noundef %conv177, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.else305:                                       ; preds = %if.then262
  %55 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc307 = add i64 %entry_pos.0.ph951, 1
  %arrayidx308 = getelementptr inbounds i8, i8* %55, i64 %entry_pos.0.ph951
  store i8 %22, i8* %arrayidx308, align 1, !tbaa !24
  br label %while.cond.outer.backedge

if.else310:                                       ; preds = %cond.false254, %cond.true251
  %tobool311.not = icmp eq i32 %quoted.0.ph937, 0
  br i1 %tobool311.not, label %land.lhs.true312, label %if.else330

land.lhs.true312:                                 ; preds = %if.else310
  br i1 %tobool37.not, label %cond.false317, label %cond.true314

cond.true314:                                     ; preds = %land.lhs.true312
  %call315 = tail call i32 %2(i8 noundef zeroext %22) #15
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %if.else330, label %if.then325

cond.false317:                                    ; preds = %land.lhs.true312
  switch i8 %22, label %if.else330 [
    i8 32, label %if.then325
    i8 9, label %if.then325
  ]

if.then325:                                       ; preds = %cond.false317, %cond.false317, %cond.true314
  %56 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc327 = add i64 %entry_pos.0.ph951, 1
  %arrayidx328 = getelementptr inbounds i8, i8* %56, i64 %entry_pos.0.ph951
  store i8 %22, i8* %arrayidx328, align 1, !tbaa !24
  %inc329 = add i64 %spaces.0.ph945, 1
  br label %while.cond.outer.backedge

if.else330:                                       ; preds = %cond.false317, %cond.true314, %if.else310
  %57 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc332 = add i64 %entry_pos.0.ph951, 1
  %arrayidx333 = getelementptr inbounds i8, i8* %57, i64 %entry_pos.0.ph951
  store i8 %22, i8* %arrayidx333, align 1, !tbaa !24
  br label %while.cond.outer.backedge

sw.bb338:                                         ; preds = %if.end36
  %conv339 = zext i8 %22 to i32
  %cmp341 = icmp eq i8 %22, %0
  br i1 %cmp341, label %if.then343, label %if.else378

if.then343:                                       ; preds = %sw.bb338
  %add.neg = xor i64 %spaces.0.ph945, -1
  %sub344 = add i64 %entry_pos.0.ph951, %add.neg
  %tobool346 = icmp ne i32 %quoted.0.ph937, 0
  %sub348 = select i1 %tobool346, i64 0, i64 %spaces.0.ph945
  %spec.select820 = sub i64 %sub344, %sub348
  %58 = load i8, i8* %options, align 4, !tbaa !11
  %59 = and i8 %58, 8
  %tobool353.not = icmp eq i8 %59, 0
  br i1 %tobool353.not, label %if.end357, label %if.then354

if.then354:                                       ; preds = %if.then343
  %60 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %arrayidx356 = getelementptr inbounds i8, i8* %60, i64 %spec.select820
  store i8 0, i8* %arrayidx356, align 1, !tbaa !24
  br label %if.end357

if.end357:                                        ; preds = %if.then354, %if.then343
  br i1 %tobool407.not, label %while.cond.outer.backedge, label %land.lhs.true359

land.lhs.true359:                                 ; preds = %if.end357
  %61 = load i8, i8* %options, align 4, !tbaa !11
  %62 = and i8 %61, 16
  %tobool363 = icmp eq i8 %62, 0
  %or.cond522 = select i1 %tobool363, i1 true, i1 %tobool346
  %or.cond522.not = xor i1 %or.cond522, true
  %cmp367 = icmp eq i64 %spec.select820, 0
  %or.cond523 = select i1 %or.cond522.not, i1 %cmp367, i1 false
  br i1 %or.cond523, label %if.then369, label %if.then372

if.then369:                                       ; preds = %land.lhs.true359
  tail call void %cb1(i8* noundef null, i64 noundef 0, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.then372:                                       ; preds = %land.lhs.true359
  %63 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  tail call void %cb1(i8* noundef %63, i64 noundef %spec.select820, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.else378:                                       ; preds = %sw.bb338
  br i1 %tobool379.not, label %cond.false383, label %cond.true380

cond.true380:                                     ; preds = %if.else378
  %call381 = tail call i32 %3(i8 noundef zeroext %22) #15
  %tobool382.not = icmp eq i32 %call381, 0
  br i1 %tobool382.not, label %if.else434, label %if.then391

cond.false383:                                    ; preds = %if.else378
  switch i8 %22, label %if.else434 [
    i8 13, label %if.then391
    i8 10, label %if.then391
  ]

if.then391:                                       ; preds = %cond.false383, %cond.false383, %cond.true380
  %add392.neg = xor i64 %spaces.0.ph945, -1
  %sub393 = add i64 %entry_pos.0.ph951, %add392.neg
  %tobool395 = icmp ne i32 %quoted.0.ph937, 0
  %sub397 = select i1 %tobool395, i64 0, i64 %spaces.0.ph945
  %spec.select821 = sub i64 %sub393, %sub397
  %64 = load i8, i8* %options, align 4, !tbaa !11
  %65 = and i8 %64, 8
  %tobool402.not = icmp eq i8 %65, 0
  br i1 %tobool402.not, label %if.end406, label %if.then403

if.then403:                                       ; preds = %if.then391
  %66 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %arrayidx405 = getelementptr inbounds i8, i8* %66, i64 %spec.select821
  store i8 0, i8* %arrayidx405, align 1, !tbaa !24
  br label %if.end406

if.end406:                                        ; preds = %if.then403, %if.then391
  br i1 %tobool407.not, label %if.end424, label %land.lhs.true408

land.lhs.true408:                                 ; preds = %if.end406
  %67 = load i8, i8* %options, align 4, !tbaa !11
  %68 = and i8 %67, 16
  %tobool412 = icmp eq i8 %68, 0
  %or.cond525 = select i1 %tobool412, i1 true, i1 %tobool395
  %or.cond525.not = xor i1 %or.cond525, true
  %cmp416 = icmp eq i64 %spec.select821, 0
  %or.cond526 = select i1 %or.cond525.not, i1 %cmp416, i1 false
  br i1 %or.cond526, label %if.then418, label %if.then421

if.then418:                                       ; preds = %land.lhs.true408
  tail call void %cb1(i8* noundef null, i64 noundef 0, i8* noundef %data) #15
  br label %if.end424

if.then421:                                       ; preds = %land.lhs.true408
  %69 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  tail call void %cb1(i8* noundef %69, i64 noundef %spec.select821, i8* noundef %data) #15
  br label %if.end424

if.end424:                                        ; preds = %if.end406, %if.then421, %if.then418
  br i1 %tobool428.not, label %while.cond.outer.backedge, label %if.then429

if.then429:                                       ; preds = %if.end424
  tail call void %cb2(i32 noundef %conv339, i8* noundef %data) #15
  br label %while.cond.outer.backedge

if.else434:                                       ; preds = %cond.false383, %cond.true380
  br i1 %tobool37.not, label %cond.false439, label %cond.true436

cond.true436:                                     ; preds = %if.else434
  %call437 = tail call i32 %2(i8 noundef zeroext %22) #15
  %tobool438.not = icmp eq i32 %call437, 0
  br i1 %tobool438.not, label %if.else452, label %if.then447

cond.false439:                                    ; preds = %if.else434
  switch i8 %22, label %if.else452 [
    i8 32, label %if.then447
    i8 9, label %if.then447
  ]

if.then447:                                       ; preds = %cond.false439, %cond.false439, %cond.true436
  %70 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc449 = add i64 %entry_pos.0.ph951, 1
  %arrayidx450 = getelementptr inbounds i8, i8* %70, i64 %entry_pos.0.ph951
  store i8 %22, i8* %arrayidx450, align 1, !tbaa !24
  %inc451 = add i64 %spaces.0.ph945, 1
  br label %while.cond.outer.backedge

if.else452:                                       ; preds = %cond.false439, %cond.true436
  %cmp455 = icmp eq i8 %22, %1
  br i1 %cmp455, label %if.then457, label %if.else477

if.then457:                                       ; preds = %if.else452
  %tobool458.not = icmp eq i64 %spaces.0.ph945, 0
  br i1 %tobool458.not, label %while.cond.outer.backedge, label %if.then459

if.then459:                                       ; preds = %if.then457
  %71 = load i8, i8* %options, align 4, !tbaa !11
  %72 = and i8 %71, 1
  %tobool463.not = icmp eq i8 %72, 0
  br i1 %tobool463.not, label %if.end471, label %return.sink.split.sink.split

if.end471:                                        ; preds = %if.then459
  %73 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc473 = add i64 %entry_pos.0.ph951, 1
  %arrayidx474 = getelementptr inbounds i8, i8* %73, i64 %entry_pos.0.ph951
  store i8 %1, i8* %arrayidx474, align 1, !tbaa !24
  br label %while.cond.outer.backedge

if.else477:                                       ; preds = %if.else452
  %74 = load i8, i8* %options, align 4, !tbaa !11
  %75 = and i8 %74, 1
  %tobool481.not = icmp eq i8 %75, 0
  br i1 %tobool481.not, label %if.end489, label %return.sink.split.sink.split

if.end489:                                        ; preds = %if.else477
  %76 = load i8*, i8** %entry_buf, align 8, !tbaa !18
  %inc491 = add i64 %entry_pos.0.ph951, 1
  %arrayidx492 = getelementptr inbounds i8, i8* %76, i64 %entry_pos.0.ph951
  store i8 %22, i8* %arrayidx492, align 1, !tbaa !24
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end36, %if.else168, %if.then210, %if.then325, %if.else330, %if.else305, %if.then183, %if.end198, %if.end489, %if.end471, %if.then447, %if.end141, %if.then156, %if.then153, %if.else162, %if.end227, %if.then242, %if.then239, %if.then300, %if.end295, %if.end357, %if.then372, %if.then369, %if.then429, %if.end424, %if.then457, %if.then103, %if.end100, %if.then116, %if.else108
  %quoted.0.ph.be = phi i32 [ %quoted.0.ph940.mux, %if.else108 ], [ 0, %if.then103 ], [ 0, %if.end100 ], [ 0, %if.then116 ], [ %quoted.0.ph937, %if.then447 ], [ %quoted.0.ph937, %if.end471 ], [ %quoted.0.ph937, %if.end489 ], [ %quoted.0.ph937, %if.then183 ], [ 0, %if.end198 ], [ %quoted.0.ph937, %if.then210 ], [ %quoted.0.ph937, %if.else305 ], [ %quoted.0.ph937, %if.else330 ], [ 0, %if.then325 ], [ 0, %if.else168 ], [ 0, %if.end141 ], [ 0, %if.then156 ], [ 0, %if.then153 ], [ 1, %if.else162 ], [ 0, %if.end227 ], [ 0, %if.then242 ], [ 0, %if.then239 ], [ 0, %if.then300 ], [ 0, %if.end295 ], [ 0, %if.end357 ], [ 0, %if.then372 ], [ 0, %if.then369 ], [ 0, %if.then429 ], [ 0, %if.end424 ], [ %quoted.0.ph937, %if.then457 ], [ %quoted.0.ph937, %if.end36 ]
  %pstate.0.ph.be = phi i32 [ 0, %if.else108 ], [ 0, %if.then103 ], [ 0, %if.end100 ], [ 0, %if.then116 ], [ 3, %if.then447 ], [ 3, %if.end471 ], [ 2, %if.end489 ], [ 3, %if.then183 ], [ 2, %if.end198 ], [ 2, %if.then210 ], [ 2, %if.else305 ], [ 2, %if.else330 ], [ 2, %if.then325 ], [ 2, %if.else168 ], [ 1, %if.end141 ], [ 1, %if.then156 ], [ 1, %if.then153 ], [ 2, %if.else162 ], [ 1, %if.end227 ], [ 1, %if.then242 ], [ 1, %if.then239 ], [ 0, %if.then300 ], [ 0, %if.end295 ], [ 1, %if.end357 ], [ 1, %if.then372 ], [ 1, %if.then369 ], [ 0, %if.then429 ], [ 0, %if.end424 ], [ 2, %if.then457 ], [ %pstate.0.ph943, %if.end36 ]
  %spaces.0.ph.be = phi i64 [ %spaces.0.ph949.mux, %if.else108 ], [ 0, %if.then103 ], [ 0, %if.end100 ], [ 0, %if.then116 ], [ %inc451, %if.then447 ], [ 0, %if.end471 ], [ 0, %if.end489 ], [ %spaces.0.ph945, %if.then183 ], [ 0, %if.end198 ], [ %spaces.0.ph945, %if.then210 ], [ %spaces.0.ph945, %if.else305 ], [ 0, %if.else330 ], [ %inc329, %if.then325 ], [ %spaces.0.ph945, %if.else168 ], [ 0, %if.end141 ], [ 0, %if.then156 ], [ 0, %if.then153 ], [ %spaces.0.ph945, %if.else162 ], [ 0, %if.end227 ], [ 0, %if.then242 ], [ 0, %if.then239 ], [ 0, %if.then300 ], [ 0, %if.end295 ], [ 0, %if.end357 ], [ 0, %if.then372 ], [ 0, %if.then369 ], [ 0, %if.then429 ], [ 0, %if.end424 ], [ 0, %if.then457 ], [ %spaces.0.ph945, %if.end36 ]
  %entry_pos.0.ph.be = phi i64 [ %entry_pos.0.ph957.mux, %if.else108 ], [ 0, %if.then103 ], [ 0, %if.end100 ], [ 0, %if.then116 ], [ %inc449, %if.then447 ], [ %inc473, %if.end471 ], [ %inc491, %if.end489 ], [ %inc185, %if.then183 ], [ %inc200, %if.end198 ], [ %inc212, %if.then210 ], [ %inc307, %if.else305 ], [ %inc332, %if.else330 ], [ %inc327, %if.then325 ], [ %inc170, %if.else168 ], [ 0, %if.end141 ], [ 0, %if.then156 ], [ 0, %if.then153 ], [ %entry_pos.0.ph951, %if.else162 ], [ 0, %if.end227 ], [ 0, %if.then242 ], [ 0, %if.then239 ], [ 0, %if.then300 ], [ 0, %if.end295 ], [ 0, %if.end357 ], [ 0, %if.then372 ], [ 0, %if.then369 ], [ 0, %if.then429 ], [ 0, %if.end424 ], [ %entry_pos.0.ph951, %if.then457 ], [ %entry_pos.0.ph951, %if.end36 ]
  %cmp21923 = icmp ult i64 %inc, %len
  br i1 %cmp21923, label %while.body.lr.ph, label %return.sink.split, !llvm.loop !29

return.sink.split.sink.split:                     ; preds = %while.body.i, %if.else477, %if.then459, %if.else187, %if.end3.i833, %while.body.i844, %if.end3.i
  %.sink1069 = phi i32 [ 3, %if.end3.i ], [ 2, %while.body.i844 ], [ 3, %if.end3.i833 ], [ 1, %if.else187 ], [ 1, %if.then459 ], [ 1, %if.else477 ], [ 2, %while.body.i ]
  %.sink1068.ph = phi i32 [ %4, %if.end3.i ], [ %quoted.0.ph937, %while.body.i844 ], [ %quoted.0.ph937, %if.end3.i833 ], [ %quoted.0.ph937, %if.else477 ], [ %quoted.0.ph937, %if.then459 ], [ 0, %if.else187 ], [ %4, %while.body.i ]
  %.sink1067.ph = phi i32 [ %5, %if.end3.i ], [ %pstate.0.ph943, %while.body.i844 ], [ %pstate.0.ph943, %if.end3.i833 ], [ 3, %if.else477 ], [ 3, %if.then459 ], [ 2, %if.else187 ], [ %5, %while.body.i ]
  %.sink1066.ph = phi i64 [ %6, %if.end3.i ], [ %spaces.0.ph945, %while.body.i844 ], [ %spaces.0.ph945, %if.end3.i833 ], [ %spaces.0.ph945, %if.else187 ], [ %spaces.0.ph945, %if.then459 ], [ %spaces.0.ph945, %if.else477 ], [ %6, %while.body.i ]
  %.sink1065.ph = phi i64 [ %7, %if.end3.i ], [ %entry_pos.0.ph951, %while.body.i844 ], [ %entry_pos.0.ph951, %if.end3.i833 ], [ %entry_pos.0.ph951, %if.else187 ], [ %entry_pos.0.ph951, %if.then459 ], [ %entry_pos.0.ph951, %if.else477 ], [ %7, %while.body.i ]
  %retval.1.ph.ph = phi i64 [ 0, %if.end3.i ], [ %pos.0924, %while.body.i844 ], [ %pos.0924, %if.end3.i833 ], [ %pos.0.ph936, %if.else187 ], [ %pos.0.ph936, %if.then459 ], [ %pos.0.ph936, %if.else477 ], [ 0, %while.body.i ]
  %status483 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %p, i64 0, i32 6
  store i32 %.sink1069, i32* %status483, align 8, !tbaa !3
  br label %return.sink.split

return.sink.split:                                ; preds = %while.cond.outer.backedge, %while.cond.backedge, %return.sink.split.sink.split, %if.end20
  %.sink1068 = phi i32 [ %4, %if.end20 ], [ %.sink1068.ph, %return.sink.split.sink.split ], [ %quoted.0.ph937, %while.cond.backedge ], [ %quoted.0.ph.be, %while.cond.outer.backedge ]
  %.sink1067 = phi i32 [ %5, %if.end20 ], [ %.sink1067.ph, %return.sink.split.sink.split ], [ %pstate.0.ph943, %while.cond.backedge ], [ %pstate.0.ph.be, %while.cond.outer.backedge ]
  %.sink1066 = phi i64 [ %6, %if.end20 ], [ %.sink1066.ph, %return.sink.split.sink.split ], [ %spaces.0.ph945, %while.cond.backedge ], [ %spaces.0.ph.be, %while.cond.outer.backedge ]
  %.sink1065 = phi i64 [ %7, %if.end20 ], [ %.sink1065.ph, %return.sink.split.sink.split ], [ %entry_pos.0.ph951, %while.cond.backedge ], [ %entry_pos.0.ph.be, %while.cond.outer.backedge ]
  %retval.1.ph = phi i64 [ 0, %if.end20 ], [ %retval.1.ph.ph, %return.sink.split.sink.split ], [ %inc, %while.cond.backedge ], [ %inc, %while.cond.outer.backedge ]
  store i32 %.sink1068, i32* %quoted5, align 4, !tbaa !20
  store i32 %.sink1067, i32* %pstate6, align 8, !tbaa !21
  store i64 %.sink1066, i64* %spaces7, align 8, !tbaa !22
  store i64 %.sink1065, i64* %entry_pos8, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.1 = phi i64 [ 0, %if.end ], [ %retval.1.ph, %return.sink.split ]
  ret i64 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @csv_write(i8* noundef writeonly %dest, i64 noundef %dest_size, i8* noundef readonly %src, i64 noundef %src_size) local_unnamed_addr #7 {
entry:
  %cmp.i = icmp eq i8* %src, null
  br i1 %cmp.i, label %csv_write2.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp eq i8* %dest, null
  %spec.select.i = select i1 %cmp1.i, i64 0, i64 %dest_size
  %cmp4.not.i = icmp eq i64 %spec.select.i, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %incdec.ptr.i = getelementptr inbounds i8, i8* %dest, i64 1
  store i8 34, i8* %dest, align 1, !tbaa !24
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i
  %cdest.0.i = phi i8* [ %incdec.ptr.i, %if.then5.i ], [ %dest, %if.end.i ]
  %tobool.not74.i = icmp eq i64 %src_size, 0
  br i1 %tobool.not74.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %if.end6.i, %if.end26.i
  %chars.078.i = phi i64 [ %spec.select72.i, %if.end26.i ], [ 1, %if.end6.i ]
  %csrc.077.i = phi i8* [ %incdec.ptr32.i, %if.end26.i ], [ %src, %if.end6.i ]
  %cdest.176.i = phi i8* [ %cdest.4.i, %if.end26.i ], [ %cdest.0.i, %if.end6.i ]
  %src_size.addr.075.i = phi i64 [ %dec.i, %if.end26.i ], [ %src_size, %if.end6.i ]
  %0 = load i8, i8* %csrc.077.i, align 1, !tbaa !24
  %cmp8.i = icmp eq i8 %0, 34
  br i1 %cmp8.i, label %if.then10.i, label %if.end21.i

if.then10.i:                                      ; preds = %while.body.i
  %cmp11.i = icmp ugt i64 %spec.select.i, %chars.078.i
  br i1 %cmp11.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.then10.i
  %incdec.ptr14.i = getelementptr inbounds i8, i8* %cdest.176.i, i64 1
  store i8 34, i8* %cdest.176.i, align 1, !tbaa !24
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.then10.i
  %cdest.2.i = phi i8* [ %incdec.ptr14.i, %if.then13.i ], [ %cdest.176.i, %if.then10.i ]
  %cmp16.not.i = icmp eq i64 %chars.078.i, -1
  %inc19.i = add i64 %chars.078.i, 1
  %spec.select71.i = select i1 %cmp16.not.i, i64 -1, i64 %inc19.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end15.i, %while.body.i
  %cdest.3.i = phi i8* [ %cdest.176.i, %while.body.i ], [ %cdest.2.i, %if.end15.i ]
  %chars.1.i = phi i64 [ %chars.078.i, %while.body.i ], [ %spec.select71.i, %if.end15.i ]
  %cmp22.i = icmp ugt i64 %spec.select.i, %chars.1.i
  br i1 %cmp22.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end21.i
  %1 = load i8, i8* %csrc.077.i, align 1, !tbaa !24
  %incdec.ptr25.i = getelementptr inbounds i8, i8* %cdest.3.i, i64 1
  store i8 %1, i8* %cdest.3.i, align 1, !tbaa !24
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end21.i
  %cdest.4.i = phi i8* [ %incdec.ptr25.i, %if.then24.i ], [ %cdest.3.i, %if.end21.i ]
  %cmp27.not.i = icmp eq i64 %chars.1.i, -1
  %inc30.i = add i64 %chars.1.i, 1
  %spec.select72.i = select i1 %cmp27.not.i, i64 -1, i64 %inc30.i
  %dec.i = add i64 %src_size.addr.075.i, -1
  %incdec.ptr32.i = getelementptr inbounds i8, i8* %csrc.077.i, i64 1
  %tobool.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i, !llvm.loop !30

while.end.i:                                      ; preds = %if.end26.i, %if.end6.i
  %cdest.1.lcssa.i = phi i8* [ %cdest.0.i, %if.end6.i ], [ %cdest.4.i, %if.end26.i ]
  %chars.0.lcssa.i = phi i64 [ 1, %if.end6.i ], [ %spec.select72.i, %if.end26.i ]
  %cmp33.i = icmp ugt i64 %spec.select.i, %chars.0.lcssa.i
  br i1 %cmp33.i, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %while.end.i
  store i8 34, i8* %cdest.1.lcssa.i, align 1, !tbaa !24
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %while.end.i
  %cmp37.not.i = icmp eq i64 %chars.0.lcssa.i, -1
  %inc40.i = add i64 %chars.0.lcssa.i, 1
  %spec.select73.i = select i1 %cmp37.not.i, i64 -1, i64 %inc40.i
  br label %csv_write2.exit

csv_write2.exit:                                  ; preds = %entry, %if.end36.i
  %retval.0.i = phi i64 [ %spec.select73.i, %if.end36.i ], [ 0, %entry ]
  ret i64 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @csv_write2(i8* noundef writeonly %dest, i64 noundef %dest_size, i8* noundef readonly %src, i64 noundef %src_size, i8 noundef zeroext %quote) local_unnamed_addr #7 {
entry:
  %cmp = icmp eq i8* %src, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %dest, null
  %spec.select = select i1 %cmp1, i64 0, i64 %dest_size
  %cmp4.not = icmp eq i64 %spec.select, 0
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %dest, i64 1
  store i8 %quote, i8* %dest, align 1, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %cdest.0 = phi i8* [ %incdec.ptr, %if.then5 ], [ %dest, %if.end ]
  %tobool.not74 = icmp eq i64 %src_size, 0
  br i1 %tobool.not74, label %while.end, label %while.body

while.body:                                       ; preds = %if.end6, %if.end26
  %chars.078 = phi i64 [ %spec.select72, %if.end26 ], [ 1, %if.end6 ]
  %csrc.077 = phi i8* [ %incdec.ptr32, %if.end26 ], [ %src, %if.end6 ]
  %cdest.176 = phi i8* [ %cdest.4, %if.end26 ], [ %cdest.0, %if.end6 ]
  %src_size.addr.075 = phi i64 [ %dec, %if.end26 ], [ %src_size, %if.end6 ]
  %0 = load i8, i8* %csrc.077, align 1, !tbaa !24
  %cmp8 = icmp eq i8 %0, %quote
  br i1 %cmp8, label %if.then10, label %if.end21

if.then10:                                        ; preds = %while.body
  %cmp11 = icmp ugt i64 %spec.select, %chars.078
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %incdec.ptr14 = getelementptr inbounds i8, i8* %cdest.176, i64 1
  store i8 %quote, i8* %cdest.176, align 1, !tbaa !24
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10
  %cdest.2 = phi i8* [ %incdec.ptr14, %if.then13 ], [ %cdest.176, %if.then10 ]
  %cmp16.not = icmp eq i64 %chars.078, -1
  %inc19 = add i64 %chars.078, 1
  %spec.select71 = select i1 %cmp16.not, i64 -1, i64 %inc19
  br label %if.end21

if.end21:                                         ; preds = %if.end15, %while.body
  %cdest.3 = phi i8* [ %cdest.176, %while.body ], [ %cdest.2, %if.end15 ]
  %chars.1 = phi i64 [ %chars.078, %while.body ], [ %spec.select71, %if.end15 ]
  %cmp22 = icmp ugt i64 %spec.select, %chars.1
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %1 = load i8, i8* %csrc.077, align 1, !tbaa !24
  %incdec.ptr25 = getelementptr inbounds i8, i8* %cdest.3, i64 1
  store i8 %1, i8* %cdest.3, align 1, !tbaa !24
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21
  %cdest.4 = phi i8* [ %incdec.ptr25, %if.then24 ], [ %cdest.3, %if.end21 ]
  %cmp27.not = icmp eq i64 %chars.1, -1
  %inc30 = add i64 %chars.1, 1
  %spec.select72 = select i1 %cmp27.not, i64 -1, i64 %inc30
  %dec = add i64 %src_size.addr.075, -1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %csrc.077, i64 1
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !30

while.end:                                        ; preds = %if.end26, %if.end6
  %cdest.1.lcssa = phi i8* [ %cdest.0, %if.end6 ], [ %cdest.4, %if.end26 ]
  %chars.0.lcssa = phi i64 [ 1, %if.end6 ], [ %spec.select72, %if.end26 ]
  %cmp33 = icmp ugt i64 %spec.select, %chars.0.lcssa
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %while.end
  store i8 %quote, i8* %cdest.1.lcssa, align 1, !tbaa !24
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %while.end
  %cmp37.not = icmp eq i64 %chars.0.lcssa, -1
  %inc40 = add i64 %chars.0.lcssa, 1
  %spec.select73 = select i1 %cmp37.not, i64 -1, i64 %inc40
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end36
  %retval.0 = phi i64 [ %spec.select73, %if.end36 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @csv_fwrite(%struct._IO_FILE* noundef %fp, i8* noundef readonly %src, i64 noundef %src_size) local_unnamed_addr #8 {
entry:
  %cmp.i = icmp eq %struct._IO_FILE* %fp, null
  %cmp1.i = icmp eq i8* %src, null
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %csv_fwrite2.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @fputc(i32 noundef 34, %struct._IO_FILE* noundef nonnull %fp) #15
  %cmp2.i = icmp eq i32 %call.i, -1
  br i1 %cmp2.i, label %csv_fwrite2.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %tobool.not42.i = icmp eq i64 %src_size, 0
  br i1 %tobool.not42.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.preheader.i, %if.end23.i
  %csrc.044.i = phi i8* [ %incdec.ptr.i, %if.end23.i ], [ %src, %while.cond.preheader.i ]
  %src_size.addr.043.i = phi i64 [ %dec.i, %if.end23.i ], [ %src_size, %while.cond.preheader.i ]
  %0 = load i8, i8* %csrc.044.i, align 1, !tbaa !24
  %cmp8.i = icmp eq i8 %0, 34
  br i1 %cmp8.i, label %if.then10.i, label %if.end17.i

if.then10.i:                                      ; preds = %while.body.i
  %call12.i = tail call i32 @fputc(i32 noundef 34, %struct._IO_FILE* noundef %fp) #15
  %cmp13.i = icmp eq i32 %call12.i, -1
  br i1 %cmp13.i, label %csv_fwrite2.exit, label %if.then10.if.end17_crit_edge.i

if.then10.if.end17_crit_edge.i:                   ; preds = %if.then10.i
  %.pre.i = load i8, i8* %csrc.044.i, align 1, !tbaa !24
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then10.if.end17_crit_edge.i, %while.body.i
  %1 = phi i8 [ %.pre.i, %if.then10.if.end17_crit_edge.i ], [ %0, %while.body.i ]
  %conv18.i = zext i8 %1 to i32
  %call19.i = tail call i32 @fputc(i32 noundef %conv18.i, %struct._IO_FILE* noundef %fp) #15
  %cmp20.i = icmp eq i32 %call19.i, -1
  br i1 %cmp20.i, label %csv_fwrite2.exit, label %if.end23.i

if.end23.i:                                       ; preds = %if.end17.i
  %dec.i = add i64 %src_size.addr.043.i, -1
  %incdec.ptr.i = getelementptr inbounds i8, i8* %csrc.044.i, i64 1
  %tobool.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i, !llvm.loop !31

while.end.i:                                      ; preds = %if.end23.i, %while.cond.preheader.i
  %call25.i = tail call i32 @fputc(i32 noundef 34, %struct._IO_FILE* noundef %fp) #15
  %cmp26.i = icmp eq i32 %call25.i, -1
  %..i = sext i1 %cmp26.i to i32
  br label %csv_fwrite2.exit

csv_fwrite2.exit:                                 ; preds = %if.then10.i, %if.end17.i, %entry, %if.end.i, %while.end.i
  %retval.0.i = phi i32 [ 0, %entry ], [ -1, %if.end.i ], [ %..i, %while.end.i ], [ -1, %if.end17.i ], [ -1, %if.then10.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @csv_fwrite2(%struct._IO_FILE* noundef %fp, i8* noundef readonly %src, i64 noundef %src_size, i8 noundef zeroext %quote) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct._IO_FILE* %fp, null
  %cmp1 = icmp eq i8* %src, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i8 %quote to i32
  %call = tail call i32 @fputc(i32 noundef %conv, %struct._IO_FILE* noundef nonnull %fp)
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %tobool.not42 = icmp eq i64 %src_size, 0
  br i1 %tobool.not42, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end23
  %csrc.044 = phi i8* [ %incdec.ptr, %if.end23 ], [ %src, %while.cond.preheader ]
  %src_size.addr.043 = phi i64 [ %dec, %if.end23 ], [ %src_size, %while.cond.preheader ]
  %0 = load i8, i8* %csrc.044, align 1, !tbaa !24
  %cmp8 = icmp eq i8 %0, %quote
  br i1 %cmp8, label %if.then10, label %if.end17

if.then10:                                        ; preds = %while.body
  %call12 = tail call i32 @fputc(i32 noundef %conv, %struct._IO_FILE* noundef %fp)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %cleanup, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  %.pre = load i8, i8* %csrc.044, align 1, !tbaa !24
  br label %if.end17

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %while.body
  %1 = phi i8 [ %.pre, %if.then10.if.end17_crit_edge ], [ %0, %while.body ]
  %conv18 = zext i8 %1 to i32
  %call19 = tail call i32 @fputc(i32 noundef %conv18, %struct._IO_FILE* noundef %fp)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end17
  %dec = add i64 %src_size.addr.043, -1
  %incdec.ptr = getelementptr inbounds i8, i8* %csrc.044, i64 1
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !31

while.end:                                        ; preds = %if.end23, %while.cond.preheader
  %call25 = tail call i32 @fputc(i32 noundef %conv, %struct._IO_FILE* noundef %fp)
  %cmp26 = icmp eq i32 %call25, -1
  %. = sext i1 %cmp26 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then10, %while.end, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.end ], [ %., %while.end ], [ -1, %if.then10 ], [ -1, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #1 {
entry:
  %parser = alloca %struct.csv_parser, align 8
  %buf = alloca [4096 x i8], align 16
  %t0 = alloca %struct.timespec, align 8
  %t1 = alloca %struct.timespec, align 8
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %1 = load i8*, i8** %argv, align 8, !tbaa !10
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #16
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1
  %2 = load i8*, i8** %arrayidx1, align 8, !tbaa !10
  %call2 = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* noundef %2) #16
  br label %return

if.end12:                                         ; preds = %if.end
  %4 = bitcast %struct.csv_parser* %parser to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #15
  %options1.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 7
  %5 = bitcast %struct.csv_parser* %parser to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store i8 1, i8* %options1.i, align 4, !tbaa !11
  %quote_char.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 8
  store i8 34, i8* %quote_char.i, align 1, !tbaa !12
  %delim_char.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 9
  store i8 44, i8* %delim_char.i, align 2, !tbaa !13
  %is_space.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 10
  %blk_size.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 12
  %6 = bitcast i32 (i8)** %is_space.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false) #15
  store i64 128, i64* %blk_size.i, align 8, !tbaa !14
  %malloc_func.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 13
  store i8* (i64)* null, i8* (i64)** %malloc_func.i, align 8, !tbaa !15
  %realloc_func.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 14
  store i8* (i8*, i64)* @realloc, i8* (i8*, i64)** %realloc_func.i, align 8, !tbaa !16
  %free_func.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 15
  store void (i8*)* @free, void (i8*)** %free_func.i, align 8, !tbaa !17
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %7) #15
  %8 = bitcast %struct.timespec* %t0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #15
  %9 = bitcast %struct.timespec* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #15
  %call.i = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %t0) #15
  %cmp14.not = icmp eq i32 %call.i, 0
  br i1 %cmp14.not, label %while.cond, label %if.then15

if.then15:                                        ; preds = %if.end12
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %10) #16
  %entry_buf.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 3
  %12 = load i8*, i8** %entry_buf.i, align 8, !tbaa !18
  %tobool.not.i = icmp eq i8* %12, null
  br i1 %tobool.not.i, label %csv_free.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then15
  %13 = load void (i8*)*, void (i8*)** %free_func.i, align 8, !tbaa !17
  %tobool1.not.i = icmp eq void (i8*)* %13, null
  br i1 %tobool1.not.i, label %csv_free.exit, label %if.then2.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void %13(i8* noundef nonnull %12) #15
  br label %csv_free.exit

csv_free.exit:                                    ; preds = %if.then15, %land.lhs.true.i, %if.then2.i
  store i8* null, i8** %entry_buf.i, align 8, !tbaa !18
  %entry_size.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 5
  store i64 0, i64* %entry_size.i, align 8, !tbaa !19
  %call17 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call2)
  br label %cleanup63

while.cond:                                       ; preds = %if.end12, %if.end26
  %total_bytes.0 = phi i64 [ %add, %if.end26 ], [ 0, %if.end12 ]
  %call19 = call i64 @fread(i8* noundef nonnull %7, i64 noundef 1, i64 noundef 4096, %struct._IO_FILE* noundef nonnull %call2)
  %cmp20 = icmp eq i64 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %while.cond
  %call22 = call i32 @ferror(%struct._IO_FILE* noundef nonnull %call2) #15
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then23

if.then23:                                        ; preds = %if.then21
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %14) #16
  br label %if.end42

if.end26:                                         ; preds = %while.cond
  %call28 = call i64 @csv_parse(%struct.csv_parser* noundef nonnull %parser, i8* noundef nonnull %7, i64 noundef %call19, void (i8*, i64, i8*)* noundef null, void (i32, i8*)* noundef null, i8* noundef null)
  %add = add i64 %call28, %total_bytes.0
  %cmp29.not = icmp eq i64 %call28, %call19
  br i1 %cmp29.not, label %while.cond, label %if.then30

if.then30:                                        ; preds = %if.end26
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %add31 = add i64 %add, 1
  %status.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 6
  %17 = load i32, i32* %status.i, align 8, !tbaa !3
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i64 noundef %add31, i32 noundef %17) #16
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then21
  %quoted1.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 1
  %18 = load i32, i32* %quoted1.i, align 4, !tbaa !20
  %pstate2.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 0
  %19 = load i32, i32* %pstate2.i, align 8, !tbaa !21
  %spaces3.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 2
  %20 = load i64, i64* %spaces3.i, align 8, !tbaa !22
  %entry_pos4.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 4
  %21 = load i64, i64* %entry_pos4.i, align 8, !tbaa !23
  %cmp5.i = icmp ne i32 %19, 2
  %tobool.not.i90 = icmp eq i32 %18, 0
  %or.cond99.i = select i1 %cmp5.i, i1 true, i1 %tobool.not.i90
  br i1 %or.cond99.i, label %if.end15.i, label %land.lhs.true7.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true
  %22 = load i8, i8* %options1.i, align 4, !tbaa !11
  %23 = and i8 %22, 5
  %.not.i = icmp eq i8 %23, 5
  br i1 %.not.i, label %if.then39, label %do.body.i

if.end15.i:                                       ; preds = %land.lhs.true
  switch i32 %19, label %csv_fini.exit.thread [
    i32 3, label %sw.bb.i
    i32 1, label %do.body.i
    i32 2, label %do.body.i
  ]

sw.bb.i:                                          ; preds = %if.end15.i
  %add.neg.i = xor i64 %20, -1
  %sub.i = add i64 %21, %add.neg.i
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb.i, %if.end15.i, %if.end15.i, %land.lhs.true7.i
  %entry_pos.0.i = phi i64 [ %21, %if.end15.i ], [ %21, %if.end15.i ], [ %sub.i, %sw.bb.i ], [ %21, %land.lhs.true7.i ]
  %24 = load i8, i8* %options1.i, align 4, !tbaa !11
  %25 = and i8 %24, 8
  %tobool27.not.i = icmp eq i8 %25, 0
  br i1 %tobool27.not.i, label %csv_fini.exit.thread, label %if.then28.i

if.then28.i:                                      ; preds = %do.body.i
  %sub22.i = select i1 %tobool.not.i90, i64 %20, i64 0
  %spec.select.i = sub i64 %entry_pos.0.i, %sub22.i
  %entry_buf.i92 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 3
  %26 = load i8*, i8** %entry_buf.i92, align 8, !tbaa !18
  %arrayidx.i = getelementptr inbounds i8, i8* %26, i64 %spec.select.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !24
  br label %csv_fini.exit.thread

csv_fini.exit.thread:                             ; preds = %if.end15.i, %if.then28.i, %do.body.i
  %status54.i = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 6
  store i32 0, i32* %status54.i, align 8, !tbaa !3
  store i64 0, i64* %entry_pos4.i, align 8, !tbaa !23
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false) #15
  br label %if.end42

if.then39:                                        ; preds = %land.lhs.true7.i
  %status.i91 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 6
  store i32 1, i32* %status.i91, align 8, !tbaa !3
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1) #16
  br label %if.end42

if.end42:                                         ; preds = %if.then23, %if.then30, %csv_fini.exit.thread, %if.then39
  %total_bytes.1.ph113 = phi i64 [ %total_bytes.0, %if.then39 ], [ %total_bytes.0, %csv_fini.exit.thread ], [ %total_bytes.0, %if.then23 ], [ %add, %if.then30 ]
  %tobool50.not = phi i1 [ true, %if.then39 ], [ false, %csv_fini.exit.thread ], [ true, %if.then23 ], [ true, %if.then30 ]
  %call.i94 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %t1) #15
  %cmp44.not = icmp eq i32 %call.i94, 0
  br i1 %cmp44.not, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.end42
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %28) #16
  %entry_buf.i95 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 3
  %30 = load i8*, i8** %entry_buf.i95, align 8, !tbaa !18
  %tobool.not.i96 = icmp eq i8* %30, null
  br i1 %tobool.not.i96, label %csv_free.exit102, label %land.lhs.true.i99

land.lhs.true.i99:                                ; preds = %if.then45
  %31 = load void (i8*)*, void (i8*)** %free_func.i, align 8, !tbaa !17
  %tobool1.not.i98 = icmp eq void (i8*)* %31, null
  br i1 %tobool1.not.i98, label %csv_free.exit102, label %if.then2.i100

if.then2.i100:                                    ; preds = %land.lhs.true.i99
  call void %31(i8* noundef nonnull %30) #15
  br label %csv_free.exit102

csv_free.exit102:                                 ; preds = %if.then45, %land.lhs.true.i99, %if.then2.i100
  store i8* null, i8** %entry_buf.i95, align 8, !tbaa !18
  %entry_size.i101 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %parser, i64 0, i32 5
  store i64 0, i64* %entry_size.i101, align 8, !tbaa !19
  %call47 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call2)
  br label %cleanup63

if.end48:                                         ; preds = %if.end42
  %call49 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call2)
  br i1 %tobool50.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end48
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str, i64 0, i64 0))
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48
  %cond = phi i32 [ 0, %if.then51 ], [ 2, %if.end48 ]
  %call54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i64 noundef %total_bytes.1.ph113)
  %t0.idx = getelementptr inbounds %struct.timespec, %struct.timespec* %t0, i64 0, i32 0
  %t0.idx.val = load i64, i64* %t0.idx, align 8, !tbaa !32
  %t0.idx87 = getelementptr inbounds %struct.timespec, %struct.timespec* %t0, i64 0, i32 1
  %t0.idx87.val = load i64, i64* %t0.idx87, align 8, !tbaa !34
  %t1.idx = getelementptr inbounds %struct.timespec, %struct.timespec* %t1, i64 0, i32 0
  %t1.idx.val = load i64, i64* %t1.idx, align 8, !tbaa !32
  %t1.idx88 = getelementptr inbounds %struct.timespec, %struct.timespec* %t1, i64 0, i32 1
  %t1.idx88.val = load i64, i64* %t1.idx88, align 8, !tbaa !34
  %sub.i103 = sub nsw i64 %t1.idx.val, %t0.idx.val
  %sub3.i = sub nsw i64 %t1.idx88.val, %t0.idx87.val
  %mul.i = mul nsw i64 %sub.i103, 1000
  %div.i = sdiv i64 %sub3.i, 1000000
  %add.i = add nsw i64 %div.i, %mul.i
  %call56 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i64 noundef %add.i)
  br label %cleanup63

cleanup63:                                        ; preds = %csv_free.exit, %csv_free.exit102, %if.end53
  %retval.0 = phi i32 [ 1, %csv_free.exit ], [ 1, %csv_free.exit102 ], [ %cond, %if.end53 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #15
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %7) #15
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #15
  br label %return

return:                                           ; preds = %if.then4, %cleanup63, %if.then
  %retval.3 = phi i32 [ 1, %if.then ], [ 1, %if.then4 ], [ %retval.0, %cleanup63 ]
  ret i32 %retval.3
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare dso_local noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

attributes #0 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!3 = !{!4, !5, i64 40}
!4 = !{!"csv_parser", !5, i64 0, !5, i64 4, !8, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !6, i64 44, !6, i64 45, !6, i64 46, !9, i64 48, !9, i64 56, !8, i64 64, !9, i64 72, !9, i64 80, !9, i64 88}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!4, !6, i64 44}
!12 = !{!4, !6, i64 45}
!13 = !{!4, !6, i64 46}
!14 = !{!4, !8, i64 64}
!15 = !{!4, !9, i64 72}
!16 = !{!4, !9, i64 80}
!17 = !{!4, !9, i64 88}
!18 = !{!4, !9, i64 16}
!19 = !{!4, !8, i64 32}
!20 = !{!4, !5, i64 4}
!21 = !{!4, !5, i64 0}
!22 = !{!4, !8, i64 8}
!23 = !{!4, !8, i64 24}
!24 = !{!6, !6, i64 0}
!25 = !{!4, !9, i64 48}
!26 = !{!4, !9, i64 56}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = !{!33, !8, i64 0}
!33 = !{!"timespec", !8, i64 0, !8, i64 8}
!34 = !{!33, !8, i64 8}
