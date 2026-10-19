; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/jccc.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/jccc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RGenState = type { i32, i32 }
%struct.GenState = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Lexer = type { %struct._IO_FILE*, [256 x i8], [1 x i8], i64, i32, i32, i32, [5 x %struct.Token], i32 }
%struct.Token = type { i32, [256 x i8], i32, [256 x i8], i32, i32 }
%struct.Expression = type { %union.anon, i32 }
%union.anon = type { %struct.FunctionCall }
%struct.FunctionCall = type { [256 x i8] }
%struct.BlockStatement = type { %struct.List* }
%struct.List = type { %struct.ListBlock*, %struct.ListBlock*, i32 }
%struct.ListBlock = type { i8**, i32, i32, %struct.ListBlock* }
%struct.FunctionDeclaration = type { %struct.BlockStatement, [256 x i8] }
%struct.ConcreteFileTree = type { %struct.List* }
%struct.Hashmap = type { %struct.BucketNode**, i32, i32, i32 (i8*)*, i32 (i8*, i8*)* }
%struct.BucketNode = type { i8*, i8*, %struct.BucketNode* }

@RGEN_STATE = dso_local global %struct.RGenState zeroinitializer, align 4
@r_start_main.start = internal global [256 x i8] c".global _start\0A_start:\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@GEN_STATE = dso_local global %struct.GenState zeroinitializer, align 4
@start_main.start = internal global [256 x i8] c"global _start\0Asection .text\0A\0A_start:\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@end_main.end = internal global [256 x i8] c"\09mov rax, 60\09mov rdi, 0\09syscall\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [36 x i8] c"\09mov rax, 60\0A\09mov rdi, %d\0A\09syscall\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@op_strs = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"\09%s rax, rdi\0A\00", align 1
@start_func.start = internal global [256 x i8] c"\09sub rsp, 32\09mov [rsp], r12\09mov [rsp+8], r13\09mov [rsp+16], r14\09mov [rsp+24], r15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@end_func.end = internal global [256 x i8] c"\09mov r12, [rsp]\09mov r13, [rsp+8]\09mov r14, [rsp+16]\09mov r15, [rsp+24]\09add rsp, 32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.5 = private unnamed_addr constant [18 x i8] c"\09mov [rsp+%d], %d\00", align 1
@__func__.test_init_int_literal = private unnamed_addr constant [22 x i8] c"test_init_int_literal\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\09mov [rsp+8], 100\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s:%u: failed assertion `%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [109 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/codegen/x86/codegen.c\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"strcmp(init_int_literal(100), \22\09mov [rsp+8], 100\22) == 0\00", align 1
@__func__.test_op_on_rax_with_rdi = private unnamed_addr constant [24 x i8] c"test_op_on_rax_with_rdi\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\09add rax, rdi\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"strcmp(out, \22\09add rax, rdi\\n\22) == 0\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"\09mov rax, rdi\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"strcmp(out2, \22\09mov rax, rdi\\n\22) == 0\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"\1B[%dm\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Error: jccc: File %s not found\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Contents: %20s, type: %20s, position: %d/%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"jccc: Usage: --token-dump <filename> to see all tokens\0A\00", align 1
@.str.20 = private unnamed_addr constant [84 x i8] c"jccc: default compilation not supported yet -- try 'jccc --token-dump %s' instead.\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"jccc: expected only two arguments!\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"--token-dump\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"--test-parse\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Error: jccc: option %s not recognized.\0A\00", align 1
@single_char_tokens = dso_local global [15 x i8] c"(){}[];~#,.:?~\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"&&=\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"||=\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@operator_strings = dso_local global [37 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* null], align 16
@.str.61 = private unnamed_addr constant [17 x i8] c"l->position >= 0\00", align 1
@.str.62 = private unnamed_addr constant [99 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/lexer/lex.c\00", align 1
@__PRETTY_FUNCTION__.lexer_ungetchar = private unnamed_addr constant [29 x i8] c"int lexer_ungetchar(Lexer *)\00", align 1
@real_lex.eof = internal global [14 x i8] c"[end of file]\00", align 1
@.str.63 = private unnamed_addr constant [64 x i8] c"Error: jccc: internal error: did not skip whitespace correctly\0A\00", align 1
@real_lex.nline = internal global [10 x i8] c"[newline]\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"Error: jccc: identifier too long, over %d characters\0A\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"Error: jccc: identifier began with the following:\0A\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"Error: jccc: %.*s\0A\00", align 1
@.str.67 = private unnamed_addr constant [63 x i8] c"Error: jccc: lexer unable to identify token starting with: %c\0A\00", align 1
@.str.68 = private unnamed_addr constant [69 x i8] c"Error: jccc: internal: tried to unlex more than %d tokens at a time\0A\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"open paren\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"close paren\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"open brace\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"close brace\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"open bracket\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"close bracket\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"semicolon\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"no token\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"end of file\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"newline\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"pound\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@ttype_names = internal global [85 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0)], align 16
@__func__.test_ttype_many_chars = private unnamed_addr constant [22 x i8] c"test_ttype_many_chars\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.119 = private unnamed_addr constant [41 x i8] c"ttype_many_chars(\22foo\22) == TT_IDENTIFIER\00", align 1
@.str.120 = private unnamed_addr constant [40 x i8] c"ttype_many_chars(\22struct\22) == TT_STRUCT\00", align 1
@.str.121 = private unnamed_addr constant [38 x i8] c"ttype_many_chars(\22while\22) == TT_WHILE\00", align 1
@__func__.test_ttype_one_char = private unnamed_addr constant [20 x i8] c"test_ttype_one_char\00", align 1
@.str.122 = private unnamed_addr constant [37 x i8] c"ttype_one_char('a') == TT_IDENTIFIER\00", align 1
@.str.123 = private unnamed_addr constant [34 x i8] c"ttype_one_char('1') == TT_LITERAL\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"ttype_one_char('+') == TT_PLUS\00", align 1
@.str.125 = private unnamed_addr constant [32 x i8] c"ttype_one_char('-') == TT_MINUS\00", align 1
@.str.126 = private unnamed_addr constant [34 x i8] c"ttype_one_char('>') == TT_GREATER\00", align 1
@.str.127 = private unnamed_addr constant [31 x i8] c"ttype_one_char('~') == TT_BNOT\00", align 1
@__func__.test_ttype_name = private unnamed_addr constant [16 x i8] c"test_ttype_name\00", align 1
@.str.128 = private unnamed_addr constant [47 x i8] c"strcmp(ttype_name(TT_LITERAL), \22literal\22) == 0\00", align 1
@.str.129 = private unnamed_addr constant [38 x i8] c"strcmp(ttype_name(TT_PLUS), \22+\22) == 0\00", align 1
@.str.130 = private unnamed_addr constant [45 x i8] c"strcmp(ttype_name(TT_SIZEOF), \22sizeof\22) == 0\00", align 1
@.str.131 = private unnamed_addr constant [43 x i8] c"strcmp(ttype_name(TT_WHILE), \22while\22) == 0\00", align 1
@__func__.test_ttype_from_string = private unnamed_addr constant [23 x i8] c"test_ttype_from_string\00", align 1
@.str.132 = private unnamed_addr constant [34 x i8] c"ttype_from_string(\22+\22) == TT_PLUS\00", align 1
@.str.133 = private unnamed_addr constant [36 x i8] c"ttype_from_string(\22=\22) == TT_ASSIGN\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.135 = private unnamed_addr constant [37 x i8] c"ttype_from_string(\221\22) == TT_LITERAL\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.137 = private unnamed_addr constant [39 x i8] c"ttype_from_string(\221.2\22) == TT_LITERAL\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"1u\00", align 1
@.str.139 = private unnamed_addr constant [38 x i8] c"ttype_from_string(\221u\22) == TT_LITERAL\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"1.2f\00", align 1
@.str.141 = private unnamed_addr constant [40 x i8] c"ttype_from_string(\221.2f\22) == TT_LITERAL\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"1.f\00", align 1
@.str.143 = private unnamed_addr constant [39 x i8] c"ttype_from_string(\221.f\22) == TT_LITERAL\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"\22Planck\22\00", align 1
@.str.145 = private unnamed_addr constant [46 x i8] c"ttype_from_string(\22\\\22Planck\\\22\22) == TT_LITERAL\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"'Language'\00", align 1
@.str.147 = private unnamed_addr constant [46 x i8] c"ttype_from_string(\22'Language'\22) == TT_LITERAL\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"Jaba\00", align 1
@.str.149 = private unnamed_addr constant [43 x i8] c"ttype_from_string(\22Jaba\22) == TT_IDENTIFIER\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"cat_\00", align 1
@.str.151 = private unnamed_addr constant [43 x i8] c"ttype_from_string(\22cat_\22) == TT_IDENTIFIER\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.153 = private unnamed_addr constant [36 x i8] c"ttype_from_string(\22(\22) == TT_OPAREN\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.155 = private unnamed_addr constant [36 x i8] c"ttype_from_string(\22}\22) == TT_CBRACE\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.157 = private unnamed_addr constant [34 x i8] c"ttype_from_string(\22;\22) == TT_SEMI\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.160 = private unnamed_addr constant [36 x i8] c"Error: jccc: Wrong closing brace.\0A\0A\00", align 1
@.str.161 = private unnamed_addr constant [38 x i8] c"Error: jccc: Return value is wrong.\0A\0A\00", align 1
@.str.162 = private unnamed_addr constant [41 x i8] c"Error: jccc: Wrong main function body.\0A\0A\00", align 1
@.str.163 = private unnamed_addr constant [42 x i8] c"Error: jccc: Not correct main function.\0A\0A\00", align 1
@__func__.test_hash_init = private unnamed_addr constant [15 x i8] c"test_hash_init\00", align 1
@.str.164 = private unnamed_addr constant [102 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/jccc/src/util/hashmap.c\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"h->size == 0\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"h->cap == 100\00", align 1
@__func__.test_hash_init_and_store = private unnamed_addr constant [25 x i8] c"test_hash_init_and_store\00", align 1
@__const.test_hash_init_and_store.name = private unnamed_addr constant [5 x i8] c"jake\00", align 1
@__const.test_hash_init_and_store.key = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"ret != -1\00", align 1
@.str.168 = private unnamed_addr constant [25 x i8] c"strcmp(b->key, key) == 0\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"h->size == 1\00", align 1
@__func__.test_hash_set_and_get = private unnamed_addr constant [22 x i8] c"test_hash_set_and_get\00", align 1
@__const.test_hash_set_and_get.key = private unnamed_addr constant [10 x i8] c"test\00\00\00\00\00\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"jake\00", align 1
@.str.172 = private unnamed_addr constant [32 x i8] c"strcmp(got->value, \22jake\22) == 0\00", align 1
@__func__.test_hash_set_and_double_get = private unnamed_addr constant [29 x i8] c"test_hash_set_and_double_get\00", align 1
@__const.test_hash_set_and_double_get.key = private unnamed_addr constant [10 x i8] c"test\00\00\00\00\00\00", align 1
@.str.173 = private unnamed_addr constant [50 x i8] c"Error: jccc: internal: failed to allocate memory\0A\00", align 1
@.str.174 = private unnamed_addr constant [53 x i8] c"Error: jccc: internal: list index was negative (%d)\0A\00", align 1
@.str.175 = private unnamed_addr constant [52 x i8] c"Error: jccc: internal: list index %d out of bounds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_code_gen_init() #0 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.RGenState, %struct.RGenState* @RGEN_STATE, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.RGenState, %struct.RGenState* @RGEN_STATE, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @r_start_main() #0 {
entry:
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @r_start_main.start, i64 0, i64 0)
}

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
define dso_local void @code_gen_init() #0 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.GenState, %struct.GenState* @GEN_STATE, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.GenState, %struct.GenState* @GEN_STATE, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttype_to_op(i32 noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  switch i32 %0, label %sw.default [
    i32 17, label %sw.bb
    i32 16, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @start_main() #0 {
entry:
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @start_main.start, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @end_main() #0 {
entry:
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @end_main.end, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @end_main_custom_return(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %end = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 256) #8
  store i8* %call, i8** %end, align 8
  %0 = load i8*, i8** %end, align 8
  %1 = load i32, i32* %val.addr, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef %1) #8
  %2 = load i8*, i8** %end, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @op_on_rax_with_rdi(i32 noundef %op) #0 {
entry:
  %op.addr = alloca i32, align 4
  %end = alloca i8*, align 8
  %op_str = alloca i8*, align 8
  store i32 %op, i32* %op.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 256) #8
  store i8* %call, i8** %end, align 8
  %0 = load i32, i32* %op.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @op_strs, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %op_str, align 8
  %2 = load i8*, i8** %end, align 8
  %3 = load i8*, i8** %op_str, align 8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef %3) #8
  %4 = load i8*, i8** %end, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @start_func() #0 {
entry:
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @start_func.start, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @end_func() #0 {
entry:
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @end_func.end, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @init_int_literal(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %init = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.GenState, %struct.GenState* @GEN_STATE, i32 0, i32 1), align 4
  %add = add i32 %0, 8
  store i32 %add, i32* getelementptr inbounds (%struct.GenState, %struct.GenState* @GEN_STATE, i32 0, i32 1), align 4
  %call = call noalias i8* @malloc(i64 noundef 256) #8
  store i8* %call, i8** %init, align 8
  %1 = load i8*, i8** %init, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.GenState, %struct.GenState* @GEN_STATE, i32 0, i32 1), align 4
  %3 = load i32, i32* %val.addr, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %2, i32 noundef %3) #8
  %4 = load i8*, i8** %init, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_init_int_literal() #0 {
entry:
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.test_init_int_literal, i64 0, i64 0))
  call void @code_gen_init()
  %call = call i8* @init_int_literal(i32 noundef 100)
  %call1 = call i32 @strcmp(i8* noundef %call, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.8, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  ret i32 0
}

declare dso_local void @testing_single_test_internal(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_op_on_rax_with_rdi() #0 {
entry:
  %out = alloca i8*, align 8
  %out2 = alloca i8*, align 8
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.test_op_on_rax_with_rdi, i64 0, i64 0))
  %call = call i8* @op_on_rax_with_rdi(i32 noundef 0)
  store i8* %call, i8** %out, align 8
  %0 = load i8*, i8** %out, align 8
  %call1 = call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.8, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %call3 = call i8* @op_on_rax_with_rdi(i32 noundef 2)
  store i8* %call3, i8** %out2, align 8
  %1 = load i8*, i8** %out2, align 8
  %call4 = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9

cond.false7:                                      ; preds = %cond.end
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.8, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ 0, %cond.true6 ], [ 0, %cond.false7 ]
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lexer_dump(i8* noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %lexer = alloca %struct.Lexer, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %t = alloca %struct.Token, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* noundef %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %fp4 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %lexer, i32 0, i32 0
  store %struct._IO_FILE* %6, %struct._IO_FILE** %fp4, align 8
  %unlexed_count = getelementptr inbounds %struct.Lexer, %struct.Lexer* %lexer, i32 0, i32 8
  store i32 0, i32* %unlexed_count, align 4
  %line = getelementptr inbounds %struct.Lexer, %struct.Lexer* %lexer, i32 0, i32 6
  store i32 1, i32* %line, align 8
  %column = getelementptr inbounds %struct.Lexer, %struct.Lexer* %lexer, i32 0, i32 5
  store i32 1, i32* %column, align 4
  br label %do.body5

do.body5:                                         ; preds = %do.cond, %if.end
  %call6 = call i32 @lex(%struct.Lexer* noundef %lexer, %struct.Token* noundef %t)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body5
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %do.body5
  %contents = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %contents, i64 0, i64 0
  %type = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %7 = load i32, i32* %type, align 4
  %call10 = call i8* @ttype_name(i32 noundef %7)
  %line11 = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 4
  %8 = load i32, i32* %line11, align 4
  %column12 = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 5
  %9 = load i32, i32* %column12, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i8* noundef %arraydecay, i8* noundef %call10, i32 noundef %8, i32 noundef %9)
  br label %do.cond

do.cond:                                          ; preds = %if.end9
  %type14 = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %10 = load i32, i32* %type14, align 4
  %cmp = icmp ne i32 %10, 10
  br i1 %cmp, label %do.body5, label %do.end15, !llvm.loop !4

do.end15:                                         ; preds = %do.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* noundef %11)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end15, %if.then8, %do.end
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lex(%struct.Lexer* noundef %l, %struct.Token* noundef %t) #0 {
entry:
  %l.addr = alloca %struct.Lexer*, align 8
  %t.addr = alloca %struct.Token*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store %struct.Token* %t, %struct.Token** %t.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %1 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %call = call i32 @real_lex(%struct.Lexer* noundef %0, %struct.Token* noundef %1)
  %2 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %type = getelementptr inbounds %struct.Token, %struct.Token* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %3, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  br label %for.cond

for.end:                                          ; preds = %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ttype_name(i32 noundef %tt) #0 {
entry:
  %tt.addr = alloca i32, align 4
  store i32 %tt, i32* %tt.addr, align 4
  %0 = load i32, i32* %tt.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [85 x i8*], [85 x i8*]* @ttype_names, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 37)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %if.then4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 37)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.20, i64 0, i64 0), i8* noundef %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end9

do.end9:                                          ; preds = %do.body5
  store i32 1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %12 = load i32, i32* %argc.addr, align 4
  %cmp11 = icmp sgt i32 %12, 2
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end10
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 37)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end17

do.end17:                                         ; preds = %do.body13
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0)) #9
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end18
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i32 @lexer_dump(i8* noundef %19)
  store i32 %call24, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end18
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 @strcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0)) #9
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.else
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %22, i64 1
  %23 = load i8*, i8** %arrayidx29, align 8
  %call30 = call i32 @parse(i8* noundef %23)
  store i32 0, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  br label %do.body33

do.body33:                                        ; preds = %if.end32
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %26, i64 1
  %27 = load i8*, i8** %arrayidx35, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* noundef %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end38

do.end38:                                         ; preds = %do.body33
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end38, %if.then28, %if.then22, %do.end17, %do.end9, %do.end
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse(i8* noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %lexer = alloca %struct.Lexer, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %t = alloca %struct.Token, align 4
  %i = alloca i32, align 4
  %buffer_size = alloca i32, align 4
  %tokens = alloca %struct.Token*, align 8
  %code_start = alloca i8*, align 8
  %code_end = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* noundef %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %fp4 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %lexer, i32 0, i32 0
  store %struct._IO_FILE* %6, %struct._IO_FILE** %fp4, align 8
  %unlexed_count = getelementptr inbounds %struct.Lexer, %struct.Lexer* %lexer, i32 0, i32 8
  store i32 0, i32* %unlexed_count, align 4
  %line = getelementptr inbounds %struct.Lexer, %struct.Lexer* %lexer, i32 0, i32 6
  store i32 1, i32* %line, align 8
  %column = getelementptr inbounds %struct.Lexer, %struct.Lexer* %lexer, i32 0, i32 5
  store i32 1, i32* %column, align 4
  store i32 0, i32* %i, align 4
  store i32 16, i32* %buffer_size, align 4
  %7 = load i32, i32* %buffer_size, align 4
  %conv = sext i32 %7 to i64
  %call5 = call noalias i8* @calloc(i64 noundef %conv, i64 noundef 528) #8
  %8 = bitcast i8* %call5 to %struct.Token*
  store %struct.Token* %8, %struct.Token** %tokens, align 8
  br label %do.body6

do.body6:                                         ; preds = %do.cond, %if.end
  %call7 = call i32 @lex(%struct.Lexer* noundef %lexer, %struct.Token* noundef %t)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body6
  store i32 1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %do.body6
  %9 = load i32, i32* %buffer_size, align 4
  %10 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %9, %10
  br i1 %cmp, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  %11 = load i32, i32* %buffer_size, align 4
  %mul = mul nsw i32 %11, 2
  store i32 %mul, i32* %buffer_size, align 4
  %12 = load i32, i32* %buffer_size, align 4
  %conv13 = sext i32 %12 to i64
  %call14 = call noalias i8* @calloc(i64 noundef %conv13, i64 noundef 528) #8
  %13 = bitcast i8* %call14 to %struct.Token*
  store %struct.Token* %13, %struct.Token** %tokens, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  %14 = load %struct.Token*, %struct.Token** %tokens, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.Token, %struct.Token* %14, i64 %idxprom
  %16 = bitcast %struct.Token* %arrayidx to i8*
  %17 = bitcast %struct.Token* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 528, i1 false)
  %contents = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %contents, i64 0, i64 0
  %type = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %18 = load i32, i32* %type, align 4
  %call16 = call i8* @ttype_name(i32 noundef %18)
  %line17 = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 4
  %19 = load i32, i32* %line17, align 4
  %column18 = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 5
  %20 = load i32, i32* %column18, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i8* noundef %arraydecay, i8* noundef %call16, i32 noundef %19, i32 noundef %20)
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end15
  %type20 = getelementptr inbounds %struct.Token, %struct.Token* %t, i32 0, i32 0
  %22 = load i32, i32* %type20, align 4
  %cmp21 = icmp ne i32 %22, 10
  br i1 %cmp21, label %do.body6, label %do.end23, !llvm.loop !6

do.end23:                                         ; preds = %do.cond
  %23 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx24 = getelementptr inbounds %struct.Token, %struct.Token* %23, i64 0
  %type25 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx24, i32 0, i32 0
  %24 = load i32, i32* %type25, align 4
  %cmp26 = icmp eq i32 %24, 69
  br i1 %cmp26, label %land.lhs.true, label %if.else117

land.lhs.true:                                    ; preds = %do.end23
  %25 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx28 = getelementptr inbounds %struct.Token, %struct.Token* %25, i64 1
  %type29 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx28, i32 0, i32 0
  %26 = load i32, i32* %type29, align 4
  %cmp30 = icmp eq i32 %26, 1
  br i1 %cmp30, label %land.lhs.true32, label %if.else117

land.lhs.true32:                                  ; preds = %land.lhs.true
  %27 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx33 = getelementptr inbounds %struct.Token, %struct.Token* %27, i64 1
  %contents34 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx33, i32 0, i32 1
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %contents34, i64 0, i64 0
  %call36 = call i32 @strcmp(i8* noundef %arraydecay35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i64 0, i64 0)) #9
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.else117

if.then39:                                        ; preds = %land.lhs.true32
  %28 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx40 = getelementptr inbounds %struct.Token, %struct.Token* %28, i64 2
  %type41 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx40, i32 0, i32 0
  %29 = load i32, i32* %type41, align 4
  %cmp42 = icmp eq i32 %29, 2
  br i1 %cmp42, label %land.lhs.true44, label %if.else109

land.lhs.true44:                                  ; preds = %if.then39
  %30 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx45 = getelementptr inbounds %struct.Token, %struct.Token* %30, i64 3
  %type46 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx45, i32 0, i32 0
  %31 = load i32, i32* %type46, align 4
  %cmp47 = icmp eq i32 %31, 3
  br i1 %cmp47, label %land.lhs.true49, label %if.else109

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %32 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx50 = getelementptr inbounds %struct.Token, %struct.Token* %32, i64 4
  %type51 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx50, i32 0, i32 0
  %33 = load i32, i32* %type51, align 4
  %cmp52 = icmp eq i32 %33, 4
  br i1 %cmp52, label %if.then54, label %if.else109

if.then54:                                        ; preds = %land.lhs.true49
  %34 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx55 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 5
  %type56 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx55, i32 0, i32 0
  %35 = load i32, i32* %type56, align 4
  %cmp57 = icmp eq i32 %35, 71
  br i1 %cmp57, label %land.lhs.true59, label %if.else101

land.lhs.true59:                                  ; preds = %if.then54
  %36 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx60 = getelementptr inbounds %struct.Token, %struct.Token* %36, i64 6
  %type61 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx60, i32 0, i32 0
  %37 = load i32, i32* %type61, align 4
  %cmp62 = icmp eq i32 %37, 0
  br i1 %cmp62, label %land.lhs.true64, label %if.else101

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %call65 = call i16** @__ctype_b_loc() #10
  %38 = load i16*, i16** %call65, align 8
  %39 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx66 = getelementptr inbounds %struct.Token, %struct.Token* %39, i64 6
  %contents67 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx66, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [256 x i8], [256 x i8]* %contents67, i64 0, i64 0
  %40 = load i8, i8* %arrayidx68, align 4
  %conv69 = sext i8 %40 to i32
  %idxprom70 = sext i32 %conv69 to i64
  %arrayidx71 = getelementptr inbounds i16, i16* %38, i64 %idxprom70
  %41 = load i16, i16* %arrayidx71, align 2
  %conv72 = zext i16 %41 to i32
  %and = and i32 %conv72, 2048
  %tobool73 = icmp ne i32 %and, 0
  br i1 %tobool73, label %land.lhs.true74, label %if.else101

land.lhs.true74:                                  ; preds = %land.lhs.true64
  %42 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx75 = getelementptr inbounds %struct.Token, %struct.Token* %42, i64 7
  %type76 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx75, i32 0, i32 0
  %43 = load i32, i32* %type76, align 4
  %cmp77 = icmp eq i32 %43, 8
  br i1 %cmp77, label %if.then79, label %if.else101

if.then79:                                        ; preds = %land.lhs.true74
  %44 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx80 = getelementptr inbounds %struct.Token, %struct.Token* %44, i64 8
  %type81 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx80, i32 0, i32 0
  %45 = load i32, i32* %type81, align 4
  %cmp82 = icmp eq i32 %45, 5
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.then79
  %call85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i64 0, i64 0))
  %call86 = call i8* @start_main()
  store i8* %call86, i8** %code_start, align 8
  %46 = load i8*, i8** %code_start, align 8
  %call87 = call i32 (i8*, ...) @printf(i8* noundef %46)
  %47 = load %struct.Token*, %struct.Token** %tokens, align 8
  %arrayidx88 = getelementptr inbounds %struct.Token, %struct.Token* %47, i64 6
  %contents89 = getelementptr inbounds %struct.Token, %struct.Token* %arrayidx88, i32 0, i32 1
  %arraydecay90 = getelementptr inbounds [256 x i8], [256 x i8]* %contents89, i64 0, i64 0
  %call91 = call i32 @atoi(i8* noundef %arraydecay90) #9
  %call92 = call i8* @end_main_custom_return(i32 noundef %call91)
  store i8* %call92, i8** %code_end, align 8
  %48 = load i8*, i8** %code_end, align 8
  %call93 = call i32 (i8*, ...) @printf(i8* noundef %48)
  br label %if.end100

if.else:                                          ; preds = %if.then79
  br label %do.body94

do.body94:                                        ; preds = %if.else
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.160, i64 0, i64 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end99

do.end99:                                         ; preds = %do.body94
  br label %if.end100

if.end100:                                        ; preds = %do.end99, %if.then84
  br label %if.end108

if.else101:                                       ; preds = %land.lhs.true74, %land.lhs.true64, %land.lhs.true59, %if.then54
  br label %do.body102

do.body102:                                       ; preds = %if.else101
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.161, i64 0, i64 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end107

do.end107:                                        ; preds = %do.body102
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %if.end100
  br label %if.end116

if.else109:                                       ; preds = %land.lhs.true49, %land.lhs.true44, %if.then39
  br label %do.body110

do.body110:                                       ; preds = %if.else109
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.162, i64 0, i64 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end115

do.end115:                                        ; preds = %do.body110
  br label %if.end116

if.end116:                                        ; preds = %do.end115, %if.end108
  br label %if.end124

if.else117:                                       ; preds = %land.lhs.true32, %land.lhs.true, %do.end23
  br label %do.body118

do.body118:                                       ; preds = %if.else117
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.163, i64 0, i64 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end123

do.end123:                                        ; preds = %do.body118
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %if.end116
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call125 = call i32 @fclose(%struct._IO_FILE* noundef %61)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end124, %if.then9, %do.end
  %62 = load i32, i32* %retval, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_string(i8 noundef signext %c, i8* noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %d = alloca i8*, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %d, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %d, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %5 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @starts_operator(i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb
    i32 42, label %sw.bb
    i32 47, label %sw.bb
    i32 61, label %sw.bb
    i32 58, label %sw.bb
    i32 37, label %sw.bb
    i32 38, label %sw.bb
    i32 124, label %sw.bb
    i32 60, label %sw.bb
    i32 62, label %sw.bb
    i32 33, label %sw.bb
    i32 126, label %sw.bb
    i32 94, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_operator_sequence(i8* noundef %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca i8*, align 8
  %top = alloca i8**, align 8
  store i8* %op, i8** %op.addr, align 8
  store i8** getelementptr inbounds ([37 x i8*], [37 x i8*]* @operator_strings, i64 0, i64 0), i8*** %top, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %top, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %top, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %op.addr, align 8
  %call = call i32 @strcmp(i8* noundef %3, i8* noundef %4) #9
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i8**, i8*** %top, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %top, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_valid_numeric_or_id_char(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %call = call i16** @__ctype_b_loc() #10
  %0 = load i16*, i16** %call, align 8
  %1 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv2, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load i8, i8* %c.addr, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lexer_getchar(%struct.Lexer* noundef %l) #0 {
entry:
  %l.addr = alloca %struct.Lexer*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  %0 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %position = getelementptr inbounds %struct.Lexer, %struct.Lexer* %0, i32 0, i32 3
  %1 = load i64, i64* %position, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %position, align 8
  %2 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %column = getelementptr inbounds %struct.Lexer, %struct.Lexer* %2, i32 0, i32 5
  %3 = load i32, i32* %column, align 4
  %4 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %last_column = getelementptr inbounds %struct.Lexer, %struct.Lexer* %4, i32 0, i32 4
  store i32 %3, i32* %last_column, align 8
  %5 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %fp = getelementptr inbounds %struct.Lexer, %struct.Lexer* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @getc(%struct._IO_FILE* noundef %6)
  %conv = trunc i32 %call to i8
  %7 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %buffer = getelementptr inbounds %struct.Lexer, %struct.Lexer* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %buffer, i64 0, i64 0
  store i8 %conv, i8* %arrayidx, align 8
  %8 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %buffer1 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %8, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x i8], [1 x i8]* %buffer1, i64 0, i64 0
  %9 = load i8, i8* %arrayidx2, align 8
  %conv3 = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv3, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %line = getelementptr inbounds %struct.Lexer, %struct.Lexer* %10, i32 0, i32 6
  %11 = load i32, i32* %line, align 8
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %line, align 8
  %12 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %column6 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %12, i32 0, i32 5
  store i32 0, i32* %column6, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %column7 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %13, i32 0, i32 5
  %14 = load i32, i32* %column7, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %column7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %buffer9 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %15, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x i8], [1 x i8]* %buffer9, i64 0, i64 0
  %16 = load i8, i8* %arrayidx10, align 8
  %conv11 = sext i8 %16 to i32
  ret i32 %conv11
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lexer_ungetchar(%struct.Lexer* noundef %l) #0 {
entry:
  %l.addr = alloca %struct.Lexer*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  %0 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %position = getelementptr inbounds %struct.Lexer, %struct.Lexer* %0, i32 0, i32 3
  %1 = load i64, i64* %position, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.lexer_ungetchar, i64 0, i64 0)) #11
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %position1 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %2, i32 0, i32 3
  %3 = load i64, i64* %position1, align 8
  %dec = add nsw i64 %3, -1
  store i64 %dec, i64* %position1, align 8
  %4 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %last_column = getelementptr inbounds %struct.Lexer, %struct.Lexer* %4, i32 0, i32 4
  %5 = load i32, i32* %last_column, align 8
  %6 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %column = getelementptr inbounds %struct.Lexer, %struct.Lexer* %6, i32 0, i32 5
  store i32 %5, i32* %column, align 4
  %7 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %buffer = getelementptr inbounds %struct.Lexer, %struct.Lexer* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %buffer, i64 0, i64 0
  %8 = load i8, i8* %arrayidx, align 8
  %conv = sext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 10
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %9 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %line = getelementptr inbounds %struct.Lexer, %struct.Lexer* %9, i32 0, i32 6
  %10 = load i32, i32* %line, align 8
  %dec5 = add nsw i32 %10, -1
  store i32 %dec5, i32* %line, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %11 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %buffer7 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %11, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x i8], [1 x i8]* %buffer7, i64 0, i64 0
  %12 = load i8, i8* %arrayidx8, align 8
  %conv9 = sext i8 %12 to i32
  %13 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %fp = getelementptr inbounds %struct.Lexer, %struct.Lexer* %13, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @ungetc(i32 noundef %conv9, %struct._IO_FILE* noundef %14)
  ret i32 1
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @real_lex(%struct.Lexer* noundef %l, %struct.Token* noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.Lexer*, align 8
  %t.addr = alloca %struct.Token*, align 8
  %init = alloca i32, align 4
  %pos = alloca i32, align 4
  %c = alloca i32, align 4
  %starting_line = alloca i32, align 4
  %starting_col = alloca i32, align 4
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store %struct.Token* %t, %struct.Token** %t.addr, align 8
  %0 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %unlexed_count = getelementptr inbounds %struct.Lexer, %struct.Lexer* %0, i32 0, i32 8
  %1 = load i32, i32* %unlexed_count, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %unlexed_count1 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %2, i32 0, i32 8
  %3 = load i32, i32* %unlexed_count1, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %unlexed_count1, align 4
  %4 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %5 = bitcast %struct.Token* %4 to i8*
  %6 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %unlexed = getelementptr inbounds %struct.Lexer, %struct.Lexer* %6, i32 0, i32 7
  %7 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %unlexed_count2 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %7, i32 0, i32 8
  %8 = load i32, i32* %unlexed_count2, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.Token], [5 x %struct.Token]* %unlexed, i64 0, i64 %idxprom
  %9 = bitcast %struct.Token* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %9, i64 528, i1 false)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call = call i32 @skip_to_token(%struct.Lexer* noundef %10)
  %11 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call3 = call i32 @lexer_getchar(%struct.Lexer* noundef %11)
  store i32 %call3, i32* %init, align 4
  %12 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents = getelementptr inbounds %struct.Token, %struct.Token* %12, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %contents, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %arraydecay, i8 0, i64 256, i1 false)
  %13 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %source_file = getelementptr inbounds %struct.Token, %struct.Token* %13, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %source_file, i64 0, i64 0
  %14 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %current_file = getelementptr inbounds %struct.Lexer, %struct.Lexer* %14, i32 0, i32 1
  %15 = bitcast [256 x i8]* %current_file to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay4, i8* align 8 %15, i64 256, i1 false)
  %16 = load i32, i32* %init, align 4
  %cmp5 = icmp eq i32 %16, -1
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.end
  %17 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents7 = getelementptr inbounds %struct.Token, %struct.Token* %17, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %contents7, i64 0, i64 0
  %call9 = call i8* @strcpy(i8* noundef %arraydecay8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @real_lex.eof, i64 0, i64 0)) #8
  %call10 = call i64 @strlen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @real_lex.eof, i64 0, i64 0)) #9
  %conv = trunc i64 %call10 to i32
  %18 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %length = getelementptr inbounds %struct.Token, %struct.Token* %18, i32 0, i32 2
  store i32 %conv, i32* %length, align 4
  %19 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %type = getelementptr inbounds %struct.Token, %struct.Token* %19, i32 0, i32 0
  store i32 10, i32* %type, align 4
  %20 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %line = getelementptr inbounds %struct.Lexer, %struct.Lexer* %20, i32 0, i32 6
  %21 = load i32, i32* %line, align 8
  %22 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %line11 = getelementptr inbounds %struct.Token, %struct.Token* %22, i32 0, i32 4
  store i32 %21, i32* %line11, align 4
  %23 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %column = getelementptr inbounds %struct.Lexer, %struct.Lexer* %23, i32 0, i32 5
  %24 = load i32, i32* %column, align 4
  %25 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %column12 = getelementptr inbounds %struct.Token, %struct.Token* %25, i32 0, i32 5
  store i32 %24, i32* %column12, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %26 = load i32, i32* %init, align 4
  %cmp14 = icmp eq i32 %26, 32
  br i1 %cmp14, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %27 = load i32, i32* %init, align 4
  %cmp16 = icmp eq i32 %27, 9
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.body

do.body:                                          ; preds = %if.then18
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.63, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false
  %31 = load i32, i32* %init, align 4
  %cmp23 = icmp eq i32 %31, 10
  br i1 %cmp23, label %if.then25, label %if.end37

if.then25:                                        ; preds = %if.end22
  %32 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents26 = getelementptr inbounds %struct.Token, %struct.Token* %32, i32 0, i32 1
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %contents26, i64 0, i64 0
  %call28 = call i8* @strcpy(i8* noundef %arraydecay27, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @real_lex.nline, i64 0, i64 0)) #8
  %call29 = call i64 @strlen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @real_lex.nline, i64 0, i64 0)) #9
  %conv30 = trunc i64 %call29 to i32
  %33 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %length31 = getelementptr inbounds %struct.Token, %struct.Token* %33, i32 0, i32 2
  store i32 %conv30, i32* %length31, align 4
  %34 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %type32 = getelementptr inbounds %struct.Token, %struct.Token* %34, i32 0, i32 0
  store i32 11, i32* %type32, align 4
  %35 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %line33 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %35, i32 0, i32 6
  %36 = load i32, i32* %line33, align 8
  %37 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %line34 = getelementptr inbounds %struct.Token, %struct.Token* %37, i32 0, i32 4
  store i32 %36, i32* %line34, align 4
  %38 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %column35 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %38, i32 0, i32 5
  %39 = load i32, i32* %column35, align 4
  %40 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %column36 = getelementptr inbounds %struct.Token, %struct.Token* %40, i32 0, i32 5
  store i32 %39, i32* %column36, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end22
  store i32 0, i32* %pos, align 4
  %41 = load i32, i32* %init, align 4
  %conv38 = trunc i32 %41 to i8
  %42 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents39 = getelementptr inbounds %struct.Token, %struct.Token* %42, i32 0, i32 1
  %43 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* %contents39, i64 0, i64 %idxprom40
  store i8 %conv38, i8* %arrayidx41, align 1
  %44 = load i32, i32* %init, align 4
  %conv42 = trunc i32 %44 to i8
  %call43 = call i32 @in_string(i8 noundef signext %conv42, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @single_char_tokens, i64 0, i64 0))
  %tobool = icmp ne i32 %call43, 0
  br i1 %tobool, label %if.then44, label %if.end53

if.then44:                                        ; preds = %if.end37
  %45 = load i32, i32* %pos, align 4
  %46 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %length45 = getelementptr inbounds %struct.Token, %struct.Token* %46, i32 0, i32 2
  store i32 %45, i32* %length45, align 4
  %47 = load i32, i32* %init, align 4
  %conv46 = trunc i32 %47 to i8
  %call47 = call i32 @ttype_one_char(i8 noundef signext %conv46)
  %48 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %type48 = getelementptr inbounds %struct.Token, %struct.Token* %48, i32 0, i32 0
  store i32 %call47, i32* %type48, align 4
  %49 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %line49 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %49, i32 0, i32 6
  %50 = load i32, i32* %line49, align 8
  %51 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %line50 = getelementptr inbounds %struct.Token, %struct.Token* %51, i32 0, i32 4
  store i32 %50, i32* %line50, align 4
  %52 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %column51 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %52, i32 0, i32 5
  %53 = load i32, i32* %column51, align 4
  %54 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %column52 = getelementptr inbounds %struct.Token, %struct.Token* %54, i32 0, i32 5
  store i32 %53, i32* %column52, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end37
  %55 = load i32, i32* %init, align 4
  %conv54 = trunc i32 %55 to i8
  %call55 = call i32 @is_valid_numeric_or_id_char(i8 noundef signext %conv54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then57, label %if.end103

if.then57:                                        ; preds = %if.end53
  %56 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %line58 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %56, i32 0, i32 6
  %57 = load i32, i32* %line58, align 8
  store i32 %57, i32* %starting_line, align 4
  %58 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %column59 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %58, i32 0, i32 5
  %59 = load i32, i32* %column59, align 4
  store i32 %59, i32* %starting_col, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end86, %if.then57
  %60 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call60 = call i32 @lexer_getchar(%struct.Lexer* noundef %60)
  store i32 %call60, i32* %c, align 4
  %61 = load i32, i32* %c, align 4
  %conv61 = trunc i32 %61 to i8
  %call62 = call i32 @is_valid_numeric_or_id_char(i8 noundef signext %conv61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %for.cond
  br label %for.end

if.end65:                                         ; preds = %for.cond
  %62 = load i32, i32* %pos, align 4
  %cmp66 = icmp sge i32 %62, 255
  br i1 %cmp66, label %if.then68, label %if.end86

if.then68:                                        ; preds = %if.end65
  br label %do.body69

do.body69:                                        ; preds = %if.then68
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.64, i64 0, i64 0), i32 noundef 256)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end73

do.end73:                                         ; preds = %do.body69
  br label %do.body74

do.body74:                                        ; preds = %do.end73
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.65, i64 0, i64 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end78

do.end78:                                         ; preds = %do.body74
  br label %do.body79

do.body79:                                        ; preds = %do.end78
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents81 = getelementptr inbounds %struct.Token, %struct.Token* %71, i32 0, i32 1
  %arraydecay82 = getelementptr inbounds [256 x i8], [256 x i8]* %contents81, i64 0, i64 0
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i32 noundef 256, i8* noundef %arraydecay82)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end85

do.end85:                                         ; preds = %do.body79
  store i32 -1, i32* %retval, align 4
  br label %return

if.end86:                                         ; preds = %if.end65
  %73 = load i32, i32* %c, align 4
  %conv87 = trunc i32 %73 to i8
  %74 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents88 = getelementptr inbounds %struct.Token, %struct.Token* %74, i32 0, i32 1
  %75 = load i32, i32* %pos, align 4
  %inc89 = add nsw i32 %75, 1
  store i32 %inc89, i32* %pos, align 4
  %idxprom90 = sext i32 %75 to i64
  %arrayidx91 = getelementptr inbounds [256 x i8], [256 x i8]* %contents88, i64 0, i64 %idxprom90
  store i8 %conv87, i8* %arrayidx91, align 1
  br label %for.cond

for.end:                                          ; preds = %if.then64
  %76 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call92 = call i32 @lexer_ungetchar(%struct.Lexer* noundef %76)
  %77 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents93 = getelementptr inbounds %struct.Token, %struct.Token* %77, i32 0, i32 1
  %78 = load i32, i32* %pos, align 4
  %idxprom94 = sext i32 %78 to i64
  %arrayidx95 = getelementptr inbounds [256 x i8], [256 x i8]* %contents93, i64 0, i64 %idxprom94
  store i8 0, i8* %arrayidx95, align 1
  %79 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents96 = getelementptr inbounds %struct.Token, %struct.Token* %79, i32 0, i32 1
  %arraydecay97 = getelementptr inbounds [256 x i8], [256 x i8]* %contents96, i64 0, i64 0
  %call98 = call i32 @ttype_many_chars(i8* noundef %arraydecay97)
  %80 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %type99 = getelementptr inbounds %struct.Token, %struct.Token* %80, i32 0, i32 0
  store i32 %call98, i32* %type99, align 4
  %81 = load i32, i32* %pos, align 4
  %82 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %length100 = getelementptr inbounds %struct.Token, %struct.Token* %82, i32 0, i32 2
  store i32 %81, i32* %length100, align 4
  %83 = load i32, i32* %starting_line, align 4
  %84 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %line101 = getelementptr inbounds %struct.Token, %struct.Token* %84, i32 0, i32 4
  store i32 %83, i32* %line101, align 4
  %85 = load i32, i32* %starting_col, align 4
  %86 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %column102 = getelementptr inbounds %struct.Token, %struct.Token* %86, i32 0, i32 5
  store i32 %85, i32* %column102, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.end53
  %87 = load i32, i32* %init, align 4
  %conv104 = trunc i32 %87 to i8
  %call105 = call i32 @starts_operator(i8 noundef signext %conv104)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %if.end127

if.then107:                                       ; preds = %if.end103
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then107
  %88 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents108 = getelementptr inbounds %struct.Token, %struct.Token* %88, i32 0, i32 1
  %arraydecay109 = getelementptr inbounds [256 x i8], [256 x i8]* %contents108, i64 0, i64 0
  %call110 = call i32 @valid_operator_sequence(i8* noundef %arraydecay109)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %89 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call112 = call i32 @lexer_getchar(%struct.Lexer* noundef %89)
  store i32 %call112, i32* %c, align 4
  %conv113 = trunc i32 %call112 to i8
  %90 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents114 = getelementptr inbounds %struct.Token, %struct.Token* %90, i32 0, i32 1
  %91 = load i32, i32* %pos, align 4
  %inc115 = add nsw i32 %91, 1
  store i32 %inc115, i32* %pos, align 4
  %idxprom116 = sext i32 %91 to i64
  %arrayidx117 = getelementptr inbounds [256 x i8], [256 x i8]* %contents114, i64 0, i64 %idxprom116
  store i8 %conv113, i8* %arrayidx117, align 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %92 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call118 = call i32 @lexer_ungetchar(%struct.Lexer* noundef %92)
  %93 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents119 = getelementptr inbounds %struct.Token, %struct.Token* %93, i32 0, i32 1
  %94 = load i32, i32* %pos, align 4
  %sub = sub nsw i32 %94, 1
  %idxprom120 = sext i32 %sub to i64
  %arrayidx121 = getelementptr inbounds [256 x i8], [256 x i8]* %contents119, i64 0, i64 %idxprom120
  store i8 0, i8* %arrayidx121, align 1
  %95 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %contents122 = getelementptr inbounds %struct.Token, %struct.Token* %95, i32 0, i32 1
  %arraydecay123 = getelementptr inbounds [256 x i8], [256 x i8]* %contents122, i64 0, i64 0
  %call124 = call i32 @ttype_from_string(i8* noundef %arraydecay123)
  %96 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %type125 = getelementptr inbounds %struct.Token, %struct.Token* %96, i32 0, i32 0
  store i32 %call124, i32* %type125, align 4
  %97 = load i32, i32* %pos, align 4
  %98 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %length126 = getelementptr inbounds %struct.Token, %struct.Token* %98, i32 0, i32 2
  store i32 %97, i32* %length126, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end127:                                        ; preds = %if.end103
  br label %do.body128

do.body128:                                       ; preds = %if.end127
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %99, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %101 = load i32, i32* %init, align 4
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.67, i64 0, i64 0), i32 noundef %101)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end132

do.end132:                                        ; preds = %do.body128
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end132, %while.end, %for.end, %do.end85, %if.then44, %if.then25, %do.end, %if.then6, %if.then
  %103 = load i32, i32* %retval, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skip_to_token(%struct.Lexer* noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.Lexer*, align 8
  %cur = alloca i8, align 1
  %prev = alloca i8, align 1
  %in_block = alloca i32, align 4
  %pass = alloca i32, align 4
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store i32 0, i32* %in_block, align 4
  store i32 0, i32* %pass, align 4
  %0 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call = call i32 @lexer_getchar(%struct.Lexer* noundef %0)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %cur, align 1
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %cur, align 1
  store i8 %1, i8* %prev, align 1
  %2 = load i8, i8* %cur, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i8, i8* %cur, align 1
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 9
  br i1 %cmp7, label %if.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %4 = load i8, i8* %cur, align 1
  %conv10 = sext i8 %4 to i32
  %cmp11 = icmp eq i32 %conv10, 47
  br i1 %cmp11, label %if.end, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9
  %5 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call14 = call i32 @lexer_ungetchar(%struct.Lexer* noundef %5)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false9, %lor.lhs.false, %if.then
  br label %if.end15

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end102, %if.end15
  %6 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call16 = call i32 @lexer_getchar(%struct.Lexer* noundef %6)
  %conv17 = trunc i32 %call16 to i8
  store i8 %conv17, i8* %cur, align 1
  %conv18 = sext i8 %conv17 to i32
  %cmp19 = icmp ne i32 %conv18, -1
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8, i8* %cur, align 1
  %conv21 = sext i8 %7 to i32
  %cmp22 = icmp eq i32 %conv21, 47
  br i1 %cmp22, label %land.lhs.true, label %if.else31

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8, i8* %prev, align 1
  %conv24 = sext i8 %8 to i32
  %cmp25 = icmp eq i32 %conv24, 47
  br i1 %cmp25, label %land.lhs.true27, label %if.else31

land.lhs.true27:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %in_block, align 4
  %cmp28 = icmp eq i32 %9, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %land.lhs.true27
  store i32 1, i32* %in_block, align 4
  br label %if.end85

if.else31:                                        ; preds = %land.lhs.true27, %land.lhs.true, %while.body
  %10 = load i8, i8* %cur, align 1
  %conv32 = sext i8 %10 to i32
  %cmp33 = icmp eq i32 %conv32, 42
  br i1 %cmp33, label %land.lhs.true35, label %if.else43

land.lhs.true35:                                  ; preds = %if.else31
  %11 = load i8, i8* %prev, align 1
  %conv36 = sext i8 %11 to i32
  %cmp37 = icmp eq i32 %conv36, 47
  br i1 %cmp37, label %land.lhs.true39, label %if.else43

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %12 = load i32, i32* %in_block, align 4
  %cmp40 = icmp eq i32 %12, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %land.lhs.true39
  store i32 2, i32* %in_block, align 4
  store i32 2, i32* %pass, align 4
  br label %if.end84

if.else43:                                        ; preds = %land.lhs.true39, %land.lhs.true35, %if.else31
  %13 = load i32, i32* %in_block, align 4
  %cmp44 = icmp eq i32 %13, 1
  br i1 %cmp44, label %land.lhs.true46, label %lor.lhs.false50

land.lhs.true46:                                  ; preds = %if.else43
  %14 = load i8, i8* %cur, align 1
  %conv47 = sext i8 %14 to i32
  %cmp48 = icmp eq i32 %conv47, 10
  br i1 %cmp48, label %if.then64, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %land.lhs.true46, %if.else43
  %15 = load i32, i32* %in_block, align 4
  %cmp51 = icmp eq i32 %15, 2
  br i1 %cmp51, label %land.lhs.true53, label %if.else65

land.lhs.true53:                                  ; preds = %lor.lhs.false50
  %16 = load i8, i8* %cur, align 1
  %conv54 = sext i8 %16 to i32
  %cmp55 = icmp eq i32 %conv54, 47
  br i1 %cmp55, label %land.lhs.true57, label %if.else65

land.lhs.true57:                                  ; preds = %land.lhs.true53
  %17 = load i8, i8* %prev, align 1
  %conv58 = sext i8 %17 to i32
  %cmp59 = icmp eq i32 %conv58, 42
  br i1 %cmp59, label %land.lhs.true61, label %if.else65

land.lhs.true61:                                  ; preds = %land.lhs.true57
  %18 = load i32, i32* %pass, align 4
  %cmp62 = icmp sle i32 %18, 0
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %land.lhs.true61, %land.lhs.true46
  store i32 0, i32* %in_block, align 4
  br label %if.end83

if.else65:                                        ; preds = %land.lhs.true61, %land.lhs.true57, %land.lhs.true53, %lor.lhs.false50
  %19 = load i8, i8* %prev, align 1
  %conv66 = sext i8 %19 to i32
  %cmp67 = icmp eq i32 %conv66, 47
  br i1 %cmp67, label %land.lhs.true69, label %if.end82

land.lhs.true69:                                  ; preds = %if.else65
  %20 = load i8, i8* %cur, align 1
  %conv70 = sext i8 %20 to i32
  %cmp71 = icmp eq i32 %conv70, 42
  br i1 %cmp71, label %if.end82, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %land.lhs.true69
  %21 = load i8, i8* %cur, align 1
  %conv74 = sext i8 %21 to i32
  %cmp75 = icmp eq i32 %conv74, 47
  br i1 %cmp75, label %if.end82, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %lor.lhs.false73
  %22 = load i32, i32* %in_block, align 4
  %cmp78 = icmp eq i32 %22, 0
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %land.lhs.true77
  %23 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call81 = call i32 @lexer_ungetchar(%struct.Lexer* noundef %23)
  store i32 0, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %land.lhs.true77, %lor.lhs.false73, %land.lhs.true69, %if.else65
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then64
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then42
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then30
  %24 = load i8, i8* %cur, align 1
  %conv86 = sext i8 %24 to i32
  %cmp87 = icmp eq i32 %conv86, 32
  br i1 %cmp87, label %if.end102, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.end85
  %25 = load i8, i8* %cur, align 1
  %conv90 = sext i8 %25 to i32
  %cmp91 = icmp eq i32 %conv90, 9
  br i1 %cmp91, label %if.end102, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false89
  %26 = load i8, i8* %cur, align 1
  %conv94 = sext i8 %26 to i32
  %cmp95 = icmp eq i32 %conv94, 47
  br i1 %cmp95, label %if.end102, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %lor.lhs.false93
  %27 = load i32, i32* %in_block, align 4
  %cmp98 = icmp eq i32 %27, 0
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %land.lhs.true97
  %28 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %call101 = call i32 @lexer_ungetchar(%struct.Lexer* noundef %28)
  store i32 0, i32* %retval, align 4
  br label %return

if.end102:                                        ; preds = %land.lhs.true97, %lor.lhs.false93, %lor.lhs.false89, %if.end85
  %29 = load i32, i32* %pass, align 4
  %sub = sub nsw i32 %29, 1
  store i32 %sub, i32* %pass, align 4
  %30 = load i8, i8* %cur, align 1
  store i8 %30, i8* %prev, align 1
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then100, %if.then80, %if.else, %if.then13
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttype_one_char(i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb1
    i32 123, label %sw.bb2
    i32 125, label %sw.bb3
    i32 91, label %sw.bb4
    i32 93, label %sw.bb5
    i32 59, label %sw.bb6
    i32 46, label %sw.bb7
    i32 44, label %sw.bb8
    i32 45, label %sw.bb9
    i32 43, label %sw.bb10
    i32 42, label %sw.bb11
    i32 47, label %sw.bb12
    i32 61, label %sw.bb13
    i32 58, label %sw.bb14
    i32 37, label %sw.bb15
    i32 38, label %sw.bb16
    i32 124, label %sw.bb17
    i32 62, label %sw.bb18
    i32 60, label %sw.bb19
    i32 33, label %sw.bb20
    i32 126, label %sw.bb21
    i32 94, label %sw.bb22
    i32 35, label %sw.bb23
    i32 63, label %sw.bb24
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 6, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 7, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 8, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 13, i32* %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  store i32 14, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %entry
  store i32 16, i32* %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  store i32 17, i32* %retval, align 4
  br label %return

sw.bb11:                                          ; preds = %entry
  store i32 18, i32* %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %entry
  store i32 19, i32* %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %entry
  store i32 20, i32* %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %entry
  store i32 21, i32* %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %entry
  store i32 22, i32* %retval, align 4
  br label %return

sw.bb16:                                          ; preds = %entry
  store i32 23, i32* %retval, align 4
  br label %return

sw.bb17:                                          ; preds = %entry
  store i32 25, i32* %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %entry
  store i32 38, i32* %retval, align 4
  br label %return

sw.bb19:                                          ; preds = %entry
  store i32 39, i32* %retval, align 4
  br label %return

sw.bb20:                                          ; preds = %entry
  store i32 44, i32* %retval, align 4
  br label %return

sw.bb21:                                          ; preds = %entry
  store i32 45, i32* %retval, align 4
  br label %return

sw.bb22:                                          ; preds = %entry
  store i32 48, i32* %retval, align 4
  br label %return

sw.bb23:                                          ; preds = %entry
  store i32 12, i32* %retval, align 4
  br label %return

sw.bb24:                                          ; preds = %entry
  store i32 15, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %call = call i16** @__ctype_b_loc() #10
  %1 = load i16*, i16** %call, align 8
  %2 = load i8, i8* %c.addr, align 1
  %conv25 = sext i8 %2 to i32
  %idxprom = sext i32 %conv25 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv26 = zext i16 %3 to i32
  %and = and i32 %conv26, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.default
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttype_many_chars(i8* noundef %contents) #0 {
entry:
  %retval = alloca i32, align 4
  %contents.addr = alloca i8*, align 8
  %all_numeric = alloca i32, align 4
  %count_fs = alloca i32, align 4
  %count_us = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %contents, i8** %contents.addr, align 8
  %0 = load i8*, i8** %contents.addr, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0)) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 53, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %contents.addr, align 8
  %call1 = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #9
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  store i32 54, i32* %retval, align 4
  br label %return

if.else4:                                         ; preds = %if.else
  %2 = load i8*, i8** %contents.addr, align 8
  %call5 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #9
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else4
  store i32 58, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else4
  %3 = load i8*, i8** %contents.addr, align 8
  %call9 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0)) #9
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else8
  store i32 56, i32* %retval, align 4
  br label %return

if.else12:                                        ; preds = %if.else8
  %4 = load i8*, i8** %contents.addr, align 8
  %call13 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #9
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.else12
  store i32 57, i32* %retval, align 4
  br label %return

if.else16:                                        ; preds = %if.else12
  %5 = load i8*, i8** %contents.addr, align 8
  %call17 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0)) #9
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.else16
  store i32 55, i32* %retval, align 4
  br label %return

if.else20:                                        ; preds = %if.else16
  %6 = load i8*, i8** %contents.addr, align 8
  %call21 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0)) #9
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else24, label %if.then23

if.then23:                                        ; preds = %if.else20
  store i32 60, i32* %retval, align 4
  br label %return

if.else24:                                        ; preds = %if.else20
  %7 = load i8*, i8** %contents.addr, align 8
  %call25 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #9
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.else24
  store i32 59, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.else24
  %8 = load i8*, i8** %contents.addr, align 8
  %call29 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0)) #9
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else32, label %if.then31

if.then31:                                        ; preds = %if.else28
  store i32 61, i32* %retval, align 4
  br label %return

if.else32:                                        ; preds = %if.else28
  %9 = load i8*, i8** %contents.addr, align 8
  %call33 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0)) #9
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.else36, label %if.then35

if.then35:                                        ; preds = %if.else32
  store i32 62, i32* %retval, align 4
  br label %return

if.else36:                                        ; preds = %if.else32
  %10 = load i8*, i8** %contents.addr, align 8
  %call37 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #9
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.else36
  store i32 63, i32* %retval, align 4
  br label %return

if.else40:                                        ; preds = %if.else36
  %11 = load i8*, i8** %contents.addr, align 8
  %call41 = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0)) #9
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.else40
  store i32 64, i32* %retval, align 4
  br label %return

if.else44:                                        ; preds = %if.else40
  %12 = load i8*, i8** %contents.addr, align 8
  %call45 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0)) #9
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.else48, label %if.then47

if.then47:                                        ; preds = %if.else44
  store i32 65, i32* %retval, align 4
  br label %return

if.else48:                                        ; preds = %if.else44
  %13 = load i8*, i8** %contents.addr, align 8
  %call49 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0)) #9
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else52, label %if.then51

if.then51:                                        ; preds = %if.else48
  store i32 66, i32* %retval, align 4
  br label %return

if.else52:                                        ; preds = %if.else48
  %14 = load i8*, i8** %contents.addr, align 8
  %call53 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0)) #9
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else56, label %if.then55

if.then55:                                        ; preds = %if.else52
  store i32 67, i32* %retval, align 4
  br label %return

if.else56:                                        ; preds = %if.else52
  %15 = load i8*, i8** %contents.addr, align 8
  %call57 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0)) #9
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.else60, label %if.then59

if.then59:                                        ; preds = %if.else56
  store i32 69, i32* %retval, align 4
  br label %return

if.else60:                                        ; preds = %if.else56
  %16 = load i8*, i8** %contents.addr, align 8
  %call61 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #9
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.else64, label %if.then63

if.then63:                                        ; preds = %if.else60
  store i32 68, i32* %retval, align 4
  br label %return

if.else64:                                        ; preds = %if.else60
  %17 = load i8*, i8** %contents.addr, align 8
  %call65 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0)) #9
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.else68, label %if.then67

if.then67:                                        ; preds = %if.else64
  store i32 70, i32* %retval, align 4
  br label %return

if.else68:                                        ; preds = %if.else64
  %18 = load i8*, i8** %contents.addr, align 8
  %call69 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i64 0, i64 0)) #9
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else72, label %if.then71

if.then71:                                        ; preds = %if.else68
  store i32 71, i32* %retval, align 4
  br label %return

if.else72:                                        ; preds = %if.else68
  %19 = load i8*, i8** %contents.addr, align 8
  %call73 = call i32 @strcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0)) #9
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.else76, label %if.then75

if.then75:                                        ; preds = %if.else72
  store i32 72, i32* %retval, align 4
  br label %return

if.else76:                                        ; preds = %if.else72
  %20 = load i8*, i8** %contents.addr, align 8
  %call77 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0)) #9
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.else80, label %if.then79

if.then79:                                        ; preds = %if.else76
  store i32 77, i32* %retval, align 4
  br label %return

if.else80:                                        ; preds = %if.else76
  %21 = load i8*, i8** %contents.addr, align 8
  %call81 = call i32 @strcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0)) #9
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.else84, label %if.then83

if.then83:                                        ; preds = %if.else80
  store i32 76, i32* %retval, align 4
  br label %return

if.else84:                                        ; preds = %if.else80
  %22 = load i8*, i8** %contents.addr, align 8
  %call85 = call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i64 0, i64 0)) #9
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.else88, label %if.then87

if.then87:                                        ; preds = %if.else84
  store i32 78, i32* %retval, align 4
  br label %return

if.else88:                                        ; preds = %if.else84
  %23 = load i8*, i8** %contents.addr, align 8
  %call89 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0)) #9
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.else92, label %if.then91

if.then91:                                        ; preds = %if.else88
  store i32 73, i32* %retval, align 4
  br label %return

if.else92:                                        ; preds = %if.else88
  %24 = load i8*, i8** %contents.addr, align 8
  %call93 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #9
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.else96, label %if.then95

if.then95:                                        ; preds = %if.else92
  store i32 75, i32* %retval, align 4
  br label %return

if.else96:                                        ; preds = %if.else92
  %25 = load i8*, i8** %contents.addr, align 8
  %call97 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0)) #9
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.else100, label %if.then99

if.then99:                                        ; preds = %if.else96
  store i32 74, i32* %retval, align 4
  br label %return

if.else100:                                       ; preds = %if.else96
  %26 = load i8*, i8** %contents.addr, align 8
  %call101 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i64 0, i64 0)) #9
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.else104, label %if.then103

if.then103:                                       ; preds = %if.else100
  store i32 79, i32* %retval, align 4
  br label %return

if.else104:                                       ; preds = %if.else100
  %27 = load i8*, i8** %contents.addr, align 8
  %call105 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0)) #9
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.else108, label %if.then107

if.then107:                                       ; preds = %if.else104
  store i32 81, i32* %retval, align 4
  br label %return

if.else108:                                       ; preds = %if.else104
  %28 = load i8*, i8** %contents.addr, align 8
  %call109 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i64 0, i64 0)) #9
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.else112, label %if.then111

if.then111:                                       ; preds = %if.else108
  store i32 80, i32* %retval, align 4
  br label %return

if.else112:                                       ; preds = %if.else108
  %29 = load i8*, i8** %contents.addr, align 8
  %call113 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0)) #9
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.else116, label %if.then115

if.then115:                                       ; preds = %if.else112
  store i32 82, i32* %retval, align 4
  br label %return

if.else116:                                       ; preds = %if.else112
  %30 = load i8*, i8** %contents.addr, align 8
  %call117 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i64 0, i64 0)) #9
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.else120, label %if.then119

if.then119:                                       ; preds = %if.else116
  store i32 83, i32* %retval, align 4
  br label %return

if.else120:                                       ; preds = %if.else116
  %31 = load i8*, i8** %contents.addr, align 8
  %call121 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i64 0, i64 0)) #9
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.else124, label %if.then123

if.then123:                                       ; preds = %if.else120
  store i32 84, i32* %retval, align 4
  br label %return

if.else124:                                       ; preds = %if.else120
  %32 = load i8*, i8** %contents.addr, align 8
  %call125 = call i32 @strcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)) #9
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.else128, label %if.then127

if.then127:                                       ; preds = %if.else124
  store i32 24, i32* %retval, align 4
  br label %return

if.else128:                                       ; preds = %if.else124
  %33 = load i8*, i8** %contents.addr, align 8
  %call129 = call i32 @strcmp(i8* noundef %33, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)) #9
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.else132, label %if.then131

if.then131:                                       ; preds = %if.else128
  store i32 26, i32* %retval, align 4
  br label %return

if.else132:                                       ; preds = %if.else128
  %34 = load i8*, i8** %contents.addr, align 8
  %call133 = call i32 @strcmp(i8* noundef %34, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #9
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.else136, label %if.then135

if.then135:                                       ; preds = %if.else132
  store i32 27, i32* %retval, align 4
  br label %return

if.else136:                                       ; preds = %if.else132
  %35 = load i8*, i8** %contents.addr, align 8
  %call137 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #9
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.else140, label %if.then139

if.then139:                                       ; preds = %if.else136
  store i32 28, i32* %retval, align 4
  br label %return

if.else140:                                       ; preds = %if.else136
  %36 = load i8*, i8** %contents.addr, align 8
  %call141 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #9
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.else144, label %if.then143

if.then143:                                       ; preds = %if.else140
  store i32 29, i32* %retval, align 4
  br label %return

if.else144:                                       ; preds = %if.else140
  %37 = load i8*, i8** %contents.addr, align 8
  %call145 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0)) #9
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.else148, label %if.then147

if.then147:                                       ; preds = %if.else144
  store i32 30, i32* %retval, align 4
  br label %return

if.else148:                                       ; preds = %if.else144
  %38 = load i8*, i8** %contents.addr, align 8
  %call149 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0)) #9
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.else152, label %if.then151

if.then151:                                       ; preds = %if.else148
  store i32 31, i32* %retval, align 4
  br label %return

if.else152:                                       ; preds = %if.else148
  %39 = load i8*, i8** %contents.addr, align 8
  %call153 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0)) #9
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.else156, label %if.then155

if.then155:                                       ; preds = %if.else152
  store i32 32, i32* %retval, align 4
  br label %return

if.else156:                                       ; preds = %if.else152
  %40 = load i8*, i8** %contents.addr, align 8
  %call157 = call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #9
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.else160, label %if.then159

if.then159:                                       ; preds = %if.else156
  store i32 33, i32* %retval, align 4
  br label %return

if.else160:                                       ; preds = %if.else156
  %41 = load i8*, i8** %contents.addr, align 8
  %call161 = call i32 @strcmp(i8* noundef %41, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0)) #9
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.else164, label %if.then163

if.then163:                                       ; preds = %if.else160
  store i32 34, i32* %retval, align 4
  br label %return

if.else164:                                       ; preds = %if.else160
  %42 = load i8*, i8** %contents.addr, align 8
  %call165 = call i32 @strcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #9
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.else168, label %if.then167

if.then167:                                       ; preds = %if.else164
  store i32 35, i32* %retval, align 4
  br label %return

if.else168:                                       ; preds = %if.else164
  %43 = load i8*, i8** %contents.addr, align 8
  %call169 = call i32 @strcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #9
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.else172, label %if.then171

if.then171:                                       ; preds = %if.else168
  store i32 36, i32* %retval, align 4
  br label %return

if.else172:                                       ; preds = %if.else168
  %44 = load i8*, i8** %contents.addr, align 8
  %call173 = call i32 @strcmp(i8* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0)) #9
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.else176, label %if.then175

if.then175:                                       ; preds = %if.else172
  store i32 37, i32* %retval, align 4
  br label %return

if.else176:                                       ; preds = %if.else172
  %45 = load i8*, i8** %contents.addr, align 8
  %call177 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0)) #9
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.else180, label %if.then179

if.then179:                                       ; preds = %if.else176
  store i32 40, i32* %retval, align 4
  br label %return

if.else180:                                       ; preds = %if.else176
  %46 = load i8*, i8** %contents.addr, align 8
  %call181 = call i32 @strcmp(i8* noundef %46, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #9
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.else184, label %if.then183

if.then183:                                       ; preds = %if.else180
  store i32 41, i32* %retval, align 4
  br label %return

if.else184:                                       ; preds = %if.else180
  %47 = load i8*, i8** %contents.addr, align 8
  %call185 = call i32 @strcmp(i8* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #9
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.else188, label %if.then187

if.then187:                                       ; preds = %if.else184
  store i32 42, i32* %retval, align 4
  br label %return

if.else188:                                       ; preds = %if.else184
  %48 = load i8*, i8** %contents.addr, align 8
  %call189 = call i32 @strcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #9
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.else192, label %if.then191

if.then191:                                       ; preds = %if.else188
  store i32 43, i32* %retval, align 4
  br label %return

if.else192:                                       ; preds = %if.else188
  %49 = load i8*, i8** %contents.addr, align 8
  %call193 = call i32 @strcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0)) #9
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.else196, label %if.then195

if.then195:                                       ; preds = %if.else192
  store i32 46, i32* %retval, align 4
  br label %return

if.else196:                                       ; preds = %if.else192
  %50 = load i8*, i8** %contents.addr, align 8
  %call197 = call i32 @strcmp(i8* noundef %50, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0)) #9
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.else200, label %if.then199

if.then199:                                       ; preds = %if.else196
  store i32 49, i32* %retval, align 4
  br label %return

if.else200:                                       ; preds = %if.else196
  %51 = load i8*, i8** %contents.addr, align 8
  %call201 = call i32 @strcmp(i8* noundef %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #9
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.else204, label %if.then203

if.then203:                                       ; preds = %if.else200
  store i32 50, i32* %retval, align 4
  br label %return

if.else204:                                       ; preds = %if.else200
  %52 = load i8*, i8** %contents.addr, align 8
  %call205 = call i32 @strcmp(i8* noundef %52, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #9
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.else208, label %if.then207

if.then207:                                       ; preds = %if.else204
  store i32 51, i32* %retval, align 4
  br label %return

if.else208:                                       ; preds = %if.else204
  %53 = load i8*, i8** %contents.addr, align 8
  %call209 = call i32 @strcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #9
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.else212, label %if.then211

if.then211:                                       ; preds = %if.else208
  store i32 52, i32* %retval, align 4
  br label %return

if.else212:                                       ; preds = %if.else208
  %54 = load i8*, i8** %contents.addr, align 8
  %call213 = call i32 @strcmp(i8* noundef %54, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #9
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.end, label %if.then215

if.then215:                                       ; preds = %if.else212
  store i32 47, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else212
  br label %if.end216

if.end216:                                        ; preds = %if.end
  br label %if.end217

if.end217:                                        ; preds = %if.end216
  br label %if.end218

if.end218:                                        ; preds = %if.end217
  br label %if.end219

if.end219:                                        ; preds = %if.end218
  br label %if.end220

if.end220:                                        ; preds = %if.end219
  br label %if.end221

if.end221:                                        ; preds = %if.end220
  br label %if.end222

if.end222:                                        ; preds = %if.end221
  br label %if.end223

if.end223:                                        ; preds = %if.end222
  br label %if.end224

if.end224:                                        ; preds = %if.end223
  br label %if.end225

if.end225:                                        ; preds = %if.end224
  br label %if.end226

if.end226:                                        ; preds = %if.end225
  br label %if.end227

if.end227:                                        ; preds = %if.end226
  br label %if.end228

if.end228:                                        ; preds = %if.end227
  br label %if.end229

if.end229:                                        ; preds = %if.end228
  br label %if.end230

if.end230:                                        ; preds = %if.end229
  br label %if.end231

if.end231:                                        ; preds = %if.end230
  br label %if.end232

if.end232:                                        ; preds = %if.end231
  br label %if.end233

if.end233:                                        ; preds = %if.end232
  br label %if.end234

if.end234:                                        ; preds = %if.end233
  br label %if.end235

if.end235:                                        ; preds = %if.end234
  br label %if.end236

if.end236:                                        ; preds = %if.end235
  br label %if.end237

if.end237:                                        ; preds = %if.end236
  br label %if.end238

if.end238:                                        ; preds = %if.end237
  br label %if.end239

if.end239:                                        ; preds = %if.end238
  br label %if.end240

if.end240:                                        ; preds = %if.end239
  br label %if.end241

if.end241:                                        ; preds = %if.end240
  br label %if.end242

if.end242:                                        ; preds = %if.end241
  br label %if.end243

if.end243:                                        ; preds = %if.end242
  br label %if.end244

if.end244:                                        ; preds = %if.end243
  br label %if.end245

if.end245:                                        ; preds = %if.end244
  br label %if.end246

if.end246:                                        ; preds = %if.end245
  br label %if.end247

if.end247:                                        ; preds = %if.end246
  br label %if.end248

if.end248:                                        ; preds = %if.end247
  br label %if.end249

if.end249:                                        ; preds = %if.end248
  br label %if.end250

if.end250:                                        ; preds = %if.end249
  br label %if.end251

if.end251:                                        ; preds = %if.end250
  br label %if.end252

if.end252:                                        ; preds = %if.end251
  br label %if.end253

if.end253:                                        ; preds = %if.end252
  br label %if.end254

if.end254:                                        ; preds = %if.end253
  br label %if.end255

if.end255:                                        ; preds = %if.end254
  br label %if.end256

if.end256:                                        ; preds = %if.end255
  br label %if.end257

if.end257:                                        ; preds = %if.end256
  br label %if.end258

if.end258:                                        ; preds = %if.end257
  br label %if.end259

if.end259:                                        ; preds = %if.end258
  br label %if.end260

if.end260:                                        ; preds = %if.end259
  br label %if.end261

if.end261:                                        ; preds = %if.end260
  br label %if.end262

if.end262:                                        ; preds = %if.end261
  br label %if.end263

if.end263:                                        ; preds = %if.end262
  br label %if.end264

if.end264:                                        ; preds = %if.end263
  br label %if.end265

if.end265:                                        ; preds = %if.end264
  br label %if.end266

if.end266:                                        ; preds = %if.end265
  br label %if.end267

if.end267:                                        ; preds = %if.end266
  br label %if.end268

if.end268:                                        ; preds = %if.end267
  br label %if.end269

if.end269:                                        ; preds = %if.end268
  store i32 1, i32* %all_numeric, align 4
  store i32 0, i32* %count_fs, align 4
  store i32 0, i32* %count_us, align 4
  %55 = load i8*, i8** %contents.addr, align 8
  %cmp = icmp eq i8* %55, null
  br i1 %cmp, label %if.then270, label %if.end271

if.then270:                                       ; preds = %if.end269
  store i32 9, i32* %retval, align 4
  br label %return

if.end271:                                        ; preds = %if.end269
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end271
  %56 = load i8*, i8** %contents.addr, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom = sext i32 %57 to i64
  %arrayidx = getelementptr inbounds i8, i8* %56, i64 %idxprom
  %58 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %58 to i32
  %cmp272 = icmp ne i32 %conv, 0
  br i1 %cmp272, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i8*, i8** %contents.addr, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %60 to i64
  %arrayidx275 = getelementptr inbounds i8, i8* %59, i64 %idxprom274
  %61 = load i8, i8* %arrayidx275, align 1
  store i8 %61, i8* %c, align 1
  %62 = load i8, i8* %c, align 1
  %conv276 = sext i8 %62 to i32
  %cmp277 = icmp eq i32 %conv276, 46
  br i1 %cmp277, label %if.then279, label %if.end280

if.then279:                                       ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end280:                                        ; preds = %for.body
  %63 = load i8, i8* %c, align 1
  %conv281 = sext i8 %63 to i32
  %cmp282 = icmp eq i32 %conv281, 102
  br i1 %cmp282, label %if.then284, label %if.end285

if.then284:                                       ; preds = %if.end280
  %64 = load i32, i32* %count_fs, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %count_fs, align 4
  br label %if.end285

if.end285:                                        ; preds = %if.then284, %if.end280
  %65 = load i8, i8* %c, align 1
  %conv286 = sext i8 %65 to i32
  %cmp287 = icmp eq i32 %conv286, 117
  br i1 %cmp287, label %if.then289, label %if.end291

if.then289:                                       ; preds = %if.end285
  %66 = load i32, i32* %count_us, align 4
  %inc290 = add nsw i32 %66, 1
  store i32 %inc290, i32* %count_us, align 4
  br label %if.end291

if.end291:                                        ; preds = %if.then289, %if.end285
  %67 = load i8, i8* %c, align 1
  %conv292 = sext i8 %67 to i32
  %cmp293 = icmp sgt i32 %conv292, 57
  br i1 %cmp293, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end291
  %68 = load i8, i8* %c, align 1
  %conv295 = sext i8 %68 to i32
  %cmp296 = icmp slt i32 %conv295, 48
  br i1 %cmp296, label %land.lhs.true, label %if.end302

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end291
  %69 = load i8, i8* %c, align 1
  %conv298 = sext i8 %69 to i32
  %cmp299 = icmp ne i32 %conv298, 117
  br i1 %cmp299, label %if.then301, label %if.end302

if.then301:                                       ; preds = %land.lhs.true
  store i32 0, i32* %all_numeric, align 4
  br label %if.end302

if.end302:                                        ; preds = %if.then301, %land.lhs.true, %lor.lhs.false
  %70 = load i8, i8* %c, align 1
  %conv303 = sext i8 %70 to i32
  %cmp304 = icmp eq i32 %conv303, 39
  br i1 %cmp304, label %if.then310, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %if.end302
  %71 = load i8, i8* %c, align 1
  %conv307 = sext i8 %71 to i32
  %cmp308 = icmp eq i32 %conv307, 34
  br i1 %cmp308, label %if.then310, label %if.end311

if.then310:                                       ; preds = %lor.lhs.false306, %if.end302
  store i32 0, i32* %retval, align 4
  br label %return

if.end311:                                        ; preds = %lor.lhs.false306
  br label %for.inc

for.inc:                                          ; preds = %if.end311
  %72 = load i32, i32* %i, align 4
  %inc312 = add nsw i32 %72, 1
  store i32 %inc312, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %all_numeric, align 4
  %tobool313 = icmp ne i32 %73, 0
  br i1 %tobool313, label %if.then314, label %if.end329

if.then314:                                       ; preds = %for.end
  %74 = load i32, i32* %count_us, align 4
  %cmp315 = icmp eq i32 %74, 1
  br i1 %cmp315, label %land.lhs.true317, label %if.end324

land.lhs.true317:                                 ; preds = %if.then314
  %75 = load i8*, i8** %contents.addr, align 8
  %76 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %76, 1
  %idxprom318 = sext i32 %sub to i64
  %arrayidx319 = getelementptr inbounds i8, i8* %75, i64 %idxprom318
  %77 = load i8, i8* %arrayidx319, align 1
  %conv320 = sext i8 %77 to i32
  %cmp321 = icmp eq i32 %conv320, 117
  br i1 %cmp321, label %if.then323, label %if.end324

if.then323:                                       ; preds = %land.lhs.true317
  store i32 0, i32* %retval, align 4
  br label %return

if.end324:                                        ; preds = %land.lhs.true317, %if.then314
  %78 = load i32, i32* %count_us, align 4
  %cmp325 = icmp eq i32 %78, 0
  br i1 %cmp325, label %if.then327, label %if.end328

if.then327:                                       ; preds = %if.end324
  store i32 0, i32* %retval, align 4
  br label %return

if.end328:                                        ; preds = %if.end324
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %for.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end329, %if.then327, %if.then323, %if.then310, %if.then279, %if.then270, %if.then215, %if.then211, %if.then207, %if.then203, %if.then199, %if.then195, %if.then191, %if.then187, %if.then183, %if.then179, %if.then175, %if.then171, %if.then167, %if.then163, %if.then159, %if.then155, %if.then151, %if.then147, %if.then143, %if.then139, %if.then135, %if.then131, %if.then127, %if.then123, %if.then119, %if.then115, %if.then111, %if.then107, %if.then103, %if.then99, %if.then95, %if.then91, %if.then87, %if.then83, %if.then79, %if.then75, %if.then71, %if.then67, %if.then63, %if.then59, %if.then55, %if.then51, %if.then47, %if.then43, %if.then39, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %79 = load i32, i32* %retval, align 4
  ret i32 %79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttype_from_string(i8* noundef %contents) #0 {
entry:
  %retval = alloca i32, align 4
  %contents.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %token = alloca i32, align 4
  store i8* %contents, i8** %contents.addr, align 8
  %0 = load i8*, i8** %contents.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %contents.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %call2 = call i32 @ttype_one_char(i8 noundef signext %3)
  store i32 %call2, i32* %token, align 4
  %4 = load i32, i32* %token, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %contents.addr, align 8
  %call3 = call i32 @ttype_many_chars(i8* noundef %5)
  store i32 %call3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unlex(%struct.Lexer* noundef %l, %struct.Token* noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.Lexer*, align 8
  %t.addr = alloca %struct.Token*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store %struct.Token* %t, %struct.Token** %t.addr, align 8
  %0 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %unlexed_count = getelementptr inbounds %struct.Lexer, %struct.Lexer* %0, i32 0, i32 8
  %1 = load i32, i32* %unlexed_count, align 4
  %cmp = icmp uge i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %unlexed = getelementptr inbounds %struct.Lexer, %struct.Lexer* %5, i32 0, i32 7
  %6 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %unlexed_count3 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %6, i32 0, i32 8
  %7 = load i32, i32* %unlexed_count3, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.Token], [5 x %struct.Token]* %unlexed, i64 0, i64 %idxprom
  %8 = bitcast %struct.Token* %arrayidx to i8*
  %9 = load %struct.Token*, %struct.Token** %t.addr, align 8
  %10 = bitcast %struct.Token* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %10, i64 528, i1 false)
  %11 = load %struct.Lexer*, %struct.Lexer** %l.addr, align 8
  %unlexed_count4 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %11, i32 0, i32 8
  %12 = load i32, i32* %unlexed_count4, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %unlexed_count4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_ttype_many_chars() #0 {
entry:
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.test_ttype_many_chars, i64 0, i64 0))
  %call = call i32 @ttype_many_chars(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 664, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.119, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %call2 = call i32 @ttype_many_chars(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call2, 77
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  br label %cond.end7

cond.false5:                                      ; preds = %cond.end
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 665, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.120, i64 0, i64 0))
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true4
  %cond8 = phi i32 [ 0, %cond.true4 ], [ 0, %cond.false5 ]
  %call9 = call i32 @ttype_many_chars(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i64 0, i64 0))
  %cmp10 = icmp eq i32 %call9, 84
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end7
  br label %cond.end14

cond.false12:                                     ; preds = %cond.end7
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 666, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.121, i64 0, i64 0))
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false12, %cond.true11
  %cond15 = phi i32 [ 0, %cond.true11 ], [ 0, %cond.false12 ]
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_ttype_one_char() #0 {
entry:
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.test_ttype_one_char, i64 0, i64 0))
  %call = call i32 @ttype_one_char(i8 noundef signext 97)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 675, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.122, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %call2 = call i32 @ttype_one_char(i8 noundef signext 49)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  br label %cond.end7

cond.false5:                                      ; preds = %cond.end
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 676, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.123, i64 0, i64 0))
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true4
  %cond8 = phi i32 [ 0, %cond.true4 ], [ 0, %cond.false5 ]
  %call9 = call i32 @ttype_one_char(i8 noundef signext 43)
  %cmp10 = icmp eq i32 %call9, 17
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end7
  br label %cond.end14

cond.false12:                                     ; preds = %cond.end7
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 678, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i64 0, i64 0))
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false12, %cond.true11
  %cond15 = phi i32 [ 0, %cond.true11 ], [ 0, %cond.false12 ]
  %call16 = call i32 @ttype_one_char(i8 noundef signext 45)
  %cmp17 = icmp eq i32 %call16, 16
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end14
  br label %cond.end21

cond.false19:                                     ; preds = %cond.end14
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 679, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.125, i64 0, i64 0))
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.true18
  %cond22 = phi i32 [ 0, %cond.true18 ], [ 0, %cond.false19 ]
  %call23 = call i32 @ttype_one_char(i8 noundef signext 62)
  %cmp24 = icmp eq i32 %call23, 38
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end21
  br label %cond.end28

cond.false26:                                     ; preds = %cond.end21
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 680, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.126, i64 0, i64 0))
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true25
  %cond29 = phi i32 [ 0, %cond.true25 ], [ 0, %cond.false26 ]
  %call30 = call i32 @ttype_one_char(i8 noundef signext 126)
  %cmp31 = icmp eq i32 %call30, 45
  br i1 %cmp31, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.end28
  br label %cond.end35

cond.false33:                                     ; preds = %cond.end28
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 681, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.127, i64 0, i64 0))
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false33, %cond.true32
  %cond36 = phi i32 [ 0, %cond.true32 ], [ 0, %cond.false33 ]
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_ttype_name() #0 {
entry:
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.test_ttype_name, i64 0, i64 0))
  %call = call i8* @ttype_name(i32 noundef 0)
  %call1 = call i32 @strcmp(i8* noundef %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 689, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.128, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %call3 = call i8* @ttype_name(i32 noundef 17)
  %call4 = call i32 @strcmp(i8* noundef %call3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9

cond.false7:                                      ; preds = %cond.end
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 690, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.129, i64 0, i64 0))
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ 0, %cond.true6 ], [ 0, %cond.false7 ]
  %call11 = call i8* @ttype_name(i32 noundef 78)
  %call12 = call i32 @strcmp(i8* noundef %call11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i64 0, i64 0)) #9
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end9
  br label %cond.end17

cond.false15:                                     ; preds = %cond.end9
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 691, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.130, i64 0, i64 0))
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false15, %cond.true14
  %cond18 = phi i32 [ 0, %cond.true14 ], [ 0, %cond.false15 ]
  %call19 = call i8* @ttype_name(i32 noundef 84)
  %call20 = call i32 @strcmp(i8* noundef %call19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i64 0, i64 0)) #9
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %cond.end17
  br label %cond.end25

cond.false23:                                     ; preds = %cond.end17
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 692, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.131, i64 0, i64 0))
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false23, %cond.true22
  %cond26 = phi i32 [ 0, %cond.true22 ], [ 0, %cond.false23 ]
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_ttype_from_string() #0 {
entry:
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.test_ttype_from_string, i64 0, i64 0))
  %call = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 17
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 700, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.132, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %call2 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call2, 20
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  br label %cond.end7

cond.false5:                                      ; preds = %cond.end
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 701, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.133, i64 0, i64 0))
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true4
  %cond8 = phi i32 [ 0, %cond.true4 ], [ 0, %cond.false5 ]
  %call9 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i64 0, i64 0))
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end7
  br label %cond.end14

cond.false12:                                     ; preds = %cond.end7
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 703, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.135, i64 0, i64 0))
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false12, %cond.true11
  %cond15 = phi i32 [ 0, %cond.true11 ], [ 0, %cond.false12 ]
  %call16 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i64 0, i64 0))
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end14
  br label %cond.end21

cond.false19:                                     ; preds = %cond.end14
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 704, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.137, i64 0, i64 0))
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.true18
  %cond22 = phi i32 [ 0, %cond.true18 ], [ 0, %cond.false19 ]
  %call23 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i64 0, i64 0))
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end21
  br label %cond.end28

cond.false26:                                     ; preds = %cond.end21
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 706, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.139, i64 0, i64 0))
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true25
  %cond29 = phi i32 [ 0, %cond.true25 ], [ 0, %cond.false26 ]
  %call30 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0))
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.end28
  br label %cond.end35

cond.false33:                                     ; preds = %cond.end28
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 707, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.141, i64 0, i64 0))
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false33, %cond.true32
  %cond36 = phi i32 [ 0, %cond.true32 ], [ 0, %cond.false33 ]
  %call37 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i64 0, i64 0))
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.end35
  br label %cond.end42

cond.false40:                                     ; preds = %cond.end35
  %call41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 708, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.143, i64 0, i64 0))
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true39
  %cond43 = phi i32 [ 0, %cond.true39 ], [ 0, %cond.false40 ]
  %call44 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i64 0, i64 0))
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %cond.end42
  br label %cond.end49

cond.false47:                                     ; preds = %cond.end42
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 710, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.145, i64 0, i64 0))
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false47, %cond.true46
  %cond50 = phi i32 [ 0, %cond.true46 ], [ 0, %cond.false47 ]
  %call51 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i64 0, i64 0))
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %cond.end49
  br label %cond.end56

cond.false54:                                     ; preds = %cond.end49
  %call55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 711, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.147, i64 0, i64 0))
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false54, %cond.true53
  %cond57 = phi i32 [ 0, %cond.true53 ], [ 0, %cond.false54 ]
  %call58 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0))
  %cmp59 = icmp eq i32 %call58, 1
  br i1 %cmp59, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %cond.end56
  br label %cond.end63

cond.false61:                                     ; preds = %cond.end56
  %call62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 713, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.149, i64 0, i64 0))
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false61, %cond.true60
  %cond64 = phi i32 [ 0, %cond.true60 ], [ 0, %cond.false61 ]
  %call65 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0))
  %cmp66 = icmp eq i32 %call65, 1
  br i1 %cmp66, label %cond.true67, label %cond.false68

cond.true67:                                      ; preds = %cond.end63
  br label %cond.end70

cond.false68:                                     ; preds = %cond.end63
  %call69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 714, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.151, i64 0, i64 0))
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false68, %cond.true67
  %cond71 = phi i32 [ 0, %cond.true67 ], [ 0, %cond.false68 ]
  %call72 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i64 0, i64 0))
  %cmp73 = icmp eq i32 %call72, 2
  br i1 %cmp73, label %cond.true74, label %cond.false75

cond.true74:                                      ; preds = %cond.end70
  br label %cond.end77

cond.false75:                                     ; preds = %cond.end70
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 716, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.153, i64 0, i64 0))
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false75, %cond.true74
  %cond78 = phi i32 [ 0, %cond.true74 ], [ 0, %cond.false75 ]
  %call79 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i64 0, i64 0))
  %cmp80 = icmp eq i32 %call79, 5
  br i1 %cmp80, label %cond.true81, label %cond.false82

cond.true81:                                      ; preds = %cond.end77
  br label %cond.end84

cond.false82:                                     ; preds = %cond.end77
  %call83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 717, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.155, i64 0, i64 0))
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false82, %cond.true81
  %cond85 = phi i32 [ 0, %cond.true81 ], [ 0, %cond.false82 ]
  %call86 = call i32 @ttype_from_string(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i64 0, i64 0))
  %cmp87 = icmp eq i32 %call86, 8
  br i1 %cmp87, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.end84
  br label %cond.end91

cond.false89:                                     ; preds = %cond.end84
  %call90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.62, i64 0, i64 0), i32 noundef 719, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.157, i64 0, i64 0))
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false89, %cond.true88
  %cond92 = phi i32 [ 0, %cond.true88 ], [ 0, %cond.false89 ]
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_simple_main_func() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_expr(%struct.Lexer* noundef %l, %struct.Expression* noundef %ex) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.Lexer*, align 8
  %ex.addr = alloca %struct.Expression*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store %struct.Expression* %ex, %struct.Expression** %ex.addr, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_funccall(%struct.Lexer* noundef %l, %struct.Expression* noundef %ex) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.Lexer*, align 8
  %ex.addr = alloca %struct.Expression*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store %struct.Expression* %ex, %struct.Expression** %ex.addr, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_blockstmt(%struct.Lexer* noundef %l, %struct.BlockStatement* noundef %bs) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.Lexer*, align 8
  %bs.addr = alloca %struct.BlockStatement*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store %struct.BlockStatement* %bs, %struct.BlockStatement** %bs.addr, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_funcdecl(%struct.Lexer* noundef %l, %struct.FunctionDeclaration* noundef %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.Lexer*, align 8
  %fd.addr = alloca %struct.FunctionDeclaration*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store %struct.FunctionDeclaration* %fd, %struct.FunctionDeclaration** %fd.addr, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_cst(%struct.Lexer* noundef %l, %struct.ConcreteFileTree* noundef %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.Lexer*, align 8
  %tree.addr = alloca %struct.ConcreteFileTree*, align 8
  store %struct.Lexer* %l, %struct.Lexer** %l.addr, align 8
  store %struct.ConcreteFileTree* %tree, %struct.ConcreteFileTree** %tree.addr, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnva1(i8* noundef %value) #0 {
entry:
  %value.addr = alloca i8*, align 8
  %h = alloca i64, align 8
  %prime = alloca i64, align 8
  store i8* %value, i8** %value.addr, align 8
  store i64 16777619, i64* %h, align 8
  store i64 2166136261, i64* %prime, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %value.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %value.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i64
  %4 = load i64, i64* %h, align 8
  %xor = xor i64 %4, %conv2
  store i64 %xor, i64* %h, align 8
  %5 = load i64, i64* %prime, align 8
  %6 = load i64, i64* %h, align 8
  %mul = mul i64 %6, %5
  store i64 %mul, i64* %h, align 8
  %7 = load i8*, i8** %value.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %value.addr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %h, align 8
  %conv3 = trunc i64 %8 to i32
  ret i32 %conv3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @equal_key(i8* noundef %a, i8* noundef %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef %1) #9
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Hashmap* @create_hashmap(i32 noundef %capacity) #0 {
entry:
  %capacity.addr = alloca i32, align 4
  %h = alloca %struct.Hashmap*, align 8
  store i32 %capacity, i32* %capacity.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 32) #8
  %0 = bitcast i8* %call to %struct.Hashmap*
  store %struct.Hashmap* %0, %struct.Hashmap** %h, align 8
  %1 = load i32, i32* %capacity.addr, align 4
  %conv = sext i32 %1 to i64
  %call1 = call noalias i8* @calloc(i64 noundef %conv, i64 noundef 8) #8
  %2 = bitcast i8* %call1 to %struct.BucketNode**
  %3 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %buckets = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %3, i32 0, i32 0
  store %struct.BucketNode** %2, %struct.BucketNode*** %buckets, align 8
  %4 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %size = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %4, i32 0, i32 1
  store i32 0, i32* %size, align 8
  %5 = load i32, i32* %capacity.addr, align 4
  %6 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %cap = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %6, i32 0, i32 2
  store i32 %5, i32* %cap, align 4
  %7 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %hash = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %7, i32 0, i32 3
  store i32 (i8*)* @fnva1, i32 (i8*)** %hash, align 8
  %8 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %equals = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %8, i32 0, i32 4
  store i32 (i8*, i8*)* @equal_key, i32 (i8*, i8*)** %equals, align 8
  %9 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  ret %struct.Hashmap* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_hashmap(%struct.Hashmap* noundef %h) #0 {
entry:
  %h.addr = alloca %struct.Hashmap*, align 8
  store %struct.Hashmap* %h, %struct.Hashmap** %h.addr, align 8
  %0 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %0, i32 0, i32 0
  %1 = load %struct.BucketNode**, %struct.BucketNode*** %buckets, align 8
  %2 = bitcast %struct.BucketNode** %1 to i8*
  call void @free(i8* noundef %2) #8
  %3 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %4 = bitcast %struct.Hashmap* %3 to i8*
  call void @free(i8* noundef %4) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.BucketNode* @create_bucket(i8* noundef %key, i8* noundef %value) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %b = alloca %struct.BucketNode*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #8
  %0 = bitcast i8* %call to %struct.BucketNode*
  store %struct.BucketNode* %0, %struct.BucketNode** %b, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %key1 = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %2, i32 0, i32 0
  store i8* %1, i8** %key1, align 8
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %value2 = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %4, i32 0, i32 1
  store i8* %3, i8** %value2, align 8
  %5 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %next = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %5, i32 0, i32 2
  store %struct.BucketNode* null, %struct.BucketNode** %next, align 8
  %6 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  ret %struct.BucketNode* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.BucketNode* @hm_get(%struct.Hashmap* noundef %h, i8* noundef %key) #0 {
entry:
  %retval = alloca %struct.BucketNode*, align 8
  %h.addr = alloca %struct.Hashmap*, align 8
  %key.addr = alloca i8*, align 8
  %a = alloca i32, align 4
  %b = alloca %struct.BucketNode*, align 8
  store %struct.Hashmap* %h, %struct.Hashmap** %h.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %hash = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %0, i32 0, i32 3
  %1 = load i32 (i8*)*, i32 (i8*)** %hash, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 %1(i8* noundef %2)
  %3 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %cap = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %3, i32 0, i32 2
  %4 = load i32, i32* %cap, align 4
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %a, align 4
  %5 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %5, i32 0, i32 0
  %6 = load %struct.BucketNode**, %struct.BucketNode*** %buckets, align 8
  %7 = load i32, i32* %a, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %6, i64 %idxprom
  %8 = load %struct.BucketNode*, %struct.BucketNode** %arrayidx, align 8
  store %struct.BucketNode* %8, %struct.BucketNode** %b, align 8
  %9 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %cmp = icmp eq %struct.BucketNode* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.BucketNode* null, %struct.BucketNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %equals = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %10, i32 0, i32 4
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %equals, align 8
  %12 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %key1 = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %12, i32 0, i32 0
  %13 = load i8*, i8** %key1, align 8
  %14 = load i8*, i8** %key.addr, align 8
  %call2 = call i32 %11(i8* noundef %13, i8* noundef %14)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %15 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  store %struct.BucketNode* %15, %struct.BucketNode** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  store %struct.BucketNode* null, %struct.BucketNode** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %16 = load %struct.BucketNode*, %struct.BucketNode** %retval, align 8
  ret %struct.BucketNode* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hm_set(%struct.Hashmap* noundef %h, i8* noundef %key, i8* noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.Hashmap*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %a = alloca i32, align 4
  %b = alloca %struct.BucketNode*, align 8
  store %struct.Hashmap* %h, %struct.Hashmap** %h.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %hash = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %0, i32 0, i32 3
  %1 = load i32 (i8*)*, i32 (i8*)** %hash, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 %1(i8* noundef %2)
  %3 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %cap = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %3, i32 0, i32 2
  %4 = load i32, i32* %cap, align 4
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %a, align 4
  %5 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %5, i32 0, i32 0
  %6 = load %struct.BucketNode**, %struct.BucketNode*** %buckets, align 8
  %7 = load i32, i32* %a, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %6, i64 %idxprom
  %8 = load %struct.BucketNode*, %struct.BucketNode** %arrayidx, align 8
  store %struct.BucketNode* %8, %struct.BucketNode** %b, align 8
  %9 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %cmp = icmp eq %struct.BucketNode* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %size = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %10, i32 0, i32 1
  %11 = load i32, i32* %size, align 8
  %12 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %cap1 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %12, i32 0, i32 2
  %13 = load i32, i32* %cap1, align 4
  %cmp2 = icmp eq i32 %11, %13
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %14 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  call void @double_cap(%struct.Hashmap* noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %15 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %size4 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %15, i32 0, i32 1
  %16 = load i32, i32* %size4, align 8
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %size4, align 8
  %call5 = call noalias i8* @malloc(i64 noundef 8) #8
  %17 = bitcast i8* %call5 to %struct.BucketNode*
  %18 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets6 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %18, i32 0, i32 0
  %19 = load %struct.BucketNode**, %struct.BucketNode*** %buckets6, align 8
  %20 = load i32, i32* %a, align 4
  %idxprom7 = zext i32 %20 to i64
  %arrayidx8 = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %19, i64 %idxprom7
  store %struct.BucketNode* %17, %struct.BucketNode** %arrayidx8, align 8
  %21 = load i8*, i8** %key.addr, align 8
  %22 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets9 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %22, i32 0, i32 0
  %23 = load %struct.BucketNode**, %struct.BucketNode*** %buckets9, align 8
  %24 = load i32, i32* %a, align 4
  %idxprom10 = zext i32 %24 to i64
  %arrayidx11 = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %23, i64 %idxprom10
  %25 = load %struct.BucketNode*, %struct.BucketNode** %arrayidx11, align 8
  %key12 = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %25, i32 0, i32 0
  store i8* %21, i8** %key12, align 8
  %26 = load i8*, i8** %value.addr, align 8
  %27 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets13 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %27, i32 0, i32 0
  %28 = load %struct.BucketNode**, %struct.BucketNode*** %buckets13, align 8
  %29 = load i32, i32* %a, align 4
  %idxprom14 = zext i32 %29 to i64
  %arrayidx15 = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %28, i64 %idxprom14
  %30 = load %struct.BucketNode*, %struct.BucketNode** %arrayidx15, align 8
  %value16 = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %30, i32 0, i32 1
  store i8* %26, i8** %value16, align 8
  %31 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets17 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %31, i32 0, i32 0
  %32 = load %struct.BucketNode**, %struct.BucketNode*** %buckets17, align 8
  %33 = load i32, i32* %a, align 4
  %idxprom18 = zext i32 %33 to i64
  %arrayidx19 = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %32, i64 %idxprom18
  %34 = load %struct.BucketNode*, %struct.BucketNode** %arrayidx19, align 8
  %next = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %34, i32 0, i32 2
  store %struct.BucketNode* null, %struct.BucketNode** %next, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.end
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @double_cap(%struct.Hashmap* noundef %h) #0 {
entry:
  %h.addr = alloca %struct.Hashmap*, align 8
  %new_buckets = alloca %struct.BucketNode**, align 8
  %i = alloca i32, align 4
  %b = alloca %struct.BucketNode*, align 8
  %a = alloca i32, align 4
  store %struct.Hashmap* %h, %struct.Hashmap** %h.addr, align 8
  %0 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %cap = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %0, i32 0, i32 2
  %1 = load i32, i32* %cap, align 4
  %mul = mul nsw i32 %1, 2
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 noundef %conv, i64 noundef 8) #8
  %2 = bitcast i8* %call to %struct.BucketNode**
  store %struct.BucketNode** %2, %struct.BucketNode*** %new_buckets, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %cap1 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %4, i32 0, i32 2
  %5 = load i32, i32* %cap1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %6, i32 0, i32 0
  %7 = load %struct.BucketNode**, %struct.BucketNode*** %buckets, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %7, i64 %idxprom
  %9 = load %struct.BucketNode*, %struct.BucketNode** %arrayidx, align 8
  %cmp3 = icmp ne %struct.BucketNode* %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets5 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %10, i32 0, i32 0
  %11 = load %struct.BucketNode**, %struct.BucketNode*** %buckets5, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %11, i64 %idxprom6
  %13 = load %struct.BucketNode*, %struct.BucketNode** %arrayidx7, align 8
  store %struct.BucketNode* %13, %struct.BucketNode** %b, align 8
  %14 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %hash = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %14, i32 0, i32 3
  %15 = load i32 (i8*)*, i32 (i8*)** %hash, align 8
  %16 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %key = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %16, i32 0, i32 0
  %17 = load i8*, i8** %key, align 8
  %call8 = call i32 %15(i8* noundef %17)
  %18 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %cap9 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %18, i32 0, i32 2
  %19 = load i32, i32* %cap9, align 4
  %rem = urem i32 %call8, %19
  store i32 %rem, i32* %a, align 4
  %20 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %21 = load %struct.BucketNode**, %struct.BucketNode*** %new_buckets, align 8
  %22 = load i32, i32* %a, align 4
  %idxprom10 = zext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %21, i64 %idxprom10
  store %struct.BucketNode* %20, %struct.BucketNode** %arrayidx11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %24 = load %struct.BucketNode**, %struct.BucketNode*** %new_buckets, align 8
  %25 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %buckets12 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %25, i32 0, i32 0
  store %struct.BucketNode** %24, %struct.BucketNode*** %buckets12, align 8
  %26 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %cap13 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %26, i32 0, i32 2
  %27 = load i32, i32* %cap13, align 4
  %mul14 = mul nsw i32 %27, 2
  %28 = load %struct.Hashmap*, %struct.Hashmap** %h.addr, align 8
  %cap15 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %28, i32 0, i32 2
  store i32 %mul14, i32* %cap15, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_hash_init() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca %struct.Hashmap*, align 8
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.test_hash_init, i64 0, i64 0))
  %call = call %struct.Hashmap* @create_hashmap(i32 noundef 100)
  store %struct.Hashmap* %call, %struct.Hashmap** %h, align 8
  %0 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %size = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.165, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %2 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %cap = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %2, i32 0, i32 2
  %3 = load i32, i32* %cap, align 4
  %cmp2 = icmp eq i32 %3, 100
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end6

cond.false4:                                      ; preds = %cond.end
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.166, i64 0, i64 0))
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false4, %cond.true3
  %cond7 = phi i32 [ 0, %cond.true3 ], [ 0, %cond.false4 ]
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_hash_init_and_store() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca %struct.Hashmap*, align 8
  %name = alloca [5 x i8], align 1
  %key = alloca [5 x i8], align 1
  %ret = alloca i32, align 4
  %ind = alloca i64, align 8
  %b = alloca %struct.BucketNode*, align 8
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.test_hash_init_and_store, i64 0, i64 0))
  %call = call %struct.Hashmap* @create_hashmap(i32 noundef 100)
  store %struct.Hashmap* %call, %struct.Hashmap** %h, align 8
  %0 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %size = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.165, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %2 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %cap = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %2, i32 0, i32 2
  %3 = load i32, i32* %cap, align 4
  %cmp2 = icmp eq i32 %3, 100
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end6

cond.false4:                                      ; preds = %cond.end
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.166, i64 0, i64 0))
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false4, %cond.true3
  %cond7 = phi i32 [ 0, %cond.true3 ], [ 0, %cond.false4 ]
  %4 = bitcast [5 x i8]* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_hash_init_and_store.name, i32 0, i32 0), i64 5, i1 false)
  %5 = bitcast [5 x i8]* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_hash_init_and_store.key, i32 0, i32 0), i64 5, i1 false)
  %6 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %key, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0
  %call9 = call i32 @hm_set(%struct.Hashmap* noundef %6, i8* noundef %arraydecay, i8* noundef %arraydecay8)
  store i32 %call9, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %7, -1
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end6
  br label %cond.end14

cond.false12:                                     ; preds = %cond.end6
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i64 0, i64 0))
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false12, %cond.true11
  %cond15 = phi i32 [ 0, %cond.true11 ], [ 0, %cond.false12 ]
  %8 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %hash = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %8, i32 0, i32 3
  %9 = load i32 (i8*)*, i32 (i8*)** %hash, align 8
  %arraydecay16 = getelementptr inbounds [5 x i8], [5 x i8]* %key, i64 0, i64 0
  %call17 = call i32 %9(i8* noundef %arraydecay16)
  %10 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %cap18 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %10, i32 0, i32 2
  %11 = load i32, i32* %cap18, align 4
  %rem = urem i32 %call17, %11
  %conv = zext i32 %rem to i64
  store i64 %conv, i64* %ind, align 8
  %12 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %buckets = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %12, i32 0, i32 0
  %13 = load %struct.BucketNode**, %struct.BucketNode*** %buckets, align 8
  %14 = load i64, i64* %ind, align 8
  %arrayidx = getelementptr inbounds %struct.BucketNode*, %struct.BucketNode** %13, i64 %14
  %15 = load %struct.BucketNode*, %struct.BucketNode** %arrayidx, align 8
  store %struct.BucketNode* %15, %struct.BucketNode** %b, align 8
  %16 = load %struct.BucketNode*, %struct.BucketNode** %b, align 8
  %key19 = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %16, i32 0, i32 0
  %17 = load i8*, i8** %key19, align 8
  %arraydecay20 = getelementptr inbounds [5 x i8], [5 x i8]* %key, i64 0, i64 0
  %call21 = call i32 @strcmp(i8* noundef %17, i8* noundef %arraydecay20) #9
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %cond.end14
  br label %cond.end27

cond.false25:                                     ; preds = %cond.end14
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.168, i64 0, i64 0))
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true24
  %cond28 = phi i32 [ 0, %cond.true24 ], [ 0, %cond.false25 ]
  %18 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %size29 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %18, i32 0, i32 1
  %19 = load i32, i32* %size29, align 8
  %cmp30 = icmp eq i32 %19, 1
  br i1 %cmp30, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.end27
  br label %cond.end35

cond.false33:                                     ; preds = %cond.end27
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.169, i64 0, i64 0))
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false33, %cond.true32
  %cond36 = phi i32 [ 0, %cond.true32 ], [ 0, %cond.false33 ]
  %20 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %cap37 = getelementptr inbounds %struct.Hashmap, %struct.Hashmap* %20, i32 0, i32 2
  %21 = load i32, i32* %cap37, align 4
  %cmp38 = icmp eq i32 %21, 100
  br i1 %cmp38, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %cond.end35
  br label %cond.end43

cond.false41:                                     ; preds = %cond.end35
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.166, i64 0, i64 0))
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i32 [ 0, %cond.true40 ], [ 0, %cond.false41 ]
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_hash_set_and_get() #0 {
entry:
  %h = alloca %struct.Hashmap*, align 8
  %name = alloca [100 x i8], align 16
  %key = alloca [10 x i8], align 1
  %ret = alloca i32, align 4
  %got = alloca %struct.BucketNode*, align 8
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.test_hash_set_and_get, i64 0, i64 0))
  %call = call %struct.Hashmap* @create_hashmap(i32 noundef 100)
  store %struct.Hashmap* %call, %struct.Hashmap** %h, align 8
  %0 = bitcast [100 x i8]* %name to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false)
  %1 = bitcast i8* %0 to [100 x i8]*
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 0
  store i8 106, i8* %2, align 16
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 1
  store i8 97, i8* %3, align 1
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 2
  store i8 107, i8* %4, align 2
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 3
  store i8 101, i8* %5, align 1
  %6 = bitcast [10 x i8]* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_hash_set_and_get.key, i32 0, i32 0), i64 10, i1 false)
  %7 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %key, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i64 0, i64 0
  %call2 = call i32 @hm_set(%struct.Hashmap* noundef %7, i8* noundef %arraydecay, i8* noundef %arraydecay1)
  store i32 %call2, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %8, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %9 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %call4 = call %struct.BucketNode* @hm_get(%struct.Hashmap* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.170, i64 0, i64 0))
  store %struct.BucketNode* %call4, %struct.BucketNode** %got, align 8
  %10 = load %struct.BucketNode*, %struct.BucketNode** %got, align 8
  %value = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %10, i32 0, i32 1
  %11 = load i8*, i8** %value, align 8
  %call5 = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i64 0, i64 0)) #9
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  br label %cond.end10

cond.false8:                                      ; preds = %cond.end
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i64 0, i64 0))
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.true7
  %cond11 = phi i32 [ 0, %cond.true7 ], [ 0, %cond.false8 ]
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_hash_set_and_double_get() #0 {
entry:
  %h = alloca %struct.Hashmap*, align 8
  %name = alloca [100 x i8], align 16
  %key = alloca [10 x i8], align 1
  %ret = alloca i32, align 4
  %got = alloca %struct.BucketNode*, align 8
  call void @testing_single_test_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.test_hash_set_and_double_get, i64 0, i64 0))
  %call = call %struct.Hashmap* @create_hashmap(i32 noundef 100)
  store %struct.Hashmap* %call, %struct.Hashmap** %h, align 8
  %0 = bitcast [100 x i8]* %name to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false)
  %1 = bitcast i8* %0 to [100 x i8]*
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 0
  store i8 106, i8* %2, align 16
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 1
  store i8 97, i8* %3, align 1
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 2
  store i8 107, i8* %4, align 2
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 3
  store i8 101, i8* %5, align 1
  %6 = bitcast [10 x i8]* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_hash_set_and_double_get.key, i32 0, i32 0), i64 10, i1 false)
  %7 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %key, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i64 0, i64 0
  %call2 = call i32 @hm_set(%struct.Hashmap* noundef %7, i8* noundef %arraydecay, i8* noundef %arraydecay1)
  store i32 %call2, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %8, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %9 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  call void @double_cap(%struct.Hashmap* noundef %9)
  %10 = load %struct.Hashmap*, %struct.Hashmap** %h, align 8
  %call4 = call %struct.BucketNode* @hm_get(%struct.Hashmap* noundef %10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.170, i64 0, i64 0))
  store %struct.BucketNode* %call4, %struct.BucketNode** %got, align 8
  %11 = load %struct.BucketNode*, %struct.BucketNode** %got, align 8
  %value = getelementptr inbounds %struct.BucketNode, %struct.BucketNode* %11, i32 0, i32 1
  %12 = load i8*, i8** %value, align 8
  %call5 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i64 0, i64 0)) #9
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  br label %cond.end10

cond.false8:                                      ; preds = %cond.end
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.164, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i64 0, i64 0))
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.true7
  %cond11 = phi i32 [ 0, %cond.true7 ], [ 0, %cond.false8 ]
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.List* @create_list(i32 noundef %blocksize) #0 {
entry:
  %retval = alloca %struct.List*, align 8
  %blocksize.addr = alloca i32, align 4
  %l = alloca %struct.List*, align 8
  store i32 %blocksize, i32* %blocksize.addr, align 4
  %call = call noalias i8* @malloc(i64 noundef 24) #8
  %0 = bitcast i8* %call to %struct.List*
  store %struct.List* %0, %struct.List** %l, align 8
  %1 = load %struct.List*, %struct.List** %l, align 8
  %tobool = icmp ne %struct.List* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.173, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct.List* null, %struct.List** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %blocksize.addr, align 4
  %6 = load %struct.List*, %struct.List** %l, align 8
  %blocksize4 = getelementptr inbounds %struct.List, %struct.List* %6, i32 0, i32 2
  store i32 %5, i32* %blocksize4, align 8
  %7 = load %struct.List*, %struct.List** %l, align 8
  %tail = getelementptr inbounds %struct.List, %struct.List* %7, i32 0, i32 1
  store %struct.ListBlock* null, %struct.ListBlock** %tail, align 8
  %8 = load %struct.List*, %struct.List** %l, align 8
  %head = getelementptr inbounds %struct.List, %struct.List* %8, i32 0, i32 0
  store %struct.ListBlock* null, %struct.ListBlock** %head, align 8
  %9 = load %struct.List*, %struct.List** %l, align 8
  store %struct.List* %9, %struct.List** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %do.end
  %10 = load %struct.List*, %struct.List** %retval, align 8
  ret %struct.List* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @destroy_list(%struct.List* noundef %l) #0 {
entry:
  %l.addr = alloca %struct.List*, align 8
  %lb = alloca %struct.ListBlock*, align 8
  %next = alloca %struct.ListBlock*, align 8
  store %struct.List* %l, %struct.List** %l.addr, align 8
  %0 = load %struct.List*, %struct.List** %l.addr, align 8
  %head = getelementptr inbounds %struct.List, %struct.List* %0, i32 0, i32 0
  %1 = load %struct.ListBlock*, %struct.ListBlock** %head, align 8
  store %struct.ListBlock* %1, %struct.ListBlock** %lb, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %tobool = icmp ne %struct.ListBlock* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %next1 = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %3, i32 0, i32 3
  %4 = load %struct.ListBlock*, %struct.ListBlock** %next1, align 8
  store %struct.ListBlock* %4, %struct.ListBlock** %next, align 8
  %5 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %array = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %5, i32 0, i32 0
  %6 = load i8**, i8*** %array, align 8
  %7 = bitcast i8** %6 to i8*
  call void @free(i8* noundef %7) #8
  %8 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %9 = bitcast %struct.ListBlock* %8 to i8*
  call void @free(i8* noundef %9) #8
  %10 = load %struct.ListBlock*, %struct.ListBlock** %next, align 8
  store %struct.ListBlock* %10, %struct.ListBlock** %lb, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %11 = load %struct.List*, %struct.List** %l.addr, align 8
  %12 = bitcast %struct.List* %11 to i8*
  call void @free(i8* noundef %12) #8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfind_index(%struct.List* noundef %l, %struct.ListBlock** noundef %lb, i32* noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.List*, align 8
  %lb.addr = alloca %struct.ListBlock**, align 8
  %i.addr = alloca i32*, align 8
  store %struct.List* %l, %struct.List** %l.addr, align 8
  store %struct.ListBlock** %lb, %struct.ListBlock*** %lb.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  %0 = load %struct.List*, %struct.List** %l.addr, align 8
  %head = getelementptr inbounds %struct.List, %struct.List* %0, i32 0, i32 0
  %1 = load %struct.ListBlock*, %struct.ListBlock** %head, align 8
  %2 = load %struct.ListBlock**, %struct.ListBlock*** %lb.addr, align 8
  store %struct.ListBlock* %1, %struct.ListBlock** %2, align 8
  %3 = load i32*, i32** %i.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32*, i32** %i.addr, align 8
  %8 = load i32, i32* %7, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.174, i64 0, i64 0), i32 noundef %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %10 = load i32*, i32** %i.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ListBlock**, %struct.ListBlock*** %lb.addr, align 8
  %13 = load %struct.ListBlock*, %struct.ListBlock** %12, align 8
  %size = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 8
  %cmp3 = icmp sge i32 %11, %14
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.ListBlock**, %struct.ListBlock*** %lb.addr, align 8
  %tobool = icmp ne %struct.ListBlock** %15, null
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  %16 = load %struct.ListBlock**, %struct.ListBlock*** %lb.addr, align 8
  %17 = load %struct.ListBlock*, %struct.ListBlock** %16, align 8
  %next = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %17, i32 0, i32 3
  %18 = load %struct.ListBlock*, %struct.ListBlock** %next, align 8
  %19 = load %struct.ListBlock**, %struct.ListBlock*** %lb.addr, align 8
  store %struct.ListBlock* %18, %struct.ListBlock** %19, align 8
  %20 = load %struct.ListBlock**, %struct.ListBlock*** %lb.addr, align 8
  %21 = load %struct.ListBlock*, %struct.ListBlock** %20, align 8
  %size5 = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %21, i32 0, i32 1
  %22 = load i32, i32* %size5, align 8
  %23 = load i32*, i32** %i.addr, align 8
  %24 = load i32, i32* %23, align 4
  %sub = sub nsw i32 %24, %22
  store i32 %sub, i32* %23, align 4
  br label %if.end11

if.else:                                          ; preds = %while.body
  br label %do.body6

do.body6:                                         ; preds = %if.else
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i32*, i32** %i.addr, align 8
  %28 = load i32, i32* %27, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.175, i64 0, i64 0), i32 noundef %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end10

do.end10:                                         ; preds = %do.body6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %do.end10, %do.end
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lget_element(%struct.List* noundef %l, i32 noundef %index) #0 {
entry:
  %retval = alloca i8*, align 8
  %l.addr = alloca %struct.List*, align 8
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %lb = alloca %struct.ListBlock*, align 8
  store %struct.List* %l, %struct.List** %l.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  store i32 %0, i32* %i, align 4
  %1 = load %struct.List*, %struct.List** %l.addr, align 8
  %call = call i32 @lfind_index(%struct.List* noundef %1, %struct.ListBlock** noundef %lb, i32* noundef %i)
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %full = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %3, i32 0, i32 2
  %4 = load i32, i32* %full, align 4
  %cmp = icmp sge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %index.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.175, i64 0, i64 0), i32 noundef %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %array = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %9, i32 0, i32 0
  %10 = load i8**, i8*** %array, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  store i8* %12, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %do.end
  %13 = load i8*, i8** %retval, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lset_element(%struct.List* noundef %l, i32 noundef %index, i8* noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.List*, align 8
  %index.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %lb = alloca %struct.ListBlock*, align 8
  store %struct.List* %l, %struct.List** %l.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %0 = load i32, i32* %index.addr, align 4
  store i32 %0, i32* %i, align 4
  %1 = load %struct.List*, %struct.List** %l.addr, align 8
  %call = call i32 @lfind_index(%struct.List* noundef %1, %struct.ListBlock** noundef %lb, i32* noundef %i)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %full = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %4, i32 0, i32 2
  %5 = load i32, i32* %full, align 4
  %cmp = icmp sge i32 %3, %5
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 31)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %index.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.175, i64 0, i64 0), i32 noundef %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load i8*, i8** %value.addr, align 8
  %11 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %array = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %11, i32 0, i32 0
  %12 = load i8**, i8*** %array, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  store i8* %10, i8** %arrayidx, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %do.end, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ListBlock* @new_block(%struct.List* noundef %l) #0 {
entry:
  %retval = alloca %struct.ListBlock*, align 8
  %l.addr = alloca %struct.List*, align 8
  %lb = alloca %struct.ListBlock*, align 8
  store %struct.List* %l, %struct.List** %l.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #8
  %0 = bitcast i8* %call to %struct.ListBlock*
  store %struct.ListBlock* %0, %struct.ListBlock** %lb, align 8
  %1 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %cmp = icmp eq %struct.ListBlock* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.ListBlock* null, %struct.ListBlock** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.List*, %struct.List** %l.addr, align 8
  %blocksize = getelementptr inbounds %struct.List, %struct.List* %2, i32 0, i32 2
  %3 = load i32, i32* %blocksize, align 8
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %call1 = call noalias i8* @malloc(i64 noundef %mul) #8
  %4 = bitcast i8* %call1 to i8**
  %5 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %array = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %5, i32 0, i32 0
  store i8** %4, i8*** %array, align 8
  %6 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %array2 = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %6, i32 0, i32 0
  %7 = load i8**, i8*** %array2, align 8
  %cmp3 = icmp eq i8** %7, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %9 = bitcast %struct.ListBlock* %8 to i8*
  call void @free(i8* noundef %9) #8
  store %struct.ListBlock* null, %struct.ListBlock** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %10 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %full = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %10, i32 0, i32 2
  store i32 0, i32* %full, align 4
  %11 = load %struct.List*, %struct.List** %l.addr, align 8
  %blocksize7 = getelementptr inbounds %struct.List, %struct.List* %11, i32 0, i32 2
  %12 = load i32, i32* %blocksize7, align 8
  %13 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %size = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %13, i32 0, i32 1
  store i32 %12, i32* %size, align 8
  %14 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %next = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %14, i32 0, i32 3
  store %struct.ListBlock* null, %struct.ListBlock** %next, align 8
  %15 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  store %struct.ListBlock* %15, %struct.ListBlock** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %16 = load %struct.ListBlock*, %struct.ListBlock** %retval, align 8
  ret %struct.ListBlock* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ladd_element(%struct.List* noundef %l, i8* noundef %element) #0 {
entry:
  %l.addr = alloca %struct.List*, align 8
  %element.addr = alloca i8*, align 8
  %lb = alloca %struct.ListBlock*, align 8
  store %struct.List* %l, %struct.List** %l.addr, align 8
  store i8* %element, i8** %element.addr, align 8
  %0 = load %struct.List*, %struct.List** %l.addr, align 8
  %head = getelementptr inbounds %struct.List, %struct.List* %0, i32 0, i32 0
  %1 = load %struct.ListBlock*, %struct.ListBlock** %head, align 8
  %cmp = icmp eq %struct.ListBlock* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.List*, %struct.List** %l.addr, align 8
  %call = call %struct.ListBlock* @new_block(%struct.List* noundef %2)
  %3 = load %struct.List*, %struct.List** %l.addr, align 8
  %tail = getelementptr inbounds %struct.List, %struct.List* %3, i32 0, i32 1
  store %struct.ListBlock* %call, %struct.ListBlock** %tail, align 8
  %4 = load %struct.List*, %struct.List** %l.addr, align 8
  %tail1 = getelementptr inbounds %struct.List, %struct.List* %4, i32 0, i32 1
  %5 = load %struct.ListBlock*, %struct.ListBlock** %tail1, align 8
  %6 = load %struct.List*, %struct.List** %l.addr, align 8
  %head2 = getelementptr inbounds %struct.List, %struct.List* %6, i32 0, i32 0
  store %struct.ListBlock* %5, %struct.ListBlock** %head2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.List*, %struct.List** %l.addr, align 8
  %tail3 = getelementptr inbounds %struct.List, %struct.List* %7, i32 0, i32 1
  %8 = load %struct.ListBlock*, %struct.ListBlock** %tail3, align 8
  store %struct.ListBlock* %8, %struct.ListBlock** %lb, align 8
  %9 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %full = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %9, i32 0, i32 2
  %10 = load i32, i32* %full, align 4
  %11 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %size = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %11, i32 0, i32 1
  %12 = load i32, i32* %size, align 8
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %13 = load i8*, i8** %element.addr, align 8
  %14 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %array = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %14, i32 0, i32 0
  %15 = load i8**, i8*** %array, align 8
  %16 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %full6 = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %16, i32 0, i32 2
  %17 = load i32, i32* %full6, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %full6, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  store i8* %13, i8** %arrayidx, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end
  %18 = load %struct.List*, %struct.List** %l.addr, align 8
  %call7 = call %struct.ListBlock* @new_block(%struct.List* noundef %18)
  %19 = load %struct.List*, %struct.List** %l.addr, align 8
  %tail8 = getelementptr inbounds %struct.List, %struct.List* %19, i32 0, i32 1
  store %struct.ListBlock* %call7, %struct.ListBlock** %tail8, align 8
  %20 = load %struct.List*, %struct.List** %l.addr, align 8
  %tail9 = getelementptr inbounds %struct.List, %struct.List* %20, i32 0, i32 1
  %21 = load %struct.ListBlock*, %struct.ListBlock** %tail9, align 8
  %22 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %next = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %22, i32 0, i32 3
  store %struct.ListBlock* %21, %struct.ListBlock** %next, align 8
  %23 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %next10 = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %23, i32 0, i32 3
  %24 = load %struct.ListBlock*, %struct.ListBlock** %next10, align 8
  store %struct.ListBlock* %24, %struct.ListBlock** %lb, align 8
  %25 = load i8*, i8** %element.addr, align 8
  %26 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %array11 = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %26, i32 0, i32 0
  %27 = load i8**, i8*** %array11, align 8
  %28 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %full12 = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %28, i32 0, i32 2
  %29 = load i32, i32* %full12, align 4
  %inc13 = add nsw i32 %29, 1
  store i32 %inc13, i32* %full12, align 4
  %idxprom14 = sext i32 %29 to i64
  %arrayidx15 = getelementptr inbounds i8*, i8** %27, i64 %idxprom14
  store i8* %25, i8** %arrayidx15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @literate(%struct.List* noundef %l, i32 (i8*)* noundef %fn) #0 {
entry:
  %l.addr = alloca %struct.List*, align 8
  %fn.addr = alloca i32 (i8*)*, align 8
  %lb = alloca %struct.ListBlock*, align 8
  %acc = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.List* %l, %struct.List** %l.addr, align 8
  store i32 (i8*)* %fn, i32 (i8*)** %fn.addr, align 8
  %0 = load %struct.List*, %struct.List** %l.addr, align 8
  %head = getelementptr inbounds %struct.List, %struct.List* %0, i32 0, i32 0
  %1 = load %struct.ListBlock*, %struct.ListBlock** %head, align 8
  store %struct.ListBlock* %1, %struct.ListBlock** %lb, align 8
  store i32 0, i32* %acc, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %cmp = icmp ne %struct.ListBlock* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %full = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %4, i32 0, i32 2
  %5 = load i32, i32* %full, align 4
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32 (i8*)*, i32 (i8*)** %fn.addr, align 8
  %7 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %array = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %7, i32 0, i32 0
  %8 = load i8**, i8*** %array, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %call = call i32 %6(i8* noundef %10)
  %11 = load i32, i32* %acc, align 4
  %add = add nsw i32 %11, %call
  store i32 %add, i32* %acc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %13 = load %struct.ListBlock*, %struct.ListBlock** %lb, align 8
  %next = getelementptr inbounds %struct.ListBlock, %struct.ListBlock* %13, i32 0, i32 3
  %14 = load %struct.ListBlock*, %struct.ListBlock** %next, align 8
  store %struct.ListBlock* %14, %struct.ListBlock** %lb, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %acc, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { noreturn nounwind }

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
