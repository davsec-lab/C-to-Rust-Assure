; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/kairocompiler.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/kairocompiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lex_process = type { %struct.pos, %struct.vector*, %struct.compile_process*, i32, %struct.buffer*, %struct.lex_process_functions*, i8* }
%struct.pos = type { i32, i32, i8* }
%struct.vector = type { i8*, i32, i32, i32, i32, i32, i64, %struct.vector* }
%struct.compile_process = type { i32, %struct.pos, %struct.compile_process_input_file, %struct.vector*, %struct.vector*, %struct.vector*, %struct._IO_FILE* }
%struct.compile_process_input_file = type { %struct._IO_FILE*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.buffer = type { i8*, i32, i32, i32 }
%struct.lex_process_functions = type { {}*, {}*, void (%struct.lex_process*, i8)* }
%struct.token = type { i32, i32, %struct.pos, %union.anon, %struct.token_number, i8, i8* }
%union.anon = type { i8* }
%struct.token_number = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.node = type { i32, i32, %struct.pos, %struct.node_binded, %union.anon.0 }
%struct.node_binded = type { %struct.node*, %struct.node* }
%union.anon.0 = type { i8* }

@compiler_lex_functions = dso_local global { i8 (%struct.lex_process*)*, i8 (%struct.lex_process*)*, void (%struct.lex_process*, i8)* } { i8 (%struct.lex_process*)* @compile_process_next_char, i8 (%struct.lex_process*)* @compile_process_peek_char, void (%struct.lex_process*, i8)* @compile_process_push_char }, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c" on line %i, col %i in file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"vector_in_bounds_for_pop(vector, index)\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/helpers/vector.c\00", align 1
@__PRETTY_FUNCTION__.vector_assert_bounds_for_pop = private unnamed_addr constant [56 x i8] c"void vector_assert_bounds_for_pop(struct vector *, int)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vector->data\00", align 1
@__PRETTY_FUNCTION__.vector_resize_for_index = private unnamed_addr constant [56 x i8] c"void vector_resize_for_index(struct vector *, int, int)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"vector->pindex >= 1\00", align 1
@__PRETTY_FUNCTION__.vector_pop_last_peek = private unnamed_addr constant [43 x i8] c"void vector_pop_last_peek(struct vector *)\00", align 1
@lex_process = internal global %struct.lex_process* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"c == next_c\00", align 1
@.str.8 = private unnamed_addr constant [100 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/kairocompiler/lexer.c\00", align 1
@__PRETTY_FUNCTION__.assert_next_char = private unnamed_addr constant [28 x i8] c"char assert_next_char(char)\00", align 1
@tmp_token = internal global %struct.token zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"nextc() == start_delim\00", align 1
@__PRETTY_FUNCTION__.token_make_string = private unnamed_addr constant [44 x i8] c"struct token *token_make_string(char, char)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"= \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"You closed an expression that you never opened\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"_Alignas\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"_Alignof\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"_Atomic\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"_Bool\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"_Complex\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"_Generic\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"_Imaginary\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"_Noreturn\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"_Static_assert\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"_Thread_local\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"__ignore_typecheck\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"You did not close this multiline comment\0A\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"Invalid Binary number\0A\00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c"You opened a quote ' but did not close it\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"Unexpected token\0A\00", align 1
@lexer_string_buffer_functions = dso_local global { i8 (%struct.lex_process*)*, i8 (%struct.lex_process*)*, void (%struct.lex_process*, i8)* } { i8 (%struct.lex_process*)* @lexer_string_buffer_next_char, i8 (%struct.lex_process*)* @lexer_string_buffer_peek_char, void (%struct.lex_process*, i8)* @lexer_string_buffer_push_char }, align 8
@node_vector = dso_local global %struct.vector* null, align 8
@node_vector_root = dso_local global %struct.vector* null, align 8
@current_process = internal global %struct.compile_process* null, align 8
@parser_last_token = internal global %struct.token* null, align 8
@.str.95 = private unnamed_addr constant [52 x i8] c"This is not a token that can be converted to a node\00", align 1

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
define dso_local signext i8 @compile_process_next_char(%struct.lex_process* noundef %lex_process) #0 {
entry:
  %lex_process.addr = alloca %struct.lex_process*, align 8
  %compiler = alloca %struct.compile_process*, align 8
  %c = alloca i8, align 1
  store %struct.lex_process* %lex_process, %struct.lex_process** %lex_process.addr, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** %lex_process.addr, align 8
  %compiler1 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 2
  %1 = load %struct.compile_process*, %struct.compile_process** %compiler1, align 8
  store %struct.compile_process* %1, %struct.compile_process** %compiler, align 8
  %2 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  %pos = getelementptr inbounds %struct.compile_process, %struct.compile_process* %2, i32 0, i32 1
  %col = getelementptr inbounds %struct.pos, %struct.pos* %pos, i32 0, i32 1
  %3 = load i32, i32* %col, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %col, align 4
  %4 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  %cfile = getelementptr inbounds %struct.compile_process, %struct.compile_process* %4, i32 0, i32 2
  %fp = getelementptr inbounds %struct.compile_process_input_file, %struct.compile_process_input_file* %cfile, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @getc(%struct._IO_FILE* noundef %5)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %c, align 1
  %6 = load i8, i8* %c, align 1
  %conv2 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  %pos4 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %7, i32 0, i32 1
  %line = getelementptr inbounds %struct.pos, %struct.pos* %pos4, i32 0, i32 0
  %8 = load i32, i32* %line, align 8
  %add5 = add nsw i32 %8, 1
  store i32 %add5, i32* %line, align 8
  %9 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  %pos6 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %9, i32 0, i32 1
  %col7 = getelementptr inbounds %struct.pos, %struct.pos* %pos6, i32 0, i32 1
  store i32 1, i32* %col7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8, i8* %c, align 1
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @compile_process_peek_char(%struct.lex_process* noundef %lex_process) #0 {
entry:
  %lex_process.addr = alloca %struct.lex_process*, align 8
  %compiler = alloca %struct.compile_process*, align 8
  %c = alloca i8, align 1
  store %struct.lex_process* %lex_process, %struct.lex_process** %lex_process.addr, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** %lex_process.addr, align 8
  %compiler1 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 2
  %1 = load %struct.compile_process*, %struct.compile_process** %compiler1, align 8
  store %struct.compile_process* %1, %struct.compile_process** %compiler, align 8
  %2 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  %cfile = getelementptr inbounds %struct.compile_process, %struct.compile_process* %2, i32 0, i32 2
  %fp = getelementptr inbounds %struct.compile_process_input_file, %struct.compile_process_input_file* %cfile, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @getc(%struct._IO_FILE* noundef %3)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %c, align 1
  %4 = load i8, i8* %c, align 1
  %conv2 = sext i8 %4 to i32
  %5 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  %cfile3 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %5, i32 0, i32 2
  %fp4 = getelementptr inbounds %struct.compile_process_input_file, %struct.compile_process_input_file* %cfile3, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp4, align 8
  %call5 = call i32 @ungetc(i32 noundef %conv2, %struct._IO_FILE* noundef %6)
  %7 = load i8, i8* %c, align 1
  ret i8 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compile_process_push_char(%struct.lex_process* noundef %lex_process, i8 noundef signext %c) #0 {
entry:
  %lex_process.addr = alloca %struct.lex_process*, align 8
  %c.addr = alloca i8, align 1
  %compiler = alloca %struct.compile_process*, align 8
  store %struct.lex_process* %lex_process, %struct.lex_process** %lex_process.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.lex_process*, %struct.lex_process** %lex_process.addr, align 8
  %compiler1 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 2
  %1 = load %struct.compile_process*, %struct.compile_process** %compiler1, align 8
  store %struct.compile_process* %1, %struct.compile_process** %compiler, align 8
  %2 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %2 to i32
  %3 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  %cfile = getelementptr inbounds %struct.compile_process, %struct.compile_process* %3, i32 0, i32 2
  %fp = getelementptr inbounds %struct.compile_process_input_file, %struct.compile_process_input_file* %cfile, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @ungetc(i32 noundef %conv, %struct._IO_FILE* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compiler_error(%struct.compile_process* noundef %compiler, i8* noundef %msg, ...) #0 {
entry:
  %compiler.addr = alloca %struct.compile_process*, align 8
  %msg.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.compile_process* %compiler, %struct.compile_process** %compiler.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call = call i32 @vfprintf(%struct._IO_FILE* noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load %struct.compile_process*, %struct.compile_process** %compiler.addr, align 8
  %pos = getelementptr inbounds %struct.compile_process, %struct.compile_process* %3, i32 0, i32 1
  %line = getelementptr inbounds %struct.pos, %struct.pos* %pos, i32 0, i32 0
  %4 = load i32, i32* %line, align 8
  %5 = load %struct.compile_process*, %struct.compile_process** %compiler.addr, align 8
  %pos5 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %5, i32 0, i32 1
  %col = getelementptr inbounds %struct.pos, %struct.pos* %pos5, i32 0, i32 1
  %6 = load i32, i32* %col, align 4
  %7 = load %struct.compile_process*, %struct.compile_process** %compiler.addr, align 8
  %pos6 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %7, i32 0, i32 1
  %filename = getelementptr inbounds %struct.pos, %struct.pos* %pos6, i32 0, i32 2
  %8 = load i8*, i8** %filename, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %4, i32 noundef %6, i8* noundef %8)
  call void @exit(i32 noundef -1) #9
  unreachable
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compiler_warning(%struct.compile_process* noundef %compiler, i8* noundef %msg, ...) #0 {
entry:
  %compiler.addr = alloca %struct.compile_process*, align 8
  %msg.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.compile_process* %compiler, %struct.compile_process** %compiler.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call = call i32 @vfprintf(%struct._IO_FILE* noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load %struct.compile_process*, %struct.compile_process** %compiler.addr, align 8
  %pos = getelementptr inbounds %struct.compile_process, %struct.compile_process* %3, i32 0, i32 1
  %line = getelementptr inbounds %struct.pos, %struct.pos* %pos, i32 0, i32 0
  %4 = load i32, i32* %line, align 8
  %5 = load %struct.compile_process*, %struct.compile_process** %compiler.addr, align 8
  %pos5 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %5, i32 0, i32 1
  %col = getelementptr inbounds %struct.pos, %struct.pos* %pos5, i32 0, i32 1
  %6 = load i32, i32* %col, align 4
  %7 = load %struct.compile_process*, %struct.compile_process** %compiler.addr, align 8
  %pos6 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %7, i32 0, i32 1
  %filename = getelementptr inbounds %struct.pos, %struct.pos* %pos6, i32 0, i32 2
  %8 = load i8*, i8** %filename, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %4, i32 noundef %6, i8* noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compile_file(i8* noundef %filename, i8* noundef %out_filename, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %out_filename.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %process = alloca %struct.compile_process*, align 8
  %lex_process = alloca %struct.lex_process*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %out_filename, i8** %out_filename.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i8*, i8** %out_filename.addr, align 8
  %2 = load i32, i32* %flags.addr, align 4
  %call = call %struct.compile_process* @compile_process_create(i8* noundef %0, i8* noundef %1, i32 noundef %2)
  store %struct.compile_process* %call, %struct.compile_process** %process, align 8
  %3 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %tobool = icmp ne %struct.compile_process* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %call1 = call %struct.lex_process* @lex_process_create(%struct.compile_process* noundef %4, %struct.lex_process_functions* noundef bitcast ({ i8 (%struct.lex_process*)*, i8 (%struct.lex_process*)*, void (%struct.lex_process*, i8)* }* @compiler_lex_functions to %struct.lex_process_functions*), i8* noundef null)
  store %struct.lex_process* %call1, %struct.lex_process** %lex_process, align 8
  %5 = load %struct.lex_process*, %struct.lex_process** %lex_process, align 8
  %tobool2 = icmp ne %struct.lex_process* %5, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load %struct.lex_process*, %struct.lex_process** %lex_process, align 8
  %call5 = call i32 @lex(%struct.lex_process* noundef %6)
  %cmp = icmp ne i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  %7 = load %struct.lex_process*, %struct.lex_process** %lex_process, align 8
  %token_vec = getelementptr inbounds %struct.lex_process, %struct.lex_process* %7, i32 0, i32 1
  %8 = load %struct.vector*, %struct.vector** %token_vec, align 8
  %9 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %token_vec8 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %9, i32 0, i32 3
  store %struct.vector* %8, %struct.vector** %token_vec8, align 8
  %10 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %call9 = call i32 @parse(%struct.compile_process* noundef %10)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  store i32 1, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then6, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.compile_process* @compile_process_create(i8* noundef %filename, i8* noundef %filename_out, i32 noundef %flags) #0 {
entry:
  %retval = alloca %struct.compile_process*, align 8
  %filename.addr = alloca i8*, align 8
  %filename_out.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %out_file = alloca %struct._IO_FILE*, align 8
  %process = alloca %struct.compile_process*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %filename_out, i8** %filename_out.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.compile_process* null, %struct.compile_process** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %out_file, align 8
  %2 = load i8*, i8** %filename_out.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** %filename_out.addr, align 8
  %call3 = call noalias %struct._IO_FILE* @fopen(i8* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %out_file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %tobool4 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then2
  store %struct.compile_process* null, %struct.compile_process** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %call8 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 72) #10
  %5 = bitcast i8* %call8 to %struct.compile_process*
  store %struct.compile_process* %5, %struct.compile_process** %process, align 8
  %call9 = call %struct.vector* @vector_create(i64 noundef 8)
  %6 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %node_vec = getelementptr inbounds %struct.compile_process, %struct.compile_process* %6, i32 0, i32 4
  store %struct.vector* %call9, %struct.vector** %node_vec, align 8
  %call10 = call %struct.vector* @vector_create(i64 noundef 8)
  %7 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %node_tree_vec = getelementptr inbounds %struct.compile_process, %struct.compile_process* %7, i32 0, i32 5
  store %struct.vector* %call10, %struct.vector** %node_tree_vec, align 8
  %8 = load i32, i32* %flags.addr, align 4
  %9 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %flags11 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %9, i32 0, i32 0
  store i32 %8, i32* %flags11, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %11 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %cfile = getelementptr inbounds %struct.compile_process, %struct.compile_process* %11, i32 0, i32 2
  %fp = getelementptr inbounds %struct.compile_process_input_file, %struct.compile_process_input_file* %cfile, i32 0, i32 0
  store %struct._IO_FILE* %10, %struct._IO_FILE** %fp, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %13 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  %ofile = getelementptr inbounds %struct.compile_process, %struct.compile_process* %13, i32 0, i32 6
  store %struct._IO_FILE* %12, %struct._IO_FILE** %ofile, align 8
  %14 = load %struct.compile_process*, %struct.compile_process** %process, align 8
  store %struct.compile_process* %14, %struct.compile_process** %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %15 = load %struct.compile_process*, %struct.compile_process** %retval, align 8
  ret %struct.compile_process* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lex_process* @lex_process_create(%struct.compile_process* noundef %compiler, %struct.lex_process_functions* noundef %functions, i8* noundef %private) #0 {
entry:
  %compiler.addr = alloca %struct.compile_process*, align 8
  %functions.addr = alloca %struct.lex_process_functions*, align 8
  %private.addr = alloca i8*, align 8
  %process = alloca %struct.lex_process*, align 8
  store %struct.compile_process* %compiler, %struct.compile_process** %compiler.addr, align 8
  store %struct.lex_process_functions* %functions, %struct.lex_process_functions** %functions.addr, align 8
  store i8* %private, i8** %private.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #10
  %0 = bitcast i8* %call to %struct.lex_process*
  store %struct.lex_process* %0, %struct.lex_process** %process, align 8
  %1 = load %struct.lex_process_functions*, %struct.lex_process_functions** %functions.addr, align 8
  %2 = load %struct.lex_process*, %struct.lex_process** %process, align 8
  %function = getelementptr inbounds %struct.lex_process, %struct.lex_process* %2, i32 0, i32 5
  store %struct.lex_process_functions* %1, %struct.lex_process_functions** %function, align 8
  %call1 = call %struct.vector* @vector_create(i64 noundef 48)
  %3 = load %struct.lex_process*, %struct.lex_process** %process, align 8
  %token_vec = getelementptr inbounds %struct.lex_process, %struct.lex_process* %3, i32 0, i32 1
  store %struct.vector* %call1, %struct.vector** %token_vec, align 8
  %4 = load %struct.compile_process*, %struct.compile_process** %compiler.addr, align 8
  %5 = load %struct.lex_process*, %struct.lex_process** %process, align 8
  %compiler2 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %5, i32 0, i32 2
  store %struct.compile_process* %4, %struct.compile_process** %compiler2, align 8
  %6 = load i8*, i8** %private.addr, align 8
  %7 = load %struct.lex_process*, %struct.lex_process** %process, align 8
  %private3 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %7, i32 0, i32 6
  store i8* %6, i8** %private3, align 8
  %8 = load %struct.lex_process*, %struct.lex_process** %process, align 8
  %pos = getelementptr inbounds %struct.lex_process, %struct.lex_process* %8, i32 0, i32 0
  %line = getelementptr inbounds %struct.pos, %struct.pos* %pos, i32 0, i32 0
  store i32 1, i32* %line, align 8
  %9 = load %struct.lex_process*, %struct.lex_process** %process, align 8
  %pos4 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %9, i32 0, i32 0
  %col = getelementptr inbounds %struct.pos, %struct.pos* %pos4, i32 0, i32 1
  store i32 1, i32* %col, align 4
  %10 = load %struct.lex_process*, %struct.lex_process** %process, align 8
  ret %struct.lex_process* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lex(%struct.lex_process* noundef %process) #0 {
entry:
  %process.addr = alloca %struct.lex_process*, align 8
  %token = alloca %struct.token*, align 8
  store %struct.lex_process* %process, %struct.lex_process** %process.addr, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %current_expression_count = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 3
  store i32 0, i32* %current_expression_count, align 8
  %1 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %parentheses_buffer = getelementptr inbounds %struct.lex_process, %struct.lex_process* %1, i32 0, i32 4
  store %struct.buffer* null, %struct.buffer** %parentheses_buffer, align 8
  %2 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  store %struct.lex_process* %2, %struct.lex_process** @lex_process, align 8
  %3 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %compiler = getelementptr inbounds %struct.lex_process, %struct.lex_process* %3, i32 0, i32 2
  %4 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  %cfile = getelementptr inbounds %struct.compile_process, %struct.compile_process* %4, i32 0, i32 2
  %abs_path = getelementptr inbounds %struct.compile_process_input_file, %struct.compile_process_input_file* %cfile, i32 0, i32 1
  %5 = load i8*, i8** %abs_path, align 8
  %6 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %pos = getelementptr inbounds %struct.lex_process, %struct.lex_process* %6, i32 0, i32 0
  %filename = getelementptr inbounds %struct.pos, %struct.pos* %pos, i32 0, i32 2
  store i8* %5, i8** %filename, align 8
  %call = call %struct.token* @read_next_token()
  store %struct.token* %call, %struct.token** %token, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load %struct.token*, %struct.token** %token, align 8
  %tobool = icmp ne %struct.token* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %token_vec = getelementptr inbounds %struct.lex_process, %struct.lex_process* %8, i32 0, i32 1
  %9 = load %struct.vector*, %struct.vector** %token_vec, align 8
  %10 = load %struct.token*, %struct.token** %token, align 8
  %11 = bitcast %struct.token* %10 to i8*
  call void @vector_push(%struct.vector* noundef %9, i8* noundef %11)
  %call1 = call %struct.token* @read_next_token()
  store %struct.token* %call1, %struct.token** %token, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse(%struct.compile_process* noundef %process) #0 {
entry:
  %process.addr = alloca %struct.compile_process*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.compile_process* %process, %struct.compile_process** %process.addr, align 8
  %0 = load %struct.compile_process*, %struct.compile_process** %process.addr, align 8
  store %struct.compile_process* %0, %struct.compile_process** @current_process, align 8
  store %struct.token* null, %struct.token** @parser_last_token, align 8
  %1 = load %struct.compile_process*, %struct.compile_process** %process.addr, align 8
  %node_vec = getelementptr inbounds %struct.compile_process, %struct.compile_process* %1, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %node_vec, align 8
  %3 = load %struct.compile_process*, %struct.compile_process** %process.addr, align 8
  %node_tree_vec = getelementptr inbounds %struct.compile_process, %struct.compile_process* %3, i32 0, i32 5
  %4 = load %struct.vector*, %struct.vector** %node_tree_vec, align 8
  call void @node_set_vector(%struct.vector* noundef %2, %struct.vector* noundef %4)
  store %struct.node* null, %struct.node** %node, align 8
  %5 = load %struct.compile_process*, %struct.compile_process** %process.addr, align 8
  %token_vec = getelementptr inbounds %struct.compile_process, %struct.compile_process* %5, i32 0, i32 3
  %6 = load %struct.vector*, %struct.vector** %token_vec, align 8
  call void @vector_set_peek_pointer(%struct.vector* noundef %6, i32 noundef 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @parse_next()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call %struct.node* @node_peek()
  store %struct.node* %call1, %struct.node** %node, align 8
  %7 = load %struct.compile_process*, %struct.compile_process** %process.addr, align 8
  %node_tree_vec2 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %7, i32 0, i32 5
  %8 = load %struct.vector*, %struct.vector** %node_tree_vec2, align 8
  %9 = bitcast %struct.node** %node to i8*
  call void @vector_push(%struct.vector* noundef %8, i8* noundef %9)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vector* @vector_create(i64 noundef %esize) #0 {
entry:
  %esize.addr = alloca i64, align 8
  %vec = alloca %struct.vector*, align 8
  store i64 %esize, i64* %esize.addr, align 8
  %0 = load i64, i64* %esize.addr, align 8
  %call = call %struct.vector* @vector_create_no_saves(i64 noundef %0)
  store %struct.vector* %call, %struct.vector** %vec, align 8
  %call1 = call %struct.vector* @vector_create_no_saves(i64 noundef 48)
  %1 = load %struct.vector*, %struct.vector** %vec, align 8
  %saves = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 7
  store %struct.vector* %call1, %struct.vector** %saves, align 8
  %2 = load %struct.vector*, %struct.vector** %vec, align 8
  ret %struct.vector* %2
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer* @buffer_create() #0 {
entry:
  %buf = alloca %struct.buffer*, align 8
  %call = call noalias i8* @calloc(i64 noundef 24, i64 noundef 1) #10
  %0 = bitcast i8* %call to %struct.buffer*
  store %struct.buffer* %0, %struct.buffer** %buf, align 8
  %call1 = call noalias i8* @calloc(i64 noundef 2000, i64 noundef 1) #10
  %1 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  store i8* %call1, i8** %data, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %len = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 2
  store i32 0, i32* %len, align 4
  %3 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %msize = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 3
  store i32 2000, i32* %msize, align 8
  %4 = load %struct.buffer*, %struct.buffer** %buf, align 8
  ret %struct.buffer* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_extend(%struct.buffer* noundef %buffer, i64 noundef %size) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %size.addr = alloca i64, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %msize = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 3
  %3 = load i32, i32* %msize, align 8
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %size.addr, align 8
  %add = add i64 %conv, %4
  %call = call i8* @realloc(i8* noundef %1, i64 noundef %add) #10
  %5 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data1 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i8* %call, i8** %data1, align 8
  %6 = load i64, i64* %size.addr, align 8
  %7 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %msize2 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 3
  %8 = load i32, i32* %msize2, align 8
  %conv3 = sext i32 %8 to i64
  %add4 = add i64 %conv3, %6
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %msize2, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_need(%struct.buffer* noundef %buffer, i64 noundef %size) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %size.addr = alloca i64, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %msize = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 3
  %1 = load i32, i32* %msize, align 8
  %conv = sext i32 %1 to i64
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 2
  %3 = load i32, i32* %len, align 4
  %conv1 = sext i32 %3 to i64
  %4 = load i64, i64* %size.addr, align 8
  %add = add i64 %conv1, %4
  %cmp = icmp ule i64 %conv, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %size.addr, align 8
  %add3 = add i64 %5, 2000
  store i64 %add3, i64* %size.addr, align 8
  %6 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %7 = load i64, i64* %size.addr, align 8
  call void @buffer_extend(%struct.buffer* noundef %6, i64 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_printf(%struct.buffer* noundef %buffer, i8* noundef %fmt, ...) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %fmt.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %index = alloca i32, align 4
  %len2 = alloca i32, align 4
  %actual_len = alloca i32, align 4
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 2
  %1 = load i32, i32* %len, align 4
  store i32 %1, i32* %index, align 4
  store i32 2048, i32* %len2, align 4
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %3 = load i32, i32* %len2, align 4
  %conv = sext i32 %3 to i64
  call void @buffer_extend(%struct.buffer* noundef %2, i64 noundef %conv)
  %4 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load i32, i32* %index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i32, i32* %len2, align 4
  %conv3 = sext i32 %7 to i64
  %8 = load i8*, i8** %fmt.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call = call i32 @vsnprintf(i8* noundef %arrayidx, i64 noundef %conv3, i8* noundef %8, %struct.__va_list_tag* noundef %arraydecay4) #10
  store i32 %call, i32* %actual_len, align 4
  %9 = load i32, i32* %actual_len, align 4
  %10 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len5 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 2
  %11 = load i32, i32* %len5, align 4
  %add = add nsw i32 %11, %9
  store i32 %add, i32* %len5, align 4
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_printf_no_terminator(%struct.buffer* noundef %buffer, i8* noundef %fmt, ...) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %fmt.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %index = alloca i32, align 4
  %len2 = alloca i32, align 4
  %actual_len = alloca i32, align 4
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 2
  %1 = load i32, i32* %len, align 4
  store i32 %1, i32* %index, align 4
  store i32 2048, i32* %len2, align 4
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %3 = load i32, i32* %len2, align 4
  %conv = sext i32 %3 to i64
  call void @buffer_extend(%struct.buffer* noundef %2, i64 noundef %conv)
  %4 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load i32, i32* %index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i32, i32* %len2, align 4
  %conv3 = sext i32 %7 to i64
  %8 = load i8*, i8** %fmt.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call = call i32 @vsnprintf(i8* noundef %arrayidx, i64 noundef %conv3, i8* noundef %8, %struct.__va_list_tag* noundef %arraydecay4) #10
  store i32 %call, i32* %actual_len, align 4
  %9 = load i32, i32* %actual_len, align 4
  %sub = sub nsw i32 %9, 1
  %10 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len5 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 2
  %11 = load i32, i32* %len5, align 4
  %add = add nsw i32 %11, %sub
  store i32 %add, i32* %len5, align 4
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_write(%struct.buffer* noundef %buffer, i8 noundef signext %c) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %c.addr = alloca i8, align 1
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  call void @buffer_need(%struct.buffer* noundef %0, i64 noundef 1)
  %1 = load i8, i8* %c.addr, align 1
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 2
  %5 = load i32, i32* %len, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 %1, i8* %arrayidx, align 1
  %6 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len1 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 2
  %7 = load i32, i32* %len1, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %len1, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @buffer_ptr(%struct.buffer* noundef %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @buffer_read(%struct.buffer* noundef %buffer) #0 {
entry:
  %retval = alloca i8, align 1
  %buffer.addr = alloca %struct.buffer*, align 8
  %c = alloca i8, align 1
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %rindex = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 1
  %1 = load i32, i32* %rindex, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 2
  %3 = load i32, i32* %len, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %rindex1 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %7 = load i32, i32* %rindex1, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  store i8 %8, i8* %c, align 1
  %9 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %rindex2 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 1
  %10 = load i32, i32* %rindex2, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %rindex2, align 8
  %11 = load i8, i8* %c, align 1
  store i8 %11, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i8, i8* %retval, align 1
  ret i8 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @buffer_peek(%struct.buffer* noundef %buffer) #0 {
entry:
  %retval = alloca i8, align 1
  %buffer.addr = alloca %struct.buffer*, align 8
  %c = alloca i8, align 1
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %rindex = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 1
  %1 = load i32, i32* %rindex, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 2
  %3 = load i32, i32* %len, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %rindex1 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %7 = load i32, i32* %rindex1, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  store i8 %8, i8* %c, align 1
  %9 = load i8, i8* %c, align 1
  store i8 %9, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8, i8* %retval, align 1
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_free(%struct.buffer* noundef %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %data = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  call void @free(i8* noundef %1) #10
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %3 = bitcast %struct.buffer* %2 to i8*
  call void @free(i8* noundef %3) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @vector_in_bounds_for_at(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 2
  %3 = load i32, i32* %rindex, align 4
  %cmp1 = icmp slt i32 %1, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @vector_in_bounds_for_pop(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %mindex = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 3
  %3 = load i32, i32* %mindex, align 8
  %cmp1 = icmp slt i32 %1, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_assert_bounds_for_pop(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %call = call zeroext i1 @vector_in_bounds_for_pop(%struct.vector* noundef %0, i32 noundef %1)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.vector_assert_bounds_for_pop, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vector* @vector_create_no_saves(i64 noundef %esize) #0 {
entry:
  %esize.addr = alloca i64, align 8
  %vector = alloca %struct.vector*, align 8
  store i64 %esize, i64* %esize.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 48, i64 noundef 1) #10
  %0 = bitcast i8* %call to %struct.vector*
  store %struct.vector* %0, %struct.vector** %vector, align 8
  %1 = load i64, i64* %esize.addr, align 8
  %mul = mul i64 %1, 20
  %call1 = call noalias i8* @malloc(i64 noundef %mul) #10
  %2 = load %struct.vector*, %struct.vector** %vector, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  store i8* %call1, i8** %data, align 8
  %3 = load %struct.vector*, %struct.vector** %vector, align 8
  %mindex = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 3
  store i32 20, i32* %mindex, align 8
  %4 = load %struct.vector*, %struct.vector** %vector, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  store i32 0, i32* %rindex, align 4
  %5 = load %struct.vector*, %struct.vector** %vector, align 8
  %pindex = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 1
  store i32 0, i32* %pindex, align 8
  %6 = load i64, i64* %esize.addr, align 8
  %7 = load %struct.vector*, %struct.vector** %vector, align 8
  %esize2 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 6
  store i64 %6, i64* %esize2, align 8
  %8 = load %struct.vector*, %struct.vector** %vector, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 4
  store i32 0, i32* %count, align 4
  %9 = load %struct.vector*, %struct.vector** %vector, align 8
  ret %struct.vector* %9
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vector_total_size(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 4
  %1 = load i32, i32* %count, align 4
  %conv = sext i32 %1 to i64
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 6
  %3 = load i64, i64* %esize, align 8
  %mul = mul i64 %conv, %3
  ret i64 %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vector_element_size(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 6
  %1 = load i64, i64* %esize, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vector* @vector_clone(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %new_data_address = alloca i8*, align 8
  %new_vec = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 6
  %1 = load i64, i64* %esize, align 8
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 4
  %3 = load i32, i32* %count, align 4
  %add = add nsw i32 %3, 20
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 noundef %1, i64 noundef %conv) #10
  store i8* %call, i8** %new_data_address, align 8
  %4 = load i8*, i8** %new_data_address, align 8
  %5 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call1 = call i64 @vector_total_size(%struct.vector* noundef %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %6, i64 %call1, i1 false)
  %call2 = call noalias i8* @calloc(i64 noundef 48, i64 noundef 1) #10
  %8 = bitcast i8* %call2 to %struct.vector*
  store %struct.vector* %8, %struct.vector** %new_vec, align 8
  %9 = load %struct.vector*, %struct.vector** %new_vec, align 8
  %10 = bitcast %struct.vector* %9 to i8*
  %11 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %12 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %12, i64 48, i1 false)
  %13 = load i8*, i8** %new_data_address, align 8
  %14 = load %struct.vector*, %struct.vector** %new_vec, align 8
  %data3 = getelementptr inbounds %struct.vector, %struct.vector* %14, i32 0, i32 0
  store i8* %13, i8** %data3, align 8
  %15 = load %struct.vector*, %struct.vector** %new_vec, align 8
  ret %struct.vector* %15
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_free(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  call void @free(i8* noundef %1) #10
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %3 = bitcast %struct.vector* %2 to i8*
  call void @free(i8* noundef %3) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_current_index(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 2
  %1 = load i32, i32* %rindex, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_resize_for_index(%struct.vector* noundef %vector, i32 noundef %start_index, i32 noundef %total_elements) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %start_index.addr = alloca i32, align 4
  %total_elements.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %start_index, i32* %start_index.addr, align 4
  store i32 %total_elements, i32* %total_elements.addr, align 4
  %0 = load i32, i32* %start_index.addr, align 4
  %1 = load i32, i32* %total_elements.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %mindex = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 3
  %3 = load i32, i32* %mindex, align 8
  %cmp = icmp slt i32 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load i32, i32* %start_index.addr, align 4
  %7 = load i32, i32* %total_elements.addr, align 4
  %add1 = add nsw i32 %6, %7
  %add2 = add nsw i32 %add1, 20
  %conv = sext i32 %add2 to i64
  %8 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 6
  %9 = load i64, i64* %esize, align 8
  %mul = mul i64 %conv, %9
  %call = call i8* @realloc(i8* noundef %5, i64 noundef %mul) #10
  %10 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data3 = getelementptr inbounds %struct.vector, %struct.vector* %10, i32 0, i32 0
  store i8* %call, i8** %data3, align 8
  %11 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data4 = getelementptr inbounds %struct.vector, %struct.vector* %11, i32 0, i32 0
  %12 = load i8*, i8** %data4, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.vector_resize_for_index, i64 0, i64 0)) #9
  unreachable

if.end6:                                          ; preds = %if.then5
  %13 = load i32, i32* %start_index.addr, align 4
  %14 = load i32, i32* %total_elements.addr, align 4
  %add7 = add nsw i32 %13, %14
  %15 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %mindex8 = getelementptr inbounds %struct.vector, %struct.vector* %15, i32 0, i32 3
  store i32 %add7, i32* %mindex8, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_resize_for(%struct.vector* noundef %vector, i32 noundef %total_elements) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %total_elements.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %total_elements, i32* %total_elements.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 2
  %2 = load i32, i32* %rindex, align 4
  %3 = load i32, i32* %total_elements.addr, align 4
  call void @vector_resize_for_index(%struct.vector* noundef %0, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_resize(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  call void @vector_resize_for(%struct.vector* noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_at(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %2 = load i32, i32* %index.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 6
  %4 = load i64, i64* %esize, align 8
  %mul = mul i64 %conv, %4
  %add.ptr = getelementptr i8, i8* %1, i64 %mul
  ret i8* %add.ptr
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_set_peek_pointer(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 1
  store i32 %0, i32* %pindex, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_set_peek_pointer_end(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 2
  %2 = load i32, i32* %rindex, align 4
  %sub = sub nsw i32 %2, 1
  call void @vector_set_peek_pointer(%struct.vector* noundef %0, i32 noundef %sub)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_peek_at(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %retval = alloca i8*, align 8
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %call = call zeroext i1 @vector_in_bounds_for_at(%struct.vector* noundef %0, i32 noundef %1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %3 = load i32, i32* %index.addr, align 4
  %call1 = call i8* @vector_at(%struct.vector* noundef %2, i32 noundef %3)
  store i8* %call1, i8** %ptr, align 8
  %4 = load i8*, i8** %ptr, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_peek_no_increment(%struct.vector* noundef %vector) #0 {
entry:
  %retval = alloca i8*, align 8
  %vector.addr = alloca %struct.vector*, align 8
  %ptr = alloca i8*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 1
  %2 = load i32, i32* %pindex, align 8
  %call = call zeroext i1 @vector_in_bounds_for_at(%struct.vector* noundef %0, i32 noundef %2)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex1 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %5 = load i32, i32* %pindex1, align 8
  %call2 = call i8* @vector_at(%struct.vector* noundef %3, i32 noundef %5)
  store i8* %call2, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_peek_back(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 1
  %1 = load i32, i32* %pindex, align 8
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %pindex, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_peek(%struct.vector* noundef %vector) #0 {
entry:
  %retval = alloca i8*, align 8
  %vector.addr = alloca %struct.vector*, align 8
  %ptr = alloca i8*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call = call i8* @vector_peek_no_increment(%struct.vector* noundef %0)
  store i8* %call, i8** %ptr, align 8
  %1 = load i8*, i8** %ptr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %flags = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 5
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %5 = load i32, i32* %pindex, align 8
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %pindex, align 8
  br label %if.end4

if.else:                                          ; preds = %if.end
  %6 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex3 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 1
  %7 = load i32, i32* %pindex3, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %pindex3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %8 = load i8*, i8** %ptr, align 8
  store i8* %8, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_set_flag(%struct.vector* noundef %vector, i32 noundef %flag) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %flag.addr, align 4
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %flags = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 5
  %2 = load i32, i32* %flags, align 8
  %or = or i32 %2, %0
  store i32 %or, i32* %flags, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_unset_flag(%struct.vector* noundef %vector, i32 noundef %flag) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %flag.addr, align 4
  %neg = xor i32 %0, -1
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %flags = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 5
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, %neg
  store i32 %and, i32* %flags, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_peek_ptr(%struct.vector* noundef %vector) #0 {
entry:
  %retval = alloca i8*, align 8
  %vector.addr = alloca %struct.vector*, align 8
  %ptr = alloca i8**, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call = call i8* @vector_peek(%struct.vector* noundef %0)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %ptr, align 8
  %2 = load i8**, i8*** %ptr, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %ptr, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_peek_ptr_at(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %retval = alloca i8*, align 8
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  %ptr = alloca i8**, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 4
  %3 = load i32, i32* %count, align 4
  %cmp1 = icmp sgt i32 %1, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %5 = load i32, i32* %index.addr, align 4
  %call = call i8* @vector_at(%struct.vector* noundef %4, i32 noundef %5)
  %6 = bitcast i8* %call to i8**
  store i8** %6, i8*** %ptr, align 8
  %7 = load i8**, i8*** %ptr, align 8
  %tobool = icmp ne i8** %7, null
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load i8**, i8*** %ptr, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i8*, i8** %retval, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_back_ptr(%struct.vector* noundef %vector) #0 {
entry:
  %retval = alloca i8*, align 8
  %vector.addr = alloca %struct.vector*, align 8
  %ptr = alloca i8**, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call = call i8* @vector_back(%struct.vector* noundef %0)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %ptr, align 8
  %2 = load i8**, i8*** %ptr, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %ptr, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_back(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 2
  %2 = load i32, i32* %rindex, align 4
  %sub = sub nsw i32 %2, 1
  call void @vector_assert_bounds_for_pop(%struct.vector* noundef %0, i32 noundef %sub)
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex1 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  %5 = load i32, i32* %rindex1, align 4
  %sub2 = sub nsw i32 %5, 1
  %call = call i8* @vector_at(%struct.vector* noundef %3, i32 noundef %sub2)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_save(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %tmp_vec = alloca %struct.vector, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = bitcast %struct.vector* %tmp_vec to i8*
  %2 = bitcast %struct.vector* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  %saves = getelementptr inbounds %struct.vector, %struct.vector* %tmp_vec, i32 0, i32 7
  store %struct.vector* null, %struct.vector** %saves, align 8
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %saves1 = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 7
  %4 = load %struct.vector*, %struct.vector** %saves1, align 8
  %5 = bitcast %struct.vector* %tmp_vec to i8*
  call void @vector_push(%struct.vector* noundef %4, i8* noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_push(%struct.vector* noundef %vector, i8* noundef %elem) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %elem.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i8* %elem, i8** %elem.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 2
  %2 = load i32, i32* %rindex, align 4
  %call = call i8* @vector_at(%struct.vector* noundef %0, i32 noundef %2)
  store i8* %call, i8** %ptr, align 8
  %3 = load i8*, i8** %ptr, align 8
  %4 = load i8*, i8** %elem.addr, align 8
  %5 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 6
  %6 = load i64, i64* %esize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 %6, i1 false)
  %7 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex1 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 2
  %8 = load i32, i32* %rindex1, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %rindex1, align 4
  %9 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %9, i32 0, i32 4
  %10 = load i32, i32* %count, align 4
  %inc2 = add nsw i32 %10, 1
  store i32 %inc2, i32* %count, align 4
  %11 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex3 = getelementptr inbounds %struct.vector, %struct.vector* %11, i32 0, i32 2
  %12 = load i32, i32* %rindex3, align 4
  %13 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %mindex = getelementptr inbounds %struct.vector, %struct.vector* %13, i32 0, i32 3
  %14 = load i32, i32* %mindex, align 8
  %cmp = icmp sge i32 %12, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  call void @vector_resize(%struct.vector* noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_restore(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %save_vec = alloca %struct.vector, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %saves = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 7
  %1 = load %struct.vector*, %struct.vector** %saves, align 8
  %call = call i8* @vector_back(%struct.vector* noundef %1)
  %2 = bitcast i8* %call to %struct.vector*
  %3 = bitcast %struct.vector* %save_vec to i8*
  %4 = bitcast %struct.vector* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 48, i1 false)
  %5 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %saves1 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 7
  %6 = load %struct.vector*, %struct.vector** %saves1, align 8
  %saves2 = getelementptr inbounds %struct.vector, %struct.vector* %save_vec, i32 0, i32 7
  store %struct.vector* %6, %struct.vector** %saves2, align 8
  %7 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %8 = bitcast %struct.vector* %7 to i8*
  %9 = bitcast %struct.vector* %save_vec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 48, i1 false)
  %10 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %saves3 = getelementptr inbounds %struct.vector, %struct.vector* %10, i32 0, i32 7
  %11 = load %struct.vector*, %struct.vector** %saves3, align 8
  call void @vector_pop(%struct.vector* noundef %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_pop(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 2
  %1 = load i32, i32* %rindex, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %rindex, align 4
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 4
  %3 = load i32, i32* %count, align 4
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, i32* %count, align 4
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %5 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex2 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 2
  %6 = load i32, i32* %rindex2, align 4
  call void @vector_assert_bounds_for_pop(%struct.vector* noundef %4, i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_save_purge(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %saves = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 7
  %1 = load %struct.vector*, %struct.vector** %saves, align 8
  call void @vector_pop(%struct.vector* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_pop_last_peek(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 1
  %1 = load i32, i32* %pindex, align 8
  %cmp = icmp sge i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.vector_pop_last_peek, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex1 = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 1
  %4 = load i32, i32* %pindex1, align 8
  %sub = sub nsw i32 %4, 1
  call void @vector_pop_at(%struct.vector* noundef %2, i32 noundef %sub)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_pop_at(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  %dst_pos = alloca i8*, align 8
  %next_element_pos = alloca i8*, align 8
  %end_pos = alloca i8*, align 8
  %total = alloca i64, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %call = call i8* @vector_at(%struct.vector* noundef %0, i32 noundef %1)
  store i8* %call, i8** %dst_pos, align 8
  %2 = load i8*, i8** %dst_pos, align 8
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 6
  %4 = load i64, i64* %esize, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %4
  store i8* %add.ptr, i8** %next_element_pos, align 8
  %5 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call1 = call i8* @vector_data_end(%struct.vector* noundef %5)
  store i8* %call1, i8** %end_pos, align 8
  %6 = load i8*, i8** %end_pos, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = load i8*, i8** %next_element_pos, align 8
  %9 = ptrtoint i8* %8 to i64
  %sub = sub i64 %7, %9
  store i64 %sub, i64* %total, align 8
  %10 = load i8*, i8** %dst_pos, align 8
  %11 = load i8*, i8** %next_element_pos, align 8
  %12 = load i64, i64* %total, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 %12, i1 false)
  %13 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %13, i32 0, i32 4
  %14 = load i32, i32* %count, align 4
  %sub2 = sub nsw i32 %14, 1
  store i32 %sub2, i32* %count, align 4
  %15 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %15, i32 0, i32 2
  %16 = load i32, i32* %rindex, align 4
  %sub3 = sub nsw i32 %16, 1
  store i32 %sub3, i32* %rindex, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_fread(%struct.vector* noundef %vector, i32 noundef %amount, %struct._IO_FILE* noundef %fp) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %amount.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %read_amount = alloca i64, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %amount, i32* %amount.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* noundef %1, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %2)
  store i64 %call, i64* %read_amount, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i64, i64* %read_amount, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %5 = bitcast i64* %read_amount to i8*
  call void @vector_push(%struct.vector* noundef %4, i8* noundef %5)
  %6 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data1 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 0
  %7 = load i8*, i8** %data1, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i64 @fread(i8* noundef %7, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %8)
  store i64 %call2, i64* %read_amount, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_string(%struct.vector* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vec, %struct.vector** %vec.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vec.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_data_end(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 2
  %3 = load i32, i32* %rindex, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 6
  %5 = load i64, i64* %esize, align 8
  %mul = mul i64 %conv, %5
  %add.ptr = getelementptr i8, i8* %1, i64 %mul
  ret i8* %add.ptr
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vector_elements_left(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 4
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %index.addr, align 4
  %sub = sub nsw i32 %1, %2
  %conv = sext i32 %sub to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_elements_until_end(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 4
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %index.addr, align 4
  %sub = sub nsw i32 %1, %2
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_shift_right_in_bounds_no_increment(%struct.vector* noundef %vector, i32 noundef %index, i32 noundef %amount) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  %amount.addr = alloca i32, align 4
  %eindex = alloca i32, align 4
  %bytes_to_move = alloca i64, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %2 = load i32, i32* %amount.addr, align 4
  call void @vector_resize_for_index(%struct.vector* noundef %0, i32 noundef %1, i32 noundef %2)
  %3 = load i32, i32* %index.addr, align 4
  %4 = load i32, i32* %amount.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %eindex, align 4
  %5 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %6 = load i32, i32* %index.addr, align 4
  %call = call i32 @vector_elements_until_end(%struct.vector* noundef %5, i32 noundef %6)
  %conv = sext i32 %call to i64
  %7 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 6
  %8 = load i64, i64* %esize, align 8
  %mul = mul i64 %conv, %8
  store i64 %mul, i64* %bytes_to_move, align 8
  %9 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %10 = load i32, i32* %eindex, align 4
  %call1 = call i8* @vector_at(%struct.vector* noundef %9, i32 noundef %10)
  %11 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %12 = load i32, i32* %index.addr, align 4
  %call2 = call i8* @vector_at(%struct.vector* noundef %11, i32 noundef %12)
  %13 = load i64, i64* %bytes_to_move, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %call1, i8* align 1 %call2, i64 %13, i1 false)
  %14 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %15 = load i32, i32* %index.addr, align 4
  %call3 = call i8* @vector_at(%struct.vector* noundef %14, i32 noundef %15)
  %16 = load i32, i32* %amount.addr, align 4
  %conv4 = sext i32 %16 to i64
  %17 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize5 = getelementptr inbounds %struct.vector, %struct.vector* %17, i32 0, i32 6
  %18 = load i64, i64* %esize5, align 8
  %mul6 = mul i64 %conv4, %18
  call void @llvm.memset.p0i8.i64(i8* align 1 %call3, i8 0, i64 %mul6, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_shift_right_in_bounds(%struct.vector* noundef %vector, i32 noundef %index, i32 noundef %amount) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  %amount.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %2 = load i32, i32* %amount.addr, align 4
  call void @vector_shift_right_in_bounds_no_increment(%struct.vector* noundef %0, i32 noundef %1, i32 noundef %2)
  %3 = load i32, i32* %amount.addr, align 4
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  %5 = load i32, i32* %rindex, align 4
  %add = add nsw i32 %5, %3
  store i32 %add, i32* %rindex, align 4
  %6 = load i32, i32* %amount.addr, align 4
  %7 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 4
  %8 = load i32, i32* %count, align 4
  %add1 = add nsw i32 %8, %6
  store i32 %add1, i32* %count, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_stretch(%struct.vector* noundef %vector, i32 noundef %index) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 2
  %2 = load i32, i32* %rindex, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %4 = load i32, i32* %index.addr, align 4
  call void @vector_resize_for_index(%struct.vector* noundef %3, i32 noundef %4, i32 noundef 0)
  %5 = load i32, i32* %index.addr, align 4
  %6 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 4
  store i32 %5, i32* %count, align 4
  %7 = load i32, i32* %index.addr, align 4
  %8 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex1 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 2
  store i32 %7, i32* %rindex1, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_pop_value(%struct.vector* noundef %vector, i8* noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca %struct.vector*, align 8
  %val.addr = alloca i8*, align 8
  %old_pp = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 1
  %1 = load i32, i32* %pindex, align 8
  store i32 %1, i32* %old_pp, align 4
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  call void @vector_set_peek_pointer(%struct.vector* noundef %2, i32 noundef 0)
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call = call i8* @vector_peek_ptr(%struct.vector* noundef %3)
  store i8* %call, i8** %ptr, align 8
  store i32 0, i32* %index, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i8*, i8** %ptr, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i8*, i8** %val.addr, align 8
  %cmp = icmp eq i8* %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %8 = load i32, i32* %index, align 4
  call void @vector_pop_at(%struct.vector* noundef %7, i32 noundef %8)
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call1 = call i8* @vector_peek_ptr(%struct.vector* noundef %9)
  store i8* %call1, i8** %ptr, align 8
  %10 = load i32, i32* %index, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %index, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %12 = load i32, i32* %old_pp, align 4
  call void @vector_set_peek_pointer(%struct.vector* noundef %11, i32 noundef %12)
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_pop_at_data_address(%struct.vector* noundef %vector, i8* noundef %address) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %address.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i8* %address, i8** %address.addr, align 8
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 6
  %4 = load i64, i64* %esize, align 8
  %div = udiv i64 %sub.ptr.sub, %4
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %index, align 4
  %5 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %6 = load i32, i32* %index, align 4
  call void @vector_pop_at(%struct.vector* noundef %5, i32 noundef %6)
  %7 = load i32, i32* %index, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_shift_right(%struct.vector* noundef %vector, i32 noundef %index, i32 noundef %amount) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  %amount.addr = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 2
  %2 = load i32, i32* %rindex, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %4 = load i32, i32* %index.addr, align 4
  %5 = load i32, i32* %amount.addr, align 4
  call void @vector_shift_right_in_bounds(%struct.vector* noundef %3, i32 noundef %4, i32 noundef %5)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %7 = load i32, i32* %index.addr, align 4
  %8 = load i32, i32* %amount.addr, align 4
  %add = add nsw i32 %7, %8
  call void @vector_stretch(%struct.vector* noundef %6, i32 noundef %add)
  %9 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %10 = load i32, i32* %index.addr, align 4
  %11 = load i32, i32* %amount.addr, align 4
  call void @vector_shift_right_in_bounds_no_increment(%struct.vector* noundef %9, i32 noundef %10, i32 noundef %11)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_peek_pop(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %pindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 1
  %2 = load i32, i32* %pindex, align 8
  call void @vector_pop_at(%struct.vector* noundef %0, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_push_multiple_at(%struct.vector* noundef %vector, i32 noundef %dst_index, i8* noundef %ptr, i32 noundef %total) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %dst_index.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %total.addr = alloca i32, align 4
  %dst_ptr = alloca i8*, align 8
  %total_bytes = alloca i64, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %dst_index, i32* %dst_index.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %total, i32* %total.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load i32, i32* %dst_index.addr, align 4
  %2 = load i32, i32* %total.addr, align 4
  call void @vector_shift_right(%struct.vector* noundef %0, i32 noundef %1, i32 noundef %2)
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %4 = load i32, i32* %dst_index.addr, align 4
  %call = call i8* @vector_at(%struct.vector* noundef %3, i32 noundef %4)
  store i8* %call, i8** %dst_ptr, align 8
  %5 = load i32, i32* %total.addr, align 4
  %conv = sext i32 %5 to i64
  %6 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 6
  %7 = load i64, i64* %esize, align 8
  %mul = mul i64 %conv, %7
  store i64 %mul, i64* %total_bytes, align 8
  %8 = load i8*, i8** %dst_ptr, align 8
  %9 = load i8*, i8** %ptr.addr, align 8
  %10 = load i64, i64* %total_bytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_push_at(%struct.vector* noundef %vector, i32 noundef %index, i8* noundef %ptr) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  %index.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %data_ptr = alloca i8*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  call void @vector_shift_right(%struct.vector* noundef %0, i32 noundef %1, i32 noundef 1)
  %2 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %3 = load i32, i32* %index.addr, align 4
  %call = call i8* @vector_at(%struct.vector* noundef %2, i32 noundef %3)
  store i8* %call, i8** %data_ptr, align 8
  %4 = load i8*, i8** %data_ptr, align 8
  %5 = load i8*, i8** %ptr.addr, align 8
  %6 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 6
  %7 = load i64, i64* %esize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 %7, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_insert(%struct.vector* noundef %vector_dst, %struct.vector* noundef %vector_src, i32 noundef %dst_index) #0 {
entry:
  %retval = alloca i32, align 4
  %vector_dst.addr = alloca %struct.vector*, align 8
  %vector_src.addr = alloca %struct.vector*, align 8
  %dst_index.addr = alloca i32, align 4
  store %struct.vector* %vector_dst, %struct.vector** %vector_dst.addr, align 8
  store %struct.vector* %vector_src, %struct.vector** %vector_src.addr, align 8
  store i32 %dst_index, i32* %dst_index.addr, align 4
  %0 = load %struct.vector*, %struct.vector** %vector_dst.addr, align 8
  %esize = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 6
  %1 = load i64, i64* %esize, align 8
  %2 = load %struct.vector*, %struct.vector** %vector_src.addr, align 8
  %esize1 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 6
  %3 = load i64, i64* %esize1, align 8
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.vector*, %struct.vector** %vector_dst.addr, align 8
  %5 = load i32, i32* %dst_index.addr, align 4
  %6 = load %struct.vector*, %struct.vector** %vector_src.addr, align 8
  %call = call i8* @vector_at(%struct.vector* noundef %6, i32 noundef 0)
  %7 = load %struct.vector*, %struct.vector** %vector_src.addr, align 8
  %call2 = call i32 @vector_count(%struct.vector* noundef %7)
  call void @vector_push_multiple_at(%struct.vector* noundef %4, i32 noundef %5, i8* noundef %call, i32 noundef %call2)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_count(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %count = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 4
  %1 = load i32, i32* %count, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_data_ptr(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.vector, %struct.vector* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @vector_empty(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call = call i32 @vector_count(%struct.vector* noundef %0)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_clear(%struct.vector* noundef %vector) #0 {
entry:
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call = call i32 @vector_count(%struct.vector* noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  call void @vector_pop(%struct.vector* noundef %1)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_back_or_null(%struct.vector* noundef %vector) #0 {
entry:
  %retval = alloca i8*, align 8
  %vector.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %1 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex = getelementptr inbounds %struct.vector, %struct.vector* %1, i32 0, i32 2
  %2 = load i32, i32* %rindex, align 4
  %sub = sub nsw i32 %2, 1
  %call = call zeroext i1 @vector_in_bounds_for_at(%struct.vector* noundef %0, i32 noundef %sub)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %4 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %rindex1 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  %5 = load i32, i32* %rindex1, align 4
  %sub2 = sub nsw i32 %5, 1
  %call3 = call i8* @vector_at(%struct.vector* noundef %3, i32 noundef %sub2)
  store i8* %call3, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_back_ptr_or_null(%struct.vector* noundef %vector) #0 {
entry:
  %retval = alloca i8*, align 8
  %vector.addr = alloca %struct.vector*, align 8
  %ptr = alloca i8**, align 8
  store %struct.vector* %vector, %struct.vector** %vector.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vector.addr, align 8
  %call = call i8* @vector_back_or_null(%struct.vector* noundef %0)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %ptr, align 8
  %2 = load i8**, i8*** %ptr, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %ptr, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @peekc() #0 {
entry:
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %function = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 5
  %1 = load %struct.lex_process_functions*, %struct.lex_process_functions** %function, align 8
  %peek_char = getelementptr inbounds %struct.lex_process_functions, %struct.lex_process_functions* %1, i32 0, i32 1
  %peek_char1 = bitcast {}** %peek_char to i8 (%struct.lex_process*)**
  %2 = load i8 (%struct.lex_process*)*, i8 (%struct.lex_process*)** %peek_char1, align 8
  %3 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %call = call signext i8 %2(%struct.lex_process* noundef %3)
  ret i8 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @nextc() #0 {
entry:
  %c = alloca i8, align 1
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %function = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 5
  %1 = load %struct.lex_process_functions*, %struct.lex_process_functions** %function, align 8
  %next_char = getelementptr inbounds %struct.lex_process_functions, %struct.lex_process_functions* %1, i32 0, i32 0
  %next_char1 = bitcast {}** %next_char to i8 (%struct.lex_process*)**
  %2 = load i8 (%struct.lex_process*)*, i8 (%struct.lex_process*)** %next_char1, align 8
  %3 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %call = call signext i8 %2(%struct.lex_process* noundef %3)
  store i8 %call, i8* %c, align 1
  %call2 = call zeroext i1 @lex_is_in_expression()
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %parentheses_buffer = getelementptr inbounds %struct.lex_process, %struct.lex_process* %4, i32 0, i32 4
  %5 = load %struct.buffer*, %struct.buffer** %parentheses_buffer, align 8
  %6 = load i8, i8* %c, align 1
  call void @buffer_write(%struct.buffer* noundef %5, i8 noundef signext %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %pos = getelementptr inbounds %struct.lex_process, %struct.lex_process* %7, i32 0, i32 0
  %col = getelementptr inbounds %struct.pos, %struct.pos* %pos, i32 0, i32 1
  %8 = load i32, i32* %col, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, i32* %col, align 4
  %9 = load i8, i8* %c, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %10 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %pos5 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %10, i32 0, i32 0
  %line = getelementptr inbounds %struct.pos, %struct.pos* %pos5, i32 0, i32 0
  %11 = load i32, i32* %line, align 8
  %add6 = add nsw i32 %11, 1
  store i32 %add6, i32* %line, align 8
  %12 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %pos7 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %12, i32 0, i32 0
  %col8 = getelementptr inbounds %struct.pos, %struct.pos* %pos7, i32 0, i32 1
  store i32 1, i32* %col8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %13 = load i8, i8* %c, align 1
  ret i8 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushc(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %function = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 5
  %1 = load %struct.lex_process_functions*, %struct.lex_process_functions** %function, align 8
  %push_char = getelementptr inbounds %struct.lex_process_functions, %struct.lex_process_functions* %1, i32 0, i32 2
  %2 = load void (%struct.lex_process*, i8)*, void (%struct.lex_process*, i8)** %push_char, align 8
  %3 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %4 = load i8, i8* %c.addr, align 1
  call void %2(%struct.lex_process* noundef %3, i8 noundef signext %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @assert_next_char(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %next_c = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %call = call signext i8 @nextc()
  store i8 %call, i8* %next_c, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %next_c, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.assert_next_char, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load i8, i8* %next_c, align 1
  ret i8 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i8* } @lex_file_position() #0 {
entry:
  %retval = alloca %struct.pos, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %pos = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 0
  %1 = bitcast %struct.pos* %retval to i8*
  %2 = bitcast %struct.pos* %pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %struct.pos* %retval to { i64, i8* }*
  %4 = load { i64, i8* }, { i64, i8* }* %3, align 8
  ret { i64, i8* } %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_create(%struct.token* noundef %_token) #0 {
entry:
  %_token.addr = alloca %struct.token*, align 8
  %tmp = alloca %struct.pos, align 8
  store %struct.token* %_token, %struct.token** %_token.addr, align 8
  %0 = load %struct.token*, %struct.token** %_token.addr, align 8
  %1 = bitcast %struct.token* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.token* @tmp_token to i8*), i8* align 8 %1, i64 48, i1 false)
  %call = call { i64, i8* } @lex_file_position()
  %2 = bitcast %struct.pos* %tmp to { i64, i8* }*
  %3 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %2, i32 0, i32 0
  %4 = extractvalue { i64, i8* } %call, 0
  store i64 %4, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %2, i32 0, i32 1
  %6 = extractvalue { i64, i8* } %call, 1
  store i8* %6, i8** %5, align 8
  %7 = bitcast %struct.pos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.pos* getelementptr inbounds (%struct.token, %struct.token* @tmp_token, i32 0, i32 2) to i8*), i8* align 8 %7, i64 16, i1 false)
  %call1 = call zeroext i1 @lex_is_in_expression()
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %parentheses_buffer = getelementptr inbounds %struct.lex_process, %struct.lex_process* %8, i32 0, i32 4
  %9 = load %struct.buffer*, %struct.buffer** %parentheses_buffer, align 8
  %call2 = call i8* @buffer_ptr(%struct.buffer* noundef %9)
  store i8* %call2, i8** getelementptr inbounds (%struct.token, %struct.token* @tmp_token, i32 0, i32 6), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.token* @tmp_token
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.token* @lexer_last_token() #0 {
entry:
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %token_vec = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 1
  %1 = load %struct.vector*, %struct.vector** %token_vec, align 8
  %call = call i8* @vector_back_or_null(%struct.vector* noundef %1)
  %2 = bitcast i8* %call to %struct.token*
  ret %struct.token* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.token* @handle_whitespace() #0 {
entry:
  %last_token = alloca %struct.token*, align 8
  %call = call %struct.token* @lexer_last_token()
  store %struct.token* %call, %struct.token** %last_token, align 8
  %0 = load %struct.token*, %struct.token** %last_token, align 8
  %tobool = icmp ne %struct.token* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.token*, %struct.token** %last_token, align 8
  %whitespace = getelementptr inbounds %struct.token, %struct.token* %1, i32 0, i32 5
  store i8 1, i8* %whitespace, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call signext i8 @nextc()
  %call2 = call %struct.token* @read_next_token()
  ret %struct.token* %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_number_str() #0 {
entry:
  %num = alloca i8*, align 8
  %buffer = alloca %struct.buffer*, align 8
  %c = alloca i8, align 1
  store i8* null, i8** %num, align 8
  %call = call %struct.buffer* @buffer_create()
  store %struct.buffer* %call, %struct.buffer** %buffer, align 8
  %call1 = call signext i8 @peekc()
  store i8 %call1, i8* %c, align 1
  %call2 = call signext i8 @peekc()
  store i8 %call2, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i8, i8* %c, align 1
  %conv4 = sext i8 %1 to i32
  %cmp5 = icmp sle i32 %conv4, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %4 = load i8, i8* %c, align 1
  call void @buffer_write(%struct.buffer* noundef %3, i8 noundef signext %4)
  %call7 = call signext i8 @nextc()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call8 = call signext i8 @peekc()
  store i8 %call8, i8* %c, align 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %5 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  call void @buffer_write(%struct.buffer* noundef %5, i8 noundef signext 0)
  %6 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %call9 = call i8* @buffer_ptr(%struct.buffer* noundef %6)
  ret i8* %call9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_number() #0 {
entry:
  %s = alloca i8*, align 8
  %call = call i8* @read_number_str()
  store i8* %call, i8** %s, align 8
  %0 = load i8*, i8** %s, align 8
  %call1 = call i64 @atoll(i8* noundef %0) #11
  ret i64 %call1
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atoll(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lexer_number_type(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %res = alloca i32, align 4
  store i8 %c, i8* %c.addr, align 1
  store i32 0, i32* %res, align 4
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 76
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %res, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 102
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i32 2, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %2 = load i32, i32* %res, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_number_for_value(i64 noundef %number) #0 {
entry:
  %number.addr = alloca i64, align 8
  %number_type = alloca i32, align 4
  %.compoundliteral = alloca %struct.token, align 8
  store i64 %number, i64* %number.addr, align 8
  %call = call signext i8 @peekc()
  %call1 = call i32 @lexer_number_type(i8 noundef signext %call)
  store i32 %call1, i32* %number_type, align 4
  %0 = load i32, i32* %number_type, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call signext i8 @nextc()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 4, i32* %type, align 8
  %flags = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %pos = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 2
  %1 = bitcast %struct.pos* %pos to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 3
  %llnum = bitcast %union.anon* %2 to i64*
  %3 = load i64, i64* %number.addr, align 8
  store i64 %3, i64* %llnum, align 8
  %num = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 4
  %type3 = getelementptr inbounds %struct.token_number, %struct.token_number* %num, i32 0, i32 0
  %4 = load i32, i32* %number_type, align 4
  store i32 %4, i32* %type3, align 8
  %whitespace = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 5
  store i8 0, i8* %whitespace, align 4
  %between_brackets = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 6
  store i8* null, i8** %between_brackets, align 8
  %call4 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  ret %struct.token* %call4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_number() #0 {
entry:
  %call = call i64 @read_number()
  %call1 = call %struct.token* @token_make_number_for_value(i64 noundef %call)
  ret %struct.token* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_string(i8 noundef signext %start_delim, i8 noundef signext %end_delim) #0 {
entry:
  %start_delim.addr = alloca i8, align 1
  %end_delim.addr = alloca i8, align 1
  %buf = alloca %struct.buffer*, align 8
  %c = alloca i8, align 1
  %.compoundliteral = alloca %struct.token, align 8
  store i8 %start_delim, i8* %start_delim.addr, align 1
  store i8 %end_delim, i8* %end_delim.addr, align 1
  %call = call %struct.buffer* @buffer_create()
  store %struct.buffer* %call, %struct.buffer** %buf, align 8
  %call1 = call signext i8 @nextc()
  %conv = sext i8 %call1 to i32
  %0 = load i8, i8* %start_delim.addr, align 1
  %conv2 = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.token_make_string, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %call4 = call signext i8 @nextc()
  store i8 %call4, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i8, i8* %c, align 1
  %conv5 = sext i8 %1 to i32
  %2 = load i8, i8* %end_delim.addr, align 1
  %conv6 = sext i8 %2 to i32
  %cmp7 = icmp ne i32 %conv5, %conv6
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8, i8* %c, align 1
  %conv9 = sext i8 %3 to i32
  %cmp10 = icmp ne i32 %conv9, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i8, i8* %c, align 1
  %conv12 = sext i8 %5 to i32
  %cmp13 = icmp eq i32 %conv12, 92
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %6 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %7 = load i8, i8* %c, align 1
  call void @buffer_write(%struct.buffer* noundef %6, i8 noundef signext %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %if.then15
  %call17 = call signext i8 @nextc()
  store i8 %call17, i8* %c, align 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %land.end
  %8 = load %struct.buffer*, %struct.buffer** %buf, align 8
  call void @buffer_write(%struct.buffer* noundef %8, i8 noundef signext 0)
  %9 = bitcast %struct.token* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 5, i32* %type, align 8
  %10 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 3
  %sval = bitcast %union.anon* %10 to i8**
  %11 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %call18 = call i8* @buffer_ptr(%struct.buffer* noundef %11)
  store i8* %call18, i8** %sval, align 8
  %call19 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  ret %struct.token* %call19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @op_treated_as_one(i8 noundef signext %op) #0 {
entry:
  %op.addr = alloca i8, align 1
  store i8 %op, i8* %op.addr, align 1
  %0 = load i8, i8* %op.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %op.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 91
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %op.addr, align 1
  %conv6 = sext i8 %2 to i32
  %cmp7 = icmp eq i32 %conv6, 44
  br i1 %cmp7, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %3 = load i8, i8* %op.addr, align 1
  %conv10 = sext i8 %3 to i32
  %cmp11 = icmp eq i32 %conv10, 46
  br i1 %cmp11, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %4 = load i8, i8* %op.addr, align 1
  %conv14 = sext i8 %4 to i32
  %cmp15 = icmp eq i32 %conv14, 42
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false13
  %5 = load i8, i8* %op.addr, align 1
  %conv17 = sext i8 %5 to i32
  %cmp18 = icmp eq i32 %conv17, 63
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false13 ], [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp18, %lor.rhs ]
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_single_operator(i8 noundef signext %op) #0 {
entry:
  %op.addr = alloca i8, align 1
  store i8 %op, i8* %op.addr, align 1
  %0 = load i8, i8* %op.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %op.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %op.addr, align 1
  %conv6 = sext i8 %2 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  br i1 %cmp7, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %3 = load i8, i8* %op.addr, align 1
  %conv10 = sext i8 %3 to i32
  %cmp11 = icmp eq i32 %conv10, 42
  br i1 %cmp11, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %4 = load i8, i8* %op.addr, align 1
  %conv14 = sext i8 %4 to i32
  %cmp15 = icmp eq i32 %conv14, 61
  br i1 %cmp15, label %lor.end, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %5 = load i8, i8* %op.addr, align 1
  %conv18 = sext i8 %5 to i32
  %cmp19 = icmp eq i32 %conv18, 62
  br i1 %cmp19, label %lor.end, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %6 = load i8, i8* %op.addr, align 1
  %conv22 = sext i8 %6 to i32
  %cmp23 = icmp eq i32 %conv22, 60
  br i1 %cmp23, label %lor.end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %7 = load i8, i8* %op.addr, align 1
  %conv26 = sext i8 %7 to i32
  %cmp27 = icmp eq i32 %conv26, 124
  br i1 %cmp27, label %lor.end, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %8 = load i8, i8* %op.addr, align 1
  %conv30 = sext i8 %8 to i32
  %cmp31 = icmp eq i32 %conv30, 38
  br i1 %cmp31, label %lor.end, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %9 = load i8, i8* %op.addr, align 1
  %conv34 = sext i8 %9 to i32
  %cmp35 = icmp eq i32 %conv34, 94
  br i1 %cmp35, label %lor.end, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %10 = load i8, i8* %op.addr, align 1
  %conv38 = sext i8 %10 to i32
  %cmp39 = icmp eq i32 %conv38, 37
  br i1 %cmp39, label %lor.end, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %11 = load i8, i8* %op.addr, align 1
  %conv42 = sext i8 %11 to i32
  %cmp43 = icmp eq i32 %conv42, 126
  br i1 %cmp43, label %lor.end, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %12 = load i8, i8* %op.addr, align 1
  %conv46 = sext i8 %12 to i32
  %cmp47 = icmp eq i32 %conv46, 33
  br i1 %cmp47, label %lor.end, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %13 = load i8, i8* %op.addr, align 1
  %conv50 = sext i8 %13 to i32
  %cmp51 = icmp eq i32 %conv50, 40
  br i1 %cmp51, label %lor.end, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false49
  %14 = load i8, i8* %op.addr, align 1
  %conv54 = sext i8 %14 to i32
  %cmp55 = icmp eq i32 %conv54, 91
  br i1 %cmp55, label %lor.end, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false53
  %15 = load i8, i8* %op.addr, align 1
  %conv58 = sext i8 %15 to i32
  %cmp59 = icmp eq i32 %conv58, 44
  br i1 %cmp59, label %lor.end, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %16 = load i8, i8* %op.addr, align 1
  %conv62 = sext i8 %16 to i32
  %cmp63 = icmp eq i32 %conv62, 46
  br i1 %cmp63, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false61
  %17 = load i8, i8* %op.addr, align 1
  %conv65 = sext i8 %17 to i32
  %cmp66 = icmp eq i32 %conv65, 63
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false61, %lor.lhs.false57, %lor.lhs.false53, %lor.lhs.false49, %lor.lhs.false45, %lor.lhs.false41, %lor.lhs.false37, %lor.lhs.false33, %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  %18 = phi i1 [ true, %lor.lhs.false61 ], [ true, %lor.lhs.false57 ], [ true, %lor.lhs.false53 ], [ true, %lor.lhs.false49 ], [ true, %lor.lhs.false45 ], [ true, %lor.lhs.false41 ], [ true, %lor.lhs.false37 ], [ true, %lor.lhs.false33 ], [ true, %lor.lhs.false29 ], [ true, %lor.lhs.false25 ], [ true, %lor.lhs.false21 ], [ true, %lor.lhs.false17 ], [ true, %lor.lhs.false13 ], [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp66, %lor.rhs ]
  ret i1 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @op_valid(i8* noundef %op) #0 {
entry:
  %op.addr = alloca i8*, align 8
  store i8* %op, i8** %op.addr, align 8
  %0 = load i8*, i8** %op.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  br i1 true, label %land.lhs.true1, label %lor.lhs.false

land.lhs.true1:                                   ; preds = %land.lhs.true
  %1 = load i8*, i8** %op.addr, align 8
  %call = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %2 = load i8*, i8** %op.addr, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %land.lhs.true3, label %lor.lhs.false7

land.lhs.true3:                                   ; preds = %lor.lhs.false
  br i1 true, label %land.lhs.true4, label %lor.lhs.false7

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %3 = load i8*, i8** %op.addr, align 8
  %call5 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #11
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true4, %land.lhs.true3, %lor.lhs.false
  %4 = load i8*, i8** %op.addr, align 8
  %tobool8 = icmp ne i8* %4, null
  br i1 %tobool8, label %land.lhs.true9, label %lor.lhs.false13

land.lhs.true9:                                   ; preds = %lor.lhs.false7
  br i1 true, label %land.lhs.true10, label %lor.lhs.false13

land.lhs.true10:                                  ; preds = %land.lhs.true9
  %5 = load i8*, i8** %op.addr, align 8
  %call11 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #11
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true10, %land.lhs.true9, %lor.lhs.false7
  %6 = load i8*, i8** %op.addr, align 8
  %tobool14 = icmp ne i8* %6, null
  br i1 %tobool14, label %land.lhs.true15, label %lor.lhs.false19

land.lhs.true15:                                  ; preds = %lor.lhs.false13
  br i1 true, label %land.lhs.true16, label %lor.lhs.false19

land.lhs.true16:                                  ; preds = %land.lhs.true15
  %7 = load i8*, i8** %op.addr, align 8
  %call17 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #11
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %lor.end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true16, %land.lhs.true15, %lor.lhs.false13
  %8 = load i8*, i8** %op.addr, align 8
  %tobool20 = icmp ne i8* %8, null
  br i1 %tobool20, label %land.lhs.true21, label %lor.lhs.false25

land.lhs.true21:                                  ; preds = %lor.lhs.false19
  br i1 true, label %land.lhs.true22, label %lor.lhs.false25

land.lhs.true22:                                  ; preds = %land.lhs.true21
  %9 = load i8*, i8** %op.addr, align 8
  %call23 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #11
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %lor.end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true22, %land.lhs.true21, %lor.lhs.false19
  %10 = load i8*, i8** %op.addr, align 8
  %tobool26 = icmp ne i8* %10, null
  br i1 %tobool26, label %land.lhs.true27, label %lor.lhs.false31

land.lhs.true27:                                  ; preds = %lor.lhs.false25
  br i1 true, label %land.lhs.true28, label %lor.lhs.false31

land.lhs.true28:                                  ; preds = %land.lhs.true27
  %11 = load i8*, i8** %op.addr, align 8
  %call29 = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #11
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %lor.end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true28, %land.lhs.true27, %lor.lhs.false25
  %12 = load i8*, i8** %op.addr, align 8
  %tobool32 = icmp ne i8* %12, null
  br i1 %tobool32, label %land.lhs.true33, label %lor.lhs.false37

land.lhs.true33:                                  ; preds = %lor.lhs.false31
  br i1 true, label %land.lhs.true34, label %lor.lhs.false37

land.lhs.true34:                                  ; preds = %land.lhs.true33
  %13 = load i8*, i8** %op.addr, align 8
  %call35 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #11
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %lor.end, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %land.lhs.true34, %land.lhs.true33, %lor.lhs.false31
  %14 = load i8*, i8** %op.addr, align 8
  %tobool38 = icmp ne i8* %14, null
  br i1 %tobool38, label %land.lhs.true39, label %lor.lhs.false43

land.lhs.true39:                                  ; preds = %lor.lhs.false37
  br i1 true, label %land.lhs.true40, label %lor.lhs.false43

land.lhs.true40:                                  ; preds = %land.lhs.true39
  %15 = load i8*, i8** %op.addr, align 8
  %call41 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #11
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %lor.end, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %land.lhs.true40, %land.lhs.true39, %lor.lhs.false37
  %16 = load i8*, i8** %op.addr, align 8
  %tobool44 = icmp ne i8* %16, null
  br i1 %tobool44, label %land.lhs.true45, label %lor.lhs.false49

land.lhs.true45:                                  ; preds = %lor.lhs.false43
  br i1 true, label %land.lhs.true46, label %lor.lhs.false49

land.lhs.true46:                                  ; preds = %land.lhs.true45
  %17 = load i8*, i8** %op.addr, align 8
  %call47 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)) #11
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %lor.end, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %land.lhs.true46, %land.lhs.true45, %lor.lhs.false43
  %18 = load i8*, i8** %op.addr, align 8
  %tobool50 = icmp ne i8* %18, null
  br i1 %tobool50, label %land.lhs.true51, label %lor.lhs.false55

land.lhs.true51:                                  ; preds = %lor.lhs.false49
  br i1 true, label %land.lhs.true52, label %lor.lhs.false55

land.lhs.true52:                                  ; preds = %land.lhs.true51
  %19 = load i8*, i8** %op.addr, align 8
  %call53 = call i32 @strcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #11
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %lor.end, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %land.lhs.true52, %land.lhs.true51, %lor.lhs.false49
  %20 = load i8*, i8** %op.addr, align 8
  %tobool56 = icmp ne i8* %20, null
  br i1 %tobool56, label %land.lhs.true57, label %lor.lhs.false61

land.lhs.true57:                                  ; preds = %lor.lhs.false55
  br i1 true, label %land.lhs.true58, label %lor.lhs.false61

land.lhs.true58:                                  ; preds = %land.lhs.true57
  %21 = load i8*, i8** %op.addr, align 8
  %call59 = call i32 @strcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #11
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %lor.end, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %land.lhs.true58, %land.lhs.true57, %lor.lhs.false55
  %22 = load i8*, i8** %op.addr, align 8
  %tobool62 = icmp ne i8* %22, null
  br i1 %tobool62, label %land.lhs.true63, label %lor.lhs.false67

land.lhs.true63:                                  ; preds = %lor.lhs.false61
  br i1 true, label %land.lhs.true64, label %lor.lhs.false67

land.lhs.true64:                                  ; preds = %land.lhs.true63
  %23 = load i8*, i8** %op.addr, align 8
  %call65 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #11
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %lor.end, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %land.lhs.true64, %land.lhs.true63, %lor.lhs.false61
  %24 = load i8*, i8** %op.addr, align 8
  %tobool68 = icmp ne i8* %24, null
  br i1 %tobool68, label %land.lhs.true69, label %lor.lhs.false73

land.lhs.true69:                                  ; preds = %lor.lhs.false67
  br i1 true, label %land.lhs.true70, label %lor.lhs.false73

land.lhs.true70:                                  ; preds = %land.lhs.true69
  %25 = load i8*, i8** %op.addr, align 8
  %call71 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #11
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %lor.end, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %land.lhs.true70, %land.lhs.true69, %lor.lhs.false67
  %26 = load i8*, i8** %op.addr, align 8
  %tobool74 = icmp ne i8* %26, null
  br i1 %tobool74, label %land.lhs.true75, label %lor.lhs.false79

land.lhs.true75:                                  ; preds = %lor.lhs.false73
  br i1 true, label %land.lhs.true76, label %lor.lhs.false79

land.lhs.true76:                                  ; preds = %land.lhs.true75
  %27 = load i8*, i8** %op.addr, align 8
  %call77 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #11
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %lor.end, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %land.lhs.true76, %land.lhs.true75, %lor.lhs.false73
  %28 = load i8*, i8** %op.addr, align 8
  %tobool80 = icmp ne i8* %28, null
  br i1 %tobool80, label %land.lhs.true81, label %lor.lhs.false85

land.lhs.true81:                                  ; preds = %lor.lhs.false79
  br i1 true, label %land.lhs.true82, label %lor.lhs.false85

land.lhs.true82:                                  ; preds = %land.lhs.true81
  %29 = load i8*, i8** %op.addr, align 8
  %call83 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #11
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %lor.end, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %land.lhs.true82, %land.lhs.true81, %lor.lhs.false79
  %30 = load i8*, i8** %op.addr, align 8
  %tobool86 = icmp ne i8* %30, null
  br i1 %tobool86, label %land.lhs.true87, label %lor.lhs.false91

land.lhs.true87:                                  ; preds = %lor.lhs.false85
  br i1 true, label %land.lhs.true88, label %lor.lhs.false91

land.lhs.true88:                                  ; preds = %land.lhs.true87
  %31 = load i8*, i8** %op.addr, align 8
  %call89 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #11
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %lor.end, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %land.lhs.true88, %land.lhs.true87, %lor.lhs.false85
  %32 = load i8*, i8** %op.addr, align 8
  %tobool92 = icmp ne i8* %32, null
  br i1 %tobool92, label %land.lhs.true93, label %lor.lhs.false97

land.lhs.true93:                                  ; preds = %lor.lhs.false91
  br i1 true, label %land.lhs.true94, label %lor.lhs.false97

land.lhs.true94:                                  ; preds = %land.lhs.true93
  %33 = load i8*, i8** %op.addr, align 8
  %call95 = call i32 @strcmp(i8* noundef %33, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #11
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %lor.end, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %land.lhs.true94, %land.lhs.true93, %lor.lhs.false91
  %34 = load i8*, i8** %op.addr, align 8
  %tobool98 = icmp ne i8* %34, null
  br i1 %tobool98, label %land.lhs.true99, label %lor.lhs.false103

land.lhs.true99:                                  ; preds = %lor.lhs.false97
  br i1 true, label %land.lhs.true100, label %lor.lhs.false103

land.lhs.true100:                                 ; preds = %land.lhs.true99
  %35 = load i8*, i8** %op.addr, align 8
  %call101 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #11
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %lor.end, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %land.lhs.true100, %land.lhs.true99, %lor.lhs.false97
  %36 = load i8*, i8** %op.addr, align 8
  %tobool104 = icmp ne i8* %36, null
  br i1 %tobool104, label %land.lhs.true105, label %lor.lhs.false109

land.lhs.true105:                                 ; preds = %lor.lhs.false103
  br i1 true, label %land.lhs.true106, label %lor.lhs.false109

land.lhs.true106:                                 ; preds = %land.lhs.true105
  %37 = load i8*, i8** %op.addr, align 8
  %call107 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #11
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %lor.end, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %land.lhs.true106, %land.lhs.true105, %lor.lhs.false103
  %38 = load i8*, i8** %op.addr, align 8
  %tobool110 = icmp ne i8* %38, null
  br i1 %tobool110, label %land.lhs.true111, label %lor.lhs.false115

land.lhs.true111:                                 ; preds = %lor.lhs.false109
  br i1 true, label %land.lhs.true112, label %lor.lhs.false115

land.lhs.true112:                                 ; preds = %land.lhs.true111
  %39 = load i8*, i8** %op.addr, align 8
  %call113 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #11
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %lor.end, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %land.lhs.true112, %land.lhs.true111, %lor.lhs.false109
  %40 = load i8*, i8** %op.addr, align 8
  %tobool116 = icmp ne i8* %40, null
  br i1 %tobool116, label %land.lhs.true117, label %lor.lhs.false121

land.lhs.true117:                                 ; preds = %lor.lhs.false115
  br i1 true, label %land.lhs.true118, label %lor.lhs.false121

land.lhs.true118:                                 ; preds = %land.lhs.true117
  %41 = load i8*, i8** %op.addr, align 8
  %call119 = call i32 @strcmp(i8* noundef %41, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)) #11
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %lor.end, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %land.lhs.true118, %land.lhs.true117, %lor.lhs.false115
  %42 = load i8*, i8** %op.addr, align 8
  %tobool122 = icmp ne i8* %42, null
  br i1 %tobool122, label %land.lhs.true123, label %lor.lhs.false127

land.lhs.true123:                                 ; preds = %lor.lhs.false121
  br i1 true, label %land.lhs.true124, label %lor.lhs.false127

land.lhs.true124:                                 ; preds = %land.lhs.true123
  %43 = load i8*, i8** %op.addr, align 8
  %call125 = call i32 @strcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)) #11
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %lor.end, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %land.lhs.true124, %land.lhs.true123, %lor.lhs.false121
  %44 = load i8*, i8** %op.addr, align 8
  %tobool128 = icmp ne i8* %44, null
  br i1 %tobool128, label %land.lhs.true129, label %lor.lhs.false133

land.lhs.true129:                                 ; preds = %lor.lhs.false127
  br i1 true, label %land.lhs.true130, label %lor.lhs.false133

land.lhs.true130:                                 ; preds = %land.lhs.true129
  %45 = load i8*, i8** %op.addr, align 8
  %call131 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #11
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %lor.end, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %land.lhs.true130, %land.lhs.true129, %lor.lhs.false127
  %46 = load i8*, i8** %op.addr, align 8
  %tobool134 = icmp ne i8* %46, null
  br i1 %tobool134, label %land.lhs.true135, label %lor.lhs.false139

land.lhs.true135:                                 ; preds = %lor.lhs.false133
  br i1 true, label %land.lhs.true136, label %lor.lhs.false139

land.lhs.true136:                                 ; preds = %land.lhs.true135
  %47 = load i8*, i8** %op.addr, align 8
  %call137 = call i32 @strcmp(i8* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)) #11
  %cmp138 = icmp eq i32 %call137, 0
  br i1 %cmp138, label %lor.end, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %land.lhs.true136, %land.lhs.true135, %lor.lhs.false133
  %48 = load i8*, i8** %op.addr, align 8
  %tobool140 = icmp ne i8* %48, null
  br i1 %tobool140, label %land.lhs.true141, label %lor.lhs.false145

land.lhs.true141:                                 ; preds = %lor.lhs.false139
  br i1 true, label %land.lhs.true142, label %lor.lhs.false145

land.lhs.true142:                                 ; preds = %land.lhs.true141
  %49 = load i8*, i8** %op.addr, align 8
  %call143 = call i32 @strcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #11
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %lor.end, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %land.lhs.true142, %land.lhs.true141, %lor.lhs.false139
  %50 = load i8*, i8** %op.addr, align 8
  %tobool146 = icmp ne i8* %50, null
  br i1 %tobool146, label %land.lhs.true147, label %lor.lhs.false151

land.lhs.true147:                                 ; preds = %lor.lhs.false145
  br i1 true, label %land.lhs.true148, label %lor.lhs.false151

land.lhs.true148:                                 ; preds = %land.lhs.true147
  %51 = load i8*, i8** %op.addr, align 8
  %call149 = call i32 @strcmp(i8* noundef %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)) #11
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %lor.end, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %land.lhs.true148, %land.lhs.true147, %lor.lhs.false145
  %52 = load i8*, i8** %op.addr, align 8
  %tobool152 = icmp ne i8* %52, null
  br i1 %tobool152, label %land.lhs.true153, label %lor.lhs.false157

land.lhs.true153:                                 ; preds = %lor.lhs.false151
  br i1 true, label %land.lhs.true154, label %lor.lhs.false157

land.lhs.true154:                                 ; preds = %land.lhs.true153
  %53 = load i8*, i8** %op.addr, align 8
  %call155 = call i32 @strcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #11
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %lor.end, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %land.lhs.true154, %land.lhs.true153, %lor.lhs.false151
  %54 = load i8*, i8** %op.addr, align 8
  %tobool158 = icmp ne i8* %54, null
  br i1 %tobool158, label %land.lhs.true159, label %lor.lhs.false163

land.lhs.true159:                                 ; preds = %lor.lhs.false157
  br i1 true, label %land.lhs.true160, label %lor.lhs.false163

land.lhs.true160:                                 ; preds = %land.lhs.true159
  %55 = load i8*, i8** %op.addr, align 8
  %call161 = call i32 @strcmp(i8* noundef %55, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0)) #11
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %lor.end, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %land.lhs.true160, %land.lhs.true159, %lor.lhs.false157
  %56 = load i8*, i8** %op.addr, align 8
  %tobool164 = icmp ne i8* %56, null
  br i1 %tobool164, label %land.lhs.true165, label %lor.lhs.false169

land.lhs.true165:                                 ; preds = %lor.lhs.false163
  br i1 true, label %land.lhs.true166, label %lor.lhs.false169

land.lhs.true166:                                 ; preds = %land.lhs.true165
  %57 = load i8*, i8** %op.addr, align 8
  %call167 = call i32 @strcmp(i8* noundef %57, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #11
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %lor.end, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %land.lhs.true166, %land.lhs.true165, %lor.lhs.false163
  %58 = load i8*, i8** %op.addr, align 8
  %tobool170 = icmp ne i8* %58, null
  br i1 %tobool170, label %land.lhs.true171, label %lor.lhs.false175

land.lhs.true171:                                 ; preds = %lor.lhs.false169
  br i1 true, label %land.lhs.true172, label %lor.lhs.false175

land.lhs.true172:                                 ; preds = %land.lhs.true171
  %59 = load i8*, i8** %op.addr, align 8
  %call173 = call i32 @strcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #11
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %lor.end, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %land.lhs.true172, %land.lhs.true171, %lor.lhs.false169
  %60 = load i8*, i8** %op.addr, align 8
  %tobool176 = icmp ne i8* %60, null
  br i1 %tobool176, label %land.lhs.true177, label %lor.lhs.false181

land.lhs.true177:                                 ; preds = %lor.lhs.false175
  br i1 true, label %land.lhs.true178, label %lor.lhs.false181

land.lhs.true178:                                 ; preds = %land.lhs.true177
  %61 = load i8*, i8** %op.addr, align 8
  %call179 = call i32 @strcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #11
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %lor.end, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %land.lhs.true178, %land.lhs.true177, %lor.lhs.false175
  %62 = load i8*, i8** %op.addr, align 8
  %tobool182 = icmp ne i8* %62, null
  br i1 %tobool182, label %land.lhs.true183, label %lor.lhs.false187

land.lhs.true183:                                 ; preds = %lor.lhs.false181
  br i1 true, label %land.lhs.true184, label %lor.lhs.false187

land.lhs.true184:                                 ; preds = %land.lhs.true183
  %63 = load i8*, i8** %op.addr, align 8
  %call185 = call i32 @strcmp(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #11
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %lor.end, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %land.lhs.true184, %land.lhs.true183, %lor.lhs.false181
  %64 = load i8*, i8** %op.addr, align 8
  %tobool188 = icmp ne i8* %64, null
  br i1 %tobool188, label %land.lhs.true189, label %lor.rhs

land.lhs.true189:                                 ; preds = %lor.lhs.false187
  br i1 true, label %land.lhs.true190, label %lor.rhs

land.lhs.true190:                                 ; preds = %land.lhs.true189
  %65 = load i8*, i8** %op.addr, align 8
  %call191 = call i32 @strcmp(i8* noundef %65, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #11
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true190, %land.lhs.true189, %lor.lhs.false187
  %66 = load i8*, i8** %op.addr, align 8
  %tobool193 = icmp ne i8* %66, null
  br i1 %tobool193, label %land.lhs.true194, label %land.end

land.lhs.true194:                                 ; preds = %lor.rhs
  br i1 true, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true194
  %67 = load i8*, i8** %op.addr, align 8
  %call195 = call i32 @strcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #11
  %cmp196 = icmp eq i32 %call195, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true194, %lor.rhs
  %68 = phi i1 [ false, %land.lhs.true194 ], [ false, %lor.rhs ], [ %cmp196, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true190, %land.lhs.true184, %land.lhs.true178, %land.lhs.true172, %land.lhs.true166, %land.lhs.true160, %land.lhs.true154, %land.lhs.true148, %land.lhs.true142, %land.lhs.true136, %land.lhs.true130, %land.lhs.true124, %land.lhs.true118, %land.lhs.true112, %land.lhs.true106, %land.lhs.true100, %land.lhs.true94, %land.lhs.true88, %land.lhs.true82, %land.lhs.true76, %land.lhs.true70, %land.lhs.true64, %land.lhs.true58, %land.lhs.true52, %land.lhs.true46, %land.lhs.true40, %land.lhs.true34, %land.lhs.true28, %land.lhs.true22, %land.lhs.true16, %land.lhs.true10, %land.lhs.true4, %land.lhs.true1
  %69 = phi i1 [ true, %land.lhs.true190 ], [ true, %land.lhs.true184 ], [ true, %land.lhs.true178 ], [ true, %land.lhs.true172 ], [ true, %land.lhs.true166 ], [ true, %land.lhs.true160 ], [ true, %land.lhs.true154 ], [ true, %land.lhs.true148 ], [ true, %land.lhs.true142 ], [ true, %land.lhs.true136 ], [ true, %land.lhs.true130 ], [ true, %land.lhs.true124 ], [ true, %land.lhs.true118 ], [ true, %land.lhs.true112 ], [ true, %land.lhs.true106 ], [ true, %land.lhs.true100 ], [ true, %land.lhs.true94 ], [ true, %land.lhs.true88 ], [ true, %land.lhs.true82 ], [ true, %land.lhs.true76 ], [ true, %land.lhs.true70 ], [ true, %land.lhs.true64 ], [ true, %land.lhs.true58 ], [ true, %land.lhs.true52 ], [ true, %land.lhs.true46 ], [ true, %land.lhs.true40 ], [ true, %land.lhs.true34 ], [ true, %land.lhs.true28 ], [ true, %land.lhs.true22 ], [ true, %land.lhs.true16 ], [ true, %land.lhs.true10 ], [ true, %land.lhs.true4 ], [ true, %land.lhs.true1 ], [ %68, %land.end ]
  ret i1 %69
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_op_flush_back_keep_first(%struct.buffer* noundef %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %data = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %call = call i8* @buffer_ptr(%struct.buffer* noundef %0)
  store i8* %call, i8** %data, align 8
  %1 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %len1 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 2
  %2 = load i32, i32* %len1, align 4
  store i32 %2, i32* %len, align 4
  %3 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %4, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %data, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load i8*, i8** %data, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  call void @pushc(i8 noundef signext %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_op() #0 {
entry:
  %retval = alloca i8*, align 8
  %single_operator = alloca i8, align 1
  %op = alloca i8, align 1
  %buffer = alloca %struct.buffer*, align 8
  %ptr = alloca i8*, align 8
  store i8 1, i8* %single_operator, align 1
  %call = call signext i8 @nextc()
  store i8 %call, i8* %op, align 1
  %call1 = call %struct.buffer* @buffer_create()
  store %struct.buffer* %call1, %struct.buffer** %buffer, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %1 = load i8, i8* %op, align 1
  call void @buffer_write(%struct.buffer* noundef %0, i8 noundef signext %1)
  %2 = load i8, i8* %op, align 1
  %call2 = call zeroext i1 @op_treated_as_one(i8 noundef signext %2)
  br i1 %call2, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call signext i8 @peekc()
  store i8 %call3, i8* %op, align 1
  %3 = load i8, i8* %op, align 1
  %call4 = call zeroext i1 @is_single_operator(i8 noundef signext %3)
  br i1 %call4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %4 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %5 = load i8, i8* %op, align 1
  call void @buffer_write(%struct.buffer* noundef %4, i8 noundef signext %5)
  %call6 = call signext i8 @nextc()
  store i8 0, i8* %single_operator, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %6 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  call void @buffer_write(%struct.buffer* noundef %6, i8 noundef signext 0)
  %7 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %call8 = call i8* @buffer_ptr(%struct.buffer* noundef %7)
  store i8* %call8, i8** %ptr, align 8
  %8 = load i8, i8* %single_operator, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %9 = load i8*, i8** %ptr, align 8
  %call10 = call zeroext i1 @op_valid(i8* noundef %9)
  br i1 %call10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then9
  %10 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  call void @read_op_flush_back_keep_first(%struct.buffer* noundef %10)
  %11 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %arrayidx, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  br label %if.end13

if.else:                                          ; preds = %if.end7
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end12
  %12 = load i8*, i8** %retval, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_new_expression() #0 {
entry:
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %current_expression_count = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 3
  %1 = load i32, i32* %current_expression_count, align 8
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %current_expression_count, align 8
  %2 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %current_expression_count1 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %2, i32 0, i32 3
  %3 = load i32, i32* %current_expression_count1, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.buffer* @buffer_create()
  %4 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %parentheses_buffer = getelementptr inbounds %struct.lex_process, %struct.lex_process* %4, i32 0, i32 4
  store %struct.buffer* %call, %struct.buffer** %parentheses_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_finish_expression() #0 {
entry:
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %current_expression_count = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 3
  %1 = load i32, i32* %current_expression_count, align 8
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %current_expression_count, align 8
  %2 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %current_expression_count1 = getelementptr inbounds %struct.lex_process, %struct.lex_process* %2, i32 0, i32 3
  %3 = load i32, i32* %current_expression_count1, align 8
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %compiler = getelementptr inbounds %struct.lex_process, %struct.lex_process* %4, i32 0, i32 2
  %5 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  call void (%struct.compile_process*, i8*, ...) @compiler_error(%struct.compile_process* noundef %5, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.44, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lex_is_in_expression() #0 {
entry:
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %current_expression_count = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 3
  %1 = load i32, i32* %current_expression_count, align 8
  %cmp = icmp sgt i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @is_keyword(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  br i1 true, label %land.lhs.true1, label %lor.lhs.false

land.lhs.true1:                                   ; preds = %land.lhs.true
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %2 = load i8*, i8** %str.addr, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %land.lhs.true3, label %lor.lhs.false7

land.lhs.true3:                                   ; preds = %lor.lhs.false
  br i1 true, label %land.lhs.true4, label %lor.lhs.false7

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %3 = load i8*, i8** %str.addr, align 8
  %call5 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0)) #11
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true4, %land.lhs.true3, %lor.lhs.false
  %4 = load i8*, i8** %str.addr, align 8
  %tobool8 = icmp ne i8* %4, null
  br i1 %tobool8, label %land.lhs.true9, label %lor.lhs.false13

land.lhs.true9:                                   ; preds = %lor.lhs.false7
  br i1 true, label %land.lhs.true10, label %lor.lhs.false13

land.lhs.true10:                                  ; preds = %land.lhs.true9
  %5 = load i8*, i8** %str.addr, align 8
  %call11 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #11
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true10, %land.lhs.true9, %lor.lhs.false7
  %6 = load i8*, i8** %str.addr, align 8
  %tobool14 = icmp ne i8* %6, null
  br i1 %tobool14, label %land.lhs.true15, label %lor.lhs.false19

land.lhs.true15:                                  ; preds = %lor.lhs.false13
  br i1 true, label %land.lhs.true16, label %lor.lhs.false19

land.lhs.true16:                                  ; preds = %land.lhs.true15
  %7 = load i8*, i8** %str.addr, align 8
  %call17 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0)) #11
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %lor.end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true16, %land.lhs.true15, %lor.lhs.false13
  %8 = load i8*, i8** %str.addr, align 8
  %tobool20 = icmp ne i8* %8, null
  br i1 %tobool20, label %land.lhs.true21, label %lor.lhs.false25

land.lhs.true21:                                  ; preds = %lor.lhs.false19
  br i1 true, label %land.lhs.true22, label %lor.lhs.false25

land.lhs.true22:                                  ; preds = %land.lhs.true21
  %9 = load i8*, i8** %str.addr, align 8
  %call23 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0)) #11
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %lor.end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true22, %land.lhs.true21, %lor.lhs.false19
  %10 = load i8*, i8** %str.addr, align 8
  %tobool26 = icmp ne i8* %10, null
  br i1 %tobool26, label %land.lhs.true27, label %lor.lhs.false31

land.lhs.true27:                                  ; preds = %lor.lhs.false25
  br i1 true, label %land.lhs.true28, label %lor.lhs.false31

land.lhs.true28:                                  ; preds = %land.lhs.true27
  %11 = load i8*, i8** %str.addr, align 8
  %call29 = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #11
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %lor.end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true28, %land.lhs.true27, %lor.lhs.false25
  %12 = load i8*, i8** %str.addr, align 8
  %tobool32 = icmp ne i8* %12, null
  br i1 %tobool32, label %land.lhs.true33, label %lor.lhs.false37

land.lhs.true33:                                  ; preds = %lor.lhs.false31
  br i1 true, label %land.lhs.true34, label %lor.lhs.false37

land.lhs.true34:                                  ; preds = %land.lhs.true33
  %13 = load i8*, i8** %str.addr, align 8
  %call35 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0)) #11
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %lor.end, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %land.lhs.true34, %land.lhs.true33, %lor.lhs.false31
  %14 = load i8*, i8** %str.addr, align 8
  %tobool38 = icmp ne i8* %14, null
  br i1 %tobool38, label %land.lhs.true39, label %lor.lhs.false43

land.lhs.true39:                                  ; preds = %lor.lhs.false37
  br i1 true, label %land.lhs.true40, label %lor.lhs.false43

land.lhs.true40:                                  ; preds = %land.lhs.true39
  %15 = load i8*, i8** %str.addr, align 8
  %call41 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #11
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %lor.end, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %land.lhs.true40, %land.lhs.true39, %lor.lhs.false37
  %16 = load i8*, i8** %str.addr, align 8
  %tobool44 = icmp ne i8* %16, null
  br i1 %tobool44, label %land.lhs.true45, label %lor.lhs.false49

land.lhs.true45:                                  ; preds = %lor.lhs.false43
  br i1 true, label %land.lhs.true46, label %lor.lhs.false49

land.lhs.true46:                                  ; preds = %land.lhs.true45
  %17 = load i8*, i8** %str.addr, align 8
  %call47 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)) #11
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %lor.end, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %land.lhs.true46, %land.lhs.true45, %lor.lhs.false43
  %18 = load i8*, i8** %str.addr, align 8
  %tobool50 = icmp ne i8* %18, null
  br i1 %tobool50, label %land.lhs.true51, label %lor.lhs.false55

land.lhs.true51:                                  ; preds = %lor.lhs.false49
  br i1 true, label %land.lhs.true52, label %lor.lhs.false55

land.lhs.true52:                                  ; preds = %land.lhs.true51
  %19 = load i8*, i8** %str.addr, align 8
  %call53 = call i32 @strcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0)) #11
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %lor.end, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %land.lhs.true52, %land.lhs.true51, %lor.lhs.false49
  %20 = load i8*, i8** %str.addr, align 8
  %tobool56 = icmp ne i8* %20, null
  br i1 %tobool56, label %land.lhs.true57, label %lor.lhs.false61

land.lhs.true57:                                  ; preds = %lor.lhs.false55
  br i1 true, label %land.lhs.true58, label %lor.lhs.false61

land.lhs.true58:                                  ; preds = %land.lhs.true57
  %21 = load i8*, i8** %str.addr, align 8
  %call59 = call i32 @strcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #11
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %lor.end, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %land.lhs.true58, %land.lhs.true57, %lor.lhs.false55
  %22 = load i8*, i8** %str.addr, align 8
  %tobool62 = icmp ne i8* %22, null
  br i1 %tobool62, label %land.lhs.true63, label %lor.lhs.false67

land.lhs.true63:                                  ; preds = %lor.lhs.false61
  br i1 true, label %land.lhs.true64, label %lor.lhs.false67

land.lhs.true64:                                  ; preds = %land.lhs.true63
  %23 = load i8*, i8** %str.addr, align 8
  %call65 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)) #11
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %lor.end, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %land.lhs.true64, %land.lhs.true63, %lor.lhs.false61
  %24 = load i8*, i8** %str.addr, align 8
  %tobool68 = icmp ne i8* %24, null
  br i1 %tobool68, label %land.lhs.true69, label %lor.lhs.false73

land.lhs.true69:                                  ; preds = %lor.lhs.false67
  br i1 true, label %land.lhs.true70, label %lor.lhs.false73

land.lhs.true70:                                  ; preds = %land.lhs.true69
  %25 = load i8*, i8** %str.addr, align 8
  %call71 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #11
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %lor.end, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %land.lhs.true70, %land.lhs.true69, %lor.lhs.false67
  %26 = load i8*, i8** %str.addr, align 8
  %tobool74 = icmp ne i8* %26, null
  br i1 %tobool74, label %land.lhs.true75, label %lor.lhs.false79

land.lhs.true75:                                  ; preds = %lor.lhs.false73
  br i1 true, label %land.lhs.true76, label %lor.lhs.false79

land.lhs.true76:                                  ; preds = %land.lhs.true75
  %27 = load i8*, i8** %str.addr, align 8
  %call77 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #11
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %lor.end, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %land.lhs.true76, %land.lhs.true75, %lor.lhs.false73
  %28 = load i8*, i8** %str.addr, align 8
  %tobool80 = icmp ne i8* %28, null
  br i1 %tobool80, label %land.lhs.true81, label %lor.lhs.false85

land.lhs.true81:                                  ; preds = %lor.lhs.false79
  br i1 true, label %land.lhs.true82, label %lor.lhs.false85

land.lhs.true82:                                  ; preds = %land.lhs.true81
  %29 = load i8*, i8** %str.addr, align 8
  %call83 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0)) #11
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %lor.end, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %land.lhs.true82, %land.lhs.true81, %lor.lhs.false79
  %30 = load i8*, i8** %str.addr, align 8
  %tobool86 = icmp ne i8* %30, null
  br i1 %tobool86, label %land.lhs.true87, label %lor.lhs.false91

land.lhs.true87:                                  ; preds = %lor.lhs.false85
  br i1 true, label %land.lhs.true88, label %lor.lhs.false91

land.lhs.true88:                                  ; preds = %land.lhs.true87
  %31 = load i8*, i8** %str.addr, align 8
  %call89 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0)) #11
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %lor.end, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %land.lhs.true88, %land.lhs.true87, %lor.lhs.false85
  %32 = load i8*, i8** %str.addr, align 8
  %tobool92 = icmp ne i8* %32, null
  br i1 %tobool92, label %land.lhs.true93, label %lor.lhs.false97

land.lhs.true93:                                  ; preds = %lor.lhs.false91
  br i1 true, label %land.lhs.true94, label %lor.lhs.false97

land.lhs.true94:                                  ; preds = %land.lhs.true93
  %33 = load i8*, i8** %str.addr, align 8
  %call95 = call i32 @strcmp(i8* noundef %33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0)) #11
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %lor.end, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %land.lhs.true94, %land.lhs.true93, %lor.lhs.false91
  %34 = load i8*, i8** %str.addr, align 8
  %tobool98 = icmp ne i8* %34, null
  br i1 %tobool98, label %land.lhs.true99, label %lor.lhs.false103

land.lhs.true99:                                  ; preds = %lor.lhs.false97
  br i1 true, label %land.lhs.true100, label %lor.lhs.false103

land.lhs.true100:                                 ; preds = %land.lhs.true99
  %35 = load i8*, i8** %str.addr, align 8
  %call101 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #11
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %lor.end, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %land.lhs.true100, %land.lhs.true99, %lor.lhs.false97
  %36 = load i8*, i8** %str.addr, align 8
  %tobool104 = icmp ne i8* %36, null
  br i1 %tobool104, label %land.lhs.true105, label %lor.lhs.false109

land.lhs.true105:                                 ; preds = %lor.lhs.false103
  br i1 true, label %land.lhs.true106, label %lor.lhs.false109

land.lhs.true106:                                 ; preds = %land.lhs.true105
  %37 = load i8*, i8** %str.addr, align 8
  %call107 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #11
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %lor.end, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %land.lhs.true106, %land.lhs.true105, %lor.lhs.false103
  %38 = load i8*, i8** %str.addr, align 8
  %tobool110 = icmp ne i8* %38, null
  br i1 %tobool110, label %land.lhs.true111, label %lor.lhs.false115

land.lhs.true111:                                 ; preds = %lor.lhs.false109
  br i1 true, label %land.lhs.true112, label %lor.lhs.false115

land.lhs.true112:                                 ; preds = %land.lhs.true111
  %39 = load i8*, i8** %str.addr, align 8
  %call113 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0)) #11
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %lor.end, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %land.lhs.true112, %land.lhs.true111, %lor.lhs.false109
  %40 = load i8*, i8** %str.addr, align 8
  %tobool116 = icmp ne i8* %40, null
  br i1 %tobool116, label %land.lhs.true117, label %lor.lhs.false121

land.lhs.true117:                                 ; preds = %lor.lhs.false115
  br i1 true, label %land.lhs.true118, label %lor.lhs.false121

land.lhs.true118:                                 ; preds = %land.lhs.true117
  %41 = load i8*, i8** %str.addr, align 8
  %call119 = call i32 @strcmp(i8* noundef %41, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0)) #11
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %lor.end, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %land.lhs.true118, %land.lhs.true117, %lor.lhs.false115
  %42 = load i8*, i8** %str.addr, align 8
  %tobool122 = icmp ne i8* %42, null
  br i1 %tobool122, label %land.lhs.true123, label %lor.lhs.false127

land.lhs.true123:                                 ; preds = %lor.lhs.false121
  br i1 true, label %land.lhs.true124, label %lor.lhs.false127

land.lhs.true124:                                 ; preds = %land.lhs.true123
  %43 = load i8*, i8** %str.addr, align 8
  %call125 = call i32 @strcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #11
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %lor.end, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %land.lhs.true124, %land.lhs.true123, %lor.lhs.false121
  %44 = load i8*, i8** %str.addr, align 8
  %tobool128 = icmp ne i8* %44, null
  br i1 %tobool128, label %land.lhs.true129, label %lor.lhs.false133

land.lhs.true129:                                 ; preds = %lor.lhs.false127
  br i1 true, label %land.lhs.true130, label %lor.lhs.false133

land.lhs.true130:                                 ; preds = %land.lhs.true129
  %45 = load i8*, i8** %str.addr, align 8
  %call131 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #11
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %lor.end, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %land.lhs.true130, %land.lhs.true129, %lor.lhs.false127
  %46 = load i8*, i8** %str.addr, align 8
  %tobool134 = icmp ne i8* %46, null
  br i1 %tobool134, label %land.lhs.true135, label %lor.lhs.false139

land.lhs.true135:                                 ; preds = %lor.lhs.false133
  br i1 true, label %land.lhs.true136, label %lor.lhs.false139

land.lhs.true136:                                 ; preds = %land.lhs.true135
  %47 = load i8*, i8** %str.addr, align 8
  %call137 = call i32 @strcmp(i8* noundef %47, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0)) #11
  %cmp138 = icmp eq i32 %call137, 0
  br i1 %cmp138, label %lor.end, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %land.lhs.true136, %land.lhs.true135, %lor.lhs.false133
  %48 = load i8*, i8** %str.addr, align 8
  %tobool140 = icmp ne i8* %48, null
  br i1 %tobool140, label %land.lhs.true141, label %lor.lhs.false145

land.lhs.true141:                                 ; preds = %lor.lhs.false139
  br i1 true, label %land.lhs.true142, label %lor.lhs.false145

land.lhs.true142:                                 ; preds = %land.lhs.true141
  %49 = load i8*, i8** %str.addr, align 8
  %call143 = call i32 @strcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #11
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %lor.end, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %land.lhs.true142, %land.lhs.true141, %lor.lhs.false139
  %50 = load i8*, i8** %str.addr, align 8
  %tobool146 = icmp ne i8* %50, null
  br i1 %tobool146, label %land.lhs.true147, label %lor.lhs.false151

land.lhs.true147:                                 ; preds = %lor.lhs.false145
  br i1 true, label %land.lhs.true148, label %lor.lhs.false151

land.lhs.true148:                                 ; preds = %land.lhs.true147
  %51 = load i8*, i8** %str.addr, align 8
  %call149 = call i32 @strcmp(i8* noundef %51, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0)) #11
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %lor.end, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %land.lhs.true148, %land.lhs.true147, %lor.lhs.false145
  %52 = load i8*, i8** %str.addr, align 8
  %tobool152 = icmp ne i8* %52, null
  br i1 %tobool152, label %land.lhs.true153, label %lor.lhs.false157

land.lhs.true153:                                 ; preds = %lor.lhs.false151
  br i1 true, label %land.lhs.true154, label %lor.lhs.false157

land.lhs.true154:                                 ; preds = %land.lhs.true153
  %53 = load i8*, i8** %str.addr, align 8
  %call155 = call i32 @strcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0)) #11
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %lor.end, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %land.lhs.true154, %land.lhs.true153, %lor.lhs.false151
  %54 = load i8*, i8** %str.addr, align 8
  %tobool158 = icmp ne i8* %54, null
  br i1 %tobool158, label %land.lhs.true159, label %lor.lhs.false163

land.lhs.true159:                                 ; preds = %lor.lhs.false157
  br i1 true, label %land.lhs.true160, label %lor.lhs.false163

land.lhs.true160:                                 ; preds = %land.lhs.true159
  %55 = load i8*, i8** %str.addr, align 8
  %call161 = call i32 @strcmp(i8* noundef %55, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0)) #11
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %lor.end, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %land.lhs.true160, %land.lhs.true159, %lor.lhs.false157
  %56 = load i8*, i8** %str.addr, align 8
  %tobool164 = icmp ne i8* %56, null
  br i1 %tobool164, label %land.lhs.true165, label %lor.lhs.false169

land.lhs.true165:                                 ; preds = %lor.lhs.false163
  br i1 true, label %land.lhs.true166, label %lor.lhs.false169

land.lhs.true166:                                 ; preds = %land.lhs.true165
  %57 = load i8*, i8** %str.addr, align 8
  %call167 = call i32 @strcmp(i8* noundef %57, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0)) #11
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %lor.end, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %land.lhs.true166, %land.lhs.true165, %lor.lhs.false163
  %58 = load i8*, i8** %str.addr, align 8
  %tobool170 = icmp ne i8* %58, null
  br i1 %tobool170, label %land.lhs.true171, label %lor.lhs.false175

land.lhs.true171:                                 ; preds = %lor.lhs.false169
  br i1 true, label %land.lhs.true172, label %lor.lhs.false175

land.lhs.true172:                                 ; preds = %land.lhs.true171
  %59 = load i8*, i8** %str.addr, align 8
  %call173 = call i32 @strcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #11
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %lor.end, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %land.lhs.true172, %land.lhs.true171, %lor.lhs.false169
  %60 = load i8*, i8** %str.addr, align 8
  %tobool176 = icmp ne i8* %60, null
  br i1 %tobool176, label %land.lhs.true177, label %lor.lhs.false181

land.lhs.true177:                                 ; preds = %lor.lhs.false175
  br i1 true, label %land.lhs.true178, label %lor.lhs.false181

land.lhs.true178:                                 ; preds = %land.lhs.true177
  %61 = load i8*, i8** %str.addr, align 8
  %call179 = call i32 @strcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i64 0, i64 0)) #11
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %lor.end, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %land.lhs.true178, %land.lhs.true177, %lor.lhs.false175
  %62 = load i8*, i8** %str.addr, align 8
  %tobool182 = icmp ne i8* %62, null
  br i1 %tobool182, label %land.lhs.true183, label %lor.lhs.false187

land.lhs.true183:                                 ; preds = %lor.lhs.false181
  br i1 true, label %land.lhs.true184, label %lor.lhs.false187

land.lhs.true184:                                 ; preds = %land.lhs.true183
  %63 = load i8*, i8** %str.addr, align 8
  %call185 = call i32 @strcmp(i8* noundef %63, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0)) #11
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %lor.end, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %land.lhs.true184, %land.lhs.true183, %lor.lhs.false181
  %64 = load i8*, i8** %str.addr, align 8
  %tobool188 = icmp ne i8* %64, null
  br i1 %tobool188, label %land.lhs.true189, label %lor.lhs.false193

land.lhs.true189:                                 ; preds = %lor.lhs.false187
  br i1 true, label %land.lhs.true190, label %lor.lhs.false193

land.lhs.true190:                                 ; preds = %land.lhs.true189
  %65 = load i8*, i8** %str.addr, align 8
  %call191 = call i32 @strcmp(i8* noundef %65, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0)) #11
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %lor.end, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %land.lhs.true190, %land.lhs.true189, %lor.lhs.false187
  %66 = load i8*, i8** %str.addr, align 8
  %tobool194 = icmp ne i8* %66, null
  br i1 %tobool194, label %land.lhs.true195, label %lor.lhs.false199

land.lhs.true195:                                 ; preds = %lor.lhs.false193
  br i1 true, label %land.lhs.true196, label %lor.lhs.false199

land.lhs.true196:                                 ; preds = %land.lhs.true195
  %67 = load i8*, i8** %str.addr, align 8
  %call197 = call i32 @strcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0)) #11
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %lor.end, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %land.lhs.true196, %land.lhs.true195, %lor.lhs.false193
  %68 = load i8*, i8** %str.addr, align 8
  %tobool200 = icmp ne i8* %68, null
  br i1 %tobool200, label %land.lhs.true201, label %lor.lhs.false205

land.lhs.true201:                                 ; preds = %lor.lhs.false199
  br i1 true, label %land.lhs.true202, label %lor.lhs.false205

land.lhs.true202:                                 ; preds = %land.lhs.true201
  %69 = load i8*, i8** %str.addr, align 8
  %call203 = call i32 @strcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i64 0, i64 0)) #11
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %lor.end, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %land.lhs.true202, %land.lhs.true201, %lor.lhs.false199
  %70 = load i8*, i8** %str.addr, align 8
  %tobool206 = icmp ne i8* %70, null
  br i1 %tobool206, label %land.lhs.true207, label %lor.lhs.false211

land.lhs.true207:                                 ; preds = %lor.lhs.false205
  br i1 true, label %land.lhs.true208, label %lor.lhs.false211

land.lhs.true208:                                 ; preds = %land.lhs.true207
  %71 = load i8*, i8** %str.addr, align 8
  %call209 = call i32 @strcmp(i8* noundef %71, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i64 0, i64 0)) #11
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %lor.end, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %land.lhs.true208, %land.lhs.true207, %lor.lhs.false205
  %72 = load i8*, i8** %str.addr, align 8
  %tobool212 = icmp ne i8* %72, null
  br i1 %tobool212, label %land.lhs.true213, label %lor.lhs.false217

land.lhs.true213:                                 ; preds = %lor.lhs.false211
  br i1 true, label %land.lhs.true214, label %lor.lhs.false217

land.lhs.true214:                                 ; preds = %land.lhs.true213
  %73 = load i8*, i8** %str.addr, align 8
  %call215 = call i32 @strcmp(i8* noundef %73, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0)) #11
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %lor.end, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %land.lhs.true214, %land.lhs.true213, %lor.lhs.false211
  %74 = load i8*, i8** %str.addr, align 8
  %tobool218 = icmp ne i8* %74, null
  br i1 %tobool218, label %land.lhs.true219, label %lor.lhs.false223

land.lhs.true219:                                 ; preds = %lor.lhs.false217
  br i1 true, label %land.lhs.true220, label %lor.lhs.false223

land.lhs.true220:                                 ; preds = %land.lhs.true219
  %75 = load i8*, i8** %str.addr, align 8
  %call221 = call i32 @strcmp(i8* noundef %75, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0)) #11
  %cmp222 = icmp eq i32 %call221, 0
  br i1 %cmp222, label %lor.end, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %land.lhs.true220, %land.lhs.true219, %lor.lhs.false217
  %76 = load i8*, i8** %str.addr, align 8
  %tobool224 = icmp ne i8* %76, null
  br i1 %tobool224, label %land.lhs.true225, label %lor.lhs.false229

land.lhs.true225:                                 ; preds = %lor.lhs.false223
  br i1 true, label %land.lhs.true226, label %lor.lhs.false229

land.lhs.true226:                                 ; preds = %land.lhs.true225
  %77 = load i8*, i8** %str.addr, align 8
  %call227 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i64 0, i64 0)) #11
  %cmp228 = icmp eq i32 %call227, 0
  br i1 %cmp228, label %lor.end, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %land.lhs.true226, %land.lhs.true225, %lor.lhs.false223
  %78 = load i8*, i8** %str.addr, align 8
  %tobool230 = icmp ne i8* %78, null
  br i1 %tobool230, label %land.lhs.true231, label %lor.lhs.false235

land.lhs.true231:                                 ; preds = %lor.lhs.false229
  br i1 true, label %land.lhs.true232, label %lor.lhs.false235

land.lhs.true232:                                 ; preds = %land.lhs.true231
  %79 = load i8*, i8** %str.addr, align 8
  %call233 = call i32 @strcmp(i8* noundef %79, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0)) #11
  %cmp234 = icmp eq i32 %call233, 0
  br i1 %cmp234, label %lor.end, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %land.lhs.true232, %land.lhs.true231, %lor.lhs.false229
  %80 = load i8*, i8** %str.addr, align 8
  %tobool236 = icmp ne i8* %80, null
  br i1 %tobool236, label %land.lhs.true237, label %lor.lhs.false241

land.lhs.true237:                                 ; preds = %lor.lhs.false235
  br i1 true, label %land.lhs.true238, label %lor.lhs.false241

land.lhs.true238:                                 ; preds = %land.lhs.true237
  %81 = load i8*, i8** %str.addr, align 8
  %call239 = call i32 @strcmp(i8* noundef %81, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0)) #11
  %cmp240 = icmp eq i32 %call239, 0
  br i1 %cmp240, label %lor.end, label %lor.lhs.false241

lor.lhs.false241:                                 ; preds = %land.lhs.true238, %land.lhs.true237, %lor.lhs.false235
  %82 = load i8*, i8** %str.addr, align 8
  %tobool242 = icmp ne i8* %82, null
  br i1 %tobool242, label %land.lhs.true243, label %lor.lhs.false247

land.lhs.true243:                                 ; preds = %lor.lhs.false241
  br i1 true, label %land.lhs.true244, label %lor.lhs.false247

land.lhs.true244:                                 ; preds = %land.lhs.true243
  %83 = load i8*, i8** %str.addr, align 8
  %call245 = call i32 @strcmp(i8* noundef %83, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i64 0, i64 0)) #11
  %cmp246 = icmp eq i32 %call245, 0
  br i1 %cmp246, label %lor.end, label %lor.lhs.false247

lor.lhs.false247:                                 ; preds = %land.lhs.true244, %land.lhs.true243, %lor.lhs.false241
  %84 = load i8*, i8** %str.addr, align 8
  %tobool248 = icmp ne i8* %84, null
  br i1 %tobool248, label %land.lhs.true249, label %lor.lhs.false253

land.lhs.true249:                                 ; preds = %lor.lhs.false247
  br i1 true, label %land.lhs.true250, label %lor.lhs.false253

land.lhs.true250:                                 ; preds = %land.lhs.true249
  %85 = load i8*, i8** %str.addr, align 8
  %call251 = call i32 @strcmp(i8* noundef %85, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i64 0, i64 0)) #11
  %cmp252 = icmp eq i32 %call251, 0
  br i1 %cmp252, label %lor.end, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %land.lhs.true250, %land.lhs.true249, %lor.lhs.false247
  %86 = load i8*, i8** %str.addr, align 8
  %tobool254 = icmp ne i8* %86, null
  br i1 %tobool254, label %land.lhs.true255, label %lor.rhs

land.lhs.true255:                                 ; preds = %lor.lhs.false253
  br i1 true, label %land.lhs.true256, label %lor.rhs

land.lhs.true256:                                 ; preds = %land.lhs.true255
  %87 = load i8*, i8** %str.addr, align 8
  %call257 = call i32 @strcmp(i8* noundef %87, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i64 0, i64 0)) #11
  %cmp258 = icmp eq i32 %call257, 0
  br i1 %cmp258, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true256, %land.lhs.true255, %lor.lhs.false253
  %88 = load i8*, i8** %str.addr, align 8
  %tobool259 = icmp ne i8* %88, null
  br i1 %tobool259, label %land.lhs.true260, label %land.end

land.lhs.true260:                                 ; preds = %lor.rhs
  br i1 true, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true260
  %89 = load i8*, i8** %str.addr, align 8
  %call261 = call i32 @strcmp(i8* noundef %89, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i64 0, i64 0)) #11
  %cmp262 = icmp eq i32 %call261, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true260, %lor.rhs
  %90 = phi i1 [ false, %land.lhs.true260 ], [ false, %lor.rhs ], [ %cmp262, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true256, %land.lhs.true250, %land.lhs.true244, %land.lhs.true238, %land.lhs.true232, %land.lhs.true226, %land.lhs.true220, %land.lhs.true214, %land.lhs.true208, %land.lhs.true202, %land.lhs.true196, %land.lhs.true190, %land.lhs.true184, %land.lhs.true178, %land.lhs.true172, %land.lhs.true166, %land.lhs.true160, %land.lhs.true154, %land.lhs.true148, %land.lhs.true142, %land.lhs.true136, %land.lhs.true130, %land.lhs.true124, %land.lhs.true118, %land.lhs.true112, %land.lhs.true106, %land.lhs.true100, %land.lhs.true94, %land.lhs.true88, %land.lhs.true82, %land.lhs.true76, %land.lhs.true70, %land.lhs.true64, %land.lhs.true58, %land.lhs.true52, %land.lhs.true46, %land.lhs.true40, %land.lhs.true34, %land.lhs.true28, %land.lhs.true22, %land.lhs.true16, %land.lhs.true10, %land.lhs.true4, %land.lhs.true1
  %91 = phi i1 [ true, %land.lhs.true256 ], [ true, %land.lhs.true250 ], [ true, %land.lhs.true244 ], [ true, %land.lhs.true238 ], [ true, %land.lhs.true232 ], [ true, %land.lhs.true226 ], [ true, %land.lhs.true220 ], [ true, %land.lhs.true214 ], [ true, %land.lhs.true208 ], [ true, %land.lhs.true202 ], [ true, %land.lhs.true196 ], [ true, %land.lhs.true190 ], [ true, %land.lhs.true184 ], [ true, %land.lhs.true178 ], [ true, %land.lhs.true172 ], [ true, %land.lhs.true166 ], [ true, %land.lhs.true160 ], [ true, %land.lhs.true154 ], [ true, %land.lhs.true148 ], [ true, %land.lhs.true142 ], [ true, %land.lhs.true136 ], [ true, %land.lhs.true130 ], [ true, %land.lhs.true124 ], [ true, %land.lhs.true118 ], [ true, %land.lhs.true112 ], [ true, %land.lhs.true106 ], [ true, %land.lhs.true100 ], [ true, %land.lhs.true94 ], [ true, %land.lhs.true88 ], [ true, %land.lhs.true82 ], [ true, %land.lhs.true76 ], [ true, %land.lhs.true70 ], [ true, %land.lhs.true64 ], [ true, %land.lhs.true58 ], [ true, %land.lhs.true52 ], [ true, %land.lhs.true46 ], [ true, %land.lhs.true40 ], [ true, %land.lhs.true34 ], [ true, %land.lhs.true28 ], [ true, %land.lhs.true22 ], [ true, %land.lhs.true16 ], [ true, %land.lhs.true10 ], [ true, %land.lhs.true4 ], [ true, %land.lhs.true1 ], [ %90, %land.end ]
  ret i1 %91
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.token* @token_make_operator_or_string() #0 {
entry:
  %retval = alloca %struct.token*, align 8
  %op = alloca i8, align 1
  %last_token = alloca %struct.token*, align 8
  %token = alloca %struct.token*, align 8
  %.compoundliteral = alloca %struct.token, align 8
  %call = call signext i8 @peekc()
  store i8 %call, i8* %op, align 1
  %0 = load i8, i8* %op, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 60
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call2 = call %struct.token* @lexer_last_token()
  store %struct.token* %call2, %struct.token** %last_token, align 8
  %1 = load %struct.token*, %struct.token** %last_token, align 8
  %call3 = call zeroext i1 @token_is_keyword(%struct.token* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0))
  br i1 %call3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call5 = call %struct.token* @token_make_string(i8 noundef signext 60, i8 noundef signext 62)
  store %struct.token* %call5, %struct.token** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %2 = bitcast %struct.token* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 48, i1 false)
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 2, i32* %type, align 8
  %3 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 3
  %sval = bitcast %union.anon* %3 to i8**
  %call7 = call i8* @read_op()
  store i8* %call7, i8** %sval, align 8
  %call8 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  store %struct.token* %call8, %struct.token** %token, align 8
  %4 = load i8, i8* %op, align 1
  %conv9 = sext i8 %4 to i32
  %cmp10 = icmp eq i32 %conv9, 40
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @lex_new_expression()
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end6
  %5 = load %struct.token*, %struct.token** %token, align 8
  store %struct.token* %5, %struct.token** %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then4
  %6 = load %struct.token*, %struct.token** %retval, align 8
  ret %struct.token* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @token_is_keyword(%struct.token* noundef %token, i8* noundef %value) #0 {
entry:
  %token.addr = alloca %struct.token*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.token* %token, %struct.token** %token.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.token*, %struct.token** %token.addr, align 8
  %1 = getelementptr inbounds %struct.token, %struct.token* %0, i32 0, i32 3
  %sval = bitcast %union.anon* %1 to i8**
  %2 = load i8*, i8** %sval, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %value.addr, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct.token*, %struct.token** %token.addr, align 8
  %5 = getelementptr inbounds %struct.token, %struct.token* %4, i32 0, i32 3
  %sval2 = bitcast %union.anon* %5 to i8**
  %6 = load i8*, i8** %sval2, align 8
  %7 = load i8*, i8** %value.addr, align 8
  %call = call i32 @strcmp(i8* noundef %6, i8* noundef %7) #11
  %cmp = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %9 = load %struct.token*, %struct.token** %token.addr, align 8
  %type = getelementptr inbounds %struct.token, %struct.token* %9, i32 0, i32 0
  store i32 %land.ext, i32* %type, align 8
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.token* @token_make_symbol() #0 {
entry:
  %c = alloca i8, align 1
  %token = alloca %struct.token*, align 8
  %.compoundliteral = alloca %struct.token, align 8
  %call = call signext i8 @nextc()
  store i8 %call, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 41
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @lex_finish_expression()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.token* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 48, i1 false)
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 3, i32* %type, align 8
  %2 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 3
  %cval = bitcast %union.anon* %2 to i8*
  %3 = load i8, i8* %c, align 1
  store i8 %3, i8* %cval, align 8
  %call2 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  store %struct.token* %call2, %struct.token** %token, align 8
  %4 = load %struct.token*, %struct.token** %token, align 8
  ret %struct.token* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.token* @token_make_identifier_or_keyword() #0 {
entry:
  %retval = alloca %struct.token*, align 8
  %buffer = alloca %struct.buffer*, align 8
  %c = alloca i8, align 1
  %.compoundliteral = alloca %struct.token, align 8
  %.compoundliteral30 = alloca %struct.token, align 8
  %call = call %struct.buffer* @buffer_create()
  store %struct.buffer* %call, %struct.buffer** %buffer, align 8
  store i8 0, i8* %c, align 1
  %call1 = call signext i8 @peekc()
  store i8 %call1, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.cond
  %1 = load i8, i8* %c, align 1
  %conv3 = sext i8 %1 to i32
  %cmp4 = icmp sle i32 %conv3, 122
  br i1 %cmp4, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.cond
  %2 = load i8, i8* %c, align 1
  %conv6 = sext i8 %2 to i32
  %cmp7 = icmp sge i32 %conv6, 65
  br i1 %cmp7, label %land.lhs.true9, label %lor.lhs.false13

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %3 = load i8, i8* %c, align 1
  %conv10 = sext i8 %3 to i32
  %cmp11 = icmp sle i32 %conv10, 90
  br i1 %cmp11, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true9, %lor.lhs.false
  %4 = load i8, i8* %c, align 1
  %conv14 = sext i8 %4 to i32
  %cmp15 = icmp sge i32 %conv14, 48
  br i1 %cmp15, label %land.lhs.true17, label %lor.rhs

land.lhs.true17:                                  ; preds = %lor.lhs.false13
  %5 = load i8, i8* %c, align 1
  %conv18 = sext i8 %5 to i32
  %cmp19 = icmp sle i32 %conv18, 57
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true17, %lor.lhs.false13
  %6 = load i8, i8* %c, align 1
  %conv21 = sext i8 %6 to i32
  %cmp22 = icmp eq i32 %conv21, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true17, %land.lhs.true9, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true17 ], [ true, %land.lhs.true9 ], [ true, %land.lhs.true ], [ %cmp22, %lor.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %8 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %9 = load i8, i8* %c, align 1
  call void @buffer_write(%struct.buffer* noundef %8, i8 noundef signext %9)
  %call24 = call signext i8 @nextc()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call25 = call signext i8 @peekc()
  store i8 %call25, i8* %c, align 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %lor.end
  %10 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  call void @buffer_write(%struct.buffer* noundef %10, i8 noundef signext 0)
  %11 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %call26 = call i8* @buffer_ptr(%struct.buffer* noundef %11)
  %call27 = call zeroext i1 @is_keyword(i8* noundef %call26)
  br i1 %call27, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = bitcast %struct.token* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %13 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 3
  %sval = bitcast %union.anon* %13 to i8**
  %14 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %call28 = call i8* @buffer_ptr(%struct.buffer* noundef %14)
  store i8* %call28, i8** %sval, align 8
  %call29 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  store %struct.token* %call29, %struct.token** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end
  %15 = bitcast %struct.token* %.compoundliteral30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 48, i1 false)
  %type31 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral30, i32 0, i32 0
  store i32 0, i32* %type31, align 8
  %16 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral30, i32 0, i32 3
  %sval32 = bitcast %union.anon* %16 to i8**
  %17 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %call33 = call i8* @buffer_ptr(%struct.buffer* noundef %17)
  store i8* %call33, i8** %sval32, align 8
  %call34 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral30)
  store %struct.token* %call34, %struct.token** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load %struct.token*, %struct.token** %retval, align 8
  ret %struct.token* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @read_special_token() #0 {
entry:
  %retval = alloca %struct.token*, align 8
  %c = alloca i8, align 1
  %call = call signext i8 @peekc()
  store i8 %call, i8* %c, align 1
  %call1 = call i16** @__ctype_b_loc() #12
  %0 = load i16*, i16** %call1, align 8
  %1 = load i8, i8* %c, align 1
  %conv = sext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %2 to i32
  %and = and i32 %conv2, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* %c, align 1
  %conv3 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv3, 95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call5 = call %struct.token* @token_make_identifier_or_keyword()
  store %struct.token* %call5, %struct.token** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store %struct.token* null, %struct.token** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.token*, %struct.token** %retval, align 8
  ret %struct.token* %4
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_newline() #0 {
entry:
  %.compoundliteral = alloca %struct.token, align 8
  %call = call signext i8 @nextc()
  %0 = bitcast %struct.token* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 7, i32* %type, align 8
  %call1 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  ret %struct.token* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_one_line_comment() #0 {
entry:
  %buffer = alloca %struct.buffer*, align 8
  %c = alloca i8, align 1
  %.compoundliteral = alloca %struct.token, align 8
  %call = call %struct.buffer* @buffer_create()
  store %struct.buffer* %call, %struct.buffer** %buffer, align 8
  store i8 0, i8* %c, align 1
  %call1 = call signext i8 @peekc()
  store i8 %call1, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i8, i8* %c, align 1
  %conv3 = sext i8 %1 to i32
  %cmp4 = icmp ne i32 %conv3, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %4 = load i8, i8* %c, align 1
  call void @buffer_write(%struct.buffer* noundef %3, i8 noundef signext %4)
  %call6 = call signext i8 @nextc()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call7 = call signext i8 @peekc()
  store i8 %call7, i8* %c, align 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %land.end
  %5 = bitcast %struct.token* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 48, i1 false)
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 6, i32* %type, align 8
  %call8 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  ret %struct.token* %call8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_multiline_comment() #0 {
entry:
  %buffer = alloca %struct.buffer*, align 8
  %c = alloca i8, align 1
  %.compoundliteral = alloca %struct.token, align 8
  %call = call %struct.buffer* @buffer_create()
  store %struct.buffer* %call, %struct.buffer** %buffer, align 8
  store i8 0, i8* %c, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end23
  %call1 = call signext i8 @peekc()
  store i8 %call1, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 42
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i8, i8* %c, align 1
  %conv3 = sext i8 %1 to i32
  %cmp4 = icmp ne i32 %conv3, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %4 = load i8, i8* %c, align 1
  call void @buffer_write(%struct.buffer* noundef %3, i8 noundef signext %4)
  %call6 = call signext i8 @nextc()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call7 = call signext i8 @peekc()
  store i8 %call7, i8* %c, align 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %land.end
  %5 = load i8, i8* %c, align 1
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv8, -1
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %6 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %compiler = getelementptr inbounds %struct.lex_process, %struct.lex_process* %6, i32 0, i32 2
  %7 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  call void (%struct.compile_process*, i8*, ...) @compiler_error(%struct.compile_process* noundef %7, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.91, i64 0, i64 0))
  br label %if.end23

if.else:                                          ; preds = %for.end
  %8 = load i8, i8* %c, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 42
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.else
  %call15 = call signext i8 @nextc()
  %call16 = call signext i8 @peekc()
  %conv17 = sext i8 %call16 to i32
  %cmp18 = icmp eq i32 %conv17, 47
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then14
  %call21 = call signext i8 @nextc()
  br label %while.end

if.end:                                           ; preds = %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  br label %while.body

while.end:                                        ; preds = %if.then20
  %9 = bitcast %struct.token* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 6, i32* %type, align 8
  %10 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 3
  %sval = bitcast %union.anon* %10 to i8**
  %11 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %call24 = call i8* @buffer_ptr(%struct.buffer* noundef %11)
  store i8* %call24, i8** %sval, align 8
  %call25 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  ret %struct.token* %call25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @handle_comment() #0 {
entry:
  %retval = alloca %struct.token*, align 8
  %c = alloca i8, align 1
  %call = call signext i8 @peekc()
  store i8 %call, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %call2 = call signext i8 @nextc()
  %call3 = call signext i8 @peekc()
  %conv4 = sext i8 %call3 to i32
  %cmp5 = icmp eq i32 %conv4, 47
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %call8 = call signext i8 @nextc()
  %call9 = call %struct.token* @token_make_one_line_comment()
  store %struct.token* %call9, %struct.token** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %call10 = call signext i8 @peekc()
  %conv11 = sext i8 %call10 to i32
  %cmp12 = icmp eq i32 %conv11, 42
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else
  %call15 = call signext i8 @nextc()
  %call16 = call %struct.token* @token_make_multiline_comment()
  store %struct.token* %call16, %struct.token** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end
  call void @pushc(i8 noundef signext 47)
  %call18 = call %struct.token* @token_make_operator_or_string()
  store %struct.token* %call18, %struct.token** %retval, align 8
  br label %return

if.end19:                                         ; preds = %entry
  store %struct.token* null, %struct.token** %retval, align 8
  br label %return

return:                                           ; preds = %if.end19, %if.end17, %if.then14, %if.then7
  %1 = load %struct.token*, %struct.token** %retval, align 8
  ret %struct.token* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @lex_get_escaped_char(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %co = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  store i8 0, i8* %co, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 110, label %sw.bb
    i32 92, label %sw.bb1
    i32 116, label %sw.bb2
    i32 98, label %sw.bb3
    i32 39, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i8 10, i8* %co, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i8 92, i8* %co, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i8 9, i8* %co, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i8 8, i8* %co, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i8 39, i8* %co, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8, i8* %co, align 1
  ret i8 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lexer_pop_token() #0 {
entry:
  %0 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %token_vec = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 1
  %1 = load %struct.vector*, %struct.vector** %token_vec, align 8
  call void @vector_pop(%struct.vector* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @is_hex_char(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i32 @tolower(i32 noundef %conv) #11
  %conv1 = trunc i32 %call to i8
  store i8 %conv1, i8* %c.addr, align 1
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv2, 48
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1
  %conv4 = sext i8 %2 to i32
  %cmp5 = icmp sle i32 %conv4, 57
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %3 = load i8, i8* %c.addr, align 1
  %conv7 = sext i8 %3 to i32
  %cmp8 = icmp sge i32 %conv7, 97
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %4 = load i8, i8* %c.addr, align 1
  %conv10 = sext i8 %4 to i32
  %cmp11 = icmp sle i32 %conv10, 102
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %5 = phi i1 [ false, %lor.rhs ], [ %cmp11, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %6 = phi i1 [ true, %land.lhs.true ], [ %5, %land.end ]
  ret i1 %6
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_hex_number_str() #0 {
entry:
  %buffer = alloca %struct.buffer*, align 8
  %c = alloca i8, align 1
  %call = call %struct.buffer* @buffer_create()
  store %struct.buffer* %call, %struct.buffer** %buffer, align 8
  %call1 = call signext i8 @peekc()
  store i8 %call1, i8* %c, align 1
  %call2 = call signext i8 @peekc()
  store i8 %call2, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %c, align 1
  %call3 = call zeroext i1 @is_hex_char(i8 noundef signext %0)
  br i1 %call3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %2 = load i8, i8* %c, align 1
  call void @buffer_write(%struct.buffer* noundef %1, i8 noundef signext %2)
  %call4 = call signext i8 @nextc()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call5 = call signext i8 @peekc()
  store i8 %call5, i8* %c, align 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %3 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  call void @buffer_write(%struct.buffer* noundef %3, i8 noundef signext 0)
  %4 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %call6 = call i8* @buffer_ptr(%struct.buffer* noundef %4)
  ret i8* %call6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_special_number_hexadecimal() #0 {
entry:
  %number = alloca i64, align 8
  %number_str = alloca i8*, align 8
  %call = call signext i8 @nextc()
  store i64 0, i64* %number, align 8
  %call1 = call i8* @read_hex_number_str()
  store i8* %call1, i8** %number_str, align 8
  %0 = load i8*, i8** %number_str, align 8
  %call2 = call i64 @strtol(i8* noundef %0, i8** noundef null, i32 noundef 16) #10
  store i64 %call2, i64* %number, align 8
  %1 = load i64, i64* %number, align 8
  %call3 = call %struct.token* @token_make_number_for_value(i64 noundef %1)
  ret %struct.token* %call3
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lexer_validate_binary_string(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #11
  store i64 %call, i64* %len, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 48
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp ne i32 %conv7, 49
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %compiler = getelementptr inbounds %struct.lex_process, %struct.lex_process* %9, i32 0, i32 2
  %10 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  call void (%struct.compile_process*, i8*, ...) @compiler_error(%struct.compile_process* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_special_number_binary() #0 {
entry:
  %number = alloca i64, align 8
  %number_str = alloca i8*, align 8
  %call = call signext i8 @nextc()
  store i64 0, i64* %number, align 8
  %call1 = call i8* @read_number_str()
  store i8* %call1, i8** %number_str, align 8
  %0 = load i8*, i8** %number_str, align 8
  call void @lexer_validate_binary_string(i8* noundef %0)
  %1 = load i8*, i8** %number_str, align 8
  %call2 = call i64 @strtol(i8* noundef %1, i8** noundef null, i32 noundef 2) #10
  store i64 %call2, i64* %number, align 8
  %2 = load i64, i64* %number, align 8
  %call3 = call %struct.token* @token_make_number_for_value(i64 noundef %2)
  ret %struct.token* %call3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_special_number() #0 {
entry:
  %retval = alloca %struct.token*, align 8
  %token = alloca %struct.token*, align 8
  %last_token = alloca %struct.token*, align 8
  %c = alloca i8, align 1
  store %struct.token* null, %struct.token** %token, align 8
  %call = call %struct.token* @lexer_last_token()
  store %struct.token* %call, %struct.token** %last_token, align 8
  %0 = load %struct.token*, %struct.token** %last_token, align 8
  %tobool = icmp ne %struct.token* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.token*, %struct.token** %last_token, align 8
  %2 = getelementptr inbounds %struct.token, %struct.token* %1, i32 0, i32 3
  %llnum = bitcast %union.anon* %2 to i64*
  %3 = load i64, i64* %llnum, align 8
  %cmp = icmp eq i64 %3, 0
  %land.ext = zext i1 %cmp to i32
  %4 = load %struct.token*, %struct.token** %last_token, align 8
  %type = getelementptr inbounds %struct.token, %struct.token* %4, i32 0, i32 0
  store i32 %land.ext, i32* %type, align 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call1 = call %struct.token* @token_make_identifier_or_keyword()
  store %struct.token* %call1, %struct.token** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @lexer_pop_token()
  %call2 = call signext i8 @peekc()
  store i8 %call2, i8* %c, align 1
  %5 = load i8, i8* %c, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 120
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = call %struct.token* @token_make_special_number_hexadecimal()
  store %struct.token* %call6, %struct.token** %token, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  %6 = load i8, i8* %c, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv7, 98
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %call11 = call %struct.token* @token_make_special_number_binary()
  store %struct.token* %call11, %struct.token** %token, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  %7 = load %struct.token*, %struct.token** %token, align 8
  store %struct.token* %7, %struct.token** %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %8 = load %struct.token*, %struct.token** %retval, align 8
  ret %struct.token* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @token_make_quote() #0 {
entry:
  %c = alloca i8, align 1
  %.compoundliteral = alloca %struct.token, align 8
  %call = call signext i8 @assert_next_char(i8 noundef signext 39)
  %call1 = call signext i8 @nextc()
  store i8 %call1, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call signext i8 @nextc()
  store i8 %call3, i8* %c, align 1
  %1 = load i8, i8* %c, align 1
  %call4 = call signext i8 @lex_get_escaped_char(i8 noundef signext %1)
  store i8 %call4, i8* %c, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call signext i8 @nextc()
  %conv6 = sext i8 %call5 to i32
  %cmp7 = icmp ne i32 %conv6, 39
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %2 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %compiler = getelementptr inbounds %struct.lex_process, %struct.lex_process* %2, i32 0, i32 2
  %3 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  call void (%struct.compile_process*, i8*, ...) @compiler_error(%struct.compile_process* noundef %3, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.93, i64 0, i64 0))
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %4 = bitcast %struct.token* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 48, i1 false)
  %type = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 0
  store i32 4, i32* %type, align 8
  %5 = getelementptr inbounds %struct.token, %struct.token* %.compoundliteral, i32 0, i32 3
  %cval = bitcast %union.anon* %5 to i8*
  %6 = load i8, i8* %c, align 1
  store i8 %6, i8* %cval, align 8
  %call11 = call %struct.token* @token_create(%struct.token* noundef %.compoundliteral)
  ret %struct.token* %call11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.token* @read_next_token() #0 {
entry:
  %retval = alloca %struct.token*, align 8
  %token = alloca %struct.token*, align 8
  %c = alloca i8, align 1
  store %struct.token* null, %struct.token** %token, align 8
  %call = call signext i8 @peekc()
  store i8 %call, i8* %c, align 1
  %call1 = call %struct.token* @handle_comment()
  store %struct.token* %call1, %struct.token** %token, align 8
  %0 = load %struct.token*, %struct.token** %token, align 8
  %tobool = icmp ne %struct.token* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.token*, %struct.token** %token, align 8
  store %struct.token* %1, %struct.token** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %c, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 43, label %sw.bb3
    i32 45, label %sw.bb3
    i32 42, label %sw.bb3
    i32 62, label %sw.bb3
    i32 60, label %sw.bb3
    i32 94, label %sw.bb3
    i32 37, label %sw.bb3
    i32 33, label %sw.bb3
    i32 61, label %sw.bb3
    i32 126, label %sw.bb3
    i32 124, label %sw.bb3
    i32 38, label %sw.bb3
    i32 40, label %sw.bb3
    i32 91, label %sw.bb3
    i32 44, label %sw.bb3
    i32 46, label %sw.bb3
    i32 63, label %sw.bb3
    i32 123, label %sw.bb5
    i32 125, label %sw.bb5
    i32 58, label %sw.bb5
    i32 59, label %sw.bb5
    i32 35, label %sw.bb5
    i32 92, label %sw.bb5
    i32 41, label %sw.bb5
    i32 93, label %sw.bb5
    i32 98, label %sw.bb7
    i32 120, label %sw.bb9
    i32 39, label %sw.bb11
    i32 34, label %sw.bb13
    i32 32, label %sw.bb15
    i32 9, label %sw.bb15
    i32 10, label %sw.bb17
    i32 36, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %call2 = call %struct.token* @token_make_number()
  store %struct.token* %call2, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %call4 = call %struct.token* @token_make_operator_or_string()
  store %struct.token* %call4, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %call6 = call %struct.token* @token_make_symbol()
  store %struct.token* %call6, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %call8 = call %struct.token* @token_make_special_number()
  store %struct.token* %call8, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %call10 = call %struct.token* @token_make_special_number()
  store %struct.token* %call10, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %call12 = call %struct.token* @token_make_quote()
  store %struct.token* %call12, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %call14 = call %struct.token* @token_make_string(i8 noundef signext 34, i8 noundef signext 34)
  store %struct.token* %call14, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end, %if.end
  %call16 = call %struct.token* @handle_whitespace()
  store %struct.token* %call16, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %call18 = call %struct.token* @token_make_newline()
  store %struct.token* %call18, %struct.token** %token, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call20 = call %struct.token* @read_special_token()
  store %struct.token* %call20, %struct.token** %token, align 8
  %3 = load %struct.token*, %struct.token** %token, align 8
  %tobool21 = icmp ne %struct.token* %3, null
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %sw.default
  %4 = load %struct.lex_process*, %struct.lex_process** @lex_process, align 8
  %compiler = getelementptr inbounds %struct.lex_process, %struct.lex_process* %4, i32 0, i32 2
  %5 = load %struct.compile_process*, %struct.compile_process** %compiler, align 8
  call void (%struct.compile_process*, i8*, ...) @compiler_error(%struct.compile_process* noundef %5, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end23, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %6 = load %struct.token*, %struct.token** %token, align 8
  store %struct.token* %6, %struct.token** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %7 = load %struct.token*, %struct.token** %retval, align 8
  ret %struct.token* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @lexer_string_buffer_next_char(%struct.lex_process* noundef %process) #0 {
entry:
  %process.addr = alloca %struct.lex_process*, align 8
  %buf = alloca %struct.buffer*, align 8
  store %struct.lex_process* %process, %struct.lex_process** %process.addr, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %call = call i8* @lex_process_private(%struct.lex_process* noundef %0)
  %1 = bitcast i8* %call to %struct.buffer*
  store %struct.buffer* %1, %struct.buffer** %buf, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %call1 = call signext i8 @buffer_read(%struct.buffer* noundef %2)
  ret i8 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lex_process_private(%struct.lex_process* noundef %process) #0 {
entry:
  %process.addr = alloca %struct.lex_process*, align 8
  store %struct.lex_process* %process, %struct.lex_process** %process.addr, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %private = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 6
  %1 = load i8*, i8** %private, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @lexer_string_buffer_peek_char(%struct.lex_process* noundef %process) #0 {
entry:
  %process.addr = alloca %struct.lex_process*, align 8
  %buf = alloca %struct.buffer*, align 8
  store %struct.lex_process* %process, %struct.lex_process** %process.addr, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %call = call i8* @lex_process_private(%struct.lex_process* noundef %0)
  %1 = bitcast i8* %call to %struct.buffer*
  store %struct.buffer* %1, %struct.buffer** %buf, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %call1 = call signext i8 @buffer_peek(%struct.buffer* noundef %2)
  ret i8 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lexer_string_buffer_push_char(%struct.lex_process* noundef %process, i8 noundef signext %c) #0 {
entry:
  %process.addr = alloca %struct.lex_process*, align 8
  %c.addr = alloca i8, align 1
  %buf = alloca %struct.buffer*, align 8
  store %struct.lex_process* %process, %struct.lex_process** %process.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %call = call i8* @lex_process_private(%struct.lex_process* noundef %0)
  %1 = bitcast i8* %call to %struct.buffer*
  store %struct.buffer* %1, %struct.buffer** %buf, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %3 = load i8, i8* %c.addr, align 1
  call void @buffer_write(%struct.buffer* noundef %2, i8 noundef signext %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lex_process* @tokens_build_for_string(%struct.compile_process* noundef %compiler, i8* noundef %str) #0 {
entry:
  %retval = alloca %struct.lex_process*, align 8
  %compiler.addr = alloca %struct.compile_process*, align 8
  %str.addr = alloca i8*, align 8
  %buffer = alloca %struct.buffer*, align 8
  %lex_process = alloca %struct.lex_process*, align 8
  store %struct.compile_process* %compiler, %struct.compile_process** %compiler.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call %struct.buffer* @buffer_create()
  store %struct.buffer* %call, %struct.buffer** %buffer, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %1 = load i8*, i8** %str.addr, align 8
  call void (%struct.buffer*, i8*, ...) @buffer_printf(%struct.buffer* noundef %0, i8* noundef %1)
  %2 = load %struct.compile_process*, %struct.compile_process** %compiler.addr, align 8
  %3 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %4 = bitcast %struct.buffer* %3 to i8*
  %call1 = call %struct.lex_process* @lex_process_create(%struct.compile_process* noundef %2, %struct.lex_process_functions* noundef bitcast ({ i8 (%struct.lex_process*)*, i8 (%struct.lex_process*)*, void (%struct.lex_process*, i8)* }* @lexer_string_buffer_functions to %struct.lex_process_functions*), i8* noundef %4)
  store %struct.lex_process* %call1, %struct.lex_process** %lex_process, align 8
  %5 = load %struct.lex_process*, %struct.lex_process** %lex_process, align 8
  %tobool = icmp ne %struct.lex_process* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.lex_process* null, %struct.lex_process** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.lex_process*, %struct.lex_process** %lex_process, align 8
  %call2 = call i32 @lex(%struct.lex_process* noundef %6)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store %struct.lex_process* null, %struct.lex_process** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load %struct.lex_process*, %struct.lex_process** %lex_process, align 8
  store %struct.lex_process* %7, %struct.lex_process** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load %struct.lex_process*, %struct.lex_process** %retval, align 8
  ret %struct.lex_process* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lex_process_free(%struct.lex_process* noundef %process) #0 {
entry:
  %process.addr = alloca %struct.lex_process*, align 8
  store %struct.lex_process* %process, %struct.lex_process** %process.addr, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %token_vec = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 1
  %1 = load %struct.vector*, %struct.vector** %token_vec, align 8
  call void @vector_free(%struct.vector* noundef %1)
  %2 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %3 = bitcast %struct.lex_process* %2 to i8*
  call void @free(i8* noundef %3) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vector* @lex_process_tokens(%struct.lex_process* noundef %process) #0 {
entry:
  %process.addr = alloca %struct.lex_process*, align 8
  store %struct.lex_process* %process, %struct.lex_process** %process.addr, align 8
  %0 = load %struct.lex_process*, %struct.lex_process** %process.addr, align 8
  %token_vec = getelementptr inbounds %struct.lex_process, %struct.lex_process* %0, i32 0, i32 1
  %1 = load %struct.vector*, %struct.vector** %token_vec, align 8
  ret %struct.vector* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @node_set_vector(%struct.vector* noundef %vec, %struct.vector* noundef %root_vec) #0 {
entry:
  %vec.addr = alloca %struct.vector*, align 8
  %root_vec.addr = alloca %struct.vector*, align 8
  store %struct.vector* %vec, %struct.vector** %vec.addr, align 8
  store %struct.vector* %root_vec, %struct.vector** %root_vec.addr, align 8
  %0 = load %struct.vector*, %struct.vector** %vec.addr, align 8
  store %struct.vector* %0, %struct.vector** @node_vector, align 8
  %1 = load %struct.vector*, %struct.vector** %root_vec.addr, align 8
  store %struct.vector* %1, %struct.vector** @node_vector_root, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @node_push(%struct.node* noundef %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  store %struct.node* %node, %struct.node** %node.addr, align 8
  %0 = load %struct.vector*, %struct.vector** @node_vector, align 8
  %1 = bitcast %struct.node** %node.addr to i8*
  call void @vector_push(%struct.vector* noundef %0, i8* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @node_peek_or_null() #0 {
entry:
  %0 = load %struct.vector*, %struct.vector** @node_vector, align 8
  %call = call i8* @vector_back_ptr_or_null(%struct.vector* noundef %0)
  %1 = bitcast i8* %call to %struct.node*
  ret %struct.node* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @node_peek() #0 {
entry:
  %0 = load %struct.vector*, %struct.vector** @node_vector, align 8
  %call = call i8* @vector_back(%struct.vector* noundef %0)
  %1 = bitcast i8* %call to %struct.node**
  %2 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @node_pop() #0 {
entry:
  %last_node = alloca %struct.node*, align 8
  %last_node_root = alloca %struct.node*, align 8
  %0 = load %struct.vector*, %struct.vector** @node_vector, align 8
  %call = call i8* @vector_back_ptr(%struct.vector* noundef %0)
  %1 = bitcast i8* %call to %struct.node*
  store %struct.node* %1, %struct.node** %last_node, align 8
  %2 = load %struct.vector*, %struct.vector** @node_vector, align 8
  %call1 = call zeroext i1 @vector_empty(%struct.vector* noundef %2)
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.vector*, %struct.vector** @node_vector_root, align 8
  %call2 = call i8* @vector_back_ptr(%struct.vector* noundef %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call2, %cond.false ]
  %4 = bitcast i8* %cond to %struct.node*
  store %struct.node* %4, %struct.node** %last_node_root, align 8
  %5 = load %struct.vector*, %struct.vector** @node_vector, align 8
  call void @vector_pop(%struct.vector* noundef %5)
  %6 = load %struct.node*, %struct.node** %last_node, align 8
  %7 = load %struct.node*, %struct.node** %last_node_root, align 8
  %cmp = icmp eq %struct.node* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load %struct.vector*, %struct.vector** @node_vector_root, align 8
  call void @vector_pop(%struct.vector* noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load %struct.node*, %struct.node** %last_node, align 8
  ret %struct.node* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @node_create(%struct.node* noundef %_node) #0 {
entry:
  %_node.addr = alloca %struct.node*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.node* %_node, %struct.node** %_node.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 48) #10
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %node, align 8
  %1 = load %struct.node*, %struct.node** %node, align 8
  %2 = bitcast %struct.node* %1 to i8*
  %3 = load %struct.node*, %struct.node** %_node.addr, align 8
  %4 = bitcast %struct.node* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %4, i64 48, i1 false)
  %5 = load %struct.node*, %struct.node** %node, align 8
  call void @node_push(%struct.node* noundef %5)
  %6 = load %struct.node*, %struct.node** %node, align 8
  ret %struct.node* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parser_ignore_nl_or_comment(%struct.token* noundef %token) #0 {
entry:
  %token.addr = alloca %struct.token*, align 8
  store %struct.token* %token, %struct.token** %token.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.token*, %struct.token** %token.addr, align 8
  %tobool = icmp ne %struct.token* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.token*, %struct.token** %token.addr, align 8
  %call = call zeroext i1 @token_is_nl_or_comment_or_newline_separator(%struct.token* noundef %1)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load %struct.compile_process*, %struct.compile_process** @current_process, align 8
  %token_vec = getelementptr inbounds %struct.compile_process, %struct.compile_process* %3, i32 0, i32 3
  %4 = load %struct.vector*, %struct.vector** %token_vec, align 8
  %call1 = call i8* @vector_peek(%struct.vector* noundef %4)
  %5 = load %struct.compile_process*, %struct.compile_process** @current_process, align 8
  %token_vec2 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %5, i32 0, i32 3
  %6 = load %struct.vector*, %struct.vector** %token_vec2, align 8
  %call3 = call i8* @vector_peek_no_increment(%struct.vector* noundef %6)
  %7 = bitcast i8* %call3 to %struct.token*
  store %struct.token* %7, %struct.token** %token.addr, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @token_is_nl_or_comment_or_newline_separator(%struct.token* noundef %token) #0 {
entry:
  %token.addr = alloca %struct.token*, align 8
  store %struct.token* %token, %struct.token** %token.addr, align 8
  %0 = load %struct.token*, %struct.token** %token.addr, align 8
  %type = getelementptr inbounds %struct.token, %struct.token* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.token*, %struct.token** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.token, %struct.token* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %3, 6
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.token*, %struct.token** %token.addr, align 8
  %call = call zeroext i1 @token_is_symbol(%struct.token* noundef %4, i8 noundef signext 92)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call, %lor.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.token* @token_next() #0 {
entry:
  %next_token = alloca %struct.token*, align 8
  %0 = load %struct.compile_process*, %struct.compile_process** @current_process, align 8
  %token_vec = getelementptr inbounds %struct.compile_process, %struct.compile_process* %0, i32 0, i32 3
  %1 = load %struct.vector*, %struct.vector** %token_vec, align 8
  %call = call i8* @vector_peek_no_increment(%struct.vector* noundef %1)
  %2 = bitcast i8* %call to %struct.token*
  store %struct.token* %2, %struct.token** %next_token, align 8
  %3 = load %struct.token*, %struct.token** %next_token, align 8
  call void @parser_ignore_nl_or_comment(%struct.token* noundef %3)
  %4 = load %struct.compile_process*, %struct.compile_process** @current_process, align 8
  %pos = getelementptr inbounds %struct.compile_process, %struct.compile_process* %4, i32 0, i32 1
  %5 = load %struct.token*, %struct.token** %next_token, align 8
  %pos1 = getelementptr inbounds %struct.token, %struct.token* %5, i32 0, i32 2
  %6 = bitcast %struct.pos* %pos to i8*
  %7 = bitcast %struct.pos* %pos1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %8 = load %struct.token*, %struct.token** %next_token, align 8
  store %struct.token* %8, %struct.token** @parser_last_token, align 8
  %9 = load %struct.compile_process*, %struct.compile_process** @current_process, align 8
  %token_vec2 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %9, i32 0, i32 3
  %10 = load %struct.vector*, %struct.vector** %token_vec2, align 8
  %call3 = call i8* @vector_peek(%struct.vector* noundef %10)
  %11 = bitcast i8* %call3 to %struct.token*
  ret %struct.token* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.token* @token_peek_next() #0 {
entry:
  %next_token = alloca %struct.token*, align 8
  %0 = load %struct.compile_process*, %struct.compile_process** @current_process, align 8
  %token_vec = getelementptr inbounds %struct.compile_process, %struct.compile_process* %0, i32 0, i32 3
  %1 = load %struct.vector*, %struct.vector** %token_vec, align 8
  %call = call i8* @vector_peek_no_increment(%struct.vector* noundef %1)
  %2 = bitcast i8* %call to %struct.token*
  store %struct.token* %2, %struct.token** %next_token, align 8
  %3 = load %struct.token*, %struct.token** %next_token, align 8
  call void @parser_ignore_nl_or_comment(%struct.token* noundef %3)
  %4 = load %struct.compile_process*, %struct.compile_process** @current_process, align 8
  %token_vec1 = getelementptr inbounds %struct.compile_process, %struct.compile_process* %4, i32 0, i32 3
  %5 = load %struct.vector*, %struct.vector** %token_vec1, align 8
  %call2 = call i8* @vector_peek_no_increment(%struct.vector* noundef %5)
  %6 = bitcast i8* %call2 to %struct.token*
  ret %struct.token* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_single_token_to_node() #0 {
entry:
  %token = alloca %struct.token*, align 8
  %node = alloca %struct.node*, align 8
  %.compoundliteral = alloca %struct.node, align 8
  %.compoundliteral5 = alloca %struct.node, align 8
  %.compoundliteral10 = alloca %struct.node, align 8
  %call = call %struct.token* @token_next()
  store %struct.token* %call, %struct.token** %token, align 8
  store %struct.node* null, %struct.node** %node, align 8
  %0 = load %struct.token*, %struct.token** %token, align 8
  %type = getelementptr inbounds %struct.token, %struct.token* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 0, label %sw.bb4
    i32 5, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %2 = bitcast %struct.node* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 48, i1 false)
  %type1 = getelementptr inbounds %struct.node, %struct.node* %.compoundliteral, i32 0, i32 0
  store i32 2, i32* %type1, align 8
  %3 = getelementptr inbounds %struct.node, %struct.node* %.compoundliteral, i32 0, i32 4
  %llnum = bitcast %union.anon.0* %3 to i64*
  %4 = load %struct.token*, %struct.token** %token, align 8
  %5 = getelementptr inbounds %struct.token, %struct.token* %4, i32 0, i32 3
  %llnum2 = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %llnum2, align 8
  store i64 %6, i64* %llnum, align 8
  %call3 = call %struct.node* @node_create(%struct.node* noundef %.compoundliteral)
  store %struct.node* %call3, %struct.node** %node, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %7 = bitcast %struct.node* %.compoundliteral5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 48, i1 false)
  %type6 = getelementptr inbounds %struct.node, %struct.node* %.compoundliteral5, i32 0, i32 0
  store i32 3, i32* %type6, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %.compoundliteral5, i32 0, i32 4
  %sval = bitcast %union.anon.0* %8 to i8**
  %9 = load %struct.token*, %struct.token** %token, align 8
  %10 = getelementptr inbounds %struct.token, %struct.token* %9, i32 0, i32 3
  %sval7 = bitcast %union.anon* %10 to i8**
  %11 = load i8*, i8** %sval7, align 8
  store i8* %11, i8** %sval, align 8
  %call8 = call %struct.node* @node_create(%struct.node* noundef %.compoundliteral5)
  store %struct.node* %call8, %struct.node** %node, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %12 = bitcast %struct.node* %.compoundliteral10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %type11 = getelementptr inbounds %struct.node, %struct.node* %.compoundliteral10, i32 0, i32 0
  store i32 4, i32* %type11, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %.compoundliteral10, i32 0, i32 4
  %sval12 = bitcast %union.anon.0* %13 to i8**
  %14 = load %struct.token*, %struct.token** %token, align 8
  %15 = getelementptr inbounds %struct.token, %struct.token* %14, i32 0, i32 3
  %sval13 = bitcast %union.anon* %15 to i8**
  %16 = load i8*, i8** %sval13, align 8
  store i8* %16, i8** %sval12, align 8
  %call14 = call %struct.node* @node_create(%struct.node* noundef %.compoundliteral10)
  store %struct.node* %call14, %struct.node** %node, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %17 = load %struct.compile_process*, %struct.compile_process** @current_process, align 8
  call void (%struct.compile_process*, i8*, ...) @compiler_error(%struct.compile_process* noundef %17, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.95, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_next() #0 {
entry:
  %retval = alloca i32, align 4
  %token = alloca %struct.token*, align 8
  %res = alloca i32, align 4
  %call = call %struct.token* @token_peek_next()
  store %struct.token* %call, %struct.token** %token, align 8
  %0 = load %struct.token*, %struct.token** %token, align 8
  %tobool = icmp ne %struct.token* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %res, align 4
  %1 = load %struct.token*, %struct.token** %token, align 8
  %type = getelementptr inbounds %struct.token, %struct.token* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.default [
    i32 4, label %sw.bb
    i32 0, label %sw.bb
    i32 5, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  call void @parse_single_token_to_node()
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @token_is_symbol(%struct.token* noundef %token, i8 noundef signext %c) #0 {
entry:
  %token.addr = alloca %struct.token*, align 8
  %c.addr = alloca i8, align 1
  store %struct.token* %token, %struct.token** %token.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.token*, %struct.token** %token.addr, align 8
  %type = getelementptr inbounds %struct.token, %struct.token* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.token*, %struct.token** %token.addr, align 8
  %3 = getelementptr inbounds %struct.token, %struct.token* %2, i32 0, i32 3
  %cval = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %cval, align 8
  %conv = sext i8 %4 to i32
  %5 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, %conv1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %6
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind readnone willreturn }

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
