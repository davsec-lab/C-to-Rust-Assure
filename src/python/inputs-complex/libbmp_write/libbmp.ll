; ModuleID = 'libbmp.c'
source_filename = "libbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.md5_ctx = type { [4 x i32], i64, [64 x i8], i64 }
%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._bmp_pixel = type { i8, i8, i8 }
%struct._bmp_img = type { %struct._bmp_header, %struct._bmp_pixel** }
%struct.timespec = type { i64, i64 }

@md5_transform.s = internal unnamed_addr constant [64 x i32] [i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21], align 16
@md5_transform.k = internal unnamed_addr constant [64 x i32] [i32 -680876936, i32 -389564586, i32 606105819, i32 -1044525330, i32 -176418897, i32 1200080426, i32 -1473231341, i32 -45705983, i32 1770035416, i32 -1958414417, i32 -42063, i32 -1990404162, i32 1804603682, i32 -40341101, i32 -1502002290, i32 1236535329, i32 -165796510, i32 -1069501632, i32 643717713, i32 -373897302, i32 -701558691, i32 38016083, i32 -660478335, i32 -405537848, i32 568446438, i32 -1019803690, i32 -187363961, i32 1163531501, i32 -1444681467, i32 -51403784, i32 1735328473, i32 -1926607734, i32 -378558, i32 -2022574463, i32 1839030562, i32 -35309556, i32 -1530992060, i32 1272893353, i32 -155497632, i32 -1094730640, i32 681279174, i32 -358537222, i32 -722521979, i32 76029189, i32 -640364487, i32 -421815835, i32 530742520, i32 -995338651, i32 -198630844, i32 1126891415, i32 -1416354905, i32 -57434055, i32 1700485571, i32 -1894986606, i32 -1051523, i32 -2054922799, i32 1873313359, i32 -30611744, i32 -1560198380, i32 1309151649, i32 -145523070, i32 -1120210379, i32 718787259, i32 -343485551], align 16
@md5_final.pad = internal constant i8 -128, align 1
@md5_final.zero = internal constant i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"md5: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Checksum: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%03u\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"Usage: %s <width> <height>\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Invalid width: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Invalid height: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Failed to get start time\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"../file/test.bmp\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to write BMP file: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Failed to get end time\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"elapsed_time_seconds: %.6f\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @md5_update(%struct.md5_ctx* noundef %ctx, i8* nocapture noundef readonly %data, i64 noundef %len) unnamed_addr #2 {
entry:
  %m.i = alloca [16 x i32], align 16
  %mul = shl i64 %len, 3
  %bit_len = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 1
  %0 = load i64, i64* %bit_len, align 8, !tbaa !3
  %add = add i64 %0, %mul
  store i64 %add, i64* %bit_len, align 8, !tbaa !3
  %cmp.not31 = icmp eq i64 %len, 0
  br i1 %cmp.not31, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %buffer_len = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 3
  %arraydecay = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 0
  %1 = bitcast [16 x i32]* %m.i to i8*
  %arrayidx.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 0, i64 0
  %arrayidx2.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 0, i64 1
  %arrayidx4.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 0, i64 2
  %arrayidx6.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 0, i64 3
  %arrayidx8.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 1
  %arrayidx11.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 2
  %arrayidx16.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 3
  %arrayidx20.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 0
  %arrayidx7.1.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 4
  %arrayidx8.1.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 5
  %arrayidx11.1.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 6
  %arrayidx16.1.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 7
  %arrayidx20.1.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 1
  %arrayidx7.2.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 8
  %arrayidx8.2.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 9
  %arrayidx11.2.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 10
  %arrayidx16.2.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 11
  %arrayidx20.2.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 2
  %arrayidx7.3.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 12
  %arrayidx8.3.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 13
  %arrayidx11.3.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 14
  %arrayidx16.3.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 15
  %arrayidx20.3.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 3
  %arrayidx7.4.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 16
  %arrayidx8.4.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 17
  %arrayidx11.4.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 18
  %arrayidx16.4.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 19
  %arrayidx20.4.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 4
  %arrayidx7.5.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 20
  %arrayidx8.5.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 21
  %arrayidx11.5.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 22
  %arrayidx16.5.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 23
  %arrayidx20.5.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 5
  %arrayidx7.6.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 24
  %arrayidx8.6.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 25
  %arrayidx11.6.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 26
  %arrayidx16.6.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 27
  %arrayidx20.6.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 6
  %arrayidx7.7.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 28
  %arrayidx8.7.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 29
  %arrayidx11.7.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 30
  %arrayidx16.7.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 31
  %arrayidx20.7.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 7
  %arrayidx7.8.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 32
  %arrayidx8.8.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 33
  %arrayidx11.8.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 34
  %arrayidx16.8.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 35
  %arrayidx20.8.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 8
  %arrayidx7.9.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 36
  %arrayidx8.9.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 37
  %arrayidx11.9.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 38
  %arrayidx16.9.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 39
  %arrayidx20.9.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 9
  %arrayidx7.10.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 40
  %arrayidx8.10.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 41
  %arrayidx11.10.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 42
  %arrayidx16.10.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 43
  %arrayidx20.10.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 10
  %arrayidx7.11.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 44
  %arrayidx8.11.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 45
  %arrayidx11.11.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 46
  %arrayidx16.11.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 47
  %arrayidx20.11.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 11
  %arrayidx7.12.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 48
  %arrayidx8.12.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 49
  %arrayidx11.12.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 50
  %arrayidx16.12.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 51
  %arrayidx20.12.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 12
  %arrayidx7.13.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 52
  %arrayidx8.13.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 53
  %arrayidx11.13.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 54
  %arrayidx16.13.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 55
  %arrayidx20.13.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 13
  %arrayidx7.14.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 56
  %arrayidx8.14.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 57
  %arrayidx11.14.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 58
  %arrayidx16.14.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 59
  %arrayidx20.14.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 14
  %arrayidx7.15.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 60
  %arrayidx8.15.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 61
  %arrayidx11.15.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 62
  %arrayidx16.15.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 63
  %arrayidx20.15.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 15
  %.pre = load i64, i64* %buffer_len, align 8, !tbaa !8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %2 = phi i64 [ %.pre, %while.body.lr.ph ], [ %76, %if.end ]
  %data.addr.033 = phi i8* [ %data, %while.body.lr.ph ], [ %add.ptr5, %if.end ]
  %len.addr.032 = phi i64 [ %len, %while.body.lr.ph ], [ %sub6, %if.end ]
  %sub = sub i64 64, %2
  %cmp1 = icmp ult i64 %len.addr.032, %sub
  %cond = select i1 %cmp1, i64 %len.addr.032, i64 %sub
  %add.ptr = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx, i64 0, i32 2, i64 %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %add.ptr, i8* align 1 %data.addr.033, i64 %cond, i1 false)
  %3 = load i64, i64* %buffer_len, align 8, !tbaa !8
  %add4 = add i64 %cond, %3
  store i64 %add4, i64* %buffer_len, align 8, !tbaa !8
  %add.ptr5 = getelementptr inbounds i8, i8* %data.addr.033, i64 %cond
  %sub6 = sub i64 %len.addr.032, %cond
  %cmp8 = icmp eq i64 %add4, 64
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #17
  %4 = load i32, i32* %arrayidx.i, align 8, !tbaa !9
  %5 = load i32, i32* %arrayidx2.i, align 4, !tbaa !9
  %6 = load i32, i32* %arrayidx4.i, align 8, !tbaa !9
  %7 = load i32, i32* %arrayidx6.i, align 4, !tbaa !9
  %8 = load i8, i8* %arraydecay, align 1, !tbaa !11
  %conv.i = zext i8 %8 to i32
  %9 = load i8, i8* %arrayidx8.i, align 1, !tbaa !11
  %conv9.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv9.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %10 = load i8, i8* %arrayidx11.i, align 1, !tbaa !11
  %conv12.i = zext i8 %10 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 16
  %or14.i = or i32 %or.i, %shl13.i
  %11 = load i8, i8* %arrayidx16.i, align 1, !tbaa !11
  %conv17.i = zext i8 %11 to i32
  %shl18.i = shl nuw i32 %conv17.i, 24
  %or19.i = or i32 %or14.i, %shl18.i
  store i32 %or19.i, i32* %arrayidx20.i, align 16, !tbaa !9
  %12 = load i8, i8* %arrayidx7.1.i, align 1, !tbaa !11
  %conv.1.i = zext i8 %12 to i32
  %13 = load i8, i8* %arrayidx8.1.i, align 1, !tbaa !11
  %conv9.1.i = zext i8 %13 to i32
  %shl.1.i = shl nuw nsw i32 %conv9.1.i, 8
  %or.1.i = or i32 %shl.1.i, %conv.1.i
  %14 = load i8, i8* %arrayidx11.1.i, align 1, !tbaa !11
  %conv12.1.i = zext i8 %14 to i32
  %shl13.1.i = shl nuw nsw i32 %conv12.1.i, 16
  %or14.1.i = or i32 %or.1.i, %shl13.1.i
  %15 = load i8, i8* %arrayidx16.1.i, align 1, !tbaa !11
  %conv17.1.i = zext i8 %15 to i32
  %shl18.1.i = shl nuw i32 %conv17.1.i, 24
  %or19.1.i = or i32 %or14.1.i, %shl18.1.i
  store i32 %or19.1.i, i32* %arrayidx20.1.i, align 4, !tbaa !9
  %16 = load i8, i8* %arrayidx7.2.i, align 1, !tbaa !11
  %conv.2.i = zext i8 %16 to i32
  %17 = load i8, i8* %arrayidx8.2.i, align 1, !tbaa !11
  %conv9.2.i = zext i8 %17 to i32
  %shl.2.i = shl nuw nsw i32 %conv9.2.i, 8
  %or.2.i = or i32 %shl.2.i, %conv.2.i
  %18 = load i8, i8* %arrayidx11.2.i, align 1, !tbaa !11
  %conv12.2.i = zext i8 %18 to i32
  %shl13.2.i = shl nuw nsw i32 %conv12.2.i, 16
  %or14.2.i = or i32 %or.2.i, %shl13.2.i
  %19 = load i8, i8* %arrayidx16.2.i, align 1, !tbaa !11
  %conv17.2.i = zext i8 %19 to i32
  %shl18.2.i = shl nuw i32 %conv17.2.i, 24
  %or19.2.i = or i32 %or14.2.i, %shl18.2.i
  store i32 %or19.2.i, i32* %arrayidx20.2.i, align 8, !tbaa !9
  %20 = load i8, i8* %arrayidx7.3.i, align 1, !tbaa !11
  %conv.3.i = zext i8 %20 to i32
  %21 = load i8, i8* %arrayidx8.3.i, align 1, !tbaa !11
  %conv9.3.i = zext i8 %21 to i32
  %shl.3.i = shl nuw nsw i32 %conv9.3.i, 8
  %or.3.i = or i32 %shl.3.i, %conv.3.i
  %22 = load i8, i8* %arrayidx11.3.i, align 1, !tbaa !11
  %conv12.3.i = zext i8 %22 to i32
  %shl13.3.i = shl nuw nsw i32 %conv12.3.i, 16
  %or14.3.i = or i32 %or.3.i, %shl13.3.i
  %23 = load i8, i8* %arrayidx16.3.i, align 1, !tbaa !11
  %conv17.3.i = zext i8 %23 to i32
  %shl18.3.i = shl nuw i32 %conv17.3.i, 24
  %or19.3.i = or i32 %or14.3.i, %shl18.3.i
  store i32 %or19.3.i, i32* %arrayidx20.3.i, align 4, !tbaa !9
  %24 = load i8, i8* %arrayidx7.4.i, align 1, !tbaa !11
  %conv.4.i = zext i8 %24 to i32
  %25 = load i8, i8* %arrayidx8.4.i, align 1, !tbaa !11
  %conv9.4.i = zext i8 %25 to i32
  %shl.4.i = shl nuw nsw i32 %conv9.4.i, 8
  %or.4.i = or i32 %shl.4.i, %conv.4.i
  %26 = load i8, i8* %arrayidx11.4.i, align 1, !tbaa !11
  %conv12.4.i = zext i8 %26 to i32
  %shl13.4.i = shl nuw nsw i32 %conv12.4.i, 16
  %or14.4.i = or i32 %or.4.i, %shl13.4.i
  %27 = load i8, i8* %arrayidx16.4.i, align 1, !tbaa !11
  %conv17.4.i = zext i8 %27 to i32
  %shl18.4.i = shl nuw i32 %conv17.4.i, 24
  %or19.4.i = or i32 %or14.4.i, %shl18.4.i
  store i32 %or19.4.i, i32* %arrayidx20.4.i, align 16, !tbaa !9
  %28 = load i8, i8* %arrayidx7.5.i, align 1, !tbaa !11
  %conv.5.i = zext i8 %28 to i32
  %29 = load i8, i8* %arrayidx8.5.i, align 1, !tbaa !11
  %conv9.5.i = zext i8 %29 to i32
  %shl.5.i = shl nuw nsw i32 %conv9.5.i, 8
  %or.5.i = or i32 %shl.5.i, %conv.5.i
  %30 = load i8, i8* %arrayidx11.5.i, align 1, !tbaa !11
  %conv12.5.i = zext i8 %30 to i32
  %shl13.5.i = shl nuw nsw i32 %conv12.5.i, 16
  %or14.5.i = or i32 %or.5.i, %shl13.5.i
  %31 = load i8, i8* %arrayidx16.5.i, align 1, !tbaa !11
  %conv17.5.i = zext i8 %31 to i32
  %shl18.5.i = shl nuw i32 %conv17.5.i, 24
  %or19.5.i = or i32 %or14.5.i, %shl18.5.i
  store i32 %or19.5.i, i32* %arrayidx20.5.i, align 4, !tbaa !9
  %32 = load i8, i8* %arrayidx7.6.i, align 1, !tbaa !11
  %conv.6.i = zext i8 %32 to i32
  %33 = load i8, i8* %arrayidx8.6.i, align 1, !tbaa !11
  %conv9.6.i = zext i8 %33 to i32
  %shl.6.i = shl nuw nsw i32 %conv9.6.i, 8
  %or.6.i = or i32 %shl.6.i, %conv.6.i
  %34 = load i8, i8* %arrayidx11.6.i, align 1, !tbaa !11
  %conv12.6.i = zext i8 %34 to i32
  %shl13.6.i = shl nuw nsw i32 %conv12.6.i, 16
  %or14.6.i = or i32 %or.6.i, %shl13.6.i
  %35 = load i8, i8* %arrayidx16.6.i, align 1, !tbaa !11
  %conv17.6.i = zext i8 %35 to i32
  %shl18.6.i = shl nuw i32 %conv17.6.i, 24
  %or19.6.i = or i32 %or14.6.i, %shl18.6.i
  store i32 %or19.6.i, i32* %arrayidx20.6.i, align 8, !tbaa !9
  %36 = load i8, i8* %arrayidx7.7.i, align 1, !tbaa !11
  %conv.7.i = zext i8 %36 to i32
  %37 = load i8, i8* %arrayidx8.7.i, align 1, !tbaa !11
  %conv9.7.i = zext i8 %37 to i32
  %shl.7.i = shl nuw nsw i32 %conv9.7.i, 8
  %or.7.i = or i32 %shl.7.i, %conv.7.i
  %38 = load i8, i8* %arrayidx11.7.i, align 1, !tbaa !11
  %conv12.7.i = zext i8 %38 to i32
  %shl13.7.i = shl nuw nsw i32 %conv12.7.i, 16
  %or14.7.i = or i32 %or.7.i, %shl13.7.i
  %39 = load i8, i8* %arrayidx16.7.i, align 1, !tbaa !11
  %conv17.7.i = zext i8 %39 to i32
  %shl18.7.i = shl nuw i32 %conv17.7.i, 24
  %or19.7.i = or i32 %or14.7.i, %shl18.7.i
  store i32 %or19.7.i, i32* %arrayidx20.7.i, align 4, !tbaa !9
  %40 = load i8, i8* %arrayidx7.8.i, align 1, !tbaa !11
  %conv.8.i = zext i8 %40 to i32
  %41 = load i8, i8* %arrayidx8.8.i, align 1, !tbaa !11
  %conv9.8.i = zext i8 %41 to i32
  %shl.8.i = shl nuw nsw i32 %conv9.8.i, 8
  %or.8.i = or i32 %shl.8.i, %conv.8.i
  %42 = load i8, i8* %arrayidx11.8.i, align 1, !tbaa !11
  %conv12.8.i = zext i8 %42 to i32
  %shl13.8.i = shl nuw nsw i32 %conv12.8.i, 16
  %or14.8.i = or i32 %or.8.i, %shl13.8.i
  %43 = load i8, i8* %arrayidx16.8.i, align 1, !tbaa !11
  %conv17.8.i = zext i8 %43 to i32
  %shl18.8.i = shl nuw i32 %conv17.8.i, 24
  %or19.8.i = or i32 %or14.8.i, %shl18.8.i
  store i32 %or19.8.i, i32* %arrayidx20.8.i, align 16, !tbaa !9
  %44 = load i8, i8* %arrayidx7.9.i, align 1, !tbaa !11
  %conv.9.i = zext i8 %44 to i32
  %45 = load i8, i8* %arrayidx8.9.i, align 1, !tbaa !11
  %conv9.9.i = zext i8 %45 to i32
  %shl.9.i = shl nuw nsw i32 %conv9.9.i, 8
  %or.9.i = or i32 %shl.9.i, %conv.9.i
  %46 = load i8, i8* %arrayidx11.9.i, align 1, !tbaa !11
  %conv12.9.i = zext i8 %46 to i32
  %shl13.9.i = shl nuw nsw i32 %conv12.9.i, 16
  %or14.9.i = or i32 %or.9.i, %shl13.9.i
  %47 = load i8, i8* %arrayidx16.9.i, align 1, !tbaa !11
  %conv17.9.i = zext i8 %47 to i32
  %shl18.9.i = shl nuw i32 %conv17.9.i, 24
  %or19.9.i = or i32 %or14.9.i, %shl18.9.i
  store i32 %or19.9.i, i32* %arrayidx20.9.i, align 4, !tbaa !9
  %48 = load i8, i8* %arrayidx7.10.i, align 1, !tbaa !11
  %conv.10.i = zext i8 %48 to i32
  %49 = load i8, i8* %arrayidx8.10.i, align 1, !tbaa !11
  %conv9.10.i = zext i8 %49 to i32
  %shl.10.i = shl nuw nsw i32 %conv9.10.i, 8
  %or.10.i = or i32 %shl.10.i, %conv.10.i
  %50 = load i8, i8* %arrayidx11.10.i, align 1, !tbaa !11
  %conv12.10.i = zext i8 %50 to i32
  %shl13.10.i = shl nuw nsw i32 %conv12.10.i, 16
  %or14.10.i = or i32 %or.10.i, %shl13.10.i
  %51 = load i8, i8* %arrayidx16.10.i, align 1, !tbaa !11
  %conv17.10.i = zext i8 %51 to i32
  %shl18.10.i = shl nuw i32 %conv17.10.i, 24
  %or19.10.i = or i32 %or14.10.i, %shl18.10.i
  store i32 %or19.10.i, i32* %arrayidx20.10.i, align 8, !tbaa !9
  %52 = load i8, i8* %arrayidx7.11.i, align 1, !tbaa !11
  %conv.11.i = zext i8 %52 to i32
  %53 = load i8, i8* %arrayidx8.11.i, align 1, !tbaa !11
  %conv9.11.i = zext i8 %53 to i32
  %shl.11.i = shl nuw nsw i32 %conv9.11.i, 8
  %or.11.i = or i32 %shl.11.i, %conv.11.i
  %54 = load i8, i8* %arrayidx11.11.i, align 1, !tbaa !11
  %conv12.11.i = zext i8 %54 to i32
  %shl13.11.i = shl nuw nsw i32 %conv12.11.i, 16
  %or14.11.i = or i32 %or.11.i, %shl13.11.i
  %55 = load i8, i8* %arrayidx16.11.i, align 1, !tbaa !11
  %conv17.11.i = zext i8 %55 to i32
  %shl18.11.i = shl nuw i32 %conv17.11.i, 24
  %or19.11.i = or i32 %or14.11.i, %shl18.11.i
  store i32 %or19.11.i, i32* %arrayidx20.11.i, align 4, !tbaa !9
  %56 = load i8, i8* %arrayidx7.12.i, align 1, !tbaa !11
  %conv.12.i = zext i8 %56 to i32
  %57 = load i8, i8* %arrayidx8.12.i, align 1, !tbaa !11
  %conv9.12.i = zext i8 %57 to i32
  %shl.12.i = shl nuw nsw i32 %conv9.12.i, 8
  %or.12.i = or i32 %shl.12.i, %conv.12.i
  %58 = load i8, i8* %arrayidx11.12.i, align 1, !tbaa !11
  %conv12.12.i = zext i8 %58 to i32
  %shl13.12.i = shl nuw nsw i32 %conv12.12.i, 16
  %or14.12.i = or i32 %or.12.i, %shl13.12.i
  %59 = load i8, i8* %arrayidx16.12.i, align 1, !tbaa !11
  %conv17.12.i = zext i8 %59 to i32
  %shl18.12.i = shl nuw i32 %conv17.12.i, 24
  %or19.12.i = or i32 %or14.12.i, %shl18.12.i
  store i32 %or19.12.i, i32* %arrayidx20.12.i, align 16, !tbaa !9
  %60 = load i8, i8* %arrayidx7.13.i, align 1, !tbaa !11
  %conv.13.i = zext i8 %60 to i32
  %61 = load i8, i8* %arrayidx8.13.i, align 1, !tbaa !11
  %conv9.13.i = zext i8 %61 to i32
  %shl.13.i = shl nuw nsw i32 %conv9.13.i, 8
  %or.13.i = or i32 %shl.13.i, %conv.13.i
  %62 = load i8, i8* %arrayidx11.13.i, align 1, !tbaa !11
  %conv12.13.i = zext i8 %62 to i32
  %shl13.13.i = shl nuw nsw i32 %conv12.13.i, 16
  %or14.13.i = or i32 %or.13.i, %shl13.13.i
  %63 = load i8, i8* %arrayidx16.13.i, align 1, !tbaa !11
  %conv17.13.i = zext i8 %63 to i32
  %shl18.13.i = shl nuw i32 %conv17.13.i, 24
  %or19.13.i = or i32 %or14.13.i, %shl18.13.i
  store i32 %or19.13.i, i32* %arrayidx20.13.i, align 4, !tbaa !9
  %64 = load i8, i8* %arrayidx7.14.i, align 1, !tbaa !11
  %conv.14.i = zext i8 %64 to i32
  %65 = load i8, i8* %arrayidx8.14.i, align 1, !tbaa !11
  %conv9.14.i = zext i8 %65 to i32
  %shl.14.i = shl nuw nsw i32 %conv9.14.i, 8
  %or.14.i = or i32 %shl.14.i, %conv.14.i
  %66 = load i8, i8* %arrayidx11.14.i, align 1, !tbaa !11
  %conv12.14.i = zext i8 %66 to i32
  %shl13.14.i = shl nuw nsw i32 %conv12.14.i, 16
  %or14.14.i = or i32 %or.14.i, %shl13.14.i
  %67 = load i8, i8* %arrayidx16.14.i, align 1, !tbaa !11
  %conv17.14.i = zext i8 %67 to i32
  %shl18.14.i = shl nuw i32 %conv17.14.i, 24
  %or19.14.i = or i32 %or14.14.i, %shl18.14.i
  store i32 %or19.14.i, i32* %arrayidx20.14.i, align 8, !tbaa !9
  %68 = load i8, i8* %arrayidx7.15.i, align 1, !tbaa !11
  %conv.15.i = zext i8 %68 to i32
  %69 = load i8, i8* %arrayidx8.15.i, align 1, !tbaa !11
  %conv9.15.i = zext i8 %69 to i32
  %shl.15.i = shl nuw nsw i32 %conv9.15.i, 8
  %or.15.i = or i32 %shl.15.i, %conv.15.i
  %70 = load i8, i8* %arrayidx11.15.i, align 1, !tbaa !11
  %conv12.15.i = zext i8 %70 to i32
  %shl13.15.i = shl nuw nsw i32 %conv12.15.i, 16
  %or14.15.i = or i32 %or.15.i, %shl13.15.i
  %71 = load i8, i8* %arrayidx16.15.i, align 1, !tbaa !11
  %conv17.15.i = zext i8 %71 to i32
  %shl18.15.i = shl nuw i32 %conv17.15.i, 24
  %or19.15.i = or i32 %or14.15.i, %shl18.15.i
  store i32 %or19.15.i, i32* %arrayidx20.15.i, align 4, !tbaa !9
  br label %for.body26.i

for.body26.i:                                     ; preds = %if.end59.i, %if.then
  %a.0146.i = phi i32 [ %d.0140.i, %if.end59.i ], [ %4, %if.then ]
  %i21.0144.i = phi i64 [ %inc68.i, %if.end59.i ], [ 0, %if.then ]
  %b.0142.i = phi i32 [ %add66.i, %if.end59.i ], [ %5, %if.then ]
  %d.0140.i = phi i32 [ %c.0138.i, %if.end59.i ], [ %7, %if.then ]
  %c.0138.i = phi i32 [ %b.0142.i, %if.end59.i ], [ %6, %if.then ]
  %cmp27.i = icmp ult i64 %i21.0144.i, 16
  br i1 %cmp27.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body26.i
  %and.i = and i32 %c.0138.i, %b.0142.i
  %neg.i = xor i32 %b.0142.i, -1
  %and29.i = and i32 %d.0140.i, %neg.i
  %or30.i = or i32 %and.i, %and29.i
  br label %if.end59.i

if.else.i:                                        ; preds = %for.body26.i
  %cmp32.i = icmp ult i64 %i21.0144.i, 32
  br i1 %cmp32.i, label %if.then34.i, label %if.else42.i

if.then34.i:                                      ; preds = %if.else.i
  %and35.i = and i32 %d.0140.i, %b.0142.i
  %neg36.i = xor i32 %d.0140.i, -1
  %and37.i = and i32 %c.0138.i, %neg36.i
  %or38.i = or i32 %and37.i, %and35.i
  %mul39.i = mul nuw nsw i64 %i21.0144.i, 5
  %add40.i = add nuw nsw i64 %mul39.i, 1
  %rem.i = and i64 %add40.i, 15
  br label %if.end59.i

if.else42.i:                                      ; preds = %if.else.i
  %cmp43.i = icmp ult i64 %i21.0144.i, 48
  br i1 %cmp43.i, label %if.then45.i, label %if.else51.i

if.then45.i:                                      ; preds = %if.else42.i
  %xor.i = xor i32 %d.0140.i, %b.0142.i
  %xor46.i = xor i32 %xor.i, %c.0138.i
  %mul47.i = mul nuw nsw i64 %i21.0144.i, 3
  %add48.i = add nuw nsw i64 %mul47.i, 5
  %rem49.i = and i64 %add48.i, 15
  br label %if.end59.i

if.else51.i:                                      ; preds = %if.else42.i
  %neg52.i = xor i32 %d.0140.i, -1
  %or53.i = or i32 %b.0142.i, %neg52.i
  %xor54.i = xor i32 %or53.i, %c.0138.i
  %72 = mul nuw nsw i64 %i21.0144.i, 7
  %conv57.i = and i64 %72, 15
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else51.i, %if.then45.i, %if.then34.i, %if.then.i
  %f.0.i = phi i32 [ %or30.i, %if.then.i ], [ %or38.i, %if.then34.i ], [ %xor46.i, %if.then45.i ], [ %xor54.i, %if.else51.i ]
  %g.0.i = phi i64 [ %i21.0144.i, %if.then.i ], [ %rem.i, %if.then34.i ], [ %rem49.i, %if.then45.i ], [ %conv57.i, %if.else51.i ]
  %add60.i = add i32 %f.0.i, %a.0146.i
  %arrayidx61.i = getelementptr inbounds [64 x i32], [64 x i32]* @md5_transform.k, i64 0, i64 %i21.0144.i
  %73 = load i32, i32* %arrayidx61.i, align 4, !tbaa !9
  %add62.i = add i32 %add60.i, %73
  %arrayidx63.i = getelementptr inbounds [16 x i32], [16 x i32]* %m.i, i64 0, i64 %g.0.i
  %74 = load i32, i32* %arrayidx63.i, align 4, !tbaa !9
  %add64.i = add i32 %add62.i, %74
  %arrayidx65.i = getelementptr inbounds [64 x i32], [64 x i32]* @md5_transform.s, i64 0, i64 %i21.0144.i
  %75 = load i32, i32* %arrayidx65.i, align 4, !tbaa !9
  %shl.i.i = shl i32 %add64.i, %75
  %sub.i.i = sub i32 32, %75
  %shr.i.i = lshr i32 %add64.i, %sub.i.i
  %or.i.i = or i32 %shr.i.i, %shl.i.i
  %add66.i = add i32 %or.i.i, %b.0142.i
  %inc68.i = add nuw nsw i64 %i21.0144.i, 1
  %exitcond.not.i = icmp eq i64 %inc68.i, 64
  br i1 %exitcond.not.i, label %md5_transform.exit, label %for.body26.i, !llvm.loop !12

md5_transform.exit:                               ; preds = %if.end59.i
  %add72.i = add i32 %d.0140.i, %4
  store i32 %add72.i, i32* %arrayidx.i, align 8, !tbaa !9
  %add75.i = add i32 %add66.i, %5
  store i32 %add75.i, i32* %arrayidx2.i, align 4, !tbaa !9
  %add78.i = add i32 %b.0142.i, %6
  store i32 %add78.i, i32* %arrayidx4.i, align 8, !tbaa !9
  %add81.i = add i32 %c.0138.i, %7
  store i32 %add81.i, i32* %arrayidx6.i, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #17
  store i64 0, i64* %buffer_len, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %md5_transform.exit, %while.body
  %76 = phi i64 [ 0, %md5_transform.exit ], [ %add4, %while.body ]
  %cmp.not = icmp eq i64 %sub6, 0
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !14

while.end:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare dso_local void @perror(i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare dso_local noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn writeonly
define dso_local void @bmp_header_init_df(%struct._bmp_header* nocapture noundef writeonly %header, i32 noundef %width, i32 noundef %height) local_unnamed_addr #7 {
entry:
  %mul = mul i32 %width, 3
  %rem = srem i32 %width, 4
  %add = add i32 %mul, %rem
  %0 = tail call i32 @llvm.abs.i32(i32 %height, i1 true)
  %mul3 = mul i32 %add, %0
  %bfSize = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 0
  store i32 %mul3, i32* %bfSize, align 4, !tbaa !15
  %bfReserved = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 1
  store i32 0, i32* %bfReserved, align 4, !tbaa !18
  %bfOffBits = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 2
  store i32 54, i32* %bfOffBits, align 4, !tbaa !19
  %biSize = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 3
  store i32 40, i32* %biSize, align 4, !tbaa !20
  %biWidth = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 4
  store i32 %width, i32* %biWidth, align 4, !tbaa !21
  %biHeight = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 5
  store i32 %height, i32* %biHeight, align 4, !tbaa !22
  %biPlanes = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 6
  store i16 1, i16* %biPlanes, align 4, !tbaa !23
  %biBitCount = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 7
  store i16 24, i16* %biBitCount, align 2, !tbaa !24
  %biCompression = getelementptr inbounds %struct._bmp_header, %struct._bmp_header* %header, i64 0, i32 8
  %1 = bitcast i32* %biCompression to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bmp_header_write(%struct._bmp_header* noundef %header, %struct._IO_FILE* noundef %img_file) local_unnamed_addr #8 {
entry:
  %magic = alloca i16, align 2
  %cmp = icmp eq %struct._bmp_header* %header, null
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %img_file, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.else
  %0 = bitcast i16* %magic to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #17
  store i16 19778, i16* %magic, align 2, !tbaa !25
  %call = call i64 @fwrite(i8* noundef nonnull %0, i64 noundef 2, i64 noundef 1, %struct._IO_FILE* noundef nonnull %img_file)
  %1 = bitcast %struct._bmp_header* %header to i8*
  %call4 = tail call i64 @fwrite(i8* noundef nonnull %1, i64 noundef 52, i64 noundef 1, %struct._IO_FILE* noundef nonnull %img_file)
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #17
  br label %return

return:                                           ; preds = %if.else, %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -3, %entry ], [ -4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bmp_header_read(%struct._bmp_header* nocapture noundef %header, %struct._IO_FILE* noundef %img_file) local_unnamed_addr #8 {
entry:
  %magic = alloca i16, align 2
  %cmp = icmp eq %struct._IO_FILE* %img_file, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i16* %magic to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #17
  %call = call i64 @fread(i8* noundef nonnull %0, i64 noundef 2, i64 noundef 1, %struct._IO_FILE* noundef nonnull %img_file)
  %cmp1 = icmp ne i64 %call, 1
  %1 = load i16, i16* %magic, align 2
  %cmp2 = icmp ne i16 %1, 19778
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2
  br i1 %or.cond, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = bitcast %struct._bmp_header* %header to i8*
  %call6 = tail call i64 @fread(i8* noundef %2, i64 noundef 52, i64 noundef 1, %struct._IO_FILE* noundef nonnull %img_file)
  %cmp7.not = icmp ne i64 %call6, 1
  %. = sext i1 %cmp7.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end
  %retval.0 = phi i32 [ -2, %if.end ], [ %., %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #17
  br label %return

return:                                           ; preds = %entry, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -4, %entry ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bmp_pixel_init(%struct._bmp_pixel* nocapture noundef writeonly %pxl, i8 noundef zeroext %red, i8 noundef zeroext %green, i8 noundef zeroext %blue) local_unnamed_addr #9 {
entry:
  %red1 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %pxl, i64 0, i32 2
  store i8 %red, i8* %red1, align 1, !tbaa !26
  %green2 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %pxl, i64 0, i32 1
  store i8 %green, i8* %green2, align 1, !tbaa !28
  %blue3 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %pxl, i64 0, i32 0
  store i8 %blue, i8* %blue3, align 1, !tbaa !29
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @bmp_img_alloc(%struct._bmp_img* nocapture noundef %img) local_unnamed_addr #8 {
entry:
  %biHeight = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 5
  %0 = load i32, i32* %biHeight, align 4, !tbaa !30
  %1 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %conv = zext i32 %1 to i64
  %mul = shl nuw nsw i64 %conv, 3
  %call1 = tail call noalias i8* @malloc(i64 noundef %mul) #17
  %img_pixels = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 1
  %2 = bitcast %struct._bmp_pixel*** %img_pixels to i8**
  store i8* %call1, i8** %2, align 8, !tbaa !33
  %cmp16.not = icmp eq i32 %0, 0
  br i1 %cmp16.not, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %biWidth = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 4
  %3 = load i32, i32* %biWidth, align 8, !tbaa !34
  %conv4 = sext i32 %3 to i64
  %mul5 = mul nsw i64 %conv4, 3
  %umax = call i64 @llvm.umax.i64(i64 %conv, i64 1)
  %call618 = tail call noalias i8* @malloc(i64 noundef %mul5) #17
  %4 = bitcast i8* %call1 to i8**
  store i8* %call618, i8** %4, align 8, !tbaa !35
  %exitcond.not19 = icmp ult i32 %1, 2
  br i1 %exitcond.not19, label %for.cond.cleanup, label %for.body.for.body_crit_edge, !llvm.loop !36

for.cond.cleanup:                                 ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph, %entry
  ret void

for.body.for.body_crit_edge:                      ; preds = %for.body.lr.ph, %for.body.for.body_crit_edge
  %inc20 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.lr.ph ]
  %.pre = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels, align 8, !tbaa !33
  %call6 = tail call noalias i8* @malloc(i64 noundef %mul5) #17
  %arrayidx = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %.pre, i64 %inc20
  %5 = bitcast %struct._bmp_pixel** %arrayidx to i8**
  store i8* %call6, i8** %5, align 8, !tbaa !35
  %inc = add nuw nsw i64 %inc20, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body.for.body_crit_edge, !llvm.loop !36
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local void @bmp_img_init_df(%struct._bmp_img* nocapture noundef %img, i32 noundef %width, i32 noundef %height) local_unnamed_addr #8 {
entry:
  %mul.i = mul i32 %width, 3
  %rem.i = srem i32 %width, 4
  %add.i = add i32 %mul.i, %rem.i
  %0 = tail call i32 @llvm.abs.i32(i32 %height, i1 true) #17
  %mul3.i = mul i32 %add.i, %0
  %bfSize.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 0
  store i32 %mul3.i, i32* %bfSize.i, align 4, !tbaa !15
  %bfReserved.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 1
  store i32 0, i32* %bfReserved.i, align 4, !tbaa !18
  %bfOffBits.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 2
  store i32 54, i32* %bfOffBits.i, align 4, !tbaa !19
  %biSize.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 3
  store i32 40, i32* %biSize.i, align 4, !tbaa !20
  %biWidth.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 4
  store i32 %width, i32* %biWidth.i, align 4, !tbaa !21
  %biHeight.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 5
  store i32 %height, i32* %biHeight.i, align 4, !tbaa !22
  %biPlanes.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 6
  store i16 1, i16* %biPlanes.i, align 4, !tbaa !23
  %biBitCount.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 7
  store i16 24, i16* %biBitCount.i, align 2, !tbaa !24
  %biCompression.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 8
  %1 = bitcast i32* %biCompression.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false) #17
  %conv.i = zext i32 %0 to i64
  %mul.i3 = shl nuw nsw i64 %conv.i, 3
  %call1.i = tail call noalias i8* @malloc(i64 noundef %mul.i3) #17
  %img_pixels.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 1
  %2 = bitcast %struct._bmp_pixel*** %img_pixels.i to i8**
  store i8* %call1.i, i8** %2, align 8, !tbaa !33
  %cmp16.not.i = icmp eq i32 %height, 0
  br i1 %cmp16.not.i, label %bmp_img_alloc.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %conv4.i = sext i32 %width to i64
  %mul5.i = mul nsw i64 %conv4.i, 3
  %umax.i = tail call i64 @llvm.umax.i64(i64 %conv.i, i64 1) #17
  %call6.i5 = tail call noalias i8* @malloc(i64 noundef %mul5.i) #17
  %3 = bitcast i8* %call1.i to i8**
  store i8* %call6.i5, i8** %3, align 8, !tbaa !35
  %exitcond.not.i6 = icmp ult i32 %0, 2
  br i1 %exitcond.not.i6, label %bmp_img_alloc.exit, label %for.body.for.body_crit_edge.i.preheader, !llvm.loop !36

for.body.for.body_crit_edge.i.preheader:          ; preds = %for.body.lr.ph.i
  %4 = bitcast i8* %call1.i to %struct._bmp_pixel**
  %call6.i9 = tail call noalias i8* @malloc(i64 noundef %mul5.i) #17
  %arrayidx.i10 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %4, i64 1
  %5 = bitcast %struct._bmp_pixel** %arrayidx.i10 to i8**
  store i8* %call6.i9, i8** %5, align 8, !tbaa !35
  %exitcond.not.i11 = icmp eq i64 %umax.i, 2
  br i1 %exitcond.not.i11, label %bmp_img_alloc.exit, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, !llvm.loop !36

for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge: ; preds = %for.body.for.body_crit_edge.i.preheader, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
  %inc.i12 = phi i64 [ %inc.i, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ 2, %for.body.for.body_crit_edge.i.preheader ]
  %.pre.i.pre = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels.i, align 8, !tbaa !33
  %call6.i = tail call noalias i8* @malloc(i64 noundef %mul5.i) #17
  %arrayidx.i = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %.pre.i.pre, i64 %inc.i12
  %6 = bitcast %struct._bmp_pixel** %arrayidx.i to i8**
  store i8* %call6.i, i8** %6, align 8, !tbaa !35
  %inc.i = add nuw nsw i64 %inc.i12, 1
  %exitcond.not.i = icmp eq i64 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %bmp_img_alloc.exit, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, !llvm.loop !36

bmp_img_alloc.exit:                               ; preds = %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, %for.body.for.body_crit_edge.i.preheader, %for.body.lr.ph.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmp_img_free(%struct._bmp_img* nocapture noundef readonly %img) local_unnamed_addr #11 {
entry:
  %biHeight = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 5
  %0 = load i32, i32* %biHeight, align 4, !tbaa !30
  %cmp9.not = icmp eq i32 %0, 0
  br i1 %cmp9.not, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %img_pixels = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 1
  %umax = zext i32 %1 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %img_pixels2 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 1
  %2 = bitcast %struct._bmp_pixel*** %img_pixels2 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !33
  tail call void @free(i8* noundef %3) #17
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %y.010 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %4 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %4, i64 %y.010
  %5 = bitcast %struct._bmp_pixel** %arrayidx to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !35
  tail call void @free(i8* noundef %6) #17
  %inc = add nuw nsw i64 %y.010, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !37
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bmp_img_write(%struct._bmp_img* noundef %img, i8* nocapture noundef readonly %filename) local_unnamed_addr #8 {
entry:
  %magic.i = alloca i16, align 2
  %padding = alloca [3 x i8], align 1
  %call = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %filename, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %cleanup20, label %if.end

if.end:                                           ; preds = %entry
  %cmp.i = icmp eq %struct._bmp_img* %img, null
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call)
  br label %cleanup20

if.end5:                                          ; preds = %if.end
  %0 = bitcast i16* %magic.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #17
  store i16 19778, i16* %magic.i, align 2, !tbaa !25
  %call.i = call i64 @fwrite(i8* noundef nonnull %0, i64 noundef 2, i64 noundef 1, %struct._IO_FILE* noundef nonnull %call) #17
  %1 = bitcast %struct._bmp_img* %img to i8*
  %call4.i = tail call i64 @fwrite(i8* noundef nonnull %1, i64 noundef 52, i64 noundef 1, %struct._IO_FILE* noundef nonnull %call) #17
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #17
  %biHeight = getelementptr %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 5
  %2 = load i32, i32* %biHeight, align 4, !tbaa !30
  %3 = getelementptr inbounds [3 x i8], [3 x i8]* %padding, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %3) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false)
  %cmp841.not = icmp eq i32 %2, 0
  br i1 %cmp841.not, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5
  %4 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %img_pixels = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 1
  %biWidth = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 4
  %umax = zext i32 %4 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %if.end5
  %call19 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call)
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %3) #17
  br label %cleanup20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %img_header.idx.val = phi i32 [ %2, %for.body.lr.ph ], [ %img_header.idx.val.pre, %for.body.for.body_crit_edge ]
  %y.042 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels, align 8, !tbaa !33
  %cmp.i38 = icmp sgt i32 %img_header.idx.val, 0
  %conv.i = zext i32 %img_header.idx.val to i64
  %6 = xor i64 %y.042, -1
  %sub3.i = add nsw i64 %conv.i, %6
  %cond.i = select i1 %cmp.i38, i64 %sub3.i, i64 %y.042
  %arrayidx = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %5, i64 %cond.i
  %7 = bitcast %struct._bmp_pixel** %arrayidx to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !35
  %9 = load i32, i32* %biWidth, align 8, !tbaa !34
  %conv13 = sext i32 %9 to i64
  %call14 = tail call i64 @fwrite(i8* noundef %8, i64 noundef 3, i64 noundef %conv13, %struct._IO_FILE* noundef nonnull %call)
  %10 = load i32, i32* %biWidth, align 8, !tbaa !34
  %rem = srem i32 %10, 4
  %conv17 = sext i32 %rem to i64
  %call18 = call i64 @fwrite(i8* noundef nonnull %3, i64 noundef 1, i64 noundef %conv17, %struct._IO_FILE* noundef nonnull %call)
  %inc = add nuw nsw i64 %y.042, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body.for.body_crit_edge, !llvm.loop !38

for.body.for.body_crit_edge:                      ; preds = %for.body
  %img_header.idx.val.pre = load i32, i32* %biHeight, align 4, !tbaa !22
  br label %for.body

cleanup20:                                        ; preds = %if.then3, %for.cond.cleanup, %entry
  %retval.1 = phi i32 [ -4, %entry ], [ -3, %if.then3 ], [ 0, %for.cond.cleanup ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bmp_img_read(%struct._bmp_img* nocapture noundef %img, i8* nocapture noundef readonly %filename) local_unnamed_addr #8 {
entry:
  %magic.i = alloca i16, align 2
  %call = tail call noalias %struct._IO_FILE* @fopen(i8* noundef %filename, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %cleanup29, label %if.end.i

if.end.i:                                         ; preds = %entry
  %0 = bitcast i16* %magic.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #17
  %call.i = call i64 @fread(i8* noundef nonnull %0, i64 noundef 2, i64 noundef 1, %struct._IO_FILE* noundef nonnull %call) #17
  %cmp1.i = icmp ne i64 %call.i, 1
  %1 = load i16, i16* %magic.i, align 2
  %cmp2.i = icmp ne i16 %1, 19778
  %or.cond.i = select i1 %cmp1.i, i1 true, i1 %cmp2.i
  br i1 %or.cond.i, label %bmp_header_read.exit.thread, label %bmp_header_read.exit

bmp_header_read.exit.thread:                      ; preds = %if.end.i
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #17
  br label %cleanup29.sink.split

bmp_header_read.exit:                             ; preds = %if.end.i
  %2 = bitcast %struct._bmp_img* %img to i8*
  %call6.i = tail call i64 @fread(i8* noundef %2, i64 noundef 52, i64 noundef 1, %struct._IO_FILE* noundef nonnull %call) #17
  %cmp7.not.i.not = icmp eq i64 %call6.i, 1
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #17
  br i1 %cmp7.not.i.not, label %if.end5, label %cleanup29.sink.split

if.end5:                                          ; preds = %bmp_header_read.exit
  %biHeight.i = getelementptr %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 5
  %3 = load i32, i32* %biHeight.i, align 4, !tbaa !30
  %4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true) #17
  %conv.i = zext i32 %4 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 3
  %call1.i = tail call noalias i8* @malloc(i64 noundef %mul.i) #17
  %img_pixels.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 1
  %5 = bitcast %struct._bmp_pixel*** %img_pixels.i to i8**
  store i8* %call1.i, i8** %5, align 8, !tbaa !33
  %cmp16.not.i = icmp eq i32 %3, 0
  br i1 %cmp16.not.i, label %cleanup29.sink.split, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end5
  %biWidth.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 4
  %6 = load i32, i32* %biWidth.i, align 8, !tbaa !34
  %conv4.i = sext i32 %6 to i64
  %mul5.i = mul nsw i64 %conv4.i, 3
  %umax.i = tail call i64 @llvm.umax.i64(i64 %conv.i, i64 1) #17
  %call6.i5258 = tail call noalias i8* @malloc(i64 noundef %mul5.i) #17
  %7 = bitcast i8* %call1.i to i8**
  store i8* %call6.i5258, i8** %7, align 8, !tbaa !35
  %exitcond.not.i59 = icmp ult i32 %4, 2
  br i1 %exitcond.not.i59, label %for.body.lr.ph, label %for.body.for.body_crit_edge.i.preheader, !llvm.loop !36

for.body.for.body_crit_edge.i.preheader:          ; preds = %for.body.lr.ph.i
  %8 = bitcast i8* %call1.i to %struct._bmp_pixel**
  %call6.i5275 = tail call noalias i8* @malloc(i64 noundef %mul5.i) #17
  %arrayidx.i76 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %8, i64 1
  %9 = bitcast %struct._bmp_pixel** %arrayidx.i76 to i8**
  store i8* %call6.i5275, i8** %9, align 8, !tbaa !35
  %exitcond.not.i77 = icmp eq i64 %umax.i, 2
  br i1 %exitcond.not.i77, label %bmp_img_alloc.exit, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, !llvm.loop !36

for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge: ; preds = %for.body.for.body_crit_edge.i.preheader, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
  %inc.i78 = phi i64 [ %inc.i, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ 2, %for.body.for.body_crit_edge.i.preheader ]
  %.pre.i.pre = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels.i, align 8, !tbaa !33
  %call6.i52 = tail call noalias i8* @malloc(i64 noundef %mul5.i) #17
  %arrayidx.i = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %.pre.i.pre, i64 %inc.i78
  %10 = bitcast %struct._bmp_pixel** %arrayidx.i to i8**
  store i8* %call6.i52, i8** %10, align 8, !tbaa !35
  %inc.i = add nuw nsw i64 %inc.i78, 1
  %exitcond.not.i = icmp eq i64 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %bmp_img_alloc.exit, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, !llvm.loop !36

bmp_img_alloc.exit:                               ; preds = %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, %for.body.for.body_crit_edge.i.preheader
  br i1 %cmp16.not.i, label %cleanup29.sink.split, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.i, %bmp_img_alloc.exit
  %conv974.in = srem i32 %6, 4
  %conv974 = sext i32 %conv974.in to i64
  %umax = call i64 @llvm.umax.i64(i64 %conv.i, i64 1)
  %11 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels.i, align 8, !tbaa !33
  %cmp.i5379 = icmp sgt i32 %3, 0
  %conv.i5480 = zext i32 %3 to i64
  %sub3.i81 = add nsw i64 %conv.i5480, -1
  %cond.i82 = select i1 %cmp.i5379, i64 %sub3.i81, i64 0
  %arrayidx83 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %11, i64 %cond.i82
  %12 = bitcast %struct._bmp_pixel** %arrayidx83 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !35
  %call1784 = tail call i64 @fread(i8* noundef %13, i64 noundef 3, i64 noundef %conv4.i, %struct._IO_FILE* noundef nonnull %call)
  %cmp18.not85 = icmp eq i64 %call1784, %conv4.i
  br i1 %cmp18.not85, label %if.end22, label %cleanup29.sink.split

if.end22:                                         ; preds = %for.body.lr.ph, %if.end22.for.body_crit_edge
  %y.06286 = phi i64 [ %inc, %if.end22.for.body_crit_edge ], [ 0, %for.body.lr.ph ]
  %call23 = tail call i32 @fseek(%struct._IO_FILE* noundef nonnull %call, i64 noundef %conv974, i32 noundef 1)
  %inc = add nuw nsw i64 %y.06286, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %cleanup29.sink.split, label %if.end22.for.body_crit_edge, !llvm.loop !39

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  %img_header.idx.val.pre = load i32, i32* %biHeight.i, align 4, !tbaa !22
  %14 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels.i, align 8, !tbaa !33
  %cmp.i53 = icmp sgt i32 %img_header.idx.val.pre, 0
  %conv.i54 = zext i32 %img_header.idx.val.pre to i64
  %15 = sub nuw i64 -2, %y.06286
  %sub3.i = add nsw i64 %15, %conv.i54
  %cond.i = select i1 %cmp.i53, i64 %sub3.i, i64 %inc
  %arrayidx = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %14, i64 %cond.i
  %16 = bitcast %struct._bmp_pixel** %arrayidx to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !35
  %call17 = tail call i64 @fread(i8* noundef %17, i64 noundef 3, i64 noundef %conv4.i, %struct._IO_FILE* noundef nonnull %call)
  %cmp18.not = icmp eq i64 %call17, %conv4.i
  br i1 %cmp18.not, label %if.end22, label %cleanup29.sink.split

cleanup29.sink.split:                             ; preds = %if.end22.for.body_crit_edge, %if.end22, %for.body.lr.ph, %bmp_img_alloc.exit, %if.end5, %bmp_header_read.exit, %bmp_header_read.exit.thread
  %retval.3.ph = phi i32 [ -2, %bmp_header_read.exit.thread ], [ -1, %bmp_header_read.exit ], [ 0, %if.end5 ], [ 0, %bmp_img_alloc.exit ], [ -1, %for.body.lr.ph ], [ 0, %if.end22 ], [ -1, %if.end22.for.body_crit_edge ]
  %call21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %call)
  br label %cleanup29

cleanup29:                                        ; preds = %cleanup29.sink.split, %entry
  %retval.3 = phi i32 [ -4, %entry ], [ %retval.3.ph, %cleanup29.sink.split ]
  ret i32 %retval.3
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fseek(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #11 {
entry:
  %length_bytes.i.i = alloca [8 x i8], align 1
  %buffer.i = alloca [4096 x i8], align 16
  %ctx.i = alloca %struct.md5_ctx, align 16
  %endptr = alloca i8*, align 8
  %start_time = alloca %struct.timespec, align 8
  %end_time = alloca %struct.timespec, align 8
  %img = alloca %struct._bmp_img, align 8
  %cmp.not = icmp eq i32 %argc, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  %1 = load i8*, i8** %argv, align 8, !tbaa !35
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* noundef %1) #18
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i8* null, i8** %endptr, align 8, !tbaa !35
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8, !tbaa !35
  %call2 = call i64 @strtol(i8* noundef %3, i8** noundef nonnull %endptr, i32 noundef 10) #17
  %4 = load i8*, i8** %arrayidx1, align 8, !tbaa !35
  %5 = load i8, i8* %4, align 1, !tbaa !11
  %cmp4 = icmp eq i8 %5, 0
  br i1 %cmp4, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i8*, i8** %endptr, align 8, !tbaa !35
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %cmp7 = icmp ne i8 %7, 0
  %cmp10 = icmp slt i64 %call2, 1
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %4) #18
  br label %cleanup84

if.end15:                                         ; preds = %lor.lhs.false
  store i8* null, i8** %endptr, align 8, !tbaa !35
  %arrayidx16 = getelementptr inbounds i8*, i8** %argv, i64 2
  %9 = load i8*, i8** %arrayidx16, align 8, !tbaa !35
  %call17 = call i64 @strtol(i8* noundef %9, i8** noundef nonnull %endptr, i32 noundef 10) #17
  %10 = load i8*, i8** %arrayidx16, align 8, !tbaa !35
  %11 = load i8, i8* %10, align 1, !tbaa !11
  %cmp20 = icmp eq i8 %11, 0
  br i1 %cmp20, label %if.then29, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end15
  %12 = load i8*, i8** %endptr, align 8, !tbaa !35
  %13 = load i8, i8* %12, align 1, !tbaa !11
  %cmp24 = icmp ne i8 %13, 0
  %cmp27 = icmp slt i64 %call17, 1
  %or.cond86 = select i1 %cmp24, i1 true, i1 %cmp27
  br i1 %or.cond86, label %if.then29, label %if.end32

if.then29:                                        ; preds = %lor.lhs.false22, %if.end15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %10) #18
  br label %cleanup84

if.end32:                                         ; preds = %lor.lhs.false22
  %15 = bitcast %struct.timespec* %start_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #17
  %16 = bitcast %struct.timespec* %end_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #17
  tail call void @srand(i32 noundef 42) #17
  %call.i = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %start_time) #17
  %cmp34.not = icmp eq i32 %call.i, 0
  br i1 %cmp34.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end32
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %17) #18
  br label %cleanup81

if.end38:                                         ; preds = %if.end32
  %19 = bitcast %struct._bmp_img* %img to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %19) #17
  %conv39 = trunc i64 %call2 to i32
  %conv40 = trunc i64 %call17 to i32
  %mul.i.i = mul i32 %conv39, 3
  %rem.i.i = srem i32 %conv39, 4
  %add.i.i = add i32 %mul.i.i, %rem.i.i
  %20 = call i32 @llvm.abs.i32(i32 %conv40, i1 true) #17
  %mul3.i.i = mul i32 %20, %add.i.i
  %bfSize.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 0
  store i32 %mul3.i.i, i32* %bfSize.i.i, align 8, !tbaa !15
  %bfReserved.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 1
  store i32 0, i32* %bfReserved.i.i, align 4, !tbaa !18
  %bfOffBits.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 2
  store i32 54, i32* %bfOffBits.i.i, align 8, !tbaa !19
  %biSize.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 3
  store i32 40, i32* %biSize.i.i, align 4, !tbaa !20
  %biWidth.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 4
  store i32 %conv39, i32* %biWidth.i.i, align 8, !tbaa !21
  %biHeight.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 5
  store i32 %conv40, i32* %biHeight.i.i, align 4, !tbaa !22
  %biPlanes.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 6
  store i16 1, i16* %biPlanes.i.i, align 8, !tbaa !23
  %biBitCount.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 7
  store i16 24, i16* %biBitCount.i.i, align 2, !tbaa !24
  %biCompression.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 0, i32 8
  %21 = bitcast i32* %biCompression.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %21, i8 0, i64 24, i1 false) #17
  %conv.i.i = zext i32 %20 to i64
  %mul.i3.i = shl nuw nsw i64 %conv.i.i, 3
  %call1.i.i = call noalias i8* @malloc(i64 noundef %mul.i3.i) #17
  %img_pixels.i.i = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %img, i64 0, i32 1
  %22 = bitcast %struct._bmp_pixel*** %img_pixels.i.i to i8**
  store i8* %call1.i.i, i8** %22, align 8, !tbaa !33
  %cmp16.not.i.i = icmp eq i32 %conv40, 0
  %23 = bitcast i8* %call1.i.i to %struct._bmp_pixel**
  br i1 %cmp16.not.i.i, label %for.cond43.preheader.us.preheader, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end38
  %sext = shl i64 %call2, 32
  %conv4.i.i = ashr exact i64 %sext, 32
  %mul5.i.i = mul nsw i64 %conv4.i.i, 3
  %umax.i.i = call i64 @llvm.umax.i64(i64 %conv.i.i, i64 1) #17
  %call6.i5.i = call noalias i8* @malloc(i64 noundef %mul5.i.i) #17
  %24 = bitcast i8* %call1.i.i to i8**
  store i8* %call6.i5.i, i8** %24, align 8, !tbaa !35
  %exitcond.not.i6.i = icmp ult i32 %20, 2
  br i1 %exitcond.not.i6.i, label %for.cond43.preheader.us.preheader, label %for.body.for.body_crit_edge.i.i.preheader, !llvm.loop !36

for.body.for.body_crit_edge.i.i.preheader:        ; preds = %for.body.lr.ph.i.i
  %call6.i.i125 = call noalias i8* @malloc(i64 noundef %mul5.i.i) #17
  %arrayidx.i.i126 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %23, i64 1
  %25 = bitcast %struct._bmp_pixel** %arrayidx.i.i126 to i8**
  store i8* %call6.i.i125, i8** %25, align 8, !tbaa !35
  %exitcond.not.i.i127 = icmp eq i64 %umax.i.i, 2
  br i1 %exitcond.not.i.i127, label %for.cond43.preheader.us.preheader, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.preheader, !llvm.loop !36

for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.preheader: ; preds = %for.body.for.body_crit_edge.i.i.preheader
  %call6.i.i140 = call noalias i8* @malloc(i64 noundef %mul5.i.i) #17
  %arrayidx.i.i141 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %23, i64 2
  %26 = bitcast %struct._bmp_pixel** %arrayidx.i.i141 to i8**
  store i8* %call6.i.i140, i8** %26, align 8, !tbaa !35
  %exitcond.not.i.i142 = icmp eq i64 %umax.i.i, 3
  br i1 %exitcond.not.i.i142, label %bmp_img_init_df.exit, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge, !llvm.loop !36

for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge: ; preds = %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.preheader, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge
  %inc.i.i143 = phi i64 [ %inc.i.i, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge ], [ 3, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.preheader ]
  %.pre.i.pre.i.pre = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels.i.i, align 8, !tbaa !33
  %call6.i.i = call noalias i8* @malloc(i64 noundef %mul5.i.i) #17
  %arrayidx.i.i = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %.pre.i.pre.i.pre, i64 %inc.i.i143
  %27 = bitcast %struct._bmp_pixel** %arrayidx.i.i to i8**
  store i8* %call6.i.i, i8** %27, align 8, !tbaa !35
  %inc.i.i = add nuw nsw i64 %inc.i.i143, 1
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %bmp_img_init_df.exit, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge, !llvm.loop !36

bmp_img_init_df.exit:                             ; preds = %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.preheader
  %cmp41131 = icmp sgt i64 %call17, 0
  %cmp44129 = icmp sgt i64 %call2, 0
  %or.cond139 = select i1 %cmp41131, i1 %cmp44129, i1 false
  br i1 %or.cond139, label %for.cond43.preheader.us.preheader, label %for.cond.cleanup

for.cond43.preheader.us.preheader:                ; preds = %bmp_img_init_df.exit, %for.body.for.body_crit_edge.i.i.preheader, %if.end38, %for.body.lr.ph.i.i
  %.pre.pre = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels.i.i, align 8, !tbaa !33
  br label %for.cond43.preheader.us

for.cond43.preheader.us:                          ; preds = %for.cond43.preheader.us.preheader, %for.cond43.for.cond.cleanup46_crit_edge.us
  %y.0132.us = phi i64 [ %inc59.us, %for.cond43.for.cond.cleanup46_crit_edge.us ], [ 0, %for.cond43.preheader.us.preheader ]
  %arrayidx56.us = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %.pre.pre, i64 %y.0132.us
  br label %for.body47.us

for.body47.us:                                    ; preds = %for.cond43.preheader.us, %for.body47.us
  %x.0130.us = phi i64 [ 0, %for.cond43.preheader.us ], [ %inc.us, %for.body47.us ]
  %call48.us = call i32 @rand() #17
  %conv49.us = trunc i32 %call48.us to i8
  %call50.us = call i32 @rand() #17
  %conv52.us = trunc i32 %call50.us to i8
  %call53.us = call i32 @rand() #17
  %conv55.us = trunc i32 %call53.us to i8
  %28 = load %struct._bmp_pixel*, %struct._bmp_pixel** %arrayidx56.us, align 8, !tbaa !35
  %red1.i.us = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %28, i64 %x.0130.us, i32 2
  store i8 %conv49.us, i8* %red1.i.us, align 1, !tbaa !26
  %green2.i.us = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %28, i64 %x.0130.us, i32 1
  store i8 %conv52.us, i8* %green2.i.us, align 1, !tbaa !28
  %blue3.i.us = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %28, i64 %x.0130.us, i32 0
  store i8 %conv55.us, i8* %blue3.i.us, align 1, !tbaa !29
  %inc.us = add nuw nsw i64 %x.0130.us, 1
  %exitcond.not = icmp eq i64 %inc.us, %call2
  br i1 %exitcond.not, label %for.cond43.for.cond.cleanup46_crit_edge.us, label %for.body47.us, !llvm.loop !40

for.cond43.for.cond.cleanup46_crit_edge.us:       ; preds = %for.body47.us
  %inc59.us = add nuw nsw i64 %y.0132.us, 1
  %exitcond135.not = icmp eq i64 %inc59.us, %call17
  br i1 %exitcond135.not, label %for.cond.cleanup, label %for.cond43.preheader.us, !llvm.loop !41

for.cond.cleanup:                                 ; preds = %for.cond43.for.cond.cleanup46_crit_edge.us, %bmp_img_init_df.exit
  %call61 = call i32 @bmp_img_write(%struct._bmp_img* noundef nonnull %img, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %for.cond.cleanup
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #18
  %30 = load i32, i32* %biHeight.i.i, align 4, !tbaa !30
  %cmp9.not.i = icmp eq i32 %30, 0
  br i1 %cmp9.not.i, label %bmp_img_free.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then64
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true) #17
  %umax.i = zext i32 %31 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %y.010.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %32 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels.i.i, align 8, !tbaa !33
  %arrayidx.i = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %32, i64 %y.010.i
  %33 = bitcast %struct._bmp_pixel** %arrayidx.i to i8**
  %34 = load i8*, i8** %33, align 8, !tbaa !35
  call void @free(i8* noundef %34) #17
  %inc.i = add nuw nsw i64 %y.010.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %bmp_img_free.exit, label %for.body.i, !llvm.loop !37

bmp_img_free.exit:                                ; preds = %for.body.i, %if.then64
  %35 = load i8*, i8** %22, align 8, !tbaa !33
  call void @free(i8* noundef %35) #17
  br label %cleanup

if.end66:                                         ; preds = %for.cond.cleanup
  %36 = load i32, i32* %biHeight.i.i, align 4, !tbaa !30
  %cmp9.not.i110 = icmp eq i32 %36, 0
  br i1 %cmp9.not.i110, label %bmp_img_free.exit120, label %for.body.lr.ph.i113

for.body.lr.ph.i113:                              ; preds = %if.end66
  %37 = call i32 @llvm.abs.i32(i32 %36, i1 true) #17
  %umax.i112 = zext i32 %37 to i64
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.body.i119, %for.body.lr.ph.i113
  %y.010.i115 = phi i64 [ 0, %for.body.lr.ph.i113 ], [ %inc.i117, %for.body.i119 ]
  %38 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %img_pixels.i.i, align 8, !tbaa !33
  %arrayidx.i116 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %38, i64 %y.010.i115
  %39 = bitcast %struct._bmp_pixel** %arrayidx.i116 to i8**
  %40 = load i8*, i8** %39, align 8, !tbaa !35
  call void @free(i8* noundef %40) #17
  %inc.i117 = add nuw nsw i64 %y.010.i115, 1
  %exitcond.not.i118 = icmp eq i64 %inc.i117, %umax.i112
  br i1 %exitcond.not.i118, label %bmp_img_free.exit120, label %for.body.i119, !llvm.loop !37

bmp_img_free.exit120:                             ; preds = %for.body.i119, %if.end66
  %41 = load i8*, i8** %22, align 8, !tbaa !33
  call void @free(i8* noundef %41) #17
  %call.i121 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %end_time) #17
  %cmp68.not = icmp eq i32 %call.i121, 0
  br i1 %cmp68.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %bmp_img_free.exit120
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %42) #18
  br label %cleanup

if.end72:                                         ; preds = %bmp_img_free.exit120
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %44) #17
  %45 = bitcast %struct.md5_ctx* %ctx.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %45) #17
  %call.i122 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #17
  %cmp.i = icmp eq %struct._IO_FILE* %call.i122, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end72
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #19
  br label %print_file_md5.exit

if.end.i:                                         ; preds = %if.end72
  %arrayidx.i.i123 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx.i, i64 0, i32 0, i64 0
  %arrayidx2.i.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx.i, i64 0, i32 0, i64 1
  %arrayidx4.i.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx.i, i64 0, i32 0, i64 2
  %arrayidx6.i.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx.i, i64 0, i32 0, i64 3
  %46 = bitcast %struct.md5_ctx* %ctx.i to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %46, align 16, !tbaa !9
  %bit_len.i.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx.i, i64 0, i32 1
  store i64 0, i64* %bit_len.i.i, align 16, !tbaa !3
  %buffer_len.i.i = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %ctx.i, i64 0, i32 3
  store i64 0, i64* %buffer_len.i.i, align 8, !tbaa !8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end5.i, %if.end.i
  %call1.i = call i64 @fread(i8* noundef nonnull %44, i64 noundef 1, i64 noundef 4096, %struct._IO_FILE* noundef nonnull %call.i122) #17
  %cmp2.not.i = icmp eq i64 %call1.i, 0
  br i1 %cmp2.not.i, label %if.then7.i, label %if.end5.i

if.end5.i:                                        ; preds = %for.cond.i
  call fastcc void @md5_update(%struct.md5_ctx* noundef nonnull %ctx.i, i8* noundef nonnull %44, i64 noundef %call1.i) #17
  %cmp6.i = icmp ult i64 %call1.i, 4096
  br i1 %cmp6.i, label %if.then7.i, label %for.cond.i

if.then7.i:                                       ; preds = %if.end5.i, %for.cond.i
  %call8.i = call i32 @ferror(%struct._IO_FILE* noundef nonnull %call.i122) #17
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then7.i
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #19
  %call10.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call.i122) #17
  br label %print_file_md5.exit

for.end.i:                                        ; preds = %if.then7.i
  %call13.i = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call.i122) #17
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %length_bytes.i.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #17
  %48 = load i64, i64* %bit_len.i.i, align 16, !tbaa !3
  %conv.i.i124 = trunc i64 %48 to i8
  store i8 %conv.i.i124, i8* %47, align 1, !tbaa !11
  %shr.1.i.i = lshr i64 %48, 8
  %conv.1.i.i = trunc i64 %shr.1.i.i to i8
  %arrayidx.1.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %length_bytes.i.i, i64 0, i64 1
  store i8 %conv.1.i.i, i8* %arrayidx.1.i.i, align 1, !tbaa !11
  %shr.2.i.i = lshr i64 %48, 16
  %conv.2.i.i = trunc i64 %shr.2.i.i to i8
  %arrayidx.2.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %length_bytes.i.i, i64 0, i64 2
  store i8 %conv.2.i.i, i8* %arrayidx.2.i.i, align 1, !tbaa !11
  %shr.3.i.i = lshr i64 %48, 24
  %conv.3.i.i = trunc i64 %shr.3.i.i to i8
  %arrayidx.3.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %length_bytes.i.i, i64 0, i64 3
  store i8 %conv.3.i.i, i8* %arrayidx.3.i.i, align 1, !tbaa !11
  %shr.4.i.i = lshr i64 %48, 32
  %conv.4.i.i = trunc i64 %shr.4.i.i to i8
  %arrayidx.4.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %length_bytes.i.i, i64 0, i64 4
  store i8 %conv.4.i.i, i8* %arrayidx.4.i.i, align 1, !tbaa !11
  %shr.5.i.i = lshr i64 %48, 40
  %conv.5.i.i = trunc i64 %shr.5.i.i to i8
  %arrayidx.5.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %length_bytes.i.i, i64 0, i64 5
  store i8 %conv.5.i.i, i8* %arrayidx.5.i.i, align 1, !tbaa !11
  %shr.6.i.i = lshr i64 %48, 48
  %conv.6.i.i = trunc i64 %shr.6.i.i to i8
  %arrayidx.6.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %length_bytes.i.i, i64 0, i64 6
  store i8 %conv.6.i.i, i8* %arrayidx.6.i.i, align 1, !tbaa !11
  %shr.7.i.i = lshr i64 %48, 56
  %conv.7.i.i = trunc i64 %shr.7.i.i to i8
  %arrayidx.7.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %length_bytes.i.i, i64 0, i64 7
  store i8 %conv.7.i.i, i8* %arrayidx.7.i.i, align 1, !tbaa !11
  call fastcc void @md5_update(%struct.md5_ctx* noundef nonnull %ctx.i, i8* noundef nonnull @md5_final.pad, i64 noundef 1) #17
  %49 = load i64, i64* %buffer_len.i.i, align 8, !tbaa !8
  %cmp1.not66.i.i = icmp eq i64 %49, 56
  br i1 %cmp1.not66.i.i, label %md5_final.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %for.end.i, %while.body.i.i
  call fastcc void @md5_update(%struct.md5_ctx* noundef nonnull %ctx.i, i8* noundef nonnull @md5_final.zero, i64 noundef 1) #17
  %50 = load i64, i64* %buffer_len.i.i, align 8, !tbaa !8
  %cmp1.not.i.i = icmp eq i64 %50, 56
  br i1 %cmp1.not.i.i, label %md5_final.exit.i, label %while.body.i.i, !llvm.loop !42

md5_final.exit.i:                                 ; preds = %while.body.i.i, %for.end.i
  call fastcc void @md5_update(%struct.md5_ctx* noundef nonnull %ctx.i, i8* noundef nonnull %47, i64 noundef 8) #17
  %51 = load i32, i32* %arrayidx.i.i123, align 16, !tbaa !9
  %shr16.i.i = lshr i32 %51, 8
  %shr23.i.i = lshr i32 %51, 16
  %shr31.i.i = lshr i32 %51, 24
  %52 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !9
  %shr16.1.i.i = lshr i32 %52, 8
  %shr23.1.i.i = lshr i32 %52, 16
  %shr31.1.i.i = lshr i32 %52, 24
  %53 = load i32, i32* %arrayidx4.i.i, align 8, !tbaa !9
  %shr16.2.i.i = lshr i32 %53, 8
  %shr23.2.i.i = lshr i32 %53, 16
  %shr31.2.i.i = lshr i32 %53, 24
  %54 = load i32, i32* %arrayidx6.i.i, align 4, !tbaa !9
  %shr16.3.i.i = lshr i32 %54, 8
  %shr23.3.i.i = lshr i32 %54, 16
  %shr31.3.i.i = lshr i32 %54, 24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #17
  %call15.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #17
  %conv.i = and i32 %51, 255
  %call18.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.i) #17
  %conv.1.i = and i32 %shr16.i.i, 255
  %call18.1.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.1.i) #17
  %conv.2.i = and i32 %shr23.i.i, 255
  %call18.2.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.2.i) #17
  %call18.3.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %shr31.i.i) #17
  %conv.4.i = and i32 %52, 255
  %call18.4.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.4.i) #17
  %conv.5.i = and i32 %shr16.1.i.i, 255
  %call18.5.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.5.i) #17
  %conv.6.i = and i32 %shr23.1.i.i, 255
  %call18.6.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.6.i) #17
  %call18.7.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %shr31.1.i.i) #17
  %conv.8.i = and i32 %53, 255
  %call18.8.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.8.i) #17
  %conv.9.i = and i32 %shr16.2.i.i, 255
  %call18.9.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.9.i) #17
  %conv.10.i = and i32 %shr23.2.i.i, 255
  %call18.10.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.10.i) #17
  %call18.11.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %shr31.2.i.i) #17
  %conv.12.i = and i32 %54, 255
  %call18.12.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.12.i) #17
  %conv.13.i = and i32 %shr16.3.i.i, 255
  %call18.13.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.13.i) #17
  %conv.14.i = and i32 %shr23.3.i.i, 255
  %call18.14.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv.14.i) #17
  %call18.15.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %shr31.3.i.i) #17
  %putchar.i = call i32 @putchar(i32 10) #17
  %call22.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)) #17
  %call31.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.i) #17
  %call31.1.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.1.i) #17
  %call31.2.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.2.i) #17
  %call31.3.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %shr31.i.i) #17
  %call31.4.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.4.i) #17
  %call31.5.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.5.i) #17
  %call31.6.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.6.i) #17
  %call31.7.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %shr31.1.i.i) #17
  %call31.8.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.8.i) #17
  %call31.9.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.9.i) #17
  %call31.10.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.10.i) #17
  %call31.11.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %shr31.2.i.i) #17
  %call31.12.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.12.i) #17
  %call31.13.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.13.i) #17
  %call31.14.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv.14.i) #17
  %call31.15.i = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %shr31.3.i.i) #17
  %putchar1.i = call i32 @putchar(i32 10) #17
  br label %print_file_md5.exit

print_file_md5.exit:                              ; preds = %if.then.i, %cleanup.thread.i, %md5_final.exit.i
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %45) #17
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %44) #17
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %end_time, i64 0, i32 0
  %55 = load i64, i64* %tv_sec, align 8, !tbaa !43
  %tv_sec74 = getelementptr inbounds %struct.timespec, %struct.timespec* %start_time, i64 0, i32 0
  %56 = load i64, i64* %tv_sec74, align 8, !tbaa !43
  %sub = sub nsw i64 %55, %56
  %conv75 = sitofp i64 %sub to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %end_time, i64 0, i32 1
  %57 = load i64, i64* %tv_nsec, align 8, !tbaa !45
  %tv_nsec76 = getelementptr inbounds %struct.timespec, %struct.timespec* %start_time, i64 0, i32 1
  %58 = load i64, i64* %tv_nsec76, align 8, !tbaa !45
  %sub77 = sub nsw i64 %57, %58
  %conv78 = sitofp i64 %sub77 to double
  %div = fdiv double %conv78, 1.000000e+09
  %add = fadd double %div, %conv75
  %call79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), double noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %print_file_md5.exit, %if.then70, %bmp_img_free.exit
  %retval.0 = phi i32 [ 1, %bmp_img_free.exit ], [ 1, %if.then70 ], [ 0, %print_file_md5.exit ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %19) #17
  br label %cleanup81

cleanup81:                                        ; preds = %cleanup, %if.then36
  %retval.1 = phi i32 [ 1, %if.then36 ], [ %retval.0, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #17
  br label %cleanup84

cleanup84:                                        ; preds = %if.then29, %cleanup81, %if.then12
  %retval.3 = phi i32 [ 1, %if.then12 ], [ 1, %if.then29 ], [ %retval.1, %cleanup81 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  br label %return

return:                                           ; preds = %cleanup84, %if.then
  %retval.4 = phi i32 [ 1, %if.then ], [ %retval.3, %cleanup84 ]
  ret i32 %retval.4
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #14 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!3 = !{!4, !7, i64 16}
!4 = !{!"md5_ctx", !5, i64 0, !7, i64 16, !5, i64 24, !7, i64 88}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"long", !5, i64 0}
!8 = !{!4, !7, i64 88}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !10, i64 0}
!16 = !{!"_bmp_header", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !17, i64 24, !17, i64 26, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48}
!17 = !{!"short", !5, i64 0}
!18 = !{!16, !10, i64 4}
!19 = !{!16, !10, i64 8}
!20 = !{!16, !10, i64 12}
!21 = !{!16, !10, i64 16}
!22 = !{!16, !10, i64 20}
!23 = !{!16, !17, i64 24}
!24 = !{!16, !17, i64 26}
!25 = !{!17, !17, i64 0}
!26 = !{!27, !5, i64 2}
!27 = !{!"_bmp_pixel", !5, i64 0, !5, i64 1, !5, i64 2}
!28 = !{!27, !5, i64 1}
!29 = !{!27, !5, i64 0}
!30 = !{!31, !10, i64 20}
!31 = !{!"_bmp_img", !16, i64 0, !32, i64 56}
!32 = !{!"any pointer", !5, i64 0}
!33 = !{!31, !32, i64 56}
!34 = !{!31, !10, i64 16}
!35 = !{!32, !32, i64 0}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = !{!44, !7, i64 0}
!44 = !{!"timespec", !7, i64 0, !7, i64 8}
!45 = !{!44, !7, i64 8}
