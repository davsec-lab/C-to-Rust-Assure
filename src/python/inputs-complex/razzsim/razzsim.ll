; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/razzsim/razzsim.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/razzsim/razzsim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.card_impl = type { i8 }
%struct.card_collection = type { %struct.card_collection*, %struct.card_collection*, %struct.card_impl* }
%struct.card_hand_impl = type { i8, i8, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, %struct.card_collection* }
%struct.card_deck_impl = type { i8, [52 x %struct.card_impl] }
%struct.decided_cards = type { i8, [3 x %struct.card_impl*], i8, [7 x %struct.card_impl*] }

@cardtostr.s = internal global [4 x [13 x i8*]] [[13 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0)], [13 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)], [13 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0)], [13 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)]], align 16
@.str = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"S2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"S3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"S4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"S5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"S6\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"S7\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"S8\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"S9\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"S10\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"SJ\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"SK\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"HA\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"H2\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"H3\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"H4\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"H5\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"H6\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"H7\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"H8\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"H9\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"H10\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"HJ\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"HQ\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"HK\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"D2\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"D3\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"D4\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"D5\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"D6\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"D7\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"D8\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"D9\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"D10\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"DJ\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"DQ\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"DK\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"C2\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"C3\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"C4\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"C5\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"C6\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"C8\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"C9\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"C10\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"CJ\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"CQ\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"CK\00", align 1
@ranktostr.s = internal global [13 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)], align 16
@.str.52 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.65 = private unnamed_addr constant [24 x i8] c"Invalid argument count\0A\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"Cannot create a shuffled deck\0A\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"Invalid my rank specification #%d\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"Duplicated my rank specification #%d\0A\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"Cannot create my card #%d\0A\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"Invalid opponent rank specification #%d\0A\00", align 1
@.str.71 = private unnamed_addr constant [44 x i8] c"Duplicated opponent rank specification #%d\0A\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"Cannot create opponent card #%d\0A\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"%s is out of range\0A\00", align 1
@.str.74 = private unnamed_addr constant [174 x i8] c"Usage: razz GAME_COUNT\0A\09RANK1 RANK2 RANK3\0A\09[OPP1_RANK [OPP2_RANK [... [OPP7_RANK]]]]\0A\0AYou specify a rank with the following symbols:\0A\09A, 2, ..., 10, J, Q, K for ace to king\0A\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"%2s = %.4f\0A\00", align 1
@duplicated_rank_remover.prev_rank = internal global i32 0, align 4
@.str.76 = private unnamed_addr constant [4 x i8] c"%4s\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c": %2s\0A\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"Cannot create a hand\0A\00", align 1

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
define internal void @write_card(i32 noundef %csr, %struct.card_impl* noundef %c) #0 {
entry:
  %csr.addr = alloca i32, align 4
  %c.addr = alloca %struct.card_impl*, align 8
  store i32 %csr, i32* %csr.addr, align 4
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  %0 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card = getelementptr inbounds %struct.card_impl, %struct.card_impl* %0, i32 0, i32 0
  store i8 0, i8* %card, align 1
  %1 = load i32, i32* %csr.addr, align 4
  %cmp = icmp uge i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %csr.addr, align 4
  %cmp1 = icmp ule i32 %2, 12
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card2 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %3, i32 0, i32 0
  %4 = load i8, i8* %card2, align 1
  %conv = zext i8 %4 to i32
  %or = or i32 %conv, 32
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %card2, align 1
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %csr.addr, align 4
  %cmp4 = icmp uge i32 %5, 13
  br i1 %cmp4, label %land.lhs.true6, label %if.else14

land.lhs.true6:                                   ; preds = %if.else
  %6 = load i32, i32* %csr.addr, align 4
  %cmp7 = icmp ule i32 %6, 25
  br i1 %cmp7, label %if.then9, label %if.else14

if.then9:                                         ; preds = %land.lhs.true6
  %7 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card10 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %7, i32 0, i32 0
  %8 = load i8, i8* %card10, align 1
  %conv11 = zext i8 %8 to i32
  %or12 = or i32 %conv11, 64
  %conv13 = trunc i32 %or12 to i8
  store i8 %conv13, i8* %card10, align 1
  br label %if.end37

if.else14:                                        ; preds = %land.lhs.true6, %if.else
  %9 = load i32, i32* %csr.addr, align 4
  %cmp15 = icmp uge i32 %9, 26
  br i1 %cmp15, label %land.lhs.true17, label %if.else25

land.lhs.true17:                                  ; preds = %if.else14
  %10 = load i32, i32* %csr.addr, align 4
  %cmp18 = icmp ule i32 %10, 38
  br i1 %cmp18, label %if.then20, label %if.else25

if.then20:                                        ; preds = %land.lhs.true17
  %11 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card21 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %11, i32 0, i32 0
  %12 = load i8, i8* %card21, align 1
  %conv22 = zext i8 %12 to i32
  %or23 = or i32 %conv22, 96
  %conv24 = trunc i32 %or23 to i8
  store i8 %conv24, i8* %card21, align 1
  br label %if.end36

if.else25:                                        ; preds = %land.lhs.true17, %if.else14
  %13 = load i32, i32* %csr.addr, align 4
  %cmp26 = icmp uge i32 %13, 39
  br i1 %cmp26, label %land.lhs.true28, label %if.end

land.lhs.true28:                                  ; preds = %if.else25
  %14 = load i32, i32* %csr.addr, align 4
  %cmp29 = icmp ule i32 %14, 51
  br i1 %cmp29, label %if.then31, label %if.end

if.then31:                                        ; preds = %land.lhs.true28
  %15 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card32 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %15, i32 0, i32 0
  %16 = load i8, i8* %card32, align 1
  %conv33 = zext i8 %16 to i32
  %or34 = or i32 %conv33, 128
  %conv35 = trunc i32 %or34 to i8
  store i8 %conv35, i8* %card32, align 1
  br label %if.end

if.end:                                           ; preds = %if.then31, %land.lhs.true28, %if.else25
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then20
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then9
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  %17 = load i32, i32* %csr.addr, align 4
  switch i32 %17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 13, label %sw.bb
    i32 26, label %sw.bb
    i32 39, label %sw.bb
    i32 1, label %sw.bb43
    i32 14, label %sw.bb43
    i32 27, label %sw.bb43
    i32 40, label %sw.bb43
    i32 2, label %sw.bb48
    i32 15, label %sw.bb48
    i32 28, label %sw.bb48
    i32 41, label %sw.bb48
    i32 3, label %sw.bb53
    i32 16, label %sw.bb53
    i32 29, label %sw.bb53
    i32 42, label %sw.bb53
    i32 4, label %sw.bb58
    i32 17, label %sw.bb58
    i32 30, label %sw.bb58
    i32 43, label %sw.bb58
    i32 5, label %sw.bb63
    i32 18, label %sw.bb63
    i32 31, label %sw.bb63
    i32 44, label %sw.bb63
    i32 6, label %sw.bb68
    i32 19, label %sw.bb68
    i32 32, label %sw.bb68
    i32 45, label %sw.bb68
    i32 7, label %sw.bb73
    i32 20, label %sw.bb73
    i32 33, label %sw.bb73
    i32 46, label %sw.bb73
    i32 8, label %sw.bb78
    i32 21, label %sw.bb78
    i32 34, label %sw.bb78
    i32 47, label %sw.bb78
    i32 9, label %sw.bb83
    i32 22, label %sw.bb83
    i32 35, label %sw.bb83
    i32 48, label %sw.bb83
    i32 10, label %sw.bb88
    i32 23, label %sw.bb88
    i32 36, label %sw.bb88
    i32 49, label %sw.bb88
    i32 11, label %sw.bb93
    i32 24, label %sw.bb93
    i32 37, label %sw.bb93
    i32 50, label %sw.bb93
    i32 12, label %sw.bb98
    i32 25, label %sw.bb98
    i32 38, label %sw.bb98
    i32 51, label %sw.bb98
  ]

sw.bb:                                            ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %18 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card39 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %18, i32 0, i32 0
  %19 = load i8, i8* %card39, align 1
  %conv40 = zext i8 %19 to i32
  %or41 = or i32 %conv40, 1
  %conv42 = trunc i32 %or41 to i8
  store i8 %conv42, i8* %card39, align 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %20 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card44 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %20, i32 0, i32 0
  %21 = load i8, i8* %card44, align 1
  %conv45 = zext i8 %21 to i32
  %or46 = or i32 %conv45, 2
  %conv47 = trunc i32 %or46 to i8
  store i8 %conv47, i8* %card44, align 1
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %22 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card49 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %22, i32 0, i32 0
  %23 = load i8, i8* %card49, align 1
  %conv50 = zext i8 %23 to i32
  %or51 = or i32 %conv50, 3
  %conv52 = trunc i32 %or51 to i8
  store i8 %conv52, i8* %card49, align 1
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %24 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card54 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %24, i32 0, i32 0
  %25 = load i8, i8* %card54, align 1
  %conv55 = zext i8 %25 to i32
  %or56 = or i32 %conv55, 4
  %conv57 = trunc i32 %or56 to i8
  store i8 %conv57, i8* %card54, align 1
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %26 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card59 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %26, i32 0, i32 0
  %27 = load i8, i8* %card59, align 1
  %conv60 = zext i8 %27 to i32
  %or61 = or i32 %conv60, 5
  %conv62 = trunc i32 %or61 to i8
  store i8 %conv62, i8* %card59, align 1
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %28 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card64 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %28, i32 0, i32 0
  %29 = load i8, i8* %card64, align 1
  %conv65 = zext i8 %29 to i32
  %or66 = or i32 %conv65, 6
  %conv67 = trunc i32 %or66 to i8
  store i8 %conv67, i8* %card64, align 1
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %30 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card69 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %30, i32 0, i32 0
  %31 = load i8, i8* %card69, align 1
  %conv70 = zext i8 %31 to i32
  %or71 = or i32 %conv70, 7
  %conv72 = trunc i32 %or71 to i8
  store i8 %conv72, i8* %card69, align 1
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %32 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card74 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %32, i32 0, i32 0
  %33 = load i8, i8* %card74, align 1
  %conv75 = zext i8 %33 to i32
  %or76 = or i32 %conv75, 8
  %conv77 = trunc i32 %or76 to i8
  store i8 %conv77, i8* %card74, align 1
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %34 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card79 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %34, i32 0, i32 0
  %35 = load i8, i8* %card79, align 1
  %conv80 = zext i8 %35 to i32
  %or81 = or i32 %conv80, 9
  %conv82 = trunc i32 %or81 to i8
  store i8 %conv82, i8* %card79, align 1
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %36 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card84 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %36, i32 0, i32 0
  %37 = load i8, i8* %card84, align 1
  %conv85 = zext i8 %37 to i32
  %or86 = or i32 %conv85, 10
  %conv87 = trunc i32 %or86 to i8
  store i8 %conv87, i8* %card84, align 1
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %38 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card89 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %38, i32 0, i32 0
  %39 = load i8, i8* %card89, align 1
  %conv90 = zext i8 %39 to i32
  %or91 = or i32 %conv90, 11
  %conv92 = trunc i32 %or91 to i8
  store i8 %conv92, i8* %card89, align 1
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %40 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card94 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %40, i32 0, i32 0
  %41 = load i8, i8* %card94, align 1
  %conv95 = zext i8 %41 to i32
  %or96 = or i32 %conv95, 12
  %conv97 = trunc i32 %or96 to i8
  store i8 %conv97, i8* %card94, align 1
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %42 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card99 = getelementptr inbounds %struct.card_impl, %struct.card_impl* %42, i32 0, i32 0
  %43 = load i8, i8* %card99, align 1
  %conv100 = zext i8 %43 to i32
  %or101 = or i32 %conv100, 13
  %conv102 = trunc i32 %or101 to i8
  store i8 %conv102, i8* %card99, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end38, %sw.bb98, %sw.bb93, %sw.bb88, %sw.bb83, %sw.bb78, %sw.bb73, %sw.bb68, %sw.bb63, %sw.bb58, %sw.bb53, %sw.bb48, %sw.bb43, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_into_collection(%struct.card_collection** noundef %head, %struct.card_impl* noundef %c, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* noundef %sorter) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.card_collection**, align 8
  %c.addr = alloca %struct.card_impl*, align 8
  %sorter.addr = alloca i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, align 8
  %col = alloca %struct.card_collection*, align 8
  %itr = alloca %struct.card_collection*, align 8
  store %struct.card_collection** %head, %struct.card_collection*** %head.addr, align 8
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  store i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* %sorter, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #6
  %0 = bitcast i8* %call to %struct.card_collection*
  store %struct.card_collection* %0, %struct.card_collection** %col, align 8
  %1 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %cmp = icmp eq %struct.card_collection* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @destroy_card(%struct.card_impl** noundef %c.addr)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %3 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %c1 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %3, i32 0, i32 2
  store %struct.card_impl* %2, %struct.card_impl** %c1, align 8
  %4 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %5 = load %struct.card_collection*, %struct.card_collection** %4, align 8
  %cmp2 = icmp eq %struct.card_collection* %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %7 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %prev = getelementptr inbounds %struct.card_collection, %struct.card_collection* %7, i32 0, i32 0
  store %struct.card_collection* %6, %struct.card_collection** %prev, align 8
  %8 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %9 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %next = getelementptr inbounds %struct.card_collection, %struct.card_collection* %9, i32 0, i32 1
  store %struct.card_collection* %8, %struct.card_collection** %next, align 8
  %10 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %11 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  store %struct.card_collection* %10, %struct.card_collection** %11, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %12 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %13 = load %struct.card_collection*, %struct.card_collection** %12, align 8
  store %struct.card_collection* %13, %struct.card_collection** %itr, align 8
  %14 = load i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter.addr, align 8
  %15 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %16 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %c5 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %16, i32 0, i32 2
  %17 = load %struct.card_impl*, %struct.card_impl** %c5, align 8
  %call6 = call i32 %14(%struct.card_impl* noundef null, %struct.card_impl* noundef %15, %struct.card_impl* noundef %17)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end4
  %18 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %prev8 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %18, i32 0, i32 0
  %19 = load %struct.card_collection*, %struct.card_collection** %prev8, align 8
  %20 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %prev9 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %20, i32 0, i32 0
  store %struct.card_collection* %19, %struct.card_collection** %prev9, align 8
  %21 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %22 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %next10 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %22, i32 0, i32 1
  store %struct.card_collection* %21, %struct.card_collection** %next10, align 8
  %23 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %24 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %prev11 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %24, i32 0, i32 0
  store %struct.card_collection* %23, %struct.card_collection** %prev11, align 8
  %25 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %26 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %prev12 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %26, i32 0, i32 0
  %27 = load %struct.card_collection*, %struct.card_collection** %prev12, align 8
  %next13 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %27, i32 0, i32 1
  store %struct.card_collection* %25, %struct.card_collection** %next13, align 8
  %28 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %29 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  store %struct.card_collection* %28, %struct.card_collection** %29, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end4
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end14
  %30 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %next15 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %30, i32 0, i32 1
  %31 = load %struct.card_collection*, %struct.card_collection** %next15, align 8
  %32 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %33 = load %struct.card_collection*, %struct.card_collection** %32, align 8
  %cmp16 = icmp ne %struct.card_collection* %31, %33
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter.addr, align 8
  %35 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %c17 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %35, i32 0, i32 2
  %36 = load %struct.card_impl*, %struct.card_impl** %c17, align 8
  %37 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %38 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %next18 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %38, i32 0, i32 1
  %39 = load %struct.card_collection*, %struct.card_collection** %next18, align 8
  %c19 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %39, i32 0, i32 2
  %40 = load %struct.card_impl*, %struct.card_impl** %c19, align 8
  %call20 = call i32 %34(%struct.card_impl* noundef %36, %struct.card_impl* noundef %37, %struct.card_impl* noundef %40)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.end29

if.then22:                                        ; preds = %while.body
  %41 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %42 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %prev23 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %42, i32 0, i32 0
  store %struct.card_collection* %41, %struct.card_collection** %prev23, align 8
  %43 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %next24 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %43, i32 0, i32 1
  %44 = load %struct.card_collection*, %struct.card_collection** %next24, align 8
  %45 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %next25 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %45, i32 0, i32 1
  store %struct.card_collection* %44, %struct.card_collection** %next25, align 8
  %46 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %47 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %next26 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %47, i32 0, i32 1
  store %struct.card_collection* %46, %struct.card_collection** %next26, align 8
  %48 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %49 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %next27 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %49, i32 0, i32 1
  %50 = load %struct.card_collection*, %struct.card_collection** %next27, align 8
  %prev28 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %50, i32 0, i32 0
  store %struct.card_collection* %48, %struct.card_collection** %prev28, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %while.body
  %51 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %next30 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %51, i32 0, i32 1
  %52 = load %struct.card_collection*, %struct.card_collection** %next30, align 8
  store %struct.card_collection* %52, %struct.card_collection** %itr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %53 = load i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter.addr, align 8
  %54 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %c31 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %54, i32 0, i32 2
  %55 = load %struct.card_impl*, %struct.card_impl** %c31, align 8
  %56 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %call32 = call i32 %53(%struct.card_impl* noundef %55, %struct.card_impl* noundef %56, %struct.card_impl* noundef null)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end40

if.then34:                                        ; preds = %while.end
  %57 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %58 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %prev35 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %58, i32 0, i32 0
  store %struct.card_collection* %57, %struct.card_collection** %prev35, align 8
  %59 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %60 = load %struct.card_collection*, %struct.card_collection** %59, align 8
  %61 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %next36 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %61, i32 0, i32 1
  store %struct.card_collection* %60, %struct.card_collection** %next36, align 8
  %62 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %63 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %next37 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %63, i32 0, i32 1
  store %struct.card_collection* %62, %struct.card_collection** %next37, align 8
  %64 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %65 = load %struct.card_collection*, %struct.card_collection** %col, align 8
  %next38 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %65, i32 0, i32 1
  %66 = load %struct.card_collection*, %struct.card_collection** %next38, align 8
  %prev39 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %66, i32 0, i32 0
  store %struct.card_collection* %64, %struct.card_collection** %prev39, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then34, %if.then22, %if.then7, %if.then3, %if.then
  %67 = load i32, i32* %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_card(%struct.card_impl** noundef %c_ptr) #0 {
entry:
  %c_ptr.addr = alloca %struct.card_impl**, align 8
  store %struct.card_impl** %c_ptr, %struct.card_impl*** %c_ptr.addr, align 8
  %0 = load %struct.card_impl**, %struct.card_impl*** %c_ptr.addr, align 8
  %1 = load %struct.card_impl*, %struct.card_impl** %0, align 8
  %cmp = icmp eq %struct.card_impl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.card_impl**, %struct.card_impl*** %c_ptr.addr, align 8
  %3 = load %struct.card_impl*, %struct.card_impl** %2, align 8
  %4 = bitcast %struct.card_impl* %3 to i8*
  call void @free(i8* noundef %4) #6
  %5 = load %struct.card_impl**, %struct.card_impl*** %c_ptr.addr, align 8
  store %struct.card_impl* null, %struct.card_impl** %5, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_collection(%struct.card_collection* noundef %head, %struct.card_collection** noundef %itr) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.card_collection*, align 8
  %itr.addr = alloca %struct.card_collection**, align 8
  store %struct.card_collection* %head, %struct.card_collection** %head.addr, align 8
  store %struct.card_collection** %itr, %struct.card_collection*** %itr.addr, align 8
  %0 = load %struct.card_collection*, %struct.card_collection** %head.addr, align 8
  %cmp = icmp eq %struct.card_collection* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.card_collection**, %struct.card_collection*** %itr.addr, align 8
  %2 = load %struct.card_collection*, %struct.card_collection** %1, align 8
  %cmp1 = icmp eq %struct.card_collection* %2, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %3 = load %struct.card_collection*, %struct.card_collection** %head.addr, align 8
  %4 = load %struct.card_collection**, %struct.card_collection*** %itr.addr, align 8
  store %struct.card_collection* %3, %struct.card_collection** %4, align 8
  br label %if.end6

if.else:                                          ; preds = %if.end
  %5 = load %struct.card_collection**, %struct.card_collection*** %itr.addr, align 8
  %6 = load %struct.card_collection*, %struct.card_collection** %5, align 8
  %next = getelementptr inbounds %struct.card_collection, %struct.card_collection* %6, i32 0, i32 1
  %7 = load %struct.card_collection*, %struct.card_collection** %next, align 8
  %8 = load %struct.card_collection**, %struct.card_collection*** %itr.addr, align 8
  store %struct.card_collection* %7, %struct.card_collection** %8, align 8
  %9 = load %struct.card_collection**, %struct.card_collection*** %itr.addr, align 8
  %10 = load %struct.card_collection*, %struct.card_collection** %9, align 8
  %11 = load %struct.card_collection*, %struct.card_collection** %head.addr, align 8
  %cmp3 = icmp eq %struct.card_collection* %10, %11
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  %12 = load %struct.card_collection**, %struct.card_collection*** %itr.addr, align 8
  store %struct.card_collection* null, %struct.card_collection** %12, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then2
  %13 = load %struct.card_collection**, %struct.card_collection*** %itr.addr, align 8
  %14 = load %struct.card_collection*, %struct.card_collection** %13, align 8
  %cmp7 = icmp ne %struct.card_collection* %14, null
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_into_collection(%struct.card_collection** noundef %head, %struct.card_collection* noundef %new) #0 {
entry:
  %head.addr = alloca %struct.card_collection**, align 8
  %new.addr = alloca %struct.card_collection*, align 8
  store %struct.card_collection** %head, %struct.card_collection*** %head.addr, align 8
  store %struct.card_collection* %new, %struct.card_collection** %new.addr, align 8
  %0 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %1 = load %struct.card_collection*, %struct.card_collection** %0, align 8
  %cmp = icmp eq %struct.card_collection* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %3 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %prev = getelementptr inbounds %struct.card_collection, %struct.card_collection* %3, i32 0, i32 0
  store %struct.card_collection* %2, %struct.card_collection** %prev, align 8
  %4 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %5 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %next = getelementptr inbounds %struct.card_collection, %struct.card_collection* %5, i32 0, i32 1
  store %struct.card_collection* %4, %struct.card_collection** %next, align 8
  %6 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %7 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  store %struct.card_collection* %6, %struct.card_collection** %7, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %9 = load %struct.card_collection*, %struct.card_collection** %8, align 8
  %prev1 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %9, i32 0, i32 0
  %10 = load %struct.card_collection*, %struct.card_collection** %prev1, align 8
  %11 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %prev2 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %11, i32 0, i32 0
  store %struct.card_collection* %10, %struct.card_collection** %prev2, align 8
  %12 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %13 = load %struct.card_collection*, %struct.card_collection** %12, align 8
  %14 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %next3 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %14, i32 0, i32 1
  store %struct.card_collection* %13, %struct.card_collection** %next3, align 8
  %15 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %16 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %prev4 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %16, i32 0, i32 0
  %17 = load %struct.card_collection*, %struct.card_collection** %prev4, align 8
  %next5 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %17, i32 0, i32 1
  store %struct.card_collection* %15, %struct.card_collection** %next5, align 8
  %18 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %19 = load %struct.card_collection*, %struct.card_collection** %new.addr, align 8
  %next6 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %19, i32 0, i32 1
  %20 = load %struct.card_collection*, %struct.card_collection** %next6, align 8
  %prev7 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %20, i32 0, i32 0
  store %struct.card_collection* %18, %struct.card_collection** %prev7, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_from_collection(%struct.card_collection* noundef %entry1) #0 {
entry:
  %entry.addr = alloca %struct.card_collection*, align 8
  store %struct.card_collection* %entry1, %struct.card_collection** %entry.addr, align 8
  %0 = load %struct.card_collection*, %struct.card_collection** %entry.addr, align 8
  %prev = getelementptr inbounds %struct.card_collection, %struct.card_collection* %0, i32 0, i32 0
  %1 = load %struct.card_collection*, %struct.card_collection** %prev, align 8
  %2 = load %struct.card_collection*, %struct.card_collection** %entry.addr, align 8
  %next = getelementptr inbounds %struct.card_collection, %struct.card_collection* %2, i32 0, i32 1
  %3 = load %struct.card_collection*, %struct.card_collection** %next, align 8
  %prev2 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %3, i32 0, i32 0
  store %struct.card_collection* %1, %struct.card_collection** %prev2, align 8
  %4 = load %struct.card_collection*, %struct.card_collection** %entry.addr, align 8
  %next3 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %4, i32 0, i32 1
  %5 = load %struct.card_collection*, %struct.card_collection** %next3, align 8
  %6 = load %struct.card_collection*, %struct.card_collection** %entry.addr, align 8
  %prev4 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %6, i32 0, i32 0
  %7 = load %struct.card_collection*, %struct.card_collection** %prev4, align 8
  %next5 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %7, i32 0, i32 1
  store %struct.card_collection* %5, %struct.card_collection** %next5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_card_payload(i8** noundef %payload) #0 {
entry:
  %payload.addr = alloca i8**, align 8
  store i8** %payload, i8*** %payload.addr, align 8
  %0 = load i8**, i8*** %payload.addr, align 8
  %1 = bitcast i8** %0 to %struct.card_impl**
  call void @destroy_card(%struct.card_impl** noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_collection_entry(%struct.card_collection** noundef %entry1, void (i8**)* noundef %freer) #0 {
entry:
  %entry.addr = alloca %struct.card_collection**, align 8
  %freer.addr = alloca void (i8**)*, align 8
  store %struct.card_collection** %entry1, %struct.card_collection*** %entry.addr, align 8
  store void (i8**)* %freer, void (i8**)** %freer.addr, align 8
  %0 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %1 = load %struct.card_collection*, %struct.card_collection** %0, align 8
  %cmp = icmp eq %struct.card_collection* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load void (i8**)*, void (i8**)** %freer.addr, align 8
  %cmp2 = icmp ne void (i8**)* %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load void (i8**)*, void (i8**)** %freer.addr, align 8
  %4 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %5 = load %struct.card_collection*, %struct.card_collection** %4, align 8
  %c = getelementptr inbounds %struct.card_collection, %struct.card_collection* %5, i32 0, i32 2
  %6 = bitcast %struct.card_impl** %c to i8*
  %7 = bitcast i8* %6 to i8**
  call void %3(i8** noundef %7)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %9 = load %struct.card_collection*, %struct.card_collection** %8, align 8
  %10 = bitcast %struct.card_collection* %9 to i8*
  call void @free(i8* noundef %10) #6
  %11 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  store %struct.card_collection* null, %struct.card_collection** %11, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_collection_under_itr(%struct.card_collection** noundef %head, %struct.card_collection** noundef %entry1, void (i8**)* noundef %freer) #0 {
entry:
  %head.addr = alloca %struct.card_collection**, align 8
  %entry.addr = alloca %struct.card_collection**, align 8
  %freer.addr = alloca void (i8**)*, align 8
  %entry_to_remove = alloca %struct.card_collection*, align 8
  %is_entry_head = alloca i32, align 4
  store %struct.card_collection** %head, %struct.card_collection*** %head.addr, align 8
  store %struct.card_collection** %entry1, %struct.card_collection*** %entry.addr, align 8
  store void (i8**)* %freer, void (i8**)** %freer.addr, align 8
  store %struct.card_collection* null, %struct.card_collection** %entry_to_remove, align 8
  %0 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %1 = load %struct.card_collection*, %struct.card_collection** %0, align 8
  %2 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %3 = load %struct.card_collection*, %struct.card_collection** %2, align 8
  %cmp = icmp eq %struct.card_collection* %1, %3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_entry_head, align 4
  %4 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %5 = load %struct.card_collection*, %struct.card_collection** %4, align 8
  call void @detach_from_collection(%struct.card_collection* noundef %5)
  %6 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %7 = load %struct.card_collection*, %struct.card_collection** %6, align 8
  store %struct.card_collection* %7, %struct.card_collection** %entry_to_remove, align 8
  %8 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %9 = load %struct.card_collection*, %struct.card_collection** %8, align 8
  %prev = getelementptr inbounds %struct.card_collection, %struct.card_collection* %9, i32 0, i32 0
  %10 = load %struct.card_collection*, %struct.card_collection** %prev, align 8
  %11 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  store %struct.card_collection* %10, %struct.card_collection** %11, align 8
  %12 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %13 = load %struct.card_collection*, %struct.card_collection** %12, align 8
  %14 = load %struct.card_collection*, %struct.card_collection** %entry_to_remove, align 8
  %cmp2 = icmp eq %struct.card_collection* %13, %14
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  store %struct.card_collection* null, %struct.card_collection** %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load void (i8**)*, void (i8**)** %freer.addr, align 8
  call void @destroy_collection_entry(%struct.card_collection** noundef %entry_to_remove, void (i8**)* noundef %16)
  %17 = load i32, i32* %is_entry_head, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  %19 = load %struct.card_collection*, %struct.card_collection** %18, align 8
  %20 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %21 = load %struct.card_collection*, %struct.card_collection** %20, align 8
  %cmp4 = icmp ne %struct.card_collection* %19, %21
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  %22 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %23 = load %struct.card_collection*, %struct.card_collection** %22, align 8
  %cmp7 = icmp eq %struct.card_collection* %23, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then6
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  %24 = load %struct.card_collection**, %struct.card_collection*** %entry.addr, align 8
  %25 = load %struct.card_collection*, %struct.card_collection** %24, align 8
  %next = getelementptr inbounds %struct.card_collection, %struct.card_collection* %25, i32 0, i32 1
  %26 = load %struct.card_collection*, %struct.card_collection** %next, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.card_collection* [ null, %cond.true ], [ %26, %cond.false ]
  %27 = load %struct.card_collection**, %struct.card_collection*** %head.addr, align 8
  store %struct.card_collection* %cond, %struct.card_collection** %27, align 8
  br label %if.end9

if.end9:                                          ; preds = %cond.end, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_collection(%struct.card_collection** noundef %col_ptr, void (i8**)* noundef %freer) #0 {
entry:
  %col_ptr.addr = alloca %struct.card_collection**, align 8
  %freer.addr = alloca void (i8**)*, align 8
  %head = alloca %struct.card_collection*, align 8
  %head_next = alloca %struct.card_collection*, align 8
  store %struct.card_collection** %col_ptr, %struct.card_collection*** %col_ptr.addr, align 8
  store void (i8**)* %freer, void (i8**)** %freer.addr, align 8
  %0 = load %struct.card_collection**, %struct.card_collection*** %col_ptr.addr, align 8
  %1 = load %struct.card_collection*, %struct.card_collection** %0, align 8
  store %struct.card_collection* %1, %struct.card_collection** %head, align 8
  %2 = load %struct.card_collection*, %struct.card_collection** %head, align 8
  %cmp = icmp eq %struct.card_collection* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.card_collection*, %struct.card_collection** %head, align 8
  %prev = getelementptr inbounds %struct.card_collection, %struct.card_collection* %3, i32 0, i32 0
  %4 = load %struct.card_collection*, %struct.card_collection** %prev, align 8
  %next = getelementptr inbounds %struct.card_collection, %struct.card_collection* %4, i32 0, i32 1
  store %struct.card_collection* null, %struct.card_collection** %next, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %5 = load %struct.card_collection*, %struct.card_collection** %head, align 8
  %next1 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %5, i32 0, i32 1
  %6 = load %struct.card_collection*, %struct.card_collection** %next1, align 8
  store %struct.card_collection* %6, %struct.card_collection** %head_next, align 8
  %7 = load void (i8**)*, void (i8**)** %freer.addr, align 8
  %cmp2 = icmp ne void (i8**)* %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.body
  %8 = load void (i8**)*, void (i8**)** %freer.addr, align 8
  %9 = load %struct.card_collection*, %struct.card_collection** %head, align 8
  %c = getelementptr inbounds %struct.card_collection, %struct.card_collection* %9, i32 0, i32 2
  %10 = bitcast %struct.card_impl** %c to i8*
  %11 = bitcast i8* %10 to i8**
  call void %8(i8** noundef %11)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body
  %12 = load %struct.card_collection*, %struct.card_collection** %head, align 8
  %13 = bitcast %struct.card_collection* %12 to i8*
  call void @free(i8* noundef %13) #6
  %14 = load %struct.card_collection*, %struct.card_collection** %head_next, align 8
  store %struct.card_collection* %14, %struct.card_collection** %head, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end4
  %15 = load %struct.card_collection*, %struct.card_collection** %head, align 8
  %cmp5 = icmp ne %struct.card_collection* %15, null
  br i1 %cmp5, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %16 = load %struct.card_collection**, %struct.card_collection*** %col_ptr.addr, align 8
  store %struct.card_collection* null, %struct.card_collection** %16, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_card_suit_rank(%struct.card_impl* noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.card_impl*, align 8
  %csr = alloca i32, align 4
  %cs = alloca i32, align 4
  %cr = alloca i32, align 4
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  %0 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %call = call i32 @get_card_suit(%struct.card_impl* noundef %0)
  store i32 %call, i32* %cs, align 4
  %1 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %call1 = call i32 @get_card_rank(%struct.card_impl* noundef %1)
  store i32 %call1, i32* %cr, align 4
  %2 = load i32, i32* %cs, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %cr, align 4
  %cmp2 = icmp eq i32 %3, 14
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 53, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %cs, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %csr, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  store i32 13, i32* %csr, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  store i32 26, i32* %csr, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  store i32 39, i32* %csr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %5 = load i32, i32* %csr, align 4
  %6 = load i32, i32* %cr, align 4
  %add = add i32 %5, %6
  store i32 %add, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_card_suit(%struct.card_impl* noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.card_impl*, align 8
  %s = alloca i8, align 1
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  %0 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card = getelementptr inbounds %struct.card_impl, %struct.card_impl* %0, i32 0, i32 0
  %1 = load i8, i8* %card, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 224
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %s, align 1
  %2 = load i8, i8* %s, align 1
  %conv2 = zext i8 %2 to i32
  %cmp = icmp ult i32 %conv2, 32
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* %s, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ugt i32 %conv4, 128
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8, i8* %s, align 1
  %conv7 = zext i8 %4 to i32
  %shr = ashr i32 %conv7, 5
  %sub = sub nsw i32 %shr, 1
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_card_rank(%struct.card_impl* noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.card_impl*, align 8
  %r = alloca i8, align 1
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  %0 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %card = getelementptr inbounds %struct.card_impl, %struct.card_impl* %0, i32 0, i32 0
  %1 = load i8, i8* %card, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 31
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %r, align 1
  %2 = load i8, i8* %r, align 1
  %conv2 = zext i8 %2 to i32
  %cmp = icmp ult i32 %conv2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* %r, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ugt i32 %conv4, 13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 14, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8, i8* %r, align 1
  %conv7 = zext i8 %4 to i32
  %sub = sub nsw i32 %conv7, 1
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.card_impl* @create_card(i32 noundef %csr) #0 {
entry:
  %retval = alloca %struct.card_impl*, align 8
  %csr.addr = alloca i32, align 4
  %c = alloca %struct.card_impl*, align 8
  store i32 %csr, i32* %csr.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 1) #6
  %0 = bitcast i8* %call to %struct.card_impl*
  store %struct.card_impl* %0, %struct.card_impl** %c, align 8
  %1 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  %cmp = icmp eq %struct.card_impl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.card_impl* null, %struct.card_impl** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %csr.addr, align 4
  %3 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  call void @write_card(i32 noundef %2, %struct.card_impl* noundef %3)
  %4 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  %card = getelementptr inbounds %struct.card_impl, %struct.card_impl* %4, i32 0, i32 0
  %5 = load i8, i8* %card, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  %7 = bitcast %struct.card_impl* %6 to i8*
  call void @free(i8* noundef %7) #6
  store %struct.card_impl* null, %struct.card_impl** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  store %struct.card_impl* %8, %struct.card_impl** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %9 = load %struct.card_impl*, %struct.card_impl** %retval, align 8
  ret %struct.card_impl* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.card_impl* @strtocard(i8* noundef %str) #0 {
entry:
  %retval = alloca %struct.card_impl*, align 8
  %str.addr = alloca i8*, align 8
  %csr = alloca i32, align 4
  %char_count = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #7
  store i64 %call, i64* %char_count, align 8
  %1 = load i64, i64* %char_count, align 8
  %cmp = icmp ne i64 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.card_impl* null, %struct.card_impl** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %call1 = call i32 @toupper(i32 noundef %conv) #7
  switch i32 %call1, label %sw.default [
    i32 83, label %sw.bb
    i32 72, label %sw.bb2
    i32 68, label %sw.bb3
    i32 67, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %csr, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store i32 13, i32* %csr, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  store i32 26, i32* %csr, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  store i32 39, i32* %csr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store %struct.card_impl* null, %struct.card_impl** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp sge i32 %conv6, 50
  br i1 %cmp7, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %sw.epilog
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp sle i32 %conv10, 57
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %csr, align 4
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %10 to i32
  %add = add i32 %8, %conv15
  %sub = sub i32 %add, 49
  %call16 = call %struct.card_impl* @create_card(i32 noundef %sub)
  store %struct.card_impl* %call16, %struct.card_impl** %retval, align 8
  br label %return

if.end17:                                         ; preds = %land.lhs.true, %sw.epilog
  %11 = load i8*, i8** %str.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %12 to i32
  %call20 = call i32 @toupper(i32 noundef %conv19) #7
  switch i32 %call20, label %sw.epilog38 [
    i32 65, label %sw.bb21
    i32 49, label %sw.bb23
    i32 74, label %sw.bb29
    i32 81, label %sw.bb32
    i32 75, label %sw.bb35
  ]

sw.bb21:                                          ; preds = %if.end17
  %13 = load i32, i32* %csr, align 4
  %call22 = call %struct.card_impl* @create_card(i32 noundef %13)
  store %struct.card_impl* %call22, %struct.card_impl** %retval, align 8
  br label %return

sw.bb23:                                          ; preds = %if.end17
  %14 = load i64, i64* %char_count, align 8
  %cmp24 = icmp eq i64 %14, 3
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %sw.bb23
  %15 = load i32, i32* %csr, align 4
  %add27 = add i32 %15, 9
  %call28 = call %struct.card_impl* @create_card(i32 noundef %add27)
  store %struct.card_impl* %call28, %struct.card_impl** %retval, align 8
  br label %return

if.else:                                          ; preds = %sw.bb23
  store %struct.card_impl* null, %struct.card_impl** %retval, align 8
  br label %return

sw.bb29:                                          ; preds = %if.end17
  %16 = load i32, i32* %csr, align 4
  %add30 = add i32 %16, 10
  %call31 = call %struct.card_impl* @create_card(i32 noundef %add30)
  store %struct.card_impl* %call31, %struct.card_impl** %retval, align 8
  br label %return

sw.bb32:                                          ; preds = %if.end17
  %17 = load i32, i32* %csr, align 4
  %add33 = add i32 %17, 11
  %call34 = call %struct.card_impl* @create_card(i32 noundef %add33)
  store %struct.card_impl* %call34, %struct.card_impl** %retval, align 8
  br label %return

sw.bb35:                                          ; preds = %if.end17
  %18 = load i32, i32* %csr, align 4
  %add36 = add i32 %18, 12
  %call37 = call %struct.card_impl* @create_card(i32 noundef %add36)
  store %struct.card_impl* %call37, %struct.card_impl** %retval, align 8
  br label %return

sw.epilog38:                                      ; preds = %if.end17
  store %struct.card_impl* null, %struct.card_impl** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog38, %sw.bb35, %sw.bb32, %sw.bb29, %if.else, %if.then26, %sw.bb21, %if.then13, %sw.default, %if.then
  %19 = load %struct.card_impl*, %struct.card_impl** %retval, align 8
  ret %struct.card_impl* %19
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cardtostr(i32 noundef %c) #0 {
entry:
  %retval = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ult i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ugt i32 %1, 51
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %div = udiv i32 %2, 13
  %idxprom = zext i32 %div to i64
  %arrayidx = getelementptr inbounds [4 x [13 x i8*]], [4 x [13 x i8*]]* @cardtostr.s, i64 0, i64 %idxprom
  %3 = load i32, i32* %c.addr, align 4
  %rem = urem i32 %3, 13
  %idxprom2 = zext i32 %rem to i64
  %arrayidx3 = getelementptr inbounds [13 x i8*], [13 x i8*]* %arrayidx, i64 0, i64 %idxprom2
  %4 = load i8*, i8** %arrayidx3, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ranktostr(i32 noundef %r) #0 {
entry:
  %retval = alloca i8*, align 8
  %r.addr = alloca i32, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %r.addr, align 4
  %cmp = icmp ult i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %r.addr, align 4
  %cmp1 = icmp ugt i32 %1, 12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %r.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [13 x i8*], [13 x i8*]* @ranktostr.s, i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strtorank(i8* noundef %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %cr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %cr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 50
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp sle i32 %conv3, 57
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %sub = sub nsw i32 %conv7, 49
  %6 = load i32, i32* %cr, align 4
  %add = add i32 %6, %sub
  store i32 %add, i32* %cr, align 4
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %call = call i32 @toupper(i32 noundef %conv9) #7
  switch i32 %call, label %sw.default [
    i32 65, label %sw.bb
    i32 49, label %sw.bb10
    i32 74, label %sw.bb18
    i32 81, label %sw.bb20
    i32 75, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.else
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.else
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 48
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %sw.bb10
  %11 = load i32, i32* %cr, align 4
  %add16 = add i32 %11, 9
  store i32 %add16, i32* %cr, align 4
  br label %if.end

if.else17:                                        ; preds = %sw.bb10
  store i32 14, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then15
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.else
  %12 = load i32, i32* %cr, align 4
  %add19 = add i32 %12, 10
  store i32 %add19, i32* %cr, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.else
  %13 = load i32, i32* %cr, align 4
  %add21 = add i32 %13, 11
  store i32 %add21, i32* %cr, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.else
  %14 = load i32, i32* %cr, align 4
  %add23 = add i32 %14, 12
  store i32 %add23, i32* %cr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 14, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb20, %sw.bb18, %if.end, %sw.bb
  br label %if.end24

if.end24:                                         ; preds = %sw.epilog, %if.then
  %15 = load i32, i32* %cr, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %sw.default, %if.else17
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort_card_after(%struct.card_impl* noundef %before, %struct.card_impl* noundef %new, %struct.card_impl* noundef %after) #0 {
entry:
  %retval = alloca i32, align 4
  %before.addr = alloca %struct.card_impl*, align 8
  %new.addr = alloca %struct.card_impl*, align 8
  %after.addr = alloca %struct.card_impl*, align 8
  store %struct.card_impl* %before, %struct.card_impl** %before.addr, align 8
  store %struct.card_impl* %new, %struct.card_impl** %new.addr, align 8
  store %struct.card_impl* %after, %struct.card_impl** %after.addr, align 8
  %0 = load %struct.card_impl*, %struct.card_impl** %after.addr, align 8
  %cmp = icmp eq %struct.card_impl* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort_card_by_rank(%struct.card_impl* noundef %before, %struct.card_impl* noundef %new, %struct.card_impl* noundef %after) #0 {
entry:
  %retval = alloca i32, align 4
  %before.addr = alloca %struct.card_impl*, align 8
  %new.addr = alloca %struct.card_impl*, align 8
  %after.addr = alloca %struct.card_impl*, align 8
  %r = alloca i32, align 4
  store %struct.card_impl* %before, %struct.card_impl** %before.addr, align 8
  store %struct.card_impl* %new, %struct.card_impl** %new.addr, align 8
  store %struct.card_impl* %after, %struct.card_impl** %after.addr, align 8
  %0 = load %struct.card_impl*, %struct.card_impl** %new.addr, align 8
  %call = call i32 @get_card_rank(%struct.card_impl* noundef %0)
  store i32 %call, i32* %r, align 4
  %1 = load %struct.card_impl*, %struct.card_impl** %after.addr, align 8
  %cmp = icmp eq %struct.card_impl* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.card_impl*, %struct.card_impl** %before.addr, align 8
  %cmp1 = icmp eq %struct.card_impl* %2, null
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %r, align 4
  %4 = load %struct.card_impl*, %struct.card_impl** %before.addr, align 8
  %call3 = call i32 @get_card_rank(%struct.card_impl* noundef %4)
  %cmp4 = icmp ugt i32 %3, %call3
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2, %lor.lhs.false
  %5 = load i32, i32* %r, align 4
  %6 = load %struct.card_impl*, %struct.card_impl** %after.addr, align 8
  %call5 = call i32 @get_card_rank(%struct.card_impl* noundef %6)
  %cmp6 = icmp ule i32 %5, %call5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.card_hand_impl* @create_hand(i8 noundef zeroext %max, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* noundef %sorter) #0 {
entry:
  %retval = alloca %struct.card_hand_impl*, align 8
  %max.addr = alloca i8, align 1
  %sorter.addr = alloca i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, align 8
  %h = alloca %struct.card_hand_impl*, align 8
  store i8 %max, i8* %max.addr, align 1
  store i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* %sorter, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #6
  %0 = bitcast i8* %call to %struct.card_hand_impl*
  store %struct.card_hand_impl* %0, %struct.card_hand_impl** %h, align 8
  %1 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h, align 8
  %cmp = icmp eq %struct.card_hand_impl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.card_hand_impl* null, %struct.card_hand_impl** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter.addr, align 8
  %cmp1 = icmp eq i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* @sort_card_after, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i8, i8* %max.addr, align 1
  %4 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h, align 8
  %max4 = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %4, i32 0, i32 0
  store i8 %3, i8* %max4, align 8
  %5 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h, align 8
  %len = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %5, i32 0, i32 1
  store i8 0, i8* %len, align 1
  %6 = load i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter.addr, align 8
  %7 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h, align 8
  %sorter5 = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %7, i32 0, i32 2
  store i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* %6, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter5, align 8
  %8 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h, align 8
  %cards = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %8, i32 0, i32 3
  store %struct.card_collection* null, %struct.card_collection** %cards, align 8
  %9 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h, align 8
  store %struct.card_hand_impl* %9, %struct.card_hand_impl** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %10 = load %struct.card_hand_impl*, %struct.card_hand_impl** %retval, align 8
  ret %struct.card_hand_impl* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_hand(%struct.card_hand_impl* noundef %h) #0 {
entry:
  %h.addr = alloca %struct.card_hand_impl*, align 8
  store %struct.card_hand_impl* %h, %struct.card_hand_impl** %h.addr, align 8
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %len = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %0, i32 0, i32 1
  store i8 0, i8* %len, align 1
  %1 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %cards = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %1, i32 0, i32 3
  call void @destroy_collection(%struct.card_collection** noundef %cards, void (i8**)* noundef null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_into_hand(%struct.card_hand_impl* noundef %h, %struct.card_impl* noundef %c) #0 {
entry:
  %h.addr = alloca %struct.card_hand_impl*, align 8
  %c.addr = alloca %struct.card_impl*, align 8
  store %struct.card_hand_impl* %h, %struct.card_hand_impl** %h.addr, align 8
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %max = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %0, i32 0, i32 0
  %1 = load i8, i8* %max, align 8
  %conv = zext i8 %1 to i32
  %2 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %len = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %2, i32 0, i32 1
  %3 = load i8, i8* %len, align 1
  %conv1 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %cards = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %4, i32 0, i32 3
  %5 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %6 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %sorter = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %6, i32 0, i32 2
  %7 = load i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)*, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)** %sorter, align 8
  %call = call i32 @insert_into_collection(%struct.card_collection** noundef %cards, %struct.card_impl* noundef %5, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* noundef %7)
  %8 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %len3 = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %8, i32 0, i32 1
  %9 = load i8, i8* %len3, align 1
  %inc = add i8 %9, 1
  store i8 %inc, i8* %len3, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @count_cards_in_hand(%struct.card_hand_impl* noundef %h) #0 {
entry:
  %h.addr = alloca %struct.card_hand_impl*, align 8
  store %struct.card_hand_impl* %h, %struct.card_hand_impl** %h.addr, align 8
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %len = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %0, i32 0, i32 1
  %1 = load i8, i8* %len, align 1
  %conv = zext i8 %1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_max_of_hand(%struct.card_hand_impl* noundef %h) #0 {
entry:
  %h.addr = alloca %struct.card_hand_impl*, align 8
  store %struct.card_hand_impl* %h, %struct.card_hand_impl** %h.addr, align 8
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %max = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %0, i32 0, i32 0
  %1 = load i8, i8* %max, align 8
  %conv = zext i8 %1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_max_rank_of_hand(%struct.card_hand_impl* noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.card_hand_impl*, align 8
  %itr = alloca %struct.card_collection*, align 8
  %cr = alloca i32, align 4
  %this_cr = alloca i32, align 4
  store %struct.card_hand_impl* %h, %struct.card_hand_impl** %h.addr, align 8
  store %struct.card_collection* null, %struct.card_collection** %itr, align 8
  store i32 14, i32* %cr, align 4
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %len = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %0, i32 0, i32 1
  %1 = load i8, i8* %len, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %cr, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %3 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %cards = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %3, i32 0, i32 3
  %4 = load %struct.card_collection*, %struct.card_collection** %cards, align 8
  %call = call i32 @iterate_collection(%struct.card_collection* noundef %4, %struct.card_collection** noundef %itr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %c = getelementptr inbounds %struct.card_collection, %struct.card_collection* %5, i32 0, i32 2
  %6 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  %call2 = call i32 @get_card_rank(%struct.card_impl* noundef %6)
  store i32 %call2, i32* %this_cr, align 4
  %7 = load i32, i32* %cr, align 4
  %cmp3 = icmp eq i32 %7, 14
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %8 = load i32, i32* %this_cr, align 4
  store i32 %8, i32* %cr, align 4
  br label %if.end10

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %this_cr, align 4
  %10 = load i32, i32* %cr, align 4
  %cmp6 = icmp ugt i32 %9, %10
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  %11 = load i32, i32* %this_cr, align 4
  store i32 %11, i32* %cr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then5
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %cr, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_hand_under_itr(%struct.card_hand_impl* noundef %h, %struct.card_collection** noundef %itr, i64* noundef %pos) #0 {
entry:
  %h.addr = alloca %struct.card_hand_impl*, align 8
  %itr.addr = alloca %struct.card_collection**, align 8
  %pos.addr = alloca i64*, align 8
  store %struct.card_hand_impl* %h, %struct.card_hand_impl** %h.addr, align 8
  store %struct.card_collection** %itr, %struct.card_collection*** %itr.addr, align 8
  store i64* %pos, i64** %pos.addr, align 8
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %cards = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %0, i32 0, i32 3
  %1 = load %struct.card_collection**, %struct.card_collection*** %itr.addr, align 8
  call void @remove_from_collection_under_itr(%struct.card_collection** noundef %cards, %struct.card_collection** noundef %1, void (i8**)* noundef null)
  %2 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %len = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %2, i32 0, i32 1
  %3 = load i8, i8* %len, align 1
  %dec = add i8 %3, -1
  store i8 %dec, i8* %len, align 1
  %4 = load i64*, i64** %pos.addr, align 8
  %cmp = icmp ne i64* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %pos.addr, align 8
  %6 = load i64, i64* %5, align 8
  %sub = sub i64 %6, 1
  store i64 %sub, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iterate_hand(%struct.card_hand_impl* noundef %h, i32 (i64, i64, %struct.card_impl*)* noundef %itr_fn) #0 {
entry:
  %h.addr = alloca %struct.card_hand_impl*, align 8
  %itr_fn.addr = alloca i32 (i64, i64, %struct.card_impl*)*, align 8
  %itr = alloca %struct.card_collection*, align 8
  %pos = alloca i64, align 8
  %is_stopped = alloca i32, align 4
  store %struct.card_hand_impl* %h, %struct.card_hand_impl** %h.addr, align 8
  store i32 (i64, i64, %struct.card_impl*)* %itr_fn, i32 (i64, i64, %struct.card_impl*)** %itr_fn.addr, align 8
  store %struct.card_collection* null, %struct.card_collection** %itr, align 8
  store i64 0, i64* %pos, align 8
  store i32 0, i32* %is_stopped, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %is_stopped, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %cards = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %1, i32 0, i32 3
  %2 = load %struct.card_collection*, %struct.card_collection** %cards, align 8
  %call = call i32 @iterate_collection(%struct.card_collection* noundef %2, %struct.card_collection** noundef %itr)
  %tobool1 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32 (i64, i64, %struct.card_impl*)*, i32 (i64, i64, %struct.card_impl*)** %itr_fn.addr, align 8
  %5 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %len = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %5, i32 0, i32 1
  %6 = load i8, i8* %len, align 1
  %conv = zext i8 %6 to i64
  %7 = load i64, i64* %pos, align 8
  %8 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %c = getelementptr inbounds %struct.card_collection, %struct.card_collection* %8, i32 0, i32 2
  %9 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  %call2 = call i32 %4(i64 noundef %conv, i64 noundef %7, %struct.card_impl* noundef %9)
  switch i32 %call2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %while.body
  br label %sw.epilog

sw.bb3:                                           ; preds = %while.body
  store i32 1, i32* %is_stopped, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %10 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  call void @remove_from_hand_under_itr(%struct.card_hand_impl* noundef %10, %struct.card_collection** noundef %itr, i64* noundef %pos)
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %11 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  call void @remove_from_hand_under_itr(%struct.card_hand_impl* noundef %11, %struct.card_collection** noundef %itr, i64* noundef %pos)
  store i32 1, i32* %is_stopped, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %12 = load i64, i64* %pos, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_from_hand(%struct.card_hand_impl* noundef %h, i32 noundef %c) #0 {
entry:
  %h.addr = alloca %struct.card_hand_impl*, align 8
  %c.addr = alloca i32, align 4
  %itr = alloca %struct.card_collection*, align 8
  store %struct.card_hand_impl* %h, %struct.card_hand_impl** %h.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.card_collection* null, %struct.card_collection** %itr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  %cards = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %0, i32 0, i32 3
  %1 = load %struct.card_collection*, %struct.card_collection** %cards, align 8
  %call = call i32 @iterate_collection(%struct.card_collection* noundef %1, %struct.card_collection** noundef %itr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.card_collection*, %struct.card_collection** %itr, align 8
  %c1 = getelementptr inbounds %struct.card_collection, %struct.card_collection* %2, i32 0, i32 2
  %3 = load %struct.card_impl*, %struct.card_impl** %c1, align 8
  %call2 = call i32 @get_card_suit_rank(%struct.card_impl* noundef %3)
  %4 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %call2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.card_hand_impl*, %struct.card_hand_impl** %h.addr, align 8
  call void @remove_from_hand_under_itr(%struct.card_hand_impl* noundef %5, %struct.card_collection** noundef %itr, i64* noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_hand(%struct.card_hand_impl** noundef %h_ptr) #0 {
entry:
  %h_ptr.addr = alloca %struct.card_hand_impl**, align 8
  store %struct.card_hand_impl** %h_ptr, %struct.card_hand_impl*** %h_ptr.addr, align 8
  %0 = load %struct.card_hand_impl**, %struct.card_hand_impl*** %h_ptr.addr, align 8
  %1 = load %struct.card_hand_impl*, %struct.card_hand_impl** %0, align 8
  %cmp = icmp eq %struct.card_hand_impl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.card_hand_impl**, %struct.card_hand_impl*** %h_ptr.addr, align 8
  %3 = load %struct.card_hand_impl*, %struct.card_hand_impl** %2, align 8
  %cards = getelementptr inbounds %struct.card_hand_impl, %struct.card_hand_impl* %3, i32 0, i32 3
  call void @destroy_collection(%struct.card_collection** noundef %cards, void (i8**)* noundef null)
  %4 = load %struct.card_hand_impl**, %struct.card_hand_impl*** %h_ptr.addr, align 8
  %5 = load %struct.card_hand_impl*, %struct.card_hand_impl** %4, align 8
  %6 = bitcast %struct.card_hand_impl* %5 to i8*
  call void @free(i8* noundef %6) #6
  %7 = load %struct.card_hand_impl**, %struct.card_hand_impl*** %h_ptr.addr, align 8
  store %struct.card_hand_impl* null, %struct.card_hand_impl** %7, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_card_in_deck(i32 noundef %c, %struct.card_deck_impl* noundef %d) #0 {
entry:
  %c.addr = alloca i32, align 4
  %d.addr = alloca %struct.card_deck_impl*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.card_deck_impl* %d, %struct.card_deck_impl** %d.addr, align 8
  %0 = load %struct.card_deck_impl*, %struct.card_deck_impl** %d.addr, align 8
  %cards = getelementptr inbounds %struct.card_deck_impl, %struct.card_deck_impl* %0, i32 0, i32 1
  %1 = load i32, i32* %c.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [52 x %struct.card_impl], [52 x %struct.card_impl]* %cards, i64 0, i64 %idxprom
  %call = call i32 @get_card_suit_rank(%struct.card_impl* noundef %arrayidx)
  %cmp = icmp eq i32 %call, 53
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.card_impl* @deal_from_deck(%struct.card_deck_impl* noundef %d) #0 {
entry:
  %retval = alloca %struct.card_impl*, align 8
  %d.addr = alloca %struct.card_deck_impl*, align 8
  %i = alloca i64, align 8
  %valid_card_idx = alloca i64, align 8
  %selected_card_idx = alloca i64, align 8
  %c = alloca %struct.card_impl*, align 8
  store %struct.card_deck_impl* %d, %struct.card_deck_impl** %d.addr, align 8
  %0 = load %struct.card_deck_impl*, %struct.card_deck_impl** %d.addr, align 8
  %card_count = getelementptr inbounds %struct.card_deck_impl, %struct.card_deck_impl* %0, i32 0, i32 0
  %1 = load i8, i8* %card_count, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.card_impl* null, %struct.card_impl** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call i64 @lrand48() #6
  %2 = load %struct.card_deck_impl*, %struct.card_deck_impl** %d.addr, align 8
  %card_count2 = getelementptr inbounds %struct.card_deck_impl, %struct.card_deck_impl* %2, i32 0, i32 0
  %3 = load i8, i8* %card_count2, align 1
  %conv3 = sext i8 %3 to i64
  %rem = srem i64 %call, %conv3
  store i64 %rem, i64* %selected_card_idx, align 8
  store i64 0, i64* %valid_card_idx, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %cmp4 = icmp ult i64 %4, 52
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.card_deck_impl*, %struct.card_deck_impl** %d.addr, align 8
  %cards = getelementptr inbounds %struct.card_deck_impl, %struct.card_deck_impl* %5, i32 0, i32 1
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [52 x %struct.card_impl], [52 x %struct.card_impl]* %cards, i64 0, i64 %6
  store %struct.card_impl* %arrayidx, %struct.card_impl** %c, align 8
  %7 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  %call6 = call i32 @get_card_suit_rank(%struct.card_impl* noundef %7)
  %cmp7 = icmp eq i32 %call6, 53
  br i1 %cmp7, label %if.then9, label %if.end16

if.then9:                                         ; preds = %for.body
  %8 = load i64, i64* %valid_card_idx, align 8
  %9 = load i64, i64* %selected_card_idx, align 8
  %cmp10 = icmp eq i64 %8, %9
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %10 = load i64, i64* %i, align 8
  %conv13 = trunc i64 %10 to i32
  %11 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  call void @write_card(i32 noundef %conv13, %struct.card_impl* noundef %11)
  %12 = load %struct.card_deck_impl*, %struct.card_deck_impl** %d.addr, align 8
  %card_count14 = getelementptr inbounds %struct.card_deck_impl, %struct.card_deck_impl* %12, i32 0, i32 0
  %13 = load i8, i8* %card_count14, align 1
  %dec = add i8 %13, -1
  store i8 %dec, i8* %card_count14, align 1
  br label %for.end

if.end15:                                         ; preds = %if.then9
  %14 = load i64, i64* %valid_card_idx, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %valid_card_idx, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %15 = load i64, i64* %i, align 8
  %inc17 = add i64 %15, 1
  store i64 %inc17, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then12, %for.cond
  %16 = load %struct.card_impl*, %struct.card_impl** %c, align 8
  store %struct.card_impl* %16, %struct.card_impl** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load %struct.card_impl*, %struct.card_impl** %retval, align 8
  ret %struct.card_impl* %17
}

; Function Attrs: nounwind
declare dso_local i64 @lrand48() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strip_card_from_deck(i32 noundef %c, %struct.card_deck_impl* noundef %d) #0 {
entry:
  %c.addr = alloca i32, align 4
  %d.addr = alloca %struct.card_deck_impl*, align 8
  %card = alloca %struct.card_impl*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.card_deck_impl* %d, %struct.card_deck_impl** %d.addr, align 8
  %0 = load %struct.card_deck_impl*, %struct.card_deck_impl** %d.addr, align 8
  %cards = getelementptr inbounds %struct.card_deck_impl, %struct.card_deck_impl* %0, i32 0, i32 1
  %1 = load i32, i32* %c.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [52 x %struct.card_impl], [52 x %struct.card_impl]* %cards, i64 0, i64 %idxprom
  store %struct.card_impl* %arrayidx, %struct.card_impl** %card, align 8
  %2 = load %struct.card_impl*, %struct.card_impl** %card, align 8
  %call = call i32 @get_card_suit_rank(%struct.card_impl* noundef %2)
  %cmp = icmp eq i32 %call, 53
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %4 = load %struct.card_impl*, %struct.card_impl** %card, align 8
  call void @write_card(i32 noundef %3, %struct.card_impl* noundef %4)
  %5 = load %struct.card_deck_impl*, %struct.card_deck_impl** %d.addr, align 8
  %card_count = getelementptr inbounds %struct.card_deck_impl, %struct.card_deck_impl* %5, i32 0, i32 0
  %6 = load i8, i8* %card_count, align 1
  %dec = add i8 %6, -1
  store i8 %dec, i8* %card_count, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.card_deck_impl* @create_shuffled_deck() #0 {
entry:
  %retval = alloca %struct.card_deck_impl*, align 8
  %deck = alloca %struct.card_deck_impl*, align 8
  %call = call noalias i8* @malloc(i64 noundef 53) #6
  %0 = bitcast i8* %call to %struct.card_deck_impl*
  store %struct.card_deck_impl* %0, %struct.card_deck_impl** %deck, align 8
  %1 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  %cmp = icmp eq %struct.card_deck_impl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.card_deck_impl* null, %struct.card_deck_impl** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  %3 = bitcast %struct.card_deck_impl* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 53, i1 false)
  %4 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  %card_count = getelementptr inbounds %struct.card_deck_impl, %struct.card_deck_impl* %4, i32 0, i32 0
  store i8 52, i8* %card_count, align 1
  %5 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  store %struct.card_deck_impl* %5, %struct.card_deck_impl** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.card_deck_impl*, %struct.card_deck_impl** %retval, align 8
  ret %struct.card_deck_impl* %6
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_deck(%struct.card_deck_impl** noundef %d_ptr) #0 {
entry:
  %d_ptr.addr = alloca %struct.card_deck_impl**, align 8
  store %struct.card_deck_impl** %d_ptr, %struct.card_deck_impl*** %d_ptr.addr, align 8
  %0 = load %struct.card_deck_impl**, %struct.card_deck_impl*** %d_ptr.addr, align 8
  %1 = load %struct.card_deck_impl*, %struct.card_deck_impl** %0, align 8
  %cmp = icmp eq %struct.card_deck_impl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.card_deck_impl**, %struct.card_deck_impl*** %d_ptr.addr, align 8
  %3 = load %struct.card_deck_impl*, %struct.card_deck_impl** %2, align 8
  %4 = bitcast %struct.card_deck_impl* %3 to i8*
  call void @free(i8* noundef %4) #6
  %5 = load %struct.card_deck_impl**, %struct.card_deck_impl*** %d_ptr.addr, align 8
  store %struct.card_deck_impl* null, %struct.card_deck_impl** %5, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_args(i64* noundef %game_count, %struct.decided_cards* noundef %decided_cards, i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %game_count.addr = alloca i64*, align 8
  %decided_cards.addr = alloca %struct.decided_cards*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %end = alloca i32, align 4
  %csr = alloca i32, align 4
  %deck = alloca %struct.card_deck_impl*, align 8
  %my_rank = alloca i32, align 4
  %cs = alloca i32, align 4
  %my_card = alloca %struct.card_impl*, align 8
  %opponent_rank = alloca i32, align 4
  %cs45 = alloca i32, align 4
  %opponent_card = alloca %struct.card_impl*, align 8
  store i64* %game_count, i64** %game_count.addr, align 8
  store %struct.decided_cards* %decided_cards, %struct.decided_cards** %decided_cards.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %1, 11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %call2 = call i32 @atoi(i8* noundef %4) #7
  %conv = sext i32 %call2 to i64
  %5 = load i64*, i64** %game_count.addr, align 8
  store i64 %conv, i64* %5, align 8
  %call3 = call %struct.card_deck_impl* @create_shuffled_deck()
  store %struct.card_deck_impl* %call3, %struct.card_deck_impl** %deck, align 8
  %6 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  %cmp4 = icmp eq %struct.card_deck_impl* %6, null
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  store i32 3, i32* %end, align 4
  %8 = load i32, i32* %end, align 4
  %conv9 = trunc i32 %8 to i8
  %9 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %my_card_count = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %9, i32 0, i32 0
  store i8 %conv9, i8* %my_card_count, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %end, align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %cs, align 4
  %12 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr12, i8*** %argv.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %call13 = call i32 @strtorank(i8* noundef %13)
  store i32 %call13, i32* %my_rank, align 4
  %cmp14 = icmp eq i32 %call13, 14
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i64 0, i64 0), i32 noundef %add)
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %for.body
  %16 = load i32, i32* %cs, align 4
  %mul = mul i32 %16, 13
  %17 = load i32, i32* %my_rank, align 4
  %add19 = add i32 %mul, %17
  store i32 %add19, i32* %csr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.end18
  %18 = load i32, i32* %csr, align 4
  %19 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  %call20 = call i32 @is_card_in_deck(i32 noundef %18, %struct.card_deck_impl* noundef %19)
  %tobool = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %cs, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %cs, align 4
  %cmp21 = icmp eq i32 %inc, 4
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body
  br label %while.end

if.end24:                                         ; preds = %while.body
  %21 = load i32, i32* %cs, align 4
  %mul25 = mul i32 %21, 13
  %22 = load i32, i32* %my_rank, align 4
  %add26 = add i32 %mul25, %22
  store i32 %add26, i32* %csr, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.then23, %while.cond
  %23 = load i32, i32* %cs, align 4
  %cmp27 = icmp eq i32 %23, 4
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %while.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %25, 1
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i64 0, i64 0), i32 noundef %add30)
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %while.end
  %26 = load i32, i32* %csr, align 4
  %27 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  call void @strip_card_from_deck(i32 noundef %26, %struct.card_deck_impl* noundef %27)
  %28 = load i32, i32* %csr, align 4
  %call33 = call %struct.card_impl* @create_card(i32 noundef %28)
  store %struct.card_impl* %call33, %struct.card_impl** %my_card, align 8
  %cmp34 = icmp eq %struct.card_impl* %call33, null
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end32
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %30, 1
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i64 0, i64 0), i32 noundef %add37)
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 1, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end32
  %31 = load %struct.card_impl*, %struct.card_impl** %my_card, align 8
  %32 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %my_cards = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %32, i32 0, i32 1
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.card_impl*], [3 x %struct.card_impl*]* %my_cards, i64 0, i64 %idxprom
  store %struct.card_impl* %31, %struct.card_impl** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %34 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %while.cond41

while.cond41:                                     ; preds = %if.end81, %for.end
  %35 = load i8**, i8*** %argv.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %cmp42 = icmp ne i8* %36, null
  br i1 %cmp42, label %while.body44, label %while.end85

while.body44:                                     ; preds = %while.cond41
  store i32 0, i32* %cs45, align 4
  %37 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %incdec.ptr46, i8*** %argv.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %call47 = call i32 @strtorank(i8* noundef %38)
  store i32 %call47, i32* %opponent_rank, align 4
  %cmp48 = icmp eq i32 %call47, 14
  br i1 %cmp48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %while.body44
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %40, 1
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.70, i64 0, i64 0), i32 noundef %add51)
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 1, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %while.body44
  %41 = load i32, i32* %cs45, align 4
  %mul54 = mul i32 %41, 13
  %42 = load i32, i32* %opponent_rank, align 4
  %add55 = add i32 %mul54, %42
  store i32 %add55, i32* %csr, align 4
  br label %while.cond56

while.cond56:                                     ; preds = %if.end65, %if.end53
  %43 = load i32, i32* %csr, align 4
  %44 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  %call57 = call i32 @is_card_in_deck(i32 noundef %43, %struct.card_deck_impl* noundef %44)
  %tobool58 = icmp ne i32 %call57, 0
  %lnot59 = xor i1 %tobool58, true
  br i1 %lnot59, label %while.body60, label %while.end68

while.body60:                                     ; preds = %while.cond56
  %45 = load i32, i32* %cs45, align 4
  %inc61 = add i32 %45, 1
  store i32 %inc61, i32* %cs45, align 4
  %cmp62 = icmp eq i32 %inc61, 4
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %while.body60
  br label %while.end68

if.end65:                                         ; preds = %while.body60
  %46 = load i32, i32* %cs45, align 4
  %mul66 = mul i32 %46, 13
  %47 = load i32, i32* %opponent_rank, align 4
  %add67 = add i32 %mul66, %47
  store i32 %add67, i32* %csr, align 4
  br label %while.cond56, !llvm.loop !13

while.end68:                                      ; preds = %if.then64, %while.cond56
  %48 = load i32, i32* %cs45, align 4
  %cmp69 = icmp eq i32 %48, 4
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %while.end68
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = load i32, i32* %i, align 4
  %add72 = add nsw i32 %50, 1
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.71, i64 0, i64 0), i32 noundef %add72)
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 1, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %while.end68
  %51 = load i32, i32* %csr, align 4
  %52 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  call void @strip_card_from_deck(i32 noundef %51, %struct.card_deck_impl* noundef %52)
  %53 = load i32, i32* %csr, align 4
  %call75 = call %struct.card_impl* @create_card(i32 noundef %53)
  store %struct.card_impl* %call75, %struct.card_impl** %opponent_card, align 8
  %cmp76 = icmp eq %struct.card_impl* %call75, null
  br i1 %cmp76, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end74
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %55, 1
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i32 noundef %add79)
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 1, i32* %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.end74
  %56 = load %struct.card_impl*, %struct.card_impl** %opponent_card, align 8
  %57 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %opponent_cards = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %57, i32 0, i32 3
  %58 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %58 to i64
  %arrayidx83 = getelementptr inbounds [7 x %struct.card_impl*], [7 x %struct.card_impl*]* %opponent_cards, i64 0, i64 %idxprom82
  store %struct.card_impl* %56, %struct.card_impl** %arrayidx83, align 8
  %59 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %59, 1
  store i32 %inc84, i32* %i, align 4
  br label %while.cond41, !llvm.loop !14

while.end85:                                      ; preds = %while.cond41
  %60 = load i32, i32* %i, align 4
  %conv86 = trunc i32 %60 to i8
  %61 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %opponent_card_count = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %61, i32 0, i32 2
  store i8 %conv86, i8* %opponent_card_count, align 8
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end85, %if.then78, %if.then71, %if.then50, %if.then36, %if.then29, %if.then16, %if.then6, %if.then
  %62 = load i32, i32* %retval, align 4
  ret i32 %62
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listener(i8* noundef %arg, i32 noundef %r) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %r.addr = alloca i32, align 4
  %rank_count = alloca i64*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %rank_count, align 8
  %2 = load i32, i32* %r.addr, align 4
  %cmp = icmp ne i32 %2, 14
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %r.addr, align 4
  %cmp1 = icmp ult i32 %3, 4
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %r.addr, align 4
  %cmp2 = icmp ugt i32 %4, 12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %r.addr, align 4
  %call = call i8* @ranktostr(i32 noundef %6)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i64 0, i64 0), i8* noundef %call)
  br label %if.end6

if.end:                                           ; preds = %lor.lhs.false, %entry
  %7 = load i32, i32* %r.addr, align 4
  %cmp4 = icmp ne i32 %7, 14
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load i64*, i64** %rank_count, align 8
  %9 = load i32, i32* %r.addr, align 4
  %sub = sub i32 %9, 4
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %arrayidx, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv, i8** noundef %envp) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %envp.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %end = alloca i32, align 4
  %decided_cards = alloca %struct.decided_cards, align 8
  %game_count = alloca i64, align 8
  %rank_count = alloca [9 x i64], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %envp, i8*** %envp.addr, align 8
  %0 = bitcast [9 x i64]* %rank_count to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 72, i1 false)
  %call = call i64 @time(i64* noundef null) #6
  call void @srand48(i64 noundef %call) #6
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %2, 12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([174 x i8], [174 x i8]* @.str.74, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %4, 1
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 1
  %call3 = call i32 @process_args(i64* noundef %game_count, %struct.decided_cards* noundef %decided_cards, i32 noundef %sub, i8** noundef %arrayidx)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @exit(i32 noundef 1) #8
  unreachable

if.end5:                                          ; preds = %if.end
  %6 = load i64, i64* %game_count, align 8
  %arraydecay = getelementptr inbounds [9 x i64], [9 x i64]* %rank_count, i64 0, i64 0
  %7 = bitcast i64* %arraydecay to i8*
  %call6 = call i32 @simulate_razz_game(%struct.decided_cards* noundef %decided_cards, i64 noundef %6, i8* noundef %7, void (i8*, i32)* noundef @listener)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @exit(i32 noundef 1) #8
  unreachable

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %8 = load i32, i32* %i, align 4
  %my_card_count = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %decided_cards, i32 0, i32 0
  %9 = load i8, i8* %my_card_count, align 8
  %conv = zext i8 %9 to i32
  %cmp10 = icmp slt i32 %8, %conv
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %my_cards = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %decided_cards, i32 0, i32 1
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct.card_impl*], [3 x %struct.card_impl*]* %my_cards, i64 0, i64 %idxprom
  call void @destroy_card(%struct.card_impl** noundef %arrayidx12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end
  %12 = load i32, i32* %i, align 4
  %opponent_card_count = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %decided_cards, i32 0, i32 2
  %13 = load i8, i8* %opponent_card_count, align 8
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp slt i32 %12, %conv14
  br i1 %cmp15, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond13
  %opponent_cards = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %decided_cards, i32 0, i32 3
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [7 x %struct.card_impl*], [7 x %struct.card_impl*]* %opponent_cards, i64 0, i64 %idxprom18
  call void @destroy_card(%struct.card_impl** noundef %arrayidx19)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %15 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond13, !llvm.loop !16

for.end22:                                        ; preds = %for.cond13
  store i32 9, i32* %end, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc33, %for.end22
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %end, align 4
  %cmp24 = icmp slt i32 %16, %17
  br i1 %cmp24, label %for.body26, label %for.end35

for.body26:                                       ; preds = %for.cond23
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 4, %18
  %call27 = call i8* @ranktostr(i32 noundef %add)
  %19 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [9 x i64], [9 x i64]* %rank_count, i64 0, i64 %idxprom28
  %20 = load i64, i64* %arrayidx29, align 8
  %conv30 = uitofp i64 %20 to double
  %21 = load i64, i64* %game_count, align 8
  %conv31 = uitofp i64 %21 to double
  %div = fdiv double %conv30, %conv31
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* noundef %call27, double noundef %div)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body26
  %22 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %22, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond23, !llvm.loop !17

for.end35:                                        ; preds = %for.cond23
  call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @srand48(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simulate_razz_game(%struct.decided_cards* noundef %decided_cards, i64 noundef %game_count, i8* noundef %arg, void (i8*, i32)* noundef %listener) #0 {
entry:
  %retval = alloca i32, align 4
  %decided_cards.addr = alloca %struct.decided_cards*, align 8
  %game_count.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %listener.addr = alloca void (i8*, i32)*, align 8
  %i = alloca i64, align 8
  %my_hand = alloca %struct.card_hand_impl*, align 8
  %deck = alloca %struct.card_deck_impl*, align 8
  store %struct.decided_cards* %decided_cards, %struct.decided_cards** %decided_cards.addr, align 8
  store i64 %game_count, i64* %game_count.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store void (i8*, i32)* %listener, void (i8*, i32)** %listener.addr, align 8
  %call = call %struct.card_hand_impl* @create_hand(i8 noundef zeroext 7, i32 (%struct.card_impl*, %struct.card_impl*, %struct.card_impl*)* noundef @sort_card_by_rank)
  store %struct.card_hand_impl* %call, %struct.card_hand_impl** %my_hand, align 8
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %my_hand, align 8
  %cmp = icmp eq %struct.card_hand_impl* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %game_count.addr, align 8
  %cmp2 = icmp ult i64 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call %struct.card_deck_impl* @create_shuffled_deck()
  store %struct.card_deck_impl* %call3, %struct.card_deck_impl** %deck, align 8
  %4 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  %cmp4 = icmp eq %struct.card_deck_impl* %4, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i64 0, i64 0))
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %for.body
  %6 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  %7 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  call void @strip_deck(%struct.card_deck_impl* noundef %6, %struct.decided_cards* noundef %7)
  %8 = load %struct.card_hand_impl*, %struct.card_hand_impl** %my_hand, align 8
  %9 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %10 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck, align 8
  call void @complete_hand(%struct.card_hand_impl* noundef %8, %struct.decided_cards* noundef %9, %struct.card_deck_impl* noundef %10)
  %11 = load void (i8*, i32)*, void (i8*, i32)** %listener.addr, align 8
  %12 = load i8*, i8** %arg.addr, align 8
  %13 = load %struct.card_hand_impl*, %struct.card_hand_impl** %my_hand, align 8
  %call8 = call i32 @get_razz_rank(%struct.card_hand_impl* noundef %13)
  call void %11(i8* noundef %12, i32 noundef %call8)
  %14 = load %struct.card_hand_impl*, %struct.card_hand_impl** %my_hand, align 8
  call void @reset_hand(%struct.card_hand_impl* noundef %14)
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  call void @destroy_hand(%struct.card_hand_impl** noundef %my_hand)
  call void @destroy_deck(%struct.card_deck_impl** noundef %deck)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_hand(%struct.card_hand_impl* noundef %my_hand, %struct.decided_cards* noundef %decided_cards, %struct.card_deck_impl* noundef %deck) #0 {
entry:
  %my_hand.addr = alloca %struct.card_hand_impl*, align 8
  %decided_cards.addr = alloca %struct.decided_cards*, align 8
  %deck.addr = alloca %struct.card_deck_impl*, align 8
  %i = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.card_hand_impl* %my_hand, %struct.card_hand_impl** %my_hand.addr, align 8
  store %struct.decided_cards* %decided_cards, %struct.decided_cards** %decided_cards.addr, align 8
  store %struct.card_deck_impl* %deck, %struct.card_deck_impl** %deck.addr, align 8
  %0 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %my_card_count = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %0, i32 0, i32 0
  %1 = load i8, i8* %my_card_count, align 8
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %end, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.card_hand_impl*, %struct.card_hand_impl** %my_hand.addr, align 8
  %5 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %my_cards = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %5, i32 0, i32 1
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.card_impl*], [3 x %struct.card_impl*]* %my_cards, i64 0, i64 %idxprom
  %7 = load %struct.card_impl*, %struct.card_impl** %arrayidx, align 8
  call void @insert_into_hand(%struct.card_hand_impl* noundef %4, %struct.card_impl* noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %end, align 4
  %sub = sub nsw i32 7, %9
  store i32 %sub, i32* %end, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc6, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %end, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %for.body5, label %for.end8

for.body5:                                        ; preds = %for.cond2
  %12 = load %struct.card_hand_impl*, %struct.card_hand_impl** %my_hand.addr, align 8
  %13 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck.addr, align 8
  %call = call %struct.card_impl* @deal_from_deck(%struct.card_deck_impl* noundef %13)
  call void @insert_into_hand(%struct.card_hand_impl* noundef %12, %struct.card_impl* noundef %call)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body5
  %14 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond2, !llvm.loop !20

for.end8:                                         ; preds = %for.cond2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @duplicated_rank_remover(i64 noundef %len, i64 noundef %pos, %struct.card_impl* noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %c.addr = alloca %struct.card_impl*, align 8
  %curr_rank = alloca i32, align 4
  store i64 %len, i64* %len.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  %0 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %call = call i32 @get_card_rank(%struct.card_impl* noundef %0)
  store i32 %call, i32* %curr_rank, align 4
  %1 = load i64, i64* %pos.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %curr_rank, align 4
  store i32 %2, i32* @duplicated_rank_remover.prev_rank, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @duplicated_rank_remover.prev_rank, align 4
  %4 = load i32, i32* %curr_rank, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %curr_rank, align 4
  store i32 %5, i32* @duplicated_rank_remover.prev_rank, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @length_trimmer(i64 noundef %len, i64 noundef %pos, %struct.card_impl* noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %c.addr = alloca %struct.card_impl*, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %cmp = icmp uge i64 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @card_printer(i64 noundef %len, i64 noundef %pos, %struct.card_impl* noundef %c) #0 {
entry:
  %len.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %c.addr = alloca %struct.card_impl*, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store %struct.card_impl* %c, %struct.card_impl** %c.addr, align 8
  %0 = load %struct.card_impl*, %struct.card_impl** %c.addr, align 8
  %call = call i32 @get_card_suit_rank(%struct.card_impl* noundef %0)
  %call1 = call i8* @cardtostr(i32 noundef %call)
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i8* noundef %call1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_razz_rank(%struct.card_hand_impl* noundef %hand) #0 {
entry:
  %retval = alloca i32, align 4
  %hand.addr = alloca %struct.card_hand_impl*, align 8
  %r = alloca i32, align 4
  %cards_count = alloca i64, align 8
  store %struct.card_hand_impl* %hand, %struct.card_hand_impl** %hand.addr, align 8
  %0 = load %struct.card_hand_impl*, %struct.card_hand_impl** %hand.addr, align 8
  call void @iterate_hand(%struct.card_hand_impl* noundef %0, i32 (i64, i64, %struct.card_impl*)* noundef @card_printer)
  %1 = load %struct.card_hand_impl*, %struct.card_hand_impl** %hand.addr, align 8
  call void @iterate_hand(%struct.card_hand_impl* noundef %1, i32 (i64, i64, %struct.card_impl*)* noundef @duplicated_rank_remover)
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0))
  %2 = load %struct.card_hand_impl*, %struct.card_hand_impl** %hand.addr, align 8
  call void @iterate_hand(%struct.card_hand_impl* noundef %2, i32 (i64, i64, %struct.card_impl*)* noundef @card_printer)
  %3 = load %struct.card_hand_impl*, %struct.card_hand_impl** %hand.addr, align 8
  %call1 = call i64 @count_cards_in_hand(%struct.card_hand_impl* noundef %3)
  store i64 %call1, i64* %cards_count, align 8
  %4 = load i64, i64* %cards_count, align 8
  %cmp = icmp ult i64 %4, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0))
  store i32 14, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.card_hand_impl*, %struct.card_hand_impl** %hand.addr, align 8
  call void @iterate_hand(%struct.card_hand_impl* noundef %5, i32 (i64, i64, %struct.card_impl*)* noundef @length_trimmer)
  %6 = load %struct.card_hand_impl*, %struct.card_hand_impl** %hand.addr, align 8
  %call3 = call i32 @get_max_rank_of_hand(%struct.card_hand_impl* noundef %6)
  store i32 %call3, i32* %r, align 4
  %7 = load i64, i64* %cards_count, align 8
  %cmp4 = icmp ugt i64 %7, 5
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0))
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0))
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0))
  %8 = load %struct.card_hand_impl*, %struct.card_hand_impl** %hand.addr, align 8
  call void @iterate_hand(%struct.card_hand_impl* noundef %8, i32 (i64, i64, %struct.card_impl*)* noundef @card_printer)
  %9 = load i32, i32* %r, align 4
  %call10 = call i8* @ranktostr(i32 noundef %9)
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0), i8* noundef %call10)
  %10 = load i32, i32* %r, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strip_deck(%struct.card_deck_impl* noundef %deck, %struct.decided_cards* noundef %decided_cards) #0 {
entry:
  %deck.addr = alloca %struct.card_deck_impl*, align 8
  %decided_cards.addr = alloca %struct.decided_cards*, align 8
  %i = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.card_deck_impl* %deck, %struct.card_deck_impl** %deck.addr, align 8
  store %struct.decided_cards* %decided_cards, %struct.decided_cards** %decided_cards.addr, align 8
  %0 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %my_card_count = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %0, i32 0, i32 0
  %1 = load i8, i8* %my_card_count, align 8
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %end, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %my_cards = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %4, i32 0, i32 1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.card_impl*], [3 x %struct.card_impl*]* %my_cards, i64 0, i64 %idxprom
  %6 = load %struct.card_impl*, %struct.card_impl** %arrayidx, align 8
  %call = call i32 @get_card_suit_rank(%struct.card_impl* noundef %6)
  %7 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck.addr, align 8
  call void @strip_card_from_deck(i32 noundef %call, %struct.card_deck_impl* noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %9 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %opponent_card_count = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %9, i32 0, i32 2
  %10 = load i8, i8* %opponent_card_count, align 8
  %conv2 = zext i8 %10 to i32
  store i32 %conv2, i32* %end, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %end, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond3
  %13 = load %struct.decided_cards*, %struct.decided_cards** %decided_cards.addr, align 8
  %opponent_cards = getelementptr inbounds %struct.decided_cards, %struct.decided_cards* %13, i32 0, i32 3
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds [7 x %struct.card_impl*], [7 x %struct.card_impl*]* %opponent_cards, i64 0, i64 %idxprom7
  %15 = load %struct.card_impl*, %struct.card_impl** %arrayidx8, align 8
  %call9 = call i32 @get_card_suit_rank(%struct.card_impl* noundef %15)
  %16 = load %struct.card_deck_impl*, %struct.card_deck_impl** %deck.addr, align 8
  call void @strip_card_from_deck(i32 noundef %call9, %struct.card_deck_impl* noundef %16)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %17 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !22

for.end12:                                        ; preds = %for.cond3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn nounwind }

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
