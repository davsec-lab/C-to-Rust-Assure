; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libm17/libm17.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libm17/libm17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lsf_t = type { [6 x i8], [6 x i8], [2 x i8], [14 x i8], [2 x i8] }

@lsf_sync_symbols = dso_local constant [8 x i8] c"\03\03\03\03\FD\FD\03\FD", align 1
@str_sync_symbols = dso_local constant [8 x i8] c"\FD\FD\FD\FD\03\03\FD\03", align 1
@pkt_sync_symbols = dso_local constant [8 x i8] c"\03\FD\03\03\FD\FD\FD\FD", align 1
@symbol_levels = dso_local constant [4 x float] [float -3.000000e+00, float -1.000000e+00, float 1.000000e+00, float 3.000000e+00], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"Input size exceeds max history\0A\00", align 1
@viterbi_decode_bit.COST_TABLE_0 = internal constant [8 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@viterbi_decode_bit.COST_TABLE_1 = internal constant [8 x i16] [i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0], align 16
@prevMetrics = internal global [16 x i32] zeroinitializer, align 16
@viterbi_history = internal global [244 x i16] zeroinitializer, align 16
@currMetrics = internal global [16 x i32] zeroinitializer, align 16
@currMetricsData = internal global [16 x i32] zeroinitializer, align 16
@prevMetricsData = internal global [16 x i32] zeroinitializer, align 16
@symbol_map = dso_local constant [4 x i8] c"\01\03\FF\FD", align 1
@symbol_list = dso_local constant [4 x i8] c"\FD\FF\01\03", align 1
@eot_symbols = dso_local constant [8 x float] [float 3.000000e+00, float 3.000000e+00, float 3.000000e+00, float 3.000000e+00, float 3.000000e+00, float 3.000000e+00, float -3.000000e+00, float 3.000000e+00], align 16
@puncture_pattern_1 = dso_local constant [61 x i8] c"\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01\00\01\01", align 16
@puncture_pattern_2 = dso_local constant [12 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\00", align 1
@puncture_pattern_3 = dso_local constant [8 x i8] c"\01\01\01\01\01\01\01\00", align 1
@SYNC_LSF = dso_local constant i16 22007, align 2
@SYNC_STR = dso_local constant i16 -163, align 2
@SYNC_PKT = dso_local constant i16 30207, align 2
@rrc_taps_10 = dso_local constant [81 x float] [float 0xBF6A2DDFE0000000, float 0xBF68013DA0000000, float 0xBF5FCBC040000000, float 0xBF375628E0000000, float 0x3F5958A2C0000000, float 0x3F6BC46960000000, float 0x3F73813660000000, float 0x3F75C0D760000000, float 0x3F73C31D00000000, float 0x3F6B043F40000000, float 0x3F4F6A3FE0000000, float 0xBF5CABA580000000, float 0xBF715C97C0000000, float 0xBF78177F20000000, float 0xBF793102E0000000, float 0xBF736FE360000000, float 0xBF5BEBE3C0000000, float 0x3F64DF3D00000000, float 0x3F7D8E1460000000, float 0x3F87004C60000000, float 0x3F8B7CF7E0000000, float 0x3F8A126F80000000, float 0x3F814E0000000000, float 0x3F3C9F5AC0000000, float 0xBF85FC6E60000000, float 0xBF984BDC40000000, float 0xBFA2AFDEC0000000, float 0xBFA7CEF6C0000000, float 0xBFAA19ED20000000, float 0xBFA83D09A0000000, float 0xBFA12E1B00000000, float 0xBF816FB220000000, float 0x3F9C5C7B80000000, float 0x3FB2DBADA0000000, float 0x3FC03758C0000000, float 0x3FC76C3F60000000, float 0x3FCE796800000000, float 0x3FD26211A0000000, float 0x3FD4DDD7E0000000, float 0x3FD6751360000000, float 0x3FD70146E0000000, float 0x3FD6751360000000, float 0x3FD4DDD7E0000000, float 0x3FD26211A0000000, float 0x3FCE796800000000, float 0x3FC76C3F60000000, float 0x3FC03758C0000000, float 0x3FB2DBADA0000000, float 0x3F9C5C7B80000000, float 0xBF816FB220000000, float 0xBFA12E1B00000000, float 0xBFA83D09A0000000, float 0xBFAA19ED20000000, float 0xBFA7CEF6C0000000, float 0xBFA2AFDEC0000000, float 0xBF984BDC40000000, float 0xBF85FC6E60000000, float 0x3F3C9F5AC0000000, float 0x3F814E0000000000, float 0x3F8A126F80000000, float 0x3F8B7CF7E0000000, float 0x3F87004C60000000, float 0x3F7D8E1460000000, float 0x3F64DF3D00000000, float 0xBF5BEBE3C0000000, float 0xBF736FE360000000, float 0xBF793102E0000000, float 0xBF78177F20000000, float 0xBF715C97C0000000, float 0xBF5CABA580000000, float 0x3F4F6A3FE0000000, float 0x3F6B043F40000000, float 0x3F73C31D00000000, float 0x3F75C0D760000000, float 0x3F73813660000000, float 0x3F6BC46960000000, float 0x3F5958A2C0000000, float 0xBF375628E0000000, float 0xBF5FCBC040000000, float 0xBF68013DA0000000, float 0xBF6A2DDFE0000000], align 16
@rrc_taps_5 = dso_local constant [41 x float] [float 0xBF7282EB00000000, float 0xBF667BA520000000, float 0x3F61EC22C0000000, float 0x3F7B956F20000000, float 0x3F7BF2A1A0000000, float 0x3F5636B380000000, float 0xBF788D92A0000000, float 0xBF81D01E00000000, float 0xBF63BE4BE0000000, float 0x3F84E5FFE0000000, float 0x3F936FDD20000000, float 0x3F8878EF60000000, float 0xBF8F17C3C0000000, float 0xBFAA6D6160000000, float 0xBFB274CFE0000000, float 0xBFA84BD460000000, float 0x3FA40DE940000000, float 0x3FC6EEDCC0000000, float 0x3FD58C6680000000, float 0x3FDD827860000000, float 0x3FE04453C0000000, float 0x3FDD827860000000, float 0x3FD58C6680000000, float 0x3FC6EEDCC0000000, float 0x3FA40DE940000000, float 0xBFA84BD460000000, float 0xBFB274CFE0000000, float 0xBFAA6D6160000000, float 0xBF8F17C3C0000000, float 0x3F8878EF60000000, float 0x3F936FDD20000000, float 0x3F84E5FFE0000000, float 0xBF63BE4BE0000000, float 0xBF81D01E00000000, float 0xBF788D92A0000000, float 0x3F5636B380000000, float 0x3F7BF2A1A0000000, float 0x3F7B956F20000000, float 0x3F61EC22C0000000, float 0xBF667BA520000000, float 0xBF7282EB00000000], align 16
@encode_matrix = dso_local constant [12 x i16] [i16 2283, i16 2366, i16 2711, i16 3526, i16 871, i16 1741, i16 3481, i16 986, i16 1972, i16 3944, i16 1595, i16 3189], align 16
@decode_matrix = dso_local constant [12 x i16] [i16 3189, i16 1183, i16 2366, i16 1763, i16 3526, i16 3859, i16 2745, i16 493, i16 986, i16 1972, i16 3944, i16 2639], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"@ALL\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c" ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-/.\00", align 1
@__const.encode_callsign_value.charMap = private unnamed_addr constant [40 x i8] c" ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-/.", align 16
@M17_CRC_POLY = dso_local constant i16 22837, align 2
@intrl_seq = dso_local constant [368 x i16] [i16 0, i16 137, i16 90, i16 227, i16 180, i16 317, i16 270, i16 39, i16 360, i16 129, i16 82, i16 219, i16 172, i16 309, i16 262, i16 31, i16 352, i16 121, i16 74, i16 211, i16 164, i16 301, i16 254, i16 23, i16 344, i16 113, i16 66, i16 203, i16 156, i16 293, i16 246, i16 15, i16 336, i16 105, i16 58, i16 195, i16 148, i16 285, i16 238, i16 7, i16 328, i16 97, i16 50, i16 187, i16 140, i16 277, i16 230, i16 367, i16 320, i16 89, i16 42, i16 179, i16 132, i16 269, i16 222, i16 359, i16 312, i16 81, i16 34, i16 171, i16 124, i16 261, i16 214, i16 351, i16 304, i16 73, i16 26, i16 163, i16 116, i16 253, i16 206, i16 343, i16 296, i16 65, i16 18, i16 155, i16 108, i16 245, i16 198, i16 335, i16 288, i16 57, i16 10, i16 147, i16 100, i16 237, i16 190, i16 327, i16 280, i16 49, i16 2, i16 139, i16 92, i16 229, i16 182, i16 319, i16 272, i16 41, i16 362, i16 131, i16 84, i16 221, i16 174, i16 311, i16 264, i16 33, i16 354, i16 123, i16 76, i16 213, i16 166, i16 303, i16 256, i16 25, i16 346, i16 115, i16 68, i16 205, i16 158, i16 295, i16 248, i16 17, i16 338, i16 107, i16 60, i16 197, i16 150, i16 287, i16 240, i16 9, i16 330, i16 99, i16 52, i16 189, i16 142, i16 279, i16 232, i16 1, i16 322, i16 91, i16 44, i16 181, i16 134, i16 271, i16 224, i16 361, i16 314, i16 83, i16 36, i16 173, i16 126, i16 263, i16 216, i16 353, i16 306, i16 75, i16 28, i16 165, i16 118, i16 255, i16 208, i16 345, i16 298, i16 67, i16 20, i16 157, i16 110, i16 247, i16 200, i16 337, i16 290, i16 59, i16 12, i16 149, i16 102, i16 239, i16 192, i16 329, i16 282, i16 51, i16 4, i16 141, i16 94, i16 231, i16 184, i16 321, i16 274, i16 43, i16 364, i16 133, i16 86, i16 223, i16 176, i16 313, i16 266, i16 35, i16 356, i16 125, i16 78, i16 215, i16 168, i16 305, i16 258, i16 27, i16 348, i16 117, i16 70, i16 207, i16 160, i16 297, i16 250, i16 19, i16 340, i16 109, i16 62, i16 199, i16 152, i16 289, i16 242, i16 11, i16 332, i16 101, i16 54, i16 191, i16 144, i16 281, i16 234, i16 3, i16 324, i16 93, i16 46, i16 183, i16 136, i16 273, i16 226, i16 363, i16 316, i16 85, i16 38, i16 175, i16 128, i16 265, i16 218, i16 355, i16 308, i16 77, i16 30, i16 167, i16 120, i16 257, i16 210, i16 347, i16 300, i16 69, i16 22, i16 159, i16 112, i16 249, i16 202, i16 339, i16 292, i16 61, i16 14, i16 151, i16 104, i16 241, i16 194, i16 331, i16 284, i16 53, i16 6, i16 143, i16 96, i16 233, i16 186, i16 323, i16 276, i16 45, i16 366, i16 135, i16 88, i16 225, i16 178, i16 315, i16 268, i16 37, i16 358, i16 127, i16 80, i16 217, i16 170, i16 307, i16 260, i16 29, i16 350, i16 119, i16 72, i16 209, i16 162, i16 299, i16 252, i16 21, i16 342, i16 111, i16 64, i16 201, i16 154, i16 291, i16 244, i16 13, i16 334, i16 103, i16 56, i16 193, i16 146, i16 283, i16 236, i16 5, i16 326, i16 95, i16 48, i16 185, i16 138, i16 275, i16 228, i16 365, i16 318, i16 87, i16 40, i16 177, i16 130, i16 267, i16 220, i16 357, i16 310, i16 79, i16 32, i16 169, i16 122, i16 259, i16 212, i16 349, i16 302, i16 71, i16 24, i16 161, i16 114, i16 251, i16 204, i16 341, i16 294, i16 63, i16 16, i16 153, i16 106, i16 243, i16 196, i16 333, i16 286, i16 55, i16 8, i16 145, i16 98, i16 235, i16 188, i16 325, i16 278, i16 47], align 16
@rand_seq = dso_local constant [46 x i8] c"\D6\B5\E20\82\FF\84b\BAN\96\90\D8\98\DD]\0C\C8RC\91\1D\F8nh/5\DA\14\EA\CDv\19\8D\D5\80\D13\87\13W\18-)x\C3", align 16
@SYNC_BER = dso_local constant i16 -8363, align 2
@EOT_MRKR = dso_local constant i16 21853, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viterbi_decode(i8* noundef %out, i16* noundef %in, i16 noundef zeroext %len) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i16*, align 8
  %len.addr = alloca i16, align 2
  %pos = alloca i64, align 8
  %i = alloca i64, align 8
  %s0 = alloca i16, align 2
  %s1 = alloca i16, align 2
  store i8* %out, i8** %out.addr, align 8
  store i16* %in, i16** %in.addr, align 8
  store i16 %len, i16* %len.addr, align 2
  %0 = load i16, i16* %len.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 488
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @viterbi_reset()
  store i64 0, i64* %pos, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, i64* %i, align 8
  %3 = load i16, i16* %len.addr, align 2
  %conv2 = zext i16 %3 to i64
  %cmp3 = icmp ult i64 %2, %conv2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i16*, i16** %in.addr, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %5
  %6 = load i16, i16* %arrayidx, align 2
  store i16 %6, i16* %s0, align 2
  %7 = load i16*, i16** %in.addr, align 8
  %8 = load i64, i64* %i, align 8
  %add = add i64 %8, 1
  %arrayidx5 = getelementptr inbounds i16, i16* %7, i64 %add
  %9 = load i16, i16* %arrayidx5, align 2
  store i16 %9, i16* %s1, align 2
  %10 = load i16, i16* %s0, align 2
  %11 = load i16, i16* %s1, align 2
  %12 = load i64, i64* %pos, align 8
  call void @viterbi_decode_bit(i16 noundef zeroext %10, i16 noundef zeroext %11, i64 noundef %12)
  %13 = load i64, i64* %pos, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %pos, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %add6 = add i64 %14, 2
  store i64 %add6, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %15 = load i8*, i8** %out.addr, align 8
  %16 = load i64, i64* %pos, align 8
  %17 = load i16, i16* %len.addr, align 2
  %conv7 = zext i16 %17 to i32
  %div = sdiv i32 %conv7, 2
  %conv8 = trunc i32 %div to i16
  %call9 = call i32 @viterbi_chainback(i8* noundef %15, i64 noundef %16, i16 noundef zeroext %conv8)
  ret i32 %call9
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viterbi_reset() #0 {
entry:
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([244 x i16]* @viterbi_history to i8*), i8 0, i64 488, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([16 x i32]* @currMetrics to i8*), i8 0, i64 64, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([16 x i32]* @prevMetrics to i8*), i8 0, i64 64, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([16 x i32]* @currMetricsData to i8*), i8 0, i64 64, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([16 x i32]* @prevMetricsData to i8*), i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viterbi_decode_bit(i16 noundef zeroext %s0, i16 noundef zeroext %s1, i64 noundef %pos) #0 {
entry:
  %s0.addr = alloca i16, align 2
  %s1.addr = alloca i16, align 2
  %pos.addr = alloca i64, align 8
  %i = alloca i8, align 1
  %metric = alloca i32, align 4
  %m0 = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %m3 = alloca i32, align 4
  %i0 = alloca i8, align 1
  %i1 = alloca i8, align 1
  %tmp = alloca [16 x i32], align 16
  %i66 = alloca i8, align 1
  %i79 = alloca i8, align 1
  store i16 %s0, i16* %s0.addr, align 2
  store i16 %s1, i16* %s1.addr, align 2
  store i64 %pos, i64* %pos.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %i, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i16], [8 x i16]* @viterbi_decode_bit.COST_TABLE_0, i64 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %3 = load i16, i16* %s0.addr, align 2
  %call = call zeroext i16 @q_abs_diff(i16 noundef zeroext %2, i16 noundef zeroext %3)
  %conv2 = zext i16 %call to i32
  %4 = load i8, i8* %i, align 1
  %idxprom3 = zext i8 %4 to i64
  %arrayidx4 = getelementptr inbounds [8 x i16], [8 x i16]* @viterbi_decode_bit.COST_TABLE_1, i64 0, i64 %idxprom3
  %5 = load i16, i16* %arrayidx4, align 2
  %6 = load i16, i16* %s1.addr, align 2
  %call5 = call zeroext i16 @q_abs_diff(i16 noundef zeroext %5, i16 noundef zeroext %6)
  %conv6 = zext i16 %call5 to i32
  %add = add nsw i32 %conv2, %conv6
  store i32 %add, i32* %metric, align 4
  %7 = load i8, i8* %i, align 1
  %idxprom7 = zext i8 %7 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* @prevMetrics, i64 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  %9 = load i32, i32* %metric, align 4
  %add9 = add i32 %8, %9
  store i32 %add9, i32* %m0, align 4
  %10 = load i8, i8* %i, align 1
  %conv10 = zext i8 %10 to i32
  %add11 = add nsw i32 %conv10, 8
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], [16 x i32]* @prevMetrics, i64 0, i64 %idxprom12
  %11 = load i32, i32* %arrayidx13, align 4
  %12 = load i32, i32* %metric, align 4
  %sub = sub i32 131070, %12
  %add14 = add i32 %11, %sub
  store i32 %add14, i32* %m1, align 4
  %13 = load i8, i8* %i, align 1
  %idxprom15 = zext i8 %13 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* @prevMetrics, i64 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %15 = load i32, i32* %metric, align 4
  %sub17 = sub i32 131070, %15
  %add18 = add i32 %14, %sub17
  store i32 %add18, i32* %m2, align 4
  %16 = load i8, i8* %i, align 1
  %conv19 = zext i8 %16 to i32
  %add20 = add nsw i32 %conv19, 8
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* @prevMetrics, i64 0, i64 %idxprom21
  %17 = load i32, i32* %arrayidx22, align 4
  %18 = load i32, i32* %metric, align 4
  %add23 = add i32 %17, %18
  store i32 %add23, i32* %m3, align 4
  %19 = load i8, i8* %i, align 1
  %conv24 = zext i8 %19 to i32
  %mul = mul nsw i32 2, %conv24
  %conv25 = trunc i32 %mul to i8
  store i8 %conv25, i8* %i0, align 1
  %20 = load i8, i8* %i0, align 1
  %conv26 = zext i8 %20 to i32
  %add27 = add nsw i32 %conv26, 1
  %conv28 = trunc i32 %add27 to i8
  store i8 %conv28, i8* %i1, align 1
  %21 = load i32, i32* %m0, align 4
  %22 = load i32, i32* %m1, align 4
  %cmp29 = icmp uge i32 %21, %22
  br i1 %cmp29, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %23 = load i8, i8* %i0, align 1
  %conv31 = zext i8 %23 to i32
  %shl = shl i32 1, %conv31
  %24 = load i64, i64* %pos.addr, align 8
  %arrayidx32 = getelementptr inbounds [244 x i16], [244 x i16]* @viterbi_history, i64 0, i64 %24
  %25 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %25 to i32
  %or = or i32 %conv33, %shl
  %conv34 = trunc i32 %or to i16
  store i16 %conv34, i16* %arrayidx32, align 2
  %26 = load i32, i32* %m1, align 4
  %27 = load i8, i8* %i0, align 1
  %idxprom35 = zext i8 %27 to i64
  %arrayidx36 = getelementptr inbounds [16 x i32], [16 x i32]* @currMetrics, i64 0, i64 %idxprom35
  store i32 %26, i32* %arrayidx36, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %28 = load i8, i8* %i0, align 1
  %conv37 = zext i8 %28 to i32
  %shl38 = shl i32 1, %conv37
  %neg = xor i32 %shl38, -1
  %29 = load i64, i64* %pos.addr, align 8
  %arrayidx39 = getelementptr inbounds [244 x i16], [244 x i16]* @viterbi_history, i64 0, i64 %29
  %30 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %30 to i32
  %and = and i32 %conv40, %neg
  %conv41 = trunc i32 %and to i16
  store i16 %conv41, i16* %arrayidx39, align 2
  %31 = load i32, i32* %m0, align 4
  %32 = load i8, i8* %i0, align 1
  %idxprom42 = zext i8 %32 to i64
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* @currMetrics, i64 0, i64 %idxprom42
  store i32 %31, i32* %arrayidx43, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load i32, i32* %m2, align 4
  %34 = load i32, i32* %m3, align 4
  %cmp44 = icmp uge i32 %33, %34
  br i1 %cmp44, label %if.then46, label %if.else55

if.then46:                                        ; preds = %if.end
  %35 = load i8, i8* %i1, align 1
  %conv47 = zext i8 %35 to i32
  %shl48 = shl i32 1, %conv47
  %36 = load i64, i64* %pos.addr, align 8
  %arrayidx49 = getelementptr inbounds [244 x i16], [244 x i16]* @viterbi_history, i64 0, i64 %36
  %37 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %37 to i32
  %or51 = or i32 %conv50, %shl48
  %conv52 = trunc i32 %or51 to i16
  store i16 %conv52, i16* %arrayidx49, align 2
  %38 = load i32, i32* %m3, align 4
  %39 = load i8, i8* %i1, align 1
  %idxprom53 = zext i8 %39 to i64
  %arrayidx54 = getelementptr inbounds [16 x i32], [16 x i32]* @currMetrics, i64 0, i64 %idxprom53
  store i32 %38, i32* %arrayidx54, align 4
  br label %if.end65

if.else55:                                        ; preds = %if.end
  %40 = load i8, i8* %i1, align 1
  %conv56 = zext i8 %40 to i32
  %shl57 = shl i32 1, %conv56
  %neg58 = xor i32 %shl57, -1
  %41 = load i64, i64* %pos.addr, align 8
  %arrayidx59 = getelementptr inbounds [244 x i16], [244 x i16]* @viterbi_history, i64 0, i64 %41
  %42 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %42 to i32
  %and61 = and i32 %conv60, %neg58
  %conv62 = trunc i32 %and61 to i16
  store i16 %conv62, i16* %arrayidx59, align 2
  %43 = load i32, i32* %m2, align 4
  %44 = load i8, i8* %i1, align 1
  %idxprom63 = zext i8 %44 to i64
  %arrayidx64 = getelementptr inbounds [16 x i32], [16 x i32]* @currMetrics, i64 0, i64 %idxprom63
  store i32 %43, i32* %arrayidx64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else55, %if.then46
  br label %for.inc

for.inc:                                          ; preds = %if.end65
  %45 = load i8, i8* %i, align 1
  %inc = add i8 %45, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %i66, align 1
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc76, %for.end
  %46 = load i8, i8* %i66, align 1
  %conv68 = zext i8 %46 to i32
  %cmp69 = icmp slt i32 %conv68, 16
  br i1 %cmp69, label %for.body71, label %for.end78

for.body71:                                       ; preds = %for.cond67
  %47 = load i8, i8* %i66, align 1
  %idxprom72 = zext i8 %47 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], [16 x i32]* @currMetrics, i64 0, i64 %idxprom72
  %48 = load i32, i32* %arrayidx73, align 4
  %49 = load i8, i8* %i66, align 1
  %idxprom74 = zext i8 %49 to i64
  %arrayidx75 = getelementptr inbounds [16 x i32], [16 x i32]* %tmp, i64 0, i64 %idxprom74
  store i32 %48, i32* %arrayidx75, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.body71
  %50 = load i8, i8* %i66, align 1
  %inc77 = add i8 %50, 1
  store i8 %inc77, i8* %i66, align 1
  br label %for.cond67, !llvm.loop !7

for.end78:                                        ; preds = %for.cond67
  store i8 0, i8* %i79, align 1
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc93, %for.end78
  %51 = load i8, i8* %i79, align 1
  %conv81 = zext i8 %51 to i32
  %cmp82 = icmp slt i32 %conv81, 16
  br i1 %cmp82, label %for.body84, label %for.end95

for.body84:                                       ; preds = %for.cond80
  %52 = load i8, i8* %i79, align 1
  %idxprom85 = zext i8 %52 to i64
  %arrayidx86 = getelementptr inbounds [16 x i32], [16 x i32]* @prevMetrics, i64 0, i64 %idxprom85
  %53 = load i32, i32* %arrayidx86, align 4
  %54 = load i8, i8* %i79, align 1
  %idxprom87 = zext i8 %54 to i64
  %arrayidx88 = getelementptr inbounds [16 x i32], [16 x i32]* @currMetrics, i64 0, i64 %idxprom87
  store i32 %53, i32* %arrayidx88, align 4
  %55 = load i8, i8* %i79, align 1
  %idxprom89 = zext i8 %55 to i64
  %arrayidx90 = getelementptr inbounds [16 x i32], [16 x i32]* %tmp, i64 0, i64 %idxprom89
  %56 = load i32, i32* %arrayidx90, align 4
  %57 = load i8, i8* %i79, align 1
  %idxprom91 = zext i8 %57 to i64
  %arrayidx92 = getelementptr inbounds [16 x i32], [16 x i32]* @prevMetrics, i64 0, i64 %idxprom91
  store i32 %56, i32* %arrayidx92, align 4
  br label %for.inc93

for.inc93:                                        ; preds = %for.body84
  %58 = load i8, i8* %i79, align 1
  %inc94 = add i8 %58, 1
  store i8 %inc94, i8* %i79, align 1
  br label %for.cond80, !llvm.loop !8

for.end95:                                        ; preds = %for.cond80
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viterbi_chainback(i8* noundef %out, i64 noundef %pos, i16 noundef zeroext %len) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %pos.addr = alloca i64, align 8
  %len.addr = alloca i16, align 2
  %state = alloca i8, align 1
  %bitPos = alloca i64, align 8
  %bit = alloca i16, align 2
  %cost = alloca i32, align 4
  %i = alloca i64, align 8
  %m = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i16 %len, i16* %len.addr, align 2
  store i8 0, i8* %state, align 1
  %0 = load i16, i16* %len.addr, align 2
  %conv = zext i16 %0 to i32
  %add = add nsw i32 %conv, 4
  %conv1 = sext i32 %add to i64
  store i64 %conv1, i64* %bitPos, align 8
  %1 = load i8*, i8** %out.addr, align 8
  %2 = load i16, i16* %len.addr, align 2
  %conv2 = zext i16 %2 to i32
  %sub = sub nsw i32 %conv2, 1
  %div = sdiv i32 %sub, 8
  %add3 = add nsw i32 %div, 1
  %conv4 = sext i32 %add3 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 %conv4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, i64* %pos.addr, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %bitPos, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %bitPos, align 8
  %5 = load i64, i64* %pos.addr, align 8
  %dec6 = add i64 %5, -1
  store i64 %dec6, i64* %pos.addr, align 8
  %6 = load i64, i64* %pos.addr, align 8
  %arrayidx = getelementptr inbounds [244 x i16], [244 x i16]* @viterbi_history, i64 0, i64 %6
  %7 = load i16, i16* %arrayidx, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load i8, i8* %state, align 1
  %conv8 = zext i8 %8 to i32
  %shr = ashr i32 %conv8, 4
  %shl = shl i32 1, %shr
  %and = and i32 %conv7, %shl
  %conv9 = trunc i32 %and to i16
  store i16 %conv9, i16* %bit, align 2
  %9 = load i8, i8* %state, align 1
  %conv10 = zext i8 %9 to i32
  %shr11 = ashr i32 %conv10, 1
  %conv12 = trunc i32 %shr11 to i8
  store i8 %conv12, i8* %state, align 1
  %10 = load i16, i16* %bit, align 2
  %tobool = icmp ne i16 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i8, i8* %state, align 1
  %conv13 = zext i8 %11 to i32
  %or = or i32 %conv13, 128
  %conv14 = trunc i32 %or to i8
  store i8 %conv14, i8* %state, align 1
  %12 = load i64, i64* %bitPos, align 8
  %rem = urem i64 %12, 8
  %sub15 = sub i64 7, %rem
  %sh_prom = trunc i64 %sub15 to i32
  %shl16 = shl i32 1, %sh_prom
  %13 = load i8*, i8** %out.addr, align 8
  %14 = load i64, i64* %bitPos, align 8
  %div17 = udiv i64 %14, 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %div17
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %15 to i32
  %or20 = or i32 %conv19, %shl16
  %conv21 = trunc i32 %or20 to i8
  store i8 %conv21, i8* %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @prevMetrics, i64 0, i64 0), align 16
  store i32 %16, i32* %cost, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i64, i64* %i, align 8
  %cmp22 = icmp ult i64 %17, 16
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %i, align 8
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* @prevMetrics, i64 0, i64 %18
  %19 = load i32, i32* %arrayidx24, align 4
  store i32 %19, i32* %m, align 4
  %20 = load i32, i32* %m, align 4
  %21 = load i32, i32* %cost, align 4
  %cmp25 = icmp ult i32 %20, %21
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  %22 = load i32, i32* %m, align 4
  store i32 %22, i32* %cost, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %cost, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viterbi_decode_punctured(i8* noundef %out, i16* noundef %in, i8* noundef %punct, i16 noundef zeroext %in_len, i16 noundef zeroext %p_len) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i16*, align 8
  %punct.addr = alloca i8*, align 8
  %in_len.addr = alloca i16, align 2
  %p_len.addr = alloca i16, align 2
  %umsg = alloca [488 x i16], align 16
  %p = alloca i8, align 1
  %u = alloca i16, align 2
  %i = alloca i16, align 2
  store i8* %out, i8** %out.addr, align 8
  store i16* %in, i16** %in.addr, align 8
  store i8* %punct, i8** %punct.addr, align 8
  store i16 %in_len, i16* %in_len.addr, align 2
  store i16 %p_len, i16* %p_len.addr, align 2
  %0 = load i16, i16* %in_len.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 488
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8 0, i8* %p, align 1
  store i16 0, i16* %u, align 2
  store i16 0, i16* %i, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %2 = load i16, i16* %i, align 2
  %conv2 = zext i16 %2 to i32
  %3 = load i16, i16* %in_len.addr, align 2
  %conv3 = zext i16 %3 to i32
  %cmp4 = icmp slt i32 %conv2, %conv3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %punct.addr, align 8
  %5 = load i8, i8* %p, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %7 = load i16*, i16** %in.addr, align 8
  %8 = load i16, i16* %i, align 2
  %idxprom7 = zext i16 %8 to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7
  %9 = load i16, i16* %arrayidx8, align 2
  %10 = load i16, i16* %u, align 2
  %idxprom9 = zext i16 %10 to i64
  %arrayidx10 = getelementptr inbounds [488 x i16], [488 x i16]* %umsg, i64 0, i64 %idxprom9
  store i16 %9, i16* %arrayidx10, align 2
  %11 = load i16, i16* %i, align 2
  %inc = add i16 %11, 1
  store i16 %inc, i16* %i, align 2
  br label %if.end13

if.else:                                          ; preds = %while.body
  %12 = load i16, i16* %u, align 2
  %idxprom11 = zext i16 %12 to i64
  %arrayidx12 = getelementptr inbounds [488 x i16], [488 x i16]* %umsg, i64 0, i64 %idxprom11
  store i16 32767, i16* %arrayidx12, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  %13 = load i16, i16* %u, align 2
  %inc14 = add i16 %13, 1
  store i16 %inc14, i16* %u, align 2
  %14 = load i8, i8* %p, align 1
  %inc15 = add i8 %14, 1
  store i8 %inc15, i8* %p, align 1
  %15 = load i16, i16* %p_len.addr, align 2
  %conv16 = zext i16 %15 to i32
  %16 = load i8, i8* %p, align 1
  %conv17 = zext i8 %16 to i32
  %rem = srem i32 %conv17, %conv16
  %conv18 = trunc i32 %rem to i8
  store i8 %conv18, i8* %p, align 1
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %out.addr, align 8
  %arraydecay = getelementptr inbounds [488 x i16], [488 x i16]* %umsg, i64 0, i64 0
  %18 = load i16, i16* %u, align 2
  %call19 = call i32 @viterbi_decode(i8* noundef %17, i16* noundef %arraydecay, i16 noundef zeroext %18)
  %19 = load i16, i16* %u, align 2
  %conv20 = zext i16 %19 to i32
  %20 = load i16, i16* %in_len.addr, align 2
  %conv21 = zext i16 %20 to i32
  %sub = sub nsw i32 %conv20, %conv21
  %mul = mul nsw i32 %sub, 32767
  %sub22 = sub i32 %call19, %mul
  ret i32 %sub22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @q_abs_diff(i16 noundef zeroext %v1, i16 noundef zeroext %v2) #0 {
entry:
  %retval = alloca i16, align 2
  %v1.addr = alloca i16, align 2
  %v2.addr = alloca i16, align 2
  store i16 %v1, i16* %v1.addr, align 2
  store i16 %v2, i16* %v2.addr, align 2
  %0 = load i16, i16* %v2.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %v1.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %v2.addr, align 2
  %conv3 = zext i16 %2 to i32
  %3 = load i16, i16* %v1.addr, align 2
  %conv4 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv3, %conv4
  %conv5 = trunc i32 %sub to i16
  store i16 %conv5, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i16, i16* %v1.addr, align 2
  %conv6 = zext i16 %4 to i32
  %5 = load i16, i16* %v2.addr, align 2
  %conv7 = zext i16 %5 to i32
  %sub8 = sub nsw i32 %conv6, %conv7
  %conv9 = trunc i32 %sub8 to i16
  store i16 %conv9, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i16, i16* %retval, align 2
  ret i16 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_encode_stream_frame(i8* noundef %out, i8* noundef %in, i16 noundef zeroext %fn) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %fn.addr = alloca i16, align 2
  %pp_len = alloca i8, align 1
  %p = alloca i8, align 1
  %pb = alloca i16, align 2
  %ud = alloca [152 x i8], align 16
  %i = alloca i8, align 1
  %i6 = alloca i8, align 1
  %j = alloca i8, align 1
  %i37 = alloca i8, align 1
  %G1 = alloca i8, align 1
  %G2 = alloca i8, align 1
  store i8* %out, i8** %out.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i16 %fn, i16* %fn.addr, align 2
  store i8 12, i8* %pp_len, align 1
  store i8 0, i8* %p, align 1
  store i16 0, i16* %pb, align 2
  %arraydecay = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 152, i1 false)
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %fn.addr, align 2
  %conv2 = zext i16 %1 to i32
  %2 = load i8, i8* %i, align 1
  %conv3 = zext i8 %2 to i32
  %sub = sub nsw i32 15, %conv3
  %shr = ashr i32 %conv2, %sub
  %and = and i32 %shr, 1
  %conv4 = trunc i32 %and to i8
  %3 = load i8, i8* %i, align 1
  %conv5 = zext i8 %3 to i32
  %add = add nsw i32 4, %conv5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom
  store i8 %conv4, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i8, i8* %i, align 1
  %inc = add i8 %4, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %i6, align 1
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc34, %for.end
  %5 = load i8, i8* %i6, align 1
  %conv8 = zext i8 %5 to i32
  %cmp9 = icmp slt i32 %conv8, 16
  br i1 %cmp9, label %for.body11, label %for.end36

for.body11:                                       ; preds = %for.cond7
  store i8 0, i8* %j, align 1
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc31, %for.body11
  %6 = load i8, i8* %j, align 1
  %conv13 = zext i8 %6 to i32
  %cmp14 = icmp slt i32 %conv13, 8
  br i1 %cmp14, label %for.body16, label %for.end33

for.body16:                                       ; preds = %for.cond12
  %7 = load i8*, i8** %in.addr, align 8
  %8 = load i8, i8* %i6, align 1
  %idxprom17 = zext i8 %8 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %7, i64 %idxprom17
  %9 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %9 to i32
  %10 = load i8, i8* %j, align 1
  %conv20 = zext i8 %10 to i32
  %sub21 = sub nsw i32 7, %conv20
  %shr22 = ashr i32 %conv19, %sub21
  %and23 = and i32 %shr22, 1
  %conv24 = trunc i32 %and23 to i8
  %11 = load i8, i8* %i6, align 1
  %conv25 = zext i8 %11 to i32
  %mul = mul nsw i32 %conv25, 8
  %add26 = add nsw i32 20, %mul
  %12 = load i8, i8* %j, align 1
  %conv27 = zext i8 %12 to i32
  %add28 = add nsw i32 %add26, %conv27
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom29
  store i8 %conv24, i8* %arrayidx30, align 1
  br label %for.inc31

for.inc31:                                        ; preds = %for.body16
  %13 = load i8, i8* %j, align 1
  %inc32 = add i8 %13, 1
  store i8 %inc32, i8* %j, align 1
  br label %for.cond12, !llvm.loop !13

for.end33:                                        ; preds = %for.cond12
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %14 = load i8, i8* %i6, align 1
  %inc35 = add i8 %14, 1
  store i8 %inc35, i8* %i6, align 1
  br label %for.cond7, !llvm.loop !14

for.end36:                                        ; preds = %for.cond7
  store i8 0, i8* %i37, align 1
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc109, %for.end36
  %15 = load i8, i8* %i37, align 1
  %conv39 = zext i8 %15 to i32
  %cmp40 = icmp slt i32 %conv39, 148
  br i1 %cmp40, label %for.body42, label %for.end111

for.body42:                                       ; preds = %for.cond38
  %16 = load i8, i8* %i37, align 1
  %conv43 = zext i8 %16 to i32
  %add44 = add nsw i32 %conv43, 4
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom45
  %17 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %17 to i32
  %18 = load i8, i8* %i37, align 1
  %conv48 = zext i8 %18 to i32
  %add49 = add nsw i32 %conv48, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom50
  %19 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %19 to i32
  %add53 = add nsw i32 %conv47, %conv52
  %20 = load i8, i8* %i37, align 1
  %conv54 = zext i8 %20 to i32
  %add55 = add nsw i32 %conv54, 0
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom56
  %21 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %21 to i32
  %add59 = add nsw i32 %add53, %conv58
  %rem = srem i32 %add59, 2
  %conv60 = trunc i32 %rem to i8
  store i8 %conv60, i8* %G1, align 1
  %22 = load i8, i8* %i37, align 1
  %conv61 = zext i8 %22 to i32
  %add62 = add nsw i32 %conv61, 4
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom63
  %23 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %23 to i32
  %24 = load i8, i8* %i37, align 1
  %conv66 = zext i8 %24 to i32
  %add67 = add nsw i32 %conv66, 3
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom68
  %25 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %25 to i32
  %add71 = add nsw i32 %conv65, %conv70
  %26 = load i8, i8* %i37, align 1
  %conv72 = zext i8 %26 to i32
  %add73 = add nsw i32 %conv72, 2
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom74
  %27 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %27 to i32
  %add77 = add nsw i32 %add71, %conv76
  %28 = load i8, i8* %i37, align 1
  %conv78 = zext i8 %28 to i32
  %add79 = add nsw i32 %conv78, 0
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [152 x i8], [152 x i8]* %ud, i64 0, i64 %idxprom80
  %29 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %29 to i32
  %add83 = add nsw i32 %add77, %conv82
  %rem84 = srem i32 %add83, 2
  %conv85 = trunc i32 %rem84 to i8
  store i8 %conv85, i8* %G2, align 1
  %30 = load i8, i8* %p, align 1
  %idxprom86 = zext i8 %30 to i64
  %arrayidx87 = getelementptr inbounds [12 x i8], [12 x i8]* @puncture_pattern_2, i64 0, i64 %idxprom86
  %31 = load i8, i8* %arrayidx87, align 1
  %tobool = icmp ne i8 %31, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body42
  %32 = load i8, i8* %G1, align 1
  %33 = load i8*, i8** %out.addr, align 8
  %34 = load i16, i16* %pb, align 2
  %idxprom88 = zext i16 %34 to i64
  %arrayidx89 = getelementptr inbounds i8, i8* %33, i64 %idxprom88
  store i8 %32, i8* %arrayidx89, align 1
  %35 = load i16, i16* %pb, align 2
  %inc90 = add i16 %35, 1
  store i16 %inc90, i16* %pb, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body42
  %36 = load i8, i8* %p, align 1
  %inc91 = add i8 %36, 1
  store i8 %inc91, i8* %p, align 1
  %37 = load i8, i8* %pp_len, align 1
  %conv92 = zext i8 %37 to i32
  %38 = load i8, i8* %p, align 1
  %conv93 = zext i8 %38 to i32
  %rem94 = srem i32 %conv93, %conv92
  %conv95 = trunc i32 %rem94 to i8
  store i8 %conv95, i8* %p, align 1
  %39 = load i8, i8* %p, align 1
  %idxprom96 = zext i8 %39 to i64
  %arrayidx97 = getelementptr inbounds [12 x i8], [12 x i8]* @puncture_pattern_2, i64 0, i64 %idxprom96
  %40 = load i8, i8* %arrayidx97, align 1
  %tobool98 = icmp ne i8 %40, 0
  br i1 %tobool98, label %if.then99, label %if.end103

if.then99:                                        ; preds = %if.end
  %41 = load i8, i8* %G2, align 1
  %42 = load i8*, i8** %out.addr, align 8
  %43 = load i16, i16* %pb, align 2
  %idxprom100 = zext i16 %43 to i64
  %arrayidx101 = getelementptr inbounds i8, i8* %42, i64 %idxprom100
  store i8 %41, i8* %arrayidx101, align 1
  %44 = load i16, i16* %pb, align 2
  %inc102 = add i16 %44, 1
  store i16 %inc102, i16* %pb, align 2
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.end
  %45 = load i8, i8* %p, align 1
  %inc104 = add i8 %45, 1
  store i8 %inc104, i8* %p, align 1
  %46 = load i8, i8* %pp_len, align 1
  %conv105 = zext i8 %46 to i32
  %47 = load i8, i8* %p, align 1
  %conv106 = zext i8 %47 to i32
  %rem107 = srem i32 %conv106, %conv105
  %conv108 = trunc i32 %rem107 to i8
  store i8 %conv108, i8* %p, align 1
  br label %for.inc109

for.inc109:                                       ; preds = %if.end103
  %48 = load i8, i8* %i37, align 1
  %inc110 = add i8 %48, 1
  store i8 %inc110, i8* %i37, align 1
  br label %for.cond38, !llvm.loop !15

for.end111:                                       ; preds = %for.cond38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_encode_packet_frame(i8* noundef %out, i8* noundef %in) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %pp_len = alloca i8, align 1
  %p = alloca i8, align 1
  %pb = alloca i16, align 2
  %ud = alloca [214 x i8], align 16
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %i24 = alloca i8, align 1
  %G1 = alloca i8, align 1
  %G2 = alloca i8, align 1
  store i8* %out, i8** %out.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i8 8, i8* %pp_len, align 1
  store i8 0, i8* %p, align 1
  store i16 0, i16* %pb, align 2
  %arraydecay = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 214, i1 false)
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 26
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i8, i8* %j, align 1
  %conv3 = zext i8 %1 to i32
  %cmp4 = icmp slt i32 %conv3, 8
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %2 = load i8, i8* %i, align 1
  %conv7 = zext i8 %2 to i32
  %cmp8 = icmp sle i32 %conv7, 24
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body6
  %3 = load i8, i8* %j, align 1
  %conv10 = zext i8 %3 to i32
  %cmp11 = icmp sle i32 %conv10, 5
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body6
  %4 = load i8*, i8** %in.addr, align 8
  %5 = load i8, i8* %i, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv13 = zext i8 %6 to i32
  %7 = load i8, i8* %j, align 1
  %conv14 = zext i8 %7 to i32
  %sub = sub nsw i32 7, %conv14
  %shr = ashr i32 %conv13, %sub
  %and = and i32 %shr, 1
  %conv15 = trunc i32 %and to i8
  %8 = load i8, i8* %i, align 1
  %conv16 = zext i8 %8 to i32
  %mul = mul nsw i32 %conv16, 8
  %add = add nsw i32 4, %mul
  %9 = load i8, i8* %j, align 1
  %conv17 = zext i8 %9 to i32
  %add18 = add nsw i32 %add, %conv17
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 %idxprom19
  store i8 %conv15, i8* %arrayidx20, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8, i8* %j, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond2, !llvm.loop !16

for.end:                                          ; preds = %for.cond2
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %11 = load i8, i8* %i, align 1
  %inc22 = add i8 %11, 1
  store i8 %inc22, i8* %i, align 1
  br label %for.cond, !llvm.loop !17

for.end23:                                        ; preds = %for.cond
  store i8 0, i8* %i24, align 1
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc98, %for.end23
  %12 = load i8, i8* %i24, align 1
  %conv26 = zext i8 %12 to i32
  %cmp27 = icmp slt i32 %conv26, 210
  br i1 %cmp27, label %for.body29, label %for.end100

for.body29:                                       ; preds = %for.cond25
  %13 = load i8, i8* %i24, align 1
  %conv30 = zext i8 %13 to i32
  %add31 = add nsw i32 %conv30, 4
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 %idxprom32
  %14 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %14 to i32
  %15 = load i8, i8* %i24, align 1
  %conv35 = zext i8 %15 to i32
  %add36 = add nsw i32 %conv35, 1
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 %idxprom37
  %16 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %16 to i32
  %add40 = add nsw i32 %conv34, %conv39
  %17 = load i8, i8* %i24, align 1
  %conv41 = zext i8 %17 to i32
  %add42 = add nsw i32 %conv41, 0
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 %idxprom43
  %18 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %18 to i32
  %add46 = add nsw i32 %add40, %conv45
  %rem = srem i32 %add46, 2
  %conv47 = trunc i32 %rem to i8
  store i8 %conv47, i8* %G1, align 1
  %19 = load i8, i8* %i24, align 1
  %conv48 = zext i8 %19 to i32
  %add49 = add nsw i32 %conv48, 4
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 %idxprom50
  %20 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %20 to i32
  %21 = load i8, i8* %i24, align 1
  %conv53 = zext i8 %21 to i32
  %add54 = add nsw i32 %conv53, 3
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 %idxprom55
  %22 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %22 to i32
  %add58 = add nsw i32 %conv52, %conv57
  %23 = load i8, i8* %i24, align 1
  %conv59 = zext i8 %23 to i32
  %add60 = add nsw i32 %conv59, 2
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 %idxprom61
  %24 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %24 to i32
  %add64 = add nsw i32 %add58, %conv63
  %25 = load i8, i8* %i24, align 1
  %conv65 = zext i8 %25 to i32
  %add66 = add nsw i32 %conv65, 0
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [214 x i8], [214 x i8]* %ud, i64 0, i64 %idxprom67
  %26 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %26 to i32
  %add70 = add nsw i32 %add64, %conv69
  %rem71 = srem i32 %add70, 2
  %conv72 = trunc i32 %rem71 to i8
  store i8 %conv72, i8* %G2, align 1
  %27 = load i8, i8* %p, align 1
  %idxprom73 = zext i8 %27 to i64
  %arrayidx74 = getelementptr inbounds [8 x i8], [8 x i8]* @puncture_pattern_3, i64 0, i64 %idxprom73
  %28 = load i8, i8* %arrayidx74, align 1
  %tobool = icmp ne i8 %28, 0
  br i1 %tobool, label %if.then75, label %if.end79

if.then75:                                        ; preds = %for.body29
  %29 = load i8, i8* %G1, align 1
  %30 = load i8*, i8** %out.addr, align 8
  %31 = load i16, i16* %pb, align 2
  %idxprom76 = zext i16 %31 to i64
  %arrayidx77 = getelementptr inbounds i8, i8* %30, i64 %idxprom76
  store i8 %29, i8* %arrayidx77, align 1
  %32 = load i16, i16* %pb, align 2
  %inc78 = add i16 %32, 1
  store i16 %inc78, i16* %pb, align 2
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %for.body29
  %33 = load i8, i8* %p, align 1
  %inc80 = add i8 %33, 1
  store i8 %inc80, i8* %p, align 1
  %34 = load i8, i8* %pp_len, align 1
  %conv81 = zext i8 %34 to i32
  %35 = load i8, i8* %p, align 1
  %conv82 = zext i8 %35 to i32
  %rem83 = srem i32 %conv82, %conv81
  %conv84 = trunc i32 %rem83 to i8
  store i8 %conv84, i8* %p, align 1
  %36 = load i8, i8* %p, align 1
  %idxprom85 = zext i8 %36 to i64
  %arrayidx86 = getelementptr inbounds [8 x i8], [8 x i8]* @puncture_pattern_3, i64 0, i64 %idxprom85
  %37 = load i8, i8* %arrayidx86, align 1
  %tobool87 = icmp ne i8 %37, 0
  br i1 %tobool87, label %if.then88, label %if.end92

if.then88:                                        ; preds = %if.end79
  %38 = load i8, i8* %G2, align 1
  %39 = load i8*, i8** %out.addr, align 8
  %40 = load i16, i16* %pb, align 2
  %idxprom89 = zext i16 %40 to i64
  %arrayidx90 = getelementptr inbounds i8, i8* %39, i64 %idxprom89
  store i8 %38, i8* %arrayidx90, align 1
  %41 = load i16, i16* %pb, align 2
  %inc91 = add i16 %41, 1
  store i16 %inc91, i16* %pb, align 2
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end79
  %42 = load i8, i8* %p, align 1
  %inc93 = add i8 %42, 1
  store i8 %inc93, i8* %p, align 1
  %43 = load i8, i8* %pp_len, align 1
  %conv94 = zext i8 %43 to i32
  %44 = load i8, i8* %p, align 1
  %conv95 = zext i8 %44 to i32
  %rem96 = srem i32 %conv95, %conv94
  %conv97 = trunc i32 %rem96 to i8
  store i8 %conv97, i8* %p, align 1
  br label %for.inc98

for.inc98:                                        ; preds = %if.end92
  %45 = load i8, i8* %i24, align 1
  %inc99 = add i8 %45, 1
  store i8 %inc99, i8* %i24, align 1
  br label %for.cond25, !llvm.loop !18

for.end100:                                       ; preds = %for.cond25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_encode_LSF(i8* noundef %out, %struct.lsf_t* noundef %in) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca %struct.lsf_t*, align 8
  %pp_len = alloca i8, align 1
  %p = alloca i8, align 1
  %pb = alloca i16, align 2
  %ud = alloca [248 x i8], align 16
  %i = alloca i8, align 1
  %i72 = alloca i8, align 1
  %i158 = alloca i8, align 1
  %i192 = alloca i8, align 1
  %i382 = alloca i8, align 1
  %i416 = alloca i8, align 1
  %G1 = alloca i8, align 1
  %G2 = alloca i8, align 1
  store i8* %out, i8** %out.addr, align 8
  store %struct.lsf_t* %in, %struct.lsf_t** %in.addr, align 8
  store i8 61, i8* %pp_len, align 1
  store i8 0, i8* %p, align 1
  store i16 0, i16* %pb, align 2
  %arraydecay = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 248, i1 false)
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %dst = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %dst, i64 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %2 to i32
  %3 = load i8, i8* %i, align 1
  %conv3 = zext i8 %3 to i32
  %sub = sub nsw i32 7, %conv3
  %shr = ashr i32 %conv2, %sub
  %and = and i32 %shr, 1
  %conv4 = trunc i32 %and to i8
  %4 = load i8, i8* %i, align 1
  %conv5 = zext i8 %4 to i32
  %add = add nsw i32 4, %conv5
  %idxprom = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom
  store i8 %conv4, i8* %arrayidx6, align 1
  %5 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %dst7 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %5, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [6 x i8], [6 x i8]* %dst7, i64 0, i64 1
  %6 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %6 to i32
  %7 = load i8, i8* %i, align 1
  %conv10 = zext i8 %7 to i32
  %sub11 = sub nsw i32 7, %conv10
  %shr12 = ashr i32 %conv9, %sub11
  %and13 = and i32 %shr12, 1
  %conv14 = trunc i32 %and13 to i8
  %8 = load i8, i8* %i, align 1
  %conv15 = zext i8 %8 to i32
  %add16 = add nsw i32 4, %conv15
  %add17 = add nsw i32 %add16, 8
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom18
  store i8 %conv14, i8* %arrayidx19, align 1
  %9 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %dst20 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %9, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [6 x i8], [6 x i8]* %dst20, i64 0, i64 2
  %10 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %10 to i32
  %11 = load i8, i8* %i, align 1
  %conv23 = zext i8 %11 to i32
  %sub24 = sub nsw i32 7, %conv23
  %shr25 = ashr i32 %conv22, %sub24
  %and26 = and i32 %shr25, 1
  %conv27 = trunc i32 %and26 to i8
  %12 = load i8, i8* %i, align 1
  %conv28 = zext i8 %12 to i32
  %add29 = add nsw i32 4, %conv28
  %add30 = add nsw i32 %add29, 16
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom31
  store i8 %conv27, i8* %arrayidx32, align 1
  %13 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %dst33 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %13, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [6 x i8], [6 x i8]* %dst33, i64 0, i64 3
  %14 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %14 to i32
  %15 = load i8, i8* %i, align 1
  %conv36 = zext i8 %15 to i32
  %sub37 = sub nsw i32 7, %conv36
  %shr38 = ashr i32 %conv35, %sub37
  %and39 = and i32 %shr38, 1
  %conv40 = trunc i32 %and39 to i8
  %16 = load i8, i8* %i, align 1
  %conv41 = zext i8 %16 to i32
  %add42 = add nsw i32 4, %conv41
  %add43 = add nsw i32 %add42, 24
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom44
  store i8 %conv40, i8* %arrayidx45, align 1
  %17 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %dst46 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %17, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [6 x i8], [6 x i8]* %dst46, i64 0, i64 4
  %18 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %18 to i32
  %19 = load i8, i8* %i, align 1
  %conv49 = zext i8 %19 to i32
  %sub50 = sub nsw i32 7, %conv49
  %shr51 = ashr i32 %conv48, %sub50
  %and52 = and i32 %shr51, 1
  %conv53 = trunc i32 %and52 to i8
  %20 = load i8, i8* %i, align 1
  %conv54 = zext i8 %20 to i32
  %add55 = add nsw i32 4, %conv54
  %add56 = add nsw i32 %add55, 32
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom57
  store i8 %conv53, i8* %arrayidx58, align 1
  %21 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %dst59 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %21, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [6 x i8], [6 x i8]* %dst59, i64 0, i64 5
  %22 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %22 to i32
  %23 = load i8, i8* %i, align 1
  %conv62 = zext i8 %23 to i32
  %sub63 = sub nsw i32 7, %conv62
  %shr64 = ashr i32 %conv61, %sub63
  %and65 = and i32 %shr64, 1
  %conv66 = trunc i32 %and65 to i8
  %24 = load i8, i8* %i, align 1
  %conv67 = zext i8 %24 to i32
  %add68 = add nsw i32 4, %conv67
  %add69 = add nsw i32 %add68, 40
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom70
  store i8 %conv66, i8* %arrayidx71, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i8, i8* %i, align 1
  %inc = add i8 %25, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %i72, align 1
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc155, %for.end
  %26 = load i8, i8* %i72, align 1
  %conv74 = zext i8 %26 to i32
  %cmp75 = icmp slt i32 %conv74, 8
  br i1 %cmp75, label %for.body77, label %for.end157

for.body77:                                       ; preds = %for.cond73
  %27 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %src = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %27, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [6 x i8], [6 x i8]* %src, i64 0, i64 0
  %28 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %28 to i32
  %29 = load i8, i8* %i72, align 1
  %conv80 = zext i8 %29 to i32
  %sub81 = sub nsw i32 7, %conv80
  %shr82 = ashr i32 %conv79, %sub81
  %and83 = and i32 %shr82, 1
  %conv84 = trunc i32 %and83 to i8
  %30 = load i8, i8* %i72, align 1
  %conv85 = zext i8 %30 to i32
  %add86 = add nsw i32 4, %conv85
  %add87 = add nsw i32 %add86, 48
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom88
  store i8 %conv84, i8* %arrayidx89, align 1
  %31 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %src90 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %31, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [6 x i8], [6 x i8]* %src90, i64 0, i64 1
  %32 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %32 to i32
  %33 = load i8, i8* %i72, align 1
  %conv93 = zext i8 %33 to i32
  %sub94 = sub nsw i32 7, %conv93
  %shr95 = ashr i32 %conv92, %sub94
  %and96 = and i32 %shr95, 1
  %conv97 = trunc i32 %and96 to i8
  %34 = load i8, i8* %i72, align 1
  %conv98 = zext i8 %34 to i32
  %add99 = add nsw i32 4, %conv98
  %add100 = add nsw i32 %add99, 56
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom101
  store i8 %conv97, i8* %arrayidx102, align 1
  %35 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %src103 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %35, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [6 x i8], [6 x i8]* %src103, i64 0, i64 2
  %36 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %36 to i32
  %37 = load i8, i8* %i72, align 1
  %conv106 = zext i8 %37 to i32
  %sub107 = sub nsw i32 7, %conv106
  %shr108 = ashr i32 %conv105, %sub107
  %and109 = and i32 %shr108, 1
  %conv110 = trunc i32 %and109 to i8
  %38 = load i8, i8* %i72, align 1
  %conv111 = zext i8 %38 to i32
  %add112 = add nsw i32 4, %conv111
  %add113 = add nsw i32 %add112, 64
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom114
  store i8 %conv110, i8* %arrayidx115, align 1
  %39 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %src116 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %39, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [6 x i8], [6 x i8]* %src116, i64 0, i64 3
  %40 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %40 to i32
  %41 = load i8, i8* %i72, align 1
  %conv119 = zext i8 %41 to i32
  %sub120 = sub nsw i32 7, %conv119
  %shr121 = ashr i32 %conv118, %sub120
  %and122 = and i32 %shr121, 1
  %conv123 = trunc i32 %and122 to i8
  %42 = load i8, i8* %i72, align 1
  %conv124 = zext i8 %42 to i32
  %add125 = add nsw i32 4, %conv124
  %add126 = add nsw i32 %add125, 72
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom127
  store i8 %conv123, i8* %arrayidx128, align 1
  %43 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %src129 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %43, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [6 x i8], [6 x i8]* %src129, i64 0, i64 4
  %44 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %44 to i32
  %45 = load i8, i8* %i72, align 1
  %conv132 = zext i8 %45 to i32
  %sub133 = sub nsw i32 7, %conv132
  %shr134 = ashr i32 %conv131, %sub133
  %and135 = and i32 %shr134, 1
  %conv136 = trunc i32 %and135 to i8
  %46 = load i8, i8* %i72, align 1
  %conv137 = zext i8 %46 to i32
  %add138 = add nsw i32 4, %conv137
  %add139 = add nsw i32 %add138, 80
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom140
  store i8 %conv136, i8* %arrayidx141, align 1
  %47 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %src142 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %47, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [6 x i8], [6 x i8]* %src142, i64 0, i64 5
  %48 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %48 to i32
  %49 = load i8, i8* %i72, align 1
  %conv145 = zext i8 %49 to i32
  %sub146 = sub nsw i32 7, %conv145
  %shr147 = ashr i32 %conv144, %sub146
  %and148 = and i32 %shr147, 1
  %conv149 = trunc i32 %and148 to i8
  %50 = load i8, i8* %i72, align 1
  %conv150 = zext i8 %50 to i32
  %add151 = add nsw i32 4, %conv150
  %add152 = add nsw i32 %add151, 88
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom153
  store i8 %conv149, i8* %arrayidx154, align 1
  br label %for.inc155

for.inc155:                                       ; preds = %for.body77
  %51 = load i8, i8* %i72, align 1
  %inc156 = add i8 %51, 1
  store i8 %inc156, i8* %i72, align 1
  br label %for.cond73, !llvm.loop !20

for.end157:                                       ; preds = %for.cond73
  store i8 0, i8* %i158, align 1
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc189, %for.end157
  %52 = load i8, i8* %i158, align 1
  %conv160 = zext i8 %52 to i32
  %cmp161 = icmp slt i32 %conv160, 8
  br i1 %cmp161, label %for.body163, label %for.end191

for.body163:                                      ; preds = %for.cond159
  %53 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %type = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %53, i32 0, i32 2
  %arrayidx164 = getelementptr inbounds [2 x i8], [2 x i8]* %type, i64 0, i64 0
  %54 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %54 to i32
  %55 = load i8, i8* %i158, align 1
  %conv166 = zext i8 %55 to i32
  %sub167 = sub nsw i32 7, %conv166
  %shr168 = ashr i32 %conv165, %sub167
  %and169 = and i32 %shr168, 1
  %conv170 = trunc i32 %and169 to i8
  %56 = load i8, i8* %i158, align 1
  %conv171 = zext i8 %56 to i32
  %add172 = add nsw i32 4, %conv171
  %add173 = add nsw i32 %add172, 96
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom174
  store i8 %conv170, i8* %arrayidx175, align 1
  %57 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %type176 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %57, i32 0, i32 2
  %arrayidx177 = getelementptr inbounds [2 x i8], [2 x i8]* %type176, i64 0, i64 1
  %58 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %58 to i32
  %59 = load i8, i8* %i158, align 1
  %conv179 = zext i8 %59 to i32
  %sub180 = sub nsw i32 7, %conv179
  %shr181 = ashr i32 %conv178, %sub180
  %and182 = and i32 %shr181, 1
  %conv183 = trunc i32 %and182 to i8
  %60 = load i8, i8* %i158, align 1
  %conv184 = zext i8 %60 to i32
  %add185 = add nsw i32 4, %conv184
  %add186 = add nsw i32 %add185, 104
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom187
  store i8 %conv183, i8* %arrayidx188, align 1
  br label %for.inc189

for.inc189:                                       ; preds = %for.body163
  %61 = load i8, i8* %i158, align 1
  %inc190 = add i8 %61, 1
  store i8 %inc190, i8* %i158, align 1
  br label %for.cond159, !llvm.loop !21

for.end191:                                       ; preds = %for.cond159
  store i8 0, i8* %i192, align 1
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc379, %for.end191
  %62 = load i8, i8* %i192, align 1
  %conv194 = zext i8 %62 to i32
  %cmp195 = icmp slt i32 %conv194, 8
  br i1 %cmp195, label %for.body197, label %for.end381

for.body197:                                      ; preds = %for.cond193
  %63 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %63, i32 0, i32 3
  %arrayidx198 = getelementptr inbounds [14 x i8], [14 x i8]* %meta, i64 0, i64 0
  %64 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %64 to i32
  %65 = load i8, i8* %i192, align 1
  %conv200 = zext i8 %65 to i32
  %sub201 = sub nsw i32 7, %conv200
  %shr202 = ashr i32 %conv199, %sub201
  %and203 = and i32 %shr202, 1
  %conv204 = trunc i32 %and203 to i8
  %66 = load i8, i8* %i192, align 1
  %conv205 = zext i8 %66 to i32
  %add206 = add nsw i32 4, %conv205
  %add207 = add nsw i32 %add206, 112
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom208
  store i8 %conv204, i8* %arrayidx209, align 1
  %67 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta210 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %67, i32 0, i32 3
  %arrayidx211 = getelementptr inbounds [14 x i8], [14 x i8]* %meta210, i64 0, i64 1
  %68 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %68 to i32
  %69 = load i8, i8* %i192, align 1
  %conv213 = zext i8 %69 to i32
  %sub214 = sub nsw i32 7, %conv213
  %shr215 = ashr i32 %conv212, %sub214
  %and216 = and i32 %shr215, 1
  %conv217 = trunc i32 %and216 to i8
  %70 = load i8, i8* %i192, align 1
  %conv218 = zext i8 %70 to i32
  %add219 = add nsw i32 4, %conv218
  %add220 = add nsw i32 %add219, 120
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom221
  store i8 %conv217, i8* %arrayidx222, align 1
  %71 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta223 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %71, i32 0, i32 3
  %arrayidx224 = getelementptr inbounds [14 x i8], [14 x i8]* %meta223, i64 0, i64 2
  %72 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %72 to i32
  %73 = load i8, i8* %i192, align 1
  %conv226 = zext i8 %73 to i32
  %sub227 = sub nsw i32 7, %conv226
  %shr228 = ashr i32 %conv225, %sub227
  %and229 = and i32 %shr228, 1
  %conv230 = trunc i32 %and229 to i8
  %74 = load i8, i8* %i192, align 1
  %conv231 = zext i8 %74 to i32
  %add232 = add nsw i32 4, %conv231
  %add233 = add nsw i32 %add232, 128
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom234
  store i8 %conv230, i8* %arrayidx235, align 1
  %75 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta236 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %75, i32 0, i32 3
  %arrayidx237 = getelementptr inbounds [14 x i8], [14 x i8]* %meta236, i64 0, i64 3
  %76 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %76 to i32
  %77 = load i8, i8* %i192, align 1
  %conv239 = zext i8 %77 to i32
  %sub240 = sub nsw i32 7, %conv239
  %shr241 = ashr i32 %conv238, %sub240
  %and242 = and i32 %shr241, 1
  %conv243 = trunc i32 %and242 to i8
  %78 = load i8, i8* %i192, align 1
  %conv244 = zext i8 %78 to i32
  %add245 = add nsw i32 4, %conv244
  %add246 = add nsw i32 %add245, 136
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom247
  store i8 %conv243, i8* %arrayidx248, align 1
  %79 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta249 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %79, i32 0, i32 3
  %arrayidx250 = getelementptr inbounds [14 x i8], [14 x i8]* %meta249, i64 0, i64 4
  %80 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %80 to i32
  %81 = load i8, i8* %i192, align 1
  %conv252 = zext i8 %81 to i32
  %sub253 = sub nsw i32 7, %conv252
  %shr254 = ashr i32 %conv251, %sub253
  %and255 = and i32 %shr254, 1
  %conv256 = trunc i32 %and255 to i8
  %82 = load i8, i8* %i192, align 1
  %conv257 = zext i8 %82 to i32
  %add258 = add nsw i32 4, %conv257
  %add259 = add nsw i32 %add258, 144
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom260
  store i8 %conv256, i8* %arrayidx261, align 1
  %83 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta262 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %83, i32 0, i32 3
  %arrayidx263 = getelementptr inbounds [14 x i8], [14 x i8]* %meta262, i64 0, i64 5
  %84 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %84 to i32
  %85 = load i8, i8* %i192, align 1
  %conv265 = zext i8 %85 to i32
  %sub266 = sub nsw i32 7, %conv265
  %shr267 = ashr i32 %conv264, %sub266
  %and268 = and i32 %shr267, 1
  %conv269 = trunc i32 %and268 to i8
  %86 = load i8, i8* %i192, align 1
  %conv270 = zext i8 %86 to i32
  %add271 = add nsw i32 4, %conv270
  %add272 = add nsw i32 %add271, 152
  %idxprom273 = sext i32 %add272 to i64
  %arrayidx274 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom273
  store i8 %conv269, i8* %arrayidx274, align 1
  %87 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta275 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %87, i32 0, i32 3
  %arrayidx276 = getelementptr inbounds [14 x i8], [14 x i8]* %meta275, i64 0, i64 6
  %88 = load i8, i8* %arrayidx276, align 1
  %conv277 = zext i8 %88 to i32
  %89 = load i8, i8* %i192, align 1
  %conv278 = zext i8 %89 to i32
  %sub279 = sub nsw i32 7, %conv278
  %shr280 = ashr i32 %conv277, %sub279
  %and281 = and i32 %shr280, 1
  %conv282 = trunc i32 %and281 to i8
  %90 = load i8, i8* %i192, align 1
  %conv283 = zext i8 %90 to i32
  %add284 = add nsw i32 4, %conv283
  %add285 = add nsw i32 %add284, 160
  %idxprom286 = sext i32 %add285 to i64
  %arrayidx287 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom286
  store i8 %conv282, i8* %arrayidx287, align 1
  %91 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta288 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %91, i32 0, i32 3
  %arrayidx289 = getelementptr inbounds [14 x i8], [14 x i8]* %meta288, i64 0, i64 7
  %92 = load i8, i8* %arrayidx289, align 1
  %conv290 = zext i8 %92 to i32
  %93 = load i8, i8* %i192, align 1
  %conv291 = zext i8 %93 to i32
  %sub292 = sub nsw i32 7, %conv291
  %shr293 = ashr i32 %conv290, %sub292
  %and294 = and i32 %shr293, 1
  %conv295 = trunc i32 %and294 to i8
  %94 = load i8, i8* %i192, align 1
  %conv296 = zext i8 %94 to i32
  %add297 = add nsw i32 4, %conv296
  %add298 = add nsw i32 %add297, 168
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom299
  store i8 %conv295, i8* %arrayidx300, align 1
  %95 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta301 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %95, i32 0, i32 3
  %arrayidx302 = getelementptr inbounds [14 x i8], [14 x i8]* %meta301, i64 0, i64 8
  %96 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %96 to i32
  %97 = load i8, i8* %i192, align 1
  %conv304 = zext i8 %97 to i32
  %sub305 = sub nsw i32 7, %conv304
  %shr306 = ashr i32 %conv303, %sub305
  %and307 = and i32 %shr306, 1
  %conv308 = trunc i32 %and307 to i8
  %98 = load i8, i8* %i192, align 1
  %conv309 = zext i8 %98 to i32
  %add310 = add nsw i32 4, %conv309
  %add311 = add nsw i32 %add310, 176
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom312
  store i8 %conv308, i8* %arrayidx313, align 1
  %99 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta314 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %99, i32 0, i32 3
  %arrayidx315 = getelementptr inbounds [14 x i8], [14 x i8]* %meta314, i64 0, i64 9
  %100 = load i8, i8* %arrayidx315, align 1
  %conv316 = zext i8 %100 to i32
  %101 = load i8, i8* %i192, align 1
  %conv317 = zext i8 %101 to i32
  %sub318 = sub nsw i32 7, %conv317
  %shr319 = ashr i32 %conv316, %sub318
  %and320 = and i32 %shr319, 1
  %conv321 = trunc i32 %and320 to i8
  %102 = load i8, i8* %i192, align 1
  %conv322 = zext i8 %102 to i32
  %add323 = add nsw i32 4, %conv322
  %add324 = add nsw i32 %add323, 184
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom325
  store i8 %conv321, i8* %arrayidx326, align 1
  %103 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta327 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %103, i32 0, i32 3
  %arrayidx328 = getelementptr inbounds [14 x i8], [14 x i8]* %meta327, i64 0, i64 10
  %104 = load i8, i8* %arrayidx328, align 1
  %conv329 = zext i8 %104 to i32
  %105 = load i8, i8* %i192, align 1
  %conv330 = zext i8 %105 to i32
  %sub331 = sub nsw i32 7, %conv330
  %shr332 = ashr i32 %conv329, %sub331
  %and333 = and i32 %shr332, 1
  %conv334 = trunc i32 %and333 to i8
  %106 = load i8, i8* %i192, align 1
  %conv335 = zext i8 %106 to i32
  %add336 = add nsw i32 4, %conv335
  %add337 = add nsw i32 %add336, 192
  %idxprom338 = sext i32 %add337 to i64
  %arrayidx339 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom338
  store i8 %conv334, i8* %arrayidx339, align 1
  %107 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta340 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %107, i32 0, i32 3
  %arrayidx341 = getelementptr inbounds [14 x i8], [14 x i8]* %meta340, i64 0, i64 11
  %108 = load i8, i8* %arrayidx341, align 1
  %conv342 = zext i8 %108 to i32
  %109 = load i8, i8* %i192, align 1
  %conv343 = zext i8 %109 to i32
  %sub344 = sub nsw i32 7, %conv343
  %shr345 = ashr i32 %conv342, %sub344
  %and346 = and i32 %shr345, 1
  %conv347 = trunc i32 %and346 to i8
  %110 = load i8, i8* %i192, align 1
  %conv348 = zext i8 %110 to i32
  %add349 = add nsw i32 4, %conv348
  %add350 = add nsw i32 %add349, 200
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom351
  store i8 %conv347, i8* %arrayidx352, align 1
  %111 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta353 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %111, i32 0, i32 3
  %arrayidx354 = getelementptr inbounds [14 x i8], [14 x i8]* %meta353, i64 0, i64 12
  %112 = load i8, i8* %arrayidx354, align 1
  %conv355 = zext i8 %112 to i32
  %113 = load i8, i8* %i192, align 1
  %conv356 = zext i8 %113 to i32
  %sub357 = sub nsw i32 7, %conv356
  %shr358 = ashr i32 %conv355, %sub357
  %and359 = and i32 %shr358, 1
  %conv360 = trunc i32 %and359 to i8
  %114 = load i8, i8* %i192, align 1
  %conv361 = zext i8 %114 to i32
  %add362 = add nsw i32 4, %conv361
  %add363 = add nsw i32 %add362, 208
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom364
  store i8 %conv360, i8* %arrayidx365, align 1
  %115 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta366 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %115, i32 0, i32 3
  %arrayidx367 = getelementptr inbounds [14 x i8], [14 x i8]* %meta366, i64 0, i64 13
  %116 = load i8, i8* %arrayidx367, align 1
  %conv368 = zext i8 %116 to i32
  %117 = load i8, i8* %i192, align 1
  %conv369 = zext i8 %117 to i32
  %sub370 = sub nsw i32 7, %conv369
  %shr371 = ashr i32 %conv368, %sub370
  %and372 = and i32 %shr371, 1
  %conv373 = trunc i32 %and372 to i8
  %118 = load i8, i8* %i192, align 1
  %conv374 = zext i8 %118 to i32
  %add375 = add nsw i32 4, %conv374
  %add376 = add nsw i32 %add375, 216
  %idxprom377 = sext i32 %add376 to i64
  %arrayidx378 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom377
  store i8 %conv373, i8* %arrayidx378, align 1
  br label %for.inc379

for.inc379:                                       ; preds = %for.body197
  %119 = load i8, i8* %i192, align 1
  %inc380 = add i8 %119, 1
  store i8 %inc380, i8* %i192, align 1
  br label %for.cond193, !llvm.loop !22

for.end381:                                       ; preds = %for.cond193
  store i8 0, i8* %i382, align 1
  br label %for.cond383

for.cond383:                                      ; preds = %for.inc413, %for.end381
  %120 = load i8, i8* %i382, align 1
  %conv384 = zext i8 %120 to i32
  %cmp385 = icmp slt i32 %conv384, 8
  br i1 %cmp385, label %for.body387, label %for.end415

for.body387:                                      ; preds = %for.cond383
  %121 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %crc = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %121, i32 0, i32 4
  %arrayidx388 = getelementptr inbounds [2 x i8], [2 x i8]* %crc, i64 0, i64 0
  %122 = load i8, i8* %arrayidx388, align 1
  %conv389 = zext i8 %122 to i32
  %123 = load i8, i8* %i382, align 1
  %conv390 = zext i8 %123 to i32
  %sub391 = sub nsw i32 7, %conv390
  %shr392 = ashr i32 %conv389, %sub391
  %and393 = and i32 %shr392, 1
  %conv394 = trunc i32 %and393 to i8
  %124 = load i8, i8* %i382, align 1
  %conv395 = zext i8 %124 to i32
  %add396 = add nsw i32 4, %conv395
  %add397 = add nsw i32 %add396, 224
  %idxprom398 = sext i32 %add397 to i64
  %arrayidx399 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom398
  store i8 %conv394, i8* %arrayidx399, align 1
  %125 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %crc400 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %125, i32 0, i32 4
  %arrayidx401 = getelementptr inbounds [2 x i8], [2 x i8]* %crc400, i64 0, i64 1
  %126 = load i8, i8* %arrayidx401, align 1
  %conv402 = zext i8 %126 to i32
  %127 = load i8, i8* %i382, align 1
  %conv403 = zext i8 %127 to i32
  %sub404 = sub nsw i32 7, %conv403
  %shr405 = ashr i32 %conv402, %sub404
  %and406 = and i32 %shr405, 1
  %conv407 = trunc i32 %and406 to i8
  %128 = load i8, i8* %i382, align 1
  %conv408 = zext i8 %128 to i32
  %add409 = add nsw i32 4, %conv408
  %add410 = add nsw i32 %add409, 232
  %idxprom411 = sext i32 %add410 to i64
  %arrayidx412 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom411
  store i8 %conv407, i8* %arrayidx412, align 1
  br label %for.inc413

for.inc413:                                       ; preds = %for.body387
  %129 = load i8, i8* %i382, align 1
  %inc414 = add i8 %129, 1
  store i8 %inc414, i8* %i382, align 1
  br label %for.cond383, !llvm.loop !23

for.end415:                                       ; preds = %for.cond383
  store i8 0, i8* %i416, align 1
  br label %for.cond417

for.cond417:                                      ; preds = %for.inc488, %for.end415
  %130 = load i8, i8* %i416, align 1
  %conv418 = zext i8 %130 to i32
  %cmp419 = icmp slt i32 %conv418, 244
  br i1 %cmp419, label %for.body421, label %for.end490

for.body421:                                      ; preds = %for.cond417
  %131 = load i8, i8* %i416, align 1
  %conv422 = zext i8 %131 to i32
  %add423 = add nsw i32 %conv422, 4
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom424
  %132 = load i8, i8* %arrayidx425, align 1
  %conv426 = zext i8 %132 to i32
  %133 = load i8, i8* %i416, align 1
  %conv427 = zext i8 %133 to i32
  %add428 = add nsw i32 %conv427, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom429
  %134 = load i8, i8* %arrayidx430, align 1
  %conv431 = zext i8 %134 to i32
  %add432 = add nsw i32 %conv426, %conv431
  %135 = load i8, i8* %i416, align 1
  %conv433 = zext i8 %135 to i32
  %add434 = add nsw i32 %conv433, 0
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom435
  %136 = load i8, i8* %arrayidx436, align 1
  %conv437 = zext i8 %136 to i32
  %add438 = add nsw i32 %add432, %conv437
  %rem = srem i32 %add438, 2
  %conv439 = trunc i32 %rem to i8
  store i8 %conv439, i8* %G1, align 1
  %137 = load i8, i8* %i416, align 1
  %conv440 = zext i8 %137 to i32
  %add441 = add nsw i32 %conv440, 4
  %idxprom442 = sext i32 %add441 to i64
  %arrayidx443 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom442
  %138 = load i8, i8* %arrayidx443, align 1
  %conv444 = zext i8 %138 to i32
  %139 = load i8, i8* %i416, align 1
  %conv445 = zext i8 %139 to i32
  %add446 = add nsw i32 %conv445, 3
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom447
  %140 = load i8, i8* %arrayidx448, align 1
  %conv449 = zext i8 %140 to i32
  %add450 = add nsw i32 %conv444, %conv449
  %141 = load i8, i8* %i416, align 1
  %conv451 = zext i8 %141 to i32
  %add452 = add nsw i32 %conv451, 2
  %idxprom453 = sext i32 %add452 to i64
  %arrayidx454 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom453
  %142 = load i8, i8* %arrayidx454, align 1
  %conv455 = zext i8 %142 to i32
  %add456 = add nsw i32 %add450, %conv455
  %143 = load i8, i8* %i416, align 1
  %conv457 = zext i8 %143 to i32
  %add458 = add nsw i32 %conv457, 0
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds [248 x i8], [248 x i8]* %ud, i64 0, i64 %idxprom459
  %144 = load i8, i8* %arrayidx460, align 1
  %conv461 = zext i8 %144 to i32
  %add462 = add nsw i32 %add456, %conv461
  %rem463 = srem i32 %add462, 2
  %conv464 = trunc i32 %rem463 to i8
  store i8 %conv464, i8* %G2, align 1
  %145 = load i8, i8* %p, align 1
  %idxprom465 = zext i8 %145 to i64
  %arrayidx466 = getelementptr inbounds [61 x i8], [61 x i8]* @puncture_pattern_1, i64 0, i64 %idxprom465
  %146 = load i8, i8* %arrayidx466, align 1
  %tobool = icmp ne i8 %146, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body421
  %147 = load i8, i8* %G1, align 1
  %148 = load i8*, i8** %out.addr, align 8
  %149 = load i16, i16* %pb, align 2
  %idxprom467 = zext i16 %149 to i64
  %arrayidx468 = getelementptr inbounds i8, i8* %148, i64 %idxprom467
  store i8 %147, i8* %arrayidx468, align 1
  %150 = load i16, i16* %pb, align 2
  %inc469 = add i16 %150, 1
  store i16 %inc469, i16* %pb, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body421
  %151 = load i8, i8* %p, align 1
  %inc470 = add i8 %151, 1
  store i8 %inc470, i8* %p, align 1
  %152 = load i8, i8* %pp_len, align 1
  %conv471 = zext i8 %152 to i32
  %153 = load i8, i8* %p, align 1
  %conv472 = zext i8 %153 to i32
  %rem473 = srem i32 %conv472, %conv471
  %conv474 = trunc i32 %rem473 to i8
  store i8 %conv474, i8* %p, align 1
  %154 = load i8, i8* %p, align 1
  %idxprom475 = zext i8 %154 to i64
  %arrayidx476 = getelementptr inbounds [61 x i8], [61 x i8]* @puncture_pattern_1, i64 0, i64 %idxprom475
  %155 = load i8, i8* %arrayidx476, align 1
  %tobool477 = icmp ne i8 %155, 0
  br i1 %tobool477, label %if.then478, label %if.end482

if.then478:                                       ; preds = %if.end
  %156 = load i8, i8* %G2, align 1
  %157 = load i8*, i8** %out.addr, align 8
  %158 = load i16, i16* %pb, align 2
  %idxprom479 = zext i16 %158 to i64
  %arrayidx480 = getelementptr inbounds i8, i8* %157, i64 %idxprom479
  store i8 %156, i8* %arrayidx480, align 1
  %159 = load i16, i16* %pb, align 2
  %inc481 = add i16 %159, 1
  store i16 %inc481, i16* %pb, align 2
  br label %if.end482

if.end482:                                        ; preds = %if.then478, %if.end
  %160 = load i8, i8* %p, align 1
  %inc483 = add i8 %160, 1
  store i8 %inc483, i8* %p, align 1
  %161 = load i8, i8* %pp_len, align 1
  %conv484 = zext i8 %161 to i32
  %162 = load i8, i8* %p, align 1
  %conv485 = zext i8 %162 to i32
  %rem486 = srem i32 %conv485, %conv484
  %conv487 = trunc i32 %rem486 to i8
  store i8 %conv487, i8* %p, align 1
  br label %for.inc488

for.inc488:                                       ; preds = %if.end482
  %163 = load i8, i8* %i416, align 1
  %inc489 = add i8 %163, 1
  store i8 %inc489, i8* %i416, align 1
  br label %for.cond417, !llvm.loop !24

for.end490:                                       ; preds = %for.cond417
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_preamble(float* noundef %out, i32* noundef %cnt, i32 noundef %type) #0 {
entry:
  %out.addr = alloca float*, align 8
  %cnt.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i16, align 2
  %i7 = alloca i16, align 2
  store float* %out, float** %out.addr, align 8
  store i32* %cnt, i32** %cnt.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i16, i16* %i, align 2
  %conv = zext i16 %1 to i32
  %cmp1 = icmp slt i32 %conv, 96
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %out.addr, align 8
  %3 = load i32*, i32** %cnt.addr, align 8
  %4 = load i32, i32* %3, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %3, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float -3.000000e+00, float* %arrayidx, align 4
  %5 = load float*, float** %out.addr, align 8
  %6 = load i32*, i32** %cnt.addr, align 8
  %7 = load i32, i32* %6, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, i32* %6, align 4
  %idxprom4 = zext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds float, float* %5, i64 %idxprom4
  store float 3.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i16, i16* %i, align 2
  %inc6 = add i16 %8, 1
  store i16 %inc6, i16* %i, align 2
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i16 0, i16* %i7, align 2
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %if.else
  %9 = load i16, i16* %i7, align 2
  %conv9 = zext i16 %9 to i32
  %cmp10 = icmp slt i32 %conv9, 96
  br i1 %cmp10, label %for.body12, label %for.end21

for.body12:                                       ; preds = %for.cond8
  %10 = load float*, float** %out.addr, align 8
  %11 = load i32*, i32** %cnt.addr, align 8
  %12 = load i32, i32* %11, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, i32* %11, align 4
  %idxprom14 = zext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds float, float* %10, i64 %idxprom14
  store float 3.000000e+00, float* %arrayidx15, align 4
  %13 = load float*, float** %out.addr, align 8
  %14 = load i32*, i32** %cnt.addr, align 8
  %15 = load i32, i32* %14, align 4
  %inc16 = add i32 %15, 1
  store i32 %inc16, i32* %14, align 4
  %idxprom17 = zext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds float, float* %13, i64 %idxprom17
  store float -3.000000e+00, float* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body12
  %16 = load i16, i16* %i7, align 2
  %inc20 = add i16 %16, 1
  store i16 %inc20, i16* %i7, align 2
  br label %for.cond8, !llvm.loop !26

for.end21:                                        ; preds = %for.cond8
  br label %if.end

if.end:                                           ; preds = %for.end21, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_syncword(float* noundef %out, i32* noundef %cnt, i16 noundef zeroext %syncword) #0 {
entry:
  %out.addr = alloca float*, align 8
  %cnt.addr = alloca i32*, align 8
  %syncword.addr = alloca i16, align 2
  %i = alloca i8, align 1
  store float* %out, float** %out.addr, align 8
  store i32* %cnt, i32** %cnt.addr, align 8
  store i16 %syncword, i16* %syncword.addr, align 2
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %syncword.addr, align 2
  %conv2 = zext i16 %1 to i32
  %2 = load i8, i8* %i, align 1
  %conv3 = zext i8 %2 to i32
  %sub = sub nsw i32 14, %conv3
  %shr = ashr i32 %conv2, %sub
  %and = and i32 %shr, 3
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* @symbol_map, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv4 = sitofp i8 %3 to float
  %4 = load float*, float** %out.addr, align 8
  %5 = load i32*, i32** %cnt.addr, align 8
  %6 = load i32, i32* %5, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %5, align 4
  %idxprom5 = zext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds float, float* %4, i64 %idxprom5
  store float %conv4, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8, i8* %i, align 1
  %conv7 = zext i8 %7 to i32
  %add = add nsw i32 %conv7, 2
  %conv8 = trunc i32 %add to i8
  store i8 %conv8, i8* %i, align 1
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_data(float* noundef %out, i32* noundef %cnt, i8* noundef %in) #0 {
entry:
  %out.addr = alloca float*, align 8
  %cnt.addr = alloca i32*, align 8
  %in.addr = alloca i8*, align 8
  %i = alloca i16, align 2
  store float* %out, float** %out.addr, align 8
  store i32* %cnt, i32** %cnt.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 184
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %in.addr, align 8
  %2 = load i16, i16* %i, align 2
  %conv2 = zext i16 %2 to i32
  %mul = mul nsw i32 2, %conv2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %3 to i32
  %mul4 = mul nsw i32 %conv3, 2
  %4 = load i8*, i8** %in.addr, align 8
  %5 = load i16, i16* %i, align 2
  %conv5 = zext i16 %5 to i32
  %mul6 = mul nsw i32 2, %conv5
  %add = add nsw i32 %mul6, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %4, i64 %idxprom7
  %6 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %6 to i32
  %add10 = add nsw i32 %mul4, %conv9
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* @symbol_map, i64 0, i64 %idxprom11
  %7 = load i8, i8* %arrayidx12, align 1
  %conv13 = sitofp i8 %7 to float
  %8 = load float*, float** %out.addr, align 8
  %9 = load i32*, i32** %cnt.addr, align 8
  %10 = load i32, i32* %9, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %9, align 4
  %idxprom14 = zext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds float, float* %8, i64 %idxprom14
  store float %conv13, float* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i16, i16* %i, align 2
  %inc16 = add i16 %11, 1
  store i16 %inc16, i16* %i, align 2
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_eot(float* noundef %out, i32* noundef %cnt) #0 {
entry:
  %out.addr = alloca float*, align 8
  %cnt.addr = alloca i32*, align 8
  %i = alloca i16, align 2
  store float* %out, float** %out.addr, align 8
  store i32* %cnt, i32** %cnt.addr, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 192
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %i, align 2
  %conv2 = zext i16 %1 to i32
  %rem = srem i32 %conv2, 8
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* @eot_symbols, i64 0, i64 %idxprom
  %2 = load float, float* %arrayidx, align 4
  %3 = load float*, float** %out.addr, align 8
  %4 = load i32*, i32** %cnt.addr, align 8
  %5 = load i32, i32* %4, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %4, align 4
  %idxprom3 = zext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds float, float* %3, i64 %idxprom3
  store float %2, float* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i16, i16* %i, align 2
  %inc5 = add i16 %6, 1
  store i16 %inc5, i16* %i, align 2
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_frame(float* noundef %out, i8* noundef %data, i32 noundef %type, %struct.lsf_t* noundef %lsf, i8 noundef zeroext %lich_cnt, i16 noundef zeroext %fn) #0 {
entry:
  %out.addr = alloca float*, align 8
  %data.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %lsf.addr = alloca %struct.lsf_t*, align 8
  %lich_cnt.addr = alloca i8, align 1
  %fn.addr = alloca i16, align 2
  %lich = alloca [6 x i8], align 1
  %lich_encoded = alloca [12 x i8], align 1
  %enc_bits = alloca [368 x i8], align 16
  %rf_bits = alloca [368 x i8], align 16
  %sym_cnt = alloca i32, align 4
  store float* %out, float** %out.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.lsf_t* %lsf, %struct.lsf_t** %lsf.addr, align 8
  store i8 %lich_cnt, i8* %lich_cnt.addr, align 1
  store i16 %fn, i16* %fn.addr, align 2
  store i32 0, i32* %sym_cnt, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float*, float** %out.addr, align 8
  %2 = load i16, i16* @SYNC_LSF, align 2
  call void @send_syncword(float* noundef %1, i32* noundef %sym_cnt, i16 noundef zeroext %2)
  %arraydecay = getelementptr inbounds [368 x i8], [368 x i8]* %enc_bits, i64 0, i64 0
  %3 = load %struct.lsf_t*, %struct.lsf_t** %lsf.addr, align 8
  call void @conv_encode_LSF(i8* noundef %arraydecay, %struct.lsf_t* noundef %3)
  br label %if.end13

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then2, label %if.else8

if.then2:                                         ; preds = %if.else
  %5 = load float*, float** %out.addr, align 8
  %6 = load i16, i16* @SYNC_STR, align 2
  call void @send_syncword(float* noundef %5, i32* noundef %sym_cnt, i16 noundef zeroext %6)
  %arraydecay3 = getelementptr inbounds [6 x i8], [6 x i8]* %lich, i64 0, i64 0
  %7 = load i8, i8* %lich_cnt.addr, align 1
  %8 = load %struct.lsf_t*, %struct.lsf_t** %lsf.addr, align 8
  call void @extract_LICH(i8* noundef %arraydecay3, i8 noundef zeroext %7, %struct.lsf_t* noundef %8)
  %arraydecay4 = getelementptr inbounds [12 x i8], [12 x i8]* %lich_encoded, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [6 x i8], [6 x i8]* %lich, i64 0, i64 0
  call void @encode_LICH(i8* noundef %arraydecay4, i8* noundef %arraydecay5)
  %arraydecay6 = getelementptr inbounds [368 x i8], [368 x i8]* %enc_bits, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [12 x i8], [12 x i8]* %lich_encoded, i64 0, i64 0
  call void @unpack_LICH(i8* noundef %arraydecay6, i8* noundef %arraydecay7)
  %arrayidx = getelementptr inbounds [368 x i8], [368 x i8]* %enc_bits, i64 0, i64 96
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i16, i16* %fn.addr, align 2
  call void @conv_encode_stream_frame(i8* noundef %arrayidx, i8* noundef %9, i16 noundef zeroext %10)
  br label %if.end12

if.else8:                                         ; preds = %if.else
  %11 = load i32, i32* %type.addr, align 4
  %cmp9 = icmp eq i32 %11, 2
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else8
  %12 = load float*, float** %out.addr, align 8
  %13 = load i16, i16* @SYNC_PKT, align 2
  call void @send_syncword(float* noundef %12, i32* noundef %sym_cnt, i16 noundef zeroext %13)
  %arraydecay11 = getelementptr inbounds [368 x i8], [368 x i8]* %enc_bits, i64 0, i64 0
  %14 = load i8*, i8** %data.addr, align 8
  call void @conv_encode_packet_frame(i8* noundef %arraydecay11, i8* noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %arraydecay14 = getelementptr inbounds [368 x i8], [368 x i8]* %rf_bits, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [368 x i8], [368 x i8]* %enc_bits, i64 0, i64 0
  call void @reorder_bits(i8* noundef %arraydecay14, i8* noundef %arraydecay15)
  %arraydecay16 = getelementptr inbounds [368 x i8], [368 x i8]* %rf_bits, i64 0, i64 0
  call void @randomize_bits(i8* noundef %arraydecay16)
  %15 = load float*, float** %out.addr, align 8
  %arraydecay17 = getelementptr inbounds [368 x i8], [368 x i8]* %rf_bits, i64 0, i64 0
  call void @send_data(float* noundef %15, i32* noundef %sym_cnt, i8* noundef %arraydecay17)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extract_LICH(i8* noundef %outp, i8 noundef zeroext %cnt, %struct.lsf_t* noundef %inp) #0 {
entry:
  %outp.addr = alloca i8*, align 8
  %cnt.addr = alloca i8, align 1
  %inp.addr = alloca %struct.lsf_t*, align 8
  store i8* %outp, i8** %outp.addr, align 8
  store i8 %cnt, i8* %cnt.addr, align 1
  store %struct.lsf_t* %inp, %struct.lsf_t** %inp.addr, align 8
  %0 = load i8, i8* %cnt.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb29
    i32 3, label %sw.bb43
    i32 4, label %sw.bb59
    i32 5, label %sw.bb75
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %dst = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %dst, i64 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load i8*, i8** %outp.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %2, i8* %arrayidx1, align 1
  %4 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %dst2 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %4, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [6 x i8], [6 x i8]* %dst2, i64 0, i64 1
  %5 = load i8, i8* %arrayidx3, align 1
  %6 = load i8*, i8** %outp.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %5, i8* %arrayidx4, align 1
  %7 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %dst5 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %7, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [6 x i8], [6 x i8]* %dst5, i64 0, i64 2
  %8 = load i8, i8* %arrayidx6, align 1
  %9 = load i8*, i8** %outp.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %8, i8* %arrayidx7, align 1
  %10 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %dst8 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %10, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [6 x i8], [6 x i8]* %dst8, i64 0, i64 3
  %11 = load i8, i8* %arrayidx9, align 1
  %12 = load i8*, i8** %outp.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 3
  store i8 %11, i8* %arrayidx10, align 1
  %13 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %dst11 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %13, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [6 x i8], [6 x i8]* %dst11, i64 0, i64 4
  %14 = load i8, i8* %arrayidx12, align 1
  %15 = load i8*, i8** %outp.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 4
  store i8 %14, i8* %arrayidx13, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %16 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %dst15 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %16, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [6 x i8], [6 x i8]* %dst15, i64 0, i64 5
  %17 = load i8, i8* %arrayidx16, align 1
  %18 = load i8*, i8** %outp.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %17, i8* %arrayidx17, align 1
  %19 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %src = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %19, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [6 x i8], [6 x i8]* %src, i64 0, i64 0
  %20 = load i8, i8* %arrayidx18, align 1
  %21 = load i8*, i8** %outp.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %arrayidx19, align 1
  %22 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %src20 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %22, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [6 x i8], [6 x i8]* %src20, i64 0, i64 1
  %23 = load i8, i8* %arrayidx21, align 1
  %24 = load i8*, i8** %outp.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %23, i8* %arrayidx22, align 1
  %25 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %src23 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %25, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [6 x i8], [6 x i8]* %src23, i64 0, i64 2
  %26 = load i8, i8* %arrayidx24, align 1
  %27 = load i8*, i8** %outp.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 %26, i8* %arrayidx25, align 1
  %28 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %src26 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %28, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [6 x i8], [6 x i8]* %src26, i64 0, i64 3
  %29 = load i8, i8* %arrayidx27, align 1
  %30 = load i8*, i8** %outp.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %30, i64 4
  store i8 %29, i8* %arrayidx28, align 1
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %31 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %src30 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %31, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [6 x i8], [6 x i8]* %src30, i64 0, i64 4
  %32 = load i8, i8* %arrayidx31, align 1
  %33 = load i8*, i8** %outp.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %32, i8* %arrayidx32, align 1
  %34 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %src33 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %34, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [6 x i8], [6 x i8]* %src33, i64 0, i64 5
  %35 = load i8, i8* %arrayidx34, align 1
  %36 = load i8*, i8** %outp.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %arrayidx35, align 1
  %37 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %type = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %37, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [2 x i8], [2 x i8]* %type, i64 0, i64 0
  %38 = load i8, i8* %arrayidx36, align 1
  %39 = load i8*, i8** %outp.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %arrayidx37, align 1
  %40 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %type38 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %40, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [2 x i8], [2 x i8]* %type38, i64 0, i64 1
  %41 = load i8, i8* %arrayidx39, align 1
  %42 = load i8*, i8** %outp.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %42, i64 3
  store i8 %41, i8* %arrayidx40, align 1
  %43 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %43, i32 0, i32 3
  %arrayidx41 = getelementptr inbounds [14 x i8], [14 x i8]* %meta, i64 0, i64 0
  %44 = load i8, i8* %arrayidx41, align 1
  %45 = load i8*, i8** %outp.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 4
  store i8 %44, i8* %arrayidx42, align 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %46 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta44 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %46, i32 0, i32 3
  %arrayidx45 = getelementptr inbounds [14 x i8], [14 x i8]* %meta44, i64 0, i64 1
  %47 = load i8, i8* %arrayidx45, align 1
  %48 = load i8*, i8** %outp.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %47, i8* %arrayidx46, align 1
  %49 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta47 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %49, i32 0, i32 3
  %arrayidx48 = getelementptr inbounds [14 x i8], [14 x i8]* %meta47, i64 0, i64 2
  %50 = load i8, i8* %arrayidx48, align 1
  %51 = load i8*, i8** %outp.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %50, i8* %arrayidx49, align 1
  %52 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta50 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %52, i32 0, i32 3
  %arrayidx51 = getelementptr inbounds [14 x i8], [14 x i8]* %meta50, i64 0, i64 3
  %53 = load i8, i8* %arrayidx51, align 1
  %54 = load i8*, i8** %outp.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 %53, i8* %arrayidx52, align 1
  %55 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta53 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %55, i32 0, i32 3
  %arrayidx54 = getelementptr inbounds [14 x i8], [14 x i8]* %meta53, i64 0, i64 4
  %56 = load i8, i8* %arrayidx54, align 1
  %57 = load i8*, i8** %outp.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %57, i64 3
  store i8 %56, i8* %arrayidx55, align 1
  %58 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta56 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %58, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [14 x i8], [14 x i8]* %meta56, i64 0, i64 5
  %59 = load i8, i8* %arrayidx57, align 1
  %60 = load i8*, i8** %outp.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %60, i64 4
  store i8 %59, i8* %arrayidx58, align 1
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  %61 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta60 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %61, i32 0, i32 3
  %arrayidx61 = getelementptr inbounds [14 x i8], [14 x i8]* %meta60, i64 0, i64 6
  %62 = load i8, i8* %arrayidx61, align 1
  %63 = load i8*, i8** %outp.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %arrayidx62, align 1
  %64 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta63 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %64, i32 0, i32 3
  %arrayidx64 = getelementptr inbounds [14 x i8], [14 x i8]* %meta63, i64 0, i64 7
  %65 = load i8, i8* %arrayidx64, align 1
  %66 = load i8*, i8** %outp.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 %65, i8* %arrayidx65, align 1
  %67 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta66 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %67, i32 0, i32 3
  %arrayidx67 = getelementptr inbounds [14 x i8], [14 x i8]* %meta66, i64 0, i64 8
  %68 = load i8, i8* %arrayidx67, align 1
  %69 = load i8*, i8** %outp.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 %68, i8* %arrayidx68, align 1
  %70 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta69 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %70, i32 0, i32 3
  %arrayidx70 = getelementptr inbounds [14 x i8], [14 x i8]* %meta69, i64 0, i64 9
  %71 = load i8, i8* %arrayidx70, align 1
  %72 = load i8*, i8** %outp.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %72, i64 3
  store i8 %71, i8* %arrayidx71, align 1
  %73 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta72 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %73, i32 0, i32 3
  %arrayidx73 = getelementptr inbounds [14 x i8], [14 x i8]* %meta72, i64 0, i64 10
  %74 = load i8, i8* %arrayidx73, align 1
  %75 = load i8*, i8** %outp.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %75, i64 4
  store i8 %74, i8* %arrayidx74, align 1
  br label %sw.epilog

sw.bb75:                                          ; preds = %entry
  %76 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta76 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %76, i32 0, i32 3
  %arrayidx77 = getelementptr inbounds [14 x i8], [14 x i8]* %meta76, i64 0, i64 11
  %77 = load i8, i8* %arrayidx77, align 1
  %78 = load i8*, i8** %outp.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 %77, i8* %arrayidx78, align 1
  %79 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta79 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %79, i32 0, i32 3
  %arrayidx80 = getelementptr inbounds [14 x i8], [14 x i8]* %meta79, i64 0, i64 12
  %80 = load i8, i8* %arrayidx80, align 1
  %81 = load i8*, i8** %outp.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %80, i8* %arrayidx81, align 1
  %82 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %meta82 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %82, i32 0, i32 3
  %arrayidx83 = getelementptr inbounds [14 x i8], [14 x i8]* %meta82, i64 0, i64 13
  %83 = load i8, i8* %arrayidx83, align 1
  %84 = load i8*, i8** %outp.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %84, i64 2
  store i8 %83, i8* %arrayidx84, align 1
  %85 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %crc = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %85, i32 0, i32 4
  %arrayidx85 = getelementptr inbounds [2 x i8], [2 x i8]* %crc, i64 0, i64 0
  %86 = load i8, i8* %arrayidx85, align 1
  %87 = load i8*, i8** %outp.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %87, i64 3
  store i8 %86, i8* %arrayidx86, align 1
  %88 = load %struct.lsf_t*, %struct.lsf_t** %inp.addr, align 8
  %crc87 = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %88, i32 0, i32 4
  %arrayidx88 = getelementptr inbounds [2 x i8], [2 x i8]* %crc87, i64 0, i64 1
  %89 = load i8, i8* %arrayidx88, align 1
  %90 = load i8*, i8** %outp.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %90, i64 4
  store i8 %89, i8* %arrayidx89, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb75, %sw.bb59, %sw.bb43, %sw.bb29, %sw.bb14, %sw.bb
  %91 = load i8, i8* %cnt.addr, align 1
  %conv90 = zext i8 %91 to i32
  %shl = shl i32 %conv90, 5
  %conv91 = trunc i32 %shl to i8
  %92 = load i8*, i8** %outp.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %92, i64 5
  store i8 %conv91, i8* %arrayidx92, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_LICH(i8* noundef %outp, i8* noundef %inp) #0 {
entry:
  %outp.addr = alloca i8*, align 8
  %inp.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  store i8* %outp, i8** %outp.addr, align 8
  store i8* %inp, i8** %inp.addr, align 8
  %0 = load i8*, i8** %inp.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 4
  %2 = load i8*, i8** %inp.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shr = ashr i32 %conv2, 4
  %or = or i32 %shl, %shr
  %conv3 = trunc i32 %or to i16
  %call = call i32 @golay24_encode(i16 noundef zeroext %conv3)
  store i32 %call, i32* %val, align 4
  %4 = load i32, i32* %val, align 4
  %shr4 = lshr i32 %4, 16
  %and = and i32 %shr4, 255
  %conv5 = trunc i32 %and to i8
  %5 = load i8*, i8** %outp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv5, i8* %arrayidx6, align 1
  %6 = load i32, i32* %val, align 4
  %shr7 = lshr i32 %6, 8
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %7 = load i8*, i8** %outp.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 %conv9, i8* %arrayidx10, align 1
  %8 = load i32, i32* %val, align 4
  %shr11 = lshr i32 %8, 0
  %and12 = and i32 %shr11, 255
  %conv13 = trunc i32 %and12 to i8
  %9 = load i8*, i8** %outp.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %conv13, i8* %arrayidx14, align 1
  %10 = load i8*, i8** %inp.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %11 to i32
  %and17 = and i32 %conv16, 15
  %shl18 = shl i32 %and17, 8
  %12 = load i8*, i8** %inp.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %13 to i32
  %or21 = or i32 %shl18, %conv20
  %conv22 = trunc i32 %or21 to i16
  %call23 = call i32 @golay24_encode(i16 noundef zeroext %conv22)
  store i32 %call23, i32* %val, align 4
  %14 = load i32, i32* %val, align 4
  %shr24 = lshr i32 %14, 16
  %and25 = and i32 %shr24, 255
  %conv26 = trunc i32 %and25 to i8
  %15 = load i8*, i8** %outp.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %15, i64 3
  store i8 %conv26, i8* %arrayidx27, align 1
  %16 = load i32, i32* %val, align 4
  %shr28 = lshr i32 %16, 8
  %and29 = and i32 %shr28, 255
  %conv30 = trunc i32 %and29 to i8
  %17 = load i8*, i8** %outp.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %17, i64 4
  store i8 %conv30, i8* %arrayidx31, align 1
  %18 = load i32, i32* %val, align 4
  %shr32 = lshr i32 %18, 0
  %and33 = and i32 %shr32, 255
  %conv34 = trunc i32 %and33 to i8
  %19 = load i8*, i8** %outp.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %19, i64 5
  store i8 %conv34, i8* %arrayidx35, align 1
  %20 = load i8*, i8** %inp.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %20, i64 3
  %21 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %21 to i32
  %shl38 = shl i32 %conv37, 4
  %22 = load i8*, i8** %inp.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %22, i64 4
  %23 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %23 to i32
  %shr41 = ashr i32 %conv40, 4
  %or42 = or i32 %shl38, %shr41
  %conv43 = trunc i32 %or42 to i16
  %call44 = call i32 @golay24_encode(i16 noundef zeroext %conv43)
  store i32 %call44, i32* %val, align 4
  %24 = load i32, i32* %val, align 4
  %shr45 = lshr i32 %24, 16
  %and46 = and i32 %shr45, 255
  %conv47 = trunc i32 %and46 to i8
  %25 = load i8*, i8** %outp.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %25, i64 6
  store i8 %conv47, i8* %arrayidx48, align 1
  %26 = load i32, i32* %val, align 4
  %shr49 = lshr i32 %26, 8
  %and50 = and i32 %shr49, 255
  %conv51 = trunc i32 %and50 to i8
  %27 = load i8*, i8** %outp.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %27, i64 7
  store i8 %conv51, i8* %arrayidx52, align 1
  %28 = load i32, i32* %val, align 4
  %shr53 = lshr i32 %28, 0
  %and54 = and i32 %shr53, 255
  %conv55 = trunc i32 %and54 to i8
  %29 = load i8*, i8** %outp.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %29, i64 8
  store i8 %conv55, i8* %arrayidx56, align 1
  %30 = load i8*, i8** %inp.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %30, i64 4
  %31 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %31 to i32
  %and59 = and i32 %conv58, 15
  %shl60 = shl i32 %and59, 8
  %32 = load i8*, i8** %inp.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %32, i64 5
  %33 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %33 to i32
  %or63 = or i32 %shl60, %conv62
  %conv64 = trunc i32 %or63 to i16
  %call65 = call i32 @golay24_encode(i16 noundef zeroext %conv64)
  store i32 %call65, i32* %val, align 4
  %34 = load i32, i32* %val, align 4
  %shr66 = lshr i32 %34, 16
  %and67 = and i32 %shr66, 255
  %conv68 = trunc i32 %and67 to i8
  %35 = load i8*, i8** %outp.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %35, i64 9
  store i8 %conv68, i8* %arrayidx69, align 1
  %36 = load i32, i32* %val, align 4
  %shr70 = lshr i32 %36, 8
  %and71 = and i32 %shr70, 255
  %conv72 = trunc i32 %and71 to i8
  %37 = load i8*, i8** %outp.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %37, i64 10
  store i8 %conv72, i8* %arrayidx73, align 1
  %38 = load i32, i32* %val, align 4
  %shr74 = lshr i32 %38, 0
  %and75 = and i32 %shr74, 255
  %conv76 = trunc i32 %and75 to i8
  %39 = load i8*, i8** %outp.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %39, i64 11
  store i8 %conv76, i8* %arrayidx77, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unpack_LICH(i8* noundef %out, i8* noundef %in) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  store i8* %out, i8** %out.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 12
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i8, i8* %j, align 1
  %conv3 = zext i8 %1 to i32
  %cmp4 = icmp slt i32 %conv3, 8
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %2 = load i8*, i8** %in.addr, align 8
  %3 = load i8, i8* %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %4 to i32
  %5 = load i8, i8* %j, align 1
  %conv8 = zext i8 %5 to i32
  %sub = sub nsw i32 7, %conv8
  %shr = ashr i32 %conv7, %sub
  %and = and i32 %shr, 1
  %conv9 = trunc i32 %and to i8
  %6 = load i8*, i8** %out.addr, align 8
  %7 = load i8, i8* %i, align 1
  %conv10 = zext i8 %7 to i32
  %mul = mul nsw i32 %conv10, 8
  %8 = load i8, i8* %j, align 1
  %conv11 = zext i8 %8 to i32
  %add = add nsw i32 %mul, %conv11
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %6, i64 %idxprom12
  store i8 %conv9, i8* %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %9 = load i8, i8* %j, align 1
  %inc = add i8 %9, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond2, !llvm.loop !30

for.end:                                          ; preds = %for.cond2
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %10 = load i8, i8* %i, align 1
  %inc15 = add i8 %10, 1
  store i8 %inc15, i8* %i, align 1
  br label %for.cond, !llvm.loop !31

for.end16:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reorder_bits(i8* noundef %outp, i8* noundef %inp) #0 {
entry:
  %outp.addr = alloca i8*, align 8
  %inp.addr = alloca i8*, align 8
  %i = alloca i16, align 2
  store i8* %outp, i8** %outp.addr, align 8
  store i8* %inp, i8** %inp.addr, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 368
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %inp.addr, align 8
  %2 = load i16, i16* %i, align 2
  %idxprom = zext i16 %2 to i64
  %arrayidx = getelementptr inbounds [368 x i16], [368 x i16]* @intrl_seq, i64 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %idxprom2 = zext i16 %3 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %1, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %5 = load i8*, i8** %outp.addr, align 8
  %6 = load i16, i16* %i, align 2
  %idxprom4 = zext i16 %6 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 %idxprom4
  store i8 %4, i8* %arrayidx5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i16, i16* %i, align 2
  %inc = add i16 %7, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randomize_bits(i8* noundef %inp) #0 {
entry:
  %inp.addr = alloca i8*, align 8
  %i = alloca i16, align 2
  store i8* %inp, i8** %inp.addr, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 368
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %i, align 2
  %conv2 = zext i16 %1 to i32
  %div = sdiv i32 %conv2, 8
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [46 x i8], [46 x i8]* @rand_seq, i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %2 to i32
  %3 = load i16, i16* %i, align 2
  %conv4 = zext i16 %3 to i32
  %rem = srem i32 %conv4, 8
  %sub = sub nsw i32 7, %rem
  %shr = ashr i32 %conv3, %sub
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %inp.addr, align 8
  %5 = load i16, i16* %i, align 2
  %idxprom5 = zext i16 %5 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 %idxprom5
  %6 = load i8, i8* %arrayidx6, align 1
  %tobool7 = icmp ne i8 %6, 0
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %7 = load i8*, i8** %inp.addr, align 8
  %8 = load i16, i16* %i, align 2
  %idxprom9 = zext i16 %8 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load i8*, i8** %inp.addr, align 8
  %10 = load i16, i16* %i, align 2
  %idxprom11 = zext i16 %10 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i64 %idxprom11
  store i8 1, i8* %arrayidx12, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %11 = load i16, i16* %i, align 2
  %inc = add i16 %11, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @golay24_encode(i16 noundef zeroext %data) #0 {
entry:
  %data.addr = alloca i16, align 2
  %checksum = alloca i16, align 2
  %i = alloca i8, align 1
  store i16 %data, i16* %data.addr, align 2
  store i16 0, i16* %checksum, align 2
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %data.addr, align 2
  %conv2 = zext i16 %1 to i32
  %2 = load i8, i8* %i, align 1
  %conv3 = zext i8 %2 to i32
  %shl = shl i32 1, %conv3
  %and = and i32 %conv2, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i8, i8* %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [12 x i16], [12 x i16]* @encode_matrix, i64 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %4 to i32
  %5 = load i16, i16* %checksum, align 2
  %conv5 = zext i16 %5 to i32
  %xor = xor i32 %conv5, %conv4
  %conv6 = trunc i32 %xor to i16
  store i16 %conv6, i16* %checksum, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8, i8* %i, align 1
  %inc = add i8 %6, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %7 = load i16, i16* %data.addr, align 2
  %conv7 = zext i16 %7 to i32
  %shl8 = shl i32 %conv7, 12
  %8 = load i16, i16* %checksum, align 2
  %conv9 = zext i16 %8 to i32
  %or = or i32 %shl8, %conv9
  ret i32 %or
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s_popcount(i16* noundef %in, i8 noundef zeroext %siz) #0 {
entry:
  %in.addr = alloca i16*, align 8
  %siz.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %i = alloca i8, align 1
  store i16* %in, i16** %in.addr, align 8
  store i8 %siz, i8* %siz.addr, align 1
  store i32 0, i32* %tmp, align 4
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %siz.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %in.addr, align 8
  %3 = load i8, i8* %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %4 to i32
  %5 = load i32, i32* %tmp, align 4
  %add = add i32 %5, %conv3
  store i32 %add, i32* %tmp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8, i8* %i, align 1
  %inc = add i8 %6, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %tmp, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_calc_checksum(i16* noundef %out, i16* noundef %value) #0 {
entry:
  %out.addr = alloca i16*, align 8
  %value.addr = alloca i16*, align 8
  %checksum = alloca [12 x i16], align 16
  %soft_em = alloca [12 x i16], align 16
  %i = alloca i8, align 1
  %i2 = alloca i8, align 1
  store i16* %out, i16** %out.addr, align 8
  store i16* %value, i16** %value.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %i, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [12 x i16], [12 x i16]* %checksum, i64 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i8, i8* %i, align 1
  %inc = add i8 %2, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %i2, align 1
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc18, %for.end
  %3 = load i8, i8* %i2, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp slt i32 %conv4, 12
  br i1 %cmp5, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond3
  %arraydecay = getelementptr inbounds [12 x i16], [12 x i16]* %soft_em, i64 0, i64 0
  %4 = load i8, i8* %i2, align 1
  %idxprom8 = zext i8 %4 to i64
  %arrayidx9 = getelementptr inbounds [12 x i16], [12 x i16]* @encode_matrix, i64 0, i64 %idxprom8
  %5 = load i16, i16* %arrayidx9, align 2
  call void @int_to_soft(i16* noundef %arraydecay, i16 noundef zeroext %5, i8 noundef zeroext 12)
  %6 = load i16*, i16** %value.addr, align 8
  %7 = load i8, i8* %i2, align 1
  %idxprom10 = zext i8 %7 to i64
  %arrayidx11 = getelementptr inbounds i16, i16* %6, i64 %idxprom10
  %8 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %8 to i32
  %cmp13 = icmp sgt i32 %conv12, 32767
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %arraydecay15 = getelementptr inbounds [12 x i16], [12 x i16]* %checksum, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [12 x i16], [12 x i16]* %checksum, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [12 x i16], [12 x i16]* %soft_em, i64 0, i64 0
  call void @soft_XOR(i16* noundef %arraydecay15, i16* noundef %arraydecay16, i16* noundef %arraydecay17, i8 noundef zeroext 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %9 = load i8, i8* %i2, align 1
  %inc19 = add i8 %9, 1
  store i8 %inc19, i8* %i2, align 1
  br label %for.cond3, !llvm.loop !37

for.end20:                                        ; preds = %for.cond3
  %10 = load i16*, i16** %out.addr, align 8
  %11 = bitcast i16* %10 to i8*
  %arraydecay21 = getelementptr inbounds [12 x i16], [12 x i16]* %checksum, i64 0, i64 0
  %12 = bitcast i16* %arraydecay21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 16 %12, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int_to_soft(i16* noundef %out, i16 noundef zeroext %in, i8 noundef zeroext %len) #0 {
entry:
  %out.addr = alloca i16*, align 8
  %in.addr = alloca i16, align 2
  %len.addr = alloca i8, align 1
  %i = alloca i8, align 1
  store i16* %out, i16** %out.addr, align 8
  store i16 %in, i16* %in.addr, align 2
  store i8 %len, i8* %len.addr, align 1
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %len.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16, i16* %in.addr, align 2
  %conv3 = zext i16 %2 to i32
  %3 = load i8, i8* %i, align 1
  %conv4 = zext i8 %3 to i32
  %shr = ashr i32 %conv3, %conv4
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load i16*, i16** %out.addr, align 8
  %5 = load i8, i8* %i, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  store i16 -1, i16* %arrayidx, align 2
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i16*, i16** %out.addr, align 8
  %7 = load i8, i8* %i, align 1
  %idxprom5 = zext i8 %7 to i64
  %arrayidx6 = getelementptr inbounds i16, i16* %6, i64 %idxprom5
  store i16 0, i16* %arrayidx6, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 65535, %cond.true ], [ 0, %cond.false ]
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %8 = load i8, i8* %i, align 1
  %inc = add i8 %8, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soft_XOR(i16* noundef %out, i16* noundef %a, i16* noundef %b, i8 noundef zeroext %len) #0 {
entry:
  %out.addr = alloca i16*, align 8
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %len.addr = alloca i8, align 1
  %i = alloca i8, align 1
  store i16* %out, i16** %out.addr, align 8
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i8 %len, i8* %len.addr, align 1
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %len.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %a.addr, align 8
  %3 = load i8, i8* %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %5 = load i16*, i16** %b.addr, align 8
  %6 = load i8, i8* %i, align 1
  %idxprom3 = zext i8 %6 to i64
  %arrayidx4 = getelementptr inbounds i16, i16* %5, i64 %idxprom3
  %7 = load i16, i16* %arrayidx4, align 2
  %call = call zeroext i16 @soft_bit_XOR(i16 noundef zeroext %4, i16 noundef zeroext %7)
  %8 = load i16*, i16** %out.addr, align 8
  %9 = load i8, i8* %i, align 1
  %idxprom5 = zext i8 %9 to i64
  %arrayidx6 = getelementptr inbounds i16, i16* %8, i64 %idxprom5
  store i16 %call, i16* %arrayidx6, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i8, i8* %i, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s_detect_errors(i16* noundef %codeword) #0 {
entry:
  %retval = alloca i32, align 4
  %codeword.addr = alloca i16*, align 8
  %data = alloca [12 x i16], align 16
  %parity = alloca [12 x i16], align 16
  %cksum = alloca [12 x i16], align 16
  %syndrome = alloca [12 x i16], align 16
  %weight = alloca i32, align 4
  %i = alloca i8, align 1
  %e = alloca i16, align 2
  %coded_error = alloca i16, align 2
  %scoded_error = alloca [12 x i16], align 16
  %sc = alloca [12 x i16], align 16
  %s = alloca i16, align 2
  %i33 = alloca i8, align 1
  %j = alloca i8, align 1
  %e46 = alloca i16, align 2
  %coded_error53 = alloca i16, align 2
  %scoded_error62 = alloca [12 x i16], align 16
  %sc63 = alloca [12 x i16], align 16
  %s73 = alloca i16, align 2
  %inv_syndrome = alloca [12 x i16], align 16
  %dm = alloca [12 x i16], align 16
  %i89 = alloca i8, align 1
  %i121 = alloca i8, align 1
  %e127 = alloca i16, align 2
  %coding_error = alloca i16, align 2
  %ce = alloca [12 x i16], align 16
  %tmp = alloca [12 x i16], align 16
  store i16* %codeword, i16** %codeword.addr, align 8
  %arraydecay = getelementptr inbounds [12 x i16], [12 x i16]* %data, i64 0, i64 0
  %0 = bitcast i16* %arraydecay to i8*
  %1 = load i16*, i16** %codeword.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 12
  %2 = bitcast i16* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 1 %2, i64 24, i1 false)
  %arraydecay1 = getelementptr inbounds [12 x i16], [12 x i16]* %parity, i64 0, i64 0
  %3 = bitcast i16* %arraydecay1 to i8*
  %4 = load i16*, i16** %codeword.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 0
  %5 = bitcast i16* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 1 %5, i64 24, i1 false)
  %arraydecay3 = getelementptr inbounds [12 x i16], [12 x i16]* %cksum, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [12 x i16], [12 x i16]* %data, i64 0, i64 0
  call void @s_calc_checksum(i16* noundef %arraydecay3, i16* noundef %arraydecay4)
  %arraydecay5 = getelementptr inbounds [12 x i16], [12 x i16]* %syndrome, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [12 x i16], [12 x i16]* %parity, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [12 x i16], [12 x i16]* %cksum, i64 0, i64 0
  call void @soft_XOR(i16* noundef %arraydecay5, i16* noundef %arraydecay6, i16* noundef %arraydecay7, i8 noundef zeroext 12)
  %arraydecay8 = getelementptr inbounds [12 x i16], [12 x i16]* %syndrome, i64 0, i64 0
  %call = call i32 @s_popcount(i16* noundef %arraydecay8, i8 noundef zeroext 12)
  store i32 %call, i32* %weight, align 4
  %6 = load i32, i32* %weight, align 4
  %cmp = icmp ult i32 %6, 262136
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay9 = getelementptr inbounds [12 x i16], [12 x i16]* %syndrome, i64 0, i64 0
  %call10 = call zeroext i16 @soft_to_int(i16* noundef %arraydecay9, i8 noundef zeroext 12)
  %conv = zext i16 %call10 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i8, i8* %i, align 1
  %conv11 = zext i8 %7 to i32
  %cmp12 = icmp slt i32 %conv11, 12
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8, i8* %i, align 1
  %conv14 = zext i8 %8 to i32
  %shl = shl i32 1, %conv14
  %conv15 = trunc i32 %shl to i16
  store i16 %conv15, i16* %e, align 2
  %9 = load i8, i8* %i, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx16 = getelementptr inbounds [12 x i16], [12 x i16]* @encode_matrix, i64 0, i64 %idxprom
  %10 = load i16, i16* %arrayidx16, align 2
  store i16 %10, i16* %coded_error, align 2
  %arraydecay17 = getelementptr inbounds [12 x i16], [12 x i16]* %scoded_error, i64 0, i64 0
  %11 = load i16, i16* %coded_error, align 2
  call void @int_to_soft(i16* noundef %arraydecay17, i16 noundef zeroext %11, i8 noundef zeroext 12)
  %arraydecay18 = getelementptr inbounds [12 x i16], [12 x i16]* %sc, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [12 x i16], [12 x i16]* %syndrome, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [12 x i16], [12 x i16]* %scoded_error, i64 0, i64 0
  call void @soft_XOR(i16* noundef %arraydecay18, i16* noundef %arraydecay19, i16* noundef %arraydecay20, i8 noundef zeroext 12)
  %arraydecay21 = getelementptr inbounds [12 x i16], [12 x i16]* %sc, i64 0, i64 0
  %call22 = call i32 @s_popcount(i16* noundef %arraydecay21, i8 noundef zeroext 12)
  store i32 %call22, i32* %weight, align 4
  %12 = load i32, i32* %weight, align 4
  %cmp23 = icmp ult i32 %12, 196602
  br i1 %cmp23, label %if.then25, label %if.end32

if.then25:                                        ; preds = %for.body
  %arraydecay26 = getelementptr inbounds [12 x i16], [12 x i16]* %syndrome, i64 0, i64 0
  %call27 = call zeroext i16 @soft_to_int(i16* noundef %arraydecay26, i8 noundef zeroext 12)
  store i16 %call27, i16* %s, align 2
  %13 = load i16, i16* %e, align 2
  %conv28 = zext i16 %13 to i32
  %shl29 = shl i32 %conv28, 12
  %14 = load i16, i16* %s, align 2
  %conv30 = zext i16 %14 to i32
  %15 = load i16, i16* %coded_error, align 2
  %conv31 = zext i16 %15 to i32
  %xor = xor i32 %conv30, %conv31
  %or = or i32 %shl29, %xor
  store i32 %or, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %16 = load i8, i8* %i, align 1
  %inc = add i8 %16, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %i33, align 1
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc86, %for.end
  %17 = load i8, i8* %i33, align 1
  %conv35 = zext i8 %17 to i32
  %cmp36 = icmp slt i32 %conv35, 11
  br i1 %cmp36, label %for.body38, label %for.end88

for.body38:                                       ; preds = %for.cond34
  %18 = load i8, i8* %i33, align 1
  %conv39 = zext i8 %18 to i32
  %add = add nsw i32 %conv39, 1
  %conv40 = trunc i32 %add to i8
  store i8 %conv40, i8* %j, align 1
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc83, %for.body38
  %19 = load i8, i8* %j, align 1
  %conv42 = zext i8 %19 to i32
  %cmp43 = icmp slt i32 %conv42, 12
  br i1 %cmp43, label %for.body45, label %for.end85

for.body45:                                       ; preds = %for.cond41
  %20 = load i8, i8* %i33, align 1
  %conv47 = zext i8 %20 to i32
  %shl48 = shl i32 1, %conv47
  %21 = load i8, i8* %j, align 1
  %conv49 = zext i8 %21 to i32
  %shl50 = shl i32 1, %conv49
  %or51 = or i32 %shl48, %shl50
  %conv52 = trunc i32 %or51 to i16
  store i16 %conv52, i16* %e46, align 2
  %22 = load i8, i8* %i33, align 1
  %idxprom54 = zext i8 %22 to i64
  %arrayidx55 = getelementptr inbounds [12 x i16], [12 x i16]* @encode_matrix, i64 0, i64 %idxprom54
  %23 = load i16, i16* %arrayidx55, align 2
  %conv56 = zext i16 %23 to i32
  %24 = load i8, i8* %j, align 1
  %idxprom57 = zext i8 %24 to i64
  %arrayidx58 = getelementptr inbounds [12 x i16], [12 x i16]* @encode_matrix, i64 0, i64 %idxprom57
  %25 = load i16, i16* %arrayidx58, align 2
  %conv59 = zext i16 %25 to i32
  %xor60 = xor i32 %conv56, %conv59
  %conv61 = trunc i32 %xor60 to i16
  store i16 %conv61, i16* %coded_error53, align 2
  %arraydecay64 = getelementptr inbounds [12 x i16], [12 x i16]* %scoded_error62, i64 0, i64 0
  %26 = load i16, i16* %coded_error53, align 2
  call void @int_to_soft(i16* noundef %arraydecay64, i16 noundef zeroext %26, i8 noundef zeroext 12)
  %arraydecay65 = getelementptr inbounds [12 x i16], [12 x i16]* %sc63, i64 0, i64 0
  %arraydecay66 = getelementptr inbounds [12 x i16], [12 x i16]* %syndrome, i64 0, i64 0
  %arraydecay67 = getelementptr inbounds [12 x i16], [12 x i16]* %scoded_error62, i64 0, i64 0
  call void @soft_XOR(i16* noundef %arraydecay65, i16* noundef %arraydecay66, i16* noundef %arraydecay67, i8 noundef zeroext 12)
  %arraydecay68 = getelementptr inbounds [12 x i16], [12 x i16]* %sc63, i64 0, i64 0
  %call69 = call i32 @s_popcount(i16* noundef %arraydecay68, i8 noundef zeroext 12)
  store i32 %call69, i32* %weight, align 4
  %27 = load i32, i32* %weight, align 4
  %cmp70 = icmp ult i32 %27, 131070
  br i1 %cmp70, label %if.then72, label %if.end82

if.then72:                                        ; preds = %for.body45
  %arraydecay74 = getelementptr inbounds [12 x i16], [12 x i16]* %syndrome, i64 0, i64 0
  %call75 = call zeroext i16 @soft_to_int(i16* noundef %arraydecay74, i8 noundef zeroext 12)
  store i16 %call75, i16* %s73, align 2
  %28 = load i16, i16* %e46, align 2
  %conv76 = zext i16 %28 to i32
  %shl77 = shl i32 %conv76, 12
  %29 = load i16, i16* %s73, align 2
  %conv78 = zext i16 %29 to i32
  %30 = load i16, i16* %coded_error53, align 2
  %conv79 = zext i16 %30 to i32
  %xor80 = xor i32 %conv78, %conv79
  %or81 = or i32 %shl77, %xor80
  store i32 %or81, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %for.body45
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %31 = load i8, i8* %j, align 1
  %inc84 = add i8 %31, 1
  store i8 %inc84, i8* %j, align 1
  br label %for.cond41, !llvm.loop !41

for.end85:                                        ; preds = %for.cond41
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %32 = load i8, i8* %i33, align 1
  %inc87 = add i8 %32, 1
  store i8 %inc87, i8* %i33, align 1
  br label %for.cond34, !llvm.loop !42

for.end88:                                        ; preds = %for.cond34
  %33 = bitcast [12 x i16]* %inv_syndrome to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 24, i1 false)
  store i8 0, i8* %i89, align 1
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc108, %for.end88
  %34 = load i8, i8* %i89, align 1
  %conv91 = zext i8 %34 to i32
  %cmp92 = icmp slt i32 %conv91, 12
  br i1 %cmp92, label %for.body94, label %for.end110

for.body94:                                       ; preds = %for.cond90
  %35 = load i8, i8* %i89, align 1
  %idxprom95 = zext i8 %35 to i64
  %arrayidx96 = getelementptr inbounds [12 x i16], [12 x i16]* %syndrome, i64 0, i64 %idxprom95
  %36 = load i16, i16* %arrayidx96, align 2
  %conv97 = zext i16 %36 to i32
  %cmp98 = icmp sgt i32 %conv97, 32767
  br i1 %cmp98, label %if.then100, label %if.end107

if.then100:                                       ; preds = %for.body94
  %arraydecay101 = getelementptr inbounds [12 x i16], [12 x i16]* %dm, i64 0, i64 0
  %37 = load i8, i8* %i89, align 1
  %idxprom102 = zext i8 %37 to i64
  %arrayidx103 = getelementptr inbounds [12 x i16], [12 x i16]* @decode_matrix, i64 0, i64 %idxprom102
  %38 = load i16, i16* %arrayidx103, align 2
  call void @int_to_soft(i16* noundef %arraydecay101, i16 noundef zeroext %38, i8 noundef zeroext 12)
  %arraydecay104 = getelementptr inbounds [12 x i16], [12 x i16]* %inv_syndrome, i64 0, i64 0
  %arraydecay105 = getelementptr inbounds [12 x i16], [12 x i16]* %inv_syndrome, i64 0, i64 0
  %arraydecay106 = getelementptr inbounds [12 x i16], [12 x i16]* %dm, i64 0, i64 0
  call void @soft_XOR(i16* noundef %arraydecay104, i16* noundef %arraydecay105, i16* noundef %arraydecay106, i8 noundef zeroext 12)
  br label %if.end107

if.end107:                                        ; preds = %if.then100, %for.body94
  br label %for.inc108

for.inc108:                                       ; preds = %if.end107
  %39 = load i8, i8* %i89, align 1
  %inc109 = add i8 %39, 1
  store i8 %inc109, i8* %i89, align 1
  br label %for.cond90, !llvm.loop !43

for.end110:                                       ; preds = %for.cond90
  %arraydecay111 = getelementptr inbounds [12 x i16], [12 x i16]* %inv_syndrome, i64 0, i64 0
  %call112 = call i32 @s_popcount(i16* noundef %arraydecay111, i8 noundef zeroext 12)
  store i32 %call112, i32* %weight, align 4
  %40 = load i32, i32* %weight, align 4
  %cmp113 = icmp ult i32 %40, 262140
  br i1 %cmp113, label %if.then115, label %if.end120

if.then115:                                       ; preds = %for.end110
  %arraydecay116 = getelementptr inbounds [12 x i16], [12 x i16]* %inv_syndrome, i64 0, i64 0
  %call117 = call zeroext i16 @soft_to_int(i16* noundef %arraydecay116, i8 noundef zeroext 12)
  %conv118 = zext i16 %call117 to i32
  %shl119 = shl i32 %conv118, 12
  store i32 %shl119, i32* %retval, align 4
  br label %return

if.end120:                                        ; preds = %for.end110
  store i8 0, i8* %i121, align 1
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc151, %if.end120
  %41 = load i8, i8* %i121, align 1
  %conv123 = zext i8 %41 to i32
  %cmp124 = icmp slt i32 %conv123, 12
  br i1 %cmp124, label %for.body126, label %for.end153

for.body126:                                      ; preds = %for.cond122
  %42 = load i8, i8* %i121, align 1
  %conv128 = zext i8 %42 to i32
  %shl129 = shl i32 1, %conv128
  %conv130 = trunc i32 %shl129 to i16
  store i16 %conv130, i16* %e127, align 2
  %43 = load i8, i8* %i121, align 1
  %idxprom131 = zext i8 %43 to i64
  %arrayidx132 = getelementptr inbounds [12 x i16], [12 x i16]* @decode_matrix, i64 0, i64 %idxprom131
  %44 = load i16, i16* %arrayidx132, align 2
  store i16 %44, i16* %coding_error, align 2
  %arraydecay133 = getelementptr inbounds [12 x i16], [12 x i16]* %ce, i64 0, i64 0
  %45 = load i16, i16* %coding_error, align 2
  call void @int_to_soft(i16* noundef %arraydecay133, i16 noundef zeroext %45, i8 noundef zeroext 12)
  %arraydecay134 = getelementptr inbounds [12 x i16], [12 x i16]* %tmp, i64 0, i64 0
  %arraydecay135 = getelementptr inbounds [12 x i16], [12 x i16]* %inv_syndrome, i64 0, i64 0
  %arraydecay136 = getelementptr inbounds [12 x i16], [12 x i16]* %ce, i64 0, i64 0
  call void @soft_XOR(i16* noundef %arraydecay134, i16* noundef %arraydecay135, i16* noundef %arraydecay136, i8 noundef zeroext 12)
  %arraydecay137 = getelementptr inbounds [12 x i16], [12 x i16]* %tmp, i64 0, i64 0
  %call138 = call i32 @s_popcount(i16* noundef %arraydecay137, i8 noundef zeroext 12)
  store i32 %call138, i32* %weight, align 4
  %46 = load i32, i32* %weight, align 4
  %cmp139 = icmp ult i32 %46, 196611
  br i1 %cmp139, label %if.then141, label %if.end150

if.then141:                                       ; preds = %for.body126
  %arraydecay142 = getelementptr inbounds [12 x i16], [12 x i16]* %inv_syndrome, i64 0, i64 0
  %call143 = call zeroext i16 @soft_to_int(i16* noundef %arraydecay142, i8 noundef zeroext 12)
  %conv144 = zext i16 %call143 to i32
  %47 = load i16, i16* %coding_error, align 2
  %conv145 = zext i16 %47 to i32
  %xor146 = xor i32 %conv144, %conv145
  %shl147 = shl i32 %xor146, 12
  %48 = load i16, i16* %e127, align 2
  %conv148 = zext i16 %48 to i32
  %or149 = or i32 %shl147, %conv148
  store i32 %or149, i32* %retval, align 4
  br label %return

if.end150:                                        ; preds = %for.body126
  br label %for.inc151

for.inc151:                                       ; preds = %if.end150
  %49 = load i8, i8* %i121, align 1
  %inc152 = add i8 %49, 1
  store i8 %inc152, i8* %i121, align 1
  br label %for.cond122, !llvm.loop !44

for.end153:                                       ; preds = %for.cond122
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end153, %if.then141, %if.then115, %if.then72, %if.then25, %if.then
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @soft_to_int(i16* noundef %in, i8 noundef zeroext %len) #0 {
entry:
  %in.addr = alloca i16*, align 8
  %len.addr = alloca i8, align 1
  %tmp = alloca i16, align 2
  %i = alloca i8, align 1
  store i16* %in, i16** %in.addr, align 8
  store i8 %len, i8* %len.addr, align 1
  store i16 0, i16* %tmp, align 2
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %len.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %in.addr, align 8
  %3 = load i8, i8* %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %4 to i32
  %cmp4 = icmp ugt i32 %conv3, 32767
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i8, i8* %i, align 1
  %conv6 = zext i8 %5 to i32
  %shl = shl i32 1, %conv6
  %6 = load i16, i16* %tmp, align 2
  %conv7 = zext i16 %6 to i32
  %or = or i32 %conv7, %shl
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, i16* %tmp, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8, i8* %i, align 1
  %inc = add i8 %7, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %8 = load i16, i16* %tmp, align 2
  ret i16 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @golay24_sdecode(i16* noundef %codeword) #0 {
entry:
  %retval = alloca i16, align 2
  %codeword.addr = alloca i16*, align 8
  %cw = alloca [24 x i16], align 16
  %i = alloca i8, align 1
  %errors = alloca i32, align 4
  store i16* %codeword, i16** %codeword.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %codeword.addr, align 8
  %2 = load i8, i8* %i, align 1
  %conv2 = zext i8 %2 to i32
  %sub = sub nsw i32 23, %conv2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %4 = load i8, i8* %i, align 1
  %idxprom3 = zext i8 %4 to i64
  %arrayidx4 = getelementptr inbounds [24 x i16], [24 x i16]* %cw, i64 0, i64 %idxprom3
  store i16 %3, i16* %arrayidx4, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8, i8* %i, align 1
  %inc = add i8 %5, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [24 x i16], [24 x i16]* %cw, i64 0, i64 0
  %call = call i32 @s_detect_errors(i16* noundef %arraydecay)
  store i32 %call, i32* %errors, align 4
  %6 = load i32, i32* %errors, align 4
  %cmp5 = icmp eq i32 %6, -1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i16 -1, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %for.end
  %arrayidx7 = getelementptr inbounds [24 x i16], [24 x i16]* %cw, i64 0, i64 0
  %call8 = call zeroext i16 @soft_to_int(i16* noundef %arrayidx7, i8 noundef zeroext 16)
  %conv9 = zext i16 %call8 to i32
  %arrayidx10 = getelementptr inbounds [24 x i16], [24 x i16]* %cw, i64 0, i64 16
  %call11 = call zeroext i16 @soft_to_int(i16* noundef %arrayidx10, i8 noundef zeroext 8)
  %conv12 = zext i16 %call11 to i32
  %shl = shl i32 %conv12, 16
  %or = or i32 %conv9, %shl
  %7 = load i32, i32* %errors, align 4
  %xor = xor i32 %or, %7
  %shr = lshr i32 %xor, 12
  %and = and i32 %shr, 4095
  %conv13 = trunc i32 %and to i16
  store i16 %conv13, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i16, i16* %retval, align 2
  ret i16 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_LICH(i8* noundef %outp, i16* noundef %inp) #0 {
entry:
  %outp.addr = alloca i8*, align 8
  %inp.addr = alloca i16*, align 8
  %tmp = alloca i16, align 2
  store i8* %outp, i8** %outp.addr, align 8
  store i16* %inp, i16** %inp.addr, align 8
  %0 = load i8*, i8** %outp.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 6, i1 false)
  %1 = load i16*, i16** %inp.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %call = call zeroext i16 @golay24_sdecode(i16* noundef %arrayidx)
  store i16 %call, i16* %tmp, align 2
  %2 = load i16, i16* %tmp, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %outp.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %conv1, i8* %arrayidx2, align 1
  %4 = load i16, i16* %tmp, align 2
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 15
  %shl = shl i32 %and4, 4
  %5 = load i8*, i8** %outp.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %or = or i32 %conv6, %shl
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, i8* %arrayidx5, align 1
  %7 = load i16*, i16** %inp.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 24
  %call9 = call zeroext i16 @golay24_sdecode(i16* noundef %arrayidx8)
  store i16 %call9, i16* %tmp, align 2
  %8 = load i16, i16* %tmp, align 2
  %conv10 = zext i16 %8 to i32
  %shr11 = ashr i32 %conv10, 8
  %and12 = and i32 %shr11, 15
  %9 = load i8*, i8** %outp.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %10 to i32
  %or15 = or i32 %conv14, %and12
  %conv16 = trunc i32 %or15 to i8
  store i8 %conv16, i8* %arrayidx13, align 1
  %11 = load i16, i16* %tmp, align 2
  %conv17 = zext i16 %11 to i32
  %and18 = and i32 %conv17, 255
  %conv19 = trunc i32 %and18 to i8
  %12 = load i8*, i8** %outp.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 %conv19, i8* %arrayidx20, align 1
  %13 = load i16*, i16** %inp.addr, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %13, i64 48
  %call22 = call zeroext i16 @golay24_sdecode(i16* noundef %arrayidx21)
  store i16 %call22, i16* %tmp, align 2
  %14 = load i16, i16* %tmp, align 2
  %conv23 = zext i16 %14 to i32
  %shr24 = ashr i32 %conv23, 4
  %and25 = and i32 %shr24, 255
  %conv26 = trunc i32 %and25 to i8
  %15 = load i8*, i8** %outp.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %15, i64 3
  store i8 %conv26, i8* %arrayidx27, align 1
  %16 = load i16, i16* %tmp, align 2
  %conv28 = zext i16 %16 to i32
  %and29 = and i32 %conv28, 15
  %shl30 = shl i32 %and29, 4
  %17 = load i8*, i8** %outp.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %17, i64 4
  %18 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %18 to i32
  %or33 = or i32 %conv32, %shl30
  %conv34 = trunc i32 %or33 to i8
  store i8 %conv34, i8* %arrayidx31, align 1
  %19 = load i16*, i16** %inp.addr, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %19, i64 72
  %call36 = call zeroext i16 @golay24_sdecode(i16* noundef %arrayidx35)
  store i16 %call36, i16* %tmp, align 2
  %20 = load i16, i16* %tmp, align 2
  %conv37 = zext i16 %20 to i32
  %shr38 = ashr i32 %conv37, 8
  %and39 = and i32 %shr38, 15
  %21 = load i8*, i8** %outp.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %21, i64 4
  %22 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %22 to i32
  %or42 = or i32 %conv41, %and39
  %conv43 = trunc i32 %or42 to i8
  store i8 %conv43, i8* %arrayidx40, align 1
  %23 = load i16, i16* %tmp, align 2
  %conv44 = zext i16 %23 to i32
  %and45 = and i32 %conv44, 255
  %conv46 = trunc i32 %and45 to i8
  %24 = load i8*, i8** %outp.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %24, i64 5
  store i8 %conv46, i8* %arrayidx47, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @eucl_norm(float* noundef %in1, i8* noundef %in2, i8 noundef zeroext %n) #0 {
entry:
  %in1.addr = alloca float*, align 8
  %in2.addr = alloca i8*, align 8
  %n.addr = alloca i8, align 1
  %tmp = alloca float, align 4
  %i = alloca i8, align 1
  store float* %in1, float** %in1.addr, align 8
  store i8* %in2, i8** %in2.addr, align 8
  store i8 %n, i8* %n.addr, align 1
  store float 0.000000e+00, float* %tmp, align 4
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %n.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %in1.addr, align 8
  %3 = load i8, i8* %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i8*, i8** %in2.addr, align 8
  %6 = load i8, i8* %i, align 1
  %idxprom3 = zext i8 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sitofp i8 %7 to float
  %sub = fsub float %4, %conv5
  %8 = load float*, float** %in1.addr, align 8
  %9 = load i8, i8* %i, align 1
  %idxprom6 = zext i8 %9 to i64
  %arrayidx7 = getelementptr inbounds float, float* %8, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %11 = load i8*, i8** %in2.addr, align 8
  %12 = load i8, i8* %i, align 1
  %idxprom8 = zext i8 %12 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom8
  %13 = load i8, i8* %arrayidx9, align 1
  %conv10 = sitofp i8 %13 to float
  %sub11 = fsub float %10, %conv10
  %14 = load float, float* %tmp, align 4
  %15 = call float @llvm.fmuladd.f32(float %sub, float %sub11, float %14)
  store float %15, float* %tmp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8, i8* %i, align 1
  %inc = add i8 %16, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %17 = load float, float* %tmp, align 4
  %call = call float @sqrtf(float noundef %17) #7
  ret float %call
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind
declare dso_local float @sqrtf(float noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @add16(i16 noundef zeroext %a, i16 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %r = alloca i32, align 4
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %b.addr, align 2
  %conv1 = zext i16 %1 to i32
  %add = add i32 %conv, %conv1
  store i32 %add, i32* %r, align 4
  %2 = load i32, i32* %r, align 4
  %cmp = icmp ule i32 %2, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %r, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 65535, %cond.false ]
  %conv3 = trunc i32 %cond to i16
  ret i16 %conv3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @sub16(i16 noundef zeroext %a, i16 noundef zeroext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %b.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp sge i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %a.addr, align 2
  %conv3 = zext i16 %2 to i32
  %3 = load i16, i16* %b.addr, align 2
  %conv4 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv3, %conv4
  %conv5 = trunc i32 %sub to i16
  store i16 %conv5, i16* %retval, align 2
  br label %return

if.else:                                          ; preds = %entry
  store i16 0, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i16, i16* %retval, align 2
  ret i16 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @div16(i16 noundef zeroext %a, i16 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %aa = alloca i32, align 4
  %r = alloca i32, align 4
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 16
  store i32 %shl, i32* %aa, align 4
  %1 = load i32, i32* %aa, align 4
  %2 = load i16, i16* %b.addr, align 2
  %conv1 = zext i16 %2 to i32
  %div = udiv i32 %1, %conv1
  store i32 %div, i32* %r, align 4
  %3 = load i32, i32* %r, align 4
  %cmp = icmp ule i32 %3, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %r, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 65535, %cond.false ]
  %conv3 = trunc i32 %cond to i16
  ret i16 %conv3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @mul16(i16 noundef zeroext %a, i16 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %b.addr, align 2
  %conv1 = zext i16 %1 to i32
  %mul = mul i32 %conv, %conv1
  %shr = lshr i32 %mul, 16
  %conv2 = trunc i32 %shr to i16
  ret i16 %conv2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @soft_bit_XOR(i16 noundef zeroext %a, i16 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %1 = load i16, i16* %b.addr, align 2
  %call = call zeroext i16 @sub16(i16 noundef zeroext -1, i16 noundef zeroext %1)
  %call1 = call zeroext i16 @mul16(i16 noundef zeroext %0, i16 noundef zeroext %call)
  %2 = load i16, i16* %b.addr, align 2
  %3 = load i16, i16* %a.addr, align 2
  %call2 = call zeroext i16 @sub16(i16 noundef zeroext -1, i16 noundef zeroext %3)
  %call3 = call zeroext i16 @mul16(i16 noundef zeroext %2, i16 noundef zeroext %call2)
  %call4 = call zeroext i16 @add16(i16 noundef zeroext %call1, i16 noundef zeroext %call3)
  ret i16 %call4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @soft_bit_NOT(i16 noundef zeroext %a) #0 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = zext i16 %0 to i32
  %sub = sub i32 65535, %conv
  %conv1 = trunc i32 %sub to i16
  ret i16 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_callsign_value(i8* noundef %outp, i64 noundef %inp) #0 {
entry:
  %outp.addr = alloca i8*, align 8
  %inp.addr = alloca i64, align 8
  %encoded = alloca i64, align 8
  %start = alloca i8, align 1
  %i = alloca i8, align 1
  store i8* %outp, i8** %outp.addr, align 8
  store i64 %inp, i64* %inp.addr, align 8
  %0 = load i64, i64* %inp.addr, align 8
  store i64 %0, i64* %encoded, align 8
  store i8 0, i8* %start, align 1
  %1 = load i64, i64* %encoded, align 8
  %cmp = icmp uge i64 %1, 262144000000000
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %encoded, align 8
  %cmp1 = icmp eq i64 %2, 281474976710655
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %outp.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* %encoded, align 8
  %cmp3 = icmp ule i64 %4, 268697600000000
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i8 1, i8* %start, align 1
  %5 = load i64, i64* %encoded, align 8
  %sub = sub i64 %5, 262144000000000
  store i64 %sub, i64* %encoded, align 8
  %6 = load i8*, i8** %outp.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 35, i8* %arrayidx, align 1
  br label %if.end

if.else5:                                         ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %7 = load i8, i8* %start, align 1
  store i8 %7, i8* %i, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end7
  %8 = load i64, i64* %encoded, align 8
  %cmp8 = icmp ugt i64 %8, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i64, i64* %encoded, align 8
  %rem = urem i64 %9, 40
  %arrayidx9 = getelementptr inbounds [41 x i8], [41 x i8]* @.str.2, i64 0, i64 %rem
  %10 = load i8, i8* %arrayidx9, align 1
  %11 = load i8*, i8** %outp.addr, align 8
  %12 = load i8, i8* %i, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 %10, i8* %arrayidx10, align 1
  %13 = load i64, i64* %encoded, align 8
  %div = udiv i64 %13, 40
  store i64 %div, i64* %encoded, align 8
  %14 = load i8, i8* %i, align 1
  %inc = add i8 %14, 1
  store i8 %inc, i8* %i, align 1
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %outp.addr, align 8
  %16 = load i8, i8* %i, align 1
  %idxprom11 = zext i8 %16 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 %idxprom11
  store i8 0, i8* %arrayidx12, align 1
  br label %return

return:                                           ; preds = %while.end, %if.else5, %if.then2
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_callsign_bytes(i8* noundef %outp, i8* noundef %inp) #0 {
entry:
  %outp.addr = alloca i8*, align 8
  %inp.addr = alloca i8*, align 8
  %encoded = alloca i64, align 8
  %i = alloca i8, align 1
  store i8* %outp, i8** %outp.addr, align 8
  store i8* %inp, i8** %inp.addr, align 8
  store i64 0, i64* %encoded, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %inp.addr, align 8
  %2 = load i8, i8* %i, align 1
  %conv2 = zext i8 %2 to i32
  %sub = sub nsw i32 5, %conv2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %3 to i64
  %4 = load i8, i8* %i, align 1
  %conv4 = zext i8 %4 to i32
  %mul = mul nsw i32 8, %conv4
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 %conv3, %sh_prom
  %5 = load i64, i64* %encoded, align 8
  %or = or i64 %5, %shl
  store i64 %or, i64* %encoded, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8, i8* %i, align 1
  %inc = add i8 %6, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %outp.addr, align 8
  %8 = load i64, i64* %encoded, align 8
  call void @decode_callsign_value(i8* noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @encode_callsign_value(i64* noundef %out, i8* noundef %inp) #0 {
entry:
  %retval = alloca i8, align 1
  %out.addr = alloca i64*, align 8
  %inp.addr = alloca i8*, align 8
  %charMap = alloca [40 x i8], align 16
  %tmp = alloca i64, align 8
  %start = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  store i64* %out, i64** %out.addr, align 8
  store i8* %inp, i8** %inp.addr, align 8
  %0 = load i8*, i8** %inp.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #8
  %cmp = icmp ugt i64 %call, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast [40 x i8]* %charMap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([40 x i8], [40 x i8]* @__const.encode_callsign_value.charMap, i32 0, i32 0), i64 40, i1 false)
  store i64 0, i64* %tmp, align 8
  store i8 0, i8* %start, align 1
  %2 = load i8*, i8** %inp.addr, align 8
  %call1 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i64*, i64** %out.addr, align 8
  store i64 281474976710655, i64* %3, align 8
  store i8 0, i8* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load i8*, i8** %inp.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv, 35
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i8 1, i8* %start, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %6 = load i8*, i8** %inp.addr, align 8
  %call9 = call i64 @strlen(i8* noundef %6) #8
  %sub = sub i64 %call9, 1
  %conv10 = trunc i64 %sub to i8
  store i8 %conv10, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %if.end8
  %7 = load i8, i8* %i, align 1
  %conv11 = sext i8 %7 to i32
  %8 = load i8, i8* %start, align 1
  %conv12 = zext i8 %8 to i32
  %cmp13 = icmp sge i32 %conv11, %conv12
  br i1 %cmp13, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body
  %9 = load i8, i8* %j, align 1
  %conv16 = zext i8 %9 to i32
  %cmp17 = icmp slt i32 %conv16, 40
  br i1 %cmp17, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond15
  %10 = load i8*, i8** %inp.addr, align 8
  %11 = load i8, i8* %i, align 1
  %idxprom = sext i8 %11 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %13 = load i8, i8* %j, align 1
  %idxprom22 = zext i8 %13 to i64
  %arrayidx23 = getelementptr inbounds [40 x i8], [40 x i8]* %charMap, i64 0, i64 %idxprom22
  %14 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %14 to i32
  %cmp25 = icmp eq i32 %conv21, %conv24
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.body19
  %15 = load i64, i64* %tmp, align 8
  %mul = mul i64 %15, 40
  %16 = load i8, i8* %j, align 1
  %conv28 = zext i8 %16 to i64
  %add = add i64 %mul, %conv28
  store i64 %add, i64* %tmp, align 8
  br label %for.end

if.end29:                                         ; preds = %for.body19
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %17 = load i8, i8* %j, align 1
  %inc = add i8 %17, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond15, !llvm.loop !50

for.end:                                          ; preds = %if.then27, %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %18 = load i8, i8* %i, align 1
  %dec = add i8 %18, -1
  store i8 %dec, i8* %i, align 1
  br label %for.cond, !llvm.loop !51

for.end31:                                        ; preds = %for.cond
  %19 = load i8, i8* %start, align 1
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.then32, label %if.end34

if.then32:                                        ; preds = %for.end31
  %20 = load i64, i64* %tmp, align 8
  %add33 = add i64 %20, 262144000000000
  store i64 %add33, i64* %tmp, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %for.end31
  %21 = load i64, i64* %tmp, align 8
  %22 = load i64*, i64** %out.addr, align 8
  store i64 %21, i64* %22, align 8
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end34, %if.then3, %if.then
  %23 = load i8, i8* %retval, align 1
  ret i8 %23
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @encode_callsign_bytes(i8* noundef %out, i8* noundef %inp) #0 {
entry:
  %retval = alloca i8, align 1
  %out.addr = alloca i8*, align 8
  %inp.addr = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %i = alloca i8, align 1
  store i8* %out, i8** %out.addr, align 8
  store i8* %inp, i8** %inp.addr, align 8
  store i64 0, i64* %tmp, align 8
  %0 = load i8*, i8** %inp.addr, align 8
  %call = call signext i8 @encode_callsign_value(i64* noundef %tmp, i8* noundef %0)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i8, i8* %i, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tmp, align 8
  %3 = load i8, i8* %i, align 1
  %conv2 = zext i8 %3 to i32
  %mul = mul nsw i32 8, %conv2
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %2, %sh_prom
  %and = and i64 %shr, 255
  %conv3 = trunc i64 %and to i8
  %4 = load i8*, i8** %out.addr, align 8
  %5 = load i8, i8* %i, align 1
  %conv4 = zext i8 %5 to i32
  %sub = sub nsw i32 5, %conv4
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8, i8* %i, align 1
  %inc = add i8 %6, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i8, i8* %retval, align 1
  ret i8 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @CRC_M17(i8* noundef %in, i16 noundef zeroext %len) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %len.addr = alloca i16, align 2
  %crc = alloca i32, align 4
  %i = alloca i16, align 2
  %j = alloca i8, align 1
  store i8* %in, i8** %in.addr, align 8
  store i16 %len, i16* %len.addr, align 2
  store i32 65535, i32* %crc, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %len.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %in.addr, align 8
  %3 = load i16, i16* %i, align 2
  %idxprom = zext i16 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %4 to i32
  %shl = shl i32 %conv3, 8
  %5 = load i32, i32* %crc, align 4
  %xor = xor i32 %5, %shl
  store i32 %xor, i32* %crc, align 4
  store i8 0, i8* %j, align 1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %6 = load i8, i8* %j, align 1
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp slt i32 %conv5, 8
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond4
  %7 = load i32, i32* %crc, align 4
  %shl9 = shl i32 %7, 1
  store i32 %shl9, i32* %crc, align 4
  %8 = load i32, i32* %crc, align 4
  %and = and i32 %8, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %9 = load i32, i32* %crc, align 4
  %xor10 = xor i32 %9, 22837
  %and11 = and i32 %xor10, 65535
  store i32 %and11, i32* %crc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8, i8* %j, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond4, !llvm.loop !53

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i16, i16* %i, align 2
  %inc13 = add i16 %11, 1
  store i16 %inc13, i16* %i, align 2
  br label %for.cond, !llvm.loop !54

for.end14:                                        ; preds = %for.cond
  %12 = load i32, i32* %crc, align 4
  %and15 = and i32 %12, 65535
  %conv16 = trunc i32 %and15 to i16
  ret i16 %conv16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @LSF_CRC(%struct.lsf_t* noundef %in) #0 {
entry:
  %in.addr = alloca %struct.lsf_t*, align 8
  %d = alloca [28 x i8], align 16
  store %struct.lsf_t* %in, %struct.lsf_t** %in.addr, align 8
  %arrayidx = getelementptr inbounds [28 x i8], [28 x i8]* %d, i64 0, i64 0
  %0 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %dst = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %dst, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arrayidx, i8* align 1 %arraydecay, i64 6, i1 false)
  %arrayidx1 = getelementptr inbounds [28 x i8], [28 x i8]* %d, i64 0, i64 6
  %1 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %src = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %1, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [6 x i8], [6 x i8]* %src, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %arrayidx1, i8* align 1 %arraydecay2, i64 6, i1 false)
  %arrayidx3 = getelementptr inbounds [28 x i8], [28 x i8]* %d, i64 0, i64 12
  %2 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %type = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %2, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [2 x i8], [2 x i8]* %type, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arrayidx3, i8* align 1 %arraydecay4, i64 2, i1 false)
  %arrayidx5 = getelementptr inbounds [28 x i8], [28 x i8]* %d, i64 0, i64 14
  %3 = load %struct.lsf_t*, %struct.lsf_t** %in.addr, align 8
  %meta = getelementptr inbounds %struct.lsf_t, %struct.lsf_t* %3, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [14 x i8], [14 x i8]* %meta, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %arrayidx5, i8* align 1 %arraydecay6, i64 14, i1 false)
  %arraydecay7 = getelementptr inbounds [28 x i8], [28 x i8]* %d, i64 0, i64 0
  %call = call zeroext i16 @CRC_M17(i8* noundef %arraydecay7, i16 noundef zeroext 28)
  ret i16 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reorder_soft_bits(i16* noundef %outp, i16* noundef %inp) #0 {
entry:
  %outp.addr = alloca i16*, align 8
  %inp.addr = alloca i16*, align 8
  %i = alloca i16, align 2
  store i16* %outp, i16** %outp.addr, align 8
  store i16* %inp, i16** %inp.addr, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 368
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %inp.addr, align 8
  %2 = load i16, i16* %i, align 2
  %idxprom = zext i16 %2 to i64
  %arrayidx = getelementptr inbounds [368 x i16], [368 x i16]* @intrl_seq, i64 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %idxprom2 = zext i16 %3 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %1, i64 %idxprom2
  %4 = load i16, i16* %arrayidx3, align 2
  %5 = load i16*, i16** %outp.addr, align 8
  %6 = load i16, i16* %i, align 2
  %idxprom4 = zext i16 %6 to i64
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 %idxprom4
  store i16 %4, i16* %arrayidx5, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i16, i16* %i, align 2
  %inc = add i16 %7, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randomize_soft_bits(i16* noundef %inp) #0 {
entry:
  %inp.addr = alloca i16*, align 8
  %i = alloca i16, align 2
  store i16* %inp, i16** %inp.addr, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 368
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %i, align 2
  %conv2 = zext i16 %1 to i32
  %div = sdiv i32 %conv2, 8
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [46 x i8], [46 x i8]* @rand_seq, i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %2 to i32
  %3 = load i16, i16* %i, align 2
  %conv4 = zext i16 %3 to i32
  %rem = srem i32 %conv4, 8
  %sub = sub nsw i32 7, %rem
  %shr = ashr i32 %conv3, %sub
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i16*, i16** %inp.addr, align 8
  %5 = load i16, i16* %i, align 2
  %idxprom5 = zext i16 %5 to i64
  %arrayidx6 = getelementptr inbounds i16, i16* %4, i64 %idxprom5
  %6 = load i16, i16* %arrayidx6, align 2
  %call = call zeroext i16 @soft_bit_NOT(i16 noundef zeroext %6)
  %7 = load i16*, i16** %inp.addr, align 8
  %8 = load i16, i16* %i, align 2
  %idxprom7 = zext i16 %8 to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7
  store i16 %call, i16* %arrayidx8, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i16, i16* %i, align 2
  %inc = add i16 %9, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slice_symbols(i16* noundef %out, float* noundef %inp) #0 {
entry:
  %out.addr = alloca i16*, align 8
  %inp.addr = alloca float*, align 8
  %i = alloca i8, align 1
  store i16* %out, i16** %out.addr, align 8
  store float* %inp, float** %inp.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 184
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float*, float** %inp.addr, align 8
  %2 = load i8, i8* %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds float, float* %1, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 3), align 1
  %conv2 = sext i8 %4 to i32
  %conv3 = sitofp i32 %conv2 to float
  %cmp4 = fcmp oge float %3, %conv3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i16*, i16** %out.addr, align 8
  %6 = load i8, i8* %i, align 1
  %conv6 = zext i8 %6 to i32
  %mul = mul nsw i32 %conv6, 2
  %add = add nsw i32 %mul, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %5, i64 %idxprom7
  store i16 -1, i16* %arrayidx8, align 2
  br label %if.end87

if.else:                                          ; preds = %for.body
  %7 = load float*, float** %inp.addr, align 8
  %8 = load i8, i8* %i, align 1
  %idxprom9 = zext i8 %8 to i64
  %arrayidx10 = getelementptr inbounds float, float* %7, i64 %idxprom9
  %9 = load float, float* %arrayidx10, align 4
  %10 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 2), align 1
  %conv11 = sext i8 %10 to i32
  %conv12 = sitofp i32 %conv11 to float
  %cmp13 = fcmp oge float %9, %conv12
  br i1 %cmp13, label %if.then15, label %if.else36

if.then15:                                        ; preds = %if.else
  %11 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 3), align 1
  %conv16 = sext i8 %11 to i32
  %12 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 2), align 1
  %conv17 = sext i8 %12 to i32
  %sub = sub nsw i32 %conv16, %conv17
  %conv18 = sitofp i32 %sub to float
  %div = fdiv float -6.553500e+04, %conv18
  %13 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 2), align 1
  %conv19 = sext i8 %13 to i32
  %conv20 = sitofp i32 %conv19 to float
  %14 = load float*, float** %inp.addr, align 8
  %15 = load i8, i8* %i, align 1
  %idxprom22 = zext i8 %15 to i64
  %arrayidx23 = getelementptr inbounds float, float* %14, i64 %idxprom22
  %16 = load float, float* %arrayidx23, align 4
  %mul24 = fmul float %16, 6.553500e+04
  %17 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 3), align 1
  %conv25 = sext i8 %17 to i32
  %18 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 2), align 1
  %conv26 = sext i8 %18 to i32
  %sub27 = sub nsw i32 %conv25, %conv26
  %conv28 = sitofp i32 %sub27 to float
  %div29 = fdiv float %mul24, %conv28
  %19 = call float @llvm.fmuladd.f32(float %div, float %conv20, float %div29)
  %conv30 = fptoui float %19 to i16
  %20 = load i16*, i16** %out.addr, align 8
  %21 = load i8, i8* %i, align 1
  %conv31 = zext i8 %21 to i32
  %mul32 = mul nsw i32 %conv31, 2
  %add33 = add nsw i32 %mul32, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds i16, i16* %20, i64 %idxprom34
  store i16 %conv30, i16* %arrayidx35, align 2
  br label %if.end86

if.else36:                                        ; preds = %if.else
  %22 = load float*, float** %inp.addr, align 8
  %23 = load i8, i8* %i, align 1
  %idxprom37 = zext i8 %23 to i64
  %arrayidx38 = getelementptr inbounds float, float* %22, i64 %idxprom37
  %24 = load float, float* %arrayidx38, align 4
  %25 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 1), align 1
  %conv39 = sext i8 %25 to i32
  %conv40 = sitofp i32 %conv39 to float
  %cmp41 = fcmp oge float %24, %conv40
  br i1 %cmp41, label %if.then43, label %if.else49

if.then43:                                        ; preds = %if.else36
  %26 = load i16*, i16** %out.addr, align 8
  %27 = load i8, i8* %i, align 1
  %conv44 = zext i8 %27 to i32
  %mul45 = mul nsw i32 %conv44, 2
  %add46 = add nsw i32 %mul45, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i16, i16* %26, i64 %idxprom47
  store i16 0, i16* %arrayidx48, align 2
  br label %if.end85

if.else49:                                        ; preds = %if.else36
  %28 = load float*, float** %inp.addr, align 8
  %29 = load i8, i8* %i, align 1
  %idxprom50 = zext i8 %29 to i64
  %arrayidx51 = getelementptr inbounds float, float* %28, i64 %idxprom50
  %30 = load float, float* %arrayidx51, align 4
  %31 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 0), align 1
  %conv52 = sext i8 %31 to i32
  %conv53 = sitofp i32 %conv52 to float
  %cmp54 = fcmp oge float %30, %conv53
  br i1 %cmp54, label %if.then56, label %if.else79

if.then56:                                        ; preds = %if.else49
  %32 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 1), align 1
  %conv57 = sext i8 %32 to i32
  %33 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 0), align 1
  %conv58 = sext i8 %33 to i32
  %sub59 = sub nsw i32 %conv57, %conv58
  %conv60 = sitofp i32 %sub59 to float
  %div61 = fdiv float 6.553500e+04, %conv60
  %34 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 1), align 1
  %conv62 = sext i8 %34 to i32
  %conv63 = sitofp i32 %conv62 to float
  %35 = load float*, float** %inp.addr, align 8
  %36 = load i8, i8* %i, align 1
  %idxprom65 = zext i8 %36 to i64
  %arrayidx66 = getelementptr inbounds float, float* %35, i64 %idxprom65
  %37 = load float, float* %arrayidx66, align 4
  %mul67 = fmul float %37, 6.553500e+04
  %38 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 1), align 1
  %conv68 = sext i8 %38 to i32
  %39 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 0), align 1
  %conv69 = sext i8 %39 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  %conv71 = sitofp i32 %sub70 to float
  %div72 = fdiv float %mul67, %conv71
  %neg = fneg float %div72
  %40 = call float @llvm.fmuladd.f32(float %div61, float %conv63, float %neg)
  %conv73 = fptoui float %40 to i16
  %41 = load i16*, i16** %out.addr, align 8
  %42 = load i8, i8* %i, align 1
  %conv74 = zext i8 %42 to i32
  %mul75 = mul nsw i32 %conv74, 2
  %add76 = add nsw i32 %mul75, 1
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i16, i16* %41, i64 %idxprom77
  store i16 %conv73, i16* %arrayidx78, align 2
  br label %if.end

if.else79:                                        ; preds = %if.else49
  %43 = load i16*, i16** %out.addr, align 8
  %44 = load i8, i8* %i, align 1
  %conv80 = zext i8 %44 to i32
  %mul81 = mul nsw i32 %conv80, 2
  %add82 = add nsw i32 %mul81, 1
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds i16, i16* %43, i64 %idxprom83
  store i16 -1, i16* %arrayidx84, align 2
  br label %if.end

if.end:                                           ; preds = %if.else79, %if.then56
  br label %if.end85

if.end85:                                         ; preds = %if.end, %if.then43
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then15
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then
  %45 = load float*, float** %inp.addr, align 8
  %46 = load i8, i8* %i, align 1
  %idxprom88 = zext i8 %46 to i64
  %arrayidx89 = getelementptr inbounds float, float* %45, i64 %idxprom88
  %47 = load float, float* %arrayidx89, align 4
  %48 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 2), align 1
  %conv90 = sext i8 %48 to i32
  %conv91 = sitofp i32 %conv90 to float
  %cmp92 = fcmp oge float %47, %conv91
  br i1 %cmp92, label %if.then94, label %if.else99

if.then94:                                        ; preds = %if.end87
  %49 = load i16*, i16** %out.addr, align 8
  %50 = load i8, i8* %i, align 1
  %conv95 = zext i8 %50 to i32
  %mul96 = mul nsw i32 %conv95, 2
  %idxprom97 = sext i32 %mul96 to i64
  %arrayidx98 = getelementptr inbounds i16, i16* %49, i64 %idxprom97
  store i16 0, i16* %arrayidx98, align 2
  br label %if.end127

if.else99:                                        ; preds = %if.end87
  %51 = load float*, float** %inp.addr, align 8
  %52 = load i8, i8* %i, align 1
  %idxprom100 = zext i8 %52 to i64
  %arrayidx101 = getelementptr inbounds float, float* %51, i64 %idxprom100
  %53 = load float, float* %arrayidx101, align 4
  %54 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 1), align 1
  %conv102 = sext i8 %54 to i32
  %conv103 = sitofp i32 %conv102 to float
  %cmp104 = fcmp oge float %53, %conv103
  br i1 %cmp104, label %if.then106, label %if.else121

if.then106:                                       ; preds = %if.else99
  %55 = load float*, float** %inp.addr, align 8
  %56 = load i8, i8* %i, align 1
  %idxprom107 = zext i8 %56 to i64
  %arrayidx108 = getelementptr inbounds float, float* %55, i64 %idxprom107
  %57 = load float, float* %arrayidx108, align 4
  %mul109 = fmul float %57, 6.553500e+04
  %58 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 2), align 1
  %conv110 = sext i8 %58 to i32
  %59 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_list, i64 0, i64 1), align 1
  %conv111 = sext i8 %59 to i32
  %sub112 = sub nsw i32 %conv110, %conv111
  %conv113 = sitofp i32 %sub112 to float
  %div114 = fdiv float %mul109, %conv113
  %sub115 = fsub float 3.276700e+04, %div114
  %conv116 = fptoui float %sub115 to i16
  %60 = load i16*, i16** %out.addr, align 8
  %61 = load i8, i8* %i, align 1
  %conv117 = zext i8 %61 to i32
  %mul118 = mul nsw i32 %conv117, 2
  %idxprom119 = sext i32 %mul118 to i64
  %arrayidx120 = getelementptr inbounds i16, i16* %60, i64 %idxprom119
  store i16 %conv116, i16* %arrayidx120, align 2
  br label %if.end126

if.else121:                                       ; preds = %if.else99
  %62 = load i16*, i16** %out.addr, align 8
  %63 = load i8, i8* %i, align 1
  %conv122 = zext i8 %63 to i32
  %mul123 = mul nsw i32 %conv122, 2
  %idxprom124 = sext i32 %mul123 to i64
  %arrayidx125 = getelementptr inbounds i16, i16* %62, i64 %idxprom124
  store i16 -1, i16* %arrayidx125, align 2
  br label %if.end126

if.end126:                                        ; preds = %if.else121, %if.then106
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then94
  br label %for.inc

for.inc:                                          ; preds = %if.end127
  %64 = load i8, i8* %i, align 1
  %inc = add i8 %64, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
