; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/libpgn.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/libpgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.pgn_metadata_t = type { %struct.__pgn_metadata_item_t*, i64, i64 }
%struct.__pgn_metadata_item_t = type { %struct.pgn_buffer_t*, %struct.pgn_buffer_t* }
%struct.pgn_buffer_t = type { i8*, i64, i64 }
%struct.pgn_alternative_moves_t = type { %struct.pgn_moves_t**, i64, i64 }
%struct.pgn_moves_t = type { %struct.__pgn_moves_item_t*, i64, i64 }
%struct.__pgn_moves_item_t = type { %struct.pgn_move_t, %struct.pgn_move_t }
%struct.pgn_move_t = type { i32, i32, [16 x i8], i32, i8, i8, i32, %struct.pgn_coordinate_t, %struct.pgn_coordinate_t, i32, %struct.pgn_comments_t*, %struct.pgn_alternative_moves_t* }
%struct.pgn_coordinate_t = type { i8, i32 }
%struct.pgn_comments_t = type { %struct.pgn_comment_t*, i64, i64 }
%struct.pgn_comment_t = type { i32, %struct.pgn_buffer_t* }
%struct.pgn_t = type { %struct.pgn_metadata_t*, %struct.pgn_moves_t*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"isdigit(str[++cursor])\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/annotation.c\00", align 1
@__PRETTY_FUNCTION__.__pgn_annotation_nag_from_string = private unnamed_addr constant [68 x i8] c"pgn_annotation_t __pgn_annotation_nag_from_string(char *, size_t *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"!?\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"?!\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"bytes >= 0\00", align 1
@__PRETTY_FUNCTION__.pgn_annotation_to_string = private unnamed_addr constant [58 x i8] c"size_t pgn_annotation_to_string(pgn_annotation_t, char *)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"[%s \22%s\22]\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"{%s} \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" {%s}\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%zu. %s\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%zu... \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Result\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [31 x i8] c"ERROR: file '%s' is not found\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"ERROR: no pgn file provided.\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"ERROR: no subcommand provided.\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"ERROR: unknown subcommand '%s'.\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"check <= 2\00", align 1
@.str.29 = private unnamed_addr constant [93 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/check.c\00", align 1
@__PRETTY_FUNCTION__.__pgn_check_from_string = private unnamed_addr constant [54 x i8] c"pgn_check_t __pgn_check_from_string(char *, size_t *)\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"str[cursor++] == '{'\00", align 1
@.str.31 = private unnamed_addr constant [96 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/comments.c\00", align 1
@__PRETTY_FUNCTION__.__pgn_comment_from_string = private unnamed_addr constant [58 x i8] c"pgn_comment_t __pgn_comment_from_string(char *, size_t *)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"str[cursor++] == '}'\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"str[cursor] != '{'\00", align 1
@__PRETTY_FUNCTION__.pgn_comments_poll = private unnamed_addr constant [76 x i8] c"size_t pgn_comments_poll(pgn_comments_t **, pgn_comment_position_t, char *)\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"str[cursor] != '}'\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"str[++cursor] == '\22'\00", align 1
@.str.36 = private unnamed_addr constant [96 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/metadata.c\00", align 1
@__PRETTY_FUNCTION__.__pgn_metadata_from_string = private unnamed_addr constant [61 x i8] c"pgn_metadata_t *__pgn_metadata_from_string(char *, size_t *)\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"str[++cursor] == ']'\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"str[++cursor] == '-'\00", align 1
@.str.39 = private unnamed_addr constant [93 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/moves.c\00", align 1
@__PRETTY_FUNCTION__.__pgn_move_from_string = private unnamed_addr constant [52 x i8] c"pgn_move_t __pgn_move_from_string(char *, size_t *)\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"str[++cursor] == 'O'\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"islower(str[cursor])\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"isdigit(str[cursor])\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"move.promoted_to != PGN_PIECE_UNKNOWN\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"str[++cursor] == ')'\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"move.dest.file != 0\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"move.dest.rank != 0\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"skipped_whitespace_before_ep\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"str[cursor] == 'e'\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"str[++cursor] == '.'\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"str[++cursor] == 'p'\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"skipped_whitespace_after_ep\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"O-O\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"O-O-O\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"move->piece != PGN_PIECE_UNKNOWN\00", align 1
@__PRETTY_FUNCTION__.pgn_move_to_string = private unnamed_addr constant [48 x i8] c"size_t pgn_move_to_string(pgn_move_t *, char *)\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"move->piece == PGN_PIECE_PAWN\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"move->promoted_to != PGN_PIECE_PAWN\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"e.p.\00", align 1
@__PRETTY_FUNCTION__.__pgn_moves_from_string_recurse = private unnamed_addr constant [83 x i8] c"pgn_moves_t *__pgn_moves_from_string_recurse(char *, size_t *, pgn_moves_t *, int)\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"str[cursor] == '.'\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"dots_count == 1\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"dots_count == 3\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"str[cursor++] == '.'\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"str[cursor++] == ')'\00", align 1
@__PRETTY_FUNCTION__.pgn_alternative_moves_poll = private unnamed_addr constant [94 x i8] c"size_t pgn_alternative_moves_poll(pgn_alternative_moves_t **, pgn_comments_t **, char *, int)\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"Pawn\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"Rook\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Knight\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Bishop\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"Queen\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"King\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"1/2\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"1/2-1/2\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"1-0\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"0-1\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"0-0\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"0-1/2\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"1/2-0\00", align 1
@.str.77 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"str[(*cursor)++] == '\\r'\00", align 1
@.str.79 = private unnamed_addr constant [100 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpgn/utils/cursor.c\00", align 1
@__PRETTY_FUNCTION__.pgn_cursor_skip_newline = private unnamed_addr constant [48 x i8] c"_Bool pgn_cursor_skip_newline(char *, size_t *)\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"str[(*cursor)++] == '\\n'\00", align 1

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
define dso_local i32 @__pgn_annotation_nag_from_string(i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %annotation = alloca i32, align 4
  %cursor = alloca i64, align 8
  %endptr = alloca i8*, align 8
  %num = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  store i32 -1, i32* %annotation, align 4
  store i64 0, i64* %cursor, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 36
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %annotation, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %cursor, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 36
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8
  %7 = load i16*, i16** %call, align 8
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i64, i64* %cursor, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %cursor, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %inc
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %idxprom = sext i32 %conv7 to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %11 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %11 to i32
  %and = and i32 %conv9, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  br label %if.end11

if.else:                                          ; preds = %while.body
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.__pgn_annotation_nag_from_string, i64 0, i64 0)) #9
  unreachable

if.end11:                                         ; preds = %if.then10
  store i8* null, i8** %endptr, align 8
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i64, i64* %cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  %call12 = call i64 @strtol(i8* noundef %add.ptr, i8** noundef %endptr, i32 noundef 10) #10
  store i64 %call12, i64* %num, align 8
  %14 = load i64, i64* %num, align 8
  %conv13 = trunc i64 %14 to i32
  store i32 %conv13, i32* %annotation, align 4
  %15 = load i8*, i8** %endptr, align 8
  %16 = load i8*, i8** %str.addr, align 8
  %17 = load i64, i64* %cursor, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 %17
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load i64, i64* %cursor, align 8
  %add = add i64 %18, %sub.ptr.sub
  store i64 %add, i64* %cursor, align 8
  %19 = load i8*, i8** %str.addr, align 8
  %call15 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %19, i64* noundef %cursor)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %20 = load i8*, i8** %str.addr, align 8
  %call16 = call zeroext i1 @pgn_cursor_revisit_whitespace(i8* noundef %20, i64* noundef %cursor)
  %21 = load i64, i64* %cursor, align 8
  %22 = load i64*, i64** %consumed.addr, align 8
  %23 = load i64, i64* %22, align 8
  %add17 = add i64 %23, %21
  store i64 %add17, i64* %22, align 8
  %24 = load i32, i32* %annotation, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %str, i64* noundef %cursor) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %cursor.addr = alloca i64*, align 8
  %skipped = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i64* %cursor, i64** %cursor.addr, align 8
  store i8 0, i8* %skipped, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i16** @__ctype_b_loc() #8
  %0 = load i16*, i16** %call, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i64*, i64** %cursor.addr, align 8
  %3 = load i64, i64* %2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx1 = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %5 = load i16, i16* %arrayidx1, align 2
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64*, i64** %cursor.addr, align 8
  %7 = load i64, i64* %6, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %6, align 8
  store i8 1, i8* %skipped, align 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %8 = load i8, i8* %skipped, align 1
  %tobool3 = trunc i8 %8 to i1
  ret i1 %tobool3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @pgn_cursor_revisit_whitespace(i8* noundef %str, i64* noundef %cursor) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %cursor.addr = alloca i64*, align 8
  %skipped = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i64* %cursor, i64** %cursor.addr, align 8
  store i8 0, i8* %skipped, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i16** @__ctype_b_loc() #8
  %0 = load i16*, i16** %call, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i64*, i64** %cursor.addr, align 8
  %3 = load i64, i64* %2, align 8
  %sub = sub i64 %3, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx1 = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %5 = load i16, i16* %arrayidx1, align 2
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64*, i64** %cursor.addr, align 8
  %7 = load i64, i64* %6, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %6, align 8
  store i8 1, i8* %skipped, align 1
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %8 = load i8, i8* %skipped, align 1
  %tobool3 = trunc i8 %8 to i1
  ret i1 %tobool3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pgn_annotation_from_string(i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %annotation = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  store i32 -1, i32* %annotation, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %annotation, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 33
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %5 = load i64*, i64** %consumed.addr, align 8
  %6 = load i64, i64* %5, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %5, align 8
  store i32 1, i32* %annotation, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 63
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  %9 = load i64*, i64** %consumed.addr, align 8
  %10 = load i64, i64* %9, align 8
  %inc13 = add i64 %10, 1
  store i64 %inc13, i64* %9, align 8
  store i32 2, i32* %annotation, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end7
  %11 = load i8*, i8** %str.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  %13 = load i32, i32* %annotation, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end14
  %14 = load i8*, i8** %str.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %15 to i32
  %cmp23 = icmp eq i32 %conv22, 33
  br i1 %cmp23, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end20
  %16 = load i8*, i8** %str.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %17 to i32
  %cmp27 = icmp eq i32 %conv26, 33
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %land.lhs.true
  %18 = load i64*, i64** %consumed.addr, align 8
  %19 = load i64, i64* %18, align 8
  %inc30 = add i64 %19, 1
  store i64 %inc30, i64* %18, align 8
  store i32 3, i32* %annotation, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true, %if.end20
  %20 = load i8*, i8** %str.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %21 to i32
  %cmp34 = icmp eq i32 %conv33, 33
  br i1 %cmp34, label %land.lhs.true36, label %if.end43

land.lhs.true36:                                  ; preds = %if.end31
  %22 = load i8*, i8** %str.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %23 to i32
  %cmp39 = icmp eq i32 %conv38, 63
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %land.lhs.true36
  %24 = load i64*, i64** %consumed.addr, align 8
  %25 = load i64, i64* %24, align 8
  %inc42 = add i64 %25, 1
  store i64 %inc42, i64* %24, align 8
  store i32 5, i32* %annotation, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true36, %if.end31
  %26 = load i8*, i8** %str.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %27 to i32
  %cmp46 = icmp eq i32 %conv45, 63
  br i1 %cmp46, label %land.lhs.true48, label %if.end55

land.lhs.true48:                                  ; preds = %if.end43
  %28 = load i8*, i8** %str.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %29 to i32
  %cmp51 = icmp eq i32 %conv50, 33
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %land.lhs.true48
  %30 = load i64*, i64** %consumed.addr, align 8
  %31 = load i64, i64* %30, align 8
  %inc54 = add i64 %31, 1
  store i64 %inc54, i64* %30, align 8
  store i32 6, i32* %annotation, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %land.lhs.true48, %if.end43
  %32 = load i8*, i8** %str.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %33 to i32
  %cmp58 = icmp eq i32 %conv57, 63
  br i1 %cmp58, label %land.lhs.true60, label %if.end67

land.lhs.true60:                                  ; preds = %if.end55
  %34 = load i8*, i8** %str.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %35 to i32
  %cmp63 = icmp eq i32 %conv62, 63
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.lhs.true60
  %36 = load i64*, i64** %consumed.addr, align 8
  %37 = load i64, i64* %36, align 8
  %inc66 = add i64 %37, 1
  store i64 %inc66, i64* %36, align 8
  store i32 4, i32* %annotation, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %land.lhs.true60, %if.end55
  %38 = load i32, i32* %annotation, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end67, %if.then19, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgn_annotation_from_string(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %consumed, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 @__pgn_annotation_from_string(i8* noundef %0, i64* noundef %consumed)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pgn_annotation_to_string(i32 noundef %annotation, i8* noundef %dest) #0 {
entry:
  %retval = alloca i64, align 8
  %annotation.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %bytes = alloca i32, align 4
  store i32 %annotation, i32* %annotation.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  %0 = load i32, i32* %annotation.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %1 = load i8*, i8** %dest.addr, align 8
  %call = call i8* @strcpy(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #10
  store i64 1, i64* %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = load i8*, i8** %dest.addr, align 8
  %call4 = call i8* @strcpy(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  store i64 1, i64* %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  %3 = load i8*, i8** %dest.addr, align 8
  %call6 = call i8* @strcpy(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #10
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  %4 = load i8*, i8** %dest.addr, align 8
  %call8 = call i8* @strcpy(i8* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #10
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  %5 = load i8*, i8** %dest.addr, align 8
  %call10 = call i8* @strcpy(i8* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #10
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  %6 = load i8*, i8** %dest.addr, align 8
  %call12 = call i8* @strcpy(i8* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #10
  store i64 2, i64* %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry, %sw.bb1
  %7 = load i8*, i8** %dest.addr, align 8
  %8 = load i32, i32* %annotation.addr, align 4
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 noundef %8) #10
  store i32 %call13, i32* %bytes, align 4
  %9 = load i32, i32* %bytes, align 4
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.pgn_annotation_to_string, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %10 = load i32, i32* %bytes, align 4
  %conv = sext i32 %10 to i64
  store i64 %conv, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb
  %11 = load i64, i64* %retval, align 8
  ret i64 %11
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmt_print_tab(i32 noundef %depth, i32 noundef %width) #0 {
entry:
  %depth.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %depth.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end6:                                         ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @fmt_print_metadata(%struct.pgn_metadata_t* noundef %mt) #0 {
entry:
  %mt.addr = alloca %struct.pgn_metadata_t*, align 8
  %printed = alloca i8, align 1
  %i = alloca i64, align 8
  store %struct.pgn_metadata_t* %mt, %struct.pgn_metadata_t** %mt.addr, align 8
  store i8 0, i8* %printed, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %mt.addr, align 8
  %length = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %mt.addr, align 8
  %items = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %3, i32 0, i32 0
  %4 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %4, i64 %5
  %key = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %arrayidx, i32 0, i32 0
  %6 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key, align 8
  %buf = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %6, i32 0, i32 0
  %7 = load i8*, i8** %buf, align 8
  %8 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %mt.addr, align 8
  %items1 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %8, i32 0, i32 0
  %9 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items1, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %9, i64 %10
  %value = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %arrayidx2, i32 0, i32 1
  %11 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value, align 8
  %buf3 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %11, i32 0, i32 0
  %12 = load i8*, i8** %buf3, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* noundef %7, i8* noundef %12)
  store i8 1, i8* %printed, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %14 = load i8, i8* %printed, align 1
  %tobool = trunc i8 %14 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @fmt_print_alternative_moves(%struct.pgn_alternative_moves_t* noundef %alt, i32 noundef %depth, i64 noundef %last_number) #0 {
entry:
  %alt.addr = alloca %struct.pgn_alternative_moves_t*, align 8
  %depth.addr = alloca i32, align 4
  %last_number.addr = alloca i64, align 8
  %printed = alloca i8, align 1
  %i = alloca i64, align 8
  store %struct.pgn_alternative_moves_t* %alt, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i64 %last_number, i64* %last_number.addr, align 8
  store i8 0, i8* %printed, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %length = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %3 = load i32, i32* %depth.addr, align 4
  call void @fmt_print_tab(i32 noundef %3, i32 noundef 4)
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %4 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %values = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %4, i32 0, i32 0
  %5 = load %struct.pgn_moves_t**, %struct.pgn_moves_t*** %values, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.pgn_moves_t*, %struct.pgn_moves_t** %5, i64 %6
  %7 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %arrayidx, align 8
  %8 = load i32, i32* %depth.addr, align 4
  %9 = load i64, i64* %last_number.addr, align 8
  %call2 = call zeroext i1 @fmt_print_moves(%struct.pgn_moves_t* noundef %7, i32 noundef %8, i64 noundef %9, i1 noundef zeroext false)
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %11 = load i8, i8* %printed, align 1
  %tobool = trunc i8 %11 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @fmt_print_moves(%struct.pgn_moves_t* noundef %moves, i32 noundef %depth, i64 noundef %last_number, i1 noundef zeroext %root) #0 {
entry:
  %moves.addr = alloca %struct.pgn_moves_t*, align 8
  %depth.addr = alloca i32, align 4
  %last_number.addr = alloca i64, align 8
  %root.addr = alloca i8, align 1
  %printed = alloca i8, align 1
  %i = alloca i64, align 8
  %white = alloca %struct.pgn_move_t, align 8
  %black = alloca %struct.pgn_move_t, align 8
  %white_printed = alloca i8, align 1
  %black_printed = alloca i8, align 1
  store %struct.pgn_moves_t* %moves, %struct.pgn_moves_t** %moves.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i64 %last_number, i64* %last_number.addr, align 8
  %frombool = zext i1 %root to i8
  store i8 %frombool, i8* %root.addr, align 1
  store i8 0, i8* %printed, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %length = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %3, i32 0, i32 0
  %4 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %4, i64 %5
  %white1 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx, i32 0, i32 0
  %6 = bitcast %struct.pgn_move_t* %white to i8*
  %7 = bitcast %struct.pgn_move_t* %white1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 72, i1 false)
  %8 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values2 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %8, i32 0, i32 0
  %9 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values2, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %9, i64 %10
  %black4 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx3, i32 0, i32 1
  %11 = bitcast %struct.pgn_move_t* %black to i8*
  %12 = bitcast %struct.pgn_move_t* %black4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 72, i1 false)
  %13 = load i32, i32* %depth.addr, align 4
  %conv = sext i32 %13 to i64
  %14 = load i64, i64* %last_number.addr, align 8
  %15 = load i64, i64* %i, align 8
  %add = add i64 %14, %15
  %call = call zeroext i1 @__fmt_print_white(%struct.pgn_move_t* noundef %white, i64 noundef %conv, i64 noundef %add)
  %frombool5 = zext i1 %call to i8
  store i8 %frombool5, i8* %white_printed, align 1
  %16 = load i32, i32* %depth.addr, align 4
  %conv6 = sext i32 %16 to i64
  %17 = load i64, i64* %last_number.addr, align 8
  %18 = load i64, i64* %i, align 8
  %add7 = add i64 %17, %18
  %19 = load i8, i8* %white_printed, align 1
  %tobool = trunc i8 %19 to i1
  %call8 = call zeroext i1 @__fmt_print_black(%struct.pgn_move_t* noundef %black, i64 noundef %conv6, i64 noundef %add7, i1 noundef zeroext %tobool)
  %frombool9 = zext i1 %call8 to i8
  store i8 %frombool9, i8* %black_printed, align 1
  %20 = load i64, i64* %i, align 8
  %21 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %length10 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %21, i32 0, i32 1
  %22 = load i64, i64* %length10, align 8
  %sub = sub i64 %22, 1
  %cmp11 = icmp ne i64 %20, %sub
  br i1 %cmp11, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %23 = load i32, i32* %depth.addr, align 4
  call void @fmt_print_tab(i32 noundef %23, i32 noundef 4)
  %24 = load i8, i8* %root.addr, align 1
  %tobool14 = trunc i8 %24 to i1
  br i1 %tobool14, label %if.end, label %if.then15

if.then15:                                        ; preds = %if.then
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  br label %if.end17

if.end17:                                         ; preds = %if.end, %for.body
  store i8 1, i8* %printed, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %25 = load i64, i64* %i, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %26 = load i8, i8* %printed, align 1
  %tobool18 = trunc i8 %26 to i1
  ret i1 %tobool18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__fmt_print_comment_before(%struct.pgn_comments_t* noundef %comments) #0 {
entry:
  %comments.addr = alloca %struct.pgn_comments_t*, align 8
  %printed = alloca i8, align 1
  %i = alloca i64, align 8
  %comment = alloca %struct.pgn_comment_t, align 8
  store %struct.pgn_comments_t* %comments, %struct.pgn_comments_t** %comments.addr, align 8
  store i8 0, i8* %printed, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %length = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %values = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %3, i32 0, i32 0
  %4 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %values, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %4, i64 %5
  %6 = bitcast %struct.pgn_comment_t* %comment to i8*
  %7 = bitcast %struct.pgn_comment_t* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %position = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %comment, i32 0, i32 0
  %8 = load i32, i32* %position, align 8
  %cmp1 = icmp eq i32 %8, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %value = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %comment, i32 0, i32 1
  %9 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value, align 8
  %buf = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %9, i32 0, i32 0
  %10 = load i8*, i8** %buf, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i8 1, i8* %printed, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %12 = load i8, i8* %printed, align 1
  %tobool = trunc i8 %12 to i1
  ret i1 %tobool
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__fmt_print_comment_after(%struct.pgn_comments_t* noundef %comments) #0 {
entry:
  %comments.addr = alloca %struct.pgn_comments_t*, align 8
  %printed = alloca i8, align 1
  %i = alloca i64, align 8
  %comment = alloca %struct.pgn_comment_t, align 8
  store %struct.pgn_comments_t* %comments, %struct.pgn_comments_t** %comments.addr, align 8
  store i8 0, i8* %printed, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %length = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %values = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %3, i32 0, i32 0
  %4 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %values, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %4, i64 %5
  %6 = bitcast %struct.pgn_comment_t* %comment to i8*
  %7 = bitcast %struct.pgn_comment_t* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %position = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %comment, i32 0, i32 0
  %8 = load i32, i32* %position, align 8
  %cmp1 = icmp eq i32 %8, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %value = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %comment, i32 0, i32 1
  %9 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value, align 8
  %buf = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %9, i32 0, i32 0
  %10 = load i8*, i8** %buf, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i8 1, i8* %printed, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %12 = load i8, i8* %printed, align 1
  %tobool = trunc i8 %12 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__fmt_print_white(%struct.pgn_move_t* noundef %move, i64 noundef %depth, i64 noundef %number) #0 {
entry:
  %move.addr = alloca %struct.pgn_move_t*, align 8
  %depth.addr = alloca i64, align 8
  %number.addr = alloca i64, align 8
  %printed = alloca i8, align 1
  store %struct.pgn_move_t* %move, %struct.pgn_move_t** %move.addr, align 8
  store i64 %depth, i64* %depth.addr, align 8
  store i64 %number, i64* %number.addr, align 8
  store i8 0, i8* %printed, align 1
  %0 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %notation = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %notation, i64 0, i64 0
  %1 = load i8, i8* %arrayidx, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %comments = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %2, i32 0, i32 10
  %3 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %tobool1 = icmp ne %struct.pgn_comments_t* %3, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %comments3 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %4, i32 0, i32 10
  %5 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments3, align 8
  %call = call zeroext i1 @__fmt_print_comment_before(%struct.pgn_comments_t* noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load i64, i64* %number.addr, align 8
  %7 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %notation4 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %notation4, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 noundef %6, i8* noundef %arraydecay)
  %8 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %comments6 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %8, i32 0, i32 10
  %9 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments6, align 8
  %tobool7 = icmp ne %struct.pgn_comments_t* %9, null
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %10 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %comments9 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %10, i32 0, i32 10
  %11 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments9, align 8
  %call10 = call zeroext i1 @__fmt_print_comment_after(%struct.pgn_comments_t* noundef %11)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %12 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %alternatives = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %12, i32 0, i32 11
  %13 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alternatives, align 8
  %tobool12 = icmp ne %struct.pgn_alternative_moves_t* %13, null
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  %14 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %alternatives14 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %14, i32 0, i32 11
  %15 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alternatives14, align 8
  %16 = load i64, i64* %depth.addr, align 8
  %add = add i64 %16, 1
  %conv = trunc i64 %add to i32
  %17 = load i64, i64* %number.addr, align 8
  %call15 = call zeroext i1 @fmt_print_alternative_moves(%struct.pgn_alternative_moves_t* noundef %15, i32 noundef %conv, i64 noundef %17)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11
  store i8 1, i8* %printed, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  %18 = load i8, i8* %printed, align 1
  %tobool18 = trunc i8 %18 to i1
  ret i1 %tobool18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__fmt_print_black(%struct.pgn_move_t* noundef %move, i64 noundef %depth, i64 noundef %number, i1 noundef zeroext %white_printed) #0 {
entry:
  %move.addr = alloca %struct.pgn_move_t*, align 8
  %depth.addr = alloca i64, align 8
  %number.addr = alloca i64, align 8
  %white_printed.addr = alloca i8, align 1
  %printed = alloca i8, align 1
  store %struct.pgn_move_t* %move, %struct.pgn_move_t** %move.addr, align 8
  store i64 %depth, i64* %depth.addr, align 8
  store i64 %number, i64* %number.addr, align 8
  %frombool = zext i1 %white_printed to i8
  store i8 %frombool, i8* %white_printed.addr, align 1
  store i8 0, i8* %printed, align 1
  %0 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %notation = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %notation, i64 0, i64 0
  %1 = load i8, i8* %arrayidx, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %white_printed.addr, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %comments = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %3, i32 0, i32 10
  %4 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %tobool3 = icmp ne %struct.pgn_comments_t* %4, null
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %5 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %comments5 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %5, i32 0, i32 10
  %6 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments5, align 8
  %call6 = call zeroext i1 @__fmt_print_comment_before(%struct.pgn_comments_t* noundef %6)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %7 = load i8, i8* %white_printed.addr, align 1
  %tobool8 = trunc i8 %7 to i1
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %8 = load i64, i64* %number.addr, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i64 noundef %8)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %9 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %notation12 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %notation12, i64 0, i64 0
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %arraydecay)
  %10 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %comments14 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %10, i32 0, i32 10
  %11 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments14, align 8
  %tobool15 = icmp ne %struct.pgn_comments_t* %11, null
  br i1 %tobool15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  %12 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %comments17 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %12, i32 0, i32 10
  %13 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments17, align 8
  %call18 = call zeroext i1 @__fmt_print_comment_after(%struct.pgn_comments_t* noundef %13)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11
  %14 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %alternatives = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %14, i32 0, i32 11
  %15 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alternatives, align 8
  %tobool20 = icmp ne %struct.pgn_alternative_moves_t* %15, null
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end19
  %16 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %alternatives22 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %16, i32 0, i32 11
  %17 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alternatives22, align 8
  %18 = load i64, i64* %depth.addr, align 8
  %add = add i64 %18, 1
  %conv = trunc i64 %add to i32
  %19 = load i64, i64* %number.addr, align 8
  %call23 = call zeroext i1 @fmt_print_alternative_moves(%struct.pgn_alternative_moves_t* noundef %17, i32 noundef %conv, i64 noundef %19)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19
  store i8 1, i8* %printed, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %entry
  %20 = load i8, i8* %printed, align 1
  %tobool26 = trunc i8 %20 to i1
  ret i1 %tobool26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @fmt_print_score(%struct.pgn_t* noundef %pgn) #0 {
entry:
  %retval = alloca i1, align 1
  %pgn.addr = alloca %struct.pgn_t*, align 8
  %score = alloca i8*, align 8
  store %struct.pgn_t* %pgn, %struct.pgn_t** %pgn.addr, align 8
  %0 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %metadata = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %0, i32 0, i32 0
  %1 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  %call = call i8* @pgn_metadata_get(%struct.pgn_metadata_t* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  store i8* %call, i8** %score, align 8
  %2 = load i8*, i8** %score, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %score, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %3)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pgn_metadata_get(%struct.pgn_metadata_t* noundef %metadata, i8* noundef %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %metadata.addr = alloca %struct.pgn_metadata_t*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.pgn_metadata_t* %metadata, %struct.pgn_metadata_t** %metadata.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %length = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %3, i32 0, i32 0
  %4 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %4, i64 %5
  %key1 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %arrayidx, i32 0, i32 0
  %6 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key1, align 8
  %7 = load i8*, i8** %key.addr, align 8
  %call = call zeroext i1 @pgn_buffer_equal(%struct.pgn_buffer_t* noundef %6, i8* noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items2 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %8, i32 0, i32 0
  %9 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items2, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %9, i64 %10
  %value = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %arrayidx3, i32 0, i32 1
  %11 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value, align 8
  %buf = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %11, i32 0, i32 0
  %12 = load i8*, i8** %buf, align 8
  store i8* %12, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmt_print(%struct.pgn_t* noundef %pgn) #0 {
entry:
  %pgn.addr = alloca %struct.pgn_t*, align 8
  store %struct.pgn_t* %pgn, %struct.pgn_t** %pgn.addr, align 8
  %0 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %metadata = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %0, i32 0, i32 0
  %1 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  %call = call zeroext i1 @fmt_print_metadata(%struct.pgn_metadata_t* noundef %1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %moves = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %2, i32 0, i32 1
  %3 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves, align 8
  %call2 = call zeroext i1 @fmt_print_moves(%struct.pgn_moves_t* noundef %3, i32 noundef 0, i64 noundef 1, i1 noundef zeroext true)
  br i1 %call2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %4 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %call6 = call zeroext i1 @fmt_print_score(%struct.pgn_t* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_file(i8* noundef %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %filesize = alloca i32, align 4
  %buf = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i8* noundef %3)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* noundef %4, i64 noundef 0, i32 noundef 2)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i64 @ftell(%struct._IO_FILE* noundef %5)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %filesize, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @fseek(%struct._IO_FILE* noundef %6, i64 noundef 0, i32 noundef 0)
  %7 = load i32, i32* %filesize, align 4
  %add = add nsw i32 %7, 1
  %conv5 = sext i32 %add to i64
  %mul = mul i64 1, %conv5
  %call6 = call noalias i8* @malloc(i64 noundef %mul) #10
  store i8* %call6, i8** %buf, align 8
  %8 = load i8*, i8** %buf, align 8
  %9 = load i32, i32* %filesize, align 4
  %conv7 = sext i32 %9 to i64
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i64 @fread(i8* noundef %8, i64 noundef 1, i64 noundef %conv7, %struct._IO_FILE* noundef %10)
  %11 = load i8*, i8** %buf, align 8
  %12 = load i32, i32* %filesize, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* noundef %13)
  %14 = load i8*, i8** %buf, align 8
  ret i8* %14
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #4

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #4

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_subcommand_fmt(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %filename = alloca i8*, align 8
  %pgn_file_contents = alloca i8*, align 8
  %saved_ptr = alloca i8*, align 8
  %pgn = alloca %struct.pgn_t*, align 8
  %consumed = alloca i64, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 2
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %filename, align 8
  %4 = load i8*, i8** %filename, align 8
  %call1 = call i8* @read_file(i8* noundef %4)
  store i8* %call1, i8** %pgn_file_contents, align 8
  %5 = load i8*, i8** %pgn_file_contents, align 8
  store i8* %5, i8** %saved_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %6 = load i8*, i8** %pgn_file_contents, align 8
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %while.body, label %while.end14

while.body:                                       ; preds = %while.cond
  %call2 = call %struct.pgn_t* @pgn_init()
  store %struct.pgn_t* %call2, %struct.pgn_t** %pgn, align 8
  %8 = load %struct.pgn_t*, %struct.pgn_t** %pgn, align 8
  %9 = load i8*, i8** %pgn_file_contents, align 8
  %call3 = call i64 @pgn_parse(%struct.pgn_t* noundef %8, i8* noundef %9)
  store i64 %call3, i64* %consumed, align 8
  %10 = load i64, i64* %consumed, align 8
  %11 = load i8*, i8** %pgn_file_contents, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %10
  store i8* %add.ptr, i8** %pgn_file_contents, align 8
  br label %while.cond4

while.cond4:                                      ; preds = %while.body9, %while.body
  %call5 = call i16** @__ctype_b_loc() #8
  %12 = load i16*, i16** %call5, align 8
  %13 = load i8*, i8** %pgn_file_contents, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx6 = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %15 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %15 to i32
  %and = and i32 %conv7, 8192
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond4
  %16 = load i8*, i8** %pgn_file_contents, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %pgn_file_contents, align 8
  br label %while.cond4, !llvm.loop !16

while.end:                                        ; preds = %while.cond4
  %17 = load %struct.pgn_t*, %struct.pgn_t** %pgn, align 8
  call void @fmt_print(%struct.pgn_t* noundef %17)
  %18 = load i8*, i8** %pgn_file_contents, align 8
  %19 = load i8, i8* %18, align 1
  %tobool10 = icmp ne i8 %19, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %while.end
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %while.end
  %20 = load %struct.pgn_t*, %struct.pgn_t** %pgn, align 8
  call void @pgn_cleanup(%struct.pgn_t* noundef %20)
  br label %while.cond, !llvm.loop !17

while.end14:                                      ; preds = %while.cond
  %21 = load i8*, i8** %saved_ptr, align 8
  call void @free(i8* noundef %21) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_t* @pgn_init() #0 {
entry:
  %pgn = alloca %struct.pgn_t*, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #10
  %0 = bitcast i8* %call to %struct.pgn_t*
  store %struct.pgn_t* %0, %struct.pgn_t** %pgn, align 8
  %1 = load %struct.pgn_t*, %struct.pgn_t** %pgn, align 8
  %metadata = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %1, i32 0, i32 0
  store %struct.pgn_metadata_t* null, %struct.pgn_metadata_t** %metadata, align 8
  %2 = load %struct.pgn_t*, %struct.pgn_t** %pgn, align 8
  %moves = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %2, i32 0, i32 1
  store %struct.pgn_moves_t* null, %struct.pgn_moves_t** %moves, align 8
  %3 = load %struct.pgn_t*, %struct.pgn_t** %pgn, align 8
  ret %struct.pgn_t* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pgn_parse(%struct.pgn_t* noundef %pgn, i8* noundef %str) #0 {
entry:
  %pgn.addr = alloca %struct.pgn_t*, align 8
  %str.addr = alloca i8*, align 8
  %cursor = alloca i64, align 8
  store %struct.pgn_t* %pgn, %struct.pgn_t** %pgn.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %cursor, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  %call = call %struct.pgn_metadata_t* @__pgn_metadata_from_string(i8* noundef %add.ptr, i64* noundef %cursor)
  %2 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %metadata = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %2, i32 0, i32 0
  store %struct.pgn_metadata_t* %call, %struct.pgn_metadata_t** %metadata, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %call1 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %3, i64* noundef %cursor)
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %cursor, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %5
  %call3 = call %struct.pgn_moves_t* @__pgn_moves_from_string(i8* noundef %add.ptr2, i64* noundef %cursor)
  %6 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %moves = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %6, i32 0, i32 1
  store %struct.pgn_moves_t* %call3, %struct.pgn_moves_t** %moves, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %cursor, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 %8
  %call5 = call i32 @__pgn_score_from_string(i8* noundef %add.ptr4, i64* noundef %cursor)
  %9 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %score = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %9, i32 0, i32 2
  store i32 %call5, i32* %score, align 8
  %10 = load i64, i64* %cursor, align 8
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_cleanup(%struct.pgn_t* noundef %pgn) #0 {
entry:
  %pgn.addr = alloca %struct.pgn_t*, align 8
  store %struct.pgn_t* %pgn, %struct.pgn_t** %pgn.addr, align 8
  %0 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %metadata = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %0, i32 0, i32 0
  %1 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  %tobool = icmp ne %struct.pgn_metadata_t* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %metadata1 = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %2, i32 0, i32 0
  %3 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata1, align 8
  call void @pgn_metadata_cleanup(%struct.pgn_metadata_t* noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %moves = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %4, i32 0, i32 1
  %5 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves, align 8
  %tobool2 = icmp ne %struct.pgn_moves_t* %5, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %moves4 = getelementptr inbounds %struct.pgn_t, %struct.pgn_t* %6, i32 0, i32 1
  %7 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves4, align 8
  call void @pgn_moves_cleanup(%struct.pgn_moves_t* noundef %7)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load %struct.pgn_t*, %struct.pgn_t** %pgn.addr, align 8
  %9 = bitcast %struct.pgn_t* %8 to i8*
  call void @free(i8* noundef %9) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %subcommand = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0))
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %subcommand, align 8
  %4 = load i8*, i8** %subcommand, align 8
  %call1 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #11
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  call void @run_subcommand_fmt(i32 noundef %5, i8** noundef %6)
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %subcommand, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8* noundef %8)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pgn_check_from_string(i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %cursor = alloca i64, align 8
  %check = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  store i64 0, i64* %cursor, align 8
  store i32 0, i32* %check, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 43, label %sw.bb
    i32 35, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64, i64* %cursor, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv2, 43
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %check, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %check, align 4
  %7 = load i64, i64* %cursor, align 8
  %inc4 = add i64 %7, 1
  store i64 %inc4, i64* %cursor, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %check, align 4
  %cmp5 = icmp sle i32 %8, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  br label %if.end

if.else:                                          ; preds = %while.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.29, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.__pgn_check_from_string, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 -1, i32* %check, align 4
  %9 = load i64, i64* %cursor, align 8
  %inc8 = add i64 %9, 1
  store i64 %inc8, i64* %cursor, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb7, %if.end
  %10 = load i64, i64* %cursor, align 8
  %11 = load i64*, i64** %consumed.addr, align 8
  %12 = load i64, i64* %11, align 8
  %add = add i64 %12, %10
  store i64 %add, i64* %11, align 8
  %13 = load i32, i32* %check, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgn_check_from_string(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %consumed, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 @__pgn_check_from_string(i8* noundef %0, i64* noundef %consumed)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_comment_init(%struct.pgn_comment_t* noundef %comment) #0 {
entry:
  %comment.addr = alloca %struct.pgn_comment_t*, align 8
  store %struct.pgn_comment_t* %comment, %struct.pgn_comment_t** %comment.addr, align 8
  %call = call %struct.pgn_buffer_t* @pgn_buffer_init()
  %0 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %comment.addr, align 8
  %value = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %0, i32 0, i32 1
  store %struct.pgn_buffer_t* %call, %struct.pgn_buffer_t** %value, align 8
  %1 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %comment.addr, align 8
  %position = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %1, i32 0, i32 0
  store i32 0, i32* %position, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_buffer_t* @pgn_buffer_init() #0 {
entry:
  %buf = alloca %struct.pgn_buffer_t*, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #10
  %0 = bitcast i8* %call to %struct.pgn_buffer_t*
  store %struct.pgn_buffer_t* %0, %struct.pgn_buffer_t** %buf, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 16) #10
  %1 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf, align 8
  %buf2 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %1, i32 0, i32 0
  store i8* %call1, i8** %buf2, align 8
  %2 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf, align 8
  %size = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %2, i32 0, i32 2
  store i64 16, i64* %size, align 8
  %3 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf, align 8
  call void @pgn_buffer_reset(%struct.pgn_buffer_t* noundef %3)
  %4 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf, align 8
  ret %struct.pgn_buffer_t* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pgn_comment_value(%struct.pgn_comment_t* noundef %comment) #0 {
entry:
  %comment.addr = alloca %struct.pgn_comment_t*, align 8
  store %struct.pgn_comment_t* %comment, %struct.pgn_comment_t** %comment.addr, align 8
  %0 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %comment.addr, align 8
  %value = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %0, i32 0, i32 1
  %1 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value, align 8
  %buf = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %1, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, %struct.pgn_buffer_t* } @__pgn_comment_from_string(i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %retval = alloca %struct.pgn_comment_t, align 8
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %cursor = alloca i64, align 8
  %left_brace_count = alloca i32, align 4
  %right_brace_count = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  store i64 0, i64* %cursor, align 8
  call void @pgn_comment_init(%struct.pgn_comment_t* noundef %retval)
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %cursor, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 123
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.31, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.__pgn_comment_from_string, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  store i32 1, i32* %left_brace_count, align 4
  store i32 0, i32* %right_brace_count, align 4
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end20
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64, i64* %cursor, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  call void @abort() #9
  unreachable

if.end7:                                          ; preds = %while.body
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i64, i64* %cursor, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 123
  %conv11 = zext i1 %cmp10 to i32
  %9 = load i32, i32* %left_brace_count, align 4
  %add = add i32 %9, %conv11
  store i32 %add, i32* %left_brace_count, align 4
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i64, i64* %cursor, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 125
  %conv15 = zext i1 %cmp14 to i32
  %13 = load i32, i32* %right_brace_count, align 4
  %add16 = add i32 %13, %conv15
  store i32 %add16, i32* %right_brace_count, align 4
  %14 = load i32, i32* %right_brace_count, align 4
  %15 = load i32, i32* %left_brace_count, align 4
  %cmp17 = icmp eq i32 %14, %15
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end7
  br label %while.end

if.end20:                                         ; preds = %if.end7
  %value = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %retval, i32 0, i32 1
  %16 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value, align 8
  %17 = load i8*, i8** %str.addr, align 8
  %18 = load i64, i64* %cursor, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx21, align 1
  call void @pgn_buffer_append(%struct.pgn_buffer_t* noundef %16, i8 noundef signext %19)
  %20 = load i64, i64* %cursor, align 8
  %inc22 = add i64 %20, 1
  store i64 %inc22, i64* %cursor, align 8
  br label %while.body

while.end:                                        ; preds = %if.then19
  %21 = load i8*, i8** %str.addr, align 8
  %22 = load i64, i64* %cursor, align 8
  %inc23 = add i64 %22, 1
  store i64 %inc23, i64* %cursor, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %21, i64 %22
  %23 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 125
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %while.end
  br label %if.end30

if.else29:                                        ; preds = %while.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.31, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.__pgn_comment_from_string, i64 0, i64 0)) #9
  unreachable

if.end30:                                         ; preds = %if.then28
  %value31 = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %retval, i32 0, i32 1
  %24 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value31, align 8
  call void @pgn_buffer_append_null_terminator(%struct.pgn_buffer_t* noundef %24)
  %25 = load i64, i64* %cursor, align 8
  %26 = load i64*, i64** %consumed.addr, align 8
  %27 = load i64, i64* %26, align 8
  %add32 = add i64 %27, %25
  store i64 %add32, i64* %26, align 8
  %28 = bitcast %struct.pgn_comment_t* %retval to { i32, %struct.pgn_buffer_t* }*
  %29 = load { i32, %struct.pgn_buffer_t* }, { i32, %struct.pgn_buffer_t* }* %28, align 8
  ret { i32, %struct.pgn_buffer_t* } %29
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_buffer_append(%struct.pgn_buffer_t* noundef %buf, i8 noundef signext %ch) #0 {
entry:
  %buf.addr = alloca %struct.pgn_buffer_t*, align 8
  %ch.addr = alloca i8, align 1
  store %struct.pgn_buffer_t* %buf, %struct.pgn_buffer_t** %buf.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %length = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %0, i32 0, i32 1
  %1 = load i64, i64* %length, align 8
  %2 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %size = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %2, i32 0, i32 2
  %3 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  call void @pgn_buffer_grow(%struct.pgn_buffer_t* noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %ch.addr, align 1
  %6 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %buf1 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %6, i32 0, i32 0
  %7 = load i8*, i8** %buf1, align 8
  %8 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %length2 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %8, i32 0, i32 1
  %9 = load i64, i64* %length2, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %length2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %9
  store i8 %5, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_buffer_append_null_terminator(%struct.pgn_buffer_t* noundef %buf) #0 {
entry:
  %buf.addr = alloca %struct.pgn_buffer_t*, align 8
  store %struct.pgn_buffer_t* %buf, %struct.pgn_buffer_t** %buf.addr, align 8
  %0 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %length = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %0, i32 0, i32 1
  %1 = load i64, i64* %length, align 8
  %2 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %size = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %2, i32 0, i32 2
  %3 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  call void @pgn_buffer_grow(%struct.pgn_buffer_t* noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %buf1 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %5, i32 0, i32 0
  %6 = load i8*, i8** %buf1, align 8
  %7 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %length2 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %7, i32 0, i32 1
  %8 = load i64, i64* %length2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %8
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_comment_cleanup(%struct.pgn_comment_t* noundef %comment) #0 {
entry:
  %comment.addr = alloca %struct.pgn_comment_t*, align 8
  store %struct.pgn_comment_t* %comment, %struct.pgn_comment_t** %comment.addr, align 8
  %0 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %comment.addr, align 8
  %value = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %0, i32 0, i32 1
  %1 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value, align 8
  call void @pgn_buffer_cleanup(%struct.pgn_buffer_t* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_buffer_cleanup(%struct.pgn_buffer_t* noundef %buf) #0 {
entry:
  %buf.addr = alloca %struct.pgn_buffer_t*, align 8
  store %struct.pgn_buffer_t* %buf, %struct.pgn_buffer_t** %buf.addr, align 8
  %0 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %buf1 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf1, align 8
  call void @free(i8* noundef %1) #10
  %2 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %3 = bitcast %struct.pgn_buffer_t* %2 to i8*
  call void @free(i8* noundef %3) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_comments_t* @pgn_comments_init() #0 {
entry:
  %comments = alloca %struct.pgn_comments_t*, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #10
  %0 = bitcast i8* %call to %struct.pgn_comments_t*
  store %struct.pgn_comments_t* %0, %struct.pgn_comments_t** %comments, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 16) #10
  %1 = bitcast i8* %call1 to %struct.pgn_comment_t*
  %2 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %values = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %2, i32 0, i32 0
  store %struct.pgn_comment_t* %1, %struct.pgn_comment_t** %values, align 8
  %3 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %size = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %3, i32 0, i32 2
  store i64 1, i64* %size, align 8
  %4 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %length = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %4, i32 0, i32 1
  store i64 0, i64* %length, align 8
  %5 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  ret %struct.pgn_comments_t* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_comments_push(%struct.pgn_comments_t* noundef %comments, i32 %comment.coerce0, %struct.pgn_buffer_t* %comment.coerce1) #0 {
entry:
  %comment = alloca %struct.pgn_comment_t, align 8
  %comments.addr = alloca %struct.pgn_comments_t*, align 8
  %0 = bitcast %struct.pgn_comment_t* %comment to { i32, %struct.pgn_buffer_t* }*
  %1 = getelementptr inbounds { i32, %struct.pgn_buffer_t* }, { i32, %struct.pgn_buffer_t* }* %0, i32 0, i32 0
  store i32 %comment.coerce0, i32* %1, align 8
  %2 = getelementptr inbounds { i32, %struct.pgn_buffer_t* }, { i32, %struct.pgn_buffer_t* }* %0, i32 0, i32 1
  store %struct.pgn_buffer_t* %comment.coerce1, %struct.pgn_buffer_t** %2, align 8
  store %struct.pgn_comments_t* %comments, %struct.pgn_comments_t** %comments.addr, align 8
  %3 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %length = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %3, i32 0, i32 1
  %4 = load i64, i64* %length, align 8
  %5 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %size = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %5, i32 0, i32 2
  %6 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %size1 = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %7, i32 0, i32 2
  %8 = load i64, i64* %size1, align 8
  %add = add i64 %8, 1
  store i64 %add, i64* %size1, align 8
  %9 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %values = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %9, i32 0, i32 0
  %10 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %values, align 8
  %11 = bitcast %struct.pgn_comment_t* %10 to i8*
  %12 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %size2 = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %12, i32 0, i32 2
  %13 = load i64, i64* %size2, align 8
  %mul = mul i64 16, %13
  %call = call i8* @realloc(i8* noundef %11, i64 noundef %mul) #10
  %14 = bitcast i8* %call to %struct.pgn_comment_t*
  %15 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %values3 = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %15, i32 0, i32 0
  store %struct.pgn_comment_t* %14, %struct.pgn_comment_t** %values3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %values4 = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %16, i32 0, i32 0
  %17 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %values4, align 8
  %18 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %length5 = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %18, i32 0, i32 1
  %19 = load i64, i64* %length5, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %length5, align 8
  %arrayidx = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %17, i64 %19
  %20 = bitcast %struct.pgn_comment_t* %arrayidx to i8*
  %21 = bitcast %struct.pgn_comment_t* %comment to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef %pos, i8* noundef %str) #0 {
entry:
  %comments.addr = alloca %struct.pgn_comments_t**, align 8
  %pos.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %cursor = alloca i64, align 8
  %comment = alloca %struct.pgn_comment_t, align 8
  store %struct.pgn_comments_t** %comments, %struct.pgn_comments_t*** %comments.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %cursor, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 123
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %3 = load %struct.pgn_comments_t**, %struct.pgn_comments_t*** %comments.addr, align 8
  %4 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %3, align 8
  %tobool = icmp ne %struct.pgn_comments_t* %4, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = call %struct.pgn_comments_t* @pgn_comments_init()
  %5 = load %struct.pgn_comments_t**, %struct.pgn_comments_t*** %comments.addr, align 8
  store %struct.pgn_comments_t* %call, %struct.pgn_comments_t** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i64, i64* %cursor, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 123
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i64, i64* %cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10
  %call7 = call { i32, %struct.pgn_buffer_t* } @__pgn_comment_from_string(i8* noundef %add.ptr, i64* noundef %cursor)
  %11 = bitcast %struct.pgn_comment_t* %comment to { i32, %struct.pgn_buffer_t* }*
  %12 = getelementptr inbounds { i32, %struct.pgn_buffer_t* }, { i32, %struct.pgn_buffer_t* }* %11, i32 0, i32 0
  %13 = extractvalue { i32, %struct.pgn_buffer_t* } %call7, 0
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds { i32, %struct.pgn_buffer_t* }, { i32, %struct.pgn_buffer_t* }* %11, i32 0, i32 1
  %15 = extractvalue { i32, %struct.pgn_buffer_t* } %call7, 1
  store %struct.pgn_buffer_t* %15, %struct.pgn_buffer_t** %14, align 8
  %16 = load i32, i32* %pos.addr, align 4
  %position = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %comment, i32 0, i32 0
  store i32 %16, i32* %position, align 8
  %17 = load %struct.pgn_comments_t**, %struct.pgn_comments_t*** %comments.addr, align 8
  %18 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %17, align 8
  %19 = bitcast %struct.pgn_comment_t* %comment to { i32, %struct.pgn_buffer_t* }*
  %20 = getelementptr inbounds { i32, %struct.pgn_buffer_t* }, { i32, %struct.pgn_buffer_t* }* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds { i32, %struct.pgn_buffer_t* }, { i32, %struct.pgn_buffer_t* }* %19, i32 0, i32 1
  %23 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %22, align 8
  call void @pgn_comments_push(%struct.pgn_comments_t* noundef %18, i32 %21, %struct.pgn_buffer_t* %23)
  %24 = load i8*, i8** %str.addr, align 8
  %call8 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %24, i64* noundef %cursor)
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load i64, i64* %cursor, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %25, i64 %26
  %27 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %27 to i32
  %cmp11 = icmp ne i32 %conv10, 123
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %while.end
  br label %if.end14

if.else:                                          ; preds = %while.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.31, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.pgn_comments_poll, i64 0, i64 0)) #9
  unreachable

if.end14:                                         ; preds = %if.then13
  %28 = load i8*, i8** %str.addr, align 8
  %29 = load i64, i64* %cursor, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %28, i64 %29
  %30 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %30 to i32
  %cmp17 = icmp ne i32 %conv16, 125
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end14
  br label %if.end21

if.else20:                                        ; preds = %if.end14
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.31, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.pgn_comments_poll, i64 0, i64 0)) #9
  unreachable

if.end21:                                         ; preds = %if.then19
  %31 = load i8*, i8** %str.addr, align 8
  %call22 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %31, i64* noundef %cursor)
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %entry
  %32 = load i64, i64* %cursor, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgn_comments_get_first_after_alternative_index(%struct.pgn_comments_t* noundef %comments) #0 {
entry:
  %retval = alloca i32, align 4
  %comments.addr = alloca %struct.pgn_comments_t*, align 8
  %i = alloca i32, align 4
  store %struct.pgn_comments_t* %comments, %struct.pgn_comments_t** %comments.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %length = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %conv = trunc i64 %2 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %values = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %3, i32 0, i32 0
  %4 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %values, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %4, i64 %idxprom
  %position = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %position, align 8
  %cmp2 = icmp eq i32 %6, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_comments_cleanup(%struct.pgn_comments_t* noundef %comments) #0 {
entry:
  %comments.addr = alloca %struct.pgn_comments_t*, align 8
  %i = alloca i64, align 8
  store %struct.pgn_comments_t* %comments, %struct.pgn_comments_t** %comments.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %length = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %values = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %3, i32 0, i32 0
  %4 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %values, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.pgn_comment_t, %struct.pgn_comment_t* %4, i64 %5
  call void @pgn_comment_cleanup(%struct.pgn_comment_t* noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %7 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %values1 = getelementptr inbounds %struct.pgn_comments_t, %struct.pgn_comments_t* %7, i32 0, i32 0
  %8 = load %struct.pgn_comment_t*, %struct.pgn_comment_t** %values1, align 8
  %9 = bitcast %struct.pgn_comment_t* %8 to i8*
  call void @free(i8* noundef %9) #10
  %10 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments.addr, align 8
  %11 = bitcast %struct.pgn_comments_t* %10 to i8*
  call void @free(i8* noundef %11) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgn_coordinate_file_as_index(i8 noundef signext %file) #0 {
entry:
  %file.addr = alloca i8, align 1
  store i8 %file, i8* %file.addr, align 1
  %0 = load i8, i8* %file.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i16** @__ctype_b_loc() #8
  %1 = load i16*, i16** %call, align 8
  %2 = load i8, i8* %file.addr, align 1
  %conv1 = sext i8 %2 to i32
  %idxprom = sext i32 %conv1 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %3 to i32
  %and = and i32 %conv2, 256
  %tobool = icmp ne i32 %and, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 65, i32 97
  %sub = sub nsw i32 %conv, %cond
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_metadata_t* @__pgn_metadata_from_string(i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %retval = alloca %struct.pgn_metadata_t*, align 8
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %cursor = alloca i64, align 8
  %metadata = alloca %struct.pgn_metadata_t*, align 8
  %key_buffer = alloca %struct.pgn_buffer_t*, align 8
  %value_buffer = alloca %struct.pgn_buffer_t*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  store i64 0, i64* %cursor, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 91
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.pgn_metadata_t* null, %struct.pgn_metadata_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.pgn_metadata_t* @pgn_metadata_init()
  store %struct.pgn_metadata_t* %call, %struct.pgn_metadata_t** %metadata, align 8
  %call2 = call %struct.pgn_buffer_t* @pgn_buffer_init()
  store %struct.pgn_buffer_t* %call2, %struct.pgn_buffer_t** %key_buffer, align 8
  %call3 = call %struct.pgn_buffer_t* @pgn_buffer_init()
  store %struct.pgn_buffer_t* %call3, %struct.pgn_buffer_t** %value_buffer, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end41, %if.end
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64, i64* %cursor, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp ne i32 %conv5, 91
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.cond
  br label %for.end

if.end9:                                          ; preds = %for.cond
  %6 = load i64, i64* %cursor, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %cursor, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end9
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %cursor, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp ne i32 %conv11, 32
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key_buffer, align 8
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i64, i64* %cursor, align 8
  %inc14 = add i64 %12, 1
  store i64 %inc14, i64* %cursor, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx15, align 1
  call void @pgn_buffer_append(%struct.pgn_buffer_t* noundef %10, i8 noundef signext %13)
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %14 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key_buffer, align 8
  call void @pgn_buffer_append_null_terminator(%struct.pgn_buffer_t* noundef %14)
  %15 = load i8*, i8** %str.addr, align 8
  %16 = load i64, i64* %cursor, align 8
  %inc16 = add i64 %16, 1
  store i64 %inc16, i64* %cursor, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %inc16
  %17 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 34
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.end
  br label %if.end22

if.else:                                          ; preds = %while.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.36, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.__pgn_metadata_from_string, i64 0, i64 0)) #9
  unreachable

if.end22:                                         ; preds = %if.then21
  %18 = load i64, i64* %cursor, align 8
  %inc23 = add i64 %18, 1
  store i64 %inc23, i64* %cursor, align 8
  br label %while.cond24

while.cond24:                                     ; preds = %while.body29, %if.end22
  %19 = load i8*, i8** %str.addr, align 8
  %20 = load i64, i64* %cursor, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 %20
  %21 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp ne i32 %conv26, 34
  br i1 %cmp27, label %while.body29, label %while.end32

while.body29:                                     ; preds = %while.cond24
  %22 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value_buffer, align 8
  %23 = load i8*, i8** %str.addr, align 8
  %24 = load i64, i64* %cursor, align 8
  %inc30 = add i64 %24, 1
  store i64 %inc30, i64* %cursor, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %23, i64 %24
  %25 = load i8, i8* %arrayidx31, align 1
  call void @pgn_buffer_append(%struct.pgn_buffer_t* noundef %22, i8 noundef signext %25)
  br label %while.cond24, !llvm.loop !23

while.end32:                                      ; preds = %while.cond24
  %26 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value_buffer, align 8
  call void @pgn_buffer_append_null_terminator(%struct.pgn_buffer_t* noundef %26)
  %27 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  %28 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key_buffer, align 8
  %buf = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %28, i32 0, i32 0
  %29 = load i8*, i8** %buf, align 8
  %30 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value_buffer, align 8
  %buf33 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf33, align 8
  call void @pgn_metadata_insert(%struct.pgn_metadata_t* noundef %27, i8* noundef %29, i8* noundef %31)
  %32 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key_buffer, align 8
  call void @pgn_buffer_reset(%struct.pgn_buffer_t* noundef %32)
  %33 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value_buffer, align 8
  call void @pgn_buffer_reset(%struct.pgn_buffer_t* noundef %33)
  %34 = load i8*, i8** %str.addr, align 8
  %35 = load i64, i64* %cursor, align 8
  %inc34 = add i64 %35, 1
  store i64 %inc34, i64* %cursor, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %34, i64 %inc34
  %36 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %36 to i32
  %cmp37 = icmp eq i32 %conv36, 93
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %while.end32
  br label %if.end41

if.else40:                                        ; preds = %while.end32
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.36, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.__pgn_metadata_from_string, i64 0, i64 0)) #9
  unreachable

if.end41:                                         ; preds = %if.then39
  %37 = load i64, i64* %cursor, align 8
  %inc42 = add i64 %37, 1
  store i64 %inc42, i64* %cursor, align 8
  %38 = load i8*, i8** %str.addr, align 8
  %call43 = call zeroext i1 @pgn_cursor_skip_newline(i8* noundef %38, i64* noundef %cursor)
  br label %for.cond

for.end:                                          ; preds = %if.then8
  %39 = load i64, i64* %cursor, align 8
  %40 = load i64*, i64** %consumed.addr, align 8
  %41 = load i64, i64* %40, align 8
  %add = add i64 %41, %39
  store i64 %add, i64* %40, align 8
  %42 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key_buffer, align 8
  call void @pgn_buffer_cleanup(%struct.pgn_buffer_t* noundef %42)
  %43 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value_buffer, align 8
  call void @pgn_buffer_cleanup(%struct.pgn_buffer_t* noundef %43)
  %44 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  store %struct.pgn_metadata_t* %44, %struct.pgn_metadata_t** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %45 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %retval, align 8
  ret %struct.pgn_metadata_t* %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_metadata_t* @pgn_metadata_init() #0 {
entry:
  %metadata = alloca %struct.pgn_metadata_t*, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #10
  %0 = bitcast i8* %call to %struct.pgn_metadata_t*
  store %struct.pgn_metadata_t* %0, %struct.pgn_metadata_t** %metadata, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 128) #10
  %1 = bitcast i8* %call1 to %struct.__pgn_metadata_item_t*
  %2 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  %items = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %2, i32 0, i32 0
  store %struct.__pgn_metadata_item_t* %1, %struct.__pgn_metadata_item_t** %items, align 8
  %3 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  %size = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %3, i32 0, i32 2
  store i64 8, i64* %size, align 8
  %4 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  %length = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %4, i32 0, i32 1
  store i64 0, i64* %length, align 8
  %5 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata, align 8
  ret %struct.pgn_metadata_t* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_metadata_insert(%struct.pgn_metadata_t* noundef %metadata, i8* noundef %key, i8* noundef %value) #0 {
entry:
  %metadata.addr = alloca %struct.pgn_metadata_t*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %item = alloca %struct.__pgn_metadata_item_t, align 8
  store %struct.pgn_metadata_t* %metadata, %struct.pgn_metadata_t** %metadata.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %length = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %0, i32 0, i32 1
  %1 = load i64, i64* %length, align 8
  %2 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %size = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %2, i32 0, i32 2
  %3 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %size1 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %4, i32 0, i32 2
  %5 = load i64, i64* %size1, align 8
  %add = add i64 %5, 8
  store i64 %add, i64* %size1, align 8
  %6 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %6, i32 0, i32 0
  %7 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items, align 8
  %8 = bitcast %struct.__pgn_metadata_item_t* %7 to i8*
  %9 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %size2 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %9, i32 0, i32 2
  %10 = load i64, i64* %size2, align 8
  %mul = mul i64 16, %10
  %call = call i8* @realloc(i8* noundef %8, i64 noundef %mul) #10
  %11 = bitcast i8* %call to %struct.__pgn_metadata_item_t*
  %12 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items3 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %12, i32 0, i32 0
  store %struct.__pgn_metadata_item_t* %11, %struct.__pgn_metadata_item_t** %items3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = bitcast %struct.__pgn_metadata_item_t* %item to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  call void @__pgn_metadata_item_init(%struct.__pgn_metadata_item_t* noundef %item)
  %key4 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %item, i32 0, i32 0
  %14 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key4, align 8
  %15 = load i8*, i8** %key.addr, align 8
  call void @pgn_buffer_concat(%struct.pgn_buffer_t* noundef %14, i8* noundef %15)
  %value5 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %item, i32 0, i32 1
  %16 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value5, align 8
  %17 = load i8*, i8** %value.addr, align 8
  call void @pgn_buffer_concat(%struct.pgn_buffer_t* noundef %16, i8* noundef %17)
  %18 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items6 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %18, i32 0, i32 0
  %19 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items6, align 8
  %20 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %length7 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %20, i32 0, i32 1
  %21 = load i64, i64* %length7, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %length7, align 8
  %arrayidx = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %19, i64 %21
  %22 = bitcast %struct.__pgn_metadata_item_t* %arrayidx to i8*
  %23 = bitcast %struct.__pgn_metadata_item_t* %item to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_buffer_reset(%struct.pgn_buffer_t* noundef %buf) #0 {
entry:
  %buf.addr = alloca %struct.pgn_buffer_t*, align 8
  store %struct.pgn_buffer_t* %buf, %struct.pgn_buffer_t** %buf.addr, align 8
  %0 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %length = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %0, i32 0, i32 1
  store i64 0, i64* %length, align 8
  %1 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  call void @pgn_buffer_append_null_terminator(%struct.pgn_buffer_t* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @pgn_cursor_skip_newline(i8* noundef %str, i64* noundef %cursor) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %cursor.addr = alloca i64*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64* %cursor, i64** %cursor.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64*, i64** %cursor.addr, align 8
  %2 = load i64, i64* %1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64*, i64** %cursor.addr, align 8
  %6 = load i64, i64* %5, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %5, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %6
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 13
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.79, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.pgn_cursor_skip_newline, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then6
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i64*, i64** %cursor.addr, align 8
  %10 = load i64, i64* %9, align 8
  %inc7 = add i64 %10, 1
  store i64 %inc7, i64* %9, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %10
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end
  br label %if.end14

if.else13:                                        ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.79, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.pgn_cursor_skip_newline, i64 0, i64 0)) #9
  unreachable

if.end14:                                         ; preds = %if.then12
  store i1 true, i1* %retval, align 1
  br label %return

if.end15:                                         ; preds = %entry
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i64*, i64** %cursor.addr, align 8
  %14 = load i64, i64* %13, align 8
  %inc16 = add i64 %14, 1
  store i64 %inc16, i64* %13, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %14
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 10
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end15
  br label %if.end23

if.else22:                                        ; preds = %if.end15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.79, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.pgn_cursor_skip_newline, i64 0, i64 0)) #9
  unreachable

if.end23:                                         ; preds = %if.then21
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end23, %if.end14
  %16 = load i1, i1* %retval, align 1
  ret i1 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_metadata_t* @pgn_metadata_from_string(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %consumed, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call %struct.pgn_metadata_t* @__pgn_metadata_from_string(i8* noundef %0, i64* noundef %consumed)
  ret %struct.pgn_metadata_t* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pgn_metadata_item_init(%struct.__pgn_metadata_item_t* noundef %item) #0 {
entry:
  %item.addr = alloca %struct.__pgn_metadata_item_t*, align 8
  store %struct.__pgn_metadata_item_t* %item, %struct.__pgn_metadata_item_t** %item.addr, align 8
  %call = call %struct.pgn_buffer_t* @pgn_buffer_init()
  %0 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %item.addr, align 8
  %key = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %0, i32 0, i32 0
  store %struct.pgn_buffer_t* %call, %struct.pgn_buffer_t** %key, align 8
  %call1 = call %struct.pgn_buffer_t* @pgn_buffer_init()
  %1 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %item.addr, align 8
  %value = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %1, i32 0, i32 1
  store %struct.pgn_buffer_t* %call1, %struct.pgn_buffer_t** %value, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pgn_metadata_item_cleanup(%struct.__pgn_metadata_item_t* noundef %item) #0 {
entry:
  %item.addr = alloca %struct.__pgn_metadata_item_t*, align 8
  store %struct.__pgn_metadata_item_t* %item, %struct.__pgn_metadata_item_t** %item.addr, align 8
  %0 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %item.addr, align 8
  %key = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %0, i32 0, i32 0
  %1 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key, align 8
  call void @pgn_buffer_cleanup(%struct.pgn_buffer_t* noundef %1)
  %2 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %item.addr, align 8
  %value = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %2, i32 0, i32 1
  %3 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %value, align 8
  call void @pgn_buffer_cleanup(%struct.pgn_buffer_t* noundef %3)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_buffer_concat(%struct.pgn_buffer_t* noundef %buf, i8* noundef %str) #0 {
entry:
  %buf.addr = alloca %struct.pgn_buffer_t*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.pgn_buffer_t* %buf, %struct.pgn_buffer_t** %buf.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  call void @pgn_buffer_append(%struct.pgn_buffer_t* noundef %2, i8 noundef signext %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %6 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  call void @pgn_buffer_append_null_terminator(%struct.pgn_buffer_t* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @pgn_buffer_equal(%struct.pgn_buffer_t* noundef %buf, i8* noundef %str) #0 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca %struct.pgn_buffer_t*, align 8
  %str.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.pgn_buffer_t* %buf, %struct.pgn_buffer_t** %buf.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %length = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ule i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %buf1 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf1, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i1, i1* %retval, align 1
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_metadata_delete(%struct.pgn_metadata_t* noundef %metadata, i8* noundef %key) #0 {
entry:
  %metadata.addr = alloca %struct.pgn_metadata_t*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.pgn_metadata_t* %metadata, %struct.pgn_metadata_t** %metadata.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %length = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %3, i32 0, i32 0
  %4 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %4, i64 %5
  %key1 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %arrayidx, i32 0, i32 0
  %6 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %key1, align 8
  %7 = load i8*, i8** %key.addr, align 8
  %call = call zeroext i1 @pgn_buffer_equal(%struct.pgn_buffer_t* noundef %6, i8* noundef %7)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc13

if.end:                                           ; preds = %for.body
  %8 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items2 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %8, i32 0, i32 0
  %9 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items2, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %9, i64 %10
  call void @__pgn_metadata_item_cleanup(%struct.__pgn_metadata_item_t* noundef %arrayidx3)
  %11 = load i64, i64* %i, align 8
  store i64 %11, i64* %j, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %if.end
  %12 = load i64, i64* %j, align 8
  %13 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %length5 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %13, i32 0, i32 1
  %14 = load i64, i64* %length5, align 8
  %sub = sub i64 %14, 1
  %cmp6 = icmp ult i64 %12, %sub
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %15 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items8 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %15, i32 0, i32 0
  %16 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items8, align 8
  %17 = load i64, i64* %j, align 8
  %arrayidx9 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %16, i64 %17
  %18 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items10 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %18, i32 0, i32 0
  %19 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items10, align 8
  %20 = load i64, i64* %j, align 8
  %add = add i64 %20, 1
  %arrayidx11 = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %19, i64 %add
  %21 = bitcast %struct.__pgn_metadata_item_t* %arrayidx9 to i8*
  %22 = bitcast %struct.__pgn_metadata_item_t* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %23 = load i64, i64* %j, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond4, !llvm.loop !26

for.end:                                          ; preds = %for.cond4
  %24 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %length12 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %24, i32 0, i32 1
  %25 = load i64, i64* %length12, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %length12, align 8
  br label %for.end15

for.inc13:                                        ; preds = %if.then
  %26 = load i64, i64* %i, align 8
  %inc14 = add i64 %26, 1
  store i64 %inc14, i64* %i, align 8
  br label %for.cond, !llvm.loop !27

for.end15:                                        ; preds = %for.end, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_metadata_cleanup(%struct.pgn_metadata_t* noundef %metadata) #0 {
entry:
  %metadata.addr = alloca %struct.pgn_metadata_t*, align 8
  %i = alloca i64, align 8
  store %struct.pgn_metadata_t* %metadata, %struct.pgn_metadata_t** %metadata.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %length = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %3, i32 0, i32 0
  %4 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.__pgn_metadata_item_t, %struct.__pgn_metadata_item_t* %4, i64 %5
  call void @__pgn_metadata_item_cleanup(%struct.__pgn_metadata_item_t* noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %7 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %items1 = getelementptr inbounds %struct.pgn_metadata_t, %struct.pgn_metadata_t* %7, i32 0, i32 0
  %8 = load %struct.__pgn_metadata_item_t*, %struct.__pgn_metadata_item_t** %items1, align 8
  %9 = bitcast %struct.__pgn_metadata_item_t* %8 to i8*
  call void @free(i8* noundef %9) #10
  %10 = load %struct.pgn_metadata_t*, %struct.pgn_metadata_t** %metadata.addr, align 8
  %11 = bitcast %struct.pgn_metadata_t* %10 to i8*
  call void @free(i8* noundef %11) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pgn_move_from_string(%struct.pgn_move_t* noalias sret(%struct.pgn_move_t) align 8 %agg.result, i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %cursor = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgn_coordinate_t, align 4
  %skipped_whitespace_before_ep = alloca i8, align 1
  %skipped_whitespace_after_ep = alloca i8, align 1
  %notation_len = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  %0 = bitcast %struct.pgn_move_t* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 72, i1 false)
  store i64 0, i64* %cursor, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i64, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 79
  br i1 %cmp, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %cursor, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %cursor, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %inc
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 45
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then6
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %cursor, align 8
  %inc7 = add i64 %8, 1
  store i64 %inc7, i64* %cursor, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 %inc7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 79
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end
  br label %if.end14

if.else13:                                        ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end14:                                         ; preds = %if.then12
  %castles = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 3
  store i32 2, i32* %castles, align 8
  %10 = load i64, i64* %cursor, align 8
  %inc15 = add i64 %10, 1
  store i64 %inc15, i64* %cursor, align 8
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i64, i64* %cursor, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %if.then20, label %if.end31

if.then20:                                        ; preds = %if.end14
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i64, i64* %cursor, align 8
  %inc21 = add i64 %15, 1
  store i64 %inc21, i64* %cursor, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 %inc21
  %16 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %16 to i32
  %cmp24 = icmp eq i32 %conv23, 79
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then20
  br label %if.end28

if.else27:                                        ; preds = %if.then20
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end28:                                         ; preds = %if.then26
  %castles29 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 3
  store i32 3, i32* %castles29, align 8
  %17 = load i64, i64* %cursor, align 8
  %inc30 = add i64 %17, 1
  store i64 %inc30, i64* %cursor, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end28, %if.end14
  br label %check

if.end32:                                         ; preds = %entry
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load i64, i64* %cursor, align 8
  %inc33 = add i64 %19, 1
  store i64 %inc33, i64* %cursor, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %18, i64 %19
  %20 = load i8, i8* %arrayidx34, align 1
  %call = call i32 @pgn_piece_from_char(i8 noundef signext %20)
  %piece = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 0
  store i32 %call, i32* %piece, align 8
  %piece35 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 0
  %21 = load i32, i32* %piece35, align 8
  %cmp36 = icmp eq i32 %21, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end32
  %piece39 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 0
  store i32 80, i32* %piece39, align 8
  %22 = load i64, i64* %cursor, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %cursor, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end32
  %call41 = call i16** @__ctype_b_loc() #8
  %23 = load i16*, i16** %call41, align 8
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i64, i64* %cursor, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %24, i64 %25
  %26 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %26 to i32
  %idxprom = sext i32 %conv43 to i64
  %arrayidx44 = getelementptr inbounds i16, i16* %23, i64 %idxprom
  %27 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %27 to i32
  %and = and i32 %conv45, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.end40
  %28 = load i8*, i8** %str.addr, align 8
  %29 = load i64, i64* %cursor, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %28, i64 %29
  %30 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %30 to i32
  %cmp48 = icmp ne i32 %conv47, 120
  br i1 %cmp48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %land.lhs.true
  %31 = load i8*, i8** %str.addr, align 8
  %32 = load i64, i64* %cursor, align 8
  %inc51 = add i64 %32, 1
  store i64 %inc51, i64* %cursor, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %31, i64 %32
  %33 = load i8, i8* %arrayidx52, align 1
  %from = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 7
  %file = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %from, i32 0, i32 0
  store i8 %33, i8* %file, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %land.lhs.true, %if.end40
  %call54 = call i16** @__ctype_b_loc() #8
  %34 = load i16*, i16** %call54, align 8
  %35 = load i8*, i8** %str.addr, align 8
  %36 = load i64, i64* %cursor, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %35, i64 %36
  %37 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %37 to i32
  %idxprom57 = sext i32 %conv56 to i64
  %arrayidx58 = getelementptr inbounds i16, i16* %34, i64 %idxprom57
  %38 = load i16, i16* %arrayidx58, align 2
  %conv59 = zext i16 %38 to i32
  %and60 = and i32 %conv59, 2048
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.end53
  %39 = load i8*, i8** %str.addr, align 8
  %40 = load i64, i64* %cursor, align 8
  %inc63 = add i64 %40, 1
  store i64 %inc63, i64* %cursor, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %39, i64 %40
  %41 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %41 to i32
  %sub = sub nsw i32 %conv65, 48
  %from66 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 7
  %rank = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %from66, i32 0, i32 1
  store i32 %sub, i32* %rank, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end53
  %42 = load i8*, i8** %str.addr, align 8
  %43 = load i64, i64* %cursor, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %42, i64 %43
  %44 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %44 to i32
  %cmp70 = icmp eq i32 %conv69, 120
  br i1 %cmp70, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end67
  %45 = load i8*, i8** %str.addr, align 8
  %46 = load i64, i64* %cursor, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %45, i64 %46
  %47 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %47 to i32
  %cmp74 = icmp eq i32 %conv73, 58
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end67
  %48 = phi i1 [ true, %if.end67 ], [ %cmp74, %lor.rhs ]
  %captures = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 4
  %frombool = zext i1 %48 to i8
  store i8 %frombool, i8* %captures, align 4
  %captures76 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 4
  %49 = load i8, i8* %captures76, align 4
  %tobool77 = trunc i8 %49 to i1
  %conv78 = zext i1 %tobool77 to i64
  %50 = load i64, i64* %cursor, align 8
  %add = add i64 %50, %conv78
  store i64 %add, i64* %cursor, align 8
  %call79 = call i16** @__ctype_b_loc() #8
  %51 = load i16*, i16** %call79, align 8
  %52 = load i8*, i8** %str.addr, align 8
  %53 = load i64, i64* %cursor, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %54 to i32
  %idxprom82 = sext i32 %conv81 to i64
  %arrayidx83 = getelementptr inbounds i16, i16* %51, i64 %idxprom82
  %55 = load i16, i16* %arrayidx83, align 2
  %conv84 = zext i16 %55 to i32
  %and85 = and i32 %conv84, 512
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.else119

if.then87:                                        ; preds = %lor.end
  %call88 = call i16** @__ctype_b_loc() #8
  %56 = load i16*, i16** %call88, align 8
  %57 = load i8*, i8** %str.addr, align 8
  %58 = load i64, i64* %cursor, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %57, i64 %58
  %59 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %59 to i32
  %idxprom91 = sext i32 %conv90 to i64
  %arrayidx92 = getelementptr inbounds i16, i16* %56, i64 %idxprom91
  %60 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %60 to i32
  %and94 = and i32 %conv93, 512
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.else97

if.then96:                                        ; preds = %if.then87
  br label %if.end98

if.else97:                                        ; preds = %if.then87
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end98:                                         ; preds = %if.then96
  %61 = load i8*, i8** %str.addr, align 8
  %62 = load i64, i64* %cursor, align 8
  %inc99 = add i64 %62, 1
  store i64 %inc99, i64* %cursor, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %61, i64 %62
  %63 = load i8, i8* %arrayidx100, align 1
  %dest = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 8
  %file101 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %dest, i32 0, i32 0
  store i8 %63, i8* %file101, align 4
  %call102 = call i16** @__ctype_b_loc() #8
  %64 = load i16*, i16** %call102, align 8
  %65 = load i8*, i8** %str.addr, align 8
  %66 = load i64, i64* %cursor, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %65, i64 %66
  %67 = load i8, i8* %arrayidx103, align 1
  %conv104 = sext i8 %67 to i32
  %idxprom105 = sext i32 %conv104 to i64
  %arrayidx106 = getelementptr inbounds i16, i16* %64, i64 %idxprom105
  %68 = load i16, i16* %arrayidx106, align 2
  %conv107 = zext i16 %68 to i32
  %and108 = and i32 %conv107, 2048
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then110, label %if.else111

if.then110:                                       ; preds = %if.end98
  br label %if.end112

if.else111:                                       ; preds = %if.end98
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end112:                                        ; preds = %if.then110
  %69 = load i8*, i8** %str.addr, align 8
  %70 = load i64, i64* %cursor, align 8
  %inc113 = add i64 %70, 1
  store i64 %inc113, i64* %cursor, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %69, i64 %70
  %71 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %71 to i32
  %sub116 = sub nsw i32 %conv115, 48
  %dest117 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 8
  %rank118 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %dest117, i32 0, i32 1
  store i32 %sub116, i32* %rank118, align 4
  br label %if.end125

if.else119:                                       ; preds = %lor.end
  %dest120 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 8
  %from121 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 7
  %72 = bitcast %struct.pgn_coordinate_t* %dest120 to i8*
  %73 = bitcast %struct.pgn_coordinate_t* %from121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 8, i1 false)
  %from122 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 7
  %file123 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %.compoundliteral, i32 0, i32 0
  store i8 0, i8* %file123, align 4
  %rank124 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %.compoundliteral, i32 0, i32 1
  store i32 0, i32* %rank124, align 4
  %74 = bitcast %struct.pgn_coordinate_t* %from122 to i8*
  %75 = bitcast %struct.pgn_coordinate_t* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 8, i1 false)
  br label %if.end125

if.end125:                                        ; preds = %if.else119, %if.end112
  %76 = load i8*, i8** %str.addr, align 8
  %77 = load i64, i64* %cursor, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %76, i64 %77
  %78 = load i8, i8* %arrayidx126, align 1
  %call127 = call i32 @pgn_piece_from_char(i8 noundef signext %78)
  %promoted_to = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 1
  store i32 %call127, i32* %promoted_to, align 4
  %promoted_to128 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 1
  %79 = load i32, i32* %promoted_to128, align 4
  %cmp129 = icmp eq i32 %79, 0
  br i1 %cmp129, label %if.then131, label %if.end165

if.then131:                                       ; preds = %if.end125
  %80 = load i8*, i8** %str.addr, align 8
  %81 = load i64, i64* %cursor, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %80, i64 %81
  %82 = load i8, i8* %arrayidx132, align 1
  %conv133 = sext i8 %82 to i32
  switch i32 %conv133, label %sw.epilog [
    i32 40, label %sw.bb
    i32 61, label %sw.bb153
    i32 47, label %sw.bb153
  ]

sw.bb:                                            ; preds = %if.then131
  %83 = load i8*, i8** %str.addr, align 8
  %84 = load i64, i64* %cursor, align 8
  %inc134 = add i64 %84, 1
  store i64 %inc134, i64* %cursor, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %83, i64 %inc134
  %85 = load i8, i8* %arrayidx135, align 1
  %call136 = call i32 @pgn_piece_from_char(i8 noundef signext %85)
  %promoted_to137 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 1
  store i32 %call136, i32* %promoted_to137, align 4
  %promoted_to138 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 1
  %86 = load i32, i32* %promoted_to138, align 4
  %cmp139 = icmp ne i32 %86, 0
  br i1 %cmp139, label %if.then141, label %if.else142

if.then141:                                       ; preds = %sw.bb
  br label %if.end143

if.else142:                                       ; preds = %sw.bb
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end143:                                        ; preds = %if.then141
  %87 = load i8*, i8** %str.addr, align 8
  %88 = load i64, i64* %cursor, align 8
  %inc144 = add i64 %88, 1
  store i64 %inc144, i64* %cursor, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %87, i64 %inc144
  %89 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %89 to i32
  %cmp147 = icmp eq i32 %conv146, 41
  br i1 %cmp147, label %if.then149, label %if.else150

if.then149:                                       ; preds = %if.end143
  br label %if.end151

if.else150:                                       ; preds = %if.end143
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end151:                                        ; preds = %if.then149
  %90 = load i64, i64* %cursor, align 8
  %inc152 = add i64 %90, 1
  store i64 %inc152, i64* %cursor, align 8
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.then131, %if.then131
  %91 = load i8*, i8** %str.addr, align 8
  %92 = load i64, i64* %cursor, align 8
  %inc154 = add i64 %92, 1
  store i64 %inc154, i64* %cursor, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %91, i64 %inc154
  %93 = load i8, i8* %arrayidx155, align 1
  %call156 = call i32 @pgn_piece_from_char(i8 noundef signext %93)
  %promoted_to157 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 1
  store i32 %call156, i32* %promoted_to157, align 4
  %promoted_to158 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 1
  %94 = load i32, i32* %promoted_to158, align 4
  %cmp159 = icmp ne i32 %94, 0
  br i1 %cmp159, label %if.then161, label %if.else162

if.then161:                                       ; preds = %sw.bb153
  br label %if.end163

if.else162:                                       ; preds = %sw.bb153
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end163:                                        ; preds = %if.then161
  %95 = load i64, i64* %cursor, align 8
  %inc164 = add i64 %95, 1
  store i64 %inc164, i64* %cursor, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then131, %if.end163, %if.end151
  br label %if.end165

if.end165:                                        ; preds = %sw.epilog, %if.end125
  %dest166 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 8
  %file167 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %dest166, i32 0, i32 0
  %96 = load i8, i8* %file167, align 4
  %conv168 = sext i8 %96 to i32
  %cmp169 = icmp ne i32 %conv168, 0
  br i1 %cmp169, label %if.then171, label %if.else172

if.then171:                                       ; preds = %if.end165
  br label %if.end173

if.else172:                                       ; preds = %if.end165
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end173:                                        ; preds = %if.then171
  %dest174 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 8
  %rank175 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %dest174, i32 0, i32 1
  %97 = load i32, i32* %rank175, align 4
  %cmp176 = icmp ne i32 %97, 0
  br i1 %cmp176, label %if.then178, label %if.else179

if.then178:                                       ; preds = %if.end173
  br label %if.end180

if.else179:                                       ; preds = %if.end173
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end180:                                        ; preds = %if.then178
  br label %check

check:                                            ; preds = %if.end180, %if.end31
  %98 = load i8*, i8** %str.addr, align 8
  %99 = load i64, i64* %cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %98, i64 %99
  %call181 = call i32 @__pgn_check_from_string(i8* noundef %add.ptr, i64* noundef %cursor)
  %check182 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 6
  store i32 %call181, i32* %check182, align 8
  %100 = load i8*, i8** %str.addr, align 8
  %101 = load i64, i64* %cursor, align 8
  %add.ptr183 = getelementptr inbounds i8, i8* %100, i64 %101
  %call184 = call i32 @__pgn_annotation_from_string(i8* noundef %add.ptr183, i64* noundef %cursor)
  %annotation = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 9
  store i32 %call184, i32* %annotation, align 4
  %102 = load i8*, i8** %str.addr, align 8
  %call185 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %102, i64* noundef %cursor)
  %frombool186 = zext i1 %call185 to i8
  store i8 %frombool186, i8* %skipped_whitespace_before_ep, align 1
  %103 = load i8*, i8** %str.addr, align 8
  %104 = load i64, i64* %cursor, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %103, i64 %104
  %105 = load i8, i8* %arrayidx187, align 1
  %conv188 = sext i8 %105 to i32
  %cmp189 = icmp eq i32 %conv188, 101
  br i1 %cmp189, label %land.lhs.true191, label %if.end234

land.lhs.true191:                                 ; preds = %check
  %106 = load i8*, i8** %str.addr, align 8
  %107 = load i64, i64* %cursor, align 8
  %add192 = add i64 %107, 1
  %arrayidx193 = getelementptr inbounds i8, i8* %106, i64 %add192
  %108 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %108 to i32
  %cmp195 = icmp eq i32 %conv194, 46
  br i1 %cmp195, label %if.then197, label %if.end234

if.then197:                                       ; preds = %land.lhs.true191
  %109 = load i8, i8* %skipped_whitespace_before_ep, align 1
  %tobool198 = trunc i8 %109 to i1
  br i1 %tobool198, label %if.then199, label %if.else200

if.then199:                                       ; preds = %if.then197
  br label %if.end201

if.else200:                                       ; preds = %if.then197
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end201:                                        ; preds = %if.then199
  %110 = load i8*, i8** %str.addr, align 8
  %111 = load i64, i64* %cursor, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %110, i64 %111
  %112 = load i8, i8* %arrayidx202, align 1
  %conv203 = sext i8 %112 to i32
  %cmp204 = icmp eq i32 %conv203, 101
  br i1 %cmp204, label %if.then206, label %if.else207

if.then206:                                       ; preds = %if.end201
  br label %if.end208

if.else207:                                       ; preds = %if.end201
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end208:                                        ; preds = %if.then206
  %113 = load i8*, i8** %str.addr, align 8
  %114 = load i64, i64* %cursor, align 8
  %inc209 = add i64 %114, 1
  store i64 %inc209, i64* %cursor, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %113, i64 %inc209
  %115 = load i8, i8* %arrayidx210, align 1
  %conv211 = sext i8 %115 to i32
  %cmp212 = icmp eq i32 %conv211, 46
  br i1 %cmp212, label %if.then214, label %if.else215

if.then214:                                       ; preds = %if.end208
  br label %if.end216

if.else215:                                       ; preds = %if.end208
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end216:                                        ; preds = %if.then214
  %116 = load i8*, i8** %str.addr, align 8
  %117 = load i64, i64* %cursor, align 8
  %inc217 = add i64 %117, 1
  store i64 %inc217, i64* %cursor, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %116, i64 %inc217
  %118 = load i8, i8* %arrayidx218, align 1
  %conv219 = sext i8 %118 to i32
  %cmp220 = icmp eq i32 %conv219, 112
  br i1 %cmp220, label %if.then222, label %if.else223

if.then222:                                       ; preds = %if.end216
  br label %if.end224

if.else223:                                       ; preds = %if.end216
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end224:                                        ; preds = %if.then222
  %119 = load i8*, i8** %str.addr, align 8
  %120 = load i64, i64* %cursor, align 8
  %inc225 = add i64 %120, 1
  store i64 %inc225, i64* %cursor, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %119, i64 %inc225
  %121 = load i8, i8* %arrayidx226, align 1
  %conv227 = sext i8 %121 to i32
  %cmp228 = icmp eq i32 %conv227, 46
  br i1 %cmp228, label %if.then230, label %if.else231

if.then230:                                       ; preds = %if.end224
  br label %if.end232

if.else231:                                       ; preds = %if.end224
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end232:                                        ; preds = %if.then230
  %122 = load i64, i64* %cursor, align 8
  %inc233 = add i64 %122, 1
  store i64 %inc233, i64* %cursor, align 8
  %en_passant = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 5
  store i8 1, i8* %en_passant, align 1
  br label %if.end234

if.end234:                                        ; preds = %if.end232, %land.lhs.true191, %check
  %en_passant235 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 5
  %123 = load i8, i8* %en_passant235, align 1
  %tobool236 = trunc i8 %123 to i1
  br i1 %tobool236, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end234
  %124 = load i8*, i8** %str.addr, align 8
  %call238 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %124, i64* noundef %cursor)
  %conv239 = zext i1 %call238 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end234
  %125 = load i8, i8* %skipped_whitespace_before_ep, align 1
  %tobool240 = trunc i8 %125 to i1
  %conv241 = zext i1 %tobool240 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv239, %cond.true ], [ %conv241, %cond.false ]
  %tobool242 = icmp ne i32 %cond, 0
  %frombool243 = zext i1 %tobool242 to i8
  store i8 %frombool243, i8* %skipped_whitespace_after_ep, align 1
  %annotation244 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 9
  %126 = load i32, i32* %annotation244, align 4
  %cmp245 = icmp eq i32 %126, -1
  br i1 %cmp245, label %if.then247, label %if.end260

if.then247:                                       ; preds = %cond.end
  %127 = load i8*, i8** %str.addr, align 8
  %128 = load i64, i64* %cursor, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %127, i64 %128
  %call249 = call i32 @__pgn_annotation_nag_from_string(i8* noundef %add.ptr248, i64* noundef %cursor)
  %annotation250 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 9
  store i32 %call249, i32* %annotation250, align 4
  %annotation251 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 9
  %129 = load i32, i32* %annotation251, align 4
  %cmp252 = icmp ne i32 %129, -1
  br i1 %cmp252, label %if.then254, label %if.end259

if.then254:                                       ; preds = %if.then247
  %130 = load i8, i8* %skipped_whitespace_after_ep, align 1
  %tobool255 = trunc i8 %130 to i1
  br i1 %tobool255, label %if.then256, label %if.else257

if.then256:                                       ; preds = %if.then254
  br label %if.end258

if.else257:                                       ; preds = %if.then254
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.__pgn_move_from_string, i64 0, i64 0)) #9
  unreachable

if.end258:                                        ; preds = %if.then256
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.then247
  br label %if.end260

if.end260:                                        ; preds = %if.end259, %cond.end
  %131 = load i8*, i8** %str.addr, align 8
  %call261 = call zeroext i1 @pgn_cursor_revisit_whitespace(i8* noundef %131, i64* noundef %cursor)
  %132 = load i64, i64* %cursor, align 8
  store i64 %132, i64* %notation_len, align 8
  %notation = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %agg.result, i32 0, i32 2
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %notation, i64 0, i64 0
  %133 = load i8*, i8** %str.addr, align 8
  %134 = load i64, i64* %notation_len, align 8
  %call262 = call i8* @strncpy(i8* noundef %arraydecay, i8* noundef %133, i64 noundef %134) #10
  %135 = load i64, i64* %cursor, align 8
  %136 = load i64*, i64** %consumed.addr, align 8
  %137 = load i64, i64* %136, align 8
  %add263 = add i64 %137, %135
  store i64 %add263, i64* %136, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgn_piece_from_char(i8 noundef signext %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load i8, i8* %ch.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 80, label %sw.bb
    i32 82, label %sw.bb
    i32 78, label %sw.bb
    i32 66, label %sw.bb
    i32 81, label %sw.bb
    i32 75, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load i8, i8* %ch.addr, align 1
  %conv1 = sext i8 %1 to i32
  store i32 %conv1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_move_from_string(%struct.pgn_move_t* noalias sret(%struct.pgn_move_t) align 8 %agg.result, i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %consumed, align 8
  %0 = load i8*, i8** %str.addr, align 8
  call void @__pgn_move_from_string(%struct.pgn_move_t* sret(%struct.pgn_move_t) align 8 %agg.result, i8* noundef %0, i64* noundef %consumed)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pgn_move_to_string(%struct.pgn_move_t* noundef %move, i8* noundef %dest) #0 {
entry:
  %move.addr = alloca %struct.pgn_move_t*, align 8
  %dest.addr = alloca i8*, align 8
  %cursor = alloca i64, align 8
  store %struct.pgn_move_t* %move, %struct.pgn_move_t** %move.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 0, i64* %cursor, align 8
  %0 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %castles = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %0, i32 0, i32 3
  %1 = load i32, i32* %castles, align 8
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i8*, i8** %dest.addr, align 8
  %call = call i8* @strcpy(i8* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #10
  %3 = load i64, i64* %cursor, align 8
  %add = add i64 %3, 3
  store i64 %add, i64* %cursor, align 8
  br label %check

sw.bb2:                                           ; preds = %entry
  %4 = load i8*, i8** %dest.addr, align 8
  %call3 = call i8* @strcpy(i8* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0)) #10
  %5 = load i64, i64* %cursor, align 8
  %add4 = add i64 %5, 5
  store i64 %add4, i64* %cursor, align 8
  br label %check

sw.epilog:                                        ; preds = %entry, %sw.bb
  %6 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %piece = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %6, i32 0, i32 0
  %7 = load i32, i32* %piece, align 8
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__assert_fail(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.pgn_move_to_string, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %8 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %piece5 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %8, i32 0, i32 0
  %9 = load i32, i32* %piece5, align 8
  %cmp6 = icmp ne i32 %9, 80
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %10 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %piece8 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %10, i32 0, i32 0
  %11 = load i32, i32* %piece8, align 8
  %conv = trunc i32 %11 to i8
  %12 = load i8*, i8** %dest.addr, align 8
  %13 = load i64, i64* %cursor, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %13
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %14 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %from = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %14, i32 0, i32 7
  %file = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %from, i32 0, i32 0
  %15 = load i8, i8* %file, align 4
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end9
  %16 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %from11 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %16, i32 0, i32 7
  %file12 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %from11, i32 0, i32 0
  %17 = load i8, i8* %file12, align 4
  %18 = load i8*, i8** %dest.addr, align 8
  %19 = load i64, i64* %cursor, align 8
  %inc13 = add i64 %19, 1
  store i64 %inc13, i64* %cursor, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8 %17, i8* %arrayidx14, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end9
  %20 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %from16 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %20, i32 0, i32 7
  %rank = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %from16, i32 0, i32 1
  %21 = load i32, i32* %rank, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end15
  %22 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %from19 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %22, i32 0, i32 7
  %rank20 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %from19, i32 0, i32 1
  %23 = load i32, i32* %rank20, align 4
  %add21 = add nsw i32 48, %23
  %conv22 = trunc i32 %add21 to i8
  %24 = load i8*, i8** %dest.addr, align 8
  %25 = load i64, i64* %cursor, align 8
  %inc23 = add i64 %25, 1
  store i64 %inc23, i64* %cursor, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 %conv22, i8* %arrayidx24, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.end15
  %26 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %captures = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %26, i32 0, i32 4
  %27 = load i8, i8* %captures, align 4
  %tobool26 = trunc i8 %27 to i1
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  %28 = load i8*, i8** %dest.addr, align 8
  %29 = load i64, i64* %cursor, align 8
  %inc28 = add i64 %29, 1
  store i64 %inc28, i64* %cursor, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 120, i8* %arrayidx29, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25
  %30 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %dest31 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %30, i32 0, i32 8
  %file32 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %dest31, i32 0, i32 0
  %31 = load i8, i8* %file32, align 4
  %32 = load i8*, i8** %dest.addr, align 8
  %33 = load i64, i64* %cursor, align 8
  %inc33 = add i64 %33, 1
  store i64 %inc33, i64* %cursor, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 %31, i8* %arrayidx34, align 1
  %34 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %dest35 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %34, i32 0, i32 8
  %rank36 = getelementptr inbounds %struct.pgn_coordinate_t, %struct.pgn_coordinate_t* %dest35, i32 0, i32 1
  %35 = load i32, i32* %rank36, align 4
  %add37 = add nsw i32 48, %35
  %conv38 = trunc i32 %add37 to i8
  %36 = load i8*, i8** %dest.addr, align 8
  %37 = load i64, i64* %cursor, align 8
  %inc39 = add i64 %37, 1
  store i64 %inc39, i64* %cursor, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 %conv38, i8* %arrayidx40, align 1
  %38 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %promoted_to = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %38, i32 0, i32 1
  %39 = load i32, i32* %promoted_to, align 4
  %tobool41 = icmp ne i32 %39, 0
  br i1 %tobool41, label %if.then42, label %if.end61

if.then42:                                        ; preds = %if.end30
  %40 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %piece43 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %40, i32 0, i32 0
  %41 = load i32, i32* %piece43, align 8
  %cmp44 = icmp eq i32 %41, 80
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.then42
  br label %if.end48

if.else47:                                        ; preds = %if.then42
  call void @__assert_fail(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.pgn_move_to_string, i64 0, i64 0)) #9
  unreachable

if.end48:                                         ; preds = %if.then46
  %42 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %promoted_to49 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %42, i32 0, i32 1
  %43 = load i32, i32* %promoted_to49, align 4
  %cmp50 = icmp ne i32 %43, 80
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.end48
  br label %if.end54

if.else53:                                        ; preds = %if.end48
  call void @__assert_fail(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.pgn_move_to_string, i64 0, i64 0)) #9
  unreachable

if.end54:                                         ; preds = %if.then52
  %44 = load i8*, i8** %dest.addr, align 8
  %45 = load i64, i64* %cursor, align 8
  %inc55 = add i64 %45, 1
  store i64 %inc55, i64* %cursor, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 61, i8* %arrayidx56, align 1
  %46 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %promoted_to57 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %46, i32 0, i32 1
  %47 = load i32, i32* %promoted_to57, align 4
  %conv58 = trunc i32 %47 to i8
  %48 = load i8*, i8** %dest.addr, align 8
  %49 = load i64, i64* %cursor, align 8
  %inc59 = add i64 %49, 1
  store i64 %inc59, i64* %cursor, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %conv58, i8* %arrayidx60, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.end54, %if.end30
  br label %check

check:                                            ; preds = %if.end61, %sw.bb2, %sw.bb1
  %50 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %check62 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %50, i32 0, i32 6
  %51 = load i32, i32* %check62, align 8
  switch i32 %51, label %sw.epilog75 [
    i32 0, label %sw.bb63
    i32 -1, label %sw.bb64
    i32 1, label %sw.bb67
    i32 2, label %sw.bb70
  ]

sw.bb63:                                          ; preds = %check
  br label %sw.epilog75

sw.bb64:                                          ; preds = %check
  %52 = load i8*, i8** %dest.addr, align 8
  %53 = load i64, i64* %cursor, align 8
  %inc65 = add i64 %53, 1
  store i64 %inc65, i64* %cursor, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 35, i8* %arrayidx66, align 1
  br label %sw.epilog75

sw.bb67:                                          ; preds = %check
  %54 = load i8*, i8** %dest.addr, align 8
  %55 = load i64, i64* %cursor, align 8
  %inc68 = add i64 %55, 1
  store i64 %inc68, i64* %cursor, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 43, i8* %arrayidx69, align 1
  br label %sw.epilog75

sw.bb70:                                          ; preds = %check
  %56 = load i8*, i8** %dest.addr, align 8
  %57 = load i64, i64* %cursor, align 8
  %inc71 = add i64 %57, 1
  store i64 %inc71, i64* %cursor, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 43, i8* %arrayidx72, align 1
  %58 = load i8*, i8** %dest.addr, align 8
  %59 = load i64, i64* %cursor, align 8
  %inc73 = add i64 %59, 1
  store i64 %inc73, i64* %cursor, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 43, i8* %arrayidx74, align 1
  br label %sw.epilog75

sw.epilog75:                                      ; preds = %check, %sw.bb70, %sw.bb67, %sw.bb64, %sw.bb63
  %60 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %annotation = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %60, i32 0, i32 9
  %61 = load i32, i32* %annotation, align 4
  %cmp76 = icmp sge i32 %61, 1
  br i1 %cmp76, label %land.lhs.true, label %if.end85

land.lhs.true:                                    ; preds = %sw.epilog75
  %62 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %annotation78 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %62, i32 0, i32 9
  %63 = load i32, i32* %annotation78, align 4
  %cmp79 = icmp sle i32 %63, 6
  br i1 %cmp79, label %if.then81, label %if.end85

if.then81:                                        ; preds = %land.lhs.true
  %64 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %annotation82 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %64, i32 0, i32 9
  %65 = load i32, i32* %annotation82, align 4
  %66 = load i8*, i8** %dest.addr, align 8
  %67 = load i64, i64* %cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 %67
  %call83 = call i64 @pgn_annotation_to_string(i32 noundef %65, i8* noundef %add.ptr)
  %68 = load i64, i64* %cursor, align 8
  %add84 = add i64 %68, %call83
  store i64 %add84, i64* %cursor, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %land.lhs.true, %sw.epilog75
  %69 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %en_passant = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %69, i32 0, i32 5
  %70 = load i8, i8* %en_passant, align 1
  %tobool86 = trunc i8 %70 to i1
  br i1 %tobool86, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end85
  %71 = load i8*, i8** %dest.addr, align 8
  %72 = load i64, i64* %cursor, align 8
  %inc88 = add i64 %72, 1
  store i64 %inc88, i64* %cursor, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 32, i8* %arrayidx89, align 1
  %73 = load i8*, i8** %dest.addr, align 8
  %74 = load i64, i64* %cursor, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %73, i64 %74
  %call91 = call i8* @strcpy(i8* noundef %add.ptr90, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0)) #10
  %75 = load i64, i64* %cursor, align 8
  %add92 = add i64 %75, 4
  store i64 %add92, i64* %cursor, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %if.end85
  %76 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %annotation94 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %76, i32 0, i32 9
  %77 = load i32, i32* %annotation94, align 4
  %cmp95 = icmp sgt i32 %77, 6
  br i1 %cmp95, label %if.then100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end93
  %78 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %annotation97 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %78, i32 0, i32 9
  %79 = load i32, i32* %annotation97, align 4
  %cmp98 = icmp eq i32 %79, 0
  br i1 %cmp98, label %if.then100, label %if.end107

if.then100:                                       ; preds = %lor.lhs.false, %if.end93
  %80 = load i8*, i8** %dest.addr, align 8
  %81 = load i64, i64* %cursor, align 8
  %inc101 = add i64 %81, 1
  store i64 %inc101, i64* %cursor, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 32, i8* %arrayidx102, align 1
  %82 = load %struct.pgn_move_t*, %struct.pgn_move_t** %move.addr, align 8
  %annotation103 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %82, i32 0, i32 9
  %83 = load i32, i32* %annotation103, align 4
  %84 = load i8*, i8** %dest.addr, align 8
  %85 = load i64, i64* %cursor, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %84, i64 %85
  %call105 = call i64 @pgn_annotation_to_string(i32 noundef %83, i8* noundef %add.ptr104)
  %86 = load i64, i64* %cursor, align 8
  %add106 = add i64 %86, %call105
  store i64 %add106, i64* %cursor, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then100, %lor.lhs.false
  %87 = load i8*, i8** %dest.addr, align 8
  %88 = load i64, i64* %cursor, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 0, i8* %arrayidx108, align 1
  %89 = load i64, i64* %cursor, align 8
  ret i64 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_moves_t* @__pgn_moves_from_string_recurse(i8* noundef %str, i64* noundef %consumed, %struct.pgn_moves_t* noundef %moves, i32 noundef %expect) #0 {
entry:
  %retval = alloca %struct.pgn_moves_t*, align 8
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %moves.addr = alloca %struct.pgn_moves_t*, align 8
  %expect.addr = alloca i32, align 4
  %cursor = alloca i64, align 8
  %move = alloca %struct.__pgn_moves_item_t, align 8
  %comments = alloca %struct.pgn_comments_t*, align 8
  %dots_count = alloca i32, align 4
  %tmp = alloca %struct.pgn_move_t, align 8
  %tmp85 = alloca %struct.pgn_move_t, align 8
  %i = alloca i32, align 4
  %tmp165 = alloca %struct.pgn_move_t, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  store %struct.pgn_moves_t* %moves, %struct.pgn_moves_t** %moves.addr, align 8
  store i32 %expect, i32* %expect.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 41
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  store %struct.pgn_moves_t* %4, %struct.pgn_moves_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i64 0, i64* %cursor, align 8
  %5 = bitcast %struct.__pgn_moves_item_t* %move to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 144, i1 false)
  store %struct.pgn_comments_t* null, %struct.pgn_comments_t** %comments, align 8
  %6 = load i8*, i8** %str.addr, align 8
  %call = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %6, i64* noundef %cursor)
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  %call6 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 1, i8* noundef %add.ptr)
  %9 = load i64, i64* %cursor, align 8
  %add = add i64 %9, %call6
  store i64 %add, i64* %cursor, align 8
  %call7 = call i16** @__ctype_b_loc() #8
  %10 = load i16*, i16** %call7, align 8
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i64, i64* %cursor, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %13 to i32
  %idxprom = sext i32 %conv9 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %14 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %14 to i32
  %and = and i32 %conv11, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.__pgn_moves_from_string_recurse, i64 0, i64 0)) #9
  unreachable

if.end13:                                         ; preds = %if.then12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %call14 = call i16** @__ctype_b_loc() #8
  %15 = load i16*, i16** %call14, align 8
  %16 = load i8*, i8** %str.addr, align 8
  %17 = load i64, i64* %cursor, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 %17
  %18 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %18 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %arrayidx18 = getelementptr inbounds i16, i16* %15, i64 %idxprom17
  %19 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %19 to i32
  %and20 = and i32 %conv19, 2048
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i64, i64* %cursor, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %cursor, align 8
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %dots_count, align 4
  %21 = load i8*, i8** %str.addr, align 8
  %22 = load i64, i64* %cursor, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 %22
  %23 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %23 to i32
  %cmp24 = icmp eq i32 %conv23, 46
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %while.end
  br label %if.end28

if.else27:                                        ; preds = %while.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.__pgn_moves_from_string_recurse, i64 0, i64 0)) #9
  unreachable

if.end28:                                         ; preds = %if.then26
  br label %while.cond29

while.cond29:                                     ; preds = %while.body34, %if.end28
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i64, i64* %cursor, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %24, i64 %25
  %26 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %26 to i32
  %cmp32 = icmp eq i32 %conv31, 46
  br i1 %cmp32, label %while.body34, label %while.end37

while.body34:                                     ; preds = %while.cond29
  %27 = load i64, i64* %cursor, align 8
  %inc35 = add i64 %27, 1
  store i64 %inc35, i64* %cursor, align 8
  %28 = load i32, i32* %dots_count, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, i32* %dots_count, align 4
  br label %while.cond29, !llvm.loop !30

while.end37:                                      ; preds = %while.cond29
  %29 = load i32, i32* %expect.addr, align 4
  %cmp38 = icmp eq i32 %29, 0
  br i1 %cmp38, label %if.then40, label %if.end46

if.then40:                                        ; preds = %while.end37
  %30 = load i32, i32* %dots_count, align 4
  %cmp41 = icmp eq i32 %30, 1
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then40
  br label %if.end45

if.else44:                                        ; preds = %if.then40
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.__pgn_moves_from_string_recurse, i64 0, i64 0)) #9
  unreachable

if.end45:                                         ; preds = %if.then43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %while.end37
  %31 = load i32, i32* %expect.addr, align 4
  %cmp47 = icmp eq i32 %31, 1
  br i1 %cmp47, label %if.then49, label %if.end55

if.then49:                                        ; preds = %if.end46
  %32 = load i32, i32* %dots_count, align 4
  %cmp50 = icmp eq i32 %32, 3
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.then49
  br label %if.end54

if.else53:                                        ; preds = %if.then49
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.__pgn_moves_from_string_recurse, i64 0, i64 0)) #9
  unreachable

if.end54:                                         ; preds = %if.then52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end46
  %33 = load i8*, i8** %str.addr, align 8
  %call56 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %33, i64* noundef %cursor)
  %34 = load i8*, i8** %str.addr, align 8
  %35 = load i64, i64* %cursor, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %34, i64 %35
  %call58 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 2, i8* noundef %add.ptr57)
  %36 = load i64, i64* %cursor, align 8
  %add59 = add i64 %36, %call58
  store i64 %add59, i64* %cursor, align 8
  %37 = load i32, i32* %dots_count, align 4
  %cmp60 = icmp eq i32 %37, 3
  br i1 %cmp60, label %if.then62, label %if.end84

if.then62:                                        ; preds = %if.end55
  %black = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 1
  %38 = load i8*, i8** %str.addr, align 8
  %39 = load i64, i64* %cursor, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %38, i64 %39
  call void @__pgn_move_from_string(%struct.pgn_move_t* sret(%struct.pgn_move_t) align 8 %tmp, i8* noundef %add.ptr63, i64* noundef %cursor)
  %40 = bitcast %struct.pgn_move_t* %black to i8*
  %41 = bitcast %struct.pgn_move_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 72, i1 false)
  %42 = load i8*, i8** %str.addr, align 8
  %call64 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %42, i64* noundef %cursor)
  %43 = load i8*, i8** %str.addr, align 8
  %44 = load i64, i64* %cursor, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %43, i64 %44
  %call66 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 3, i8* noundef %add.ptr65)
  %45 = load i64, i64* %cursor, align 8
  %add67 = add i64 %45, %call66
  store i64 %add67, i64* %cursor, align 8
  %black68 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 1
  %alternatives = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %black68, i32 0, i32 11
  %46 = load i8*, i8** %str.addr, align 8
  %47 = load i64, i64* %cursor, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %46, i64 %47
  %call70 = call i64 @pgn_alternative_moves_poll(%struct.pgn_alternative_moves_t** noundef %alternatives, %struct.pgn_comments_t** noundef %comments, i8* noundef %add.ptr69, i32 noundef 1)
  %48 = load i64, i64* %cursor, align 8
  %add71 = add i64 %48, %call70
  store i64 %add71, i64* %cursor, align 8
  %49 = load i8*, i8** %str.addr, align 8
  %call72 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %49, i64* noundef %cursor)
  %50 = load i8*, i8** %str.addr, align 8
  %51 = load i64, i64* %cursor, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %50, i64 %51
  %call74 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 3, i8* noundef %add.ptr73)
  %52 = load i64, i64* %cursor, align 8
  %add75 = add i64 %52, %call74
  store i64 %add75, i64* %cursor, align 8
  %53 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %tobool76 = icmp ne %struct.pgn_comments_t* %53, null
  br i1 %tobool76, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.then62
  %54 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %black78 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 1
  %comments79 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %black78, i32 0, i32 10
  store %struct.pgn_comments_t* %54, %struct.pgn_comments_t** %comments79, align 8
  store %struct.pgn_comments_t* null, %struct.pgn_comments_t** %comments, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.then62
  %55 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  call void @pgn_moves_push(%struct.pgn_moves_t* noundef %55, %struct.__pgn_moves_item_t* noundef byval(%struct.__pgn_moves_item_t) align 8 %move)
  %56 = load i8*, i8** %str.addr, align 8
  %57 = load i64, i64* %cursor, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %56, i64 %57
  %58 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %call82 = call %struct.pgn_moves_t* @__pgn_moves_from_string_recurse(i8* noundef %add.ptr81, i64* noundef %cursor, %struct.pgn_moves_t* noundef %58, i32 noundef 0)
  %59 = load i64, i64* %cursor, align 8
  %60 = load i64*, i64** %consumed.addr, align 8
  %61 = load i64, i64* %60, align 8
  %add83 = add i64 %61, %59
  store i64 %add83, i64* %60, align 8
  %62 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  store %struct.pgn_moves_t* %62, %struct.pgn_moves_t** %retval, align 8
  br label %return

if.end84:                                         ; preds = %if.end55
  %white = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 0
  %63 = load i8*, i8** %str.addr, align 8
  %64 = load i64, i64* %cursor, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %63, i64 %64
  call void @__pgn_move_from_string(%struct.pgn_move_t* sret(%struct.pgn_move_t) align 8 %tmp85, i8* noundef %add.ptr86, i64* noundef %cursor)
  %65 = bitcast %struct.pgn_move_t* %white to i8*
  %66 = bitcast %struct.pgn_move_t* %tmp85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 72, i1 false)
  %67 = load i8*, i8** %str.addr, align 8
  %call87 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %67, i64* noundef %cursor)
  %68 = load i8*, i8** %str.addr, align 8
  %69 = load i64, i64* %cursor, align 8
  %add.ptr88 = getelementptr inbounds i8, i8* %68, i64 %69
  %call89 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 3, i8* noundef %add.ptr88)
  %70 = load i64, i64* %cursor, align 8
  %add90 = add i64 %70, %call89
  store i64 %add90, i64* %cursor, align 8
  %white91 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 0
  %alternatives92 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %white91, i32 0, i32 11
  %71 = load i8*, i8** %str.addr, align 8
  %72 = load i64, i64* %cursor, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %71, i64 %72
  %call94 = call i64 @pgn_alternative_moves_poll(%struct.pgn_alternative_moves_t** noundef %alternatives92, %struct.pgn_comments_t** noundef %comments, i8* noundef %add.ptr93, i32 noundef 0)
  %73 = load i64, i64* %cursor, align 8
  %add95 = add i64 %73, %call94
  store i64 %add95, i64* %cursor, align 8
  %74 = load i8*, i8** %str.addr, align 8
  %call96 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %74, i64* noundef %cursor)
  %75 = load i8*, i8** %str.addr, align 8
  %76 = load i64, i64* %cursor, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %75, i64 %76
  %call98 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 3, i8* noundef %add.ptr97)
  %77 = load i64, i64* %cursor, align 8
  %add99 = add i64 %77, %call98
  store i64 %add99, i64* %cursor, align 8
  %78 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %tobool100 = icmp ne %struct.pgn_comments_t* %78, null
  br i1 %tobool100, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.end84
  %79 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %white102 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 0
  %comments103 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %white102, i32 0, i32 10
  store %struct.pgn_comments_t* %79, %struct.pgn_comments_t** %comments103, align 8
  store %struct.pgn_comments_t* null, %struct.pgn_comments_t** %comments, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end84
  %80 = load i8*, i8** %str.addr, align 8
  %81 = load i64, i64* %cursor, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %80, i64 %81
  %call106 = call i32 @pgn_score_from_string(i8* noundef %add.ptr105)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end104
  %82 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  call void @pgn_moves_push(%struct.pgn_moves_t* noundef %82, %struct.__pgn_moves_item_t* noundef byval(%struct.__pgn_moves_item_t) align 8 %move)
  %83 = load i64, i64* %cursor, align 8
  %84 = load i64*, i64** %consumed.addr, align 8
  %85 = load i64, i64* %84, align 8
  %add109 = add i64 %85, %83
  store i64 %add109, i64* %84, align 8
  %86 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  store %struct.pgn_moves_t* %86, %struct.pgn_moves_t** %retval, align 8
  br label %return

if.end110:                                        ; preds = %if.end104
  %87 = load i8*, i8** %str.addr, align 8
  %88 = load i64, i64* %cursor, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %87, i64 %88
  %89 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %89 to i32
  %cmp113 = icmp eq i32 %conv112, 41
  br i1 %cmp113, label %if.then120, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %if.end110
  %90 = load i8*, i8** %str.addr, align 8
  %91 = load i64, i64* %cursor, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %90, i64 %91
  %92 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %92 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %lor.lhs.false115, %if.end110
  %93 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  call void @pgn_moves_push(%struct.pgn_moves_t* noundef %93, %struct.__pgn_moves_item_t* noundef byval(%struct.__pgn_moves_item_t) align 8 %move)
  %94 = load i64, i64* %cursor, align 8
  %95 = load i64*, i64** %consumed.addr, align 8
  %96 = load i64, i64* %95, align 8
  %add121 = add i64 %96, %94
  store i64 %add121, i64* %95, align 8
  %97 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  store %struct.pgn_moves_t* %97, %struct.pgn_moves_t** %retval, align 8
  br label %return

if.end122:                                        ; preds = %lor.lhs.false115
  %98 = load i8*, i8** %str.addr, align 8
  %call123 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %98, i64* noundef %cursor)
  %99 = load i8*, i8** %str.addr, align 8
  %100 = load i64, i64* %cursor, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %99, i64 %100
  %call125 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 1, i8* noundef %add.ptr124)
  %101 = load i64, i64* %cursor, align 8
  %add126 = add i64 %101, %call125
  store i64 %add126, i64* %cursor, align 8
  %call127 = call i16** @__ctype_b_loc() #8
  %102 = load i16*, i16** %call127, align 8
  %103 = load i8*, i8** %str.addr, align 8
  %104 = load i64, i64* %cursor, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %103, i64 %104
  %105 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %105 to i32
  %idxprom130 = sext i32 %conv129 to i64
  %arrayidx131 = getelementptr inbounds i16, i16* %102, i64 %idxprom130
  %106 = load i16, i16* %arrayidx131, align 2
  %conv132 = zext i16 %106 to i32
  %and133 = and i32 %conv132, 2048
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then135, label %if.end159

if.then135:                                       ; preds = %if.end122
  br label %while.cond136

while.cond136:                                    ; preds = %while.body145, %if.then135
  %call137 = call i16** @__ctype_b_loc() #8
  %107 = load i16*, i16** %call137, align 8
  %108 = load i8*, i8** %str.addr, align 8
  %109 = load i64, i64* %cursor, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %108, i64 %109
  %110 = load i8, i8* %arrayidx138, align 1
  %conv139 = sext i8 %110 to i32
  %idxprom140 = sext i32 %conv139 to i64
  %arrayidx141 = getelementptr inbounds i16, i16* %107, i64 %idxprom140
  %111 = load i16, i16* %arrayidx141, align 2
  %conv142 = zext i16 %111 to i32
  %and143 = and i32 %conv142, 2048
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %while.body145, label %while.end147

while.body145:                                    ; preds = %while.cond136
  %112 = load i64, i64* %cursor, align 8
  %inc146 = add i64 %112, 1
  store i64 %inc146, i64* %cursor, align 8
  br label %while.cond136, !llvm.loop !31

while.end147:                                     ; preds = %while.cond136
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end147
  %113 = load i32, i32* %i, align 4
  %cmp148 = icmp slt i32 %113, 3
  br i1 %cmp148, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %114 = load i8*, i8** %str.addr, align 8
  %115 = load i64, i64* %cursor, align 8
  %inc150 = add i64 %115, 1
  store i64 %inc150, i64* %cursor, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %114, i64 %115
  %116 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %116 to i32
  %cmp153 = icmp eq i32 %conv152, 46
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %for.body
  br label %if.end157

if.else156:                                       ; preds = %for.body
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.__pgn_moves_from_string_recurse, i64 0, i64 0)) #9
  unreachable

if.end157:                                        ; preds = %if.then155
  br label %for.inc

for.inc:                                          ; preds = %if.end157
  %117 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %117, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  br label %if.end159

if.end159:                                        ; preds = %for.end, %if.end122
  %118 = load i8*, i8** %str.addr, align 8
  %call160 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %118, i64* noundef %cursor)
  %119 = load i8*, i8** %str.addr, align 8
  %120 = load i64, i64* %cursor, align 8
  %add.ptr161 = getelementptr inbounds i8, i8* %119, i64 %120
  %call162 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 2, i8* noundef %add.ptr161)
  %121 = load i64, i64* %cursor, align 8
  %add163 = add i64 %121, %call162
  store i64 %add163, i64* %cursor, align 8
  %black164 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 1
  %122 = load i8*, i8** %str.addr, align 8
  %123 = load i64, i64* %cursor, align 8
  %add.ptr166 = getelementptr inbounds i8, i8* %122, i64 %123
  call void @__pgn_move_from_string(%struct.pgn_move_t* sret(%struct.pgn_move_t) align 8 %tmp165, i8* noundef %add.ptr166, i64* noundef %cursor)
  %124 = bitcast %struct.pgn_move_t* %black164 to i8*
  %125 = bitcast %struct.pgn_move_t* %tmp165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 72, i1 false)
  %126 = load i8*, i8** %str.addr, align 8
  %call167 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %126, i64* noundef %cursor)
  %127 = load i8*, i8** %str.addr, align 8
  %128 = load i64, i64* %cursor, align 8
  %add.ptr168 = getelementptr inbounds i8, i8* %127, i64 %128
  %call169 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 3, i8* noundef %add.ptr168)
  %129 = load i64, i64* %cursor, align 8
  %add170 = add i64 %129, %call169
  store i64 %add170, i64* %cursor, align 8
  %black171 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 1
  %alternatives172 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %black171, i32 0, i32 11
  %130 = load i8*, i8** %str.addr, align 8
  %131 = load i64, i64* %cursor, align 8
  %add.ptr173 = getelementptr inbounds i8, i8* %130, i64 %131
  %call174 = call i64 @pgn_alternative_moves_poll(%struct.pgn_alternative_moves_t** noundef %alternatives172, %struct.pgn_comments_t** noundef %comments, i8* noundef %add.ptr173, i32 noundef 1)
  %132 = load i64, i64* %cursor, align 8
  %add175 = add i64 %132, %call174
  store i64 %add175, i64* %cursor, align 8
  %133 = load i8*, i8** %str.addr, align 8
  %call176 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %133, i64* noundef %cursor)
  %134 = load i8*, i8** %str.addr, align 8
  %135 = load i64, i64* %cursor, align 8
  %add.ptr177 = getelementptr inbounds i8, i8* %134, i64 %135
  %call178 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %comments, i32 noundef 3, i8* noundef %add.ptr177)
  %136 = load i64, i64* %cursor, align 8
  %add179 = add i64 %136, %call178
  store i64 %add179, i64* %cursor, align 8
  %137 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %tobool180 = icmp ne %struct.pgn_comments_t* %137, null
  br i1 %tobool180, label %if.then181, label %if.end184

if.then181:                                       ; preds = %if.end159
  %138 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %black182 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %move, i32 0, i32 1
  %comments183 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %black182, i32 0, i32 10
  store %struct.pgn_comments_t* %138, %struct.pgn_comments_t** %comments183, align 8
  store %struct.pgn_comments_t* null, %struct.pgn_comments_t** %comments, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %if.end159
  %139 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  call void @pgn_moves_push(%struct.pgn_moves_t* noundef %139, %struct.__pgn_moves_item_t* noundef byval(%struct.__pgn_moves_item_t) align 8 %move)
  %140 = load i8*, i8** %str.addr, align 8
  %141 = load i64, i64* %cursor, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %140, i64 %141
  %call186 = call i32 @pgn_score_from_string(i8* noundef %add.ptr185)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.end184
  %142 = load i64, i64* %cursor, align 8
  %143 = load i64*, i64** %consumed.addr, align 8
  %144 = load i64, i64* %143, align 8
  %add189 = add i64 %144, %142
  store i64 %add189, i64* %143, align 8
  %145 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  store %struct.pgn_moves_t* %145, %struct.pgn_moves_t** %retval, align 8
  br label %return

if.end190:                                        ; preds = %if.end184
  %146 = load i8*, i8** %str.addr, align 8
  %147 = load i64, i64* %cursor, align 8
  %add.ptr191 = getelementptr inbounds i8, i8* %146, i64 %147
  %148 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %call192 = call %struct.pgn_moves_t* @__pgn_moves_from_string_recurse(i8* noundef %add.ptr191, i64* noundef %cursor, %struct.pgn_moves_t* noundef %148, i32 noundef 0)
  %149 = load i64, i64* %cursor, align 8
  %150 = load i64*, i64** %consumed.addr, align 8
  %151 = load i64, i64* %150, align 8
  %add193 = add i64 %151, %149
  store i64 %add193, i64* %150, align 8
  %152 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  store %struct.pgn_moves_t* %152, %struct.pgn_moves_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end190, %if.then188, %if.then120, %if.then108, %if.end80, %if.then
  %153 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %retval, align 8
  ret %struct.pgn_moves_t* %153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pgn_alternative_moves_poll(%struct.pgn_alternative_moves_t** noundef %alt, %struct.pgn_comments_t** noundef %placeholder, i8* noundef %str, i32 noundef %expect) #0 {
entry:
  %alt.addr = alloca %struct.pgn_alternative_moves_t**, align 8
  %placeholder.addr = alloca %struct.pgn_comments_t**, align 8
  %str.addr = alloca i8*, align 8
  %expect.addr = alloca i32, align 4
  %cursor = alloca i64, align 8
  store %struct.pgn_alternative_moves_t** %alt, %struct.pgn_alternative_moves_t*** %alt.addr, align 8
  store %struct.pgn_comments_t** %placeholder, %struct.pgn_comments_t*** %placeholder.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %expect, i32* %expect.addr, align 4
  store i64 0, i64* %cursor, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %cursor, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %cursor, align 8
  %4 = load %struct.pgn_alternative_moves_t**, %struct.pgn_alternative_moves_t*** %alt.addr, align 8
  %5 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %4, align 8
  %tobool = icmp ne %struct.pgn_alternative_moves_t* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call = call %struct.pgn_alternative_moves_t* @pgn_alternative_moves_init()
  %6 = load %struct.pgn_alternative_moves_t**, %struct.pgn_alternative_moves_t*** %alt.addr, align 8
  store %struct.pgn_alternative_moves_t* %call, %struct.pgn_alternative_moves_t** %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i8*, i8** %str.addr, align 8
  %call2 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %7, i64* noundef %cursor)
  %8 = load %struct.pgn_alternative_moves_t**, %struct.pgn_alternative_moves_t*** %alt.addr, align 8
  %9 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %8, align 8
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i64, i64* %cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11
  %call3 = call %struct.pgn_moves_t* @pgn_moves_init()
  %12 = load i32, i32* %expect.addr, align 4
  %call4 = call %struct.pgn_moves_t* @__pgn_moves_from_string_recurse(i8* noundef %add.ptr, i64* noundef %cursor, %struct.pgn_moves_t* noundef %call3, i32 noundef %12)
  call void @pgn_alternative_moves_push(%struct.pgn_alternative_moves_t* noundef %9, %struct.pgn_moves_t* noundef %call4)
  %13 = load i8*, i8** %str.addr, align 8
  %call5 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %13, i64* noundef %cursor)
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i64, i64* %cursor, align 8
  %inc6 = add i64 %15, 1
  store i64 %inc6, i64* %cursor, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %16 to i32
  %cmp9 = icmp eq i32 %conv8, 41
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.39, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.pgn_alternative_moves_poll, i64 0, i64 0)) #9
  unreachable

if.end12:                                         ; preds = %if.then11
  %17 = load i8*, i8** %str.addr, align 8
  %call13 = call zeroext i1 @pgn_cursor_skip_whitespace(i8* noundef %17, i64* noundef %cursor)
  %18 = load %struct.pgn_comments_t**, %struct.pgn_comments_t*** %placeholder.addr, align 8
  %19 = load i8*, i8** %str.addr, align 8
  %20 = load i64, i64* %cursor, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %19, i64 %20
  %call15 = call i64 @pgn_comments_poll(%struct.pgn_comments_t** noundef %18, i32 noundef 4, i8* noundef %add.ptr14)
  %21 = load i64, i64* %cursor, align 8
  %add = add i64 %21, %call15
  store i64 %add, i64* %cursor, align 8
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  %22 = load i64, i64* %cursor, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_moves_push(%struct.pgn_moves_t* noundef %moves, %struct.__pgn_moves_item_t* noundef byval(%struct.__pgn_moves_item_t) align 8 %__moves) #0 {
entry:
  %moves.addr = alloca %struct.pgn_moves_t*, align 8
  store %struct.pgn_moves_t* %moves, %struct.pgn_moves_t** %moves.addr, align 8
  %0 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %length = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %0, i32 0, i32 1
  %1 = load i64, i64* %length, align 8
  %2 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %size = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %2, i32 0, i32 2
  %3 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %size1 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %4, i32 0, i32 2
  %5 = load i64, i64* %size1, align 8
  %add = add i64 %5, 32
  store i64 %add, i64* %size1, align 8
  %6 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %6, i32 0, i32 0
  %7 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values, align 8
  %8 = bitcast %struct.__pgn_moves_item_t* %7 to i8*
  %9 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %size2 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %9, i32 0, i32 2
  %10 = load i64, i64* %size2, align 8
  %mul = mul i64 144, %10
  %call = call i8* @realloc(i8* noundef %8, i64 noundef %mul) #10
  %11 = bitcast i8* %call to %struct.__pgn_moves_item_t*
  %12 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values3 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %12, i32 0, i32 0
  store %struct.__pgn_moves_item_t* %11, %struct.__pgn_moves_item_t** %values3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values4 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %13, i32 0, i32 0
  %14 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values4, align 8
  %15 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %length5 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %15, i32 0, i32 1
  %16 = load i64, i64* %length5, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %length5, align 8
  %arrayidx = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %14, i64 %16
  %17 = bitcast %struct.__pgn_moves_item_t* %arrayidx to i8*
  %18 = bitcast %struct.__pgn_moves_item_t* %__moves to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 144, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgn_score_from_string(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %consumed, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 @__pgn_score_from_string(i8* noundef %0, i64* noundef %consumed)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_moves_t* @__pgn_moves_from_string(i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64*, i64** %consumed.addr, align 8
  %call = call %struct.pgn_moves_t* @pgn_moves_init()
  %call1 = call %struct.pgn_moves_t* @__pgn_moves_from_string_recurse(i8* noundef %0, i64* noundef %1, %struct.pgn_moves_t* noundef %call, i32 noundef 0)
  ret %struct.pgn_moves_t* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_moves_t* @pgn_moves_init() #0 {
entry:
  %moves = alloca %struct.pgn_moves_t*, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #10
  %0 = bitcast i8* %call to %struct.pgn_moves_t*
  store %struct.pgn_moves_t* %0, %struct.pgn_moves_t** %moves, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 4608) #10
  %1 = bitcast i8* %call1 to %struct.__pgn_moves_item_t*
  %2 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves, align 8
  %values = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %2, i32 0, i32 0
  store %struct.__pgn_moves_item_t* %1, %struct.__pgn_moves_item_t** %values, align 8
  %3 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves, align 8
  %size = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %3, i32 0, i32 2
  store i64 32, i64* %size, align 8
  %4 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves, align 8
  %length = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %4, i32 0, i32 1
  store i64 0, i64* %length, align 8
  %5 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves, align 8
  ret %struct.pgn_moves_t* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_moves_t* @pgn_moves_from_string(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %consumed = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %consumed, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call %struct.pgn_moves_t* @__pgn_moves_from_string(i8* noundef %0, i64* noundef %consumed)
  ret %struct.pgn_moves_t* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_alternative_moves_t* @pgn_alternative_moves_init() #0 {
entry:
  %alt = alloca %struct.pgn_alternative_moves_t*, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #10
  %0 = bitcast i8* %call to %struct.pgn_alternative_moves_t*
  store %struct.pgn_alternative_moves_t* %0, %struct.pgn_alternative_moves_t** %alt, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 8) #10
  %1 = bitcast i8* %call1 to %struct.pgn_moves_t**
  %2 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt, align 8
  %values = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %2, i32 0, i32 0
  store %struct.pgn_moves_t** %1, %struct.pgn_moves_t*** %values, align 8
  %3 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt, align 8
  %size = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %3, i32 0, i32 2
  store i64 1, i64* %size, align 8
  %4 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt, align 8
  %length = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %4, i32 0, i32 1
  store i64 0, i64* %length, align 8
  %5 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt, align 8
  ret %struct.pgn_alternative_moves_t* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_alternative_moves_push(%struct.pgn_alternative_moves_t* noundef %alt, %struct.pgn_moves_t* noundef %moves) #0 {
entry:
  %alt.addr = alloca %struct.pgn_alternative_moves_t*, align 8
  %moves.addr = alloca %struct.pgn_moves_t*, align 8
  store %struct.pgn_alternative_moves_t* %alt, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  store %struct.pgn_moves_t* %moves, %struct.pgn_moves_t** %moves.addr, align 8
  %0 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %length = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %0, i32 0, i32 1
  %1 = load i64, i64* %length, align 8
  %2 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %size = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %2, i32 0, i32 2
  %3 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %size1 = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %4, i32 0, i32 2
  %5 = load i64, i64* %size1, align 8
  %add = add i64 %5, 1
  store i64 %add, i64* %size1, align 8
  %6 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %values = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %6, i32 0, i32 0
  %7 = load %struct.pgn_moves_t**, %struct.pgn_moves_t*** %values, align 8
  %8 = bitcast %struct.pgn_moves_t** %7 to i8*
  %9 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %size2 = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %9, i32 0, i32 2
  %10 = load i64, i64* %size2, align 8
  %mul = mul i64 8, %10
  %call = call i8* @realloc(i8* noundef %8, i64 noundef %mul) #10
  %11 = bitcast i8* %call to %struct.pgn_moves_t**
  %12 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %values3 = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %12, i32 0, i32 0
  store %struct.pgn_moves_t** %11, %struct.pgn_moves_t*** %values3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %14 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %values4 = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %14, i32 0, i32 0
  %15 = load %struct.pgn_moves_t**, %struct.pgn_moves_t*** %values4, align 8
  %16 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %length5 = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %16, i32 0, i32 1
  %17 = load i64, i64* %length5, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %length5, align 8
  %arrayidx = getelementptr inbounds %struct.pgn_moves_t*, %struct.pgn_moves_t** %15, i64 %17
  store %struct.pgn_moves_t* %13, %struct.pgn_moves_t** %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_alternative_moves_cleanup(%struct.pgn_alternative_moves_t* noundef %alt) #0 {
entry:
  %alt.addr = alloca %struct.pgn_alternative_moves_t*, align 8
  %i = alloca i64, align 8
  store %struct.pgn_alternative_moves_t* %alt, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %length = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %values = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %3, i32 0, i32 0
  %4 = load %struct.pgn_moves_t**, %struct.pgn_moves_t*** %values, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.pgn_moves_t*, %struct.pgn_moves_t** %4, i64 %5
  %6 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %arrayidx, align 8
  call void @pgn_moves_cleanup(%struct.pgn_moves_t* noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %8 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %values1 = getelementptr inbounds %struct.pgn_alternative_moves_t, %struct.pgn_alternative_moves_t* %8, i32 0, i32 0
  %9 = load %struct.pgn_moves_t**, %struct.pgn_moves_t*** %values1, align 8
  %10 = bitcast %struct.pgn_moves_t** %9 to i8*
  call void @free(i8* noundef %10) #10
  %11 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alt.addr, align 8
  %12 = bitcast %struct.pgn_alternative_moves_t* %11 to i8*
  call void @free(i8* noundef %12) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_moves_cleanup(%struct.pgn_moves_t* noundef %moves) #0 {
entry:
  %moves.addr = alloca %struct.pgn_moves_t*, align 8
  %i = alloca i64, align 8
  store %struct.pgn_moves_t* %moves, %struct.pgn_moves_t** %moves.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %length = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %3, i32 0, i32 0
  %4 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %4, i64 %5
  %white = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx, i32 0, i32 0
  %comments = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %white, i32 0, i32 10
  %6 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments, align 8
  %tobool = icmp ne %struct.pgn_comments_t* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values1 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %7, i32 0, i32 0
  %8 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values1, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %8, i64 %9
  %white3 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx2, i32 0, i32 0
  %comments4 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %white3, i32 0, i32 10
  %10 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments4, align 8
  call void @pgn_comments_cleanup(%struct.pgn_comments_t* noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values5 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %11, i32 0, i32 0
  %12 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values5, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %12, i64 %13
  %black = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx6, i32 0, i32 1
  %comments7 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %black, i32 0, i32 10
  %14 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments7, align 8
  %tobool8 = icmp ne %struct.pgn_comments_t* %14, null
  br i1 %tobool8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %15 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values10 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %15, i32 0, i32 0
  %16 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values10, align 8
  %17 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %16, i64 %17
  %black12 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx11, i32 0, i32 1
  %comments13 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %black12, i32 0, i32 10
  %18 = load %struct.pgn_comments_t*, %struct.pgn_comments_t** %comments13, align 8
  call void @pgn_comments_cleanup(%struct.pgn_comments_t* noundef %18)
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end
  %19 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values15 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %19, i32 0, i32 0
  %20 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values15, align 8
  %21 = load i64, i64* %i, align 8
  %arrayidx16 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %20, i64 %21
  %white17 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx16, i32 0, i32 0
  %alternatives = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %white17, i32 0, i32 11
  %22 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alternatives, align 8
  %tobool18 = icmp ne %struct.pgn_alternative_moves_t* %22, null
  br i1 %tobool18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end14
  %23 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values20 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %23, i32 0, i32 0
  %24 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values20, align 8
  %25 = load i64, i64* %i, align 8
  %arrayidx21 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %24, i64 %25
  %white22 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx21, i32 0, i32 0
  %alternatives23 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %white22, i32 0, i32 11
  %26 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alternatives23, align 8
  call void @pgn_alternative_moves_cleanup(%struct.pgn_alternative_moves_t* noundef %26)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end14
  %27 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values25 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %27, i32 0, i32 0
  %28 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values25, align 8
  %29 = load i64, i64* %i, align 8
  %arrayidx26 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %28, i64 %29
  %black27 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx26, i32 0, i32 1
  %alternatives28 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %black27, i32 0, i32 11
  %30 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alternatives28, align 8
  %tobool29 = icmp ne %struct.pgn_alternative_moves_t* %30, null
  br i1 %tobool29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end24
  %31 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values31 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %31, i32 0, i32 0
  %32 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values31, align 8
  %33 = load i64, i64* %i, align 8
  %arrayidx32 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %32, i64 %33
  %black33 = getelementptr inbounds %struct.__pgn_moves_item_t, %struct.__pgn_moves_item_t* %arrayidx32, i32 0, i32 1
  %alternatives34 = getelementptr inbounds %struct.pgn_move_t, %struct.pgn_move_t* %black33, i32 0, i32 11
  %34 = load %struct.pgn_alternative_moves_t*, %struct.pgn_alternative_moves_t** %alternatives34, align 8
  call void @pgn_alternative_moves_cleanup(%struct.pgn_alternative_moves_t* noundef %34)
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end24
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %35 = load i64, i64* %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %36 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %values36 = getelementptr inbounds %struct.pgn_moves_t, %struct.pgn_moves_t* %36, i32 0, i32 0
  %37 = load %struct.__pgn_moves_item_t*, %struct.__pgn_moves_item_t** %values36, align 8
  %38 = bitcast %struct.__pgn_moves_item_t* %37 to i8*
  call void @free(i8* noundef %38) #10
  %39 = load %struct.pgn_moves_t*, %struct.pgn_moves_t** %moves.addr, align 8
  %40 = bitcast %struct.pgn_moves_t* %39 to i8*
  call void @free(i8* noundef %40) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_metadata_t* @pgn_parse_metadata(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call %struct.pgn_metadata_t* @pgn_metadata_from_string(i8* noundef %0)
  ret %struct.pgn_metadata_t* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_parse_move(%struct.pgn_move_t* noalias sret(%struct.pgn_move_t) align 8 %agg.result, i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  call void @pgn_move_from_string(%struct.pgn_move_t* sret(%struct.pgn_move_t) align 8 %agg.result, i8* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgn_moves_t* @pgn_parse_moves(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call %struct.pgn_moves_t* @pgn_moves_from_string(i8* noundef %0)
  ret %struct.pgn_moves_t* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgn_parse_score(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 @pgn_score_from_string(i8* noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pgn_score_from_string(i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  %cursor = alloca i64, align 8
  %white = alloca i32, align 4
  %black = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  store i64 0, i64* %cursor, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %cursor, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %cursor, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %cursor, align 8
  %4 = load i64, i64* %cursor, align 8
  %5 = load i64*, i64** %consumed.addr, align 8
  %6 = load i64, i64* %5, align 8
  %add = add i64 %6, %4
  store i64 %add, i64* %5, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  %call = call i32 @__pgn_score_single_from_string(i8* noundef %add.ptr, i64* noundef %cursor)
  store i32 %call, i32* %white, align 4
  %9 = load i32, i32* %white, align 4
  %cmp2 = icmp eq i32 %9, -1
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i64, i64* %cursor, align 8
  %inc6 = add i64 %11, 1
  store i64 %inc6, i64* %cursor, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp ne i32 %conv8, 45
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end5
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end5
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i64, i64* %cursor, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %13, i64 %14
  %call14 = call i32 @__pgn_score_single_from_string(i8* noundef %add.ptr13, i64* noundef %cursor)
  store i32 %call14, i32* %black, align 4
  %15 = load i32, i32* %black, align 4
  %cmp15 = icmp eq i32 %15, -1
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  %16 = load i64, i64* %cursor, align 8
  %17 = load i64*, i64** %consumed.addr, align 8
  %18 = load i64, i64* %17, align 8
  %add19 = add i64 %18, %16
  store i64 %add19, i64* %17, align 8
  %19 = load i32, i32* %white, align 4
  %cmp20 = icmp eq i32 %19, 2
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end18
  %20 = load i32, i32* %black, align 4
  %cmp22 = icmp eq i32 %20, 2
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %land.lhs.true
  store i32 2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end18
  %21 = load i32, i32* %white, align 4
  %cmp25 = icmp eq i32 %21, 1
  br i1 %cmp25, label %land.lhs.true27, label %if.else31

land.lhs.true27:                                  ; preds = %if.else
  %22 = load i32, i32* %black, align 4
  %cmp28 = icmp eq i32 %22, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %land.lhs.true27
  store i32 3, i32* %retval, align 4
  br label %return

if.else31:                                        ; preds = %land.lhs.true27, %if.else
  %23 = load i32, i32* %white, align 4
  %cmp32 = icmp eq i32 %23, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.else38

land.lhs.true34:                                  ; preds = %if.else31
  %24 = load i32, i32* %black, align 4
  %cmp35 = icmp eq i32 %24, 1
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %land.lhs.true34
  store i32 4, i32* %retval, align 4
  br label %return

if.else38:                                        ; preds = %land.lhs.true34, %if.else31
  %25 = load i32, i32* %white, align 4
  %cmp39 = icmp eq i32 %25, 0
  br i1 %cmp39, label %land.lhs.true41, label %if.else45

land.lhs.true41:                                  ; preds = %if.else38
  %26 = load i32, i32* %black, align 4
  %cmp42 = icmp eq i32 %26, 0
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %land.lhs.true41
  store i32 5, i32* %retval, align 4
  br label %return

if.else45:                                        ; preds = %land.lhs.true41, %if.else38
  %27 = load i32, i32* %white, align 4
  %cmp46 = icmp eq i32 %27, 0
  br i1 %cmp46, label %land.lhs.true48, label %if.else52

land.lhs.true48:                                  ; preds = %if.else45
  %28 = load i32, i32* %black, align 4
  %cmp49 = icmp eq i32 %28, 2
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %land.lhs.true48
  store i32 6, i32* %retval, align 4
  br label %return

if.else52:                                        ; preds = %land.lhs.true48, %if.else45
  %29 = load i32, i32* %white, align 4
  %cmp53 = icmp eq i32 %29, 2
  br i1 %cmp53, label %land.lhs.true55, label %if.else59

land.lhs.true55:                                  ; preds = %if.else52
  %30 = load i32, i32* %black, align 4
  %cmp56 = icmp eq i32 %30, 0
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %land.lhs.true55
  store i32 7, i32* %retval, align 4
  br label %return

if.else59:                                        ; preds = %land.lhs.true55, %if.else52
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else59, %if.then58, %if.then51, %if.then44, %if.then37, %if.then30, %if.then24, %if.then17, %if.then11, %if.then4, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pgn_piece_to_string(i32 noundef %piece) #0 {
entry:
  %retval = alloca i8*, align 8
  %piece.addr = alloca i32, align 4
  store i32 %piece, i32* %piece.addr, align 4
  %0 = load i32, i32* %piece.addr, align 4
  switch i32 %0, label %sw.default [
    i32 80, label %sw.bb
    i32 82, label %sw.bb1
    i32 78, label %sw.bb2
    i32 66, label %sw.bb3
    i32 81, label %sw.bb4
    i32 75, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pgn_score_single_from_string(i8* noundef %str, i64* noundef %consumed) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %consumed.addr = alloca i64*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64* %consumed, i64** %consumed.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i64 noundef 3) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %consumed.addr, align 8
  %2 = load i64, i64* %1, align 8
  %add = add i64 %2, 3
  store i64 %add, i64* %1, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 48
  br i1 %cmp1, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %5 = load i64*, i64** %consumed.addr, align 8
  %6 = load i64, i64* %5, align 8
  %add4 = add i64 %6, 1
  store i64 %add4, i64* %5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.else5:                                         ; preds = %if.else
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 49
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else5
  %9 = load i64*, i64** %consumed.addr, align 8
  %10 = load i64, i64* %9, align 8
  %add10 = add i64 %10, 1
  store i64 %add10, i64* %9, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else5
  br label %if.end11

if.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then9, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pgn_score_to_string(i32 noundef %score) #0 {
entry:
  %retval = alloca i8*, align 8
  %score.addr = alloca i32, align 4
  store i32 %score, i32* %score.addr, align 4
  %0 = load i32, i32* %score.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry, %sw.bb
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.77, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgn_buffer_grow(%struct.pgn_buffer_t* noundef %buf) #0 {
entry:
  %buf.addr = alloca %struct.pgn_buffer_t*, align 8
  store %struct.pgn_buffer_t* %buf, %struct.pgn_buffer_t** %buf.addr, align 8
  %0 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %size = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %0, i32 0, i32 2
  %1 = load i64, i64* %size, align 8
  %add = add i64 %1, 32
  store i64 %add, i64* %size, align 8
  %2 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %buf1 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %2, i32 0, i32 0
  %3 = load i8*, i8** %buf1, align 8
  %4 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %size2 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %4, i32 0, i32 2
  %5 = load i64, i64* %size2, align 8
  %mul = mul i64 1, %5
  %call = call i8* @realloc(i8* noundef %3, i64 noundef %mul) #10
  %6 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %buf3 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %6, i32 0, i32 0
  store i8* %call, i8** %buf3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pgn_buffer_detach(%struct.pgn_buffer_t* noundef %buf) #0 {
entry:
  %buf.addr = alloca %struct.pgn_buffer_t*, align 8
  %value = alloca i8*, align 8
  store %struct.pgn_buffer_t* %buf, %struct.pgn_buffer_t** %buf.addr, align 8
  %0 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %buf1 = getelementptr inbounds %struct.pgn_buffer_t, %struct.pgn_buffer_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf1, align 8
  store i8* %1, i8** %value, align 8
  %2 = load %struct.pgn_buffer_t*, %struct.pgn_buffer_t** %buf.addr, align 8
  %3 = bitcast %struct.pgn_buffer_t* %2 to i8*
  call void @free(i8* noundef %3) #10
  %4 = load i8*, i8** %value, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @pgn_cursor_skip_comment(i8* noundef %str, i64* noundef %cursor) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %cursor.addr = alloca i64*, align 8
  %left_brace_count = alloca i32, align 4
  %right_brace_count = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64* %cursor, i64** %cursor.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64*, i64** %cursor.addr, align 8
  %2 = load i64, i64* %1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 123
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64*, i64** %cursor.addr, align 8
  %5 = load i64, i64* %4, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %4, align 8
  store i32 1, i32* %left_brace_count, align 4
  store i32 0, i32* %right_brace_count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %6 = load i32, i32* %right_brace_count, align 4
  %7 = load i32, i32* %left_brace_count, align 4
  %cmp2 = icmp ne i32 %6, %7
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i64*, i64** %cursor.addr, align 8
  %10 = load i64, i64* %9, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %10
  %11 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  call void @abort() #9
  unreachable

if.end9:                                          ; preds = %while.body
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i64*, i64** %cursor.addr, align 8
  %14 = load i64, i64* %13, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %14
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 123
  %conv13 = zext i1 %cmp12 to i32
  %16 = load i32, i32* %left_brace_count, align 4
  %add = add i32 %16, %conv13
  store i32 %add, i32* %left_brace_count, align 4
  %17 = load i8*, i8** %str.addr, align 8
  %18 = load i64*, i64** %cursor.addr, align 8
  %19 = load i64, i64* %18, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %19
  %20 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 125
  %conv17 = zext i1 %cmp16 to i32
  %21 = load i32, i32* %right_brace_count, align 4
  %add18 = add i32 %21, %conv17
  store i32 %add18, i32* %right_brace_count, align 4
  %22 = load i64*, i64** %cursor.addr, align 8
  %23 = load i64, i64* %22, align 8
  %inc19 = add i64 %23, 1
  store i64 %inc19, i64* %22, align 8
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %24 = load i1, i1* %retval, align 1
  ret i1 %24
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

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
