; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/worsp/worsp.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/worsp/worsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ParseState = type { %struct.Token*, i32 }
%struct.Token = type { i32, %struct.Token*, i32, i8* }
%struct.ParseResult = type { %struct.ProgramNode* }
%struct.ProgramNode = type { %struct.ExpressionList* }
%struct.ExpressionList = type { %struct.ExpressionNode*, %struct.ExpressionList* }
%struct.ExpressionNode = type { i32, %union.anon }
%union.anon = type { %struct.SymbolicExpNode* }
%struct.SymbolicExpNode = type { %struct.ExpressionList* }
%struct.ListNode = type { %struct.ExpressionList* }
%struct.SymbolNode = type { i8* }
%struct.LiteralNode = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.ObjectStack = type { [50 x %struct.Object*], i32 }
%struct.Object = type { i8, i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.AllocatorContext = type { i32, %struct.ObjectStack*, %struct.Object*, [50 x i8] }
%struct.ConsCell = type { i32, %struct.Object*, %struct.Object* }
%struct.Env = type { [10 x %struct.Binding], %struct.Env* }
%struct.Binding = type { i8*, %struct.Object* }
%struct.Function = type { i8**, %struct.ExpressionNode* }

@.str = private unnamed_addr constant [23 x i8] c"filepath is required.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Cannot open file\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Failed to malloc\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Unexpected token: %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Unexpected token: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Object stack is full.\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Object stack is empty.\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"<function>\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Unexpected object type: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"Type error: operands for + must be integers or strings.\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"Type error: operands for - must be integers.\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Type error: operands for * must be integers.\0A\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"Type error: operands for / must be integers.\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"Type error: operands for % must be integers.\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"Type error: operands for < must be integers.\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"Type error: car operand must be list.\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Type error: cdr operand must be list.\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Type error: not operand must be boolean.\0A\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"Type error: split first operand must be string.\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"Type error: split second operand must be string.\0A\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"Type error: list-ref first operand must be list.\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"Type error: list-ref second operand must be integer.\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Index out of range.\0A\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"Type error: remove-whitespaces operand must be string.\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Type error: pop operand must be list.\0A\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Type error: push second operand must be list.\0A\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"Type error: length operand must be list or string.\0A\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"Type error: parse-int operand must be string.\0A\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"Type error: parse-int operand must be string of digits.\0A\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"Type error: string-ref first operand must be string.\0A\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"Type error: string-ref second operand must be integer.\0A\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"if must have condition.\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"if must have then clause.\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"Variable name must be symbol.\0A\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"assignment must have expression.\0A\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"defun\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"Function name must be symbol.\0A\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"Function must have parameter.\0A\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"Function parameter must be list.\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"Function parameter must be symbol.\0A\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"Function must have body.\0A\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"car\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"cdr\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"cons\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.76 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"list-ref\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"progn\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"remove-whitespaces\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"is-int-string\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"parse-int\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"string-ref\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"Undefined function: %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"S-exp must be started with symbol.\0A\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"Undefined symbol: %s\0A\00", align 1

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
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %filepath = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %file_size = alloca i64, align 8
  %file_contents = alloca i8*, align 8
  %state = alloca %struct.ParseState, align 8
  %result = alloca %struct.ParseResult*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %filepath, align 8
  %3 = load i8*, i8** %filepath, align 8
  %call1 = call noalias %struct._IO_FILE* @fopen(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @perror(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #9
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call5 = call i32 @fseek(%struct._IO_FILE* noundef %5, i64 noundef 0, i32 noundef 2)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call6 = call i64 @ftell(%struct._IO_FILE* noundef %6)
  store i64 %call6, i64* %file_size, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call7 = call i32 @fseek(%struct._IO_FILE* noundef %7, i64 noundef 0, i32 noundef 0)
  %8 = load i64, i64* %file_size, align 8
  %add = add nsw i64 %8, 1
  %call8 = call noalias i8* @malloc(i64 noundef %add) #10
  store i8* %call8, i8** %file_contents, align 8
  %9 = load i8*, i8** %file_contents, align 8
  %cmp9 = icmp eq i8* %9, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end4
  call void @perror(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* noundef %10)
  store i32 1, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end4
  %11 = load i8*, i8** %file_contents, align 8
  %12 = load i64, i64* %file_size, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call13 = call i64 @fread(i8* noundef %11, i64 noundef 1, i64 noundef %12, %struct._IO_FILE* noundef %13)
  %14 = load i8*, i8** %file_contents, align 8
  %15 = load i64, i64* %file_size, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8 0, i8* %arrayidx14, align 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* noundef %16)
  %17 = bitcast %struct.ParseState* %state to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %call16 = call noalias i8* @malloc(i64 noundef 8) #10
  %18 = bitcast i8* %call16 to %struct.ParseResult*
  store %struct.ParseResult* %18, %struct.ParseResult** %result, align 8
  %19 = load i8*, i8** %file_contents, align 8
  %20 = load %struct.ParseResult*, %struct.ParseResult** %result, align 8
  call void @parse(i8* noundef %19, %struct.ParseState* noundef %state, %struct.ParseResult* noundef %20)
  %21 = load %struct.ParseResult*, %struct.ParseResult** %result, align 8
  call void @evaluate(%struct.ParseResult* noundef %21)
  %22 = load i8*, i8** %file_contents, align 8
  call void @free(i8* noundef %22) #10
  %23 = load %struct.ParseResult*, %struct.ParseResult** %result, align 8
  %24 = bitcast %struct.ParseResult* %23 to i8*
  call void @free(i8* noundef %24) #10
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then3, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: cold
declare dso_local void @perror(i8* noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse(i8* noundef %source, %struct.ParseState* noundef %state, %struct.ParseResult* noundef %result) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %state.addr = alloca %struct.ParseState*, align 8
  %result.addr = alloca %struct.ParseResult*, align 8
  store i8* %source, i8** %source.addr, align 8
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  store %struct.ParseResult* %result, %struct.ParseResult** %result.addr, align 8
  %0 = load i8*, i8** %source.addr, align 8
  %1 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %2 = load %struct.ParseResult*, %struct.ParseResult** %result.addr, align 8
  call void @parseProgram(i8* noundef %0, %struct.ParseState* noundef %1, %struct.ParseResult* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaluate(%struct.ParseResult* noundef %result) #0 {
entry:
  %result.addr = alloca %struct.ParseResult*, align 8
  store %struct.ParseResult* %result, %struct.ParseResult** %result.addr, align 8
  %0 = load %struct.ParseResult*, %struct.ParseResult** %result.addr, align 8
  %program = getelementptr inbounds %struct.ParseResult, %struct.ParseResult* %0, i32 0, i32 0
  %1 = load %struct.ProgramNode*, %struct.ProgramNode** %program, align 8
  call void @evaluateProgram(%struct.ProgramNode* noundef %1)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isop(i32 noundef %ch) #0 {
entry:
  %ch.addr = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i32, i32* %ch.addr, align 4
  %cmp = icmp eq i32 %0, 43
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp eq i32 %1, 45
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %ch.addr, align 4
  %cmp3 = icmp eq i32 %2, 42
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %ch.addr, align 4
  %cmp5 = icmp eq i32 %3, 47
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, i32* %ch.addr, align 4
  %cmp7 = icmp eq i32 %4, 37
  br i1 %cmp7, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, i32* %ch.addr, align 4
  %cmp9 = icmp eq i32 %5, 124
  br i1 %cmp9, label %lor.end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %6 = load i32, i32* %ch.addr, align 4
  %cmp11 = icmp eq i32 %6, 38
  br i1 %cmp11, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %7 = load i32, i32* %ch.addr, align 4
  %cmp13 = icmp eq i32 %7, 61
  br i1 %cmp13, label %lor.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %8 = load i32, i32* %ch.addr, align 4
  %cmp15 = icmp eq i32 %8, 60
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false14
  %9 = load i32, i32* %ch.addr, align 4
  %cmp16 = icmp eq i32 %9, 62
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %10 = phi i1 [ true, %lor.lhs.false14 ], [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false10 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp16, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match(%struct.ParseState* noundef %state, i32 noundef %kind) #0 {
entry:
  %state.addr = alloca %struct.ParseState*, align 8
  %kind.addr = alloca i32, align 4
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token = getelementptr inbounds %struct.ParseState, %struct.ParseState* %0, i32 0, i32 0
  %1 = load %struct.Token*, %struct.Token** %token, align 8
  %kind1 = getelementptr inbounds %struct.Token, %struct.Token* %1, i32 0, i32 0
  %2 = load i32, i32* %kind1, align 8
  %3 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %2, %3
  %4 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @next(i8* noundef %source, %struct.ParseState* noundef %state) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %state.addr = alloca %struct.ParseState*, align 8
  %current = alloca %struct.Token*, align 8
  %new = alloca %struct.Token*, align 8
  %start = alloca i32, align 4
  %length = alloca i32, align 4
  %str95 = alloca i8*, align 8
  %start131 = alloca i32, align 4
  %length148 = alloca i32, align 4
  %str151 = alloca i8*, align 8
  %val = alloca i32, align 4
  %start174 = alloca i32, align 4
  %length193 = alloca i32, align 4
  store i8* %source, i8** %source.addr, align 8
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i16** @__ctype_b_loc() #11
  %0 = load i16*, i16** %call, align 8
  %1 = load i8*, i8** %source.addr, align 8
  %2 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos = getelementptr inbounds %struct.ParseState, %struct.ParseState* %2, i32 0, i32 1
  %3 = load i32, i32* %pos, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds i16, i16* %0, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %6 = load i8*, i8** %source.addr, align 8
  %7 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos4 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %7, i32 0, i32 1
  %8 = load i32, i32* %pos4, align 8
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv7, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %10 = phi i1 [ true, %while.cond ], [ %cmp, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos9 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %11, i32 0, i32 1
  %12 = load i32, i32* %pos9, align 8
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %pos9, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %lor.end
  %13 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token = getelementptr inbounds %struct.ParseState, %struct.ParseState* %13, i32 0, i32 0
  %14 = load %struct.Token*, %struct.Token** %token, align 8
  store %struct.Token* %14, %struct.Token** %current, align 8
  %call10 = call noalias i8* @malloc(i64 noundef 32) #10
  %15 = bitcast i8* %call10 to %struct.Token*
  store %struct.Token* %15, %struct.Token** %new, align 8
  %16 = load i8*, i8** %source.addr, align 8
  %17 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos11 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %17, i32 0, i32 1
  %18 = load i32, i32* %pos11, align 8
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %19 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %19 to i32
  %cmp15 = icmp eq i32 %conv14, 40
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %20 = load %struct.Token*, %struct.Token** %new, align 8
  %kind = getelementptr inbounds %struct.Token, %struct.Token* %20, i32 0, i32 0
  store i32 1, i32* %kind, align 8
  %21 = load %struct.Token*, %struct.Token** %new, align 8
  %str = getelementptr inbounds %struct.Token, %struct.Token* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %str, align 8
  %22 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos17 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %22, i32 0, i32 1
  %23 = load i32, i32* %pos17, align 8
  %inc18 = add nsw i32 %23, 1
  store i32 %inc18, i32* %pos17, align 8
  br label %if.end258

if.else:                                          ; preds = %while.end
  %24 = load i8*, i8** %source.addr, align 8
  %25 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos19 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %25, i32 0, i32 1
  %26 = load i32, i32* %pos19, align 8
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 %idxprom20
  %27 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %27 to i32
  %cmp23 = icmp eq i32 %conv22, 41
  br i1 %cmp23, label %if.then25, label %if.else30

if.then25:                                        ; preds = %if.else
  %28 = load %struct.Token*, %struct.Token** %new, align 8
  %kind26 = getelementptr inbounds %struct.Token, %struct.Token* %28, i32 0, i32 0
  store i32 2, i32* %kind26, align 8
  %29 = load %struct.Token*, %struct.Token** %new, align 8
  %str27 = getelementptr inbounds %struct.Token, %struct.Token* %29, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %str27, align 8
  %30 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos28 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %30, i32 0, i32 1
  %31 = load i32, i32* %pos28, align 8
  %inc29 = add nsw i32 %31, 1
  store i32 %inc29, i32* %pos28, align 8
  br label %if.end257

if.else30:                                        ; preds = %if.else
  %32 = load i8*, i8** %source.addr, align 8
  %33 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos31 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %33, i32 0, i32 1
  %34 = load i32, i32* %pos31, align 8
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %32, i64 %idxprom32
  %35 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %35 to i32
  %cmp35 = icmp eq i32 %conv34, 39
  br i1 %cmp35, label %if.then37, label %if.else42

if.then37:                                        ; preds = %if.else30
  %36 = load %struct.Token*, %struct.Token** %new, align 8
  %kind38 = getelementptr inbounds %struct.Token, %struct.Token* %36, i32 0, i32 0
  store i32 8, i32* %kind38, align 8
  %37 = load %struct.Token*, %struct.Token** %new, align 8
  %str39 = getelementptr inbounds %struct.Token, %struct.Token* %37, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %str39, align 8
  %38 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos40 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %38, i32 0, i32 1
  %39 = load i32, i32* %pos40, align 8
  %inc41 = add nsw i32 %39, 1
  store i32 %inc41, i32* %pos40, align 8
  br label %if.end256

if.else42:                                        ; preds = %if.else30
  %40 = load i8*, i8** %source.addr, align 8
  %41 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos43 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %41, i32 0, i32 1
  %42 = load i32, i32* %pos43, align 8
  %idxprom44 = sext i32 %42 to i64
  %arrayidx45 = getelementptr inbounds i8, i8* %40, i64 %idxprom44
  %43 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %43 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.else42
  %44 = load %struct.Token*, %struct.Token** %new, align 8
  %kind50 = getelementptr inbounds %struct.Token, %struct.Token* %44, i32 0, i32 0
  store i32 7, i32* %kind50, align 8
  %45 = load %struct.Token*, %struct.Token** %new, align 8
  %str51 = getelementptr inbounds %struct.Token, %struct.Token* %45, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %str51, align 8
  br label %if.end255

if.else52:                                        ; preds = %if.else42
  %call53 = call i16** @__ctype_b_loc() #11
  %46 = load i16*, i16** %call53, align 8
  %47 = load i8*, i8** %source.addr, align 8
  %48 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos54 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %48, i32 0, i32 1
  %49 = load i32, i32* %pos54, align 8
  %idxprom55 = sext i32 %49 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %47, i64 %idxprom55
  %50 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %50 to i32
  %idxprom58 = sext i32 %conv57 to i64
  %arrayidx59 = getelementptr inbounds i16, i16* %46, i64 %idxprom58
  %51 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %51 to i32
  %and61 = and i32 %conv60, 1024
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else52
  %52 = load i8*, i8** %source.addr, align 8
  %53 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos63 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %53, i32 0, i32 1
  %54 = load i32, i32* %pos63, align 8
  %idxprom64 = sext i32 %54 to i64
  %arrayidx65 = getelementptr inbounds i8, i8* %52, i64 %idxprom64
  %55 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %55 to i32
  %call67 = call i32 @isop(i32 noundef %conv66)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.else119

if.then69:                                        ; preds = %lor.lhs.false, %if.else52
  %56 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos70 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %56, i32 0, i32 1
  %57 = load i32, i32* %pos70, align 8
  store i32 %57, i32* %start, align 4
  br label %while.cond71

while.cond71:                                     ; preds = %while.body90, %if.then69
  %call72 = call i16** @__ctype_b_loc() #11
  %58 = load i16*, i16** %call72, align 8
  %59 = load i8*, i8** %source.addr, align 8
  %60 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos73 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %60, i32 0, i32 1
  %61 = load i32, i32* %pos73, align 8
  %idxprom74 = sext i32 %61 to i64
  %arrayidx75 = getelementptr inbounds i8, i8* %59, i64 %idxprom74
  %62 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %62 to i32
  %idxprom77 = sext i32 %conv76 to i64
  %arrayidx78 = getelementptr inbounds i16, i16* %58, i64 %idxprom77
  %63 = load i16, i16* %arrayidx78, align 2
  %conv79 = zext i16 %63 to i32
  %and80 = and i32 %conv79, 8
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %lor.end89, label %lor.rhs82

lor.rhs82:                                        ; preds = %while.cond71
  %64 = load i8*, i8** %source.addr, align 8
  %65 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos83 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %65, i32 0, i32 1
  %66 = load i32, i32* %pos83, align 8
  %idxprom84 = sext i32 %66 to i64
  %arrayidx85 = getelementptr inbounds i8, i8* %64, i64 %idxprom84
  %67 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %67 to i32
  %call87 = call i32 @isop(i32 noundef %conv86)
  %tobool88 = icmp ne i32 %call87, 0
  br label %lor.end89

lor.end89:                                        ; preds = %lor.rhs82, %while.cond71
  %68 = phi i1 [ true, %while.cond71 ], [ %tobool88, %lor.rhs82 ]
  br i1 %68, label %while.body90, label %while.end93

while.body90:                                     ; preds = %lor.end89
  %69 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos91 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %69, i32 0, i32 1
  %70 = load i32, i32* %pos91, align 8
  %inc92 = add nsw i32 %70, 1
  store i32 %inc92, i32* %pos91, align 8
  br label %while.cond71, !llvm.loop !6

while.end93:                                      ; preds = %lor.end89
  %71 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos94 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %71, i32 0, i32 1
  %72 = load i32, i32* %pos94, align 8
  %73 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %72, %73
  store i32 %sub, i32* %length, align 4
  %74 = load i32, i32* %length, align 4
  %add = add nsw i32 %74, 1
  %conv96 = sext i32 %add to i64
  %call97 = call noalias i8* @malloc(i64 noundef %conv96) #10
  store i8* %call97, i8** %str95, align 8
  %75 = load i8*, i8** %str95, align 8
  %76 = load i8*, i8** %source.addr, align 8
  %77 = load i32, i32* %start, align 4
  %idxprom98 = sext i32 %77 to i64
  %arrayidx99 = getelementptr inbounds i8, i8* %76, i64 %idxprom98
  %78 = load i32, i32* %length, align 4
  %conv100 = sext i32 %78 to i64
  %call101 = call i8* @strncpy(i8* noundef %75, i8* noundef %arrayidx99, i64 noundef %conv100) #10
  %79 = load i8*, i8** %str95, align 8
  %80 = load i32, i32* %length, align 4
  %idxprom102 = sext i32 %80 to i64
  %arrayidx103 = getelementptr inbounds i8, i8* %79, i64 %idxprom102
  store i8 0, i8* %arrayidx103, align 1
  %81 = load i8*, i8** %str95, align 8
  %call104 = call i32 @strcmp(i8* noundef %81, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #12
  %cmp105 = icmp eq i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %if.else109

if.then107:                                       ; preds = %while.end93
  %82 = load %struct.Token*, %struct.Token** %new, align 8
  %kind108 = getelementptr inbounds %struct.Token, %struct.Token* %82, i32 0, i32 0
  store i32 5, i32* %kind108, align 8
  %83 = load i8*, i8** %str95, align 8
  call void @free(i8* noundef %83) #10
  br label %if.end118

if.else109:                                       ; preds = %while.end93
  %84 = load i8*, i8** %str95, align 8
  %call110 = call i32 @strcmp(i8* noundef %84, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #12
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.else109
  %85 = load %struct.Token*, %struct.Token** %new, align 8
  %kind114 = getelementptr inbounds %struct.Token, %struct.Token* %85, i32 0, i32 0
  store i32 6, i32* %kind114, align 8
  %86 = load i8*, i8** %str95, align 8
  call void @free(i8* noundef %86) #10
  br label %if.end

if.else115:                                       ; preds = %if.else109
  %87 = load %struct.Token*, %struct.Token** %new, align 8
  %kind116 = getelementptr inbounds %struct.Token, %struct.Token* %87, i32 0, i32 0
  store i32 3, i32* %kind116, align 8
  %88 = load i8*, i8** %str95, align 8
  %89 = load %struct.Token*, %struct.Token** %new, align 8
  %str117 = getelementptr inbounds %struct.Token, %struct.Token* %89, i32 0, i32 3
  store i8* %88, i8** %str117, align 8
  br label %if.end

if.end:                                           ; preds = %if.else115, %if.then113
  br label %if.end118

if.end118:                                        ; preds = %if.end, %if.then107
  br label %if.end254

if.else119:                                       ; preds = %lor.lhs.false
  %call120 = call i16** @__ctype_b_loc() #11
  %90 = load i16*, i16** %call120, align 8
  %91 = load i8*, i8** %source.addr, align 8
  %92 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos121 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %92, i32 0, i32 1
  %93 = load i32, i32* %pos121, align 8
  %idxprom122 = sext i32 %93 to i64
  %arrayidx123 = getelementptr inbounds i8, i8* %91, i64 %idxprom122
  %94 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %94 to i32
  %idxprom125 = sext i32 %conv124 to i64
  %arrayidx126 = getelementptr inbounds i16, i16* %90, i64 %idxprom125
  %95 = load i16, i16* %arrayidx126, align 2
  %conv127 = zext i16 %95 to i32
  %and128 = and i32 %conv127, 2048
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then130, label %if.else164

if.then130:                                       ; preds = %if.else119
  %96 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos132 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %96, i32 0, i32 1
  %97 = load i32, i32* %pos132, align 8
  store i32 %97, i32* %start131, align 4
  br label %while.cond133

while.cond133:                                    ; preds = %while.body144, %if.then130
  %call134 = call i16** @__ctype_b_loc() #11
  %98 = load i16*, i16** %call134, align 8
  %99 = load i8*, i8** %source.addr, align 8
  %100 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos135 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %100, i32 0, i32 1
  %101 = load i32, i32* %pos135, align 8
  %idxprom136 = sext i32 %101 to i64
  %arrayidx137 = getelementptr inbounds i8, i8* %99, i64 %idxprom136
  %102 = load i8, i8* %arrayidx137, align 1
  %conv138 = sext i8 %102 to i32
  %idxprom139 = sext i32 %conv138 to i64
  %arrayidx140 = getelementptr inbounds i16, i16* %98, i64 %idxprom139
  %103 = load i16, i16* %arrayidx140, align 2
  %conv141 = zext i16 %103 to i32
  %and142 = and i32 %conv141, 2048
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %while.body144, label %while.end147

while.body144:                                    ; preds = %while.cond133
  %104 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos145 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %104, i32 0, i32 1
  %105 = load i32, i32* %pos145, align 8
  %inc146 = add nsw i32 %105, 1
  store i32 %inc146, i32* %pos145, align 8
  br label %while.cond133, !llvm.loop !7

while.end147:                                     ; preds = %while.cond133
  %106 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos149 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %106, i32 0, i32 1
  %107 = load i32, i32* %pos149, align 8
  %108 = load i32, i32* %start131, align 4
  %sub150 = sub nsw i32 %107, %108
  store i32 %sub150, i32* %length148, align 4
  %109 = load i32, i32* %length148, align 4
  %add152 = add nsw i32 %109, 1
  %conv153 = sext i32 %add152 to i64
  %call154 = call noalias i8* @malloc(i64 noundef %conv153) #10
  store i8* %call154, i8** %str151, align 8
  %110 = load i8*, i8** %str151, align 8
  %111 = load i8*, i8** %source.addr, align 8
  %112 = load i32, i32* %start131, align 4
  %idxprom155 = sext i32 %112 to i64
  %arrayidx156 = getelementptr inbounds i8, i8* %111, i64 %idxprom155
  %113 = load i32, i32* %length148, align 4
  %conv157 = sext i32 %113 to i64
  %call158 = call i8* @strncpy(i8* noundef %110, i8* noundef %arrayidx156, i64 noundef %conv157) #10
  %114 = load i8*, i8** %str151, align 8
  %115 = load i32, i32* %length148, align 4
  %idxprom159 = sext i32 %115 to i64
  %arrayidx160 = getelementptr inbounds i8, i8* %114, i64 %idxprom159
  store i8 0, i8* %arrayidx160, align 1
  %116 = load i8*, i8** %str151, align 8
  %call161 = call i32 @atoi(i8* noundef %116) #12
  store i32 %call161, i32* %val, align 4
  %117 = load i8*, i8** %str151, align 8
  call void @free(i8* noundef %117) #10
  %118 = load %struct.Token*, %struct.Token** %new, align 8
  %kind162 = getelementptr inbounds %struct.Token, %struct.Token* %118, i32 0, i32 0
  store i32 0, i32* %kind162, align 8
  %119 = load i32, i32* %val, align 4
  %120 = load %struct.Token*, %struct.Token** %new, align 8
  %val163 = getelementptr inbounds %struct.Token, %struct.Token* %120, i32 0, i32 2
  store i32 %119, i32* %val163, align 8
  br label %if.end253

if.else164:                                       ; preds = %if.else119
  %121 = load i8*, i8** %source.addr, align 8
  %122 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos165 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %122, i32 0, i32 1
  %123 = load i32, i32* %pos165, align 8
  %idxprom166 = sext i32 %123 to i64
  %arrayidx167 = getelementptr inbounds i8, i8* %121, i64 %idxprom166
  %124 = load i8, i8* %arrayidx167, align 1
  %conv168 = sext i8 %124 to i32
  %cmp169 = icmp eq i32 %conv168, 34
  br i1 %cmp169, label %if.then171, label %if.else219

if.then171:                                       ; preds = %if.else164
  %125 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos172 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %125, i32 0, i32 1
  %126 = load i32, i32* %pos172, align 8
  %inc173 = add nsw i32 %126, 1
  store i32 %inc173, i32* %pos172, align 8
  %127 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos175 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %127, i32 0, i32 1
  %128 = load i32, i32* %pos175, align 8
  store i32 %128, i32* %start174, align 4
  br label %while.cond176

while.cond176:                                    ; preds = %while.body189, %if.then171
  %129 = load i8*, i8** %source.addr, align 8
  %130 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos177 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %130, i32 0, i32 1
  %131 = load i32, i32* %pos177, align 8
  %idxprom178 = sext i32 %131 to i64
  %arrayidx179 = getelementptr inbounds i8, i8* %129, i64 %idxprom178
  %132 = load i8, i8* %arrayidx179, align 1
  %conv180 = sext i8 %132 to i32
  %cmp181 = icmp ne i32 %conv180, 34
  br i1 %cmp181, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond176
  %133 = load i8*, i8** %source.addr, align 8
  %134 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos183 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %134, i32 0, i32 1
  %135 = load i32, i32* %pos183, align 8
  %idxprom184 = sext i32 %135 to i64
  %arrayidx185 = getelementptr inbounds i8, i8* %133, i64 %idxprom184
  %136 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %136 to i32
  %cmp187 = icmp ne i32 %conv186, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond176
  %137 = phi i1 [ false, %while.cond176 ], [ %cmp187, %land.rhs ]
  br i1 %137, label %while.body189, label %while.end192

while.body189:                                    ; preds = %land.end
  %138 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos190 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %138, i32 0, i32 1
  %139 = load i32, i32* %pos190, align 8
  %inc191 = add nsw i32 %139, 1
  store i32 %inc191, i32* %pos190, align 8
  br label %while.cond176, !llvm.loop !8

while.end192:                                     ; preds = %land.end
  %140 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos194 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %140, i32 0, i32 1
  %141 = load i32, i32* %pos194, align 8
  %142 = load i32, i32* %start174, align 4
  %sub195 = sub nsw i32 %141, %142
  store i32 %sub195, i32* %length193, align 4
  %143 = load %struct.Token*, %struct.Token** %new, align 8
  %kind196 = getelementptr inbounds %struct.Token, %struct.Token* %143, i32 0, i32 0
  store i32 4, i32* %kind196, align 8
  %144 = load i32, i32* %length193, align 4
  %add197 = add nsw i32 %144, 1
  %conv198 = sext i32 %add197 to i64
  %call199 = call noalias i8* @malloc(i64 noundef %conv198) #10
  %145 = load %struct.Token*, %struct.Token** %new, align 8
  %str200 = getelementptr inbounds %struct.Token, %struct.Token* %145, i32 0, i32 3
  store i8* %call199, i8** %str200, align 8
  %146 = load %struct.Token*, %struct.Token** %new, align 8
  %str201 = getelementptr inbounds %struct.Token, %struct.Token* %146, i32 0, i32 3
  %147 = load i8*, i8** %str201, align 8
  %148 = load i8*, i8** %source.addr, align 8
  %149 = load i32, i32* %start174, align 4
  %idxprom202 = sext i32 %149 to i64
  %arrayidx203 = getelementptr inbounds i8, i8* %148, i64 %idxprom202
  %150 = load i32, i32* %length193, align 4
  %conv204 = sext i32 %150 to i64
  %call205 = call i8* @strncpy(i8* noundef %147, i8* noundef %arrayidx203, i64 noundef %conv204) #10
  %151 = load %struct.Token*, %struct.Token** %new, align 8
  %str206 = getelementptr inbounds %struct.Token, %struct.Token* %151, i32 0, i32 3
  %152 = load i8*, i8** %str206, align 8
  %153 = load i32, i32* %length193, align 4
  %idxprom207 = sext i32 %153 to i64
  %arrayidx208 = getelementptr inbounds i8, i8* %152, i64 %idxprom207
  store i8 0, i8* %arrayidx208, align 1
  %154 = load i8*, i8** %source.addr, align 8
  %155 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos209 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %155, i32 0, i32 1
  %156 = load i32, i32* %pos209, align 8
  %idxprom210 = sext i32 %156 to i64
  %arrayidx211 = getelementptr inbounds i8, i8* %154, i64 %idxprom210
  %157 = load i8, i8* %arrayidx211, align 1
  %conv212 = sext i8 %157 to i32
  %cmp213 = icmp eq i32 %conv212, 34
  br i1 %cmp213, label %if.then215, label %if.end218

if.then215:                                       ; preds = %while.end192
  %158 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos216 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %158, i32 0, i32 1
  %159 = load i32, i32* %pos216, align 8
  %inc217 = add nsw i32 %159, 1
  store i32 %inc217, i32* %pos216, align 8
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %while.end192
  br label %if.end252

if.else219:                                       ; preds = %if.else164
  %160 = load i8*, i8** %source.addr, align 8
  %161 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos220 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %161, i32 0, i32 1
  %162 = load i32, i32* %pos220, align 8
  %idxprom221 = sext i32 %162 to i64
  %arrayidx222 = getelementptr inbounds i8, i8* %160, i64 %idxprom221
  %163 = load i8, i8* %arrayidx222, align 1
  %conv223 = sext i8 %163 to i32
  %cmp224 = icmp eq i32 %conv223, 59
  br i1 %cmp224, label %if.then226, label %if.else246

if.then226:                                       ; preds = %if.else219
  br label %while.cond227

while.cond227:                                    ; preds = %while.body242, %if.then226
  %164 = load i8*, i8** %source.addr, align 8
  %165 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos228 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %165, i32 0, i32 1
  %166 = load i32, i32* %pos228, align 8
  %idxprom229 = sext i32 %166 to i64
  %arrayidx230 = getelementptr inbounds i8, i8* %164, i64 %idxprom229
  %167 = load i8, i8* %arrayidx230, align 1
  %conv231 = sext i8 %167 to i32
  %cmp232 = icmp ne i32 %conv231, 10
  br i1 %cmp232, label %land.rhs234, label %land.end241

land.rhs234:                                      ; preds = %while.cond227
  %168 = load i8*, i8** %source.addr, align 8
  %169 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos235 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %169, i32 0, i32 1
  %170 = load i32, i32* %pos235, align 8
  %idxprom236 = sext i32 %170 to i64
  %arrayidx237 = getelementptr inbounds i8, i8* %168, i64 %idxprom236
  %171 = load i8, i8* %arrayidx237, align 1
  %conv238 = sext i8 %171 to i32
  %cmp239 = icmp ne i32 %conv238, 0
  br label %land.end241

land.end241:                                      ; preds = %land.rhs234, %while.cond227
  %172 = phi i1 [ false, %while.cond227 ], [ %cmp239, %land.rhs234 ]
  br i1 %172, label %while.body242, label %while.end245

while.body242:                                    ; preds = %land.end241
  %173 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos243 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %173, i32 0, i32 1
  %174 = load i32, i32* %pos243, align 8
  %inc244 = add nsw i32 %174, 1
  store i32 %inc244, i32* %pos243, align 8
  br label %while.cond227, !llvm.loop !9

while.end245:                                     ; preds = %land.end241
  %175 = load i8*, i8** %source.addr, align 8
  %176 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %175, %struct.ParseState* noundef %176)
  br label %return

if.else246:                                       ; preds = %if.else219
  %177 = load i8*, i8** %source.addr, align 8
  %178 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %pos247 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %178, i32 0, i32 1
  %179 = load i32, i32* %pos247, align 8
  %idxprom248 = sext i32 %179 to i64
  %arrayidx249 = getelementptr inbounds i8, i8* %177, i64 %idxprom248
  %180 = load i8, i8* %arrayidx249, align 1
  %conv250 = sext i8 %180 to i32
  %call251 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv250)
  call void @exit(i32 noundef 1) #13
  unreachable

if.end252:                                        ; preds = %if.end218
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %while.end147
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.end118
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.then49
  br label %if.end256

if.end256:                                        ; preds = %if.end255, %if.then37
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %if.then25
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.then
  %181 = load %struct.Token*, %struct.Token** %current, align 8
  %cmp259 = icmp eq %struct.Token* %181, null
  br i1 %cmp259, label %if.then261, label %if.end263

if.then261:                                       ; preds = %if.end258
  %182 = load %struct.Token*, %struct.Token** %new, align 8
  %183 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token262 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %183, i32 0, i32 0
  store %struct.Token* %182, %struct.Token** %token262, align 8
  br label %return

if.end263:                                        ; preds = %if.end258
  %184 = load %struct.Token*, %struct.Token** %new, align 8
  %185 = load %struct.Token*, %struct.Token** %current, align 8
  %next = getelementptr inbounds %struct.Token, %struct.Token* %185, i32 0, i32 1
  store %struct.Token* %184, %struct.Token** %next, align 8
  %186 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token264 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %186, i32 0, i32 0
  store %struct.Token* %184, %struct.Token** %token264, align 8
  br label %return

return:                                           ; preds = %if.end263, %if.then261, %while.end245
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendExpressionToListExpression(%struct.ListNode* noundef %listNode, %struct.ExpressionNode* noundef %expression) #0 {
entry:
  %listNode.addr = alloca %struct.ListNode*, align 8
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %expressions = alloca %struct.ExpressionList*, align 8
  %current = alloca %struct.ExpressionList*, align 8
  store %struct.ListNode* %listNode, %struct.ListNode** %listNode.addr, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #10
  %0 = bitcast i8* %call to %struct.ExpressionList*
  store %struct.ExpressionList* %0, %struct.ExpressionList** %expressions, align 8
  %1 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %2 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %expression1 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %2, i32 0, i32 0
  store %struct.ExpressionNode* %1, %struct.ExpressionNode** %expression1, align 8
  %3 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %3, i32 0, i32 1
  store %struct.ExpressionList* null, %struct.ExpressionList** %next, align 8
  %4 = load %struct.ListNode*, %struct.ListNode** %listNode.addr, align 8
  %expressions2 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %4, i32 0, i32 0
  %5 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions2, align 8
  %cmp = icmp eq %struct.ExpressionList* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %7 = load %struct.ListNode*, %struct.ListNode** %listNode.addr, align 8
  %expressions3 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %7, i32 0, i32 0
  store %struct.ExpressionList* %6, %struct.ExpressionList** %expressions3, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.ListNode*, %struct.ListNode** %listNode.addr, align 8
  %expressions4 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %8, i32 0, i32 0
  %9 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions4, align 8
  store %struct.ExpressionList* %9, %struct.ExpressionList** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next5 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %10, i32 0, i32 1
  %11 = load %struct.ExpressionList*, %struct.ExpressionList** %next5, align 8
  %cmp6 = icmp ne %struct.ExpressionList* %11, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next7 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %12, i32 0, i32 1
  %13 = load %struct.ExpressionList*, %struct.ExpressionList** %next7, align 8
  store %struct.ExpressionList* %13, %struct.ExpressionList** %current, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %14 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %15 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next8 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %15, i32 0, i32 1
  store %struct.ExpressionList* %14, %struct.ExpressionList** %next8, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendExpressionToSymbolicExpression(%struct.SymbolicExpNode* noundef %symbolicExpNode, %struct.ExpressionNode* noundef %expression) #0 {
entry:
  %symbolicExpNode.addr = alloca %struct.SymbolicExpNode*, align 8
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %expressions = alloca %struct.ExpressionList*, align 8
  %current = alloca %struct.ExpressionList*, align 8
  store %struct.SymbolicExpNode* %symbolicExpNode, %struct.SymbolicExpNode** %symbolicExpNode.addr, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #10
  %0 = bitcast i8* %call to %struct.ExpressionList*
  store %struct.ExpressionList* %0, %struct.ExpressionList** %expressions, align 8
  %1 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %2 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %expression1 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %2, i32 0, i32 0
  store %struct.ExpressionNode* %1, %struct.ExpressionNode** %expression1, align 8
  %3 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %3, i32 0, i32 1
  store %struct.ExpressionList* null, %struct.ExpressionList** %next, align 8
  %4 = load %struct.SymbolicExpNode*, %struct.SymbolicExpNode** %symbolicExpNode.addr, align 8
  %expressions2 = getelementptr inbounds %struct.SymbolicExpNode, %struct.SymbolicExpNode* %4, i32 0, i32 0
  %5 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions2, align 8
  %cmp = icmp eq %struct.ExpressionList* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %7 = load %struct.SymbolicExpNode*, %struct.SymbolicExpNode** %symbolicExpNode.addr, align 8
  %expressions3 = getelementptr inbounds %struct.SymbolicExpNode, %struct.SymbolicExpNode* %7, i32 0, i32 0
  store %struct.ExpressionList* %6, %struct.ExpressionList** %expressions3, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.SymbolicExpNode*, %struct.SymbolicExpNode** %symbolicExpNode.addr, align 8
  %expressions4 = getelementptr inbounds %struct.SymbolicExpNode, %struct.SymbolicExpNode* %8, i32 0, i32 0
  %9 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions4, align 8
  store %struct.ExpressionList* %9, %struct.ExpressionList** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next5 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %10, i32 0, i32 1
  %11 = load %struct.ExpressionList*, %struct.ExpressionList** %next5, align 8
  %cmp6 = icmp ne %struct.ExpressionList* %11, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next7 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %12, i32 0, i32 1
  %13 = load %struct.ExpressionList*, %struct.ExpressionList** %next7, align 8
  store %struct.ExpressionList* %13, %struct.ExpressionList** %current, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %14 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %15 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next8 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %15, i32 0, i32 1
  store %struct.ExpressionList* %14, %struct.ExpressionList** %next8, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parseSymbolicExpression(i8* noundef %source, %struct.ParseState* noundef %state, %struct.ExpressionNode* noundef %expression) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %state.addr = alloca %struct.ParseState*, align 8
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %symbolicExp = alloca %struct.SymbolicExpNode*, align 8
  %expressionItem = alloca %struct.ExpressionNode*, align 8
  store i8* %source, i8** %source.addr, align 8
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 8) #10
  %0 = bitcast i8* %call to %struct.SymbolicExpNode*
  store %struct.SymbolicExpNode* %0, %struct.SymbolicExpNode** %symbolicExp, align 8
  %1 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %1, i32 0, i32 0
  store i32 3, i32* %type, align 8
  %2 = load %struct.SymbolicExpNode*, %struct.SymbolicExpNode** %symbolicExp, align 8
  %3 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %3, i32 0, i32 1
  %symbolic_exp = bitcast %union.anon* %data to %struct.SymbolicExpNode**
  store %struct.SymbolicExpNode* %2, %struct.SymbolicExpNode** %symbolic_exp, align 8
  %4 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data1 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %4, i32 0, i32 1
  %symbolic_exp2 = bitcast %union.anon* %data1 to %struct.SymbolicExpNode**
  %5 = load %struct.SymbolicExpNode*, %struct.SymbolicExpNode** %symbolic_exp2, align 8
  %expressions = getelementptr inbounds %struct.SymbolicExpNode, %struct.SymbolicExpNode* %5, i32 0, i32 0
  store %struct.ExpressionList* null, %struct.ExpressionList** %expressions, align 8
  %6 = load i8*, i8** %source.addr, align 8
  %7 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %6, %struct.ParseState* noundef %7)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call3 = call i32 @match(%struct.ParseState* noundef %8, i32 noundef 2)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call noalias i8* @malloc(i64 noundef 16) #10
  %9 = bitcast i8* %call4 to %struct.ExpressionNode*
  store %struct.ExpressionNode* %9, %struct.ExpressionNode** %expressionItem, align 8
  %10 = load i8*, i8** %source.addr, align 8
  %11 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %12 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expressionItem, align 8
  call void @parseExpression(i8* noundef %10, %struct.ParseState* noundef %11, %struct.ExpressionNode* noundef %12)
  %13 = load %struct.SymbolicExpNode*, %struct.SymbolicExpNode** %symbolicExp, align 8
  %14 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expressionItem, align 8
  call void @appendExpressionToSymbolicExpression(%struct.SymbolicExpNode* noundef %13, %struct.ExpressionNode* noundef %14)
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %source.addr, align 8
  %16 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %15, %struct.ParseState* noundef %16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parseExpression(i8* noundef %source, %struct.ParseState* noundef %state, %struct.ExpressionNode* noundef %expression) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %state.addr = alloca %struct.ParseState*, align 8
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  store i8* %source, i8** %source.addr, align 8
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  %0 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call = call i32 @match(%struct.ParseState* noundef %0, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %source.addr, align 8
  %2 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %3 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  call void @parseSymbolicExpression(i8* noundef %1, %struct.ParseState* noundef %2, %struct.ExpressionNode* noundef %3)
  br label %if.end24

if.else:                                          ; preds = %entry
  %4 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call1 = call i32 @match(%struct.ParseState* noundef %4, i32 noundef 8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %5 = load i8*, i8** %source.addr, align 8
  %6 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %7 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  call void @parseListExpression(i8* noundef %5, %struct.ParseState* noundef %6, %struct.ExpressionNode* noundef %7)
  br label %if.end23

if.else4:                                         ; preds = %if.else
  %8 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call5 = call i32 @match(%struct.ParseState* noundef %8, i32 noundef 3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  %9 = load i8*, i8** %source.addr, align 8
  %10 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %11 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  call void @parseSymbolExpression(i8* noundef %9, %struct.ParseState* noundef %10, %struct.ExpressionNode* noundef %11)
  br label %if.end22

if.else8:                                         ; preds = %if.else4
  %12 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call9 = call i32 @match(%struct.ParseState* noundef %12, i32 noundef 0)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else8
  %13 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call11 = call i32 @match(%struct.ParseState* noundef %13, i32 noundef 4)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then19, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %14 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call14 = call i32 @match(%struct.ParseState* noundef %14, i32 noundef 5)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %15 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call17 = call i32 @match(%struct.ParseState* noundef %15, i32 noundef 6)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false, %if.else8
  %16 = load i8*, i8** %source.addr, align 8
  %17 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %18 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  call void @parseLiteralExpression(i8* noundef %16, %struct.ParseState* noundef %17, %struct.ExpressionNode* noundef %18)
  br label %if.end

if.else20:                                        ; preds = %lor.lhs.false16
  %19 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token = getelementptr inbounds %struct.ParseState, %struct.ParseState* %19, i32 0, i32 0
  %20 = load %struct.Token*, %struct.Token** %token, align 8
  %str = getelementptr inbounds %struct.Token, %struct.Token* %20, i32 0, i32 3
  %21 = load i8*, i8** %str, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* noundef %21)
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %if.then19
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then7
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then3
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parseListExpression(i8* noundef %source, %struct.ParseState* noundef %state, %struct.ExpressionNode* noundef %expression) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %state.addr = alloca %struct.ParseState*, align 8
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %list = alloca %struct.ListNode*, align 8
  %expressionItem = alloca %struct.ExpressionNode*, align 8
  store i8* %source, i8** %source.addr, align 8
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 8) #10
  %0 = bitcast i8* %call to %struct.ListNode*
  store %struct.ListNode* %0, %struct.ListNode** %list, align 8
  %1 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %1, i32 0, i32 0
  store i32 2, i32* %type, align 8
  %2 = load %struct.ListNode*, %struct.ListNode** %list, align 8
  %3 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %3, i32 0, i32 1
  %list1 = bitcast %union.anon* %data to %struct.ListNode**
  store %struct.ListNode* %2, %struct.ListNode** %list1, align 8
  %4 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data2 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %4, i32 0, i32 1
  %list3 = bitcast %union.anon* %data2 to %struct.ListNode**
  %5 = load %struct.ListNode*, %struct.ListNode** %list3, align 8
  %expressions = getelementptr inbounds %struct.ListNode, %struct.ListNode* %5, i32 0, i32 0
  store %struct.ExpressionList* null, %struct.ExpressionList** %expressions, align 8
  %6 = load i8*, i8** %source.addr, align 8
  %7 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %6, %struct.ParseState* noundef %7)
  %8 = load i8*, i8** %source.addr, align 8
  %9 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %8, %struct.ParseState* noundef %9)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call4 = call i32 @match(%struct.ParseState* noundef %10, i32 noundef 2)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call noalias i8* @malloc(i64 noundef 16) #10
  %11 = bitcast i8* %call5 to %struct.ExpressionNode*
  store %struct.ExpressionNode* %11, %struct.ExpressionNode** %expressionItem, align 8
  %12 = load i8*, i8** %source.addr, align 8
  %13 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %14 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expressionItem, align 8
  call void @parseExpression(i8* noundef %12, %struct.ParseState* noundef %13, %struct.ExpressionNode* noundef %14)
  %15 = load %struct.ListNode*, %struct.ListNode** %list, align 8
  %16 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expressionItem, align 8
  call void @appendExpressionToListExpression(%struct.ListNode* noundef %15, %struct.ExpressionNode* noundef %16)
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %source.addr, align 8
  %18 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %17, %struct.ParseState* noundef %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parseSymbolExpression(i8* noundef %source, %struct.ParseState* noundef %state, %struct.ExpressionNode* noundef %expression) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %state.addr = alloca %struct.ParseState*, align 8
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  store i8* %source, i8** %source.addr, align 8
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  %0 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %0, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %call = call noalias i8* @malloc(i64 noundef 8) #10
  %1 = bitcast i8* %call to %struct.SymbolNode*
  %2 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %2, i32 0, i32 1
  %symbol = bitcast %union.anon* %data to %struct.SymbolNode**
  store %struct.SymbolNode* %1, %struct.SymbolNode** %symbol, align 8
  %3 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token = getelementptr inbounds %struct.ParseState, %struct.ParseState* %3, i32 0, i32 0
  %4 = load %struct.Token*, %struct.Token** %token, align 8
  %str = getelementptr inbounds %struct.Token, %struct.Token* %4, i32 0, i32 3
  %5 = load i8*, i8** %str, align 8
  %6 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data1 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %6, i32 0, i32 1
  %symbol2 = bitcast %union.anon* %data1 to %struct.SymbolNode**
  %7 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol2, align 8
  %symbol_name = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %7, i32 0, i32 0
  store i8* %5, i8** %symbol_name, align 8
  %8 = load i8*, i8** %source.addr, align 8
  %9 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %8, %struct.ParseState* noundef %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parseLiteralExpression(i8* noundef %source, %struct.ParseState* noundef %state, %struct.ExpressionNode* noundef %expression) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %state.addr = alloca %struct.ParseState*, align 8
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  store i8* %source, i8** %source.addr, align 8
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  %0 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call = call i32 @match(%struct.ParseState* noundef %0, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %1, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 16) #10
  %2 = bitcast i8* %call1 to %struct.LiteralNode*
  %3 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %3, i32 0, i32 1
  %literal = bitcast %union.anon* %data to %struct.LiteralNode**
  store %struct.LiteralNode* %2, %struct.LiteralNode** %literal, align 8
  %4 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data2 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %4, i32 0, i32 1
  %literal3 = bitcast %union.anon* %data2 to %struct.LiteralNode**
  %5 = load %struct.LiteralNode*, %struct.LiteralNode** %literal3, align 8
  %type4 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %5, i32 0, i32 0
  store i32 0, i32* %type4, align 8
  %6 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token = getelementptr inbounds %struct.ParseState, %struct.ParseState* %6, i32 0, i32 0
  %7 = load %struct.Token*, %struct.Token** %token, align 8
  %val = getelementptr inbounds %struct.Token, %struct.Token* %7, i32 0, i32 2
  %8 = load i32, i32* %val, align 8
  %9 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data5 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %9, i32 0, i32 1
  %literal6 = bitcast %union.anon* %data5 to %struct.LiteralNode**
  %10 = load %struct.LiteralNode*, %struct.LiteralNode** %literal6, align 8
  %11 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %10, i32 0, i32 1
  %int_value = bitcast %union.anon.0* %11 to i32*
  store i32 %8, i32* %int_value, align 8
  %12 = load i8*, i8** %source.addr, align 8
  %13 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %12, %struct.ParseState* noundef %13)
  br label %if.end53

if.else:                                          ; preds = %entry
  %14 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call7 = call i32 @match(%struct.ParseState* noundef %14, i32 noundef 4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.else20

if.then9:                                         ; preds = %if.else
  %15 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type10 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %15, i32 0, i32 0
  store i32 0, i32* %type10, align 8
  %call11 = call noalias i8* @malloc(i64 noundef 16) #10
  %16 = bitcast i8* %call11 to %struct.LiteralNode*
  %17 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data12 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %17, i32 0, i32 1
  %literal13 = bitcast %union.anon* %data12 to %struct.LiteralNode**
  store %struct.LiteralNode* %16, %struct.LiteralNode** %literal13, align 8
  %18 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data14 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %18, i32 0, i32 1
  %literal15 = bitcast %union.anon* %data14 to %struct.LiteralNode**
  %19 = load %struct.LiteralNode*, %struct.LiteralNode** %literal15, align 8
  %type16 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %19, i32 0, i32 0
  store i32 1, i32* %type16, align 8
  %20 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token17 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %20, i32 0, i32 0
  %21 = load %struct.Token*, %struct.Token** %token17, align 8
  %str = getelementptr inbounds %struct.Token, %struct.Token* %21, i32 0, i32 3
  %22 = load i8*, i8** %str, align 8
  %23 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data18 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %23, i32 0, i32 1
  %literal19 = bitcast %union.anon* %data18 to %struct.LiteralNode**
  %24 = load %struct.LiteralNode*, %struct.LiteralNode** %literal19, align 8
  %25 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %24, i32 0, i32 1
  %string_value = bitcast %union.anon.0* %25 to i8**
  store i8* %22, i8** %string_value, align 8
  %26 = load i8*, i8** %source.addr, align 8
  %27 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %26, %struct.ParseState* noundef %27)
  br label %if.end52

if.else20:                                        ; preds = %if.else
  %28 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call21 = call i32 @match(%struct.ParseState* noundef %28, i32 noundef 5)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.else33

if.then23:                                        ; preds = %if.else20
  %29 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type24 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %29, i32 0, i32 0
  store i32 0, i32* %type24, align 8
  %call25 = call noalias i8* @malloc(i64 noundef 16) #10
  %30 = bitcast i8* %call25 to %struct.LiteralNode*
  %31 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data26 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %31, i32 0, i32 1
  %literal27 = bitcast %union.anon* %data26 to %struct.LiteralNode**
  store %struct.LiteralNode* %30, %struct.LiteralNode** %literal27, align 8
  %32 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data28 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %32, i32 0, i32 1
  %literal29 = bitcast %union.anon* %data28 to %struct.LiteralNode**
  %33 = load %struct.LiteralNode*, %struct.LiteralNode** %literal29, align 8
  %type30 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %33, i32 0, i32 0
  store i32 2, i32* %type30, align 8
  %34 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data31 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %34, i32 0, i32 1
  %literal32 = bitcast %union.anon* %data31 to %struct.LiteralNode**
  %35 = load %struct.LiteralNode*, %struct.LiteralNode** %literal32, align 8
  %36 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %35, i32 0, i32 1
  %boolean_value = bitcast %union.anon.0* %36 to i8*
  store i8 1, i8* %boolean_value, align 8
  %37 = load i8*, i8** %source.addr, align 8
  %38 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %37, %struct.ParseState* noundef %38)
  br label %if.end51

if.else33:                                        ; preds = %if.else20
  %39 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call34 = call i32 @match(%struct.ParseState* noundef %39, i32 noundef 6)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.else47

if.then36:                                        ; preds = %if.else33
  %40 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type37 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %40, i32 0, i32 0
  store i32 0, i32* %type37, align 8
  %call38 = call noalias i8* @malloc(i64 noundef 16) #10
  %41 = bitcast i8* %call38 to %struct.LiteralNode*
  %42 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data39 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %42, i32 0, i32 1
  %literal40 = bitcast %union.anon* %data39 to %struct.LiteralNode**
  store %struct.LiteralNode* %41, %struct.LiteralNode** %literal40, align 8
  %43 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data41 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %43, i32 0, i32 1
  %literal42 = bitcast %union.anon* %data41 to %struct.LiteralNode**
  %44 = load %struct.LiteralNode*, %struct.LiteralNode** %literal42, align 8
  %type43 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %44, i32 0, i32 0
  store i32 2, i32* %type43, align 8
  %45 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data44 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %45, i32 0, i32 1
  %literal45 = bitcast %union.anon* %data44 to %struct.LiteralNode**
  %46 = load %struct.LiteralNode*, %struct.LiteralNode** %literal45, align 8
  %47 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %46, i32 0, i32 1
  %boolean_value46 = bitcast %union.anon.0* %47 to i8*
  store i8 0, i8* %boolean_value46, align 8
  %48 = load i8*, i8** %source.addr, align 8
  %49 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %48, %struct.ParseState* noundef %49)
  br label %if.end

if.else47:                                        ; preds = %if.else33
  %50 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %token48 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %50, i32 0, i32 0
  %51 = load %struct.Token*, %struct.Token** %token48, align 8
  %str49 = getelementptr inbounds %struct.Token, %struct.Token* %51, i32 0, i32 3
  %52 = load i8*, i8** %str49, align 8
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* noundef %52)
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %if.then36
  br label %if.end51

if.end51:                                         ; preds = %if.end, %if.then23
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then9
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendExpressionToProgram(%struct.ProgramNode* noundef %program, %struct.ExpressionNode* noundef %expression) #0 {
entry:
  %program.addr = alloca %struct.ProgramNode*, align 8
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %expressions = alloca %struct.ExpressionList*, align 8
  %current = alloca %struct.ExpressionList*, align 8
  store %struct.ProgramNode* %program, %struct.ProgramNode** %program.addr, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #10
  %0 = bitcast i8* %call to %struct.ExpressionList*
  store %struct.ExpressionList* %0, %struct.ExpressionList** %expressions, align 8
  %1 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %2 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %expression1 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %2, i32 0, i32 0
  store %struct.ExpressionNode* %1, %struct.ExpressionNode** %expression1, align 8
  %3 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %3, i32 0, i32 1
  store %struct.ExpressionList* null, %struct.ExpressionList** %next, align 8
  %4 = load %struct.ProgramNode*, %struct.ProgramNode** %program.addr, align 8
  %expressions2 = getelementptr inbounds %struct.ProgramNode, %struct.ProgramNode* %4, i32 0, i32 0
  %5 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions2, align 8
  %cmp = icmp eq %struct.ExpressionList* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %7 = load %struct.ProgramNode*, %struct.ProgramNode** %program.addr, align 8
  %expressions3 = getelementptr inbounds %struct.ProgramNode, %struct.ProgramNode* %7, i32 0, i32 0
  store %struct.ExpressionList* %6, %struct.ExpressionList** %expressions3, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.ProgramNode*, %struct.ProgramNode** %program.addr, align 8
  %expressions4 = getelementptr inbounds %struct.ProgramNode, %struct.ProgramNode* %8, i32 0, i32 0
  %9 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions4, align 8
  store %struct.ExpressionList* %9, %struct.ExpressionList** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next5 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %10, i32 0, i32 1
  %11 = load %struct.ExpressionList*, %struct.ExpressionList** %next5, align 8
  %cmp6 = icmp ne %struct.ExpressionList* %11, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next7 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %12, i32 0, i32 1
  %13 = load %struct.ExpressionList*, %struct.ExpressionList** %next7, align 8
  store %struct.ExpressionList* %13, %struct.ExpressionList** %current, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %14 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %15 = load %struct.ExpressionList*, %struct.ExpressionList** %current, align 8
  %next8 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %15, i32 0, i32 1
  store %struct.ExpressionList* %14, %struct.ExpressionList** %next8, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parseProgram(i8* noundef %source, %struct.ParseState* noundef %state, %struct.ParseResult* noundef %result) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %state.addr = alloca %struct.ParseState*, align 8
  %result.addr = alloca %struct.ParseResult*, align 8
  %program = alloca %struct.ProgramNode*, align 8
  %expression = alloca %struct.ExpressionNode*, align 8
  store i8* %source, i8** %source.addr, align 8
  store %struct.ParseState* %state, %struct.ParseState** %state.addr, align 8
  store %struct.ParseResult* %result, %struct.ParseResult** %result.addr, align 8
  %0 = load i8*, i8** %source.addr, align 8
  %1 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  call void @next(i8* noundef %0, %struct.ParseState* noundef %1)
  %call = call noalias i8* @malloc(i64 noundef 8) #10
  %2 = bitcast i8* %call to %struct.ProgramNode*
  store %struct.ProgramNode* %2, %struct.ProgramNode** %program, align 8
  %3 = load %struct.ProgramNode*, %struct.ProgramNode** %program, align 8
  %expressions = getelementptr inbounds %struct.ProgramNode, %struct.ProgramNode* %3, i32 0, i32 0
  store %struct.ExpressionList* null, %struct.ExpressionList** %expressions, align 8
  %4 = load %struct.ProgramNode*, %struct.ProgramNode** %program, align 8
  %5 = load %struct.ParseResult*, %struct.ParseResult** %result.addr, align 8
  %program1 = getelementptr inbounds %struct.ParseResult, %struct.ParseResult* %5, i32 0, i32 0
  store %struct.ProgramNode* %4, %struct.ProgramNode** %program1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %call2 = call i32 @match(%struct.ParseState* noundef %6, i32 noundef 7)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call noalias i8* @malloc(i64 noundef 16) #10
  %7 = bitcast i8* %call3 to %struct.ExpressionNode*
  store %struct.ExpressionNode* %7, %struct.ExpressionNode** %expression, align 8
  %8 = load i8*, i8** %source.addr, align 8
  %9 = load %struct.ParseState*, %struct.ParseState** %state.addr, align 8
  %10 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression, align 8
  call void @parseExpression(i8* noundef %8, %struct.ParseState* noundef %9, %struct.ExpressionNode* noundef %10)
  %11 = load %struct.ProgramNode*, %struct.ProgramNode** %program, align 8
  %12 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression, align 8
  call void @appendExpressionToProgram(%struct.ProgramNode* noundef %11, %struct.ExpressionNode* noundef %12)
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initializeObjectStack(%struct.ObjectStack* noundef %stack) #0 {
entry:
  %stack.addr = alloca %struct.ObjectStack*, align 8
  store %struct.ObjectStack* %stack, %struct.ObjectStack** %stack.addr, align 8
  %0 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %top = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %0, i32 0, i32 1
  store i32 -1, i32* %top, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isFullObjectStack(%struct.ObjectStack* noundef %stack) #0 {
entry:
  %stack.addr = alloca %struct.ObjectStack*, align 8
  store %struct.ObjectStack* %stack, %struct.ObjectStack** %stack.addr, align 8
  %0 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %top = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %0, i32 0, i32 1
  %1 = load i32, i32* %top, align 8
  %cmp = icmp eq i32 %1, 50
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isEmptyObjectStack(%struct.ObjectStack* noundef %stack) #0 {
entry:
  %stack.addr = alloca %struct.ObjectStack*, align 8
  store %struct.ObjectStack* %stack, %struct.ObjectStack** %stack.addr, align 8
  %0 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %top = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %0, i32 0, i32 1
  %1 = load i32, i32* %top, align 8
  %cmp = icmp eq i32 %1, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pushObjectStack(%struct.ObjectStack* noundef %stack, %struct.Object* noundef %obj) #0 {
entry:
  %stack.addr = alloca %struct.ObjectStack*, align 8
  %obj.addr = alloca %struct.Object*, align 8
  store %struct.ObjectStack* %stack, %struct.ObjectStack** %stack.addr, align 8
  store %struct.Object* %obj, %struct.Object** %obj.addr, align 8
  %0 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %call = call i32 @isFullObjectStack(%struct.ObjectStack* noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %top = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %1, i32 0, i32 1
  %2 = load i32, i32* %top, align 8
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %top, align 8
  %3 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %4 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %objects = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %4, i32 0, i32 0
  %5 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %top2 = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %5, i32 0, i32 1
  %6 = load i32, i32* %top2, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.Object*], [50 x %struct.Object*]* %objects, i64 0, i64 %idxprom
  store %struct.Object* %3, %struct.Object** %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Object* @popObjectStack(%struct.ObjectStack* noundef %stack) #0 {
entry:
  %stack.addr = alloca %struct.ObjectStack*, align 8
  %obj = alloca %struct.Object*, align 8
  store %struct.ObjectStack* %stack, %struct.ObjectStack** %stack.addr, align 8
  %0 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %call = call i32 @isEmptyObjectStack(%struct.ObjectStack* noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %objects = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %1, i32 0, i32 0
  %2 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %top = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %2, i32 0, i32 1
  %3 = load i32, i32* %top, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.Object*], [50 x %struct.Object*]* %objects, i64 0, i64 %idxprom
  %4 = load %struct.Object*, %struct.Object** %arrayidx, align 8
  store %struct.Object* %4, %struct.Object** %obj, align 8
  %5 = load %struct.ObjectStack*, %struct.ObjectStack** %stack.addr, align 8
  %top2 = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %5, i32 0, i32 1
  %6 = load i32, i32* %top2, align 8
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %top2, align 8
  %7 = load %struct.Object*, %struct.Object** %obj, align 8
  ret %struct.Object* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AllocatorContext* @initAllocator() #0 {
entry:
  %context = alloca %struct.AllocatorContext*, align 8
  %i = alloca i64, align 8
  %stack = alloca %struct.ObjectStack*, align 8
  %call = call noalias i8* @malloc(i64 noundef 80) #10
  %0 = bitcast i8* %call to %struct.AllocatorContext*
  store %struct.AllocatorContext* %0, %struct.AllocatorContext** %context, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 800) #10
  %1 = bitcast i8* %call1 to %struct.Object*
  %2 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context, align 8
  %memory_pool = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %2, i32 0, i32 2
  store %struct.Object* %1, %struct.Object** %memory_pool, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %3, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context, align 8
  %free_bitmap = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %4, i32 0, i32 3
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %free_bitmap, i64 0, i64 %5
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %7 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context, align 8
  %gc_less_mode = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %7, i32 0, i32 0
  store i32 0, i32* %gc_less_mode, align 8
  %call2 = call noalias i8* @malloc(i64 noundef 408) #10
  %8 = bitcast i8* %call2 to %struct.ObjectStack*
  store %struct.ObjectStack* %8, %struct.ObjectStack** %stack, align 8
  %9 = load %struct.ObjectStack*, %struct.ObjectStack** %stack, align 8
  call void @initializeObjectStack(%struct.ObjectStack* noundef %9)
  %10 = load %struct.ObjectStack*, %struct.ObjectStack** %stack, align 8
  %11 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context, align 8
  %stack3 = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %11, i32 0, i32 1
  store %struct.ObjectStack* %10, %struct.ObjectStack** %stack3, align 8
  %12 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context, align 8
  ret %struct.AllocatorContext* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeObject(%struct.AllocatorContext* noundef %context, %struct.Object* noundef %object) #0 {
entry:
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %object.addr = alloca %struct.Object*, align 8
  %index = alloca i32, align 4
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  store %struct.Object* %object, %struct.Object** %object.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %object.addr, align 8
  %1 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %memory_pool = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %1, i32 0, i32 2
  %2 = load %struct.Object*, %struct.Object** %memory_pool, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Object* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Object* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %index, align 4
  %3 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %free_bitmap = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %3, i32 0, i32 3
  %4 = load i32, i32* %index, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %free_bitmap, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sweep(%struct.AllocatorContext* noundef %context) #0 {
entry:
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %i = alloca i64, align 8
  %obj = alloca %struct.Object*, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %free_bitmap = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %1, i32 0, i32 3
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %free_bitmap, i64 0, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body
  %4 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %memory_pool = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %4, i32 0, i32 2
  %5 = load %struct.Object*, %struct.Object** %memory_pool, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds %struct.Object, %struct.Object* %5, i64 %6
  store %struct.Object* %arrayidx3, %struct.Object** %obj, align 8
  %7 = load %struct.Object*, %struct.Object** %obj, align 8
  %marked = getelementptr inbounds %struct.Object, %struct.Object* %7, i32 0, i32 0
  %8 = load i8, i8* %marked, align 8
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %9 = load %struct.Object*, %struct.Object** %obj, align 8
  %marked5 = getelementptr inbounds %struct.Object, %struct.Object* %9, i32 0, i32 0
  store i8 0, i8* %marked5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %11 = load %struct.Object*, %struct.Object** %obj, align 8
  call void @freeObject(%struct.AllocatorContext* noundef %10, %struct.Object* noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isLastConsCell(%struct.ConsCell* noundef %conscell) #0 {
entry:
  %conscell.addr = alloca %struct.ConsCell*, align 8
  store %struct.ConsCell* %conscell, %struct.ConsCell** %conscell.addr, align 8
  %0 = load %struct.ConsCell*, %struct.ConsCell** %conscell.addr, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %0, i32 0, i32 2
  %1 = load %struct.Object*, %struct.Object** %cdr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %1, i32 0, i32 1
  %2 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %2, 4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark(%struct.Object* noundef %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object*, align 8
  %current = alloca %struct.Object*, align 8
  store %struct.Object* %obj, %struct.Object** %obj.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %marked = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 0
  %1 = load i8, i8* %marked, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end12

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %marked1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 0
  store i8 1, i8* %marked1, align 8
  %3 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 1
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %5 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  store %struct.Object* %5, %struct.Object** %current, align 8
  br label %while.body

while.body:                                       ; preds = %if.then2, %if.end10
  %6 = load %struct.Object*, %struct.Object** %current, align 8
  call void @mark(%struct.Object* noundef %6)
  %7 = load %struct.Object*, %struct.Object** %current, align 8
  %8 = getelementptr inbounds %struct.Object, %struct.Object* %7, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %8 to %struct.ConsCell**
  %9 = load %struct.ConsCell*, %struct.ConsCell** %list_value, align 8
  %cmp3 = icmp eq %struct.ConsCell* %9, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.body
  br label %while.end

if.end5:                                          ; preds = %while.body
  %10 = load %struct.Object*, %struct.Object** %current, align 8
  %11 = getelementptr inbounds %struct.Object, %struct.Object* %10, i32 0, i32 2
  %list_value6 = bitcast %union.anon.1* %11 to %struct.ConsCell**
  %12 = load %struct.ConsCell*, %struct.ConsCell** %list_value6, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %12, i32 0, i32 1
  %13 = load %struct.Object*, %struct.Object** %car, align 8
  call void @mark(%struct.Object* noundef %13)
  %14 = load %struct.Object*, %struct.Object** %current, align 8
  %15 = getelementptr inbounds %struct.Object, %struct.Object* %14, i32 0, i32 2
  %list_value7 = bitcast %union.anon.1* %15 to %struct.ConsCell**
  %16 = load %struct.ConsCell*, %struct.ConsCell** %list_value7, align 8
  %call = call i32 @isLastConsCell(%struct.ConsCell* noundef %16)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  br label %while.end

if.end10:                                         ; preds = %if.end5
  %17 = load %struct.Object*, %struct.Object** %current, align 8
  %18 = getelementptr inbounds %struct.Object, %struct.Object* %17, i32 0, i32 2
  %list_value11 = bitcast %union.anon.1* %18 to %struct.ConsCell**
  %19 = load %struct.ConsCell*, %struct.ConsCell** %list_value11, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %19, i32 0, i32 2
  %20 = load %struct.Object*, %struct.Object** %cdr, align 8
  store %struct.Object* %20, %struct.Object** %current, align 8
  br label %while.body

while.end:                                        ; preds = %if.then9, %if.then4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %while.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @markAll(%struct.Env* noundef %env, %struct.AllocatorContext* noundef %context) #0 {
entry:
  %env.addr = alloca %struct.Env*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %i = alloca i32, align 4
  %obj = alloca %struct.Object*, align 8
  %i2 = alloca i32, align 4
  %obj6 = alloca %struct.Object*, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %stack = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %1, i32 0, i32 1
  %2 = load %struct.ObjectStack*, %struct.ObjectStack** %stack, align 8
  %top = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %2, i32 0, i32 1
  %3 = load i32, i32* %top, align 8
  %cmp = icmp sle i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %stack1 = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %4, i32 0, i32 1
  %5 = load %struct.ObjectStack*, %struct.ObjectStack** %stack1, align 8
  %objects = getelementptr inbounds %struct.ObjectStack, %struct.ObjectStack* %5, i32 0, i32 0
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.Object*], [50 x %struct.Object*]* %objects, i64 0, i64 %idxprom
  %7 = load %struct.Object*, %struct.Object** %arrayidx, align 8
  store %struct.Object* %7, %struct.Object** %obj, align 8
  %8 = load %struct.Object*, %struct.Object** %obj, align 8
  call void @mark(%struct.Object* noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %10 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings = getelementptr inbounds %struct.Env, %struct.Env* %10, i32 0, i32 0
  %11 = load i32, i32* %i2, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings, i64 0, i64 %idxprom3
  %symbol_name = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx4, i32 0, i32 0
  %12 = load i8*, i8** %symbol_name, align 8
  %cmp5 = icmp ne i8* %12, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings7 = getelementptr inbounds %struct.Env, %struct.Env* %13, i32 0, i32 0
  %14 = load i32, i32* %i2, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings7, i64 0, i64 %idxprom8
  %value = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx9, i32 0, i32 1
  %15 = load %struct.Object*, %struct.Object** %value, align 8
  store %struct.Object* %15, %struct.Object** %obj6, align 8
  %16 = load %struct.Object*, %struct.Object** %obj6, align 8
  call void @mark(%struct.Object* noundef %16)
  %17 = load i32, i32* %i2, align 4
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %i2, align 4
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %18 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %parent = getelementptr inbounds %struct.Env, %struct.Env* %18, i32 0, i32 1
  %19 = load %struct.Env*, %struct.Env** %parent, align 8
  %cmp11 = icmp ne %struct.Env* %19, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %20 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %parent12 = getelementptr inbounds %struct.Env, %struct.Env* %20, i32 0, i32 1
  %21 = load %struct.Env*, %struct.Env** %parent12, align 8
  %22 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @markAll(%struct.Env* noundef %21, %struct.AllocatorContext* noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gc(%struct.AllocatorContext* noundef %context, %struct.Env* noundef %env) #0 {
entry:
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %env.addr = alloca %struct.Env*, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  %0 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %1 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @markAll(%struct.Env* noundef %0, %struct.AllocatorContext* noundef %1)
  %2 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @sweep(%struct.AllocatorContext* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Object* @allocate(%struct.AllocatorContext* noundef %context, %struct.Env* noundef %env) #0 {
entry:
  %retval = alloca %struct.Object*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %object_size = alloca i64, align 8
  %i = alloca i64, align 8
  %i8 = alloca i64, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store i64 16, i64* %object_size, align 8
  %0 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %gc_less_mode = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %0, i32 0, i32 0
  %1 = load i32, i32* %gc_less_mode, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %object_size, align 8
  %call = call noalias i8* @malloc(i64 noundef %2) #10
  %3 = bitcast i8* %call to %struct.Object*
  store %struct.Object* %3, %struct.Object** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %4, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %free_bitmap = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %5, i32 0, i32 3
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %free_bitmap, i64 0, i64 %6
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end7

if.then3:                                         ; preds = %for.body
  %8 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %free_bitmap4 = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %8, i32 0, i32 3
  %9 = load i64, i64* %i, align 8
  %arrayidx5 = getelementptr inbounds [50 x i8], [50 x i8]* %free_bitmap4, i64 0, i64 %9
  store i8 1, i8* %arrayidx5, align 1
  %10 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %memory_pool = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %10, i32 0, i32 2
  %11 = load %struct.Object*, %struct.Object** %memory_pool, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds %struct.Object, %struct.Object* %11, i64 %12
  store %struct.Object* %arrayidx6, %struct.Object** %retval, align 8
  br label %return

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %14 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %15 = load %struct.Env*, %struct.Env** %env.addr, align 8
  call void @gc(%struct.AllocatorContext* noundef %14, %struct.Env* noundef %15)
  store i64 0, i64* %i8, align 8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc24, %for.end
  %16 = load i64, i64* %i8, align 8
  %cmp10 = icmp ult i64 %16, 50
  br i1 %cmp10, label %for.body12, label %for.end26

for.body12:                                       ; preds = %for.cond9
  %17 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %free_bitmap13 = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %17, i32 0, i32 3
  %18 = load i64, i64* %i8, align 8
  %arrayidx14 = getelementptr inbounds [50 x i8], [50 x i8]* %free_bitmap13, i64 0, i64 %18
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.end23

if.then18:                                        ; preds = %for.body12
  %20 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %free_bitmap19 = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %20, i32 0, i32 3
  %21 = load i64, i64* %i8, align 8
  %arrayidx20 = getelementptr inbounds [50 x i8], [50 x i8]* %free_bitmap19, i64 0, i64 %21
  store i8 1, i8* %arrayidx20, align 1
  %22 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %memory_pool21 = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %22, i32 0, i32 2
  %23 = load %struct.Object*, %struct.Object** %memory_pool21, align 8
  %24 = load i64, i64* %i8, align 8
  %arrayidx22 = getelementptr inbounds %struct.Object, %struct.Object* %23, i64 %24
  store %struct.Object* %arrayidx22, %struct.Object** %retval, align 8
  br label %return

if.end23:                                         ; preds = %for.body12
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %25 = load i64, i64* %i8, align 8
  %inc25 = add i64 %25, 1
  store i64 %inc25, i64* %i8, align 8
  br label %for.cond9, !llvm.loop !21

for.end26:                                        ; preds = %for.cond9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

return:                                           ; preds = %if.then18, %if.then3, %if.then
  %27 = load %struct.Object*, %struct.Object** %retval, align 8
  ret %struct.Object* %27
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @boolVal(%struct.Object* noundef %obj) #0 {
entry:
  %retval = alloca i1, align 1
  %obj.addr = alloca %struct.Object*, align 8
  store %struct.Object* %obj, %struct.Object** %obj.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %3 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %3 to i32*
  %4 = load i32, i32* %bool_value, align 8
  %tobool = icmp ne i32 %4, 0
  store i1 %tobool, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 1
  %6 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %6, 4
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

if.else4:                                         ; preds = %if.else
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eq(%struct.Object* noundef %op1, %struct.Object* noundef %op2) #0 {
entry:
  %retval = alloca i32, align 4
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type2 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 1
  %5 = load i32, i32* %type2, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %6 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %7 = getelementptr inbounds %struct.Object, %struct.Object* %6, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %7 to i32*
  %8 = load i32, i32* %int_value, align 8
  %9 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %10 = getelementptr inbounds %struct.Object, %struct.Object* %9, i32 0, i32 2
  %int_value5 = bitcast %union.anon.1* %10 to i32*
  %11 = load i32, i32* %int_value5, align 8
  %cmp6 = icmp eq i32 %8, %11
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.else7:                                         ; preds = %if.else
  %12 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type8 = getelementptr inbounds %struct.Object, %struct.Object* %12, i32 0, i32 1
  %13 = load i32, i32* %type8, align 4
  %cmp9 = icmp eq i32 %13, 1
  br i1 %cmp9, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.else7
  %14 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %15 = getelementptr inbounds %struct.Object, %struct.Object* %14, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %15 to i8**
  %16 = load i8*, i8** %string_value, align 8
  %17 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %18 = getelementptr inbounds %struct.Object, %struct.Object* %17, i32 0, i32 2
  %string_value12 = bitcast %union.anon.1* %18 to i8**
  %19 = load i8*, i8** %string_value12, align 8
  %call = call i32 @strcmp(i8* noundef %16, i8* noundef %19) #12
  %cmp13 = icmp eq i32 %call, 0
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %retval, align 4
  br label %return

if.else15:                                        ; preds = %if.else7
  %20 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type16 = getelementptr inbounds %struct.Object, %struct.Object* %20, i32 0, i32 1
  %21 = load i32, i32* %type16, align 4
  %cmp17 = icmp eq i32 %21, 2
  br i1 %cmp17, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.else15
  %22 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %23 = getelementptr inbounds %struct.Object, %struct.Object* %22, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %23 to i32*
  %24 = load i32, i32* %bool_value, align 8
  %25 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %26 = getelementptr inbounds %struct.Object, %struct.Object* %25, i32 0, i32 2
  %bool_value20 = bitcast %union.anon.1* %26 to i32*
  %27 = load i32, i32* %bool_value20, align 8
  %cmp21 = icmp eq i32 %24, %27
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %retval, align 4
  br label %return

if.else23:                                        ; preds = %if.else15
  %28 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type24 = getelementptr inbounds %struct.Object, %struct.Object* %28, i32 0, i32 1
  %29 = load i32, i32* %type24, align 4
  %cmp25 = icmp eq i32 %29, 3
  br i1 %cmp25, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.else23
  %30 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %31 = getelementptr inbounds %struct.Object, %struct.Object* %30, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %31 to %struct.ConsCell**
  %32 = load %struct.ConsCell*, %struct.ConsCell** %list_value, align 8
  %33 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %34 = getelementptr inbounds %struct.Object, %struct.Object* %33, i32 0, i32 2
  %list_value28 = bitcast %union.anon.1* %34 to %struct.ConsCell**
  %35 = load %struct.ConsCell*, %struct.ConsCell** %list_value28, align 8
  %cmp29 = icmp eq %struct.ConsCell* %32, %35
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %retval, align 4
  br label %return

if.else31:                                        ; preds = %if.else23
  %36 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type32 = getelementptr inbounds %struct.Object, %struct.Object* %36, i32 0, i32 1
  %37 = load i32, i32* %type32, align 4
  %cmp33 = icmp eq i32 %37, 4
  br i1 %cmp33, label %if.then35, label %if.end

if.then35:                                        ; preds = %if.else31
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else31
  br label %if.end36

if.end36:                                         ; preds = %if.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  br label %if.end38

if.end38:                                         ; preds = %if.end37
  br label %if.end39

if.end39:                                         ; preds = %if.end38
  br label %if.end40

if.end40:                                         ; preds = %if.end39
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then35, %if.then27, %if.then19, %if.then11, %if.then4, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stringifyObject(%struct.Object* noundef %obj) #0 {
entry:
  %retval = alloca i8*, align 8
  %obj.addr = alloca %struct.Object*, align 8
  %str = alloca i8*, align 8
  %digits = alloca i32, align 4
  %str7 = alloca i8*, align 8
  %str17 = alloca i8*, align 8
  %str32 = alloca i8*, align 8
  %length = alloca i32, align 4
  %str44 = alloca i8*, align 8
  %current = alloca %struct.ConsCell*, align 8
  %serialized = alloca i8*, align 8
  %str79 = alloca i8*, align 8
  %str87 = alloca i8*, align 8
  store %struct.Object* %obj, %struct.Object** %obj.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %3 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %3 to i32*
  %4 = load i32, i32* %int_value, align 8
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call noalias i8* @malloc(i64 noundef 2) #10
  store i8* %call, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call3 = call i8* @strncpy(i8* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2) #10
  %6 = load i8*, i8** %str, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %8 = getelementptr inbounds %struct.Object, %struct.Object* %7, i32 0, i32 2
  %int_value4 = bitcast %union.anon.1* %8 to i32*
  %9 = load i32, i32* %int_value4, align 8
  %conv = sitofp i32 %9 to double
  %call5 = call double @log10(double noundef %conv) #10
  %conv6 = fptosi double %call5 to i32
  %add = add nsw i32 %conv6, 1
  store i32 %add, i32* %digits, align 4
  %10 = load i32, i32* %digits, align 4
  %add8 = add nsw i32 %10, 1
  %conv9 = sext i32 %add8 to i64
  %mul = mul i64 %conv9, 1
  %call10 = call noalias i8* @malloc(i64 noundef %mul) #10
  store i8* %call10, i8** %str7, align 8
  %11 = load i8*, i8** %str7, align 8
  %12 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %13 = getelementptr inbounds %struct.Object, %struct.Object* %12, i32 0, i32 2
  %int_value11 = bitcast %union.anon.1* %13 to i32*
  %14 = load i32, i32* %int_value11, align 8
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %14) #10
  %15 = load i8*, i8** %str7, align 8
  store i8* %15, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %16 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type13 = getelementptr inbounds %struct.Object, %struct.Object* %16, i32 0, i32 1
  %17 = load i32, i32* %type13, align 4
  %cmp14 = icmp eq i32 %17, 1
  br i1 %cmp14, label %if.then16, label %if.else27

if.then16:                                        ; preds = %if.else
  %18 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %19 = getelementptr inbounds %struct.Object, %struct.Object* %18, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %19 to i8**
  %20 = load i8*, i8** %string_value, align 8
  %call18 = call i64 @strlen(i8* noundef %20) #12
  %add19 = add i64 %call18, 1
  %mul20 = mul i64 %add19, 1
  %call21 = call noalias i8* @malloc(i64 noundef %mul20) #10
  store i8* %call21, i8** %str17, align 8
  %21 = load i8*, i8** %str17, align 8
  %22 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %23 = getelementptr inbounds %struct.Object, %struct.Object* %22, i32 0, i32 2
  %string_value22 = bitcast %union.anon.1* %23 to i8**
  %24 = load i8*, i8** %string_value22, align 8
  %25 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %26 = getelementptr inbounds %struct.Object, %struct.Object* %25, i32 0, i32 2
  %string_value23 = bitcast %union.anon.1* %26 to i8**
  %27 = load i8*, i8** %string_value23, align 8
  %call24 = call i64 @strlen(i8* noundef %27) #12
  %add25 = add i64 %call24, 1
  %call26 = call i8* @strncpy(i8* noundef %21, i8* noundef %24, i64 noundef %add25) #10
  %28 = load i8*, i8** %str17, align 8
  store i8* %28, i8** %retval, align 8
  br label %return

if.else27:                                        ; preds = %if.else
  %29 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type28 = getelementptr inbounds %struct.Object, %struct.Object* %29, i32 0, i32 1
  %30 = load i32, i32* %type28, align 4
  %cmp29 = icmp eq i32 %30, 2
  br i1 %cmp29, label %if.then31, label %if.else39

if.then31:                                        ; preds = %if.else27
  %call33 = call noalias i8* @malloc(i64 noundef 1) #10
  store i8* %call33, i8** %str32, align 8
  %31 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %32 = getelementptr inbounds %struct.Object, %struct.Object* %31, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %32 to i32*
  %33 = load i32, i32* %bool_value, align 8
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.then31
  %34 = load i8*, i8** %str32, align 8
  %call35 = call i8* @strncpy(i8* noundef %34, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 noundef 2) #10
  br label %if.end38

if.else36:                                        ; preds = %if.then31
  %35 = load i8*, i8** %str32, align 8
  %call37 = call i8* @strncpy(i8* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 noundef 2) #10
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then34
  %36 = load i8*, i8** %str32, align 8
  store i8* %36, i8** %retval, align 8
  br label %return

if.else39:                                        ; preds = %if.else27
  %37 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type40 = getelementptr inbounds %struct.Object, %struct.Object* %37, i32 0, i32 1
  %38 = load i32, i32* %type40, align 4
  %cmp41 = icmp eq i32 %38, 3
  br i1 %cmp41, label %if.then43, label %if.else74

if.then43:                                        ; preds = %if.else39
  store i32 2, i32* %length, align 4
  %39 = load i32, i32* %length, align 4
  %conv45 = sext i32 %39 to i64
  %add46 = add i64 %conv45, 1
  %call47 = call noalias i8* @malloc(i64 noundef %add46) #10
  store i8* %call47, i8** %str44, align 8
  %40 = load i8*, i8** %str44, align 8
  %41 = load i32, i32* %length, align 4
  %add48 = add nsw i32 %41, 1
  %conv49 = sext i32 %add48 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 %conv49, i1 false)
  %42 = load i8*, i8** %str44, align 8
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 0
  store i8 40, i8* %arrayidx, align 1
  %43 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %44 = getelementptr inbounds %struct.Object, %struct.Object* %43, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %44 to %struct.ConsCell**
  %45 = load %struct.ConsCell*, %struct.ConsCell** %list_value, align 8
  store %struct.ConsCell* %45, %struct.ConsCell** %current, align 8
  br label %while.body

while.body:                                       ; preds = %if.then43, %if.end69
  %46 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %46, i32 0, i32 1
  %47 = load %struct.Object*, %struct.Object** %car, align 8
  %call50 = call i8* @stringifyObject(%struct.Object* noundef %47)
  store i8* %call50, i8** %serialized, align 8
  %48 = load i8*, i8** %serialized, align 8
  %call51 = call i64 @strlen(i8* noundef %48) #12
  %49 = load i32, i32* %length, align 4
  %conv52 = sext i32 %49 to i64
  %add53 = add i64 %conv52, %call51
  %conv54 = trunc i64 %add53 to i32
  store i32 %conv54, i32* %length, align 4
  %50 = load i8*, i8** %str44, align 8
  %51 = load i32, i32* %length, align 4
  %add55 = add nsw i32 %51, 1
  %conv56 = sext i32 %add55 to i64
  %call57 = call i8* @realloc(i8* noundef %50, i64 noundef %conv56) #10
  store i8* %call57, i8** %str44, align 8
  %52 = load i8*, i8** %str44, align 8
  %53 = load i8*, i8** %serialized, align 8
  %54 = load i8*, i8** %serialized, align 8
  %call58 = call i64 @strlen(i8* noundef %54) #12
  %call59 = call i8* @strncat(i8* noundef %52, i8* noundef %53, i64 noundef %call58) #10
  %55 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %call60 = call i32 @isLastConsCell(%struct.ConsCell* noundef %55)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %while.body
  br label %while.end

if.else63:                                        ; preds = %while.body
  %56 = load i32, i32* %length, align 4
  %add64 = add nsw i32 %56, 1
  store i32 %add64, i32* %length, align 4
  %57 = load i8*, i8** %str44, align 8
  %58 = load i32, i32* %length, align 4
  %add65 = add nsw i32 %58, 1
  %conv66 = sext i32 %add65 to i64
  %call67 = call i8* @realloc(i8* noundef %57, i64 noundef %conv66) #10
  store i8* %call67, i8** %str44, align 8
  %59 = load i8*, i8** %str44, align 8
  %call68 = call i8* @strncat(i8* noundef %59, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64 noundef 1) #10
  br label %if.end69

if.end69:                                         ; preds = %if.else63
  %60 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %60, i32 0, i32 2
  %61 = load %struct.Object*, %struct.Object** %cdr, align 8
  %62 = getelementptr inbounds %struct.Object, %struct.Object* %61, i32 0, i32 2
  %list_value70 = bitcast %union.anon.1* %62 to %struct.ConsCell**
  %63 = load %struct.ConsCell*, %struct.ConsCell** %list_value70, align 8
  store %struct.ConsCell* %63, %struct.ConsCell** %current, align 8
  br label %while.body

while.end:                                        ; preds = %if.then62
  %64 = load i8*, i8** %str44, align 8
  %65 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %65, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx71 = getelementptr inbounds i8, i8* %64, i64 %idxprom
  store i8 41, i8* %arrayidx71, align 1
  %66 = load i8*, i8** %str44, align 8
  %67 = load i32, i32* %length, align 4
  %idxprom72 = sext i32 %67 to i64
  %arrayidx73 = getelementptr inbounds i8, i8* %66, i64 %idxprom72
  store i8 0, i8* %arrayidx73, align 1
  %68 = load i8*, i8** %str44, align 8
  store i8* %68, i8** %retval, align 8
  br label %return

if.else74:                                        ; preds = %if.else39
  %69 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type75 = getelementptr inbounds %struct.Object, %struct.Object* %69, i32 0, i32 1
  %70 = load i32, i32* %type75, align 4
  %cmp76 = icmp eq i32 %70, 4
  br i1 %cmp76, label %if.then78, label %if.else82

if.then78:                                        ; preds = %if.else74
  %call80 = call noalias i8* @malloc(i64 noundef 4) #10
  store i8* %call80, i8** %str79, align 8
  %71 = load i8*, i8** %str79, align 8
  %call81 = call i8* @strncpy(i8* noundef %71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i64 noundef 4) #10
  %72 = load i8*, i8** %str79, align 8
  store i8* %72, i8** %retval, align 8
  br label %return

if.else82:                                        ; preds = %if.else74
  %73 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type83 = getelementptr inbounds %struct.Object, %struct.Object* %73, i32 0, i32 1
  %74 = load i32, i32* %type83, align 4
  %cmp84 = icmp eq i32 %74, 5
  br i1 %cmp84, label %if.then86, label %if.else90

if.then86:                                        ; preds = %if.else82
  %call88 = call noalias i8* @malloc(i64 noundef 9) #10
  store i8* %call88, i8** %str87, align 8
  %75 = load i8*, i8** %str87, align 8
  %call89 = call i8* @strncpy(i8* noundef %75, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i64 noundef 10) #10
  %76 = load i8*, i8** %str87, align 8
  store i8* %76, i8** %retval, align 8
  br label %return

if.else90:                                        ; preds = %if.else82
  %77 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %type91 = getelementptr inbounds %struct.Object, %struct.Object* %77, i32 0, i32 1
  %78 = load i32, i32* %type91, align 4
  %call92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 noundef %78)
  call void @exit(i32 noundef 1) #13
  unreachable

return:                                           ; preds = %if.then86, %if.then78, %while.end, %if.end38, %if.then16, %if.end, %if.then2
  %79 = load i8*, i8** %retval, align 8
  ret i8* %79
}

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #6

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionAdd(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type3 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 1
  store i32 0, i32* %type3, align 4
  %5 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %6 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %6 to i32*
  %7 = load i32, i32* %int_value, align 8
  %8 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %9 = getelementptr inbounds %struct.Object, %struct.Object* %8, i32 0, i32 2
  %int_value4 = bitcast %union.anon.1* %9 to i32*
  %10 = load i32, i32* %int_value4, align 8
  %add = add nsw i32 %7, %10
  %11 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %12 = getelementptr inbounds %struct.Object, %struct.Object* %11, i32 0, i32 2
  %int_value5 = bitcast %union.anon.1* %12 to i32*
  store i32 %add, i32* %int_value5, align 8
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type6 = getelementptr inbounds %struct.Object, %struct.Object* %13, i32 0, i32 1
  %14 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %14, 1
  br i1 %cmp7, label %land.lhs.true8, label %if.else28

land.lhs.true8:                                   ; preds = %if.else
  %15 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type9 = getelementptr inbounds %struct.Object, %struct.Object* %15, i32 0, i32 1
  %16 = load i32, i32* %type9, align 4
  %cmp10 = icmp eq i32 %16, 1
  br i1 %cmp10, label %if.then11, label %if.else28

if.then11:                                        ; preds = %land.lhs.true8
  %17 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type12 = getelementptr inbounds %struct.Object, %struct.Object* %17, i32 0, i32 1
  store i32 1, i32* %type12, align 4
  %18 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %19 = getelementptr inbounds %struct.Object, %struct.Object* %18, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %19 to i8**
  %20 = load i8*, i8** %string_value, align 8
  %call = call i64 @strlen(i8* noundef %20) #12
  %21 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %22 = getelementptr inbounds %struct.Object, %struct.Object* %21, i32 0, i32 2
  %string_value13 = bitcast %union.anon.1* %22 to i8**
  %23 = load i8*, i8** %string_value13, align 8
  %call14 = call i64 @strlen(i8* noundef %23) #12
  %add15 = add i64 %call, %call14
  %add16 = add i64 %add15, 1
  %mul = mul i64 %add16, 1
  %call17 = call noalias i8* @malloc(i64 noundef %mul) #10
  %24 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %25 = getelementptr inbounds %struct.Object, %struct.Object* %24, i32 0, i32 2
  %string_value18 = bitcast %union.anon.1* %25 to i8**
  store i8* %call17, i8** %string_value18, align 8
  %26 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %27 = getelementptr inbounds %struct.Object, %struct.Object* %26, i32 0, i32 2
  %string_value19 = bitcast %union.anon.1* %27 to i8**
  %28 = load i8*, i8** %string_value19, align 8
  %29 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %30 = getelementptr inbounds %struct.Object, %struct.Object* %29, i32 0, i32 2
  %string_value20 = bitcast %union.anon.1* %30 to i8**
  %31 = load i8*, i8** %string_value20, align 8
  %32 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %33 = getelementptr inbounds %struct.Object, %struct.Object* %32, i32 0, i32 2
  %string_value21 = bitcast %union.anon.1* %33 to i8**
  %34 = load i8*, i8** %string_value21, align 8
  %call22 = call i64 @strlen(i8* noundef %34) #12
  %add23 = add i64 %call22, 1
  %call24 = call i8* @strncpy(i8* noundef %28, i8* noundef %31, i64 noundef %add23) #10
  %35 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %36 = getelementptr inbounds %struct.Object, %struct.Object* %35, i32 0, i32 2
  %string_value25 = bitcast %union.anon.1* %36 to i8**
  %37 = load i8*, i8** %string_value25, align 8
  %38 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %39 = getelementptr inbounds %struct.Object, %struct.Object* %38, i32 0, i32 2
  %string_value26 = bitcast %union.anon.1* %39 to i8**
  %40 = load i8*, i8** %string_value26, align 8
  %call27 = call i8* @strcat(i8* noundef %37, i8* noundef %40) #10
  br label %if.end

if.else28:                                        ; preds = %land.lhs.true8, %if.else
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %if.then11
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionSub(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type3 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 1
  store i32 0, i32* %type3, align 4
  %5 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %6 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %6 to i32*
  %7 = load i32, i32* %int_value, align 8
  %8 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %9 = getelementptr inbounds %struct.Object, %struct.Object* %8, i32 0, i32 2
  %int_value4 = bitcast %union.anon.1* %9 to i32*
  %10 = load i32, i32* %int_value4, align 8
  %sub = sub nsw i32 %7, %10
  %11 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %12 = getelementptr inbounds %struct.Object, %struct.Object* %11, i32 0, i32 2
  %int_value5 = bitcast %union.anon.1* %12 to i32*
  store i32 %sub, i32* %int_value5, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionMul(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type3 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 1
  store i32 0, i32* %type3, align 4
  %5 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %6 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %6 to i32*
  %7 = load i32, i32* %int_value, align 8
  %8 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %9 = getelementptr inbounds %struct.Object, %struct.Object* %8, i32 0, i32 2
  %int_value4 = bitcast %union.anon.1* %9 to i32*
  %10 = load i32, i32* %int_value4, align 8
  %mul = mul nsw i32 %7, %10
  %11 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %12 = getelementptr inbounds %struct.Object, %struct.Object* %11, i32 0, i32 2
  %int_value5 = bitcast %union.anon.1* %12 to i32*
  store i32 %mul, i32* %int_value5, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionDiv(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type3 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 1
  store i32 0, i32* %type3, align 4
  %5 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %6 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %6 to i32*
  %7 = load i32, i32* %int_value, align 8
  %8 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %9 = getelementptr inbounds %struct.Object, %struct.Object* %8, i32 0, i32 2
  %int_value4 = bitcast %union.anon.1* %9 to i32*
  %10 = load i32, i32* %int_value4, align 8
  %div = sdiv i32 %7, %10
  %11 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %12 = getelementptr inbounds %struct.Object, %struct.Object* %11, i32 0, i32 2
  %int_value5 = bitcast %union.anon.1* %12 to i32*
  store i32 %div, i32* %int_value5, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionMod(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type3 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 1
  store i32 0, i32* %type3, align 4
  %5 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %6 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %6 to i32*
  %7 = load i32, i32* %int_value, align 8
  %8 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %9 = getelementptr inbounds %struct.Object, %struct.Object* %8, i32 0, i32 2
  %int_value4 = bitcast %union.anon.1* %9 to i32*
  %10 = load i32, i32* %int_value4, align 8
  %rem = srem i32 %7, %10
  %11 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %12 = getelementptr inbounds %struct.Object, %struct.Object* %11, i32 0, i32 2
  %int_value5 = bitcast %union.anon.1* %12 to i32*
  store i32 %rem, i32* %int_value5, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionOr(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %call = call zeroext i1 @boolVal(%struct.Object* noundef %0)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %call1 = call zeroext i1 @boolVal(%struct.Object* noundef %1)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  store i32 2, i32* %type, align 4
  %3 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %4 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %4 to i32*
  store i32 1, i32* %bool_value, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type2 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 1
  store i32 2, i32* %type2, align 4
  %6 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %7 = getelementptr inbounds %struct.Object, %struct.Object* %6, i32 0, i32 2
  %bool_value3 = bitcast %union.anon.1* %7 to i32*
  store i32 0, i32* %bool_value3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionAnd(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %call = call zeroext i1 @boolVal(%struct.Object* noundef %0)
  br i1 %call, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %call1 = call zeroext i1 @boolVal(%struct.Object* noundef %1)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  store i32 2, i32* %type, align 4
  %3 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %4 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %4 to i32*
  store i32 1, i32* %bool_value, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type2 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 1
  store i32 2, i32* %type2, align 4
  %6 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %7 = getelementptr inbounds %struct.Object, %struct.Object* %6, i32 0, i32 2
  %bool_value3 = bitcast %union.anon.1* %7 to i32*
  store i32 0, i32* %bool_value3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionLt(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else9

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else9

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %5 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %5 to i32*
  %6 = load i32, i32* %int_value, align 8
  %7 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %8 = getelementptr inbounds %struct.Object, %struct.Object* %7, i32 0, i32 2
  %int_value3 = bitcast %union.anon.1* %8 to i32*
  %9 = load i32, i32* %int_value3, align 8
  %cmp4 = icmp slt i32 %6, %9
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %10 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type6 = getelementptr inbounds %struct.Object, %struct.Object* %10, i32 0, i32 1
  store i32 2, i32* %type6, align 4
  %11 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %12 = getelementptr inbounds %struct.Object, %struct.Object* %11, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %12 to i32*
  store i32 1, i32* %bool_value, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type7 = getelementptr inbounds %struct.Object, %struct.Object* %13, i32 0, i32 1
  store i32 2, i32* %type7, align 4
  %14 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %15 = getelementptr inbounds %struct.Object, %struct.Object* %14, i32 0, i32 2
  %bool_value8 = bitcast %union.anon.1* %15 to i32*
  store i32 0, i32* %bool_value8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end10

if.else9:                                         ; preds = %land.lhs.true, %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end10:                                         ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionGt(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else9

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else9

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %5 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %5 to i32*
  %6 = load i32, i32* %int_value, align 8
  %7 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %8 = getelementptr inbounds %struct.Object, %struct.Object* %7, i32 0, i32 2
  %int_value3 = bitcast %union.anon.1* %8 to i32*
  %9 = load i32, i32* %int_value3, align 8
  %cmp4 = icmp sgt i32 %6, %9
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %10 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type6 = getelementptr inbounds %struct.Object, %struct.Object* %10, i32 0, i32 1
  store i32 2, i32* %type6, align 4
  %11 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %12 = getelementptr inbounds %struct.Object, %struct.Object* %11, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %12 to i32*
  store i32 1, i32* %bool_value, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type7 = getelementptr inbounds %struct.Object, %struct.Object* %13, i32 0, i32 1
  store i32 2, i32* %type7, align 4
  %14 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %15 = getelementptr inbounds %struct.Object, %struct.Object* %14, i32 0, i32 2
  %bool_value8 = bitcast %union.anon.1* %15 to i32*
  store i32 0, i32* %bool_value8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end10

if.else9:                                         ; preds = %land.lhs.true, %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end10:                                         ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionEq(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %1 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %call = call i32 @eq(%struct.Object* noundef %0, %struct.Object* noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  store i32 2, i32* %type, align 4
  %3 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %4 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %4 to i32*
  store i32 1, i32* %bool_value, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 1
  store i32 2, i32* %type1, align 4
  %6 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %7 = getelementptr inbounds %struct.Object, %struct.Object* %6, i32 0, i32 2
  %bool_value2 = bitcast %union.anon.1* %7 to i32*
  store i32 0, i32* %bool_value2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionCar(%struct.Object* noundef %op, %struct.Object* noundef %evaluated) #0 {
entry:
  %op.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op, %struct.Object** %op.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %3 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %4 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %4 to %struct.ConsCell**
  %5 = load %struct.ConsCell*, %struct.ConsCell** %list_value, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %5, i32 0, i32 1
  %6 = load %struct.Object*, %struct.Object** %car, align 8
  %7 = bitcast %struct.Object* %2 to i8*
  %8 = bitcast %struct.Object* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionCdr(%struct.Object* noundef %op, %struct.Object* noundef %evaluated) #0 {
entry:
  %op.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op, %struct.Object** %op.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %3 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %4 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %4 to %struct.ConsCell**
  %5 = load %struct.ConsCell*, %struct.ConsCell** %list_value, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %5, i32 0, i32 2
  %6 = load %struct.Object*, %struct.Object** %cdr, align 8
  %7 = bitcast %struct.Object* %2 to i8*
  %8 = bitcast %struct.Object* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionCons(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated, %struct.Env* noundef %env, %struct.AllocatorContext* noundef %context) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %cdr_obj = alloca %struct.Object*, align 8
  %new_conscell = alloca %struct.ConsCell*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  store i32 3, i32* %type, align 4
  %call = call noalias i8* @malloc(i64 noundef 24) #10
  %1 = bitcast i8* %call to %struct.ConsCell*
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %3 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %3 to %struct.ConsCell**
  store %struct.ConsCell* %1, %struct.ConsCell** %list_value, align 8
  %4 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %5 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %6 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 2
  %list_value1 = bitcast %union.anon.1* %6 to %struct.ConsCell**
  %7 = load %struct.ConsCell*, %struct.ConsCell** %list_value1, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %7, i32 0, i32 1
  store %struct.Object* %4, %struct.Object** %car, align 8
  %8 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type2 = getelementptr inbounds %struct.Object, %struct.Object* %8, i32 0, i32 1
  %9 = load i32, i32* %type2, align 4
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %11 = getelementptr inbounds %struct.Object, %struct.Object* %10, i32 0, i32 2
  %list_value3 = bitcast %union.anon.1* %11 to %struct.ConsCell**
  %12 = load %struct.ConsCell*, %struct.ConsCell** %list_value3, align 8
  %type4 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %12, i32 0, i32 0
  store i32 0, i32* %type4, align 8
  %13 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %14 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %15 = getelementptr inbounds %struct.Object, %struct.Object* %14, i32 0, i32 2
  %list_value5 = bitcast %union.anon.1* %15 to %struct.ConsCell**
  %16 = load %struct.ConsCell*, %struct.ConsCell** %list_value5, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %16, i32 0, i32 2
  store %struct.Object* %13, %struct.Object** %cdr, align 8
  br label %if.end24

if.else:                                          ; preds = %entry
  %17 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type6 = getelementptr inbounds %struct.Object, %struct.Object* %17, i32 0, i32 1
  %18 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %18, 4
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %19 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %20 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %21 = getelementptr inbounds %struct.Object, %struct.Object* %20, i32 0, i32 2
  %list_value9 = bitcast %union.anon.1* %21 to %struct.ConsCell**
  %22 = load %struct.ConsCell*, %struct.ConsCell** %list_value9, align 8
  %cdr10 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %22, i32 0, i32 2
  store %struct.Object* %19, %struct.Object** %cdr10, align 8
  br label %if.end

if.else11:                                        ; preds = %if.else
  %23 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %24 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call12 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %23, %struct.Env* noundef %24)
  store %struct.Object* %call12, %struct.Object** %cdr_obj, align 8
  %25 = load %struct.Object*, %struct.Object** %cdr_obj, align 8
  %type13 = getelementptr inbounds %struct.Object, %struct.Object* %25, i32 0, i32 1
  store i32 3, i32* %type13, align 4
  %call14 = call noalias i8* @malloc(i64 noundef 24) #10
  %26 = bitcast i8* %call14 to %struct.ConsCell*
  store %struct.ConsCell* %26, %struct.ConsCell** %new_conscell, align 8
  %27 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %28 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %car15 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %28, i32 0, i32 1
  store %struct.Object* %27, %struct.Object** %car15, align 8
  %29 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %type16 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %29, i32 0, i32 0
  store i32 0, i32* %type16, align 8
  %30 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %31 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call17 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %30, %struct.Env* noundef %31)
  %32 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %cdr18 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %32, i32 0, i32 2
  store %struct.Object* %call17, %struct.Object** %cdr18, align 8
  %33 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %cdr19 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %33, i32 0, i32 2
  %34 = load %struct.Object*, %struct.Object** %cdr19, align 8
  %type20 = getelementptr inbounds %struct.Object, %struct.Object* %34, i32 0, i32 1
  store i32 4, i32* %type20, align 4
  %35 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %36 = load %struct.Object*, %struct.Object** %cdr_obj, align 8
  %37 = getelementptr inbounds %struct.Object, %struct.Object* %36, i32 0, i32 2
  %list_value21 = bitcast %union.anon.1* %37 to %struct.ConsCell**
  store %struct.ConsCell* %35, %struct.ConsCell** %list_value21, align 8
  %38 = load %struct.Object*, %struct.Object** %cdr_obj, align 8
  %39 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %40 = getelementptr inbounds %struct.Object, %struct.Object* %39, i32 0, i32 2
  %list_value22 = bitcast %union.anon.1* %40 to %struct.ConsCell**
  %41 = load %struct.ConsCell*, %struct.ConsCell** %list_value22, align 8
  %cdr23 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %41, i32 0, i32 2
  store %struct.Object* %38, %struct.Object** %cdr23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then8
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionNot(%struct.Object* noundef %op, %struct.Object* noundef %evaluated) #0 {
entry:
  %op.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.Object* %op, %struct.Object** %op.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  store i32 2, i32* %type1, align 4
  %3 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %4 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %4 to i32*
  %5 = load i32, i32* %bool_value, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %7 = getelementptr inbounds %struct.Object, %struct.Object* %6, i32 0, i32 2
  %bool_value3 = bitcast %union.anon.1* %7 to i32*
  store i32 0, i32* %bool_value3, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %8 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %9 = getelementptr inbounds %struct.Object, %struct.Object* %8, i32 0, i32 2
  %bool_value4 = bitcast %union.anon.1* %9 to i32*
  store i32 1, i32* %bool_value4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionSplit(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated, %struct.Env* noundef %env, %struct.AllocatorContext* noundef %context) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %current = alloca %struct.ConsCell*, align 8
  %i = alloca i64, align 8
  %new_conscell = alloca %struct.ConsCell*, align 8
  %current86 = alloca %struct.ConsCell*, align 8
  %token = alloca i8*, align 8
  %new_conscell93 = alloca %struct.ConsCell*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp ne i32 %3, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.33, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end5:                                          ; preds = %if.end
  %4 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %5 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %5 to i8**
  %6 = load i8*, i8** %string_value, align 8
  %call6 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i64 0, i64 0)) #12
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end62

if.then8:                                         ; preds = %if.end5
  %7 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type9 = getelementptr inbounds %struct.Object, %struct.Object* %7, i32 0, i32 1
  store i32 3, i32* %type9, align 4
  %call10 = call noalias i8* @malloc(i64 noundef 24) #10
  %8 = bitcast i8* %call10 to %struct.ConsCell*
  %9 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %10 = getelementptr inbounds %struct.Object, %struct.Object* %9, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %10 to %struct.ConsCell**
  store %struct.ConsCell* %8, %struct.ConsCell** %list_value, align 8
  %11 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %12 = getelementptr inbounds %struct.Object, %struct.Object* %11, i32 0, i32 2
  %list_value11 = bitcast %union.anon.1* %12 to %struct.ConsCell**
  %13 = load %struct.ConsCell*, %struct.ConsCell** %list_value11, align 8
  %type12 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %13, i32 0, i32 0
  store i32 0, i32* %type12, align 8
  %14 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %15 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call13 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %14, %struct.Env* noundef %15)
  %16 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %17 = getelementptr inbounds %struct.Object, %struct.Object* %16, i32 0, i32 2
  %list_value14 = bitcast %union.anon.1* %17 to %struct.ConsCell**
  %18 = load %struct.ConsCell*, %struct.ConsCell** %list_value14, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %18, i32 0, i32 1
  store %struct.Object* %call13, %struct.Object** %car, align 8
  %19 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %20 = getelementptr inbounds %struct.Object, %struct.Object* %19, i32 0, i32 2
  %list_value15 = bitcast %union.anon.1* %20 to %struct.ConsCell**
  %21 = load %struct.ConsCell*, %struct.ConsCell** %list_value15, align 8
  %car16 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %21, i32 0, i32 1
  %22 = load %struct.Object*, %struct.Object** %car16, align 8
  %type17 = getelementptr inbounds %struct.Object, %struct.Object* %22, i32 0, i32 1
  store i32 1, i32* %type17, align 4
  %call18 = call noalias i8* @malloc(i64 noundef 1) #10
  %23 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %24 = getelementptr inbounds %struct.Object, %struct.Object* %23, i32 0, i32 2
  %list_value19 = bitcast %union.anon.1* %24 to %struct.ConsCell**
  %25 = load %struct.ConsCell*, %struct.ConsCell** %list_value19, align 8
  %car20 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %25, i32 0, i32 1
  %26 = load %struct.Object*, %struct.Object** %car20, align 8
  %27 = getelementptr inbounds %struct.Object, %struct.Object* %26, i32 0, i32 2
  %string_value21 = bitcast %union.anon.1* %27 to i8**
  store i8* %call18, i8** %string_value21, align 8
  %28 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %29 = getelementptr inbounds %struct.Object, %struct.Object* %28, i32 0, i32 2
  %string_value22 = bitcast %union.anon.1* %29 to i8**
  %30 = load i8*, i8** %string_value22, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx, align 1
  %32 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %33 = getelementptr inbounds %struct.Object, %struct.Object* %32, i32 0, i32 2
  %list_value23 = bitcast %union.anon.1* %33 to %struct.ConsCell**
  %34 = load %struct.ConsCell*, %struct.ConsCell** %list_value23, align 8
  %car24 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %34, i32 0, i32 1
  %35 = load %struct.Object*, %struct.Object** %car24, align 8
  %36 = getelementptr inbounds %struct.Object, %struct.Object* %35, i32 0, i32 2
  %string_value25 = bitcast %union.anon.1* %36 to i8**
  %37 = load i8*, i8** %string_value25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %31, i8* %arrayidx26, align 1
  %38 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %39 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call27 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %38, %struct.Env* noundef %39)
  %40 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %41 = getelementptr inbounds %struct.Object, %struct.Object* %40, i32 0, i32 2
  %list_value28 = bitcast %union.anon.1* %41 to %struct.ConsCell**
  %42 = load %struct.ConsCell*, %struct.ConsCell** %list_value28, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %42, i32 0, i32 2
  store %struct.Object* %call27, %struct.Object** %cdr, align 8
  %43 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %44 = getelementptr inbounds %struct.Object, %struct.Object* %43, i32 0, i32 2
  %list_value29 = bitcast %union.anon.1* %44 to %struct.ConsCell**
  %45 = load %struct.ConsCell*, %struct.ConsCell** %list_value29, align 8
  %cdr30 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %45, i32 0, i32 2
  %46 = load %struct.Object*, %struct.Object** %cdr30, align 8
  %type31 = getelementptr inbounds %struct.Object, %struct.Object* %46, i32 0, i32 1
  store i32 4, i32* %type31, align 4
  %47 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %48 = getelementptr inbounds %struct.Object, %struct.Object* %47, i32 0, i32 2
  %list_value32 = bitcast %union.anon.1* %48 to %struct.ConsCell**
  %49 = load %struct.ConsCell*, %struct.ConsCell** %list_value32, align 8
  store %struct.ConsCell* %49, %struct.ConsCell** %current, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then8
  %50 = load i64, i64* %i, align 8
  %51 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %52 = getelementptr inbounds %struct.Object, %struct.Object* %51, i32 0, i32 2
  %string_value33 = bitcast %union.anon.1* %52 to i8**
  %53 = load i8*, i8** %string_value33, align 8
  %call34 = call i64 @strlen(i8* noundef %53) #12
  %cmp35 = icmp ult i64 %50, %call34
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call36 = call noalias i8* @malloc(i64 noundef 24) #10
  %54 = bitcast i8* %call36 to %struct.ConsCell*
  store %struct.ConsCell* %54, %struct.ConsCell** %new_conscell, align 8
  %55 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %type37 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %55, i32 0, i32 0
  store i32 0, i32* %type37, align 8
  %56 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %57 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call38 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %56, %struct.Env* noundef %57)
  %58 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %car39 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %58, i32 0, i32 1
  store %struct.Object* %call38, %struct.Object** %car39, align 8
  %59 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %car40 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %59, i32 0, i32 1
  %60 = load %struct.Object*, %struct.Object** %car40, align 8
  %type41 = getelementptr inbounds %struct.Object, %struct.Object* %60, i32 0, i32 1
  store i32 1, i32* %type41, align 4
  %call42 = call noalias i8* @malloc(i64 noundef 1) #10
  %61 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %car43 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %61, i32 0, i32 1
  %62 = load %struct.Object*, %struct.Object** %car43, align 8
  %63 = getelementptr inbounds %struct.Object, %struct.Object* %62, i32 0, i32 2
  %string_value44 = bitcast %union.anon.1* %63 to i8**
  store i8* %call42, i8** %string_value44, align 8
  %64 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %65 = getelementptr inbounds %struct.Object, %struct.Object* %64, i32 0, i32 2
  %string_value45 = bitcast %union.anon.1* %65 to i8**
  %66 = load i8*, i8** %string_value45, align 8
  %67 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %66, i64 %67
  %68 = load i8, i8* %arrayidx46, align 1
  %69 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %car47 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %69, i32 0, i32 1
  %70 = load %struct.Object*, %struct.Object** %car47, align 8
  %71 = getelementptr inbounds %struct.Object, %struct.Object* %70, i32 0, i32 2
  %string_value48 = bitcast %union.anon.1* %71 to i8**
  %72 = load i8*, i8** %string_value48, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %68, i8* %arrayidx49, align 1
  %73 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %74 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call50 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %73, %struct.Env* noundef %74)
  %75 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %cdr51 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %75, i32 0, i32 2
  store %struct.Object* %call50, %struct.Object** %cdr51, align 8
  %76 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %cdr52 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %76, i32 0, i32 2
  %77 = load %struct.Object*, %struct.Object** %cdr52, align 8
  %type53 = getelementptr inbounds %struct.Object, %struct.Object* %77, i32 0, i32 1
  store i32 4, i32* %type53, align 4
  %78 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %79 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call54 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %78, %struct.Env* noundef %79)
  %80 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr55 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %80, i32 0, i32 2
  store %struct.Object* %call54, %struct.Object** %cdr55, align 8
  %81 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr56 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %81, i32 0, i32 2
  %82 = load %struct.Object*, %struct.Object** %cdr56, align 8
  %type57 = getelementptr inbounds %struct.Object, %struct.Object* %82, i32 0, i32 1
  store i32 3, i32* %type57, align 4
  %83 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %84 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr58 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %84, i32 0, i32 2
  %85 = load %struct.Object*, %struct.Object** %cdr58, align 8
  %86 = getelementptr inbounds %struct.Object, %struct.Object* %85, i32 0, i32 2
  %list_value59 = bitcast %union.anon.1* %86 to %struct.ConsCell**
  store %struct.ConsCell* %83, %struct.ConsCell** %list_value59, align 8
  %87 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr60 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %87, i32 0, i32 2
  %88 = load %struct.Object*, %struct.Object** %cdr60, align 8
  %89 = getelementptr inbounds %struct.Object, %struct.Object* %88, i32 0, i32 2
  %list_value61 = bitcast %union.anon.1* %89 to %struct.ConsCell**
  %90 = load %struct.ConsCell*, %struct.ConsCell** %list_value61, align 8
  store %struct.ConsCell* %90, %struct.ConsCell** %current, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %91 = load i64, i64* %i, align 8
  %inc = add i64 %91, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %while.end

if.end62:                                         ; preds = %if.end5
  %92 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type63 = getelementptr inbounds %struct.Object, %struct.Object* %92, i32 0, i32 1
  store i32 3, i32* %type63, align 4
  %call64 = call noalias i8* @malloc(i64 noundef 24) #10
  %93 = bitcast i8* %call64 to %struct.ConsCell*
  %94 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %95 = getelementptr inbounds %struct.Object, %struct.Object* %94, i32 0, i32 2
  %list_value65 = bitcast %union.anon.1* %95 to %struct.ConsCell**
  store %struct.ConsCell* %93, %struct.ConsCell** %list_value65, align 8
  %96 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %97 = getelementptr inbounds %struct.Object, %struct.Object* %96, i32 0, i32 2
  %list_value66 = bitcast %union.anon.1* %97 to %struct.ConsCell**
  %98 = load %struct.ConsCell*, %struct.ConsCell** %list_value66, align 8
  %type67 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %98, i32 0, i32 0
  store i32 0, i32* %type67, align 8
  %99 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %100 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call68 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %99, %struct.Env* noundef %100)
  %101 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %102 = getelementptr inbounds %struct.Object, %struct.Object* %101, i32 0, i32 2
  %list_value69 = bitcast %union.anon.1* %102 to %struct.ConsCell**
  %103 = load %struct.ConsCell*, %struct.ConsCell** %list_value69, align 8
  %car70 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %103, i32 0, i32 1
  store %struct.Object* %call68, %struct.Object** %car70, align 8
  %104 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %105 = getelementptr inbounds %struct.Object, %struct.Object* %104, i32 0, i32 2
  %list_value71 = bitcast %union.anon.1* %105 to %struct.ConsCell**
  %106 = load %struct.ConsCell*, %struct.ConsCell** %list_value71, align 8
  %car72 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %106, i32 0, i32 1
  %107 = load %struct.Object*, %struct.Object** %car72, align 8
  %type73 = getelementptr inbounds %struct.Object, %struct.Object* %107, i32 0, i32 1
  store i32 1, i32* %type73, align 4
  %108 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %109 = getelementptr inbounds %struct.Object, %struct.Object* %108, i32 0, i32 2
  %string_value74 = bitcast %union.anon.1* %109 to i8**
  %110 = load i8*, i8** %string_value74, align 8
  %111 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %112 = getelementptr inbounds %struct.Object, %struct.Object* %111, i32 0, i32 2
  %string_value75 = bitcast %union.anon.1* %112 to i8**
  %113 = load i8*, i8** %string_value75, align 8
  %call76 = call i8* @strtok(i8* noundef %110, i8* noundef %113) #10
  %114 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %115 = getelementptr inbounds %struct.Object, %struct.Object* %114, i32 0, i32 2
  %list_value77 = bitcast %union.anon.1* %115 to %struct.ConsCell**
  %116 = load %struct.ConsCell*, %struct.ConsCell** %list_value77, align 8
  %car78 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %116, i32 0, i32 1
  %117 = load %struct.Object*, %struct.Object** %car78, align 8
  %118 = getelementptr inbounds %struct.Object, %struct.Object* %117, i32 0, i32 2
  %string_value79 = bitcast %union.anon.1* %118 to i8**
  store i8* %call76, i8** %string_value79, align 8
  %119 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %120 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call80 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %119, %struct.Env* noundef %120)
  %121 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %122 = getelementptr inbounds %struct.Object, %struct.Object* %121, i32 0, i32 2
  %list_value81 = bitcast %union.anon.1* %122 to %struct.ConsCell**
  %123 = load %struct.ConsCell*, %struct.ConsCell** %list_value81, align 8
  %cdr82 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %123, i32 0, i32 2
  store %struct.Object* %call80, %struct.Object** %cdr82, align 8
  %124 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %125 = getelementptr inbounds %struct.Object, %struct.Object* %124, i32 0, i32 2
  %list_value83 = bitcast %union.anon.1* %125 to %struct.ConsCell**
  %126 = load %struct.ConsCell*, %struct.ConsCell** %list_value83, align 8
  %cdr84 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %126, i32 0, i32 2
  %127 = load %struct.Object*, %struct.Object** %cdr84, align 8
  %type85 = getelementptr inbounds %struct.Object, %struct.Object* %127, i32 0, i32 1
  store i32 4, i32* %type85, align 4
  %128 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %129 = getelementptr inbounds %struct.Object, %struct.Object* %128, i32 0, i32 2
  %list_value87 = bitcast %union.anon.1* %129 to %struct.ConsCell**
  %130 = load %struct.ConsCell*, %struct.ConsCell** %list_value87, align 8
  store %struct.ConsCell* %130, %struct.ConsCell** %current86, align 8
  br label %while.body

while.body:                                       ; preds = %if.end62, %if.end92
  %131 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %132 = getelementptr inbounds %struct.Object, %struct.Object* %131, i32 0, i32 2
  %string_value88 = bitcast %union.anon.1* %132 to i8**
  %133 = load i8*, i8** %string_value88, align 8
  %call89 = call i8* @strtok(i8* noundef null, i8* noundef %133) #10
  store i8* %call89, i8** %token, align 8
  %134 = load i8*, i8** %token, align 8
  %cmp90 = icmp eq i8* %134, null
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %while.body
  br label %while.end

if.end92:                                         ; preds = %while.body
  %call94 = call noalias i8* @malloc(i64 noundef 24) #10
  %135 = bitcast i8* %call94 to %struct.ConsCell*
  store %struct.ConsCell* %135, %struct.ConsCell** %new_conscell93, align 8
  %136 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell93, align 8
  %type95 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %136, i32 0, i32 0
  store i32 0, i32* %type95, align 8
  %137 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %138 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call96 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %137, %struct.Env* noundef %138)
  %139 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell93, align 8
  %car97 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %139, i32 0, i32 1
  store %struct.Object* %call96, %struct.Object** %car97, align 8
  %140 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell93, align 8
  %car98 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %140, i32 0, i32 1
  %141 = load %struct.Object*, %struct.Object** %car98, align 8
  %type99 = getelementptr inbounds %struct.Object, %struct.Object* %141, i32 0, i32 1
  store i32 1, i32* %type99, align 4
  %142 = load i8*, i8** %token, align 8
  %143 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell93, align 8
  %car100 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %143, i32 0, i32 1
  %144 = load %struct.Object*, %struct.Object** %car100, align 8
  %145 = getelementptr inbounds %struct.Object, %struct.Object* %144, i32 0, i32 2
  %string_value101 = bitcast %union.anon.1* %145 to i8**
  store i8* %142, i8** %string_value101, align 8
  %146 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %147 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call102 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %146, %struct.Env* noundef %147)
  %148 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell93, align 8
  %cdr103 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %148, i32 0, i32 2
  store %struct.Object* %call102, %struct.Object** %cdr103, align 8
  %149 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell93, align 8
  %cdr104 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %149, i32 0, i32 2
  %150 = load %struct.Object*, %struct.Object** %cdr104, align 8
  %type105 = getelementptr inbounds %struct.Object, %struct.Object* %150, i32 0, i32 1
  store i32 4, i32* %type105, align 4
  %151 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %152 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call106 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %151, %struct.Env* noundef %152)
  %153 = load %struct.ConsCell*, %struct.ConsCell** %current86, align 8
  %cdr107 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %153, i32 0, i32 2
  store %struct.Object* %call106, %struct.Object** %cdr107, align 8
  %154 = load %struct.ConsCell*, %struct.ConsCell** %current86, align 8
  %cdr108 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %154, i32 0, i32 2
  %155 = load %struct.Object*, %struct.Object** %cdr108, align 8
  %type109 = getelementptr inbounds %struct.Object, %struct.Object* %155, i32 0, i32 1
  store i32 3, i32* %type109, align 4
  %156 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell93, align 8
  %157 = load %struct.ConsCell*, %struct.ConsCell** %current86, align 8
  %cdr110 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %157, i32 0, i32 2
  %158 = load %struct.Object*, %struct.Object** %cdr110, align 8
  %159 = getelementptr inbounds %struct.Object, %struct.Object* %158, i32 0, i32 2
  %list_value111 = bitcast %union.anon.1* %159 to %struct.ConsCell**
  store %struct.ConsCell* %156, %struct.ConsCell** %list_value111, align 8
  %160 = load %struct.ConsCell*, %struct.ConsCell** %current86, align 8
  %cdr112 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %160, i32 0, i32 2
  %161 = load %struct.Object*, %struct.Object** %cdr112, align 8
  %162 = getelementptr inbounds %struct.Object, %struct.Object* %161, i32 0, i32 2
  %list_value113 = bitcast %union.anon.1* %162 to %struct.ConsCell**
  %163 = load %struct.ConsCell*, %struct.ConsCell** %list_value113, align 8
  store %struct.ConsCell* %163, %struct.ConsCell** %current86, align 8
  br label %while.body

while.end:                                        ; preds = %for.end, %if.then91
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionListRef(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %index = alloca i32, align 4
  %current = alloca %struct.ConsCell*, align 8
  %i = alloca i32, align 4
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end5:                                          ; preds = %if.end
  %4 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %5 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %5 to i32*
  %6 = load i32, i32* %int_value, align 8
  store i32 %6, i32* %index, align 4
  %7 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %8 = getelementptr inbounds %struct.Object, %struct.Object* %7, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %8 to %struct.ConsCell**
  %9 = load %struct.ConsCell*, %struct.ConsCell** %list_value, align 8
  store %struct.ConsCell* %9, %struct.ConsCell** %current, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %index, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %12, i32 0, i32 2
  %13 = load %struct.Object*, %struct.Object** %cdr, align 8
  %type7 = getelementptr inbounds %struct.Object, %struct.Object* %13, i32 0, i32 1
  %14 = load i32, i32* %type7, align 4
  %cmp8 = icmp eq i32 %14, 4
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %for.body
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end11:                                         ; preds = %for.body
  %15 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr12 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %15, i32 0, i32 2
  %16 = load %struct.Object*, %struct.Object** %cdr12, align 8
  %17 = getelementptr inbounds %struct.Object, %struct.Object* %16, i32 0, i32 2
  %list_value13 = bitcast %union.anon.1* %17 to %struct.ConsCell**
  %18 = load %struct.ConsCell*, %struct.ConsCell** %list_value13, align 8
  store %struct.ConsCell* %18, %struct.ConsCell** %current, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %20 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %21 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %21, i32 0, i32 1
  %22 = load %struct.Object*, %struct.Object** %car, align 8
  %23 = bitcast %struct.Object* %20 to i8*
  %24 = bitcast %struct.Object* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionRemoveWhitespaces(%struct.Object* noundef %op1, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %str = alloca i8*, align 8
  %new_str = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %3 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %3 to i8**
  %4 = load i8*, i8** %string_value, align 8
  store i8* %4, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call1 = call i64 @strlen(i8* noundef %5) #12
  %add = add i64 %call1, 1
  %mul = mul i64 1, %add
  %call2 = call noalias i8* @malloc(i64 noundef %mul) #10
  store i8* %call2, i8** %new_str, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end
  %6 = load i8*, i8** %str, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i16** @__ctype_b_loc() #11
  %9 = load i16*, i16** %call3, align 8
  %10 = load i8*, i8** %str, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  %12 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %12 to i32
  %idxprom6 = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds i16, i16* %9, i64 %idxprom6
  %13 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %13 to i32
  %and = and i32 %conv8, 8192
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %while.body
  %14 = load i8*, i8** %str, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %16 = load i8, i8* %arrayidx12, align 1
  %17 = load i8*, i8** %new_str, align 8
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %idxprom13
  store i8 %16, i8* %arrayidx14, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %while.body
  %19 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, i32* %i, align 4
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %20 = load i8*, i8** %new_str, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %20, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1
  %22 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type19 = getelementptr inbounds %struct.Object, %struct.Object* %22, i32 0, i32 1
  store i32 1, i32* %type19, align 4
  %23 = load i8*, i8** %new_str, align 8
  %24 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %25 = getelementptr inbounds %struct.Object, %struct.Object* %24, i32 0, i32 2
  %string_value20 = bitcast %union.anon.1* %25 to i8**
  store i8* %23, i8** %string_value20, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionPop(%struct.Object* noundef %op, %struct.Object* noundef %evaluated) #0 {
entry:
  %op.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %current = alloca %struct.ConsCell*, align 8
  %prev = alloca %struct.ConsCell*, align 8
  store %struct.Object* %op, %struct.Object** %op.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  store i32 4, i32* %type1, align 4
  br label %while.end

if.end:                                           ; preds = %entry
  %3 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type2 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 1
  %4 = load i32, i32* %type2, align 4
  %cmp3 = icmp ne i32 %4, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end5:                                          ; preds = %if.end
  %5 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %6 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %6 to %struct.ConsCell**
  %7 = load %struct.ConsCell*, %struct.ConsCell** %list_value, align 8
  store %struct.ConsCell* %7, %struct.ConsCell** %current, align 8
  store %struct.ConsCell* null, %struct.ConsCell** %prev, align 8
  br label %while.body

while.body:                                       ; preds = %if.end5, %if.end15
  %8 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %call6 = call i32 @isLastConsCell(%struct.ConsCell* noundef %8)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end15

if.then7:                                         ; preds = %while.body
  %9 = load %struct.ConsCell*, %struct.ConsCell** %prev, align 8
  %cmp8 = icmp eq %struct.ConsCell* %9, null
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  %10 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %11 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %11, i32 0, i32 1
  %12 = load %struct.Object*, %struct.Object** %car, align 8
  %13 = bitcast %struct.Object* %10 to i8*
  %14 = bitcast %struct.Object* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  br label %if.end14

if.else:                                          ; preds = %if.then7
  %15 = load %struct.ConsCell*, %struct.ConsCell** %prev, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %15, i32 0, i32 2
  %16 = load %struct.Object*, %struct.Object** %cdr, align 8
  %type10 = getelementptr inbounds %struct.Object, %struct.Object* %16, i32 0, i32 1
  store i32 4, i32* %type10, align 4
  %17 = load %struct.ConsCell*, %struct.ConsCell** %prev, align 8
  %cdr11 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %17, i32 0, i32 2
  %18 = load %struct.Object*, %struct.Object** %cdr11, align 8
  %19 = getelementptr inbounds %struct.Object, %struct.Object* %18, i32 0, i32 2
  %list_value12 = bitcast %union.anon.1* %19 to %struct.ConsCell**
  store %struct.ConsCell* null, %struct.ConsCell** %list_value12, align 8
  %20 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %21 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %car13 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %21, i32 0, i32 1
  %22 = load %struct.Object*, %struct.Object** %car13, align 8
  %23 = bitcast %struct.Object* %20 to i8*
  %24 = bitcast %struct.Object* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  br label %while.end

if.end15:                                         ; preds = %while.body
  %25 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  store %struct.ConsCell* %25, %struct.ConsCell** %prev, align 8
  %26 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr16 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %26, i32 0, i32 2
  %27 = load %struct.Object*, %struct.Object** %cdr16, align 8
  %28 = getelementptr inbounds %struct.Object, %struct.Object* %27, i32 0, i32 2
  %list_value17 = bitcast %union.anon.1* %28 to %struct.ConsCell**
  %29 = load %struct.ConsCell*, %struct.ConsCell** %list_value17, align 8
  store %struct.ConsCell* %29, %struct.ConsCell** %current, align 8
  br label %while.body

while.end:                                        ; preds = %if.then, %if.end14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionPush(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated, %struct.Env* noundef %env, %struct.AllocatorContext* noundef %context) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %i = alloca i32, align 4
  %new_list = alloca %struct.Object*, align 8
  %current = alloca %struct.ConsCell*, align 8
  %new_conscell = alloca %struct.ConsCell*, align 8
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %3 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %4 = bitcast %struct.Object* %2 to i8*
  %5 = bitcast %struct.Object* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings = getelementptr inbounds %struct.Env, %struct.Env* %6, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings, i64 0, i64 %idxprom
  %symbol_name = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx, i32 0, i32 0
  %8 = load i8*, i8** %symbol_name, align 8
  %cmp1 = icmp ne i8* %8, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings2 = getelementptr inbounds %struct.Env, %struct.Env* %9, i32 0, i32 0
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings2, i64 0, i64 %idxprom3
  %value = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx4, i32 0, i32 1
  %11 = load %struct.Object*, %struct.Object** %value, align 8
  %12 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %cmp5 = icmp eq %struct.Object* %11, %12
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %13 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %14 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %13, %struct.Env* noundef %14)
  store %struct.Object* %call, %struct.Object** %new_list, align 8
  %15 = load %struct.Object*, %struct.Object** %new_list, align 8
  %type7 = getelementptr inbounds %struct.Object, %struct.Object* %15, i32 0, i32 1
  store i32 3, i32* %type7, align 4
  %call8 = call noalias i8* @malloc(i64 noundef 24) #10
  %16 = bitcast i8* %call8 to %struct.ConsCell*
  %17 = load %struct.Object*, %struct.Object** %new_list, align 8
  %18 = getelementptr inbounds %struct.Object, %struct.Object* %17, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %18 to %struct.ConsCell**
  store %struct.ConsCell* %16, %struct.ConsCell** %list_value, align 8
  %19 = load %struct.Object*, %struct.Object** %new_list, align 8
  %20 = getelementptr inbounds %struct.Object, %struct.Object* %19, i32 0, i32 2
  %list_value9 = bitcast %union.anon.1* %20 to %struct.ConsCell**
  %21 = load %struct.ConsCell*, %struct.ConsCell** %list_value9, align 8
  %type10 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %21, i32 0, i32 0
  store i32 0, i32* %type10, align 8
  %22 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %23 = load %struct.Object*, %struct.Object** %new_list, align 8
  %24 = getelementptr inbounds %struct.Object, %struct.Object* %23, i32 0, i32 2
  %list_value11 = bitcast %union.anon.1* %24 to %struct.ConsCell**
  %25 = load %struct.ConsCell*, %struct.ConsCell** %list_value11, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %25, i32 0, i32 1
  store %struct.Object* %22, %struct.Object** %car, align 8
  %26 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %27 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call12 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %26, %struct.Env* noundef %27)
  %28 = load %struct.Object*, %struct.Object** %new_list, align 8
  %29 = getelementptr inbounds %struct.Object, %struct.Object* %28, i32 0, i32 2
  %list_value13 = bitcast %union.anon.1* %29 to %struct.ConsCell**
  %30 = load %struct.ConsCell*, %struct.ConsCell** %list_value13, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %30, i32 0, i32 2
  store %struct.Object* %call12, %struct.Object** %cdr, align 8
  %31 = load %struct.Object*, %struct.Object** %new_list, align 8
  %32 = getelementptr inbounds %struct.Object, %struct.Object* %31, i32 0, i32 2
  %list_value14 = bitcast %union.anon.1* %32 to %struct.ConsCell**
  %33 = load %struct.ConsCell*, %struct.ConsCell** %list_value14, align 8
  %cdr15 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %33, i32 0, i32 2
  %34 = load %struct.Object*, %struct.Object** %cdr15, align 8
  %type16 = getelementptr inbounds %struct.Object, %struct.Object* %34, i32 0, i32 1
  store i32 4, i32* %type16, align 4
  %35 = load %struct.Object*, %struct.Object** %new_list, align 8
  %36 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings17 = getelementptr inbounds %struct.Env, %struct.Env* %36, i32 0, i32 0
  %37 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %37 to i64
  %arrayidx19 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings17, i64 0, i64 %idxprom18
  %value20 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx19, i32 0, i32 1
  store %struct.Object* %35, %struct.Object** %value20, align 8
  br label %while.end

if.end:                                           ; preds = %while.body
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %if.then6, %while.cond
  br label %return

if.end21:                                         ; preds = %entry
  %39 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type22 = getelementptr inbounds %struct.Object, %struct.Object* %39, i32 0, i32 1
  %40 = load i32, i32* %type22, align 4
  %cmp23 = icmp ne i32 %40, 3
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end26:                                         ; preds = %if.end21
  %41 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %42 = getelementptr inbounds %struct.Object, %struct.Object* %41, i32 0, i32 2
  %list_value27 = bitcast %union.anon.1* %42 to %struct.ConsCell**
  %43 = load %struct.ConsCell*, %struct.ConsCell** %list_value27, align 8
  store %struct.ConsCell* %43, %struct.ConsCell** %current, align 8
  br label %while.body29

while.body29:                                     ; preds = %if.end26, %if.end43
  %44 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %call30 = call i32 @isLastConsCell(%struct.ConsCell* noundef %44)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.then31, label %if.end43

if.then31:                                        ; preds = %while.body29
  %call32 = call noalias i8* @malloc(i64 noundef 24) #10
  %45 = bitcast i8* %call32 to %struct.ConsCell*
  store %struct.ConsCell* %45, %struct.ConsCell** %new_conscell, align 8
  %46 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %type33 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %46, i32 0, i32 0
  store i32 0, i32* %type33, align 8
  %47 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %48 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %car34 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %48, i32 0, i32 1
  store %struct.Object* %47, %struct.Object** %car34, align 8
  %49 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %50 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call35 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %49, %struct.Env* noundef %50)
  %51 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %cdr36 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %51, i32 0, i32 2
  store %struct.Object* %call35, %struct.Object** %cdr36, align 8
  %52 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %cdr37 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %52, i32 0, i32 2
  %53 = load %struct.Object*, %struct.Object** %cdr37, align 8
  %type38 = getelementptr inbounds %struct.Object, %struct.Object* %53, i32 0, i32 1
  store i32 4, i32* %type38, align 4
  %54 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr39 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %54, i32 0, i32 2
  %55 = load %struct.Object*, %struct.Object** %cdr39, align 8
  %type40 = getelementptr inbounds %struct.Object, %struct.Object* %55, i32 0, i32 1
  store i32 3, i32* %type40, align 4
  %56 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %57 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr41 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %57, i32 0, i32 2
  %58 = load %struct.Object*, %struct.Object** %cdr41, align 8
  %59 = getelementptr inbounds %struct.Object, %struct.Object* %58, i32 0, i32 2
  %list_value42 = bitcast %union.anon.1* %59 to %struct.ConsCell**
  store %struct.ConsCell* %56, %struct.ConsCell** %list_value42, align 8
  br label %while.end46

if.end43:                                         ; preds = %while.body29
  %60 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr44 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %60, i32 0, i32 2
  %61 = load %struct.Object*, %struct.Object** %cdr44, align 8
  %62 = getelementptr inbounds %struct.Object, %struct.Object* %61, i32 0, i32 2
  %list_value45 = bitcast %union.anon.1* %62 to %struct.ConsCell**
  %63 = load %struct.ConsCell*, %struct.ConsCell** %list_value45, align 8
  store %struct.ConsCell* %63, %struct.ConsCell** %current, align 8
  br label %while.body29

while.end46:                                      ; preds = %if.then31
  %64 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %65 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %66 = bitcast %struct.Object* %64 to i8*
  %67 = bitcast %struct.Object* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  br label %return

return:                                           ; preds = %while.end46, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionLength(%struct.Object* noundef %op, %struct.Object* noundef %evaluated) #0 {
entry:
  %op.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %length = alloca i32, align 4
  %current = alloca %struct.ConsCell*, align 8
  store %struct.Object* %op, %struct.Object** %op.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  store i32 0, i32* %type1, align 4
  %3 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %4 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %4 to i32*
  store i32 0, i32* %int_value, align 8
  br label %if.end19

if.end:                                           ; preds = %entry
  %5 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type2 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 1
  %6 = load i32, i32* %type2, align 4
  %cmp3 = icmp eq i32 %6, 3
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %length, align 4
  %7 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %8 = getelementptr inbounds %struct.Object, %struct.Object* %7, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %8 to %struct.ConsCell**
  %9 = load %struct.ConsCell*, %struct.ConsCell** %list_value, align 8
  store %struct.ConsCell* %9, %struct.ConsCell** %current, align 8
  br label %while.body

while.body:                                       ; preds = %if.then4, %if.end6
  %10 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %call = call i32 @isLastConsCell(%struct.ConsCell* noundef %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  br label %while.end

if.end6:                                          ; preds = %while.body
  %11 = load i32, i32* %length, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %length, align 4
  %12 = load %struct.ConsCell*, %struct.ConsCell** %current, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %12, i32 0, i32 2
  %13 = load %struct.Object*, %struct.Object** %cdr, align 8
  %14 = getelementptr inbounds %struct.Object, %struct.Object* %13, i32 0, i32 2
  %list_value7 = bitcast %union.anon.1* %14 to %struct.ConsCell**
  %15 = load %struct.ConsCell*, %struct.ConsCell** %list_value7, align 8
  store %struct.ConsCell* %15, %struct.ConsCell** %current, align 8
  br label %while.body

while.end:                                        ; preds = %if.then5
  %16 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type8 = getelementptr inbounds %struct.Object, %struct.Object* %16, i32 0, i32 1
  store i32 0, i32* %type8, align 4
  %17 = load i32, i32* %length, align 4
  %18 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %19 = getelementptr inbounds %struct.Object, %struct.Object* %18, i32 0, i32 2
  %int_value9 = bitcast %union.anon.1* %19 to i32*
  store i32 %17, i32* %int_value9, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end
  %20 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type10 = getelementptr inbounds %struct.Object, %struct.Object* %20, i32 0, i32 1
  %21 = load i32, i32* %type10, align 4
  %cmp11 = icmp eq i32 %21, 1
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else
  %22 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type13 = getelementptr inbounds %struct.Object, %struct.Object* %22, i32 0, i32 1
  store i32 0, i32* %type13, align 4
  %23 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %24 = getelementptr inbounds %struct.Object, %struct.Object* %23, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %24 to i8**
  %25 = load i8*, i8** %string_value, align 8
  %call14 = call i64 @strlen(i8* noundef %25) #12
  %conv = trunc i64 %call14 to i32
  %26 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %27 = getelementptr inbounds %struct.Object, %struct.Object* %26, i32 0, i32 2
  %int_value15 = bitcast %union.anon.1* %27 to i32*
  store i32 %conv, i32* %int_value15, align 8
  br label %if.end18

if.else16:                                        ; preds = %if.else
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.41, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end18:                                         ; preds = %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.end18, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionIsIntString(%struct.Object* noundef %op, %struct.Object* noundef %evaluated) #0 {
entry:
  %op.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.Object* %op, %struct.Object** %op.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %3 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %3 to i8**
  %4 = load i8*, i8** %string_value, align 8
  store i8* %4, i8** %str, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load i8*, i8** %str, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #11
  %8 = load i16*, i16** %call, align 8
  %9 = load i8*, i8** %str, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 %idxprom1
  %11 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %11 to i32
  %idxprom3 = sext i32 %conv to i64
  %arrayidx4 = getelementptr inbounds i16, i16* %8, i64 %idxprom3
  %12 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %12 to i32
  %and = and i32 %conv5, 2048
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.end, label %if.then7

if.then7:                                         ; preds = %while.body
  %13 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type8 = getelementptr inbounds %struct.Object, %struct.Object* %13, i32 0, i32 1
  store i32 2, i32* %type8, align 4
  %14 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %15 = getelementptr inbounds %struct.Object, %struct.Object* %14, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %15 to i32*
  store i32 0, i32* %bool_value, align 8
  br label %if.end13

if.end:                                           ; preds = %while.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %17 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type9 = getelementptr inbounds %struct.Object, %struct.Object* %17, i32 0, i32 1
  store i32 2, i32* %type9, align 4
  %18 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %19 = getelementptr inbounds %struct.Object, %struct.Object* %18, i32 0, i32 2
  %bool_value10 = bitcast %union.anon.1* %19 to i32*
  store i32 1, i32* %bool_value10, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  %20 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type11 = getelementptr inbounds %struct.Object, %struct.Object* %20, i32 0, i32 1
  store i32 2, i32* %type11, align 4
  %21 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %22 = getelementptr inbounds %struct.Object, %struct.Object* %21, i32 0, i32 2
  %bool_value12 = bitcast %union.anon.1* %22 to i32*
  store i32 0, i32* %bool_value12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.else, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionParseInt(%struct.Object* noundef %op, %struct.Object* noundef %evaluated) #0 {
entry:
  %op.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.Object* %op, %struct.Object** %op.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op.addr, align 8
  %3 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %3 to i8**
  %4 = load i8*, i8** %string_value, align 8
  store i8* %4, i8** %str, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %5 = load i8*, i8** %str, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i16** @__ctype_b_loc() #11
  %8 = load i16*, i16** %call1, align 8
  %9 = load i8*, i8** %str, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 %idxprom2
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %11 to i32
  %idxprom4 = sext i32 %conv to i64
  %arrayidx5 = getelementptr inbounds i16, i16* %8, i64 %idxprom4
  %12 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %12 to i32
  %and = and i32 %conv6, 2048
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %while.body
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.43, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end10:                                         ; preds = %while.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  %14 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type11 = getelementptr inbounds %struct.Object, %struct.Object* %14, i32 0, i32 1
  store i32 0, i32* %type11, align 4
  %15 = load i8*, i8** %str, align 8
  %call12 = call i32 @atoi(i8* noundef %15) #12
  %16 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %17 = getelementptr inbounds %struct.Object, %struct.Object* %16, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %17 to i32*
  store i32 %call12, i32* %int_value, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @definedFunctionStringRef(%struct.Object* noundef %op1, %struct.Object* noundef %op2, %struct.Object* noundef %evaluated) #0 {
entry:
  %op1.addr = alloca %struct.Object*, align 8
  %op2.addr = alloca %struct.Object*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %index = alloca i32, align 4
  store %struct.Object* %op1, %struct.Object** %op1.addr, align 8
  store %struct.Object* %op2, %struct.Object** %op2.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.44, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end5:                                          ; preds = %if.end
  %4 = load %struct.Object*, %struct.Object** %op2.addr, align 8
  %5 = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 2
  %int_value = bitcast %union.anon.1* %5 to i32*
  %6 = load i32, i32* %int_value, align 8
  store i32 %6, i32* %index, align 4
  %7 = load i32, i32* %index, align 4
  %cmp6 = icmp slt i32 %7, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %8 = load i32, i32* %index, align 4
  %9 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %10 = getelementptr inbounds %struct.Object, %struct.Object* %9, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %10 to i8**
  %11 = load i8*, i8** %string_value, align 8
  %call7 = call i64 @strlen(i8* noundef %11) #12
  %conv = trunc i64 %call7 to i32
  %cmp8 = icmp sge i32 %8, %conv
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end12:                                         ; preds = %lor.lhs.false
  %12 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type13 = getelementptr inbounds %struct.Object, %struct.Object* %12, i32 0, i32 1
  store i32 1, i32* %type13, align 4
  %call14 = call noalias i8* @malloc(i64 noundef 2) #10
  %13 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %14 = getelementptr inbounds %struct.Object, %struct.Object* %13, i32 0, i32 2
  %string_value15 = bitcast %union.anon.1* %14 to i8**
  store i8* %call14, i8** %string_value15, align 8
  %15 = load %struct.Object*, %struct.Object** %op1.addr, align 8
  %16 = getelementptr inbounds %struct.Object, %struct.Object* %15, i32 0, i32 2
  %string_value16 = bitcast %union.anon.1* %16 to i8**
  %17 = load i8*, i8** %string_value16, align 8
  %18 = load i32, i32* %index, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %20 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %21 = getelementptr inbounds %struct.Object, %struct.Object* %20, i32 0, i32 2
  %string_value17 = bitcast %union.anon.1* %21 to i8**
  %22 = load i8*, i8** %string_value17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %19, i8* %arrayidx18, align 1
  %23 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %24 = getelementptr inbounds %struct.Object, %struct.Object* %23, i32 0, i32 2
  %string_value19 = bitcast %union.anon.1* %24 to i8**
  %25 = load i8*, i8** %string_value19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %arrayidx20, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaluateListExpression(%struct.ExpressionNode* noundef %expression, %struct.Object* noundef %evaluated, %struct.Env* noundef %env, %struct.AllocatorContext* noundef %context) #0 {
entry:
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %expressions = alloca %struct.ExpressionList*, align 8
  %car_conscell = alloca %struct.ConsCell*, align 8
  %prev_conscell = alloca %struct.ConsCell*, align 8
  %new_conscell = alloca %struct.ConsCell*, align 8
  %evaluatedItem = alloca %struct.Object*, align 8
  %new_cdr = alloca %struct.Object*, align 8
  %nilObj = alloca %struct.Object*, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  %0 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %0, i32 0, i32 1
  %list = bitcast %union.anon* %data to %struct.ListNode**
  %1 = load %struct.ListNode*, %struct.ListNode** %list, align 8
  %expressions1 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %1, i32 0, i32 0
  %2 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions1, align 8
  store %struct.ExpressionList* %2, %struct.ExpressionList** %expressions, align 8
  %3 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %cmp = icmp eq %struct.ExpressionList* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %4, i32 0, i32 1
  store i32 4, i32* %type, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type2 = getelementptr inbounds %struct.Object, %struct.Object* %5, i32 0, i32 1
  store i32 3, i32* %type2, align 4
  store %struct.ConsCell* null, %struct.ConsCell** %car_conscell, align 8
  store %struct.ConsCell* null, %struct.ConsCell** %prev_conscell, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end
  %6 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %cmp3 = icmp ne %struct.ExpressionList* %6, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call noalias i8* @malloc(i64 noundef 24) #10
  %7 = bitcast i8* %call to %struct.ConsCell*
  store %struct.ConsCell* %7, %struct.ConsCell** %new_conscell, align 8
  %8 = load %struct.ConsCell*, %struct.ConsCell** %car_conscell, align 8
  %cmp4 = icmp eq %struct.ConsCell* %8, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  %9 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  store %struct.ConsCell* %9, %struct.ConsCell** %car_conscell, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.body
  %10 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %11 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call7 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %10, %struct.Env* noundef %11)
  store %struct.Object* %call7, %struct.Object** %evaluatedItem, align 8
  %12 = load %struct.Object*, %struct.Object** %evaluatedItem, align 8
  %13 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %car = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %13, i32 0, i32 1
  store %struct.Object* %12, %struct.Object** %car, align 8
  %14 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %expression8 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %14, i32 0, i32 0
  %15 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression8, align 8
  %16 = load %struct.Object*, %struct.Object** %evaluatedItem, align 8
  %17 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %18 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %15, %struct.Object* noundef %16, %struct.Env* noundef %17, %struct.AllocatorContext* noundef %18)
  %19 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %19, i32 0, i32 1
  %20 = load %struct.ExpressionList*, %struct.ExpressionList** %next, align 8
  store %struct.ExpressionList* %20, %struct.ExpressionList** %expressions, align 8
  %21 = load %struct.ConsCell*, %struct.ConsCell** %prev_conscell, align 8
  %cmp9 = icmp ne %struct.ConsCell* %21, null
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end6
  %22 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %23 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call11 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %22, %struct.Env* noundef %23)
  store %struct.Object* %call11, %struct.Object** %new_cdr, align 8
  %24 = load %struct.Object*, %struct.Object** %new_cdr, align 8
  %type12 = getelementptr inbounds %struct.Object, %struct.Object* %24, i32 0, i32 1
  store i32 3, i32* %type12, align 4
  %25 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  %26 = load %struct.Object*, %struct.Object** %new_cdr, align 8
  %27 = getelementptr inbounds %struct.Object, %struct.Object* %26, i32 0, i32 2
  %list_value = bitcast %union.anon.1* %27 to %struct.ConsCell**
  store %struct.ConsCell* %25, %struct.ConsCell** %list_value, align 8
  %28 = load %struct.Object*, %struct.Object** %new_cdr, align 8
  %29 = load %struct.ConsCell*, %struct.ConsCell** %prev_conscell, align 8
  %cdr = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %29, i32 0, i32 2
  store %struct.Object* %28, %struct.Object** %cdr, align 8
  %30 = load %struct.ConsCell*, %struct.ConsCell** %prev_conscell, align 8
  %type13 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %30, i32 0, i32 0
  store i32 0, i32* %type13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6
  %31 = load %struct.ConsCell*, %struct.ConsCell** %new_conscell, align 8
  store %struct.ConsCell* %31, %struct.ConsCell** %prev_conscell, align 8
  %32 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %cmp15 = icmp eq %struct.ExpressionList* %32, null
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  %33 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %34 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call17 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %33, %struct.Env* noundef %34)
  store %struct.Object* %call17, %struct.Object** %nilObj, align 8
  %35 = load %struct.Object*, %struct.Object** %nilObj, align 8
  %type18 = getelementptr inbounds %struct.Object, %struct.Object* %35, i32 0, i32 1
  store i32 4, i32* %type18, align 4
  %36 = load %struct.ConsCell*, %struct.ConsCell** %prev_conscell, align 8
  %type19 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %36, i32 0, i32 0
  store i32 1, i32* %type19, align 8
  %37 = load %struct.Object*, %struct.Object** %nilObj, align 8
  %38 = load %struct.ConsCell*, %struct.ConsCell** %prev_conscell, align 8
  %cdr20 = getelementptr inbounds %struct.ConsCell, %struct.ConsCell* %38, i32 0, i32 2
  store %struct.Object* %37, %struct.Object** %cdr20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  %39 = load %struct.ConsCell*, %struct.ConsCell** %car_conscell, align 8
  %40 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %41 = getelementptr inbounds %struct.Object, %struct.Object* %40, i32 0, i32 2
  %list_value22 = bitcast %union.anon.1* %41 to %struct.ConsCell**
  store %struct.ConsCell* %39, %struct.ConsCell** %list_value22, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaluateExpression(%struct.ExpressionNode* noundef %expression, %struct.Object* noundef %evaluated, %struct.Env* noundef %env, %struct.AllocatorContext* noundef %context) #0 {
entry:
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  %0 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %stack = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %0, i32 0, i32 1
  %1 = load %struct.ObjectStack*, %struct.ObjectStack** %stack, align 8
  %2 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @pushObjectStack(%struct.ObjectStack* noundef %1, %struct.Object* noundef %2)
  %3 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %6 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %7 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %8 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateListExpression(%struct.ExpressionNode* noundef %5, %struct.Object* noundef %6, %struct.Env* noundef %7, %struct.AllocatorContext* noundef %8)
  br label %if.end14

if.else:                                          ; preds = %entry
  %9 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type1 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %9, i32 0, i32 0
  %10 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %10, 3
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %11 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %12 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %13 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %14 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateSymbolicExpression(%struct.ExpressionNode* noundef %11, %struct.Object* noundef %12, %struct.Env* noundef %13, %struct.AllocatorContext* noundef %14)
  br label %if.end13

if.else4:                                         ; preds = %if.else
  %15 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type5 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %15, i32 0, i32 0
  %16 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  %17 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %18 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @evaluateLiteralExpression(%struct.ExpressionNode* noundef %17, %struct.Object* noundef %18)
  br label %if.end12

if.else8:                                         ; preds = %if.else4
  %19 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %type9 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %19, i32 0, i32 0
  %20 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %20, 1
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else8
  %21 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %22 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %23 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %24 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateSymbolExpression(%struct.ExpressionNode* noundef %21, %struct.Object* noundef %22, %struct.Env* noundef %23, %struct.AllocatorContext* noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then3
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  %25 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %stack15 = getelementptr inbounds %struct.AllocatorContext, %struct.AllocatorContext* %25, i32 0, i32 1
  %26 = load %struct.ObjectStack*, %struct.ObjectStack** %stack15, align 8
  %call = call %struct.Object* @popObjectStack(%struct.ObjectStack* noundef %26)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setObjectToEnv(%struct.Env* noundef %env, i8* noundef %symbolName, %struct.Object* noundef %obj) #0 {
entry:
  %env.addr = alloca %struct.Env*, align 8
  %symbolName.addr = alloca i8*, align 8
  %obj.addr = alloca %struct.Object*, align 8
  %i = alloca i32, align 4
  %binding = alloca %struct.Binding*, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store i8* %symbolName, i8** %symbolName.addr, align 8
  store %struct.Object* %obj, %struct.Object** %obj.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings = getelementptr inbounds %struct.Env, %struct.Env* %0, i32 0, i32 0
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings, i64 0, i64 %idxprom
  %symbol_name = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %symbol_name, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings1 = getelementptr inbounds %struct.Env, %struct.Env* %3, i32 0, i32 0
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings1, i64 0, i64 %idxprom2
  %symbol_name4 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx3, i32 0, i32 0
  %5 = load i8*, i8** %symbol_name4, align 8
  %6 = load i8*, i8** %symbolName.addr, align 8
  %call = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #12
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %8 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings6 = getelementptr inbounds %struct.Env, %struct.Env* %8, i32 0, i32 0
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings6, i64 0, i64 %idxprom7
  %value = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx8, i32 0, i32 1
  store %struct.Object* %7, %struct.Object** %value, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %call9 = call noalias i8* @malloc(i64 noundef 16) #10
  %11 = bitcast i8* %call9 to %struct.Binding*
  store %struct.Binding* %11, %struct.Binding** %binding, align 8
  %12 = load i8*, i8** %symbolName.addr, align 8
  %13 = load %struct.Binding*, %struct.Binding** %binding, align 8
  %symbol_name10 = getelementptr inbounds %struct.Binding, %struct.Binding* %13, i32 0, i32 0
  store i8* %12, i8** %symbol_name10, align 8
  %14 = load %struct.Object*, %struct.Object** %obj.addr, align 8
  %15 = load %struct.Binding*, %struct.Binding** %binding, align 8
  %value11 = getelementptr inbounds %struct.Binding, %struct.Binding* %15, i32 0, i32 1
  store %struct.Object* %14, %struct.Object** %value11, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body18, %while.end
  %16 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings13 = getelementptr inbounds %struct.Env, %struct.Env* %16, i32 0, i32 0
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings13, i64 0, i64 %idxprom14
  %symbol_name16 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx15, i32 0, i32 0
  %18 = load i8*, i8** %symbol_name16, align 8
  %cmp17 = icmp ne i8* %18, null
  br i1 %cmp17, label %while.body18, label %while.end20

while.body18:                                     ; preds = %while.cond12
  %19 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %i, align 4
  br label %while.cond12, !llvm.loop !30

while.end20:                                      ; preds = %while.cond12
  %20 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings21 = getelementptr inbounds %struct.Env, %struct.Env* %20, i32 0, i32 0
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings21, i64 0, i64 %idxprom22
  %22 = load %struct.Binding*, %struct.Binding** %binding, align 8
  %23 = bitcast %struct.Binding* %arrayidx23 to i8*
  %24 = bitcast %struct.Binding* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  br label %return

return:                                           ; preds = %while.end20, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaluateSymbolicExpression(%struct.ExpressionNode* noundef %expression, %struct.Object* noundef %evaluated, %struct.Env* noundef %env, %struct.AllocatorContext* noundef %context) #0 {
entry:
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %expressions = alloca %struct.ExpressionList*, align 8
  %expr = alloca %struct.ExpressionNode*, align 8
  %cond = alloca %struct.ExpressionNode*, align 8
  %then = alloca %struct.ExpressionNode*, align 8
  %condObj = alloca %struct.Object*, align 8
  %els = alloca %struct.ExpressionNode*, align 8
  %cond43 = alloca %struct.ExpressionNode*, align 8
  %then50 = alloca %struct.ExpressionNode*, align 8
  %condObj58 = alloca %struct.Object*, align 8
  %symbolExpr = alloca %struct.ExpressionNode, align 8
  %symbol_name79 = alloca i8*, align 8
  %expr83 = alloca %struct.ExpressionNode*, align 8
  %evaluatedExpr = alloca %struct.Object*, align 8
  %symbolExpr99 = alloca %struct.ExpressionNode, align 8
  %symbol_name107 = alloca i8*, align 8
  %paramsExpr = alloca %struct.ExpressionNode*, align 8
  %params = alloca %struct.ExpressionList*, align 8
  %param_symbol_names = alloca i8**, align 8
  %i = alloca i32, align 4
  %bodyExpr = alloca %struct.ExpressionNode*, align 8
  %function = alloca %struct.Function*, align 8
  %operand1 = alloca %struct.Object*, align 8
  %operand2 = alloca %struct.Object*, align 8
  %operand1172 = alloca %struct.Object*, align 8
  %operand2174 = alloca %struct.Object*, align 8
  %operand1188 = alloca %struct.Object*, align 8
  %operand2190 = alloca %struct.Object*, align 8
  %operand1204 = alloca %struct.Object*, align 8
  %operand2206 = alloca %struct.Object*, align 8
  %operand1220 = alloca %struct.Object*, align 8
  %operand2222 = alloca %struct.Object*, align 8
  %exprs = alloca %struct.ExpressionList*, align 8
  %operand = alloca %struct.Object*, align 8
  %exprs257 = alloca %struct.ExpressionList*, align 8
  %operand259 = alloca %struct.Object*, align 8
  %operand1281 = alloca %struct.Object*, align 8
  %operand2283 = alloca %struct.Object*, align 8
  %operand1297 = alloca %struct.Object*, align 8
  %operand2299 = alloca %struct.Object*, align 8
  %operand1313 = alloca %struct.Object*, align 8
  %operand2315 = alloca %struct.Object*, align 8
  %operand329 = alloca %struct.Object*, align 8
  %operand340 = alloca %struct.Object*, align 8
  %str = alloca i8*, align 8
  %operand354 = alloca %struct.Object*, align 8
  %operand365 = alloca %struct.Object*, align 8
  %operand1376 = alloca %struct.Object*, align 8
  %operand2378 = alloca %struct.Object*, align 8
  %line = alloca i8*, align 8
  %len = alloca i64, align 8
  %read = alloca i64, align 8
  %operand1407 = alloca %struct.Object*, align 8
  %operand2409 = alloca %struct.Object*, align 8
  %operand1423 = alloca %struct.Object*, align 8
  %operand2425 = alloca %struct.Object*, align 8
  %exprs439 = alloca %struct.ExpressionList*, align 8
  %operand441 = alloca %struct.Object*, align 8
  %operand461 = alloca %struct.Object*, align 8
  %operand472 = alloca %struct.Object*, align 8
  %operand1483 = alloca %struct.Object*, align 8
  %operand2485 = alloca %struct.Object*, align 8
  %operand499 = alloca %struct.Object*, align 8
  %operand510 = alloca %struct.Object*, align 8
  %operand521 = alloca %struct.Object*, align 8
  %operand1532 = alloca %struct.Object*, align 8
  %operand2534 = alloca %struct.Object*, align 8
  %i542 = alloca i32, align 4
  %current_env = alloca %struct.Env*, align 8
  %looked_up_env = alloca %struct.Env*, align 8
  %function559 = alloca %struct.Function*, align 8
  %new_env = alloca %struct.Env*, align 8
  %j = alloca i32, align 4
  %param_expr = alloca %struct.ExpressionList*, align 8
  %param = alloca %struct.Object*, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  %0 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %0, i32 0, i32 1
  %list = bitcast %union.anon* %data to %struct.ListNode**
  %1 = load %struct.ListNode*, %struct.ListNode** %list, align 8
  %expressions1 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %1, i32 0, i32 0
  %2 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions1, align 8
  store %struct.ExpressionList* %2, %struct.ExpressionList** %expressions, align 8
  %3 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %cmp = icmp ne %struct.ExpressionList* %3, null
  br i1 %cmp, label %if.then, label %if.else629

if.then:                                          ; preds = %entry
  %4 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %expression2 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %4, i32 0, i32 0
  %5 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression2, align 8
  store %struct.ExpressionNode* %5, %struct.ExpressionNode** %expr, align 8
  %6 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %cmp3 = icmp ne %struct.ExpressionNode* %6, null
  br i1 %cmp3, label %land.lhs.true, label %if.else626

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %type = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.then5, label %if.else626

if.then5:                                         ; preds = %land.lhs.true
  %9 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data6 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %9, i32 0, i32 1
  %symbol = bitcast %union.anon* %data6 to %struct.SymbolNode**
  %10 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol, align 8
  %symbol_name = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %10, i32 0, i32 0
  %11 = load i8*, i8** %symbol_name, align 8
  %call = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #12
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.else36

if.then8:                                         ; preds = %if.then5
  %12 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %12, i32 0, i32 1
  %13 = load %struct.ExpressionList*, %struct.ExpressionList** %next, align 8
  %expression9 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %13, i32 0, i32 0
  %14 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression9, align 8
  store %struct.ExpressionNode* %14, %struct.ExpressionNode** %cond, align 8
  %15 = load %struct.ExpressionNode*, %struct.ExpressionNode** %cond, align 8
  %cmp10 = icmp eq %struct.ExpressionNode* %15, null
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then8
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %if.then8
  %16 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next13 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %16, i32 0, i32 1
  %17 = load %struct.ExpressionList*, %struct.ExpressionList** %next13, align 8
  %next14 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %17, i32 0, i32 1
  %18 = load %struct.ExpressionList*, %struct.ExpressionList** %next14, align 8
  %expression15 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %18, i32 0, i32 0
  %19 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression15, align 8
  store %struct.ExpressionNode* %19, %struct.ExpressionNode** %then, align 8
  %20 = load %struct.ExpressionNode*, %struct.ExpressionNode** %then, align 8
  %cmp16 = icmp eq %struct.ExpressionNode* %20, null
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end19:                                         ; preds = %if.end
  %21 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %22 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call20 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %21, %struct.Env* noundef %22)
  store %struct.Object* %call20, %struct.Object** %condObj, align 8
  %23 = load %struct.ExpressionNode*, %struct.ExpressionNode** %cond, align 8
  %24 = load %struct.Object*, %struct.Object** %condObj, align 8
  %25 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %26 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %23, %struct.Object* noundef %24, %struct.Env* noundef %25, %struct.AllocatorContext* noundef %26)
  %27 = load %struct.Object*, %struct.Object** %condObj, align 8
  %call21 = call zeroext i1 @boolVal(%struct.Object* noundef %27)
  br i1 %call21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  %28 = load %struct.ExpressionNode*, %struct.ExpressionNode** %then, align 8
  %29 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %30 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %31 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %28, %struct.Object* noundef %29, %struct.Env* noundef %30, %struct.AllocatorContext* noundef %31)
  br label %if.end35

if.else:                                          ; preds = %if.end19
  %32 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next23 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %32, i32 0, i32 1
  %33 = load %struct.ExpressionList*, %struct.ExpressionList** %next23, align 8
  %next24 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %33, i32 0, i32 1
  %34 = load %struct.ExpressionList*, %struct.ExpressionList** %next24, align 8
  %next25 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %34, i32 0, i32 1
  %35 = load %struct.ExpressionList*, %struct.ExpressionList** %next25, align 8
  %cmp26 = icmp ne %struct.ExpressionList* %35, null
  br i1 %cmp26, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.else
  %36 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next28 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %36, i32 0, i32 1
  %37 = load %struct.ExpressionList*, %struct.ExpressionList** %next28, align 8
  %next29 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %37, i32 0, i32 1
  %38 = load %struct.ExpressionList*, %struct.ExpressionList** %next29, align 8
  %next30 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %38, i32 0, i32 1
  %39 = load %struct.ExpressionList*, %struct.ExpressionList** %next30, align 8
  %expression31 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %39, i32 0, i32 0
  %40 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression31, align 8
  store %struct.ExpressionNode* %40, %struct.ExpressionNode** %els, align 8
  %41 = load %struct.ExpressionNode*, %struct.ExpressionNode** %els, align 8
  %42 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %43 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %44 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %41, %struct.Object* noundef %42, %struct.Env* noundef %43, %struct.AllocatorContext* noundef %44)
  br label %if.end34

if.else32:                                        ; preds = %if.else
  %45 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type33 = getelementptr inbounds %struct.Object, %struct.Object* %45, i32 0, i32 1
  store i32 4, i32* %type33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then22
  br label %if.end625

if.else36:                                        ; preds = %if.then5
  %46 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data37 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %46, i32 0, i32 1
  %symbol38 = bitcast %union.anon* %data37 to %struct.SymbolNode**
  %47 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol38, align 8
  %symbol_name39 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %47, i32 0, i32 0
  %48 = load i8*, i8** %symbol_name39, align 8
  %call40 = call i32 @strcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0)) #12
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.else65

if.then42:                                        ; preds = %if.else36
  %49 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next44 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %49, i32 0, i32 1
  %50 = load %struct.ExpressionList*, %struct.ExpressionList** %next44, align 8
  %expression45 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %50, i32 0, i32 0
  %51 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression45, align 8
  store %struct.ExpressionNode* %51, %struct.ExpressionNode** %cond43, align 8
  %52 = load %struct.ExpressionNode*, %struct.ExpressionNode** %cond43, align 8
  %cmp46 = icmp eq %struct.ExpressionNode* %52, null
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then42
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end49:                                         ; preds = %if.then42
  %53 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next51 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %53, i32 0, i32 1
  %54 = load %struct.ExpressionList*, %struct.ExpressionList** %next51, align 8
  %next52 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %54, i32 0, i32 1
  %55 = load %struct.ExpressionList*, %struct.ExpressionList** %next52, align 8
  %expression53 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %55, i32 0, i32 0
  %56 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression53, align 8
  store %struct.ExpressionNode* %56, %struct.ExpressionNode** %then50, align 8
  %57 = load %struct.ExpressionNode*, %struct.ExpressionNode** %then50, align 8
  %cmp54 = icmp eq %struct.ExpressionNode* %57, null
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end49
  %call56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end57:                                         ; preds = %if.end49
  br label %while.body

while.body:                                       ; preds = %if.end57, %if.end64
  %58 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %59 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call59 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %58, %struct.Env* noundef %59)
  store %struct.Object* %call59, %struct.Object** %condObj58, align 8
  %60 = load %struct.ExpressionNode*, %struct.ExpressionNode** %cond43, align 8
  %61 = load %struct.Object*, %struct.Object** %condObj58, align 8
  %62 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %63 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %60, %struct.Object* noundef %61, %struct.Env* noundef %62, %struct.AllocatorContext* noundef %63)
  %64 = load %struct.Object*, %struct.Object** %condObj58, align 8
  %call60 = call zeroext i1 @boolVal(%struct.Object* noundef %64)
  br i1 %call60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %while.body
  %65 = load %struct.ExpressionNode*, %struct.ExpressionNode** %then50, align 8
  %66 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %67 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %68 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %65, %struct.Object* noundef %66, %struct.Env* noundef %67, %struct.AllocatorContext* noundef %68)
  br label %if.end64

if.else62:                                        ; preds = %while.body
  %69 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type63 = getelementptr inbounds %struct.Object, %struct.Object* %69, i32 0, i32 1
  store i32 4, i32* %type63, align 4
  br label %while.end

if.end64:                                         ; preds = %if.then61
  br label %while.body

while.end:                                        ; preds = %if.else62
  br label %if.end624

if.else65:                                        ; preds = %if.else36
  %70 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data66 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %70, i32 0, i32 1
  %symbol67 = bitcast %union.anon* %data66 to %struct.SymbolNode**
  %71 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol67, align 8
  %symbol_name68 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %71, i32 0, i32 0
  %72 = load i8*, i8** %symbol_name68, align 8
  %call69 = call i32 @strcmp(i8* noundef %72, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #12
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.else92

if.then71:                                        ; preds = %if.else65
  %73 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next72 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %73, i32 0, i32 1
  %74 = load %struct.ExpressionList*, %struct.ExpressionList** %next72, align 8
  %expression73 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %74, i32 0, i32 0
  %75 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression73, align 8
  %76 = bitcast %struct.ExpressionNode* %symbolExpr to i8*
  %77 = bitcast %struct.ExpressionNode* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %type74 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %symbolExpr, i32 0, i32 0
  %78 = load i32, i32* %type74, align 8
  %cmp75 = icmp ne i32 %78, 1
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.then71
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end78:                                         ; preds = %if.then71
  %data80 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %symbolExpr, i32 0, i32 1
  %symbol81 = bitcast %union.anon* %data80 to %struct.SymbolNode**
  %79 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol81, align 8
  %symbol_name82 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %79, i32 0, i32 0
  %80 = load i8*, i8** %symbol_name82, align 8
  store i8* %80, i8** %symbol_name79, align 8
  %81 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next84 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %81, i32 0, i32 1
  %82 = load %struct.ExpressionList*, %struct.ExpressionList** %next84, align 8
  %next85 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %82, i32 0, i32 1
  %83 = load %struct.ExpressionList*, %struct.ExpressionList** %next85, align 8
  %expression86 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %83, i32 0, i32 0
  %84 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression86, align 8
  store %struct.ExpressionNode* %84, %struct.ExpressionNode** %expr83, align 8
  %85 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr83, align 8
  %cmp87 = icmp eq %struct.ExpressionNode* %85, null
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end78
  %call89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end90:                                         ; preds = %if.end78
  %86 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %87 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call91 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %86, %struct.Env* noundef %87)
  store %struct.Object* %call91, %struct.Object** %evaluatedExpr, align 8
  %88 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr83, align 8
  %89 = load %struct.Object*, %struct.Object** %evaluatedExpr, align 8
  %90 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %91 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %88, %struct.Object* noundef %89, %struct.Env* noundef %90, %struct.AllocatorContext* noundef %91)
  %92 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %93 = load %struct.Object*, %struct.Object** %evaluatedExpr, align 8
  %94 = bitcast %struct.Object* %92 to i8*
  %95 = bitcast %struct.Object* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 16, i1 false)
  %96 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %97 = load i8*, i8** %symbol_name79, align 8
  %98 = load %struct.Object*, %struct.Object** %evaluatedExpr, align 8
  call void @setObjectToEnv(%struct.Env* noundef %96, i8* noundef %97, %struct.Object* noundef %98)
  br label %if.end623

if.else92:                                        ; preds = %if.else65
  %99 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data93 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %99, i32 0, i32 1
  %symbol94 = bitcast %union.anon* %data93 to %struct.SymbolNode**
  %100 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol94, align 8
  %symbol_name95 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %100, i32 0, i32 0
  %101 = load i8*, i8** %symbol_name95, align 8
  %call96 = call i32 @strcmp(i8* noundef %101, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0)) #12
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.else151

if.then98:                                        ; preds = %if.else92
  %102 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next100 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %102, i32 0, i32 1
  %103 = load %struct.ExpressionList*, %struct.ExpressionList** %next100, align 8
  %expression101 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %103, i32 0, i32 0
  %104 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression101, align 8
  %105 = bitcast %struct.ExpressionNode* %symbolExpr99 to i8*
  %106 = bitcast %struct.ExpressionNode* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %type102 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %symbolExpr99, i32 0, i32 0
  %107 = load i32, i32* %type102, align 8
  %cmp103 = icmp ne i32 %107, 1
  br i1 %cmp103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then98
  %call105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end106:                                        ; preds = %if.then98
  %data108 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %symbolExpr99, i32 0, i32 1
  %symbol109 = bitcast %union.anon* %data108 to %struct.SymbolNode**
  %108 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol109, align 8
  %symbol_name110 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %108, i32 0, i32 0
  %109 = load i8*, i8** %symbol_name110, align 8
  store i8* %109, i8** %symbol_name107, align 8
  %110 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next111 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %110, i32 0, i32 1
  %111 = load %struct.ExpressionList*, %struct.ExpressionList** %next111, align 8
  %next112 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %111, i32 0, i32 1
  %112 = load %struct.ExpressionList*, %struct.ExpressionList** %next112, align 8
  %expression113 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %112, i32 0, i32 0
  %113 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression113, align 8
  store %struct.ExpressionNode* %113, %struct.ExpressionNode** %paramsExpr, align 8
  %114 = load %struct.ExpressionNode*, %struct.ExpressionNode** %paramsExpr, align 8
  %cmp114 = icmp eq %struct.ExpressionNode* %114, null
  br i1 %cmp114, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end106
  %call116 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end117:                                        ; preds = %if.end106
  %115 = load %struct.ExpressionNode*, %struct.ExpressionNode** %paramsExpr, align 8
  %type118 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %115, i32 0, i32 0
  %116 = load i32, i32* %type118, align 8
  %cmp119 = icmp ne i32 %116, 3
  br i1 %cmp119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end117
  %call121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end122:                                        ; preds = %if.end117
  %117 = load %struct.ExpressionNode*, %struct.ExpressionNode** %paramsExpr, align 8
  %data123 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %117, i32 0, i32 1
  %symbolic_exp = bitcast %union.anon* %data123 to %struct.SymbolicExpNode**
  %118 = load %struct.SymbolicExpNode*, %struct.SymbolicExpNode** %symbolic_exp, align 8
  %expressions124 = getelementptr inbounds %struct.SymbolicExpNode, %struct.SymbolicExpNode* %118, i32 0, i32 0
  %119 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions124, align 8
  store %struct.ExpressionList* %119, %struct.ExpressionList** %params, align 8
  %call125 = call noalias i8* @malloc(i64 noundef 80) #10
  %120 = bitcast i8* %call125 to i8**
  store i8** %120, i8*** %param_symbol_names, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end133, %if.end122
  %121 = load %struct.ExpressionList*, %struct.ExpressionList** %params, align 8
  %cmp126 = icmp ne %struct.ExpressionList* %121, null
  br i1 %cmp126, label %while.body127, label %while.end139

while.body127:                                    ; preds = %while.cond
  %122 = load %struct.ExpressionList*, %struct.ExpressionList** %params, align 8
  %expression128 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %122, i32 0, i32 0
  %123 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression128, align 8
  %type129 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %123, i32 0, i32 0
  %124 = load i32, i32* %type129, align 8
  %cmp130 = icmp ne i32 %124, 1
  br i1 %cmp130, label %if.then131, label %if.end133

if.then131:                                       ; preds = %while.body127
  %call132 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end133:                                        ; preds = %while.body127
  %125 = load %struct.ExpressionList*, %struct.ExpressionList** %params, align 8
  %expression134 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %125, i32 0, i32 0
  %126 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression134, align 8
  %data135 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %126, i32 0, i32 1
  %symbol136 = bitcast %union.anon* %data135 to %struct.SymbolNode**
  %127 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol136, align 8
  %symbol_name137 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %127, i32 0, i32 0
  %128 = load i8*, i8** %symbol_name137, align 8
  %129 = load i8**, i8*** %param_symbol_names, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom = sext i32 %130 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %129, i64 %idxprom
  store i8* %128, i8** %arrayidx, align 8
  %131 = load i32, i32* %i, align 4
  %inc = add nsw i32 %131, 1
  store i32 %inc, i32* %i, align 4
  %132 = load %struct.ExpressionList*, %struct.ExpressionList** %params, align 8
  %next138 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %132, i32 0, i32 1
  %133 = load %struct.ExpressionList*, %struct.ExpressionList** %next138, align 8
  store %struct.ExpressionList* %133, %struct.ExpressionList** %params, align 8
  br label %while.cond, !llvm.loop !31

while.end139:                                     ; preds = %while.cond
  %134 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next140 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %134, i32 0, i32 1
  %135 = load %struct.ExpressionList*, %struct.ExpressionList** %next140, align 8
  %next141 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %135, i32 0, i32 1
  %136 = load %struct.ExpressionList*, %struct.ExpressionList** %next141, align 8
  %next142 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %136, i32 0, i32 1
  %137 = load %struct.ExpressionList*, %struct.ExpressionList** %next142, align 8
  %expression143 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %137, i32 0, i32 0
  %138 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression143, align 8
  store %struct.ExpressionNode* %138, %struct.ExpressionNode** %bodyExpr, align 8
  %139 = load %struct.ExpressionNode*, %struct.ExpressionNode** %bodyExpr, align 8
  %cmp144 = icmp eq %struct.ExpressionNode* %139, null
  br i1 %cmp144, label %if.then145, label %if.end147

if.then145:                                       ; preds = %while.end139
  %call146 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end147:                                        ; preds = %while.end139
  %call148 = call noalias i8* @malloc(i64 noundef 16) #10
  %140 = bitcast i8* %call148 to %struct.Function*
  store %struct.Function* %140, %struct.Function** %function, align 8
  %141 = load i8**, i8*** %param_symbol_names, align 8
  %142 = load %struct.Function*, %struct.Function** %function, align 8
  %param_symbol_names149 = getelementptr inbounds %struct.Function, %struct.Function* %142, i32 0, i32 0
  store i8** %141, i8*** %param_symbol_names149, align 8
  %143 = load %struct.ExpressionNode*, %struct.ExpressionNode** %bodyExpr, align 8
  %144 = load %struct.Function*, %struct.Function** %function, align 8
  %body = getelementptr inbounds %struct.Function, %struct.Function* %144, i32 0, i32 1
  store %struct.ExpressionNode* %143, %struct.ExpressionNode** %body, align 8
  %145 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type150 = getelementptr inbounds %struct.Object, %struct.Object* %145, i32 0, i32 1
  store i32 5, i32* %type150, align 4
  %146 = load %struct.Function*, %struct.Function** %function, align 8
  %147 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %148 = getelementptr inbounds %struct.Object, %struct.Object* %147, i32 0, i32 2
  %function_value = bitcast %union.anon.1* %148 to %struct.Function**
  store %struct.Function* %146, %struct.Function** %function_value, align 8
  %149 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %150 = load i8*, i8** %symbol_name107, align 8
  %151 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @setObjectToEnv(%struct.Env* noundef %149, i8* noundef %150, %struct.Object* noundef %151)
  br label %if.end622

if.else151:                                       ; preds = %if.else92
  %152 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data152 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %152, i32 0, i32 1
  %symbol153 = bitcast %union.anon* %data152 to %struct.SymbolNode**
  %153 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol153, align 8
  %symbol_name154 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %153, i32 0, i32 0
  %154 = load i8*, i8** %symbol_name154, align 8
  %call155 = call i32 @strcmp(i8* noundef %154, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0)) #12
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then157, label %if.else165

if.then157:                                       ; preds = %if.else151
  %155 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %156 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call158 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %155, %struct.Env* noundef %156)
  store %struct.Object* %call158, %struct.Object** %operand1, align 8
  %157 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %158 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call159 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %157, %struct.Env* noundef %158)
  store %struct.Object* %call159, %struct.Object** %operand2, align 8
  %159 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next160 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %159, i32 0, i32 1
  %160 = load %struct.ExpressionList*, %struct.ExpressionList** %next160, align 8
  %expression161 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %160, i32 0, i32 0
  %161 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression161, align 8
  %162 = load %struct.Object*, %struct.Object** %operand1, align 8
  %163 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %164 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %161, %struct.Object* noundef %162, %struct.Env* noundef %163, %struct.AllocatorContext* noundef %164)
  %165 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next162 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %165, i32 0, i32 1
  %166 = load %struct.ExpressionList*, %struct.ExpressionList** %next162, align 8
  %next163 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %166, i32 0, i32 1
  %167 = load %struct.ExpressionList*, %struct.ExpressionList** %next163, align 8
  %expression164 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %167, i32 0, i32 0
  %168 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression164, align 8
  %169 = load %struct.Object*, %struct.Object** %operand2, align 8
  %170 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %171 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %168, %struct.Object* noundef %169, %struct.Env* noundef %170, %struct.AllocatorContext* noundef %171)
  %172 = load %struct.Object*, %struct.Object** %operand1, align 8
  %173 = load %struct.Object*, %struct.Object** %operand2, align 8
  %174 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionAdd(%struct.Object* noundef %172, %struct.Object* noundef %173, %struct.Object* noundef %174)
  br label %if.end621

if.else165:                                       ; preds = %if.else151
  %175 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data166 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %175, i32 0, i32 1
  %symbol167 = bitcast %union.anon* %data166 to %struct.SymbolNode**
  %176 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol167, align 8
  %symbol_name168 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %176, i32 0, i32 0
  %177 = load i8*, i8** %symbol_name168, align 8
  %call169 = call i32 @strcmp(i8* noundef %177, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then171, label %if.else181

if.then171:                                       ; preds = %if.else165
  %178 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %179 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call173 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %178, %struct.Env* noundef %179)
  store %struct.Object* %call173, %struct.Object** %operand1172, align 8
  %180 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %181 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call175 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %180, %struct.Env* noundef %181)
  store %struct.Object* %call175, %struct.Object** %operand2174, align 8
  %182 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next176 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %182, i32 0, i32 1
  %183 = load %struct.ExpressionList*, %struct.ExpressionList** %next176, align 8
  %expression177 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %183, i32 0, i32 0
  %184 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression177, align 8
  %185 = load %struct.Object*, %struct.Object** %operand1172, align 8
  %186 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %187 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %184, %struct.Object* noundef %185, %struct.Env* noundef %186, %struct.AllocatorContext* noundef %187)
  %188 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next178 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %188, i32 0, i32 1
  %189 = load %struct.ExpressionList*, %struct.ExpressionList** %next178, align 8
  %next179 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %189, i32 0, i32 1
  %190 = load %struct.ExpressionList*, %struct.ExpressionList** %next179, align 8
  %expression180 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %190, i32 0, i32 0
  %191 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression180, align 8
  %192 = load %struct.Object*, %struct.Object** %operand2174, align 8
  %193 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %194 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %191, %struct.Object* noundef %192, %struct.Env* noundef %193, %struct.AllocatorContext* noundef %194)
  %195 = load %struct.Object*, %struct.Object** %operand1172, align 8
  %196 = load %struct.Object*, %struct.Object** %operand2174, align 8
  %197 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionSub(%struct.Object* noundef %195, %struct.Object* noundef %196, %struct.Object* noundef %197)
  br label %if.end620

if.else181:                                       ; preds = %if.else165
  %198 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data182 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %198, i32 0, i32 1
  %symbol183 = bitcast %union.anon* %data182 to %struct.SymbolNode**
  %199 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol183, align 8
  %symbol_name184 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %199, i32 0, i32 0
  %200 = load i8*, i8** %symbol_name184, align 8
  %call185 = call i32 @strcmp(i8* noundef %200, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #12
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %if.then187, label %if.else197

if.then187:                                       ; preds = %if.else181
  %201 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %202 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call189 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %201, %struct.Env* noundef %202)
  store %struct.Object* %call189, %struct.Object** %operand1188, align 8
  %203 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %204 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call191 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %203, %struct.Env* noundef %204)
  store %struct.Object* %call191, %struct.Object** %operand2190, align 8
  %205 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next192 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %205, i32 0, i32 1
  %206 = load %struct.ExpressionList*, %struct.ExpressionList** %next192, align 8
  %expression193 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %206, i32 0, i32 0
  %207 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression193, align 8
  %208 = load %struct.Object*, %struct.Object** %operand1188, align 8
  %209 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %210 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %207, %struct.Object* noundef %208, %struct.Env* noundef %209, %struct.AllocatorContext* noundef %210)
  %211 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next194 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %211, i32 0, i32 1
  %212 = load %struct.ExpressionList*, %struct.ExpressionList** %next194, align 8
  %next195 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %212, i32 0, i32 1
  %213 = load %struct.ExpressionList*, %struct.ExpressionList** %next195, align 8
  %expression196 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %213, i32 0, i32 0
  %214 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression196, align 8
  %215 = load %struct.Object*, %struct.Object** %operand2190, align 8
  %216 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %217 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %214, %struct.Object* noundef %215, %struct.Env* noundef %216, %struct.AllocatorContext* noundef %217)
  %218 = load %struct.Object*, %struct.Object** %operand1188, align 8
  %219 = load %struct.Object*, %struct.Object** %operand2190, align 8
  %220 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionMul(%struct.Object* noundef %218, %struct.Object* noundef %219, %struct.Object* noundef %220)
  br label %if.end619

if.else197:                                       ; preds = %if.else181
  %221 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data198 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %221, i32 0, i32 1
  %symbol199 = bitcast %union.anon* %data198 to %struct.SymbolNode**
  %222 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol199, align 8
  %symbol_name200 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %222, i32 0, i32 0
  %223 = load i8*, i8** %symbol_name200, align 8
  %call201 = call i32 @strcmp(i8* noundef %223, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #12
  %cmp202 = icmp eq i32 %call201, 0
  br i1 %cmp202, label %if.then203, label %if.else213

if.then203:                                       ; preds = %if.else197
  %224 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %225 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call205 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %224, %struct.Env* noundef %225)
  store %struct.Object* %call205, %struct.Object** %operand1204, align 8
  %226 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %227 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call207 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %226, %struct.Env* noundef %227)
  store %struct.Object* %call207, %struct.Object** %operand2206, align 8
  %228 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next208 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %228, i32 0, i32 1
  %229 = load %struct.ExpressionList*, %struct.ExpressionList** %next208, align 8
  %expression209 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %229, i32 0, i32 0
  %230 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression209, align 8
  %231 = load %struct.Object*, %struct.Object** %operand1204, align 8
  %232 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %233 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %230, %struct.Object* noundef %231, %struct.Env* noundef %232, %struct.AllocatorContext* noundef %233)
  %234 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next210 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %234, i32 0, i32 1
  %235 = load %struct.ExpressionList*, %struct.ExpressionList** %next210, align 8
  %next211 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %235, i32 0, i32 1
  %236 = load %struct.ExpressionList*, %struct.ExpressionList** %next211, align 8
  %expression212 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %236, i32 0, i32 0
  %237 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression212, align 8
  %238 = load %struct.Object*, %struct.Object** %operand2206, align 8
  %239 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %240 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %237, %struct.Object* noundef %238, %struct.Env* noundef %239, %struct.AllocatorContext* noundef %240)
  %241 = load %struct.Object*, %struct.Object** %operand1204, align 8
  %242 = load %struct.Object*, %struct.Object** %operand2206, align 8
  %243 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionDiv(%struct.Object* noundef %241, %struct.Object* noundef %242, %struct.Object* noundef %243)
  br label %if.end618

if.else213:                                       ; preds = %if.else197
  %244 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data214 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %244, i32 0, i32 1
  %symbol215 = bitcast %union.anon* %data214 to %struct.SymbolNode**
  %245 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol215, align 8
  %symbol_name216 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %245, i32 0, i32 0
  %246 = load i8*, i8** %symbol_name216, align 8
  %call217 = call i32 @strcmp(i8* noundef %246, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #12
  %cmp218 = icmp eq i32 %call217, 0
  br i1 %cmp218, label %if.then219, label %if.else229

if.then219:                                       ; preds = %if.else213
  %247 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %248 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call221 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %247, %struct.Env* noundef %248)
  store %struct.Object* %call221, %struct.Object** %operand1220, align 8
  %249 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %250 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call223 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %249, %struct.Env* noundef %250)
  store %struct.Object* %call223, %struct.Object** %operand2222, align 8
  %251 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next224 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %251, i32 0, i32 1
  %252 = load %struct.ExpressionList*, %struct.ExpressionList** %next224, align 8
  %expression225 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %252, i32 0, i32 0
  %253 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression225, align 8
  %254 = load %struct.Object*, %struct.Object** %operand1220, align 8
  %255 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %256 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %253, %struct.Object* noundef %254, %struct.Env* noundef %255, %struct.AllocatorContext* noundef %256)
  %257 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next226 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %257, i32 0, i32 1
  %258 = load %struct.ExpressionList*, %struct.ExpressionList** %next226, align 8
  %next227 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %258, i32 0, i32 1
  %259 = load %struct.ExpressionList*, %struct.ExpressionList** %next227, align 8
  %expression228 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %259, i32 0, i32 0
  %260 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression228, align 8
  %261 = load %struct.Object*, %struct.Object** %operand2222, align 8
  %262 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %263 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %260, %struct.Object* noundef %261, %struct.Env* noundef %262, %struct.AllocatorContext* noundef %263)
  %264 = load %struct.Object*, %struct.Object** %operand1220, align 8
  %265 = load %struct.Object*, %struct.Object** %operand2222, align 8
  %266 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionMod(%struct.Object* noundef %264, %struct.Object* noundef %265, %struct.Object* noundef %266)
  br label %if.end617

if.else229:                                       ; preds = %if.else213
  %267 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data230 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %267, i32 0, i32 1
  %symbol231 = bitcast %union.anon* %data230 to %struct.SymbolNode**
  %268 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol231, align 8
  %symbol_name232 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %268, i32 0, i32 0
  %269 = load i8*, i8** %symbol_name232, align 8
  %call233 = call i32 @strcmp(i8* noundef %269, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0)) #12
  %cmp234 = icmp eq i32 %call233, 0
  br i1 %cmp234, label %if.then235, label %if.else250

if.then235:                                       ; preds = %if.else229
  %270 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next236 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %270, i32 0, i32 1
  %271 = load %struct.ExpressionList*, %struct.ExpressionList** %next236, align 8
  store %struct.ExpressionList* %271, %struct.ExpressionList** %exprs, align 8
  store %struct.Object* null, %struct.Object** %operand, align 8
  br label %while.cond237

while.cond237:                                    ; preds = %if.end245, %if.then235
  %272 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs, align 8
  %cmp238 = icmp ne %struct.ExpressionList* %272, null
  br i1 %cmp238, label %while.body239, label %while.end247

while.body239:                                    ; preds = %while.cond237
  %273 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %274 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call240 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %273, %struct.Env* noundef %274)
  store %struct.Object* %call240, %struct.Object** %operand, align 8
  %275 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs, align 8
  %expression241 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %275, i32 0, i32 0
  %276 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression241, align 8
  %277 = load %struct.Object*, %struct.Object** %operand, align 8
  %278 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %279 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %276, %struct.Object* noundef %277, %struct.Env* noundef %278, %struct.AllocatorContext* noundef %279)
  %280 = load %struct.Object*, %struct.Object** %operand, align 8
  %call242 = call zeroext i1 @boolVal(%struct.Object* noundef %280)
  br i1 %call242, label %if.then243, label %if.end245

if.then243:                                       ; preds = %while.body239
  %281 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type244 = getelementptr inbounds %struct.Object, %struct.Object* %281, i32 0, i32 1
  store i32 2, i32* %type244, align 4
  %282 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %283 = getelementptr inbounds %struct.Object, %struct.Object* %282, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %283 to i32*
  store i32 1, i32* %bool_value, align 8
  br label %if.end631

if.end245:                                        ; preds = %while.body239
  %284 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs, align 8
  %next246 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %284, i32 0, i32 1
  %285 = load %struct.ExpressionList*, %struct.ExpressionList** %next246, align 8
  store %struct.ExpressionList* %285, %struct.ExpressionList** %exprs, align 8
  br label %while.cond237, !llvm.loop !32

while.end247:                                     ; preds = %while.cond237
  %286 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type248 = getelementptr inbounds %struct.Object, %struct.Object* %286, i32 0, i32 1
  store i32 2, i32* %type248, align 4
  %287 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %288 = getelementptr inbounds %struct.Object, %struct.Object* %287, i32 0, i32 2
  %bool_value249 = bitcast %union.anon.1* %288 to i32*
  store i32 0, i32* %bool_value249, align 8
  br label %if.end616

if.else250:                                       ; preds = %if.else229
  %289 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data251 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %289, i32 0, i32 1
  %symbol252 = bitcast %union.anon* %data251 to %struct.SymbolNode**
  %290 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol252, align 8
  %symbol_name253 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %290, i32 0, i32 0
  %291 = load i8*, i8** %symbol_name253, align 8
  %call254 = call i32 @strcmp(i8* noundef %291, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0)) #12
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %if.then256, label %if.else274

if.then256:                                       ; preds = %if.else250
  %292 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next258 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %292, i32 0, i32 1
  %293 = load %struct.ExpressionList*, %struct.ExpressionList** %next258, align 8
  store %struct.ExpressionList* %293, %struct.ExpressionList** %exprs257, align 8
  store %struct.Object* null, %struct.Object** %operand259, align 8
  br label %while.cond260

while.cond260:                                    ; preds = %if.end269, %if.then256
  %294 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs257, align 8
  %cmp261 = icmp ne %struct.ExpressionList* %294, null
  br i1 %cmp261, label %while.body262, label %while.end271

while.body262:                                    ; preds = %while.cond260
  %295 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %296 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call263 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %295, %struct.Env* noundef %296)
  store %struct.Object* %call263, %struct.Object** %operand259, align 8
  %297 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs257, align 8
  %expression264 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %297, i32 0, i32 0
  %298 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression264, align 8
  %299 = load %struct.Object*, %struct.Object** %operand259, align 8
  %300 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %301 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %298, %struct.Object* noundef %299, %struct.Env* noundef %300, %struct.AllocatorContext* noundef %301)
  %302 = load %struct.Object*, %struct.Object** %operand259, align 8
  %call265 = call zeroext i1 @boolVal(%struct.Object* noundef %302)
  br i1 %call265, label %if.end269, label %if.then266

if.then266:                                       ; preds = %while.body262
  %303 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type267 = getelementptr inbounds %struct.Object, %struct.Object* %303, i32 0, i32 1
  store i32 2, i32* %type267, align 4
  %304 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %305 = getelementptr inbounds %struct.Object, %struct.Object* %304, i32 0, i32 2
  %bool_value268 = bitcast %union.anon.1* %305 to i32*
  store i32 0, i32* %bool_value268, align 8
  br label %if.end631

if.end269:                                        ; preds = %while.body262
  %306 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs257, align 8
  %next270 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %306, i32 0, i32 1
  %307 = load %struct.ExpressionList*, %struct.ExpressionList** %next270, align 8
  store %struct.ExpressionList* %307, %struct.ExpressionList** %exprs257, align 8
  br label %while.cond260, !llvm.loop !33

while.end271:                                     ; preds = %while.cond260
  %308 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type272 = getelementptr inbounds %struct.Object, %struct.Object* %308, i32 0, i32 1
  store i32 2, i32* %type272, align 4
  %309 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %310 = getelementptr inbounds %struct.Object, %struct.Object* %309, i32 0, i32 2
  %bool_value273 = bitcast %union.anon.1* %310 to i32*
  store i32 1, i32* %bool_value273, align 8
  br label %if.end615

if.else274:                                       ; preds = %if.else250
  %311 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data275 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %311, i32 0, i32 1
  %symbol276 = bitcast %union.anon* %data275 to %struct.SymbolNode**
  %312 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol276, align 8
  %symbol_name277 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %312, i32 0, i32 0
  %313 = load i8*, i8** %symbol_name277, align 8
  %call278 = call i32 @strcmp(i8* noundef %313, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0)) #12
  %cmp279 = icmp eq i32 %call278, 0
  br i1 %cmp279, label %if.then280, label %if.else290

if.then280:                                       ; preds = %if.else274
  %314 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %315 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call282 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %314, %struct.Env* noundef %315)
  store %struct.Object* %call282, %struct.Object** %operand1281, align 8
  %316 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %317 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call284 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %316, %struct.Env* noundef %317)
  store %struct.Object* %call284, %struct.Object** %operand2283, align 8
  %318 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next285 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %318, i32 0, i32 1
  %319 = load %struct.ExpressionList*, %struct.ExpressionList** %next285, align 8
  %expression286 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %319, i32 0, i32 0
  %320 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression286, align 8
  %321 = load %struct.Object*, %struct.Object** %operand1281, align 8
  %322 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %323 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %320, %struct.Object* noundef %321, %struct.Env* noundef %322, %struct.AllocatorContext* noundef %323)
  %324 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next287 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %324, i32 0, i32 1
  %325 = load %struct.ExpressionList*, %struct.ExpressionList** %next287, align 8
  %next288 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %325, i32 0, i32 1
  %326 = load %struct.ExpressionList*, %struct.ExpressionList** %next288, align 8
  %expression289 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %326, i32 0, i32 0
  %327 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression289, align 8
  %328 = load %struct.Object*, %struct.Object** %operand2283, align 8
  %329 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %330 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %327, %struct.Object* noundef %328, %struct.Env* noundef %329, %struct.AllocatorContext* noundef %330)
  %331 = load %struct.Object*, %struct.Object** %operand1281, align 8
  %332 = load %struct.Object*, %struct.Object** %operand2283, align 8
  %333 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionLt(%struct.Object* noundef %331, %struct.Object* noundef %332, %struct.Object* noundef %333)
  br label %if.end614

if.else290:                                       ; preds = %if.else274
  %334 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data291 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %334, i32 0, i32 1
  %symbol292 = bitcast %union.anon* %data291 to %struct.SymbolNode**
  %335 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol292, align 8
  %symbol_name293 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %335, i32 0, i32 0
  %336 = load i8*, i8** %symbol_name293, align 8
  %call294 = call i32 @strcmp(i8* noundef %336, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0)) #12
  %cmp295 = icmp eq i32 %call294, 0
  br i1 %cmp295, label %if.then296, label %if.else306

if.then296:                                       ; preds = %if.else290
  %337 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %338 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call298 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %337, %struct.Env* noundef %338)
  store %struct.Object* %call298, %struct.Object** %operand1297, align 8
  %339 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %340 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call300 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %339, %struct.Env* noundef %340)
  store %struct.Object* %call300, %struct.Object** %operand2299, align 8
  %341 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next301 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %341, i32 0, i32 1
  %342 = load %struct.ExpressionList*, %struct.ExpressionList** %next301, align 8
  %expression302 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %342, i32 0, i32 0
  %343 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression302, align 8
  %344 = load %struct.Object*, %struct.Object** %operand1297, align 8
  %345 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %346 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %343, %struct.Object* noundef %344, %struct.Env* noundef %345, %struct.AllocatorContext* noundef %346)
  %347 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next303 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %347, i32 0, i32 1
  %348 = load %struct.ExpressionList*, %struct.ExpressionList** %next303, align 8
  %next304 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %348, i32 0, i32 1
  %349 = load %struct.ExpressionList*, %struct.ExpressionList** %next304, align 8
  %expression305 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %349, i32 0, i32 0
  %350 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression305, align 8
  %351 = load %struct.Object*, %struct.Object** %operand2299, align 8
  %352 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %353 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %350, %struct.Object* noundef %351, %struct.Env* noundef %352, %struct.AllocatorContext* noundef %353)
  %354 = load %struct.Object*, %struct.Object** %operand1297, align 8
  %355 = load %struct.Object*, %struct.Object** %operand2299, align 8
  %356 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionGt(%struct.Object* noundef %354, %struct.Object* noundef %355, %struct.Object* noundef %356)
  br label %if.end613

if.else306:                                       ; preds = %if.else290
  %357 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data307 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %357, i32 0, i32 1
  %symbol308 = bitcast %union.anon* %data307 to %struct.SymbolNode**
  %358 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol308, align 8
  %symbol_name309 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %358, i32 0, i32 0
  %359 = load i8*, i8** %symbol_name309, align 8
  %call310 = call i32 @strcmp(i8* noundef %359, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0)) #12
  %cmp311 = icmp eq i32 %call310, 0
  br i1 %cmp311, label %if.then312, label %if.else322

if.then312:                                       ; preds = %if.else306
  %360 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %361 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call314 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %360, %struct.Env* noundef %361)
  store %struct.Object* %call314, %struct.Object** %operand1313, align 8
  %362 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %363 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call316 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %362, %struct.Env* noundef %363)
  store %struct.Object* %call316, %struct.Object** %operand2315, align 8
  %364 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next317 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %364, i32 0, i32 1
  %365 = load %struct.ExpressionList*, %struct.ExpressionList** %next317, align 8
  %expression318 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %365, i32 0, i32 0
  %366 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression318, align 8
  %367 = load %struct.Object*, %struct.Object** %operand1313, align 8
  %368 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %369 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %366, %struct.Object* noundef %367, %struct.Env* noundef %368, %struct.AllocatorContext* noundef %369)
  %370 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next319 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %370, i32 0, i32 1
  %371 = load %struct.ExpressionList*, %struct.ExpressionList** %next319, align 8
  %next320 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %371, i32 0, i32 1
  %372 = load %struct.ExpressionList*, %struct.ExpressionList** %next320, align 8
  %expression321 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %372, i32 0, i32 0
  %373 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression321, align 8
  %374 = load %struct.Object*, %struct.Object** %operand2315, align 8
  %375 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %376 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %373, %struct.Object* noundef %374, %struct.Env* noundef %375, %struct.AllocatorContext* noundef %376)
  %377 = load %struct.Object*, %struct.Object** %operand1313, align 8
  %378 = load %struct.Object*, %struct.Object** %operand2315, align 8
  %379 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionEq(%struct.Object* noundef %377, %struct.Object* noundef %378, %struct.Object* noundef %379)
  br label %if.end612

if.else322:                                       ; preds = %if.else306
  %380 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data323 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %380, i32 0, i32 1
  %symbol324 = bitcast %union.anon* %data323 to %struct.SymbolNode**
  %381 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol324, align 8
  %symbol_name325 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %381, i32 0, i32 0
  %382 = load i8*, i8** %symbol_name325, align 8
  %call326 = call i32 @strcmp(i8* noundef %382, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0)) #12
  %cmp327 = icmp eq i32 %call326, 0
  br i1 %cmp327, label %if.then328, label %if.else333

if.then328:                                       ; preds = %if.else322
  %383 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %384 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call330 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %383, %struct.Env* noundef %384)
  store %struct.Object* %call330, %struct.Object** %operand329, align 8
  %385 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next331 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %385, i32 0, i32 1
  %386 = load %struct.ExpressionList*, %struct.ExpressionList** %next331, align 8
  %expression332 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %386, i32 0, i32 0
  %387 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression332, align 8
  %388 = load %struct.Object*, %struct.Object** %operand329, align 8
  %389 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %390 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %387, %struct.Object* noundef %388, %struct.Env* noundef %389, %struct.AllocatorContext* noundef %390)
  %391 = load %struct.Object*, %struct.Object** %operand329, align 8
  %392 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionNot(%struct.Object* noundef %391, %struct.Object* noundef %392)
  br label %if.end611

if.else333:                                       ; preds = %if.else322
  %393 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data334 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %393, i32 0, i32 1
  %symbol335 = bitcast %union.anon* %data334 to %struct.SymbolNode**
  %394 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol335, align 8
  %symbol_name336 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %394, i32 0, i32 0
  %395 = load i8*, i8** %symbol_name336, align 8
  %call337 = call i32 @strcmp(i8* noundef %395, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #12
  %cmp338 = icmp eq i32 %call337, 0
  br i1 %cmp338, label %if.then339, label %if.else347

if.then339:                                       ; preds = %if.else333
  %396 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %397 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call341 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %396, %struct.Env* noundef %397)
  store %struct.Object* %call341, %struct.Object** %operand340, align 8
  %398 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next342 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %398, i32 0, i32 1
  %399 = load %struct.ExpressionList*, %struct.ExpressionList** %next342, align 8
  %expression343 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %399, i32 0, i32 0
  %400 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression343, align 8
  %401 = load %struct.Object*, %struct.Object** %operand340, align 8
  %402 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %403 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %400, %struct.Object* noundef %401, %struct.Env* noundef %402, %struct.AllocatorContext* noundef %403)
  %404 = load %struct.Object*, %struct.Object** %operand340, align 8
  %call344 = call i8* @stringifyObject(%struct.Object* noundef %404)
  store i8* %call344, i8** %str, align 8
  %405 = load i8*, i8** %str, align 8
  %call345 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0), i8* noundef %405)
  %406 = load i8*, i8** %str, align 8
  call void @free(i8* noundef %406) #10
  %407 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type346 = getelementptr inbounds %struct.Object, %struct.Object* %407, i32 0, i32 1
  store i32 4, i32* %type346, align 4
  br label %if.end610

if.else347:                                       ; preds = %if.else333
  %408 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data348 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %408, i32 0, i32 1
  %symbol349 = bitcast %union.anon* %data348 to %struct.SymbolNode**
  %409 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol349, align 8
  %symbol_name350 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %409, i32 0, i32 0
  %410 = load i8*, i8** %symbol_name350, align 8
  %call351 = call i32 @strcmp(i8* noundef %410, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0)) #12
  %cmp352 = icmp eq i32 %call351, 0
  br i1 %cmp352, label %if.then353, label %if.else358

if.then353:                                       ; preds = %if.else347
  %411 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %412 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call355 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %411, %struct.Env* noundef %412)
  store %struct.Object* %call355, %struct.Object** %operand354, align 8
  %413 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next356 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %413, i32 0, i32 1
  %414 = load %struct.ExpressionList*, %struct.ExpressionList** %next356, align 8
  %expression357 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %414, i32 0, i32 0
  %415 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression357, align 8
  %416 = load %struct.Object*, %struct.Object** %operand354, align 8
  %417 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %418 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %415, %struct.Object* noundef %416, %struct.Env* noundef %417, %struct.AllocatorContext* noundef %418)
  %419 = load %struct.Object*, %struct.Object** %operand354, align 8
  %420 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionCar(%struct.Object* noundef %419, %struct.Object* noundef %420)
  br label %if.end609

if.else358:                                       ; preds = %if.else347
  %421 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data359 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %421, i32 0, i32 1
  %symbol360 = bitcast %union.anon* %data359 to %struct.SymbolNode**
  %422 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol360, align 8
  %symbol_name361 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %422, i32 0, i32 0
  %423 = load i8*, i8** %symbol_name361, align 8
  %call362 = call i32 @strcmp(i8* noundef %423, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0)) #12
  %cmp363 = icmp eq i32 %call362, 0
  br i1 %cmp363, label %if.then364, label %if.else369

if.then364:                                       ; preds = %if.else358
  %424 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %425 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call366 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %424, %struct.Env* noundef %425)
  store %struct.Object* %call366, %struct.Object** %operand365, align 8
  %426 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next367 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %426, i32 0, i32 1
  %427 = load %struct.ExpressionList*, %struct.ExpressionList** %next367, align 8
  %expression368 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %427, i32 0, i32 0
  %428 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression368, align 8
  %429 = load %struct.Object*, %struct.Object** %operand365, align 8
  %430 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %431 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %428, %struct.Object* noundef %429, %struct.Env* noundef %430, %struct.AllocatorContext* noundef %431)
  %432 = load %struct.Object*, %struct.Object** %operand365, align 8
  %433 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionCdr(%struct.Object* noundef %432, %struct.Object* noundef %433)
  br label %if.end608

if.else369:                                       ; preds = %if.else358
  %434 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data370 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %434, i32 0, i32 1
  %symbol371 = bitcast %union.anon* %data370 to %struct.SymbolNode**
  %435 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol371, align 8
  %symbol_name372 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %435, i32 0, i32 0
  %436 = load i8*, i8** %symbol_name372, align 8
  %call373 = call i32 @strcmp(i8* noundef %436, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0)) #12
  %cmp374 = icmp eq i32 %call373, 0
  br i1 %cmp374, label %if.then375, label %if.else385

if.then375:                                       ; preds = %if.else369
  %437 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %438 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call377 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %437, %struct.Env* noundef %438)
  store %struct.Object* %call377, %struct.Object** %operand1376, align 8
  %439 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %440 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call379 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %439, %struct.Env* noundef %440)
  store %struct.Object* %call379, %struct.Object** %operand2378, align 8
  %441 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next380 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %441, i32 0, i32 1
  %442 = load %struct.ExpressionList*, %struct.ExpressionList** %next380, align 8
  %expression381 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %442, i32 0, i32 0
  %443 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression381, align 8
  %444 = load %struct.Object*, %struct.Object** %operand1376, align 8
  %445 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %446 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %443, %struct.Object* noundef %444, %struct.Env* noundef %445, %struct.AllocatorContext* noundef %446)
  %447 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next382 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %447, i32 0, i32 1
  %448 = load %struct.ExpressionList*, %struct.ExpressionList** %next382, align 8
  %next383 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %448, i32 0, i32 1
  %449 = load %struct.ExpressionList*, %struct.ExpressionList** %next383, align 8
  %expression384 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %449, i32 0, i32 0
  %450 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression384, align 8
  %451 = load %struct.Object*, %struct.Object** %operand2378, align 8
  %452 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %453 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %450, %struct.Object* noundef %451, %struct.Env* noundef %452, %struct.AllocatorContext* noundef %453)
  %454 = load %struct.Object*, %struct.Object** %operand1376, align 8
  %455 = load %struct.Object*, %struct.Object** %operand2378, align 8
  %456 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %457 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %458 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @definedFunctionCons(%struct.Object* noundef %454, %struct.Object* noundef %455, %struct.Object* noundef %456, %struct.Env* noundef %457, %struct.AllocatorContext* noundef %458)
  br label %if.end607

if.else385:                                       ; preds = %if.else369
  %459 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data386 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %459, i32 0, i32 1
  %symbol387 = bitcast %union.anon* %data386 to %struct.SymbolNode**
  %460 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol387, align 8
  %symbol_name388 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %460, i32 0, i32 0
  %461 = load i8*, i8** %symbol_name388, align 8
  %call389 = call i32 @strcmp(i8* noundef %461, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i64 0, i64 0)) #12
  %cmp390 = icmp eq i32 %call389, 0
  br i1 %cmp390, label %if.then391, label %if.else400

if.then391:                                       ; preds = %if.else385
  store i8* null, i8** %line, align 8
  store i64 0, i64* %len, align 8
  %462 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call392 = call i64 @getline(i8** noundef %line, i64* noundef %len, %struct._IO_FILE* noundef %462)
  store i64 %call392, i64* %read, align 8
  %cmp393 = icmp ne i64 %call392, -1
  br i1 %cmp393, label %if.then394, label %if.else397

if.then394:                                       ; preds = %if.then391
  %463 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type395 = getelementptr inbounds %struct.Object, %struct.Object* %463, i32 0, i32 1
  store i32 1, i32* %type395, align 4
  %464 = load i8*, i8** %line, align 8
  %465 = load i64, i64* %read, align 8
  %sub = sub nsw i64 %465, 1
  %arrayidx396 = getelementptr inbounds i8, i8* %464, i64 %sub
  store i8 0, i8* %arrayidx396, align 1
  %466 = load i8*, i8** %line, align 8
  %467 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %468 = getelementptr inbounds %struct.Object, %struct.Object* %467, i32 0, i32 2
  %string_value = bitcast %union.anon.1* %468 to i8**
  store i8* %466, i8** %string_value, align 8
  br label %if.end399

if.else397:                                       ; preds = %if.then391
  %469 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type398 = getelementptr inbounds %struct.Object, %struct.Object* %469, i32 0, i32 1
  store i32 4, i32* %type398, align 4
  br label %if.end399

if.end399:                                        ; preds = %if.else397, %if.then394
  br label %if.end606

if.else400:                                       ; preds = %if.else385
  %470 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data401 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %470, i32 0, i32 1
  %symbol402 = bitcast %union.anon* %data401 to %struct.SymbolNode**
  %471 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol402, align 8
  %symbol_name403 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %471, i32 0, i32 0
  %472 = load i8*, i8** %symbol_name403, align 8
  %call404 = call i32 @strcmp(i8* noundef %472, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0)) #12
  %cmp405 = icmp eq i32 %call404, 0
  br i1 %cmp405, label %if.then406, label %if.else416

if.then406:                                       ; preds = %if.else400
  %473 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %474 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call408 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %473, %struct.Env* noundef %474)
  store %struct.Object* %call408, %struct.Object** %operand1407, align 8
  %475 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %476 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call410 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %475, %struct.Env* noundef %476)
  store %struct.Object* %call410, %struct.Object** %operand2409, align 8
  %477 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next411 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %477, i32 0, i32 1
  %478 = load %struct.ExpressionList*, %struct.ExpressionList** %next411, align 8
  %expression412 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %478, i32 0, i32 0
  %479 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression412, align 8
  %480 = load %struct.Object*, %struct.Object** %operand1407, align 8
  %481 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %482 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %479, %struct.Object* noundef %480, %struct.Env* noundef %481, %struct.AllocatorContext* noundef %482)
  %483 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next413 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %483, i32 0, i32 1
  %484 = load %struct.ExpressionList*, %struct.ExpressionList** %next413, align 8
  %next414 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %484, i32 0, i32 1
  %485 = load %struct.ExpressionList*, %struct.ExpressionList** %next414, align 8
  %expression415 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %485, i32 0, i32 0
  %486 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression415, align 8
  %487 = load %struct.Object*, %struct.Object** %operand2409, align 8
  %488 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %489 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %486, %struct.Object* noundef %487, %struct.Env* noundef %488, %struct.AllocatorContext* noundef %489)
  %490 = load %struct.Object*, %struct.Object** %operand1407, align 8
  %491 = load %struct.Object*, %struct.Object** %operand2409, align 8
  %492 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %493 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %494 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @definedFunctionSplit(%struct.Object* noundef %490, %struct.Object* noundef %491, %struct.Object* noundef %492, %struct.Env* noundef %493, %struct.AllocatorContext* noundef %494)
  br label %if.end605

if.else416:                                       ; preds = %if.else400
  %495 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data417 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %495, i32 0, i32 1
  %symbol418 = bitcast %union.anon* %data417 to %struct.SymbolNode**
  %496 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol418, align 8
  %symbol_name419 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %496, i32 0, i32 0
  %497 = load i8*, i8** %symbol_name419, align 8
  %call420 = call i32 @strcmp(i8* noundef %497, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0)) #12
  %cmp421 = icmp eq i32 %call420, 0
  br i1 %cmp421, label %if.then422, label %if.else432

if.then422:                                       ; preds = %if.else416
  %498 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %499 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call424 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %498, %struct.Env* noundef %499)
  store %struct.Object* %call424, %struct.Object** %operand1423, align 8
  %500 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %501 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call426 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %500, %struct.Env* noundef %501)
  store %struct.Object* %call426, %struct.Object** %operand2425, align 8
  %502 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next427 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %502, i32 0, i32 1
  %503 = load %struct.ExpressionList*, %struct.ExpressionList** %next427, align 8
  %expression428 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %503, i32 0, i32 0
  %504 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression428, align 8
  %505 = load %struct.Object*, %struct.Object** %operand1423, align 8
  %506 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %507 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %504, %struct.Object* noundef %505, %struct.Env* noundef %506, %struct.AllocatorContext* noundef %507)
  %508 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next429 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %508, i32 0, i32 1
  %509 = load %struct.ExpressionList*, %struct.ExpressionList** %next429, align 8
  %next430 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %509, i32 0, i32 1
  %510 = load %struct.ExpressionList*, %struct.ExpressionList** %next430, align 8
  %expression431 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %510, i32 0, i32 0
  %511 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression431, align 8
  %512 = load %struct.Object*, %struct.Object** %operand2425, align 8
  %513 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %514 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %511, %struct.Object* noundef %512, %struct.Env* noundef %513, %struct.AllocatorContext* noundef %514)
  %515 = load %struct.Object*, %struct.Object** %operand1423, align 8
  %516 = load %struct.Object*, %struct.Object** %operand2425, align 8
  %517 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionListRef(%struct.Object* noundef %515, %struct.Object* noundef %516, %struct.Object* noundef %517)
  br label %if.end604

if.else432:                                       ; preds = %if.else416
  %518 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data433 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %518, i32 0, i32 1
  %symbol434 = bitcast %union.anon* %data433 to %struct.SymbolNode**
  %519 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol434, align 8
  %symbol_name435 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %519, i32 0, i32 0
  %520 = load i8*, i8** %symbol_name435, align 8
  %call436 = call i32 @strcmp(i8* noundef %520, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0)) #12
  %cmp437 = icmp eq i32 %call436, 0
  br i1 %cmp437, label %if.then438, label %if.else454

if.then438:                                       ; preds = %if.else432
  %521 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next440 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %521, i32 0, i32 1
  %522 = load %struct.ExpressionList*, %struct.ExpressionList** %next440, align 8
  store %struct.ExpressionList* %522, %struct.ExpressionList** %exprs439, align 8
  store %struct.Object* null, %struct.Object** %operand441, align 8
  br label %while.cond442

while.cond442:                                    ; preds = %while.body444, %if.then438
  %523 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs439, align 8
  %cmp443 = icmp ne %struct.ExpressionList* %523, null
  br i1 %cmp443, label %while.body444, label %while.end448

while.body444:                                    ; preds = %while.cond442
  %524 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %525 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call445 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %524, %struct.Env* noundef %525)
  store %struct.Object* %call445, %struct.Object** %operand441, align 8
  %526 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs439, align 8
  %expression446 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %526, i32 0, i32 0
  %527 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression446, align 8
  %528 = load %struct.Object*, %struct.Object** %operand441, align 8
  %529 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %530 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %527, %struct.Object* noundef %528, %struct.Env* noundef %529, %struct.AllocatorContext* noundef %530)
  %531 = load %struct.ExpressionList*, %struct.ExpressionList** %exprs439, align 8
  %next447 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %531, i32 0, i32 1
  %532 = load %struct.ExpressionList*, %struct.ExpressionList** %next447, align 8
  store %struct.ExpressionList* %532, %struct.ExpressionList** %exprs439, align 8
  br label %while.cond442, !llvm.loop !34

while.end448:                                     ; preds = %while.cond442
  %533 = load %struct.Object*, %struct.Object** %operand441, align 8
  %cmp449 = icmp ne %struct.Object* %533, null
  br i1 %cmp449, label %if.then450, label %if.else451

if.then450:                                       ; preds = %while.end448
  %534 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %535 = load %struct.Object*, %struct.Object** %operand441, align 8
  %536 = bitcast %struct.Object* %534 to i8*
  %537 = bitcast %struct.Object* %535 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %536, i8* align 8 %537, i64 16, i1 false)
  br label %if.end453

if.else451:                                       ; preds = %while.end448
  %538 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type452 = getelementptr inbounds %struct.Object, %struct.Object* %538, i32 0, i32 1
  store i32 4, i32* %type452, align 4
  br label %if.end453

if.end453:                                        ; preds = %if.else451, %if.then450
  br label %if.end603

if.else454:                                       ; preds = %if.else432
  %539 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data455 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %539, i32 0, i32 1
  %symbol456 = bitcast %union.anon* %data455 to %struct.SymbolNode**
  %540 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol456, align 8
  %symbol_name457 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %540, i32 0, i32 0
  %541 = load i8*, i8** %symbol_name457, align 8
  %call458 = call i32 @strcmp(i8* noundef %541, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i64 0, i64 0)) #12
  %cmp459 = icmp eq i32 %call458, 0
  br i1 %cmp459, label %if.then460, label %if.else465

if.then460:                                       ; preds = %if.else454
  %542 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %543 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call462 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %542, %struct.Env* noundef %543)
  store %struct.Object* %call462, %struct.Object** %operand461, align 8
  %544 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next463 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %544, i32 0, i32 1
  %545 = load %struct.ExpressionList*, %struct.ExpressionList** %next463, align 8
  %expression464 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %545, i32 0, i32 0
  %546 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression464, align 8
  %547 = load %struct.Object*, %struct.Object** %operand461, align 8
  %548 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %549 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %546, %struct.Object* noundef %547, %struct.Env* noundef %548, %struct.AllocatorContext* noundef %549)
  %550 = load %struct.Object*, %struct.Object** %operand461, align 8
  %551 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionRemoveWhitespaces(%struct.Object* noundef %550, %struct.Object* noundef %551)
  br label %if.end602

if.else465:                                       ; preds = %if.else454
  %552 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data466 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %552, i32 0, i32 1
  %symbol467 = bitcast %union.anon* %data466 to %struct.SymbolNode**
  %553 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol467, align 8
  %symbol_name468 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %553, i32 0, i32 0
  %554 = load i8*, i8** %symbol_name468, align 8
  %call469 = call i32 @strcmp(i8* noundef %554, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0)) #12
  %cmp470 = icmp eq i32 %call469, 0
  br i1 %cmp470, label %if.then471, label %if.else476

if.then471:                                       ; preds = %if.else465
  %555 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %556 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call473 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %555, %struct.Env* noundef %556)
  store %struct.Object* %call473, %struct.Object** %operand472, align 8
  %557 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next474 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %557, i32 0, i32 1
  %558 = load %struct.ExpressionList*, %struct.ExpressionList** %next474, align 8
  %expression475 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %558, i32 0, i32 0
  %559 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression475, align 8
  %560 = load %struct.Object*, %struct.Object** %operand472, align 8
  %561 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %562 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %559, %struct.Object* noundef %560, %struct.Env* noundef %561, %struct.AllocatorContext* noundef %562)
  %563 = load %struct.Object*, %struct.Object** %operand472, align 8
  %564 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionPop(%struct.Object* noundef %563, %struct.Object* noundef %564)
  br label %if.end601

if.else476:                                       ; preds = %if.else465
  %565 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data477 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %565, i32 0, i32 1
  %symbol478 = bitcast %union.anon* %data477 to %struct.SymbolNode**
  %566 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol478, align 8
  %symbol_name479 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %566, i32 0, i32 0
  %567 = load i8*, i8** %symbol_name479, align 8
  %call480 = call i32 @strcmp(i8* noundef %567, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0)) #12
  %cmp481 = icmp eq i32 %call480, 0
  br i1 %cmp481, label %if.then482, label %if.else492

if.then482:                                       ; preds = %if.else476
  %568 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %569 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call484 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %568, %struct.Env* noundef %569)
  store %struct.Object* %call484, %struct.Object** %operand1483, align 8
  %570 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %571 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call486 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %570, %struct.Env* noundef %571)
  store %struct.Object* %call486, %struct.Object** %operand2485, align 8
  %572 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next487 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %572, i32 0, i32 1
  %573 = load %struct.ExpressionList*, %struct.ExpressionList** %next487, align 8
  %next488 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %573, i32 0, i32 1
  %574 = load %struct.ExpressionList*, %struct.ExpressionList** %next488, align 8
  %expression489 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %574, i32 0, i32 0
  %575 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression489, align 8
  %576 = load %struct.Object*, %struct.Object** %operand1483, align 8
  %577 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %578 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %575, %struct.Object* noundef %576, %struct.Env* noundef %577, %struct.AllocatorContext* noundef %578)
  %579 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next490 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %579, i32 0, i32 1
  %580 = load %struct.ExpressionList*, %struct.ExpressionList** %next490, align 8
  %expression491 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %580, i32 0, i32 0
  %581 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression491, align 8
  %582 = load %struct.Object*, %struct.Object** %operand2485, align 8
  %583 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %584 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %581, %struct.Object* noundef %582, %struct.Env* noundef %583, %struct.AllocatorContext* noundef %584)
  %585 = load %struct.Object*, %struct.Object** %operand2485, align 8
  %586 = load %struct.Object*, %struct.Object** %operand1483, align 8
  %587 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %588 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %589 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @definedFunctionPush(%struct.Object* noundef %585, %struct.Object* noundef %586, %struct.Object* noundef %587, %struct.Env* noundef %588, %struct.AllocatorContext* noundef %589)
  br label %if.end600

if.else492:                                       ; preds = %if.else476
  %590 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data493 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %590, i32 0, i32 1
  %symbol494 = bitcast %union.anon* %data493 to %struct.SymbolNode**
  %591 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol494, align 8
  %symbol_name495 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %591, i32 0, i32 0
  %592 = load i8*, i8** %symbol_name495, align 8
  %call496 = call i32 @strcmp(i8* noundef %592, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #12
  %cmp497 = icmp eq i32 %call496, 0
  br i1 %cmp497, label %if.then498, label %if.else503

if.then498:                                       ; preds = %if.else492
  %593 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %594 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call500 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %593, %struct.Env* noundef %594)
  store %struct.Object* %call500, %struct.Object** %operand499, align 8
  %595 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next501 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %595, i32 0, i32 1
  %596 = load %struct.ExpressionList*, %struct.ExpressionList** %next501, align 8
  %expression502 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %596, i32 0, i32 0
  %597 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression502, align 8
  %598 = load %struct.Object*, %struct.Object** %operand499, align 8
  %599 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %600 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %597, %struct.Object* noundef %598, %struct.Env* noundef %599, %struct.AllocatorContext* noundef %600)
  %601 = load %struct.Object*, %struct.Object** %operand499, align 8
  %602 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionLength(%struct.Object* noundef %601, %struct.Object* noundef %602)
  br label %if.end599

if.else503:                                       ; preds = %if.else492
  %603 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data504 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %603, i32 0, i32 1
  %symbol505 = bitcast %union.anon* %data504 to %struct.SymbolNode**
  %604 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol505, align 8
  %symbol_name506 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %604, i32 0, i32 0
  %605 = load i8*, i8** %symbol_name506, align 8
  %call507 = call i32 @strcmp(i8* noundef %605, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0)) #12
  %cmp508 = icmp eq i32 %call507, 0
  br i1 %cmp508, label %if.then509, label %if.else514

if.then509:                                       ; preds = %if.else503
  %606 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %607 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call511 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %606, %struct.Env* noundef %607)
  store %struct.Object* %call511, %struct.Object** %operand510, align 8
  %608 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next512 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %608, i32 0, i32 1
  %609 = load %struct.ExpressionList*, %struct.ExpressionList** %next512, align 8
  %expression513 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %609, i32 0, i32 0
  %610 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression513, align 8
  %611 = load %struct.Object*, %struct.Object** %operand510, align 8
  %612 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %613 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %610, %struct.Object* noundef %611, %struct.Env* noundef %612, %struct.AllocatorContext* noundef %613)
  %614 = load %struct.Object*, %struct.Object** %operand510, align 8
  %615 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionIsIntString(%struct.Object* noundef %614, %struct.Object* noundef %615)
  br label %if.end598

if.else514:                                       ; preds = %if.else503
  %616 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data515 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %616, i32 0, i32 1
  %symbol516 = bitcast %union.anon* %data515 to %struct.SymbolNode**
  %617 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol516, align 8
  %symbol_name517 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %617, i32 0, i32 0
  %618 = load i8*, i8** %symbol_name517, align 8
  %call518 = call i32 @strcmp(i8* noundef %618, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0)) #12
  %cmp519 = icmp eq i32 %call518, 0
  br i1 %cmp519, label %if.then520, label %if.else525

if.then520:                                       ; preds = %if.else514
  %619 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %620 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call522 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %619, %struct.Env* noundef %620)
  store %struct.Object* %call522, %struct.Object** %operand521, align 8
  %621 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next523 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %621, i32 0, i32 1
  %622 = load %struct.ExpressionList*, %struct.ExpressionList** %next523, align 8
  %expression524 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %622, i32 0, i32 0
  %623 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression524, align 8
  %624 = load %struct.Object*, %struct.Object** %operand521, align 8
  %625 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %626 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %623, %struct.Object* noundef %624, %struct.Env* noundef %625, %struct.AllocatorContext* noundef %626)
  %627 = load %struct.Object*, %struct.Object** %operand521, align 8
  %628 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionParseInt(%struct.Object* noundef %627, %struct.Object* noundef %628)
  br label %if.end597

if.else525:                                       ; preds = %if.else514
  %629 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data526 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %629, i32 0, i32 1
  %symbol527 = bitcast %union.anon* %data526 to %struct.SymbolNode**
  %630 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol527, align 8
  %symbol_name528 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %630, i32 0, i32 0
  %631 = load i8*, i8** %symbol_name528, align 8
  %call529 = call i32 @strcmp(i8* noundef %631, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0)) #12
  %cmp530 = icmp eq i32 %call529, 0
  br i1 %cmp530, label %if.then531, label %if.else541

if.then531:                                       ; preds = %if.else525
  %632 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %633 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call533 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %632, %struct.Env* noundef %633)
  store %struct.Object* %call533, %struct.Object** %operand1532, align 8
  %634 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %635 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call535 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %634, %struct.Env* noundef %635)
  store %struct.Object* %call535, %struct.Object** %operand2534, align 8
  %636 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next536 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %636, i32 0, i32 1
  %637 = load %struct.ExpressionList*, %struct.ExpressionList** %next536, align 8
  %expression537 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %637, i32 0, i32 0
  %638 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression537, align 8
  %639 = load %struct.Object*, %struct.Object** %operand1532, align 8
  %640 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %641 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %638, %struct.Object* noundef %639, %struct.Env* noundef %640, %struct.AllocatorContext* noundef %641)
  %642 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next538 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %642, i32 0, i32 1
  %643 = load %struct.ExpressionList*, %struct.ExpressionList** %next538, align 8
  %next539 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %643, i32 0, i32 1
  %644 = load %struct.ExpressionList*, %struct.ExpressionList** %next539, align 8
  %expression540 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %644, i32 0, i32 0
  %645 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression540, align 8
  %646 = load %struct.Object*, %struct.Object** %operand2534, align 8
  %647 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %648 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %645, %struct.Object* noundef %646, %struct.Env* noundef %647, %struct.AllocatorContext* noundef %648)
  %649 = load %struct.Object*, %struct.Object** %operand1532, align 8
  %650 = load %struct.Object*, %struct.Object** %operand2534, align 8
  %651 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  call void @definedFunctionStringRef(%struct.Object* noundef %649, %struct.Object* noundef %650, %struct.Object* noundef %651)
  br label %if.end596

if.else541:                                       ; preds = %if.else525
  store i32 0, i32* %i542, align 4
  %652 = load %struct.Env*, %struct.Env** %env.addr, align 8
  store %struct.Env* %652, %struct.Env** %current_env, align 8
  %653 = load %struct.Env*, %struct.Env** %current_env, align 8
  store %struct.Env* %653, %struct.Env** %looked_up_env, align 8
  br label %while.cond543

while.cond543:                                    ; preds = %if.end590, %if.else541
  %654 = load %struct.Env*, %struct.Env** %looked_up_env, align 8
  %bindings = getelementptr inbounds %struct.Env, %struct.Env* %654, i32 0, i32 0
  %655 = load i32, i32* %i542, align 4
  %idxprom544 = sext i32 %655 to i64
  %arrayidx545 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings, i64 0, i64 %idxprom544
  %symbol_name546 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx545, i32 0, i32 0
  %656 = load i8*, i8** %symbol_name546, align 8
  %cmp547 = icmp ne i8* %656, null
  br i1 %cmp547, label %while.body548, label %while.end591

while.body548:                                    ; preds = %while.cond543
  %657 = load %struct.Env*, %struct.Env** %looked_up_env, align 8
  %bindings549 = getelementptr inbounds %struct.Env, %struct.Env* %657, i32 0, i32 0
  %658 = load i32, i32* %i542, align 4
  %idxprom550 = sext i32 %658 to i64
  %arrayidx551 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings549, i64 0, i64 %idxprom550
  %symbol_name552 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx551, i32 0, i32 0
  %659 = load i8*, i8** %symbol_name552, align 8
  %660 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data553 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %660, i32 0, i32 1
  %symbol554 = bitcast %union.anon* %data553 to %struct.SymbolNode**
  %661 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol554, align 8
  %symbol_name555 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %661, i32 0, i32 0
  %662 = load i8*, i8** %symbol_name555, align 8
  %call556 = call i32 @strcmp(i8* noundef %659, i8* noundef %662) #12
  %cmp557 = icmp eq i32 %call556, 0
  br i1 %cmp557, label %if.then558, label %if.end581

if.then558:                                       ; preds = %while.body548
  %663 = load %struct.Env*, %struct.Env** %looked_up_env, align 8
  %bindings560 = getelementptr inbounds %struct.Env, %struct.Env* %663, i32 0, i32 0
  %664 = load i32, i32* %i542, align 4
  %idxprom561 = sext i32 %664 to i64
  %arrayidx562 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings560, i64 0, i64 %idxprom561
  %value = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx562, i32 0, i32 1
  %665 = load %struct.Object*, %struct.Object** %value, align 8
  %666 = getelementptr inbounds %struct.Object, %struct.Object* %665, i32 0, i32 2
  %function_value563 = bitcast %union.anon.1* %666 to %struct.Function**
  %667 = load %struct.Function*, %struct.Function** %function_value563, align 8
  store %struct.Function* %667, %struct.Function** %function559, align 8
  %call564 = call noalias i8* @malloc(i64 noundef 168) #10
  %668 = bitcast i8* %call564 to %struct.Env*
  store %struct.Env* %668, %struct.Env** %new_env, align 8
  %669 = load %struct.Env*, %struct.Env** %current_env, align 8
  %670 = load %struct.Env*, %struct.Env** %new_env, align 8
  %parent = getelementptr inbounds %struct.Env, %struct.Env* %670, i32 0, i32 1
  store %struct.Env* %669, %struct.Env** %parent, align 8
  store i32 0, i32* %j, align 4
  %671 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next565 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %671, i32 0, i32 1
  %672 = load %struct.ExpressionList*, %struct.ExpressionList** %next565, align 8
  store %struct.ExpressionList* %672, %struct.ExpressionList** %param_expr, align 8
  br label %while.cond566

while.cond566:                                    ; preds = %while.body571, %if.then558
  %673 = load %struct.Function*, %struct.Function** %function559, align 8
  %param_symbol_names567 = getelementptr inbounds %struct.Function, %struct.Function* %673, i32 0, i32 0
  %674 = load i8**, i8*** %param_symbol_names567, align 8
  %675 = load i32, i32* %j, align 4
  %idxprom568 = sext i32 %675 to i64
  %arrayidx569 = getelementptr inbounds i8*, i8** %674, i64 %idxprom568
  %676 = load i8*, i8** %arrayidx569, align 8
  %cmp570 = icmp ne i8* %676, null
  br i1 %cmp570, label %while.body571, label %while.end579

while.body571:                                    ; preds = %while.cond566
  %677 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  %678 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %call572 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %677, %struct.Env* noundef %678)
  store %struct.Object* %call572, %struct.Object** %param, align 8
  %679 = load %struct.ExpressionList*, %struct.ExpressionList** %param_expr, align 8
  %expression573 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %679, i32 0, i32 0
  %680 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression573, align 8
  %681 = load %struct.Object*, %struct.Object** %param, align 8
  %682 = load %struct.Env*, %struct.Env** %current_env, align 8
  %683 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %680, %struct.Object* noundef %681, %struct.Env* noundef %682, %struct.AllocatorContext* noundef %683)
  %684 = load %struct.ExpressionList*, %struct.ExpressionList** %param_expr, align 8
  %next574 = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %684, i32 0, i32 1
  %685 = load %struct.ExpressionList*, %struct.ExpressionList** %next574, align 8
  store %struct.ExpressionList* %685, %struct.ExpressionList** %param_expr, align 8
  %686 = load %struct.Env*, %struct.Env** %new_env, align 8
  %687 = load %struct.Function*, %struct.Function** %function559, align 8
  %param_symbol_names575 = getelementptr inbounds %struct.Function, %struct.Function* %687, i32 0, i32 0
  %688 = load i8**, i8*** %param_symbol_names575, align 8
  %689 = load i32, i32* %j, align 4
  %idxprom576 = sext i32 %689 to i64
  %arrayidx577 = getelementptr inbounds i8*, i8** %688, i64 %idxprom576
  %690 = load i8*, i8** %arrayidx577, align 8
  %691 = load %struct.Object*, %struct.Object** %param, align 8
  call void @setObjectToEnv(%struct.Env* noundef %686, i8* noundef %690, %struct.Object* noundef %691)
  %692 = load i32, i32* %j, align 4
  %inc578 = add nsw i32 %692, 1
  store i32 %inc578, i32* %j, align 4
  br label %while.cond566, !llvm.loop !35

while.end579:                                     ; preds = %while.cond566
  %693 = load %struct.Function*, %struct.Function** %function559, align 8
  %body580 = getelementptr inbounds %struct.Function, %struct.Function* %693, i32 0, i32 1
  %694 = load %struct.ExpressionNode*, %struct.ExpressionNode** %body580, align 8
  %695 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %696 = load %struct.Env*, %struct.Env** %new_env, align 8
  %697 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %694, %struct.Object* noundef %695, %struct.Env* noundef %696, %struct.AllocatorContext* noundef %697)
  br label %if.end631

if.end581:                                        ; preds = %while.body548
  %698 = load i32, i32* %i542, align 4
  %inc582 = add nsw i32 %698, 1
  store i32 %inc582, i32* %i542, align 4
  %699 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings583 = getelementptr inbounds %struct.Env, %struct.Env* %699, i32 0, i32 0
  %700 = load i32, i32* %i542, align 4
  %idxprom584 = sext i32 %700 to i64
  %arrayidx585 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings583, i64 0, i64 %idxprom584
  %symbol_name586 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx585, i32 0, i32 0
  %701 = load i8*, i8** %symbol_name586, align 8
  %cmp587 = icmp eq i8* %701, null
  br i1 %cmp587, label %if.then588, label %if.end590

if.then588:                                       ; preds = %if.end581
  %702 = load %struct.Env*, %struct.Env** %looked_up_env, align 8
  %parent589 = getelementptr inbounds %struct.Env, %struct.Env* %702, i32 0, i32 1
  %703 = load %struct.Env*, %struct.Env** %parent589, align 8
  store %struct.Env* %703, %struct.Env** %looked_up_env, align 8
  store i32 0, i32* %i542, align 4
  br label %if.end590

if.end590:                                        ; preds = %if.then588, %if.end581
  br label %while.cond543, !llvm.loop !36

while.end591:                                     ; preds = %while.cond543
  %704 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expr, align 8
  %data592 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %704, i32 0, i32 1
  %symbol593 = bitcast %union.anon* %data592 to %struct.SymbolNode**
  %705 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol593, align 8
  %symbol_name594 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %705, i32 0, i32 0
  %706 = load i8*, i8** %symbol_name594, align 8
  %call595 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i64 0, i64 0), i8* noundef %706)
  call void @exit(i32 noundef 1) #13
  unreachable

if.end596:                                        ; preds = %if.then531
  br label %if.end597

if.end597:                                        ; preds = %if.end596, %if.then520
  br label %if.end598

if.end598:                                        ; preds = %if.end597, %if.then509
  br label %if.end599

if.end599:                                        ; preds = %if.end598, %if.then498
  br label %if.end600

if.end600:                                        ; preds = %if.end599, %if.then482
  br label %if.end601

if.end601:                                        ; preds = %if.end600, %if.then471
  br label %if.end602

if.end602:                                        ; preds = %if.end601, %if.then460
  br label %if.end603

if.end603:                                        ; preds = %if.end602, %if.end453
  br label %if.end604

if.end604:                                        ; preds = %if.end603, %if.then422
  br label %if.end605

if.end605:                                        ; preds = %if.end604, %if.then406
  br label %if.end606

if.end606:                                        ; preds = %if.end605, %if.end399
  br label %if.end607

if.end607:                                        ; preds = %if.end606, %if.then375
  br label %if.end608

if.end608:                                        ; preds = %if.end607, %if.then364
  br label %if.end609

if.end609:                                        ; preds = %if.end608, %if.then353
  br label %if.end610

if.end610:                                        ; preds = %if.end609, %if.then339
  br label %if.end611

if.end611:                                        ; preds = %if.end610, %if.then328
  br label %if.end612

if.end612:                                        ; preds = %if.end611, %if.then312
  br label %if.end613

if.end613:                                        ; preds = %if.end612, %if.then296
  br label %if.end614

if.end614:                                        ; preds = %if.end613, %if.then280
  br label %if.end615

if.end615:                                        ; preds = %if.end614, %while.end271
  br label %if.end616

if.end616:                                        ; preds = %if.end615, %while.end247
  br label %if.end617

if.end617:                                        ; preds = %if.end616, %if.then219
  br label %if.end618

if.end618:                                        ; preds = %if.end617, %if.then203
  br label %if.end619

if.end619:                                        ; preds = %if.end618, %if.then187
  br label %if.end620

if.end620:                                        ; preds = %if.end619, %if.then171
  br label %if.end621

if.end621:                                        ; preds = %if.end620, %if.then157
  br label %if.end622

if.end622:                                        ; preds = %if.end621, %if.end147
  br label %if.end623

if.end623:                                        ; preds = %if.end622, %if.end90
  br label %if.end624

if.end624:                                        ; preds = %if.end623, %while.end
  br label %if.end625

if.end625:                                        ; preds = %if.end624, %if.end35
  br label %if.end628

if.else626:                                       ; preds = %land.lhs.true, %if.then
  %call627 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

if.end628:                                        ; preds = %if.end625
  br label %if.end631

if.else629:                                       ; preds = %entry
  %707 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type630 = getelementptr inbounds %struct.Object, %struct.Object* %707, i32 0, i32 1
  store i32 4, i32* %type630, align 4
  br label %if.end631

if.end631:                                        ; preds = %if.then243, %if.then266, %while.end579, %if.else629, %if.end628
  ret void
}

declare dso_local i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaluateLiteralExpression(%struct.ExpressionNode* noundef %expression, %struct.Object* noundef %evaluated) #0 {
entry:
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  %0 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %0, i32 0, i32 1
  %literal = bitcast %union.anon* %data to %struct.LiteralNode**
  %1 = load %struct.LiteralNode*, %struct.LiteralNode** %literal, align 8
  %type = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type1 = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 1
  store i32 0, i32* %type1, align 4
  %4 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data2 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %4, i32 0, i32 1
  %literal3 = bitcast %union.anon* %data2 to %struct.LiteralNode**
  %5 = load %struct.LiteralNode*, %struct.LiteralNode** %literal3, align 8
  %6 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %5, i32 0, i32 1
  %int_value = bitcast %union.anon.0* %6 to i32*
  %7 = load i32, i32* %int_value, align 8
  %8 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %9 = getelementptr inbounds %struct.Object, %struct.Object* %8, i32 0, i32 2
  %int_value4 = bitcast %union.anon.1* %9 to i32*
  store i32 %7, i32* %int_value4, align 8
  br label %if.end24

if.else:                                          ; preds = %entry
  %10 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data5 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %10, i32 0, i32 1
  %literal6 = bitcast %union.anon* %data5 to %struct.LiteralNode**
  %11 = load %struct.LiteralNode*, %struct.LiteralNode** %literal6, align 8
  %type7 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %11, i32 0, i32 0
  %12 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then9, label %if.else14

if.then9:                                         ; preds = %if.else
  %13 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type10 = getelementptr inbounds %struct.Object, %struct.Object* %13, i32 0, i32 1
  store i32 1, i32* %type10, align 4
  %14 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data11 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %14, i32 0, i32 1
  %literal12 = bitcast %union.anon* %data11 to %struct.LiteralNode**
  %15 = load %struct.LiteralNode*, %struct.LiteralNode** %literal12, align 8
  %16 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %15, i32 0, i32 1
  %string_value = bitcast %union.anon.0* %16 to i8**
  %17 = load i8*, i8** %string_value, align 8
  %18 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %19 = getelementptr inbounds %struct.Object, %struct.Object* %18, i32 0, i32 2
  %string_value13 = bitcast %union.anon.1* %19 to i8**
  store i8* %17, i8** %string_value13, align 8
  br label %if.end23

if.else14:                                        ; preds = %if.else
  %20 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data15 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %20, i32 0, i32 1
  %literal16 = bitcast %union.anon* %data15 to %struct.LiteralNode**
  %21 = load %struct.LiteralNode*, %struct.LiteralNode** %literal16, align 8
  %type17 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %21, i32 0, i32 0
  %22 = load i32, i32* %type17, align 8
  %cmp18 = icmp eq i32 %22, 2
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else14
  %23 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type20 = getelementptr inbounds %struct.Object, %struct.Object* %23, i32 0, i32 1
  store i32 2, i32* %type20, align 4
  %24 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data21 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %24, i32 0, i32 1
  %literal22 = bitcast %union.anon* %data21 to %struct.LiteralNode**
  %25 = load %struct.LiteralNode*, %struct.LiteralNode** %literal22, align 8
  %26 = getelementptr inbounds %struct.LiteralNode, %struct.LiteralNode* %25, i32 0, i32 1
  %boolean_value = bitcast %union.anon.0* %26 to i8*
  %27 = load i8, i8* %boolean_value, align 8
  %tobool = trunc i8 %27 to i1
  %conv = zext i1 %tobool to i32
  %28 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %29 = getelementptr inbounds %struct.Object, %struct.Object* %28, i32 0, i32 2
  %bool_value = bitcast %union.anon.1* %29 to i32*
  store i32 %conv, i32* %bool_value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else14
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then9
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaluateSymbolExpression(%struct.ExpressionNode* noundef %expression, %struct.Object* noundef %evaluated, %struct.Env* noundef %env, %struct.AllocatorContext* noundef %context) #0 {
entry:
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %context.addr = alloca %struct.AllocatorContext*, align 8
  %i = alloca i32, align 4
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  store %struct.AllocatorContext* %context, %struct.AllocatorContext** %context.addr, align 8
  %0 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %0, i32 0, i32 1
  %symbol = bitcast %union.anon* %data to %struct.SymbolNode**
  %1 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol, align 8
  %symbol_name = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %1, i32 0, i32 0
  %2 = load i8*, i8** %symbol_name, align 8
  %call = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %type = getelementptr inbounds %struct.Object, %struct.Object* %3, i32 0, i32 1
  store i32 4, i32* %type, align 4
  br label %if.end29

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %4 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings = getelementptr inbounds %struct.Env, %struct.Env* %4, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings, i64 0, i64 %idxprom
  %symbol_name1 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx, i32 0, i32 0
  %6 = load i8*, i8** %symbol_name1, align 8
  %cmp2 = icmp ne i8* %6, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings3 = getelementptr inbounds %struct.Env, %struct.Env* %7, i32 0, i32 0
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings3, i64 0, i64 %idxprom4
  %symbol_name6 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx5, i32 0, i32 0
  %9 = load i8*, i8** %symbol_name6, align 8
  %10 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data7 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %10, i32 0, i32 1
  %symbol8 = bitcast %union.anon* %data7 to %struct.SymbolNode**
  %11 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol8, align 8
  %symbol_name9 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %11, i32 0, i32 0
  %12 = load i8*, i8** %symbol_name9, align 8
  %call10 = call i32 @strcmp(i8* noundef %9, i8* noundef %12) #12
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %while.body
  %13 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %14 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings13 = getelementptr inbounds %struct.Env, %struct.Env* %14, i32 0, i32 0
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings13, i64 0, i64 %idxprom14
  %value = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx15, i32 0, i32 1
  %16 = load %struct.Object*, %struct.Object** %value, align 8
  %17 = bitcast %struct.Object* %13 to i8*
  %18 = bitcast %struct.Object* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %20 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings16 = getelementptr inbounds %struct.Env, %struct.Env* %20, i32 0, i32 0
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings16, i64 0, i64 %idxprom17
  %value19 = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx18, i32 0, i32 1
  store %struct.Object* %19, %struct.Object** %value19, align 8
  br label %if.end29

if.end:                                           ; preds = %while.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %while.cond
  %23 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %parent = getelementptr inbounds %struct.Env, %struct.Env* %23, i32 0, i32 1
  %24 = load %struct.Env*, %struct.Env** %parent, align 8
  %cmp20 = icmp ne %struct.Env* %24, null
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %while.end
  %25 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %26 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %27 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %parent22 = getelementptr inbounds %struct.Env, %struct.Env* %27, i32 0, i32 1
  %28 = load %struct.Env*, %struct.Env** %parent22, align 8
  %29 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context.addr, align 8
  call void @evaluateSymbolExpression(%struct.ExpressionNode* noundef %25, %struct.Object* noundef %26, %struct.Env* noundef %28, %struct.AllocatorContext* noundef %29)
  br label %if.end28

if.else23:                                        ; preds = %while.end
  %30 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %data24 = getelementptr inbounds %struct.ExpressionNode, %struct.ExpressionNode* %30, i32 0, i32 1
  %symbol25 = bitcast %union.anon* %data24 to %struct.SymbolNode**
  %31 = load %struct.SymbolNode*, %struct.SymbolNode** %symbol25, align 8
  %symbol_name26 = getelementptr inbounds %struct.SymbolNode, %struct.SymbolNode* %31, i32 0, i32 0
  %32 = load i8*, i8** %symbol_name26, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i64 0, i64 0), i8* noundef %32)
  call void @exit(i32 noundef 1) #13
  unreachable

if.end28:                                         ; preds = %if.then21
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end28, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaluateExpressionWithContext(%struct.ExpressionNode* noundef %expression, %struct.Object* noundef %evaluated, %struct.Env* noundef %env) #0 {
entry:
  %expression.addr = alloca %struct.ExpressionNode*, align 8
  %evaluated.addr = alloca %struct.Object*, align 8
  %env.addr = alloca %struct.Env*, align 8
  %context = alloca %struct.AllocatorContext*, align 8
  store %struct.ExpressionNode* %expression, %struct.ExpressionNode** %expression.addr, align 8
  store %struct.Object* %evaluated, %struct.Object** %evaluated.addr, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  %call = call %struct.AllocatorContext* @initAllocator()
  store %struct.AllocatorContext* %call, %struct.AllocatorContext** %context, align 8
  %0 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression.addr, align 8
  %1 = load %struct.Object*, %struct.Object** %evaluated.addr, align 8
  %2 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %3 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %0, %struct.Object* noundef %1, %struct.Env* noundef %2, %struct.AllocatorContext* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initEnv(%struct.Env* noundef %env) #0 {
entry:
  %env.addr = alloca %struct.Env*, align 8
  store %struct.Env* %env, %struct.Env** %env.addr, align 8
  %0 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %parent = getelementptr inbounds %struct.Env, %struct.Env* %0, i32 0, i32 1
  store %struct.Env* null, %struct.Env** %parent, align 8
  %1 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings = getelementptr inbounds %struct.Env, %struct.Env* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings, i64 0, i64 0
  %symbol_name = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx, i32 0, i32 0
  store i8* null, i8** %symbol_name, align 8
  %2 = load %struct.Env*, %struct.Env** %env.addr, align 8
  %bindings1 = getelementptr inbounds %struct.Env, %struct.Env* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [10 x %struct.Binding], [10 x %struct.Binding]* %bindings1, i64 0, i64 0
  %value = getelementptr inbounds %struct.Binding, %struct.Binding* %arrayidx2, i32 0, i32 1
  store %struct.Object* null, %struct.Object** %value, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evaluateProgram(%struct.ProgramNode* noundef %program) #0 {
entry:
  %program.addr = alloca %struct.ProgramNode*, align 8
  %expressions = alloca %struct.ExpressionList*, align 8
  %env = alloca %struct.Env*, align 8
  %context = alloca %struct.AllocatorContext*, align 8
  %evaluated = alloca %struct.Object*, align 8
  store %struct.ProgramNode* %program, %struct.ProgramNode** %program.addr, align 8
  %0 = load %struct.ProgramNode*, %struct.ProgramNode** %program.addr, align 8
  %expressions1 = getelementptr inbounds %struct.ProgramNode, %struct.ProgramNode* %0, i32 0, i32 0
  %1 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions1, align 8
  store %struct.ExpressionList* %1, %struct.ExpressionList** %expressions, align 8
  %call = call noalias i8* @malloc(i64 noundef 168) #10
  %2 = bitcast i8* %call to %struct.Env*
  store %struct.Env* %2, %struct.Env** %env, align 8
  %3 = load %struct.Env*, %struct.Env** %env, align 8
  call void @initEnv(%struct.Env* noundef %3)
  %call2 = call %struct.AllocatorContext* @initAllocator()
  store %struct.AllocatorContext* %call2, %struct.AllocatorContext** %context, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %cmp = icmp ne %struct.ExpressionList* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context, align 8
  %6 = load %struct.Env*, %struct.Env** %env, align 8
  %call3 = call %struct.Object* @allocate(%struct.AllocatorContext* noundef %5, %struct.Env* noundef %6)
  store %struct.Object* %call3, %struct.Object** %evaluated, align 8
  %7 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %expression = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %7, i32 0, i32 0
  %8 = load %struct.ExpressionNode*, %struct.ExpressionNode** %expression, align 8
  %9 = load %struct.Object*, %struct.Object** %evaluated, align 8
  %10 = load %struct.Env*, %struct.Env** %env, align 8
  %11 = load %struct.AllocatorContext*, %struct.AllocatorContext** %context, align 8
  call void @evaluateExpression(%struct.ExpressionNode* noundef %8, %struct.Object* noundef %9, %struct.Env* noundef %10, %struct.AllocatorContext* noundef %11)
  %12 = load %struct.ExpressionList*, %struct.ExpressionList** %expressions, align 8
  %next = getelementptr inbounds %struct.ExpressionList, %struct.ExpressionList* %12, i32 0, i32 1
  %13 = load %struct.ExpressionList*, %struct.ExpressionList** %next, align 8
  store %struct.ExpressionList* %13, %struct.ExpressionList** %expressions, align 8
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { cold }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { noreturn nounwind }

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
