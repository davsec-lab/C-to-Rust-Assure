; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/lceval.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/lceval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Options = type { %struct._IO_FILE*, i8, i32 }
%struct.HashTable = type { [2000 x %struct.HashNode*] }
%struct.HashNode = type { i8*, %struct.AstNode*, %struct.HashNode* }
%struct.AstNode = type { i32, %union.AstNodeUnion }
%union.AstNodeUnion = type { %struct.LambdaExpression* }
%struct.LambdaExpression = type { i8*, i8*, %struct.AstNode* }
%struct.Type = type { %struct.AstNode*, i8*, i8* }
%struct.TypeEnv = type { %struct.Type*, %struct.TypeEnv* }
%struct.Application = type { %struct.AstNode*, %struct.AstNode* }
%struct.Variable = type { i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [48 x i8] c"ERROR: Null pointer encountered at %s:%d in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/bin/main.c\00", align 1
@__func__.get_str_input = private unnamed_addr constant [14 x i8] c"get_str_input\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Enter the lambda expression: \00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to read the lambda expression.\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"tmp/expr.lambda\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Enter the file path for your expression: \00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to read file path.\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Choose: \0A[1] Normal reduction\0A[2] Step by step reduction\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Choose: \0A[1] Normal order\0A[2] Applicative Order\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"Choose your option:\0A[1] Write input\0A[2] File input\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Invalid input. Try again\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\0APARSED AST: \0A\00", align 1
@.str.16 = private unnamed_addr constant [78 x i8] c"\0ATYPECHECKING --------------------------------------------------------------\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"TYPECHECKING DONE! PROCEEDING TO REDUCE.\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"\0AReduced ast:\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@verbose_mode = internal global i8 0, align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"ERROR: %s at %s:%d in %s()\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"(@\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c" .\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"(UNKNOWN) \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"step_by_step_reduction\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"reduction_order\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"ERROR: Invalid key '%s' at config file.\00", align 1
@.str.32 = private unnamed_addr constant [98 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/config.c\00", align 1
@__func__.get_config_type = private unnamed_addr constant [16 x i8] c"get_config_type\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"Malformed config file at line: %s . Expected = sign.\0A\00", align 1
@__func__.parse_config = private unnamed_addr constant [13 x i8] c"parse_config\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"applicative\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.38 = private unnamed_addr constant [72 x i8] c"ERROR: reduction order in cfg file should be 'normal' or 'applicative'.\00", align 1
@__func__.get_config_from_file = private unnamed_addr constant [21 x i8] c"get_config_from_file\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Unrecognized key: %s\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"ERROR: File cannot be null in cfg file.\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"ERROR: Could not create file %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [94 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/io.c\00", align 1
@__func__.create_file = private unnamed_addr constant [12 x i8] c"create_file\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"ERROR: Could not open file %s\0A\00", align 1
@__func__.get_file = private unnamed_addr constant [9 x i8] c"get_file\00", align 1
@__func__.write_to_file = private unnamed_addr constant [14 x i8] c"write_to_file\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"ERROR: could not write to file at %s:%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"ERROR: could not delete to file at %s:%d\0A\00", align 1
@__func__.delete_file = private unnamed_addr constant [12 x i8] c"delete_file\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"ERROR: Could not close file at %s:%d\0A\00", align 1
@__func__.close_file = private unnamed_addr constant [11 x i8] c"close_file\00", align 1
@n = internal global i32 1, align 4
@.str.48 = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"@ \00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"VARIABLE \00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"WHITESPACE \00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"NEWLINE \00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"= \00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"ERROR \00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"AstNode Type: LAMBDA_EXPR\0A\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"AstNode Type: APPLICATION\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"AstNode Type: VAR\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"AstNode Type: DEFINITION\0A\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"(LAMBDA %s : %s\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"(APP \00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"(VAR %s \00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"(DEFINITION %s) \00", align 1
@.str.66 = private unnamed_addr constant [98 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/parser.c\00", align 1
@__func__.create_variable = private unnamed_addr constant [16 x i8] c"create_variable\00", align 1
@__func__.create_application = private unnamed_addr constant [19 x i8] c"create_application\00", align 1
@__func__.create_lambda = private unnamed_addr constant [14 x i8] c"create_lambda\00", align 1
@__func__.alpha_convert = private unnamed_addr constant [14 x i8] c"alpha_convert\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"_%d\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"A variable\00", align 1
@.str.69 = private unnamed_addr constant [88 x i8] c"A definition with name %s already exists. Cannot use same name for lambda abstraction.\0A\00", align 1
@__func__.parse_lambda = private unnamed_addr constant [13 x i8] c"parse_lambda\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"Lambda abstractions should be typed.\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"Alpha converted %s to %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"Error: %c is  a valid token\0A\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.78 = private unnamed_addr constant [59 x i8] c"Constant Variable %s is not typed. Please provide a type.\0A\00", align 1
@__func__.parse_expression = private unnamed_addr constant [17 x i8] c"parse_expression\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"a whitespace\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@__func__.parse_import = private unnamed_addr constant [13 x i8] c"parse_import\00", align 1
@.str.81 = private unnamed_addr constant [72 x i8] c"File path is too long. Please make sure it is less than 100 characters.\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"a closing quote\00", align 1
@.str.83 = private unnamed_addr constant [56 x i8] c"Expected a definition in the imported file, but got %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"a variable\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"a type definition\00", align 1
@.str.87 = private unnamed_addr constant [47 x i8] c"Type names must start with an uppercase letter\00", align 1
@__func__.parse_type_definition = private unnamed_addr constant [22 x i8] c"parse_type_definition\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"Type %s was already defined.\0A\00", align 1
@.str.89 = private unnamed_addr constant [45 x i8] c"Types should start with an uppercase letter.\00", align 1
@__func__.parse_type = private unnamed_addr constant [11 x i8] c"parse_type\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"Type %s was not defined.\0A\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"Syntax Error: Expected %s , received %c \0A\00", align 1
@reduction_order = internal global i32 0, align 4
@.str.92 = private unnamed_addr constant [12 x i8] c"Applicative\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"Order of reduction is: \00", align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"-------------------------------------------\0A\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"Expanded expression:\0A\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"Final reduced expression:\0A\00", align 1
@.str.98 = private unnamed_addr constant [99 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/reducer.c\00", align 1
@__func__.expand_definitions = private unnamed_addr constant [19 x i8] c"expand_definitions\00", align 1
@.str.99 = private unnamed_addr constant [49 x i8] c"Expanding definition of: %s . Term expanded to:\0A\00", align 1
@.str.100 = private unnamed_addr constant [72 x i8] c"Applied substitution to lambda expr of parameter <%s> and resulted in:\0A\00", align 1
@.str.101 = private unnamed_addr constant [103 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/lceval/src/typechecker.c\00", align 1
@__func__.assert_ = private unnamed_addr constant [8 x i8] c"assert_\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"Type mismatch.\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"(type null)\0A\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"Type: %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"Return type: %s\0A\00", align 1
@__func__.create_type = private unnamed_addr constant [12 x i8] c"create_type\00", align 1
@__func__.parse_function_type = private unnamed_addr constant [20 x i8] c"parse_function_type\00", align 1
@__func__.expr_type_equal = private unnamed_addr constant [16 x i8] c"expr_type_equal\00", align 1
@__func__.add_to_env = private unnamed_addr constant [11 x i8] c"add_to_env\00", align 1

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
define dso_local i8* @get_str_input(i8* noundef %input_msg, i8* noundef %error_msg) #0 {
entry:
  %input_msg.addr = alloca i8*, align 8
  %error_msg.addr = alloca i8*, align 8
  %input = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %input_msg, i8** %input_msg.addr, align 8
  store i8* %error_msg, i8** %error_msg.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 1001) #9
  store i8* %call, i8** %input, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %input, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 noundef 15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.get_str_input, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i8*, i8** %input_msg.addr, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2)
  %3 = load i8*, i8** %input, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call3 = call i8* @fgets(i8* noundef %3, i32 noundef 1001, %struct._IO_FILE* noundef %4)
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  %5 = load i8*, i8** %input, align 8
  call void @free(i8* noundef %5) #9
  %6 = load i8*, i8** %error_msg.addr, align 8
  call void @error(i8* noundef %6, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.get_str_input, i64 0, i64 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end
  %7 = load i8*, i8** %input, align 8
  %call7 = call i64 @strlen(i8* noundef %7) #11
  store i64 %call7, i64* %len, align 8
  %8 = load i64, i64* %len, align 8
  %cmp8 = icmp ugt i64 %8, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %9 = load i8*, i8** %input, align 8
  %10 = load i64, i64* %len, align 8
  %sub = sub i64 %10, 1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv, 10
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %input, align 8
  %13 = load i64, i64* %len, align 8
  %sub12 = sub i64 %13, 1
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 %sub12
  store i8 0, i8* %arrayidx13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true, %if.end6
  %14 = load i8*, i8** %input, align 8
  ret i8* %14
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i8* noundef %msg, i8* noundef %file, i32 noundef %line, i8* noundef %func) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %func.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %func, i8** %func.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %3 = load i32, i32* %line.addr, align 4
  %4 = load i8*, i8** %func.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4)
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_lambda_expr_input() #0 {
entry:
  %lambda_expr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %call = call i8* @get_str_input(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i8* %call, i8** %lambda_expr, align 8
  %call1 = call %struct._IO_FILE* @create_file(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %file, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %1 = load i8*, i8** %lambda_expr, align 8
  call void @write_to_file(%struct._IO_FILE* noundef %0, i8* noundef %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @close_file(%struct._IO_FILE* noundef %2)
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._IO_FILE* @create_file(i8* noundef %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %error_msg = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %path.addr, align 8
  %call1 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0), i8* noundef %2)
  store i8* %call1, i8** %error_msg, align 8
  %3 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %3, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.create_file, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  ret %struct._IO_FILE* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_to_file(%struct._IO_FILE* noundef %file, i8* noundef %content) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %content.addr = alloca i8*, align 8
  %error_msg = alloca i8*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %content, i8** %content.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.write_to_file, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i8*, i8** %content.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1 = call i32 @fputs(i8* noundef %2, %struct._IO_FILE* noundef %3)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.end
  %call4 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 28)
  store i8* %call4, i8** %error_msg, align 8
  %4 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %4, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.write_to_file, i64 0, i64 0))
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %do.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @rewind(%struct._IO_FILE* noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_file(%struct._IO_FILE* noundef %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %error_msg = alloca i8*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fclose(%struct._IO_FILE* noundef %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 46)
  store i8* %call1, i8** %error_msg, align 8
  %1 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %1, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.close_file, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_file_path_input() #0 {
entry:
  %file_path = alloca i8*, align 8
  %call = call i8* @get_str_input(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i8* %call, i8** %file_path, align 8
  %0 = load i8*, i8** %file_path, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @get_reduction_step_option() #0 {
entry:
  %retval = alloca i1, align 1
  %option = alloca i32, align 4
  br label %while.body

while.body:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* noundef %option)
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %while.body
  %call3 = call i32 @getchar()
  %cmp = icmp ne i32 %call3, 10
  br i1 %cmp, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  br label %while.cond2, !llvm.loop !4

while.end:                                        ; preds = %while.cond2
  %0 = load i32, i32* %option, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %while.end
  store i1 false, i1* %retval, align 1
  br label %return

sw.bb5:                                           ; preds = %while.end
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %while.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #2

declare dso_local i32 @getchar() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_reduction_order() #0 {
entry:
  %retval = alloca i32, align 4
  %option = alloca i32, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* noundef %option)
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %while.body
  %call3 = call i32 @getchar()
  %cmp = icmp ne i32 %call3, 10
  br i1 %cmp, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  br label %while.cond2, !llvm.loop !6

while.end:                                        ; preds = %while.cond2
  %0 = load i32, i32* %option, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %while.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %while.end
  br label %while.body

return:                                           ; preds = %sw.bb5, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @exists(i8* noundef %path) #0 {
entry:
  %retval = alloca i1, align 1
  %path.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %cmp = icmp ne %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* noundef %1)
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { %struct._IO_FILE*, i64 } @cli() #0 {
entry:
  %retval = alloca %struct.Options, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %option = alloca i32, align 4
  %valid_option = alloca i8, align 1
  %step_by_step_reduction = alloca i8, align 1
  %reduction_order = alloca i32, align 4
  %path = alloca i8*, align 8
  %path10 = alloca i8*, align 8
  store i8 0, i8* %valid_option, align 1
  %call = call zeroext i1 @get_reduction_step_option()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %step_by_step_reduction, align 1
  %call1 = call i32 @get_reduction_order()
  store i32 %call1, i32* %reduction_order, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8, i8* %valid_option, align 1
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end14

while.body:                                       ; preds = %while.cond
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* noundef %option)
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.body
  %call5 = call i32 @getchar()
  %cmp = icmp ne i32 %call5, 10
  br i1 %cmp, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond4
  br label %while.cond4, !llvm.loop !7

while.end:                                        ; preds = %while.cond4
  %1 = load i32, i32* %option, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %while.end
  %call7 = call i8* @get_lambda_expr_input()
  store i8* %call7, i8** %path, align 8
  %2 = load i8*, i8** %path, align 8
  %call8 = call %struct._IO_FILE* @get_file(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %f, align 8
  store i8 1, i8* %valid_option, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.end
  %call11 = call i8* @get_file_path_input()
  store i8* %call11, i8** %path10, align 8
  %3 = load i8*, i8** %path10, align 8
  %call12 = call %struct._IO_FILE* @get_file(i8* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %f, align 8
  %4 = load i8*, i8** %path10, align 8
  call void @free(i8* noundef %4) #9
  store i8 1, i8* %valid_option, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  br label %while.cond, !llvm.loop !8

while.end14:                                      ; preds = %while.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %file = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 0
  store %struct._IO_FILE* %5, %struct._IO_FILE** %file, align 8
  %6 = load i8, i8* %step_by_step_reduction, align 1
  %tobool15 = trunc i8 %6 to i1
  %step_by_step_reduction16 = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 1
  %frombool17 = zext i1 %tobool15 to i8
  store i8 %frombool17, i8* %step_by_step_reduction16, align 8
  %7 = load i32, i32* %reduction_order, align 4
  %reduction_order18 = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 2
  store i32 %7, i32* %reduction_order18, align 4
  %8 = bitcast %struct.Options* %retval to { %struct._IO_FILE*, i64 }*
  %9 = load { %struct._IO_FILE*, i64 }, { %struct._IO_FILE*, i64 }* %8, align 8
  ret { %struct._IO_FILE*, i64 } %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._IO_FILE* @get_file(i8* noundef %path, i8* noundef %mode) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %error_msg = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %path.addr, align 8
  %call1 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i8* noundef %3)
  store i8* %call1, i8** %error_msg, align 8
  %4 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %4, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.get_file, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  ret %struct._IO_FILE* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %opt = alloca %struct.Options, align 8
  %tmp = alloca %struct.Options, align 8
  %tmp2 = alloca %struct.Options, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %table = alloca %struct.HashTable*, align 8
  %parsed = alloca %struct.AstNode*, align 8
  %reduced = alloca %struct.AstNode*, align 8
  %reduced_ast_str = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %call = call zeroext i1 @exists(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call { %struct._IO_FILE*, i64 } @get_config_from_file()
  %0 = bitcast %struct.Options* %tmp to { %struct._IO_FILE*, i64 }*
  %1 = getelementptr inbounds { %struct._IO_FILE*, i64 }, { %struct._IO_FILE*, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { %struct._IO_FILE*, i64 } %call1, 0
  store %struct._IO_FILE* %2, %struct._IO_FILE** %1, align 8
  %3 = getelementptr inbounds { %struct._IO_FILE*, i64 }, { %struct._IO_FILE*, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { %struct._IO_FILE*, i64 } %call1, 1
  store i64 %4, i64* %3, align 8
  %5 = bitcast %struct.Options* %opt to i8*
  %6 = bitcast %struct.Options* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call { %struct._IO_FILE*, i64 } @cli()
  %7 = bitcast %struct.Options* %tmp2 to { %struct._IO_FILE*, i64 }*
  %8 = getelementptr inbounds { %struct._IO_FILE*, i64 }, { %struct._IO_FILE*, i64 }* %7, i32 0, i32 0
  %9 = extractvalue { %struct._IO_FILE*, i64 } %call3, 0
  store %struct._IO_FILE* %9, %struct._IO_FILE** %8, align 8
  %10 = getelementptr inbounds { %struct._IO_FILE*, i64 }, { %struct._IO_FILE*, i64 }* %7, i32 0, i32 1
  %11 = extractvalue { %struct._IO_FILE*, i64 } %call3, 1
  store i64 %11, i64* %10, align 8
  %12 = bitcast %struct.Options* %opt to i8*
  %13 = bitcast %struct.Options* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %step_by_step_reduction = getelementptr inbounds %struct.Options, %struct.Options* %opt, i32 0, i32 1
  %14 = load i8, i8* %step_by_step_reduction, align 8
  %tobool = trunc i8 %14 to i1
  call void @set_verbose(i1 noundef zeroext %tobool)
  %reduction_order = getelementptr inbounds %struct.Options, %struct.Options* %opt, i32 0, i32 2
  %15 = load i32, i32* %reduction_order, align 4
  call void @set_reduction_order(i32 noundef %15)
  %file = getelementptr inbounds %struct.Options, %struct.Options* %opt, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  store %struct._IO_FILE* %16, %struct._IO_FILE** %in, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp = icmp eq %struct._IO_FILE* %17, null
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %do.body
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end6:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end6
  %call7 = call %struct.HashTable* @createHashTable()
  store %struct.HashTable* %call7, %struct.HashTable** %table, align 8
  %19 = load %struct.HashTable*, %struct.HashTable** %table, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call8 = call %struct.AstNode* @parse_expression(%struct.HashTable* noundef %19, %struct._IO_FILE* noundef %20)
  store %struct.AstNode* %call8, %struct.AstNode** %parsed, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %21 = load %struct.AstNode*, %struct.AstNode** %parsed, align 8
  call void @print_ast(%struct.AstNode* noundef %21)
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i64 0, i64 0))
  %22 = load %struct.AstNode*, %struct.AstNode** %parsed, align 8
  %call10 = call %struct.Type* @typecheck(%struct.AstNode* noundef %22, %struct.TypeEnv* noundef null)
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  %23 = load %struct.HashTable*, %struct.HashTable** %table, align 8
  %24 = load %struct.AstNode*, %struct.AstNode** %parsed, align 8
  %call11 = call %struct.AstNode* @reduce(%struct.HashTable* noundef %23, %struct.AstNode* noundef %24)
  store %struct.AstNode* %call11, %struct.AstNode** %reduced, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %25 = load %struct.AstNode*, %struct.AstNode** %reduced, align 8
  %call13 = call i8* @ast_to_string(%struct.AstNode* noundef %25)
  store i8* %call13, i8** %reduced_ast_str, align 8
  %26 = load i8*, i8** %reduced_ast_str, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef %26)
  %27 = load %struct.HashTable*, %struct.HashTable** %table, align 8
  call void @destroyHashTable(%struct.HashTable* noundef %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  call void @close_file(%struct._IO_FILE* noundef %28)
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_verbose(i1 noundef zeroext %verbose) #0 {
entry:
  %verbose.addr = alloca i8, align 1
  %frombool = zext i1 %verbose to i8
  store i8 %frombool, i8* %verbose.addr, align 1
  %0 = load i8, i8* %verbose.addr, align 1
  %tobool = trunc i8 %0 to i1
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* @verbose_mode, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_reduction_order(i32 noundef %t) #0 {
entry:
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  store i32 %0, i32* @reduction_order, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @parse_expression(%struct.HashTable* noundef %table, %struct._IO_FILE* noundef %in) #0 {
entry:
  %retval = alloca %struct.AstNode*, align 8
  %table.addr = alloca %struct.HashTable*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %scanned = alloca i32, align 4
  %expr = alloca %struct.AstNode*, align 8
  %next_token = alloca i32, align 4
  %expr_2 = alloca %struct.AstNode*, align 8
  %application = alloca %struct.AstNode*, align 8
  %var_name = alloca i8*, align 8
  %type78 = alloca i8*, align 8
  %error_msg = alloca i8*, align 8
  %variable = alloca %struct.AstNode*, align 8
  store %struct.HashTable* %table, %struct.HashTable** %table.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call signext i8 @peek(%struct._IO_FILE* noundef %0)
  %call1 = call i32 @parse_token(i8 noundef signext %call)
  %cmp = icmp eq i32 %call1, 6
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call2 = call signext i8 @peek(%struct._IO_FILE* noundef %1)
  %call3 = call i32 @parse_token(i8 noundef signext %call2)
  %cmp4 = icmp eq i32 %call3, 7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call5 = call signext i8 @next(%struct._IO_FILE* noundef %3)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %lor.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call6 = call signext i8 @peek(%struct._IO_FILE* noundef %4)
  %call7 = call i32 @parse_token(i8 noundef signext %call6)
  store i32 %call7, i32* %scanned, align 4
  %5 = load i32, i32* %scanned, align 4
  %cmp8 = icmp eq i32 %5, 5
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call9 = call signext i8 @peek(%struct._IO_FILE* noundef %6)
  %conv = sext i8 %call9 to i32
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %while.end
  %7 = load i32, i32* %scanned, align 4
  %cmp11 = icmp eq i32 %7, 2
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call14 = call signext i8 @next(%struct._IO_FILE* noundef %8)
  %9 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call15 = call %struct.AstNode* @parse_lambda(%struct.HashTable* noundef %9, %struct._IO_FILE* noundef %10)
  store %struct.AstNode* %call15, %struct.AstNode** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %scanned, align 4
  %cmp16 = icmp eq i32 %11, 0
  br i1 %cmp16, label %if.then18, label %if.else35

if.then18:                                        ; preds = %if.else
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call19 = call signext i8 @next(%struct._IO_FILE* noundef %12)
  %13 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call20 = call %struct.AstNode* @parse_expression(%struct.HashTable* noundef %13, %struct._IO_FILE* noundef %14)
  store %struct.AstNode* %call20, %struct.AstNode** %expr, align 8
  %15 = load %struct.AstNode*, %struct.AstNode** %expr, align 8
  call void @print_ast(%struct.AstNode* noundef %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call21 = call signext i8 @peek(%struct._IO_FILE* noundef %16)
  %call22 = call i32 @parse_token(i8 noundef signext %call21)
  store i32 %call22, i32* %next_token, align 4
  %17 = load i32, i32* %next_token, align 4
  %cmp23 = icmp eq i32 %17, 6
  br i1 %cmp23, label %if.then25, label %if.end34

if.then25:                                        ; preds = %if.then18
  %18 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call26 = call %struct.AstNode* @parse_expression(%struct.HashTable* noundef %18, %struct._IO_FILE* noundef %19)
  store %struct.AstNode* %call26, %struct.AstNode** %expr_2, align 8
  %call27 = call noalias i8* @malloc(i64 noundef 16) #9
  %20 = bitcast i8* %call27 to %struct.AstNode*
  store %struct.AstNode* %20, %struct.AstNode** %application, align 8
  %21 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %21, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %call28 = call noalias i8* @malloc(i64 noundef 16) #9
  %22 = bitcast i8* %call28 to %struct.Application*
  %23 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %23, i32 0, i32 1
  %application29 = bitcast %union.AstNodeUnion* %node to %struct.Application**
  store %struct.Application* %22, %struct.Application** %application29, align 8
  %24 = load %struct.AstNode*, %struct.AstNode** %expr, align 8
  %25 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  %node30 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %25, i32 0, i32 1
  %application31 = bitcast %union.AstNodeUnion* %node30 to %struct.Application**
  %26 = load %struct.Application*, %struct.Application** %application31, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %26, i32 0, i32 0
  store %struct.AstNode* %24, %struct.AstNode** %function, align 8
  %27 = load %struct.AstNode*, %struct.AstNode** %expr_2, align 8
  %28 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  %node32 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %28, i32 0, i32 1
  %application33 = bitcast %union.AstNodeUnion* %node32 to %struct.Application**
  %29 = load %struct.Application*, %struct.Application** %application33, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %29, i32 0, i32 1
  store %struct.AstNode* %27, %struct.AstNode** %argument, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 1, %struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0))
  %31 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  store %struct.AstNode* %31, %struct.AstNode** %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.then18
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 1, %struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0))
  %33 = load %struct.AstNode*, %struct.AstNode** %expr, align 8
  store %struct.AstNode* %33, %struct.AstNode** %retval, align 8
  br label %return

if.else35:                                        ; preds = %if.else
  %34 = load i32, i32* %scanned, align 4
  %cmp36 = icmp eq i32 %34, 4
  br i1 %cmp36, label %if.then38, label %if.end97

if.then38:                                        ; preds = %if.else35
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call39 = call i8* @parse_variable(%struct._IO_FILE* noundef %35)
  store i8* %call39, i8** %var_name, align 8
  %36 = load i8*, i8** %var_name, align 8
  %call40 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #11
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.else51

if.then43:                                        ; preds = %if.then38
  %37 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @parse_definition(%struct.HashTable* noundef %37, %struct._IO_FILE* noundef %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call44 = call signext i8 @peek(%struct._IO_FILE* noundef %39)
  %conv45 = sext i8 %call44 to i32
  %cmp46 = icmp ne i32 %conv45, -1
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.then43
  %40 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call49 = call %struct.AstNode* @parse_expression(%struct.HashTable* noundef %40, %struct._IO_FILE* noundef %41)
  store %struct.AstNode* %call49, %struct.AstNode** %retval, align 8
  br label %return

if.end50:                                         ; preds = %if.then43
  store %struct.AstNode* null, %struct.AstNode** %retval, align 8
  br label %return

if.else51:                                        ; preds = %if.then38
  %42 = load i8*, i8** %var_name, align 8
  %call52 = call i32 @strcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #11
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.else63

if.then55:                                        ; preds = %if.else51
  %43 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @parse_import(%struct.HashTable* noundef %43, %struct._IO_FILE* noundef %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call56 = call signext i8 @peek(%struct._IO_FILE* noundef %45)
  %conv57 = sext i8 %call56 to i32
  %cmp58 = icmp ne i32 %conv57, -1
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then55
  %46 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call61 = call %struct.AstNode* @parse_expression(%struct.HashTable* noundef %46, %struct._IO_FILE* noundef %47)
  store %struct.AstNode* %call61, %struct.AstNode** %retval, align 8
  br label %return

if.end62:                                         ; preds = %if.then55
  br label %if.end76

if.else63:                                        ; preds = %if.else51
  %48 = load i8*, i8** %var_name, align 8
  %call64 = call i32 @strcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0)) #11
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end75

if.then67:                                        ; preds = %if.else63
  %49 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @parse_type_definition(%struct.HashTable* noundef %49, %struct._IO_FILE* noundef %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call68 = call signext i8 @peek(%struct._IO_FILE* noundef %51)
  %conv69 = sext i8 %call68 to i32
  %cmp70 = icmp ne i32 %conv69, -1
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.then67
  %52 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call73 = call %struct.AstNode* @parse_expression(%struct.HashTable* noundef %52, %struct._IO_FILE* noundef %53)
  store %struct.AstNode* %call73, %struct.AstNode** %retval, align 8
  br label %return

if.end74:                                         ; preds = %if.then67
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.else63
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end62
  br label %if.end77

if.end77:                                         ; preds = %if.end76
  store i8* null, i8** %type78, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @parse_space_chars(%struct._IO_FILE* noundef %54)
  %55 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %56 = load i8*, i8** %var_name, align 8
  %call79 = call zeroext i1 @table_exists(%struct.HashTable* noundef %55, i8* noundef %56)
  br i1 %call79, label %if.end89, label %if.then80

if.then80:                                        ; preds = %if.end77
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call81 = call signext i8 @peek(%struct._IO_FILE* noundef %57)
  %call82 = call i32 @parse_token(i8 noundef signext %call81)
  %cmp83 = icmp ne i32 %call82, 10
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.then80
  %58 = load i8*, i8** %var_name, align 8
  %call86 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i64 0, i64 0), i8* noundef %58)
  store i8* %call86, i8** %error_msg, align 8
  %59 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %59, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.parse_expression, i64 0, i64 0))
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.then80
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 10, %struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @parse_space_chars(%struct._IO_FILE* noundef %61)
  %62 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call88 = call i8* @parse_type(%struct.HashTable* noundef %62, %struct._IO_FILE* noundef %63)
  store i8* %call88, i8** %type78, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.end87, %if.end77
  %64 = load i8*, i8** %var_name, align 8
  %65 = load i8*, i8** %type78, align 8
  %call90 = call %struct.AstNode* @create_variable(i8* noundef %64, i8* noundef %65)
  store %struct.AstNode* %call90, %struct.AstNode** %variable, align 8
  %66 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %67 = load i8*, i8** %var_name, align 8
  %call91 = call %struct.AstNode* @search(%struct.HashTable* noundef %66, i8* noundef %67)
  %cmp92 = icmp ne %struct.AstNode* %call91, null
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end89
  %68 = load %struct.AstNode*, %struct.AstNode** %variable, align 8
  %type95 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %68, i32 0, i32 0
  store i32 3, i32* %type95, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end89
  %69 = load %struct.AstNode*, %struct.AstNode** %variable, align 8
  store %struct.AstNode* %69, %struct.AstNode** %retval, align 8
  br label %return

if.end97:                                         ; preds = %if.else35
  br label %if.end98

if.end98:                                         ; preds = %if.end97
  br label %if.end99

if.end99:                                         ; preds = %if.end98
  store %struct.AstNode* null, %struct.AstNode** %retval, align 8
  br label %return

return:                                           ; preds = %if.end99, %if.end96, %if.then72, %if.then60, %if.end50, %if.then48, %if.end34, %if.then25, %if.then13
  %70 = load %struct.AstNode*, %struct.AstNode** %retval, align 8
  ret %struct.AstNode* %70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ast(%struct.AstNode* noundef %node) #0 {
entry:
  %node.addr = alloca %struct.AstNode*, align 8
  store %struct.AstNode* %node, %struct.AstNode** %node.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %cmp = icmp eq %struct.AstNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb14
    i32 3, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node1 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node1 to %struct.LambdaExpression**
  %4 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %parameter = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %4, i32 0, i32 0
  %5 = load i8*, i8** %parameter, align 8
  %6 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node2 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %6, i32 0, i32 1
  %lambda_expr3 = bitcast %union.AstNodeUnion* %node2 to %struct.LambdaExpression**
  %7 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr3, align 8
  %type4 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %7, i32 0, i32 1
  %8 = load i8*, i8** %type4, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i8* noundef %5, i8* noundef %8)
  %9 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node5 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %9, i32 0, i32 1
  %lambda_expr6 = bitcast %union.AstNodeUnion* %node5 to %struct.LambdaExpression**
  %10 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr6, align 8
  %body = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %10, i32 0, i32 2
  %11 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  call void @print_ast(%struct.AstNode* noundef %11)
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0))
  %12 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node10 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %12, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node10 to %struct.Application**
  %13 = load %struct.Application*, %struct.Application** %application, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %13, i32 0, i32 0
  %14 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  call void @print_ast(%struct.AstNode* noundef %14)
  %15 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node11 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %15, i32 0, i32 1
  %application12 = bitcast %union.AstNodeUnion* %node11 to %struct.Application**
  %16 = load %struct.Application*, %struct.Application** %application12, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %16, i32 0, i32 1
  %17 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  call void @print_ast(%struct.AstNode* noundef %17)
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %18 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node15 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %18, i32 0, i32 1
  %variable = bitcast %union.AstNodeUnion* %node15 to %struct.Variable**
  %19 = load %struct.Variable*, %struct.Variable** %variable, align 8
  %name = getelementptr inbounds %struct.Variable, %struct.Variable* %19, i32 0, i32 0
  %20 = load i8*, i8** %name, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i8* noundef %20)
  %21 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node17 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %21, i32 0, i32 1
  %variable18 = bitcast %union.AstNodeUnion* %node17 to %struct.Variable**
  %22 = load %struct.Variable*, %struct.Variable** %variable18, align 8
  %type19 = getelementptr inbounds %struct.Variable, %struct.Variable* %22, i32 0, i32 1
  %23 = load i8*, i8** %type19, align 8
  %cmp20 = icmp ne i8* %23, null
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %sw.bb14
  %24 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node22 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %24, i32 0, i32 1
  %variable23 = bitcast %union.AstNodeUnion* %node22 to %struct.Variable**
  %25 = load %struct.Variable*, %struct.Variable** %variable23, align 8
  %type24 = getelementptr inbounds %struct.Variable, %struct.Variable* %25, i32 0, i32 1
  %26 = load i8*, i8** %type24, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef %26)
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %sw.bb14
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0))
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %27 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node29 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %27, i32 0, i32 1
  %variable30 = bitcast %union.AstNodeUnion* %node29 to %struct.Variable**
  %28 = load %struct.Variable*, %struct.Variable** %variable30, align 8
  %name31 = getelementptr inbounds %struct.Variable, %struct.Variable* %28, i32 0, i32 0
  %29 = load i8*, i8** %name31, align 8
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* noundef %29)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb28, %if.end26, %sw.bb8, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_verbose(i8* noundef %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %0 = load i8, i8* @verbose_mode, align 1
  %tobool = trunc i8 %0 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call4 = call i32 @vprintf(i8* noundef %1, %struct.__va_list_tag* noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Type* @typecheck(%struct.AstNode* noundef %expr, %struct.TypeEnv* noundef %env) #0 {
entry:
  %retval = alloca %struct.Type*, align 8
  %expr.addr = alloca %struct.AstNode*, align 8
  %env.addr = alloca %struct.TypeEnv*, align 8
  %type1 = alloca i8*, align 8
  %t = alloca %struct.Type*, align 8
  %func_type = alloca %struct.Type*, align 8
  %arg_type = alloca %struct.Type*, align 8
  %type15 = alloca i8*, align 8
  %t17 = alloca %struct.Type*, align 8
  store %struct.AstNode* %expr, %struct.AstNode** %expr.addr, align 8
  store %struct.TypeEnv* %env, %struct.TypeEnv** %env.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %call = call i8* @get_type_from_expr(%struct.AstNode* noundef %2)
  store i8* %call, i8** %type1, align 8
  %3 = load i8*, i8** %type1, align 8
  %4 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %call2 = call %struct.Type* @create_type(i8* noundef %3, i8* noundef null, %struct.AstNode* noundef %4)
  store %struct.Type* %call2, %struct.Type** %t, align 8
  %5 = load %struct.Type*, %struct.Type** %t, align 8
  call void @add_to_env(%struct.TypeEnv** noundef %env.addr, %struct.Type* noundef %5)
  %6 = load %struct.Type*, %struct.Type** %t, align 8
  store %struct.Type* %6, %struct.Type** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %type3 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %7, i32 0, i32 0
  %8 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.then5, label %if.else11

if.then5:                                         ; preds = %if.else
  %9 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %9, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node to %struct.Application**
  %10 = load %struct.Application*, %struct.Application** %application, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %10, i32 0, i32 0
  %11 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  %12 = load %struct.TypeEnv*, %struct.TypeEnv** %env.addr, align 8
  %call6 = call %struct.Type* @typecheck(%struct.AstNode* noundef %11, %struct.TypeEnv* noundef %12)
  store %struct.Type* %call6, %struct.Type** %func_type, align 8
  %13 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %node7 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %13, i32 0, i32 1
  %application8 = bitcast %union.AstNodeUnion* %node7 to %struct.Application**
  %14 = load %struct.Application*, %struct.Application** %application8, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %14, i32 0, i32 1
  %15 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  %16 = load %struct.TypeEnv*, %struct.TypeEnv** %env.addr, align 8
  %call9 = call %struct.Type* @typecheck(%struct.AstNode* noundef %15, %struct.TypeEnv* noundef %16)
  store %struct.Type* %call9, %struct.Type** %arg_type, align 8
  %17 = load %struct.Type*, %struct.Type** %func_type, align 8
  %18 = load %struct.Type*, %struct.Type** %arg_type, align 8
  %call10 = call zeroext i1 @type_equal(%struct.Type* noundef %17, %struct.Type* noundef %18)
  call void @assert_(i1 noundef zeroext %call10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i64 0, i64 0))
  %19 = load %struct.Type*, %struct.Type** %func_type, align 8
  store %struct.Type* %19, %struct.Type** %retval, align 8
  br label %return

if.else11:                                        ; preds = %if.else
  %20 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %type12 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %20, i32 0, i32 0
  %21 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else11
  %22 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %call16 = call i8* @get_type_from_expr(%struct.AstNode* noundef %22)
  store i8* %call16, i8** %type15, align 8
  %23 = load i8*, i8** %type15, align 8
  %24 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %call18 = call %struct.Type* @create_type(i8* noundef %23, i8* noundef null, %struct.AstNode* noundef %24)
  store %struct.Type* %call18, %struct.Type** %t17, align 8
  %25 = load %struct.Type*, %struct.Type** %t17, align 8
  call void @add_to_env(%struct.TypeEnv** noundef %env.addr, %struct.Type* noundef %25)
  %26 = load %struct.Type*, %struct.Type** %t17, align 8
  store %struct.Type* %26, %struct.Type** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else11
  br label %if.end19

if.end19:                                         ; preds = %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  store %struct.Type* null, %struct.Type** %retval, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.then14, %if.then5, %if.then
  %27 = load %struct.Type*, %struct.Type** %retval, align 8
  ret %struct.Type* %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @reduce(%struct.HashTable* noundef %table, %struct.AstNode* noundef %n) #0 {
entry:
  %table.addr = alloca %struct.HashTable*, align 8
  %n.addr = alloca %struct.AstNode*, align 8
  %reduced = alloca %struct.AstNode*, align 8
  store %struct.HashTable* %table, %struct.HashTable** %table.addr, align 8
  store %struct.AstNode* %n, %struct.AstNode** %n.addr, align 8
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.94, i64 0, i64 0))
  %0 = load i32, i32* @reduction_order, align 4
  call void @print_reduction_order(i32 noundef %0)
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i64 0, i64 0))
  %1 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %2 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  call void @expand_definitions(%struct.HashTable* noundef %1, %struct.AstNode* noundef %2)
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i64 0, i64 0))
  %3 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  call void @print_ast_verbose(%struct.AstNode* noundef %3)
  %4 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %5 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %call = call %struct.AstNode* @reduce_ast(%struct.HashTable* noundef %4, %struct.AstNode* noundef %5)
  store %struct.AstNode* %call, %struct.AstNode** %reduced, align 8
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i64 0, i64 0))
  %6 = load %struct.AstNode*, %struct.AstNode** %reduced, align 8
  call void @print_ast_verbose(%struct.AstNode* noundef %6)
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i64 0, i64 0))
  %7 = load %struct.AstNode*, %struct.AstNode** %reduced, align 8
  ret %struct.AstNode* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ast_to_string(%struct.AstNode* noundef %node) #0 {
entry:
  %node.addr = alloca %struct.AstNode*, align 8
  %buffer_size = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %length = alloca i64, align 8
  store %struct.AstNode* %node, %struct.AstNode** %node.addr, align 8
  store i64 1024, i64* %buffer_size, align 8
  %0 = load i64, i64* %buffer_size, align 8
  %call = call noalias i8* @malloc(i64 noundef %0) #9
  store i8* %call, i8** %buffer, align 8
  %1 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 0, i8* %arrayidx, align 1
  store i64 0, i64* %length, align 8
  %2 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  call void @append_ast_to_buffer(i8** noundef %buffer, i64* noundef %buffer_size, i64* noundef %length, %struct.AstNode* noundef %2)
  %3 = load i8*, i8** %buffer, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroyHashTable(%struct.HashTable* noundef %hashTable) #0 {
entry:
  %hashTable.addr = alloca %struct.HashTable*, align 8
  %i = alloca i32, align 4
  %current = alloca %struct.HashNode*, align 8
  %temp = alloca %struct.HashNode*, align 8
  store %struct.HashTable* %hashTable, %struct.HashTable** %hashTable.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %table = getelementptr inbounds %struct.HashTable, %struct.HashTable* %1, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table, i64 0, i64 %idxprom
  %3 = load %struct.HashNode*, %struct.HashNode** %arrayidx, align 8
  store %struct.HashNode* %3, %struct.HashNode** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %4 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %cmp1 = icmp ne %struct.HashNode* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  store %struct.HashNode* %5, %struct.HashNode** %temp, align 8
  %6 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %next = getelementptr inbounds %struct.HashNode, %struct.HashNode* %6, i32 0, i32 2
  %7 = load %struct.HashNode*, %struct.HashNode** %next, align 8
  store %struct.HashNode* %7, %struct.HashNode** %current, align 8
  %8 = load %struct.HashNode*, %struct.HashNode** %temp, align 8
  %value = getelementptr inbounds %struct.HashNode, %struct.HashNode* %8, i32 0, i32 1
  %9 = load %struct.AstNode*, %struct.AstNode** %value, align 8
  %cmp2 = icmp ne %struct.AstNode* %9, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.HashNode*, %struct.HashNode** %temp, align 8
  %value3 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %10, i32 0, i32 1
  %11 = load %struct.AstNode*, %struct.AstNode** %value3, align 8
  %12 = bitcast %struct.AstNode* %11 to i8*
  call void @free(i8* noundef %12) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load %struct.HashNode*, %struct.HashNode** %temp, align 8
  %key = getelementptr inbounds %struct.HashNode, %struct.HashNode* %13, i32 0, i32 0
  %14 = load i8*, i8** %key, align 8
  call void @free(i8* noundef %14) #9
  %15 = load %struct.HashNode*, %struct.HashNode** %temp, align 8
  %16 = bitcast %struct.HashNode* %15 to i8*
  call void @free(i8* noundef %16) #9
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %18 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %19 = bitcast %struct.HashTable* %18 to i8*
  call void @free(i8* noundef %19) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash(i8* noundef %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %hash = alloca i64, align 8
  %c = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i64 5381, i64* %hash, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %key.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %key.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %hash, align 8
  %shl = shl i64 %2, 5
  %3 = load i64, i64* %hash, align 8
  %add = add i64 %shl, %3
  %4 = load i32, i32* %c, align 4
  %conv1 = sext i32 %4 to i64
  %add2 = add i64 %add, %conv1
  store i64 %add2, i64* %hash, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %hash, align 8
  %rem = urem i64 %5, 2000
  %conv3 = trunc i64 %rem to i32
  ret i32 %conv3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(%struct.HashTable* noundef %hashTable, i8* noundef %key, %struct.AstNode* noundef %value) #0 {
entry:
  %hashTable.addr = alloca %struct.HashTable*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca %struct.AstNode*, align 8
  %index = alloca i32, align 4
  %newNode = alloca %struct.HashNode*, align 8
  %current = alloca %struct.HashNode*, align 8
  store %struct.HashTable* %hashTable, %struct.HashTable** %hashTable.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct.AstNode* %value, %struct.AstNode** %value.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @hash(i8* noundef %0)
  store i32 %call, i32* %index, align 4
  %call1 = call noalias i8* @malloc(i64 noundef 24) #9
  %1 = bitcast i8* %call1 to %struct.HashNode*
  store %struct.HashNode* %1, %struct.HashNode** %newNode, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call2 = call noalias i8* @strdup(i8* noundef %2) #9
  %3 = load %struct.HashNode*, %struct.HashNode** %newNode, align 8
  %key3 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %3, i32 0, i32 0
  store i8* %call2, i8** %key3, align 8
  %4 = load %struct.AstNode*, %struct.AstNode** %value.addr, align 8
  %5 = load %struct.HashNode*, %struct.HashNode** %newNode, align 8
  %value4 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %5, i32 0, i32 1
  store %struct.AstNode* %4, %struct.AstNode** %value4, align 8
  %6 = load %struct.HashNode*, %struct.HashNode** %newNode, align 8
  %next = getelementptr inbounds %struct.HashNode, %struct.HashNode* %6, i32 0, i32 2
  store %struct.HashNode* null, %struct.HashNode** %next, align 8
  %7 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %table = getelementptr inbounds %struct.HashTable, %struct.HashTable* %7, i32 0, i32 0
  %8 = load i32, i32* %index, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table, i64 0, i64 %idxprom
  %9 = load %struct.HashNode*, %struct.HashNode** %arrayidx, align 8
  %cmp = icmp eq %struct.HashNode* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.HashNode*, %struct.HashNode** %newNode, align 8
  %11 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %table5 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %11, i32 0, i32 0
  %12 = load i32, i32* %index, align 4
  %idxprom6 = zext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table5, i64 0, i64 %idxprom6
  store %struct.HashNode* %10, %struct.HashNode** %arrayidx7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %table8 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %13, i32 0, i32 0
  %14 = load i32, i32* %index, align 4
  %idxprom9 = zext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table8, i64 0, i64 %idxprom9
  %15 = load %struct.HashNode*, %struct.HashNode** %arrayidx10, align 8
  store %struct.HashNode* %15, %struct.HashNode** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %16 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %next11 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %16, i32 0, i32 2
  %17 = load %struct.HashNode*, %struct.HashNode** %next11, align 8
  %cmp12 = icmp ne %struct.HashNode* %17, null
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %next13 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %18, i32 0, i32 2
  %19 = load %struct.HashNode*, %struct.HashNode** %next13, align 8
  store %struct.HashNode* %19, %struct.HashNode** %current, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %20 = load %struct.HashNode*, %struct.HashNode** %newNode, align 8
  %21 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %next14 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %21, i32 0, i32 2
  store %struct.HashNode* %20, %struct.HashNode** %next14, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @table_exists(%struct.HashTable* noundef %hashTable, i8* noundef %key) #0 {
entry:
  %hashTable.addr = alloca %struct.HashTable*, align 8
  %key.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  %node = alloca %struct.HashNode*, align 8
  store %struct.HashTable* %hashTable, %struct.HashTable** %hashTable.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @hash(i8* noundef %0)
  store i32 %call, i32* %index, align 4
  %1 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %table = getelementptr inbounds %struct.HashTable, %struct.HashTable* %1, i32 0, i32 0
  %2 = load i32, i32* %index, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table, i64 0, i64 %idxprom
  %3 = load %struct.HashNode*, %struct.HashNode** %arrayidx, align 8
  store %struct.HashNode* %3, %struct.HashNode** %node, align 8
  %4 = load %struct.HashNode*, %struct.HashNode** %node, align 8
  %cmp = icmp ne %struct.HashNode* %4, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @search(%struct.HashTable* noundef %hashTable, i8* noundef %key) #0 {
entry:
  %retval = alloca %struct.AstNode*, align 8
  %hashTable.addr = alloca %struct.HashTable*, align 8
  %key.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  %current = alloca %struct.HashNode*, align 8
  store %struct.HashTable* %hashTable, %struct.HashTable** %hashTable.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.AstNode* null, %struct.AstNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @hash(i8* noundef %1)
  store i32 %call, i32* %index, align 4
  %2 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %table = getelementptr inbounds %struct.HashTable, %struct.HashTable* %2, i32 0, i32 0
  %3 = load i32, i32* %index, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table, i64 0, i64 %idxprom
  %4 = load %struct.HashNode*, %struct.HashNode** %arrayidx, align 8
  store %struct.HashNode* %4, %struct.HashNode** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %5 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %cmp1 = icmp ne %struct.HashNode* %5, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %key2 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %6, i32 0, i32 0
  %7 = load i8*, i8** %key2, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %call3 = call i32 @strcmp(i8* noundef %7, i8* noundef %8) #11
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  %9 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %value = getelementptr inbounds %struct.HashNode, %struct.HashNode* %9, i32 0, i32 1
  %10 = load %struct.AstNode*, %struct.AstNode** %value, align 8
  store %struct.AstNode* %10, %struct.AstNode** %retval, align 8
  br label %return

if.end6:                                          ; preds = %while.body
  %11 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %next = getelementptr inbounds %struct.HashNode, %struct.HashNode* %11, i32 0, i32 2
  %12 = load %struct.HashNode*, %struct.HashNode** %next, align 8
  store %struct.HashNode* %12, %struct.HashNode** %current, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  store %struct.AstNode* null, %struct.AstNode** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then5, %if.then
  %13 = load %struct.AstNode*, %struct.AstNode** %retval, align 8
  ret %struct.AstNode* %13
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_c(%struct.HashTable* noundef %hashTable, i8* noundef %key) #0 {
entry:
  %hashTable.addr = alloca %struct.HashTable*, align 8
  %key.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  %current = alloca %struct.HashNode*, align 8
  %prev = alloca %struct.HashNode*, align 8
  store %struct.HashTable* %hashTable, %struct.HashTable** %hashTable.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @hash(i8* noundef %0)
  store i32 %call, i32* %index, align 4
  %1 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %table = getelementptr inbounds %struct.HashTable, %struct.HashTable* %1, i32 0, i32 0
  %2 = load i32, i32* %index, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table, i64 0, i64 %idxprom
  %3 = load %struct.HashNode*, %struct.HashNode** %arrayidx, align 8
  store %struct.HashNode* %3, %struct.HashNode** %current, align 8
  store %struct.HashNode* null, %struct.HashNode** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %4 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %cmp = icmp ne %struct.HashNode* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %key1 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %5, i32 0, i32 0
  %6 = load i8*, i8** %key1, align 8
  %7 = load i8*, i8** %key.addr, align 8
  %call2 = call i32 @strcmp(i8* noundef %6, i8* noundef %7) #11
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end12

if.then:                                          ; preds = %while.body
  %8 = load %struct.HashNode*, %struct.HashNode** %prev, align 8
  %cmp4 = icmp eq %struct.HashNode* %8, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %9 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %next = getelementptr inbounds %struct.HashNode, %struct.HashNode* %9, i32 0, i32 2
  %10 = load %struct.HashNode*, %struct.HashNode** %next, align 8
  %11 = load %struct.HashTable*, %struct.HashTable** %hashTable.addr, align 8
  %table6 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %11, i32 0, i32 0
  %12 = load i32, i32* %index, align 4
  %idxprom7 = zext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table6, i64 0, i64 %idxprom7
  store %struct.HashNode* %10, %struct.HashNode** %arrayidx8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %next9 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %13, i32 0, i32 2
  %14 = load %struct.HashNode*, %struct.HashNode** %next9, align 8
  %15 = load %struct.HashNode*, %struct.HashNode** %prev, align 8
  %next10 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %15, i32 0, i32 2
  store %struct.HashNode* %14, %struct.HashNode** %next10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %16 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %key11 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %16, i32 0, i32 0
  %17 = load i8*, i8** %key11, align 8
  call void @free(i8* noundef %17) #9
  %18 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %19 = bitcast %struct.HashNode* %18 to i8*
  call void @free(i8* noundef %19) #9
  br label %while.end

if.end12:                                         ; preds = %while.body
  %20 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  store %struct.HashNode* %20, %struct.HashNode** %prev, align 8
  %21 = load %struct.HashNode*, %struct.HashNode** %current, align 8
  %next13 = getelementptr inbounds %struct.HashNode, %struct.HashNode* %21, i32 0, i32 2
  %22 = load %struct.HashNode*, %struct.HashNode** %next13, align 8
  store %struct.HashNode* %22, %struct.HashNode** %current, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %if.end, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.HashTable* @createHashTable() #0 {
entry:
  %hashTable = alloca %struct.HashTable*, align 8
  %call = call noalias i8* @malloc(i64 noundef 16000) #9
  %0 = bitcast i8* %call to %struct.HashTable*
  store %struct.HashTable* %0, %struct.HashTable** %hashTable, align 8
  %1 = load %struct.HashTable*, %struct.HashTable** %hashTable, align 8
  %table = getelementptr inbounds %struct.HashTable, %struct.HashTable* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2000 x %struct.HashNode*], [2000 x %struct.HashNode*]* %table, i64 0, i64 0
  %2 = bitcast %struct.HashNode** %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16000, i1 false)
  %3 = load %struct.HashTable*, %struct.HashTable** %hashTable, align 8
  ret %struct.HashTable* %3
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ast_verbose(%struct.AstNode* noundef %n) #0 {
entry:
  %n.addr = alloca %struct.AstNode*, align 8
  %lambda_ast = alloca i8*, align 8
  store %struct.AstNode* %n, %struct.AstNode** %n.addr, align 8
  %0 = load i8, i8* @verbose_mode, align 1
  %tobool = trunc i8 %0 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %call = call i8* @ast_to_string(%struct.AstNode* noundef %1)
  store i8* %call, i8** %lambda_ast, align 8
  %2 = load i8*, i8** %lambda_ast, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

declare dso_local i32 @vprintf(i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format(i8* noundef %fmt, ...) #0 {
entry:
  %retval = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %size = alloca i32, align 4
  %str = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call = call i32 @vsnprintf(i8* noundef null, i64 noundef 0, i8* noundef %0, %struct.__va_list_tag* noundef %arraydecay2) #9
  store i32 %call, i32* %size, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %size, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %call5 = call noalias i8* @malloc(i64 noundef %conv) #9
  store i8* %call5, i8** %str, align 8
  %3 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_start(i8* %arraydecay89)
  %4 = load i8*, i8** %str, align 8
  %5 = load i32, i32* %size, align 4
  %add10 = add nsw i32 %5, 1
  %conv11 = sext i32 %add10 to i64
  %6 = load i8*, i8** %fmt.addr, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call13 = call i32 @vsnprintf(i8* noundef %4, i64 noundef %conv11, i8* noundef %6, %struct.__va_list_tag* noundef %arraydecay12) #9
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1415 = bitcast %struct.__va_list_tag* %arraydecay14 to i8*
  call void @llvm.va_end(i8* %arraydecay1415)
  %7 = load i8*, i8** %str, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %8 = load i8*, i8** %retval, align 8
  ret i8* %8
}

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_to_buffer(i8** noundef %buffer, i64* noundef %buffer_size, i64* noundef %length, i8* noundef %str) #0 {
entry:
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64*, align 8
  %length.addr = alloca i64*, align 8
  %str.addr = alloca i8*, align 8
  %str_len = alloca i64, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64* %buffer_size, i64** %buffer_size.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #11
  store i64 %call, i64* %str_len, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64*, i64** %length.addr, align 8
  %2 = load i64, i64* %1, align 8
  %3 = load i64, i64* %str_len, align 8
  %add = add i64 %2, %3
  %add1 = add i64 %add, 1
  %4 = load i64*, i64** %buffer_size.addr, align 8
  %5 = load i64, i64* %4, align 8
  %cmp = icmp uge i64 %add1, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64*, i64** %buffer_size.addr, align 8
  %7 = load i64, i64* %6, align 8
  %mul = mul i64 %7, 2
  store i64 %mul, i64* %6, align 8
  %8 = load i8**, i8*** %buffer.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i64*, i64** %buffer_size.addr, align 8
  %11 = load i64, i64* %10, align 8
  %call2 = call i8* @realloc(i8* noundef %9, i64 noundef %11) #9
  %12 = load i8**, i8*** %buffer.addr, align 8
  store i8* %call2, i8** %12, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %13 = load i8**, i8*** %buffer.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i64*, i64** %length.addr, align 8
  %16 = load i64, i64* %15, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %16
  %17 = load i8*, i8** %str.addr, align 8
  %call3 = call i8* @strcpy(i8* noundef %add.ptr, i8* noundef %17) #9
  %18 = load i64, i64* %str_len, align 8
  %19 = load i64*, i64** %length.addr, align 8
  %20 = load i64, i64* %19, align 8
  %add4 = add i64 %20, %18
  store i64 %add4, i64* %19, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_ast_to_buffer(i8** noundef %buffer, i64* noundef %buffer_size, i64* noundef %length, %struct.AstNode* noundef %node) #0 {
entry:
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64*, align 8
  %length.addr = alloca i64*, align 8
  %node.addr = alloca %struct.AstNode*, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64* %buffer_size, i64** %buffer_size.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  store %struct.AstNode* %node, %struct.AstNode** %node.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %cmp = icmp eq %struct.AstNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb11
    i32 3, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load i8**, i8*** %buffer.addr, align 8
  %4 = load i64*, i64** %buffer_size.addr, align 8
  %5 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %3, i64* noundef %4, i64* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %6 = load i8**, i8*** %buffer.addr, align 8
  %7 = load i64*, i64** %buffer_size.addr, align 8
  %8 = load i64*, i64** %length.addr, align 8
  %9 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node1 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %9, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node1 to %struct.LambdaExpression**
  %10 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %parameter = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %10, i32 0, i32 0
  %11 = load i8*, i8** %parameter, align 8
  call void @append_to_buffer(i8** noundef %6, i64* noundef %7, i64* noundef %8, i8* noundef %11)
  %12 = load i8**, i8*** %buffer.addr, align 8
  %13 = load i64*, i64** %buffer_size.addr, align 8
  %14 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %12, i64* noundef %13, i64* noundef %14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %15 = load i8**, i8*** %buffer.addr, align 8
  %16 = load i64*, i64** %buffer_size.addr, align 8
  %17 = load i64*, i64** %length.addr, align 8
  %18 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node2 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %18, i32 0, i32 1
  %lambda_expr3 = bitcast %union.AstNodeUnion* %node2 to %struct.LambdaExpression**
  %19 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr3, align 8
  %type4 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %19, i32 0, i32 1
  %20 = load i8*, i8** %type4, align 8
  call void @append_to_buffer(i8** noundef %15, i64* noundef %16, i64* noundef %17, i8* noundef %20)
  %21 = load i8**, i8*** %buffer.addr, align 8
  %22 = load i64*, i64** %buffer_size.addr, align 8
  %23 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %21, i64* noundef %22, i64* noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %24 = load i8**, i8*** %buffer.addr, align 8
  %25 = load i64*, i64** %buffer_size.addr, align 8
  %26 = load i64*, i64** %length.addr, align 8
  %27 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node5 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %27, i32 0, i32 1
  %lambda_expr6 = bitcast %union.AstNodeUnion* %node5 to %struct.LambdaExpression**
  %28 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr6, align 8
  %body = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %28, i32 0, i32 2
  %29 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  call void @append_ast_to_buffer(i8** noundef %24, i64* noundef %25, i64* noundef %26, %struct.AstNode* noundef %29)
  %30 = load i8**, i8*** %buffer.addr, align 8
  %31 = load i64*, i64** %buffer_size.addr, align 8
  %32 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %30, i64* noundef %31, i64* noundef %32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %33 = load i8**, i8*** %buffer.addr, align 8
  %34 = load i64*, i64** %buffer_size.addr, align 8
  %35 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %33, i64* noundef %34, i64* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %36 = load i8**, i8*** %buffer.addr, align 8
  %37 = load i64*, i64** %buffer_size.addr, align 8
  %38 = load i64*, i64** %length.addr, align 8
  %39 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node8 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %39, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node8 to %struct.Application**
  %40 = load %struct.Application*, %struct.Application** %application, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %40, i32 0, i32 0
  %41 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  call void @append_ast_to_buffer(i8** noundef %36, i64* noundef %37, i64* noundef %38, %struct.AstNode* noundef %41)
  %42 = load i8**, i8*** %buffer.addr, align 8
  %43 = load i64*, i64** %buffer_size.addr, align 8
  %44 = load i64*, i64** %length.addr, align 8
  %45 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node9 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %45, i32 0, i32 1
  %application10 = bitcast %union.AstNodeUnion* %node9 to %struct.Application**
  %46 = load %struct.Application*, %struct.Application** %application10, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %46, i32 0, i32 1
  %47 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  call void @append_ast_to_buffer(i8** noundef %42, i64* noundef %43, i64* noundef %44, %struct.AstNode* noundef %47)
  %48 = load i8**, i8*** %buffer.addr, align 8
  %49 = load i64*, i64** %buffer_size.addr, align 8
  %50 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %48, i64* noundef %49, i64* noundef %50, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %51 = load i8**, i8*** %buffer.addr, align 8
  %52 = load i64*, i64** %buffer_size.addr, align 8
  %53 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %51, i64* noundef %52, i64* noundef %53, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %54 = load i8**, i8*** %buffer.addr, align 8
  %55 = load i64*, i64** %buffer_size.addr, align 8
  %56 = load i64*, i64** %length.addr, align 8
  %57 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node12 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %57, i32 0, i32 1
  %variable = bitcast %union.AstNodeUnion* %node12 to %struct.Variable**
  %58 = load %struct.Variable*, %struct.Variable** %variable, align 8
  %name = getelementptr inbounds %struct.Variable, %struct.Variable* %58, i32 0, i32 0
  %59 = load i8*, i8** %name, align 8
  call void @append_to_buffer(i8** noundef %54, i64* noundef %55, i64* noundef %56, i8* noundef %59)
  %60 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node13 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %60, i32 0, i32 1
  %variable14 = bitcast %union.AstNodeUnion* %node13 to %struct.Variable**
  %61 = load %struct.Variable*, %struct.Variable** %variable14, align 8
  %type15 = getelementptr inbounds %struct.Variable, %struct.Variable* %61, i32 0, i32 1
  %62 = load i8*, i8** %type15, align 8
  %cmp16 = icmp ne i8* %62, null
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %sw.bb11
  %63 = load i8**, i8*** %buffer.addr, align 8
  %64 = load i64*, i64** %buffer_size.addr, align 8
  %65 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %63, i64* noundef %64, i64* noundef %65, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %66 = load i8**, i8*** %buffer.addr, align 8
  %67 = load i64*, i64** %buffer_size.addr, align 8
  %68 = load i64*, i64** %length.addr, align 8
  %69 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node18 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %69, i32 0, i32 1
  %variable19 = bitcast %union.AstNodeUnion* %node18 to %struct.Variable**
  %70 = load %struct.Variable*, %struct.Variable** %variable19, align 8
  %type20 = getelementptr inbounds %struct.Variable, %struct.Variable* %70, i32 0, i32 1
  %71 = load i8*, i8** %type20, align 8
  call void @append_to_buffer(i8** noundef %66, i64* noundef %67, i64* noundef %68, i8* noundef %71)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %sw.bb11
  %72 = load i8**, i8*** %buffer.addr, align 8
  %73 = load i64*, i64** %buffer_size.addr, align 8
  %74 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %72, i64* noundef %73, i64* noundef %74, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %75 = load i8**, i8*** %buffer.addr, align 8
  %76 = load i64*, i64** %buffer_size.addr, align 8
  %77 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %75, i64* noundef %76, i64* noundef %77, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %78 = load i8**, i8*** %buffer.addr, align 8
  %79 = load i64*, i64** %buffer_size.addr, align 8
  %80 = load i64*, i64** %length.addr, align 8
  %81 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node23 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %81, i32 0, i32 1
  %variable24 = bitcast %union.AstNodeUnion* %node23 to %struct.Variable**
  %82 = load %struct.Variable*, %struct.Variable** %variable24, align 8
  %name25 = getelementptr inbounds %struct.Variable, %struct.Variable* %82, i32 0, i32 0
  %83 = load i8*, i8** %name25, align 8
  call void @append_to_buffer(i8** noundef %78, i64* noundef %79, i64* noundef %80, i8* noundef %83)
  %84 = load i8**, i8*** %buffer.addr, align 8
  %85 = load i64*, i64** %buffer_size.addr, align 8
  %86 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %84, i64* noundef %85, i64* noundef %86, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %87 = load i8**, i8*** %buffer.addr, align 8
  %88 = load i64*, i64** %buffer_size.addr, align 8
  %89 = load i64*, i64** %length.addr, align 8
  call void @append_to_buffer(i8** noundef %87, i64* noundef %88, i64* noundef %89, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb22, %if.end21, %sw.bb7, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trim(i8* noundef %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %start, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #11
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call1 = call i16** @__ctype_b_loc() #12
  %1 = load i16*, i16** %call1, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %start, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %idxprom3 = sext i32 %conv2 to i64
  %arrayidx4 = getelementptr inbounds i16, i16* %1, i64 %idxprom3
  %5 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %start, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %start, align 4
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  br label %while.cond6

while.cond6:                                      ; preds = %while.body17, %while.end
  %7 = load i32, i32* %end, align 4
  %8 = load i32, i32* %start, align 4
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond6
  %call8 = call i16** @__ctype_b_loc() #12
  %9 = load i16*, i16** %call8, align 8
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i32, i32* %end, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %12 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %arrayidx13 = getelementptr inbounds i16, i16* %9, i64 %idxprom12
  %13 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %13 to i32
  %and15 = and i32 %conv14, 8192
  %tobool16 = icmp ne i32 %and15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond6
  %14 = phi i1 [ false, %while.cond6 ], [ %tobool16, %land.rhs ]
  br i1 %14, label %while.body17, label %while.end18

while.body17:                                     ; preds = %land.end
  %15 = load i32, i32* %end, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %end, align 4
  br label %while.cond6, !llvm.loop !18

while.end18:                                      ; preds = %land.end
  %16 = load i32, i32* %start, align 4
  %cmp19 = icmp sgt i32 %16, 0
  br i1 %cmp19, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end18
  %17 = load i32, i32* %end, align 4
  %conv21 = sext i32 %17 to i64
  %18 = load i8*, i8** %str.addr, align 8
  %call22 = call i64 @strlen(i8* noundef %18) #11
  %sub23 = sub i64 %call22, 1
  %cmp24 = icmp ult i64 %conv21, %sub23
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end18
  %19 = load i8*, i8** %str.addr, align 8
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i32, i32* %start, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  %22 = load i32, i32* %end, align 4
  %23 = load i32, i32* %start, align 4
  %sub26 = sub nsw i32 %22, %23
  %add = add nsw i32 %sub26, 1
  %conv27 = sext i32 %add to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %add.ptr, i64 %conv27, i1 false)
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i32, i32* %end, align 4
  %26 = load i32, i32* %start, align 4
  %sub28 = sub nsw i32 %25, %26
  %add29 = add nsw i32 %sub28, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %24, i64 %idxprom30
  store i8 0, i8* %arrayidx31, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_config_type(i8* noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %error_msg = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0)) #11
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.else4:                                         ; preds = %if.else
  %2 = load i8*, i8** %key.addr, align 8
  %call5 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0)) #11
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  store i32 2, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else4
  %3 = load i8*, i8** %key.addr, align 8
  %call9 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* noundef %3)
  store i8* %call9, i8** %error_msg, align 8
  %4 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %4, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.32, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.get_config_type, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else8
  br label %if.end10

if.end10:                                         ; preds = %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  store i32 3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then7, %if.then3, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_config(i8* noundef %line, i8** noundef %key, i8** noundef %value) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %key.addr = alloca i8**, align 8
  %value.addr = alloca i8**, align 8
  %eq_pos = alloca i8*, align 8
  %error_msg = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8** %key, i8*** %key.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i8* @strchr(i8* noundef %0, i32 noundef 61) #11
  store i8* %call, i8** %eq_pos, align 8
  %1 = load i8*, i8** %eq_pos, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  %call1 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i64 0, i64 0), i8* noundef %2)
  store i8* %call1, i8** %error_msg, align 8
  %3 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %3, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.32, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_config, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %line.addr, align 8
  %call2 = call i8* @strtok(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0)) #9
  %5 = load i8**, i8*** %key.addr, align 8
  store i8* %call2, i8** %5, align 8
  %6 = load i8**, i8*** %key.addr, align 8
  %7 = load i8*, i8** %6, align 8
  call void @trim(i8* noundef %7)
  %call3 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0)) #9
  %8 = load i8**, i8*** %value.addr, align 8
  store i8* %call3, i8** %8, align 8
  %9 = load i8**, i8*** %value.addr, align 8
  %10 = load i8*, i8** %9, align 8
  call void @trim(i8* noundef %10)
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { %struct._IO_FILE*, i64 } @get_config_from_file() #0 {
entry:
  %retval = alloca %struct.Options, align 8
  %line = alloca i8*, align 8
  %len = alloca i64, align 8
  %config_file = alloca %struct._IO_FILE*, align 8
  %key = alloca i8*, align 8
  %value = alloca i8*, align 8
  %cfg = alloca i32, align 4
  %error_msg = alloca i8*, align 8
  %error_msg23 = alloca i8*, align 8
  %error_msg28 = alloca i8*, align 8
  store i8* null, i8** %line, align 8
  store i64 0, i64* %len, align 8
  %call = call %struct._IO_FILE* @get_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %config_file, align 8
  %reduction_order = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 2
  store i32 0, i32* %reduction_order, align 4
  %step_by_step_reduction = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 1
  store i8 0, i8* %step_by_step_reduction, align 8
  %file = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %config_file, align 8
  %call1 = call i64 @getline(i8** noundef %line, i64* noundef %len, %struct._IO_FILE* noundef %0)
  %cmp = icmp ne i64 %call1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %line, align 8
  call void @parse_config(i8* noundef %1, i8** noundef %key, i8** noundef %value)
  %2 = load i8*, i8** %key, align 8
  %call2 = call i32 @get_config_type(i8* noundef %2)
  store i32 %call2, i32* %cfg, align 4
  %3 = load i32, i32* %cfg, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb10
    i32 3, label %sw.bb22
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load i8*, i8** %value, align 8
  %call3 = call %struct._IO_FILE* @get_file(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %file4 = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 0
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %file4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %5 = load i8*, i8** %value, align 8
  %call6 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #11
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb5
  %step_by_step_reduction8 = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 1
  store i8 1, i8* %step_by_step_reduction8, align 8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb5
  %step_by_step_reduction9 = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 1
  store i8 0, i8* %step_by_step_reduction9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %6 = load i8*, i8** %value, align 8
  %call11 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #11
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb10
  %reduction_order14 = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 2
  store i32 0, i32* %reduction_order14, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb10
  %7 = load i8*, i8** %value, align 8
  %call15 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0)) #11
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else
  %reduction_order18 = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 2
  store i32 1, i32* %reduction_order18, align 4
  br label %sw.epilog

if.else19:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.38, i64 0, i64 0), i8** %error_msg, align 8
  %8 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %8, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.32, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.get_config_from_file, i64 0, i64 0))
  br label %if.end20

if.end20:                                         ; preds = %if.else19
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  br label %sw.bb22

sw.bb22:                                          ; preds = %while.body, %if.end21
  %9 = load i8*, i8** %key, align 8
  %call24 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* noundef %9)
  store i8* %call24, i8** %error_msg23, align 8
  %10 = load i8*, i8** %error_msg23, align 8
  call void @error(i8* noundef %10, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.32, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.get_config_from_file, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %while.body, %if.then17, %if.then13, %if.end, %if.then, %sw.bb
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %file25 = getelementptr inbounds %struct.Options, %struct.Options* %retval, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file25, align 8
  %cmp26 = icmp eq %struct._IO_FILE* %11, null
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %while.end
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i64 0, i64 0), i8** %error_msg28, align 8
  %12 = load i8*, i8** %error_msg28, align 8
  call void @error(i8* noundef %12, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.32, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.get_config_from_file, i64 0, i64 0))
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %while.end
  %13 = bitcast %struct.Options* %retval to { %struct._IO_FILE*, i64 }*
  %14 = load { %struct._IO_FILE*, i64 }, { %struct._IO_FILE*, i64 }* %13, align 8
  ret { %struct._IO_FILE*, i64 } %14
}

declare dso_local i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

declare dso_local void @rewind(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_file(i8* noundef %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %error_msg = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @remove(i8* noundef %0) #9
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 38)
  store i8* %call1, i8** %error_msg, align 8
  %2 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %2, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.delete_file, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @next(%struct._IO_FILE* noundef %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %x = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* noundef %0)
  store i32 %call, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_token(i8 noundef signext %token) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca i8, align 1
  store i8 %token, i8* %token.addr, align 1
  %0 = load i8, i8* %token.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %token.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 41
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  %2 = load i8, i8* %token.addr, align 1
  %conv7 = sext i8 %2 to i32
  %cmp8 = icmp eq i32 %conv7, 64
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else6
  store i32 2, i32* %retval, align 4
  br label %return

if.else11:                                        ; preds = %if.else6
  %3 = load i8, i8* %token.addr, align 1
  %conv12 = sext i8 %3 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else11
  store i32 3, i32* %retval, align 4
  br label %return

if.else16:                                        ; preds = %if.else11
  %4 = load i8, i8* %token.addr, align 1
  %call = call zeroext i1 @is_variable(i8 noundef signext %4)
  br i1 %call, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else16
  store i32 4, i32* %retval, align 4
  br label %return

if.else18:                                        ; preds = %if.else16
  %5 = load i8, i8* %token.addr, align 1
  %conv19 = sext i8 %5 to i32
  %cmp20 = icmp eq i32 %conv19, 32
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else18
  store i32 6, i32* %retval, align 4
  br label %return

if.else23:                                        ; preds = %if.else18
  %6 = load i8, i8* %token.addr, align 1
  %conv24 = sext i8 %6 to i32
  %cmp25 = icmp eq i32 %conv24, 10
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else23
  store i32 7, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.else23
  %7 = load i8, i8* %token.addr, align 1
  %conv29 = sext i8 %7 to i32
  %cmp30 = icmp eq i32 %conv29, 61
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else28
  store i32 8, i32* %retval, align 4
  br label %return

if.else33:                                        ; preds = %if.else28
  %8 = load i8, i8* %token.addr, align 1
  %conv34 = sext i8 %8 to i32
  %cmp35 = icmp eq i32 %conv34, 34
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else33
  store i32 9, i32* %retval, align 4
  br label %return

if.else38:                                        ; preds = %if.else33
  %9 = load i8, i8* %token.addr, align 1
  %conv39 = sext i8 %9 to i32
  %cmp40 = icmp eq i32 %conv39, 58
  br i1 %cmp40, label %if.then42, label %if.end

if.then42:                                        ; preds = %if.else38
  store i32 10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else38
  br label %if.end43

if.end43:                                         ; preds = %if.end
  br label %if.end44

if.end44:                                         ; preds = %if.end43
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  br label %if.end49

if.end49:                                         ; preds = %if.end48
  br label %if.end50

if.end50:                                         ; preds = %if.end49
  br label %if.end51

if.end51:                                         ; preds = %if.end50
  store i32 5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then42, %if.then37, %if.then32, %if.then27, %if.then22, %if.then17, %if.then15, %if.then10, %if.then5, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @is_variable(i8 noundef signext %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca i8, align 1
  %cmp = alloca i32, align 4
  store i8 %token, i8* %token.addr, align 1
  %0 = load i8, i8* %token.addr, align 1
  %conv = sext i8 %0 to i32
  store i32 %conv, i32* %cmp, align 4
  %1 = load i32, i32* %cmp, align 4
  %cmp1 = icmp eq i32 %1, 95
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %cmp, align 4
  %cmp3 = icmp sge i32 %2, 97
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %cmp, align 4
  %cmp5 = icmp sle i32 %3, 122
  br i1 %cmp5, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %4 = load i32, i32* %cmp, align 4
  %cmp7 = icmp sge i32 %4, 65
  br i1 %cmp7, label %land.lhs.true9, label %if.end13

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %5 = load i32, i32* %cmp, align 4
  %cmp10 = icmp sle i32 %5, 90
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true9, %land.lhs.true
  store i1 true, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %land.lhs.true9, %lor.lhs.false
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p_print_token(i32 noundef %token) #0 {
entry:
  %token.addr = alloca i32, align 4
  store i32 %token, i32* %token.addr, align 4
  %0 = load i32, i32* %token.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 6, label %sw.bb9
    i32 7, label %sw.bb11
    i32 8, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0))
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %return

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %return

sw.bb5:                                           ; preds = %entry
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  br label %return

sw.bb7:                                           ; preds = %entry
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  br label %return

sw.bb9:                                           ; preds = %entry
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0))
  br label %return

sw.bb11:                                          ; preds = %entry
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0))
  br label %return

sw.bb13:                                          ; preds = %entry
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0))
  br label %return

sw.default:                                       ; preds = %entry
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0))
  br label %return

return:                                           ; preds = %sw.default, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p_print_astNode_type(%struct.AstNode* noundef %n) #0 {
entry:
  %n.addr = alloca %struct.AstNode*, align 8
  store %struct.AstNode* %n, %struct.AstNode** %n.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0))
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0))
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0))
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @peek(%struct._IO_FILE* noundef %in) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i8, align 1
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* noundef %0)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %c, align 1
  %1 = load i8, i8* %c, align 1
  %conv1 = sext i8 %1 to i32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call2 = call i32 @ungetc(i32 noundef %conv1, %struct._IO_FILE* noundef %2)
  %3 = load i8, i8* %c, align 1
  ret i8 %3
}

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peek_print(%struct._IO_FILE* noundef %in, i32 noundef %n) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* noundef %5)
  store i32 %call, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %6, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %c, align 4
  %conv = trunc i32 %7 to i8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %vla, i64 %idxprom2
  store i8 0, i8* %arrayidx3, align 1
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %vla)
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.end
  %12 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %12, 0
  br i1 %cmp6, label %for.body8, label %for.end15

for.body8:                                        ; preds = %for.cond5
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %vla, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call12 = call i32 @ungetc(i32 noundef %conv11, %struct._IO_FILE* noundef %15)
  br label %for.inc13

for.inc13:                                        ; preds = %for.body8
  %16 = load i32, i32* %i, align 4
  %dec14 = add nsw i32 %16, -1
  store i32 %dec14, i32* %i, align 4
  br label %for.cond5, !llvm.loop !21

for.end15:                                        ; preds = %for.cond5
  %17 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %17)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @consume(i32 noundef %t, %struct._IO_FILE* noundef %in, i8* noundef %expected) #0 {
entry:
  %t.addr = alloca i32, align 4
  %in.addr = alloca %struct._IO_FILE*, align 8
  %expected.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %p = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i8* %expected, i8** %expected.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call signext i8 @next(%struct._IO_FILE* noundef %0)
  store i8 %call, i8* %c, align 1
  %1 = load i8, i8* %c, align 1
  %call1 = call i32 @parse_token(i8 noundef signext %1)
  store i32 %call1, i32* %p, align 4
  %2 = load i32, i32* %p, align 4
  %3 = load i32, i32* %t.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %expected.addr, align 8
  %5 = load i8, i8* %c, align 1
  call void @expect(i8* noundef %4, i8 noundef signext %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expect(i8* noundef %expected, i8 noundef signext %received) #0 {
entry:
  %expected.addr = alloca i8*, align 8
  %received.addr = alloca i8, align 1
  store i8* %expected, i8** %expected.addr, align 8
  store i8 %received, i8* %received.addr, align 1
  %0 = load i8*, i8** %expected.addr, align 8
  %1 = load i8, i8* %received.addr, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.91, i64 0, i64 0), i8* noundef %0, i32 noundef %conv)
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @create_variable(i8* noundef %name, i8* noundef %type) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %var = alloca %struct.AstNode*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #9
  %0 = bitcast i8* %call to %struct.AstNode*
  store %struct.AstNode* %0, %struct.AstNode** %var, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.AstNode*, %struct.AstNode** %var, align 8
  %cmp = icmp eq %struct.AstNode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.create_variable, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.AstNode*, %struct.AstNode** %var, align 8
  %type2 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 0
  store i32 2, i32* %type2, align 8
  %call3 = call noalias i8* @malloc(i64 noundef 16) #9
  %4 = bitcast i8* %call3 to %struct.Variable*
  %5 = load %struct.AstNode*, %struct.AstNode** %var, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 1
  %variable = bitcast %union.AstNodeUnion* %node to %struct.Variable**
  store %struct.Variable* %4, %struct.Variable** %variable, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load %struct.AstNode*, %struct.AstNode** %var, align 8
  %node4 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %7, i32 0, i32 1
  %variable5 = bitcast %union.AstNodeUnion* %node4 to %struct.Variable**
  %8 = load %struct.Variable*, %struct.Variable** %variable5, align 8
  %name6 = getelementptr inbounds %struct.Variable, %struct.Variable* %8, i32 0, i32 0
  store i8* %6, i8** %name6, align 8
  %9 = load i8*, i8** %type.addr, align 8
  %10 = load %struct.AstNode*, %struct.AstNode** %var, align 8
  %node7 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %10, i32 0, i32 1
  %variable8 = bitcast %union.AstNodeUnion* %node7 to %struct.Variable**
  %11 = load %struct.Variable*, %struct.Variable** %variable8, align 8
  %type9 = getelementptr inbounds %struct.Variable, %struct.Variable* %11, i32 0, i32 1
  store i8* %9, i8** %type9, align 8
  %12 = load %struct.AstNode*, %struct.AstNode** %var, align 8
  ret %struct.AstNode* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @create_application(%struct.AstNode* noundef %function, %struct.AstNode* noundef %argument) #0 {
entry:
  %function.addr = alloca %struct.AstNode*, align 8
  %argument.addr = alloca %struct.AstNode*, align 8
  %app = alloca %struct.AstNode*, align 8
  store %struct.AstNode* %function, %struct.AstNode** %function.addr, align 8
  store %struct.AstNode* %argument, %struct.AstNode** %argument.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #9
  %0 = bitcast i8* %call to %struct.AstNode*
  store %struct.AstNode* %0, %struct.AstNode** %app, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.AstNode*, %struct.AstNode** %app, align 8
  %cmp = icmp eq %struct.AstNode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.create_application, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.AstNode*, %struct.AstNode** %app, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %call2 = call noalias i8* @malloc(i64 noundef 16) #9
  %4 = bitcast i8* %call2 to %struct.Application*
  %5 = load %struct.AstNode*, %struct.AstNode** %app, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node to %struct.Application**
  store %struct.Application* %4, %struct.Application** %application, align 8
  %6 = load %struct.AstNode*, %struct.AstNode** %function.addr, align 8
  %7 = load %struct.AstNode*, %struct.AstNode** %app, align 8
  %node3 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %7, i32 0, i32 1
  %application4 = bitcast %union.AstNodeUnion* %node3 to %struct.Application**
  %8 = load %struct.Application*, %struct.Application** %application4, align 8
  %function5 = getelementptr inbounds %struct.Application, %struct.Application* %8, i32 0, i32 0
  store %struct.AstNode* %6, %struct.AstNode** %function5, align 8
  %9 = load %struct.AstNode*, %struct.AstNode** %argument.addr, align 8
  %10 = load %struct.AstNode*, %struct.AstNode** %app, align 8
  %node6 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %10, i32 0, i32 1
  %application7 = bitcast %union.AstNodeUnion* %node6 to %struct.Application**
  %11 = load %struct.Application*, %struct.Application** %application7, align 8
  %argument8 = getelementptr inbounds %struct.Application, %struct.Application* %11, i32 0, i32 1
  store %struct.AstNode* %9, %struct.AstNode** %argument8, align 8
  %12 = load %struct.AstNode*, %struct.AstNode** %app, align 8
  ret %struct.AstNode* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @create_lambda(i8* noundef %variable, %struct.AstNode* noundef %body, i8* noundef %type) #0 {
entry:
  %variable.addr = alloca i8*, align 8
  %body.addr = alloca %struct.AstNode*, align 8
  %type.addr = alloca i8*, align 8
  %lambda = alloca %struct.AstNode*, align 8
  store i8* %variable, i8** %variable.addr, align 8
  store %struct.AstNode* %body, %struct.AstNode** %body.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #9
  %0 = bitcast i8* %call to %struct.AstNode*
  store %struct.AstNode* %0, %struct.AstNode** %lambda, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %cmp = icmp eq %struct.AstNode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.create_lambda, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %type2 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 0
  store i32 0, i32* %type2, align 8
  %call3 = call noalias i8* @malloc(i64 noundef 24) #9
  %4 = bitcast i8* %call3 to %struct.LambdaExpression*
  %5 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node to %struct.LambdaExpression**
  store %struct.LambdaExpression* %4, %struct.LambdaExpression** %lambda_expr, align 8
  %6 = load i8*, i8** %variable.addr, align 8
  %7 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %node4 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %7, i32 0, i32 1
  %lambda_expr5 = bitcast %union.AstNodeUnion* %node4 to %struct.LambdaExpression**
  %8 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr5, align 8
  %parameter = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %8, i32 0, i32 0
  store i8* %6, i8** %parameter, align 8
  %9 = load %struct.AstNode*, %struct.AstNode** %body.addr, align 8
  %10 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %node6 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %10, i32 0, i32 1
  %lambda_expr7 = bitcast %union.AstNodeUnion* %node6 to %struct.LambdaExpression**
  %11 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr7, align 8
  %body8 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %11, i32 0, i32 2
  store %struct.AstNode* %9, %struct.AstNode** %body8, align 8
  %12 = load i8*, i8** %type.addr, align 8
  %13 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %node9 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %13, i32 0, i32 1
  %lambda_expr10 = bitcast %union.AstNodeUnion* %node9 to %struct.LambdaExpression**
  %14 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr10, align 8
  %type11 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %14, i32 0, i32 1
  store i8* %12, i8** %type11, align 8
  %15 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  ret %struct.AstNode* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @alpha_convert(i8* noundef %old) #0 {
entry:
  %old.addr = alloca i8*, align 8
  %digits = alloca i32, align 4
  %new = alloca i8*, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i8* %old, i8** %old.addr, align 8
  %0 = load i32, i32* @n, align 4
  %call = call i32 @abs(i32 noundef %0) #12
  %conv = sitofp i32 %call to double
  %call1 = call double @log10(double noundef %conv) #9
  %conv2 = fptosi double %call1 to i32
  %add = add nsw i32 %conv2, 1
  store i32 %add, i32* %digits, align 4
  %1 = load i8*, i8** %old.addr, align 8
  %call3 = call i64 @strlen(i8* noundef %1) #11
  %2 = load i32, i32* %digits, align 4
  %conv4 = sext i32 %2 to i64
  %add5 = add i64 %call3, %conv4
  %add6 = add i64 %add5, 2
  %call7 = call noalias i8* @malloc(i64 noundef %add6) #9
  store i8* %call7, i8** %new, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i8*, i8** %new, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.alpha_convert, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %digits, align 4
  %add10 = add nsw i32 %5, 1
  %6 = zext i32 %add10 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %6, align 16
  store i64 %6, i64* %__vla_expr0, align 8
  %8 = load i8*, i8** %new, align 8
  %9 = load i8*, i8** %old.addr, align 8
  %call11 = call i8* @strcpy(i8* noundef %8, i8* noundef %9) #9
  %10 = load i32, i32* @n, align 4
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %vla, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i32 noundef %10) #9
  %11 = load i8*, i8** %new, align 8
  %call13 = call i8* @strcat(i8* noundef %11, i8* noundef %vla) #9
  %12 = load i32, i32* @n, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @n, align 4
  %13 = load i8*, i8** %new, align 8
  %14 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %14)
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #8

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @is_used(%struct.HashTable* noundef %table, i8* noundef %variable) #0 {
entry:
  %table.addr = alloca %struct.HashTable*, align 8
  %variable.addr = alloca i8*, align 8
  store %struct.HashTable* %table, %struct.HashTable** %table.addr, align 8
  store i8* %variable, i8** %variable.addr, align 8
  %0 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %1 = load i8*, i8** %variable.addr, align 8
  %call = call zeroext i1 @table_exists(%struct.HashTable* noundef %0, i8* noundef %1)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_space_chars(%struct._IO_FILE* noundef %in) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i8, align 1
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call signext i8 @peek(%struct._IO_FILE* noundef %0)
  store i8 %call, i8* %c, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8, i8* %c, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %2 = load i8, i8* %c, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 10
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i8, i8* %c, align 1
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp eq i32 %conv5, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp6, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call8 = call signext i8 @next(%struct._IO_FILE* noundef %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call9 = call signext i8 @peek(%struct._IO_FILE* noundef %6)
  store i8 %call9, i8* %c, align 1
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %lor.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @parse_lambda(%struct.HashTable* noundef %table, %struct._IO_FILE* noundef %in) #0 {
entry:
  %retval = alloca %struct.AstNode*, align 8
  %table.addr = alloca %struct.HashTable*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %parameter = alloca i8, align 1
  %param = alloca i32, align 4
  %var = alloca i8*, align 8
  %new_var = alloca i8*, align 8
  %error_msg = alloca i8*, align 8
  %type = alloca i8*, align 8
  %body = alloca %struct.AstNode*, align 8
  store %struct.HashTable* %table, %struct.HashTable** %table.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call signext i8 @peek(%struct._IO_FILE* noundef %0)
  %call1 = call i32 @parse_token(i8 noundef signext %call)
  %cmp = icmp ne i32 %call1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %parameter, align 1
  call void @expect(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i8 noundef signext %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call2 = call i8* @parse_variable(%struct._IO_FILE* noundef %2)
  store i8* %call2, i8** %var, align 8
  store i8* null, i8** %new_var, align 8
  %3 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %4 = load i8*, i8** %var, align 8
  %call3 = call zeroext i1 @is_used(%struct.HashTable* noundef %3, i8* noundef %4)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %5 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %6 = load i8*, i8** %var, align 8
  %call5 = call %struct.AstNode* @search(%struct.HashTable* noundef %5, i8* noundef %6)
  %cmp6 = icmp ne %struct.AstNode* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then4
  %7 = load i8*, i8** %var, align 8
  %call8 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.69, i64 0, i64 0), i8* noundef %7)
  store i8* %call8, i8** %error_msg, align 8
  %8 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %8, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_lambda, i64 0, i64 0))
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4
  %9 = load i8*, i8** %var, align 8
  %call10 = call i8* @alpha_convert(i8* noundef %9)
  store i8* %call10, i8** %new_var, align 8
  %10 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %11 = load i8*, i8** %new_var, align 8
  call void @insert(%struct.HashTable* noundef %10, i8* noundef %11, %struct.AstNode* noundef null)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %12 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %13 = load i8*, i8** %var, align 8
  call void @insert(%struct.HashTable* noundef %12, i8* noundef %13, %struct.AstNode* noundef null)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @parse_space_chars(%struct._IO_FILE* noundef %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 10, %struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @parse_space_chars(%struct._IO_FILE* noundef %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call12 = call signext i8 @peek(%struct._IO_FILE* noundef %17)
  %call13 = call i32 @parse_token(i8 noundef signext %call12)
  %cmp14 = icmp ne i32 %call13, 4
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @error(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_lambda, i64 0, i64 0))
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %18 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call17 = call i8* @parse_type(%struct.HashTable* noundef %18, %struct._IO_FILE* noundef %19)
  store i8* %call17, i8** %type, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 3, %struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0))
  %21 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call18 = call %struct.AstNode* @parse_expression(%struct.HashTable* noundef %21, %struct._IO_FILE* noundef %22)
  store %struct.AstNode* %call18, %struct.AstNode** %body, align 8
  %23 = load i8*, i8** %new_var, align 8
  %cmp19 = icmp ne i8* %23, null
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  %24 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  %25 = load i8*, i8** %var, align 8
  %26 = load i8*, i8** %new_var, align 8
  call void @replace(%struct.AstNode* noundef %24, i8* noundef %25, i8* noundef %26)
  %27 = load i8*, i8** %var, align 8
  %28 = load i8*, i8** %new_var, align 8
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i64 0, i64 0), i8* noundef %27, i8* noundef %28)
  %29 = load i8*, i8** %new_var, align 8
  %30 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  %31 = load i8*, i8** %type, align 8
  %call21 = call %struct.AstNode* @create_lambda(i8* noundef %29, %struct.AstNode* noundef %30, i8* noundef %31)
  store %struct.AstNode* %call21, %struct.AstNode** %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.end16
  %32 = load i8*, i8** %var, align 8
  %33 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  %34 = load i8*, i8** %type, align 8
  %call23 = call %struct.AstNode* @create_lambda(i8* noundef %32, %struct.AstNode* noundef %33, i8* noundef %34)
  store %struct.AstNode* %call23, %struct.AstNode** %retval, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.then20
  %35 = load %struct.AstNode*, %struct.AstNode** %retval, align 8
  ret %struct.AstNode* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_variable(%struct._IO_FILE* noundef %in) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %variable_name = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 256) #9
  store i8* %call, i8** %variable_name, align 8
  store i32 0, i32* %index, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call1 = call signext i8 @peek(%struct._IO_FILE* noundef %0)
  %call2 = call zeroext i1 @is_variable(i8 noundef signext %call1)
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call3 = call signext i8 @next(%struct._IO_FILE* noundef %1)
  %2 = load i8*, i8** %variable_name, align 8
  %3 = load i32, i32* %index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 %call3, i8* %arrayidx, align 1
  %4 = load i32, i32* %index, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %index, align 4
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %variable_name, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_type(%struct.HashTable* noundef %types_table, %struct._IO_FILE* noundef %in) #0 {
entry:
  %types_table.addr = alloca %struct.HashTable*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %type_name = alloca i8*, align 8
  %index = alloca i32, align 4
  %token = alloca i8, align 1
  %error_msg = alloca i8*, align 8
  store %struct.HashTable* %types_table, %struct.HashTable** %types_table.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 256) #9
  store i8* %call, i8** %type_name, align 8
  store i32 0, i32* %index, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call1 = call signext i8 @next(%struct._IO_FILE* noundef %0)
  store i8 %call1, i8* %token, align 1
  %1 = load i8, i8* %token, align 1
  %call2 = call zeroext i1 @is_uppercase(i8 noundef signext %1)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @error(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 498, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.parse_type, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* %token, align 1
  %3 = load i8*, i8** %type_name, align 8
  %4 = load i32, i32* %index, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 %2, i8* %arrayidx, align 1
  %5 = load i32, i32* %index, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %index, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call3 = call signext i8 @peek(%struct._IO_FILE* noundef %6)
  %call4 = call zeroext i1 @is_variable(i8 noundef signext %call3)
  br i1 %call4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call5 = call signext i8 @next(%struct._IO_FILE* noundef %7)
  %8 = load i8*, i8** %type_name, align 8
  %9 = load i32, i32* %index, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  store i8 %call5, i8* %arrayidx7, align 1
  %10 = load i32, i32* %index, align 4
  %inc8 = add nsw i32 %10, 1
  store i32 %inc8, i32* %index, align 4
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %11 = load %struct.HashTable*, %struct.HashTable** %types_table.addr, align 8
  %12 = load i8*, i8** %type_name, align 8
  %call9 = call zeroext i1 @table_exists(%struct.HashTable* noundef %11, i8* noundef %12)
  br i1 %call9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %while.end
  %13 = load i8*, i8** %type_name, align 8
  %call11 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.90, i64 0, i64 0), i8* noundef %13)
  store i8* %call11, i8** %error_msg, align 8
  %14 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %14, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.parse_type, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %while.end
  %15 = load i8*, i8** %type_name, align 8
  ret i8* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replace(%struct.AstNode* noundef %n, i8* noundef %old, i8* noundef %new_name) #0 {
entry:
  %n.addr = alloca %struct.AstNode*, align 8
  %old.addr = alloca i8*, align 8
  %new_name.addr = alloca i8*, align 8
  store %struct.AstNode* %n, %struct.AstNode** %n.addr, align 8
  store i8* %old, i8** %old.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %2, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node to %struct.LambdaExpression**
  %3 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %parameter = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %3, i32 0, i32 0
  %4 = load i8*, i8** %parameter, align 8
  %5 = load i8*, i8** %old.addr, align 8
  %call = call i32 @strcmp(i8* noundef %4, i8* noundef %5) #11
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load i8*, i8** %new_name.addr, align 8
  %7 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node3 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %7, i32 0, i32 1
  %lambda_expr4 = bitcast %union.AstNodeUnion* %node3 to %struct.LambdaExpression**
  %8 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr4, align 8
  %parameter5 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %8, i32 0, i32 0
  store i8* %6, i8** %parameter5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %9 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node6 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %9, i32 0, i32 1
  %lambda_expr7 = bitcast %union.AstNodeUnion* %node6 to %struct.LambdaExpression**
  %10 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr7, align 8
  %body = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %10, i32 0, i32 2
  %11 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  %12 = load i8*, i8** %old.addr, align 8
  %13 = load i8*, i8** %new_name.addr, align 8
  call void @replace(%struct.AstNode* noundef %11, i8* noundef %12, i8* noundef %13)
  br label %if.end28

if.else:                                          ; preds = %entry
  %14 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type8 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %14, i32 0, i32 0
  %15 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %15, 1
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.else
  %16 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node11 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %16, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node11 to %struct.Application**
  %17 = load %struct.Application*, %struct.Application** %application, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %17, i32 0, i32 0
  %18 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  %19 = load i8*, i8** %old.addr, align 8
  %20 = load i8*, i8** %new_name.addr, align 8
  call void @replace(%struct.AstNode* noundef %18, i8* noundef %19, i8* noundef %20)
  %21 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node12 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %21, i32 0, i32 1
  %application13 = bitcast %union.AstNodeUnion* %node12 to %struct.Application**
  %22 = load %struct.Application*, %struct.Application** %application13, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %22, i32 0, i32 1
  %23 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  %24 = load i8*, i8** %old.addr, align 8
  %25 = load i8*, i8** %new_name.addr, align 8
  call void @replace(%struct.AstNode* noundef %23, i8* noundef %24, i8* noundef %25)
  br label %if.end27

if.else14:                                        ; preds = %if.else
  %26 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type15 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %26, i32 0, i32 0
  %27 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %27, 2
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.else14
  %28 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node18 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %28, i32 0, i32 1
  %variable = bitcast %union.AstNodeUnion* %node18 to %struct.Variable**
  %29 = load %struct.Variable*, %struct.Variable** %variable, align 8
  %name = getelementptr inbounds %struct.Variable, %struct.Variable* %29, i32 0, i32 0
  %30 = load i8*, i8** %name, align 8
  %31 = load i8*, i8** %old.addr, align 8
  %call19 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #11
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.then17
  %32 = load i8*, i8** %new_name.addr, align 8
  %33 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node22 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %33, i32 0, i32 1
  %variable23 = bitcast %union.AstNodeUnion* %node22 to %struct.Variable**
  %34 = load %struct.Variable*, %struct.Variable** %variable23, align 8
  %name24 = getelementptr inbounds %struct.Variable, %struct.Variable* %34, i32 0, i32 0
  store i8* %32, i8** %name24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then17
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.else14
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then10
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_definition(%struct.HashTable* noundef %table, %struct._IO_FILE* noundef %in) #0 {
entry:
  %table.addr = alloca %struct.HashTable*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %next_token = alloca i8, align 1
  %n = alloca i32, align 4
  %def_name = alloca i8*, align 8
  %definition = alloca %struct.AstNode*, align 8
  store %struct.HashTable* %table, %struct.HashTable** %table.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 6, %struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call signext i8 @peek(%struct._IO_FILE* noundef %1)
  %call1 = call i32 @parse_token(i8 noundef signext %call)
  %cmp = icmp ne i32 %call1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %next_token, align 1
  call void @expect(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i64 0, i64 0), i8 noundef signext %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call2 = call i8* @parse_variable(%struct._IO_FILE* noundef %3)
  store i8* %call2, i8** %def_name, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 6, %struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 8, %struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 6, %struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0))
  %7 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call3 = call %struct.AstNode* @parse_expression(%struct.HashTable* noundef %7, %struct._IO_FILE* noundef %8)
  store %struct.AstNode* %call3, %struct.AstNode** %definition, align 8
  %9 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %10 = load i8*, i8** %def_name, align 8
  %11 = load %struct.AstNode*, %struct.AstNode** %definition, align 8
  call void @insert(%struct.HashTable* noundef %9, i8* noundef %10, %struct.AstNode* noundef %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_import(%struct.HashTable* noundef %table, %struct._IO_FILE* noundef %in) #0 {
entry:
  %table.addr = alloca %struct.HashTable*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %next_token = alloca i8, align 1
  %n = alloca i32, align 4
  %file_path = alloca i8*, align 8
  %current_length = alloca i32, align 4
  %error_msg = alloca i8*, align 8
  %imported_file = alloca %struct._IO_FILE*, align 8
  %imported_tkn = alloca i8, align 1
  %scanned = alloca i32, align 4
  %var_name = alloca i8*, align 8
  %error_msg43 = alloca i8*, align 8
  store %struct.HashTable* %table, %struct.HashTable** %table.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 6, %struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  call void @consume(i32 noundef 9, %struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0))
  %call = call noalias i8* @malloc(i64 noundef 100) #9
  store i8* %call, i8** %file_path, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i8*, i8** %file_path, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_import, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call2 = call signext i8 @next(%struct._IO_FILE* noundef %4)
  store i8 %call2, i8* %next_token, align 1
  %5 = load i8, i8* %next_token, align 1
  %call3 = call i32 @parse_token(i8 noundef signext %5)
  store i32 %call3, i32* %n, align 4
  %6 = load i8*, i8** %file_path, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %current_length, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %do.end
  %7 = load i32, i32* %n, align 4
  %cmp4 = icmp ne i32 %7, 9
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %current_length, align 4
  %cmp5 = icmp slt i32 %8, 99
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %9 = load i8, i8* %next_token, align 1
  %10 = load i8*, i8** %file_path, align 8
  %11 = load i32, i32* %current_length, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 %9, i8* %arrayidx7, align 1
  %12 = load i32, i32* %current_length, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %current_length, align 4
  %13 = load i8*, i8** %file_path, align 8
  %14 = load i32, i32* %current_length, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  store i8 0, i8* %arrayidx9, align 1
  br label %if.end10

if.else:                                          ; preds = %while.body
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.81, i64 0, i64 0), i8** %error_msg, align 8
  %15 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %15, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_import, i64 0, i64 0))
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call11 = call signext i8 @next(%struct._IO_FILE* noundef %16)
  store i8 %call11, i8* %next_token, align 1
  %17 = load i8, i8* %next_token, align 1
  %call12 = call i32 @parse_token(i8 noundef signext %17)
  store i32 %call12, i32* %n, align 4
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %n, align 4
  %cmp13 = icmp ne i32 %18, 9
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.end
  %19 = load i8, i8* %next_token, align 1
  call void @expect(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i64 0, i64 0), i8 noundef signext %19)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end
  %20 = load i8*, i8** %file_path, align 8
  %call16 = call %struct._IO_FILE* @get_file(i8* noundef %20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct._IO_FILE* %call16, %struct._IO_FILE** %imported_file, align 8
  br label %do.body17

do.body17:                                        ; preds = %if.end15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %imported_file, align 8
  %cmp18 = icmp eq %struct._IO_FILE* %21, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_import, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end21:                                         ; preds = %do.body17
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %while.cond23

while.cond23:                                     ; preds = %if.end47, %do.end22
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %imported_file, align 8
  %call24 = call signext i8 @peek(%struct._IO_FILE* noundef %23)
  store i8 %call24, i8* %imported_tkn, align 1
  %conv = sext i8 %call24 to i32
  %cmp25 = icmp ne i32 %conv, -1
  br i1 %cmp25, label %while.body27, label %while.end48

while.body27:                                     ; preds = %while.cond23
  %24 = load i8, i8* %imported_tkn, align 1
  %call28 = call i32 @parse_token(i8 noundef signext %24)
  store i32 %call28, i32* %scanned, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %imported_file, align 8
  call void @parse_space_chars(%struct._IO_FILE* noundef %25)
  %26 = load i32, i32* %scanned, align 4
  %cmp29 = icmp eq i32 %26, 4
  br i1 %cmp29, label %if.then31, label %if.end47

if.then31:                                        ; preds = %while.body27
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %imported_file, align 8
  %call32 = call i8* @parse_variable(%struct._IO_FILE* noundef %27)
  store i8* %call32, i8** %var_name, align 8
  %28 = load i8*, i8** %var_name, align 8
  %call33 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #11
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.then31
  %29 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %imported_file, align 8
  call void @parse_definition(%struct.HashTable* noundef %29, %struct._IO_FILE* noundef %30)
  br label %if.end46

if.else37:                                        ; preds = %if.then31
  %31 = load i8*, i8** %var_name, align 8
  %call38 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0)) #11
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else37
  %32 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %imported_file, align 8
  call void @parse_type_definition(%struct.HashTable* noundef %32, %struct._IO_FILE* noundef %33)
  br label %if.end45

if.else42:                                        ; preds = %if.else37
  %34 = load i8*, i8** %var_name, align 8
  %call44 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.83, i64 0, i64 0), i8* noundef %34)
  store i8* %call44, i8** %error_msg43, align 8
  %35 = load i8*, i8** %error_msg43, align 8
  call void @error(i8* noundef %35, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_import, i64 0, i64 0))
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then41
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then36
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %while.body27
  br label %while.cond23, !llvm.loop !26

while.end48:                                      ; preds = %while.cond23
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_type_definition(%struct.HashTable* noundef %types_table, %struct._IO_FILE* noundef %in) #0 {
entry:
  %types_table.addr = alloca %struct.HashTable*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %next_token = alloca i8, align 1
  %n = alloca i32, align 4
  %type_name = alloca i8*, align 8
  %error_msg = alloca i8*, align 8
  store %struct.HashTable* %types_table, %struct.HashTable** %types_table.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call signext i8 @next(%struct._IO_FILE* noundef %0)
  store i8 %call, i8* %next_token, align 1
  %1 = load i8, i8* %next_token, align 1
  %call1 = call i32 @parse_token(i8 noundef signext %1)
  store i32 %call1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ne i32 %2, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8, i8* %next_token, align 1
  call void @expect(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0), i8 noundef signext %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call2 = call signext i8 @peek(%struct._IO_FILE* noundef %4)
  store i8 %call2, i8* %next_token, align 1
  %5 = load i8, i8* %next_token, align 1
  %call3 = call i32 @parse_token(i8 noundef signext %5)
  store i32 %call3, i32* %n, align 4
  %6 = load i32, i32* %n, align 4
  %cmp4 = icmp ne i32 %6, 4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %7 = load i8, i8* %next_token, align 1
  call void @expect(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.86, i64 0, i64 0), i8 noundef signext %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %8 = load i8, i8* %next_token, align 1
  %call7 = call zeroext i1 @is_uppercase(i8 noundef signext %8)
  br i1 %call7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @error(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.parse_type_definition, i64 0, i64 0))
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call10 = call i8* @parse_variable(%struct._IO_FILE* noundef %9)
  store i8* %call10, i8** %type_name, align 8
  %10 = load %struct.HashTable*, %struct.HashTable** %types_table.addr, align 8
  %11 = load i8*, i8** %type_name, align 8
  %call11 = call zeroext i1 @table_exists(%struct.HashTable* noundef %10, i8* noundef %11)
  br i1 %call11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %12 = load i8*, i8** %type_name, align 8
  %call13 = call i8* (i8*, ...) @format(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i64 0, i64 0), i8* noundef %12)
  store i8* %call13, i8** %error_msg, align 8
  %13 = load i8*, i8** %error_msg, align 8
  call void @error(i8* noundef %13, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.66, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.parse_type_definition, i64 0, i64 0))
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9
  %14 = load %struct.HashTable*, %struct.HashTable** %types_table.addr, align 8
  %15 = load i8*, i8** %type_name, align 8
  call void @insert(%struct.HashTable* noundef %14, i8* noundef %15, %struct.AstNode* noundef null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @is_uppercase(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 65
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_ast(%struct.AstNode* noundef %node) #0 {
entry:
  %node.addr = alloca %struct.AstNode*, align 8
  store %struct.AstNode* %node, %struct.AstNode** %node.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %cmp = icmp eq %struct.AstNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node1 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node1 to %struct.LambdaExpression**
  %4 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %cmp2 = icmp ne %struct.LambdaExpression* %4, null
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %sw.bb
  %5 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node4 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 1
  %lambda_expr5 = bitcast %union.AstNodeUnion* %node4 to %struct.LambdaExpression**
  %6 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr5, align 8
  %parameter = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %6, i32 0, i32 0
  %7 = load i8*, i8** %parameter, align 8
  call void @free(i8* noundef %7) #9
  %8 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node6 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %8, i32 0, i32 1
  %lambda_expr7 = bitcast %union.AstNodeUnion* %node6 to %struct.LambdaExpression**
  %9 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr7, align 8
  %body = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %9, i32 0, i32 2
  %10 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  call void @free_ast(%struct.AstNode* noundef %10)
  %11 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node8 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %11, i32 0, i32 1
  %lambda_expr9 = bitcast %union.AstNodeUnion* %node8 to %struct.LambdaExpression**
  %12 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr9, align 8
  %13 = bitcast %struct.LambdaExpression* %12 to i8*
  call void @free(i8* noundef %13) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %sw.bb
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %14 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node12 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %14, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node12 to %struct.Application**
  %15 = load %struct.Application*, %struct.Application** %application, align 8
  %cmp13 = icmp ne %struct.Application* %15, null
  br i1 %cmp13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %sw.bb11
  %16 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node15 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %16, i32 0, i32 1
  %application16 = bitcast %union.AstNodeUnion* %node15 to %struct.Application**
  %17 = load %struct.Application*, %struct.Application** %application16, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %17, i32 0, i32 0
  %18 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  call void @free_ast(%struct.AstNode* noundef %18)
  %19 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node17 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %19, i32 0, i32 1
  %application18 = bitcast %union.AstNodeUnion* %node17 to %struct.Application**
  %20 = load %struct.Application*, %struct.Application** %application18, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %20, i32 0, i32 1
  %21 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  call void @free_ast(%struct.AstNode* noundef %21)
  %22 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node19 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %22, i32 0, i32 1
  %application20 = bitcast %union.AstNodeUnion* %node19 to %struct.Application**
  %23 = load %struct.Application*, %struct.Application** %application20, align 8
  %24 = bitcast %struct.Application* %23 to i8*
  call void @free(i8* noundef %24) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %sw.bb11
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %25 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node23 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %25, i32 0, i32 1
  %variable = bitcast %union.AstNodeUnion* %node23 to %struct.Variable**
  %26 = load %struct.Variable*, %struct.Variable** %variable, align 8
  %cmp24 = icmp ne %struct.Variable* %26, null
  br i1 %cmp24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %sw.bb22
  %27 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node26 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %27, i32 0, i32 1
  %variable27 = bitcast %union.AstNodeUnion* %node26 to %struct.Variable**
  %28 = load %struct.Variable*, %struct.Variable** %variable27, align 8
  %name = getelementptr inbounds %struct.Variable, %struct.Variable* %28, i32 0, i32 0
  %29 = load i8*, i8** %name, align 8
  call void @free(i8* noundef %29) #9
  %30 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %node28 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %30, i32 0, i32 1
  %variable29 = bitcast %union.AstNodeUnion* %node28 to %struct.Variable**
  %31 = load %struct.Variable*, %struct.Variable** %variable29, align 8
  %32 = bitcast %struct.Variable* %31 to i8*
  call void @free(i8* noundef %32) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %sw.bb22
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end30, %if.end21, %if.end10
  %33 = load %struct.AstNode*, %struct.AstNode** %node.addr, align 8
  %34 = bitcast %struct.AstNode* %33 to i8*
  call void @free(i8* noundef %34) #9
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_reduction_order(i32 noundef %t) #0 {
entry:
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i64 0, i64 0))
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb1, %sw.bb
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_definitions(%struct.HashTable* noundef %table, %struct.AstNode* noundef %n) #0 {
entry:
  %table.addr = alloca %struct.HashTable*, align 8
  %n.addr = alloca %struct.AstNode*, align 8
  %def_name = alloca i8*, align 8
  %expanded_def = alloca %struct.AstNode*, align 8
  store %struct.HashTable* %table, %struct.HashTable** %table.addr, align 8
  store %struct.AstNode* %n, %struct.AstNode** %n.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %3 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node to %struct.LambdaExpression**
  %4 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %body = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %4, i32 0, i32 2
  %5 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  call void @expand_definitions(%struct.HashTable* noundef %2, %struct.AstNode* noundef %5)
  br label %if.end31

if.else:                                          ; preds = %entry
  %6 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type1 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  %8 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %9 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node4 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %9, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node4 to %struct.Application**
  %10 = load %struct.Application*, %struct.Application** %application, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %10, i32 0, i32 0
  %11 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  call void @expand_definitions(%struct.HashTable* noundef %8, %struct.AstNode* noundef %11)
  %12 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %13 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node5 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %13, i32 0, i32 1
  %application6 = bitcast %union.AstNodeUnion* %node5 to %struct.Application**
  %14 = load %struct.Application*, %struct.Application** %application6, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %14, i32 0, i32 1
  %15 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  call void @expand_definitions(%struct.HashTable* noundef %12, %struct.AstNode* noundef %15)
  br label %if.end30

if.else7:                                         ; preds = %if.else
  %16 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type8 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %16, i32 0, i32 0
  %17 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %17, 3
  br i1 %cmp9, label %if.then10, label %if.end29

if.then10:                                        ; preds = %if.else7
  %18 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node11 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %18, i32 0, i32 1
  %variable = bitcast %union.AstNodeUnion* %node11 to %struct.Variable**
  %19 = load %struct.Variable*, %struct.Variable** %variable, align 8
  %name = getelementptr inbounds %struct.Variable, %struct.Variable* %19, i32 0, i32 0
  %20 = load i8*, i8** %name, align 8
  store i8* %20, i8** %def_name, align 8
  %21 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %22 = load i8*, i8** %def_name, align 8
  %call = call %struct.AstNode* @search(%struct.HashTable* noundef %21, i8* noundef %22)
  store %struct.AstNode* %call, %struct.AstNode** %expanded_def, align 8
  br label %do.body

do.body:                                          ; preds = %if.then10
  %23 = load %struct.AstNode*, %struct.AstNode** %expanded_def, align 8
  %cmp12 = icmp eq %struct.AstNode* %23, null
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %do.body
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.98, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.expand_definitions, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %25 = load i8*, i8** %def_name, align 8
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.99, i64 0, i64 0), i8* noundef %25)
  %26 = load %struct.AstNode*, %struct.AstNode** %expanded_def, align 8
  call void @print_ast_verbose(%struct.AstNode* noundef %26)
  %27 = load %struct.AstNode*, %struct.AstNode** %expanded_def, align 8
  %type15 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %27, i32 0, i32 0
  %28 = load i32, i32* %type15, align 8
  %29 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type16 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %29, i32 0, i32 0
  store i32 %28, i32* %type16, align 8
  %30 = load %struct.AstNode*, %struct.AstNode** %expanded_def, align 8
  %node17 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %30, i32 0, i32 1
  %variable18 = bitcast %union.AstNodeUnion* %node17 to %struct.Variable**
  %31 = load %struct.Variable*, %struct.Variable** %variable18, align 8
  %32 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node19 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %32, i32 0, i32 1
  %variable20 = bitcast %union.AstNodeUnion* %node19 to %struct.Variable**
  store %struct.Variable* %31, %struct.Variable** %variable20, align 8
  %33 = load %struct.AstNode*, %struct.AstNode** %expanded_def, align 8
  %node21 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %33, i32 0, i32 1
  %lambda_expr22 = bitcast %union.AstNodeUnion* %node21 to %struct.LambdaExpression**
  %34 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr22, align 8
  %35 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node23 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %35, i32 0, i32 1
  %lambda_expr24 = bitcast %union.AstNodeUnion* %node23 to %struct.LambdaExpression**
  store %struct.LambdaExpression* %34, %struct.LambdaExpression** %lambda_expr24, align 8
  %36 = load %struct.AstNode*, %struct.AstNode** %expanded_def, align 8
  %node25 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %36, i32 0, i32 1
  %application26 = bitcast %union.AstNodeUnion* %node25 to %struct.Application**
  %37 = load %struct.Application*, %struct.Application** %application26, align 8
  %38 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node27 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %38, i32 0, i32 1
  %application28 = bitcast %union.AstNodeUnion* %node27 to %struct.Application**
  store %struct.Application* %37, %struct.Application** %application28, align 8
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.else7
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then3
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @reduce_ast(%struct.HashTable* noundef %table, %struct.AstNode* noundef %n) #0 {
entry:
  %retval = alloca %struct.AstNode*, align 8
  %table.addr = alloca %struct.HashTable*, align 8
  %n.addr = alloca %struct.AstNode*, align 8
  %body = alloca %struct.AstNode*, align 8
  %function = alloca %struct.AstNode*, align 8
  %argument = alloca %struct.AstNode*, align 8
  %param = alloca i8*, align 8
  %reduced = alloca %struct.AstNode*, align 8
  store %struct.HashTable* %table, %struct.HashTable** %table.addr, align 8
  store %struct.AstNode* %n, %struct.AstNode** %n.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %2, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node to %struct.LambdaExpression**
  %3 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %body1 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %3, i32 0, i32 2
  %4 = load %struct.AstNode*, %struct.AstNode** %body1, align 8
  store %struct.AstNode* %4, %struct.AstNode** %body, align 8
  %5 = load i32, i32* @reduction_order, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %7 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  %call = call %struct.AstNode* @reduce_ast(%struct.HashTable* noundef %6, %struct.AstNode* noundef %7)
  %8 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node4 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %8, i32 0, i32 1
  %lambda_expr5 = bitcast %union.AstNodeUnion* %node4 to %struct.LambdaExpression**
  %9 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr5, align 8
  %body6 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %9, i32 0, i32 2
  store %struct.AstNode* %call, %struct.AstNode** %body6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %10 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  store %struct.AstNode* %10, %struct.AstNode** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %11 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type7 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %11, i32 0, i32 0
  %12 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then9, label %if.end52

if.then9:                                         ; preds = %if.else
  %13 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node10 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %13, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node10 to %struct.Application**
  %14 = load %struct.Application*, %struct.Application** %application, align 8
  %function11 = getelementptr inbounds %struct.Application, %struct.Application* %14, i32 0, i32 0
  %15 = load %struct.AstNode*, %struct.AstNode** %function11, align 8
  store %struct.AstNode* %15, %struct.AstNode** %function, align 8
  %16 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node12 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %16, i32 0, i32 1
  %application13 = bitcast %union.AstNodeUnion* %node12 to %struct.Application**
  %17 = load %struct.Application*, %struct.Application** %application13, align 8
  %argument14 = getelementptr inbounds %struct.Application, %struct.Application* %17, i32 0, i32 1
  %18 = load %struct.AstNode*, %struct.AstNode** %argument14, align 8
  store %struct.AstNode* %18, %struct.AstNode** %argument, align 8
  %19 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %20 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  %call15 = call %struct.AstNode* @reduce_ast(%struct.HashTable* noundef %19, %struct.AstNode* noundef %20)
  %21 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node16 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %21, i32 0, i32 1
  %application17 = bitcast %union.AstNodeUnion* %node16 to %struct.Application**
  %22 = load %struct.Application*, %struct.Application** %application17, align 8
  %function18 = getelementptr inbounds %struct.Application, %struct.Application* %22, i32 0, i32 0
  store %struct.AstNode* %call15, %struct.AstNode** %function18, align 8
  %23 = load i32, i32* @reduction_order, align 4
  %cmp19 = icmp eq i32 %23, 0
  br i1 %cmp19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.then9
  %24 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %25 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  %call21 = call %struct.AstNode* @reduce_ast(%struct.HashTable* noundef %24, %struct.AstNode* noundef %25)
  %26 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node22 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %26, i32 0, i32 1
  %application23 = bitcast %union.AstNodeUnion* %node22 to %struct.Application**
  %27 = load %struct.Application*, %struct.Application** %application23, align 8
  %argument24 = getelementptr inbounds %struct.Application, %struct.Application* %27, i32 0, i32 1
  store %struct.AstNode* %call21, %struct.AstNode** %argument24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then9
  %28 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node26 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %28, i32 0, i32 1
  %application27 = bitcast %union.AstNodeUnion* %node26 to %struct.Application**
  %29 = load %struct.Application*, %struct.Application** %application27, align 8
  %function28 = getelementptr inbounds %struct.Application, %struct.Application* %29, i32 0, i32 0
  %30 = load %struct.AstNode*, %struct.AstNode** %function28, align 8
  %type29 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %30, i32 0, i32 0
  %31 = load i32, i32* %type29, align 8
  %cmp30 = icmp eq i32 %31, 0
  br i1 %cmp30, label %if.then31, label %if.end51

if.then31:                                        ; preds = %if.end25
  %32 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node32 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %32, i32 0, i32 1
  %application33 = bitcast %union.AstNodeUnion* %node32 to %struct.Application**
  %33 = load %struct.Application*, %struct.Application** %application33, align 8
  %function34 = getelementptr inbounds %struct.Application, %struct.Application* %33, i32 0, i32 0
  %34 = load %struct.AstNode*, %struct.AstNode** %function34, align 8
  %node35 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %34, i32 0, i32 1
  %lambda_expr36 = bitcast %union.AstNodeUnion* %node35 to %struct.LambdaExpression**
  %35 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr36, align 8
  %parameter = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %35, i32 0, i32 0
  %36 = load i8*, i8** %parameter, align 8
  store i8* %36, i8** %param, align 8
  %37 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node37 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %37, i32 0, i32 1
  %application38 = bitcast %union.AstNodeUnion* %node37 to %struct.Application**
  %38 = load %struct.Application*, %struct.Application** %application38, align 8
  %function39 = getelementptr inbounds %struct.Application, %struct.Application* %38, i32 0, i32 0
  %39 = load %struct.AstNode*, %struct.AstNode** %function39, align 8
  %node40 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %39, i32 0, i32 1
  %lambda_expr41 = bitcast %union.AstNodeUnion* %node40 to %struct.LambdaExpression**
  %40 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr41, align 8
  %body42 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %40, i32 0, i32 2
  %41 = load %struct.AstNode*, %struct.AstNode** %body42, align 8
  %42 = load i8*, i8** %param, align 8
  %43 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node43 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %43, i32 0, i32 1
  %application44 = bitcast %union.AstNodeUnion* %node43 to %struct.Application**
  %44 = load %struct.Application*, %struct.Application** %application44, align 8
  %argument45 = getelementptr inbounds %struct.Application, %struct.Application* %44, i32 0, i32 1
  %45 = load %struct.AstNode*, %struct.AstNode** %argument45, align 8
  %call46 = call %struct.AstNode* @substitute(%struct.AstNode* noundef %41, i8* noundef %42, %struct.AstNode* noundef %45)
  store %struct.AstNode* %call46, %struct.AstNode** %reduced, align 8
  %46 = load i8*, i8** %param, align 8
  call void (i8*, ...) @print_verbose(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.100, i64 0, i64 0), i8* noundef %46)
  %47 = load %struct.AstNode*, %struct.AstNode** %reduced, align 8
  call void @print_ast_verbose(%struct.AstNode* noundef %47)
  %48 = load i32, i32* @reduction_order, align 4
  %cmp47 = icmp eq i32 %48, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then31
  %49 = load %struct.AstNode*, %struct.AstNode** %reduced, align 8
  store %struct.AstNode* %49, %struct.AstNode** %retval, align 8
  br label %return

if.end49:                                         ; preds = %if.then31
  %50 = load %struct.HashTable*, %struct.HashTable** %table.addr, align 8
  %51 = load %struct.AstNode*, %struct.AstNode** %reduced, align 8
  %call50 = call %struct.AstNode* @reduce_ast(%struct.HashTable* noundef %50, %struct.AstNode* noundef %51)
  store %struct.AstNode* %call50, %struct.AstNode** %retval, align 8
  br label %return

if.end51:                                         ; preds = %if.end25
  %52 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  store %struct.AstNode* %52, %struct.AstNode** %retval, align 8
  br label %return

if.end52:                                         ; preds = %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  %53 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  store %struct.AstNode* %53, %struct.AstNode** %retval, align 8
  br label %return

return:                                           ; preds = %if.end53, %if.end51, %if.end49, %if.then48, %if.end
  %54 = load %struct.AstNode*, %struct.AstNode** %retval, align 8
  ret %struct.AstNode* %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @substitute(%struct.AstNode* noundef %expression, i8* noundef %variable, %struct.AstNode* noundef %replacement) #0 {
entry:
  %retval = alloca %struct.AstNode*, align 8
  %expression.addr = alloca %struct.AstNode*, align 8
  %variable.addr = alloca i8*, align 8
  %replacement.addr = alloca %struct.AstNode*, align 8
  store %struct.AstNode* %expression, %struct.AstNode** %expression.addr, align 8
  store i8* %variable, i8** %variable.addr, align 8
  store %struct.AstNode* %replacement, %struct.AstNode** %replacement.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %2, i32 0, i32 1
  %variable1 = bitcast %union.AstNodeUnion* %node to %struct.Variable**
  %3 = load %struct.Variable*, %struct.Variable** %variable1, align 8
  %name = getelementptr inbounds %struct.Variable, %struct.Variable* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %5 = load i8*, i8** %variable.addr, align 8
  %call = call i32 @strcmp(i8* noundef %4, i8* noundef %5) #11
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load %struct.AstNode*, %struct.AstNode** %replacement.addr, align 8
  %call4 = call %struct.AstNode* @deepcopy(%struct.AstNode* noundef %6)
  store %struct.AstNode* %call4, %struct.AstNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  store %struct.AstNode* %7, %struct.AstNode** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %type5 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %8, i32 0, i32 0
  %9 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then7, label %if.else21

if.then7:                                         ; preds = %if.else
  %10 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node8 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %10, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node8 to %struct.LambdaExpression**
  %11 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %body = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %11, i32 0, i32 2
  %12 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  %13 = load i8*, i8** %variable.addr, align 8
  %14 = load %struct.AstNode*, %struct.AstNode** %replacement.addr, align 8
  %call9 = call %struct.AstNode* @substitute(%struct.AstNode* noundef %12, i8* noundef %13, %struct.AstNode* noundef %14)
  %15 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node10 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %15, i32 0, i32 1
  %lambda_expr11 = bitcast %union.AstNodeUnion* %node10 to %struct.LambdaExpression**
  %16 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr11, align 8
  %body12 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %16, i32 0, i32 2
  store %struct.AstNode* %call9, %struct.AstNode** %body12, align 8
  %17 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node13 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %17, i32 0, i32 1
  %lambda_expr14 = bitcast %union.AstNodeUnion* %node13 to %struct.LambdaExpression**
  %18 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr14, align 8
  %parameter = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %18, i32 0, i32 0
  %19 = load i8*, i8** %parameter, align 8
  %20 = load i8*, i8** %variable.addr, align 8
  %cmp15 = icmp ne i8* %19, %20
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then7
  %21 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  store %struct.AstNode* %21, %struct.AstNode** %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.then7
  %22 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node18 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %22, i32 0, i32 1
  %lambda_expr19 = bitcast %union.AstNodeUnion* %node18 to %struct.LambdaExpression**
  %23 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr19, align 8
  %body20 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %23, i32 0, i32 2
  %24 = load %struct.AstNode*, %struct.AstNode** %body20, align 8
  store %struct.AstNode* %24, %struct.AstNode** %retval, align 8
  br label %return

if.else21:                                        ; preds = %if.else
  %25 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %type22 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %25, i32 0, i32 0
  %26 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %26, 1
  br i1 %cmp23, label %if.then24, label %if.end36

if.then24:                                        ; preds = %if.else21
  %27 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node25 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %27, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node25 to %struct.Application**
  %28 = load %struct.Application*, %struct.Application** %application, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %28, i32 0, i32 0
  %29 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  %30 = load i8*, i8** %variable.addr, align 8
  %31 = load %struct.AstNode*, %struct.AstNode** %replacement.addr, align 8
  %call26 = call %struct.AstNode* @substitute(%struct.AstNode* noundef %29, i8* noundef %30, %struct.AstNode* noundef %31)
  %32 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node27 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %32, i32 0, i32 1
  %application28 = bitcast %union.AstNodeUnion* %node27 to %struct.Application**
  %33 = load %struct.Application*, %struct.Application** %application28, align 8
  %function29 = getelementptr inbounds %struct.Application, %struct.Application* %33, i32 0, i32 0
  store %struct.AstNode* %call26, %struct.AstNode** %function29, align 8
  %34 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node30 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %34, i32 0, i32 1
  %application31 = bitcast %union.AstNodeUnion* %node30 to %struct.Application**
  %35 = load %struct.Application*, %struct.Application** %application31, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %35, i32 0, i32 1
  %36 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  %37 = load i8*, i8** %variable.addr, align 8
  %38 = load %struct.AstNode*, %struct.AstNode** %replacement.addr, align 8
  %call32 = call %struct.AstNode* @substitute(%struct.AstNode* noundef %36, i8* noundef %37, %struct.AstNode* noundef %38)
  %39 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  %node33 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %39, i32 0, i32 1
  %application34 = bitcast %union.AstNodeUnion* %node33 to %struct.Application**
  %40 = load %struct.Application*, %struct.Application** %application34, align 8
  %argument35 = getelementptr inbounds %struct.Application, %struct.Application* %40, i32 0, i32 1
  store %struct.AstNode* %call32, %struct.AstNode** %argument35, align 8
  %41 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  store %struct.AstNode* %41, %struct.AstNode** %retval, align 8
  br label %return

if.end36:                                         ; preds = %if.else21
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  br label %if.end38

if.end38:                                         ; preds = %if.end37
  %42 = load %struct.AstNode*, %struct.AstNode** %expression.addr, align 8
  store %struct.AstNode* %42, %struct.AstNode** %retval, align 8
  br label %return

return:                                           ; preds = %if.end38, %if.then24, %if.end17, %if.then16, %if.end, %if.then3
  %43 = load %struct.AstNode*, %struct.AstNode** %retval, align 8
  ret %struct.AstNode* %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @deepcopy(%struct.AstNode* noundef %n) #0 {
entry:
  %retval = alloca %struct.AstNode*, align 8
  %n.addr = alloca %struct.AstNode*, align 8
  store %struct.AstNode* %n, %struct.AstNode** %n.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %2, i32 0, i32 1
  %variable = bitcast %union.AstNodeUnion* %node to %struct.Variable**
  %3 = load %struct.Variable*, %struct.Variable** %variable, align 8
  %name = getelementptr inbounds %struct.Variable, %struct.Variable* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node1 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 1
  %variable2 = bitcast %union.AstNodeUnion* %node1 to %struct.Variable**
  %6 = load %struct.Variable*, %struct.Variable** %variable2, align 8
  %type3 = getelementptr inbounds %struct.Variable, %struct.Variable* %6, i32 0, i32 1
  %7 = load i8*, i8** %type3, align 8
  %call = call %struct.AstNode* @deepcopy_var(i8* noundef %4, i8* noundef %7)
  store %struct.AstNode* %call, %struct.AstNode** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type4 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %8, i32 0, i32 0
  %9 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.else14

if.then6:                                         ; preds = %if.else
  %10 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node7 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %10, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node7 to %struct.LambdaExpression**
  %11 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %parameter = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %11, i32 0, i32 0
  %12 = load i8*, i8** %parameter, align 8
  %13 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node8 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %13, i32 0, i32 1
  %lambda_expr9 = bitcast %union.AstNodeUnion* %node8 to %struct.LambdaExpression**
  %14 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr9, align 8
  %body = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %14, i32 0, i32 2
  %15 = load %struct.AstNode*, %struct.AstNode** %body, align 8
  %16 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node10 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %16, i32 0, i32 1
  %lambda_expr11 = bitcast %union.AstNodeUnion* %node10 to %struct.LambdaExpression**
  %17 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr11, align 8
  %type12 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %17, i32 0, i32 1
  %18 = load i8*, i8** %type12, align 8
  %call13 = call %struct.AstNode* @deepcopy_lambda_expr(i8* noundef %12, %struct.AstNode* noundef %15, i8* noundef %18)
  store %struct.AstNode* %call13, %struct.AstNode** %retval, align 8
  br label %return

if.else14:                                        ; preds = %if.else
  %19 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %type15 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %19, i32 0, i32 0
  %20 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %20, 1
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else14
  %21 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node18 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %21, i32 0, i32 1
  %application = bitcast %union.AstNodeUnion* %node18 to %struct.Application**
  %22 = load %struct.Application*, %struct.Application** %application, align 8
  %function = getelementptr inbounds %struct.Application, %struct.Application* %22, i32 0, i32 0
  %23 = load %struct.AstNode*, %struct.AstNode** %function, align 8
  %24 = load %struct.AstNode*, %struct.AstNode** %n.addr, align 8
  %node19 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %24, i32 0, i32 1
  %application20 = bitcast %union.AstNodeUnion* %node19 to %struct.Application**
  %25 = load %struct.Application*, %struct.Application** %application20, align 8
  %argument = getelementptr inbounds %struct.Application, %struct.Application* %25, i32 0, i32 1
  %26 = load %struct.AstNode*, %struct.AstNode** %argument, align 8
  %call21 = call %struct.AstNode* @deepcopy_application(%struct.AstNode* noundef %23, %struct.AstNode* noundef %26)
  store %struct.AstNode* %call21, %struct.AstNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else14
  br label %if.end22

if.end22:                                         ; preds = %if.end
  br label %if.end23

if.end23:                                         ; preds = %if.end22
  store %struct.AstNode* null, %struct.AstNode** %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then17, %if.then6, %if.then
  %27 = load %struct.AstNode*, %struct.AstNode** %retval, align 8
  ret %struct.AstNode* %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @deepcopy_var(i8* noundef %name, i8* noundef %type) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %variable = alloca %struct.AstNode*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #9
  %0 = bitcast i8* %call to %struct.AstNode*
  store %struct.AstNode* %0, %struct.AstNode** %variable, align 8
  %1 = load %struct.AstNode*, %struct.AstNode** %variable, align 8
  %type1 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %1, i32 0, i32 0
  store i32 2, i32* %type1, align 8
  %call2 = call noalias i8* @malloc(i64 noundef 16) #9
  %2 = bitcast i8* %call2 to %struct.Variable*
  %3 = load %struct.AstNode*, %struct.AstNode** %variable, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 1
  %variable3 = bitcast %union.AstNodeUnion* %node to %struct.Variable**
  store %struct.Variable* %2, %struct.Variable** %variable3, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load %struct.AstNode*, %struct.AstNode** %variable, align 8
  %node4 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 1
  %variable5 = bitcast %union.AstNodeUnion* %node4 to %struct.Variable**
  %6 = load %struct.Variable*, %struct.Variable** %variable5, align 8
  %name6 = getelementptr inbounds %struct.Variable, %struct.Variable* %6, i32 0, i32 0
  store i8* %4, i8** %name6, align 8
  %7 = load i8*, i8** %type.addr, align 8
  %8 = load %struct.AstNode*, %struct.AstNode** %variable, align 8
  %node7 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %8, i32 0, i32 1
  %variable8 = bitcast %union.AstNodeUnion* %node7 to %struct.Variable**
  %9 = load %struct.Variable*, %struct.Variable** %variable8, align 8
  %type9 = getelementptr inbounds %struct.Variable, %struct.Variable* %9, i32 0, i32 1
  store i8* %7, i8** %type9, align 8
  %10 = load %struct.AstNode*, %struct.AstNode** %variable, align 8
  ret %struct.AstNode* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @deepcopy_lambda_expr(i8* noundef %parameter, %struct.AstNode* noundef %body, i8* noundef %type) #0 {
entry:
  %parameter.addr = alloca i8*, align 8
  %body.addr = alloca %struct.AstNode*, align 8
  %type.addr = alloca i8*, align 8
  %lambda = alloca %struct.AstNode*, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  store %struct.AstNode* %body, %struct.AstNode** %body.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #9
  %0 = bitcast i8* %call to %struct.AstNode*
  store %struct.AstNode* %0, %struct.AstNode** %lambda, align 8
  %1 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %type1 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %1, i32 0, i32 0
  store i32 0, i32* %type1, align 8
  %call2 = call noalias i8* @malloc(i64 noundef 24) #9
  %2 = bitcast i8* %call2 to %struct.LambdaExpression*
  %3 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node to %struct.LambdaExpression**
  store %struct.LambdaExpression* %2, %struct.LambdaExpression** %lambda_expr, align 8
  %4 = load i8*, i8** %parameter.addr, align 8
  %5 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %node3 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 1
  %lambda_expr4 = bitcast %union.AstNodeUnion* %node3 to %struct.LambdaExpression**
  %6 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr4, align 8
  %parameter5 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %6, i32 0, i32 0
  store i8* %4, i8** %parameter5, align 8
  %7 = load i8*, i8** %type.addr, align 8
  %8 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %node6 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %8, i32 0, i32 1
  %lambda_expr7 = bitcast %union.AstNodeUnion* %node6 to %struct.LambdaExpression**
  %9 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr7, align 8
  %type8 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %9, i32 0, i32 1
  store i8* %7, i8** %type8, align 8
  %10 = load %struct.AstNode*, %struct.AstNode** %body.addr, align 8
  %call9 = call %struct.AstNode* @deepcopy(%struct.AstNode* noundef %10)
  %11 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  %node10 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %11, i32 0, i32 1
  %lambda_expr11 = bitcast %union.AstNodeUnion* %node10 to %struct.LambdaExpression**
  %12 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr11, align 8
  %body12 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %12, i32 0, i32 2
  store %struct.AstNode* %call9, %struct.AstNode** %body12, align 8
  %13 = load %struct.AstNode*, %struct.AstNode** %lambda, align 8
  ret %struct.AstNode* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AstNode* @deepcopy_application(%struct.AstNode* noundef %function, %struct.AstNode* noundef %argument) #0 {
entry:
  %function.addr = alloca %struct.AstNode*, align 8
  %argument.addr = alloca %struct.AstNode*, align 8
  %application = alloca %struct.AstNode*, align 8
  store %struct.AstNode* %function, %struct.AstNode** %function.addr, align 8
  store %struct.AstNode* %argument, %struct.AstNode** %argument.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #9
  %0 = bitcast i8* %call to %struct.AstNode*
  store %struct.AstNode* %0, %struct.AstNode** %application, align 8
  %1 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %1, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 16) #9
  %2 = bitcast i8* %call1 to %struct.Application*
  %3 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %3, i32 0, i32 1
  %application2 = bitcast %union.AstNodeUnion* %node to %struct.Application**
  store %struct.Application* %2, %struct.Application** %application2, align 8
  %4 = load %struct.AstNode*, %struct.AstNode** %function.addr, align 8
  %call3 = call %struct.AstNode* @deepcopy(%struct.AstNode* noundef %4)
  %5 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  %node4 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 1
  %application5 = bitcast %union.AstNodeUnion* %node4 to %struct.Application**
  %6 = load %struct.Application*, %struct.Application** %application5, align 8
  %function6 = getelementptr inbounds %struct.Application, %struct.Application* %6, i32 0, i32 0
  store %struct.AstNode* %call3, %struct.AstNode** %function6, align 8
  %7 = load %struct.AstNode*, %struct.AstNode** %argument.addr, align 8
  %call7 = call %struct.AstNode* @deepcopy(%struct.AstNode* noundef %7)
  %8 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  %node8 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %8, i32 0, i32 1
  %application9 = bitcast %union.AstNodeUnion* %node8 to %struct.Application**
  %9 = load %struct.Application*, %struct.Application** %application9, align 8
  %argument10 = getelementptr inbounds %struct.Application, %struct.Application* %9, i32 0, i32 1
  store %struct.AstNode* %call7, %struct.AstNode** %argument10, align 8
  %10 = load %struct.AstNode*, %struct.AstNode** %application, align 8
  ret %struct.AstNode* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_(i1 noundef zeroext %expr, i8* noundef %error_msg) #0 {
entry:
  %expr.addr = alloca i8, align 1
  %error_msg.addr = alloca i8*, align 8
  %frombool = zext i1 %expr to i8
  store i8 %frombool, i8* %expr.addr, align 1
  store i8* %error_msg, i8** %error_msg.addr, align 8
  %0 = load i8, i8* %expr.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %error_msg.addr, align 8
  call void @error(i8* noundef %1, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.101, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.assert_, i64 0, i64 0))
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_type_from_expr(%struct.AstNode* noundef %expr) #0 {
entry:
  %retval = alloca i8*, align 8
  %expr.addr = alloca %struct.AstNode*, align 8
  store %struct.AstNode* %expr, %struct.AstNode** %expr.addr, align 8
  %0 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %type = getelementptr inbounds %struct.AstNode, %struct.AstNode* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %node = getelementptr inbounds %struct.AstNode, %struct.AstNode* %2, i32 0, i32 1
  %variable = bitcast %union.AstNodeUnion* %node to %struct.Variable**
  %3 = load %struct.Variable*, %struct.Variable** %variable, align 8
  %type1 = getelementptr inbounds %struct.Variable, %struct.Variable* %3, i32 0, i32 1
  %4 = load i8*, i8** %type1, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %type2 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %5, i32 0, i32 0
  %6 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %7 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %node5 = getelementptr inbounds %struct.AstNode, %struct.AstNode* %7, i32 0, i32 1
  %lambda_expr = bitcast %union.AstNodeUnion* %node5 to %struct.LambdaExpression**
  %8 = load %struct.LambdaExpression*, %struct.LambdaExpression** %lambda_expr, align 8
  %type6 = getelementptr inbounds %struct.LambdaExpression, %struct.LambdaExpression* %8, i32 0, i32 1
  %9 = load i8*, i8** %type6, align 8
  store i8* %9, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %10 = load i8*, i8** %retval, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Type* @create_type(i8* noundef %type, i8* noundef %return_type, %struct.AstNode* noundef %expr) #0 {
entry:
  %type.addr = alloca i8*, align 8
  %return_type.addr = alloca i8*, align 8
  %expr.addr = alloca %struct.AstNode*, align 8
  %t = alloca %struct.Type*, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %return_type, i8** %return_type.addr, align 8
  store %struct.AstNode* %expr, %struct.AstNode** %expr.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #9
  %0 = bitcast i8* %call to %struct.Type*
  store %struct.Type* %0, %struct.Type** %t, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.Type*, %struct.Type** %t, align 8
  %cmp = icmp eq %struct.Type* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.101, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.create_type, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i8*, i8** %return_type.addr, align 8
  %4 = load %struct.Type*, %struct.Type** %t, align 8
  %return_type2 = getelementptr inbounds %struct.Type, %struct.Type* %4, i32 0, i32 2
  store i8* %3, i8** %return_type2, align 8
  %5 = load i8*, i8** %type.addr, align 8
  %6 = load %struct.Type*, %struct.Type** %t, align 8
  %type3 = getelementptr inbounds %struct.Type, %struct.Type* %6, i32 0, i32 1
  store i8* %5, i8** %type3, align 8
  %7 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %8 = load %struct.Type*, %struct.Type** %t, align 8
  %expr4 = getelementptr inbounds %struct.Type, %struct.Type* %8, i32 0, i32 0
  store %struct.AstNode* %7, %struct.AstNode** %expr4, align 8
  %9 = load %struct.Type*, %struct.Type** %t, align 8
  ret %struct.Type* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_to_env(%struct.TypeEnv** noundef %env, %struct.Type* noundef %type) #0 {
entry:
  %env.addr = alloca %struct.TypeEnv**, align 8
  %type.addr = alloca %struct.Type*, align 8
  %new_env = alloca %struct.TypeEnv*, align 8
  store %struct.TypeEnv** %env, %struct.TypeEnv*** %env.addr, align 8
  store %struct.Type* %type, %struct.Type** %type.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #9
  %0 = bitcast i8* %call to %struct.TypeEnv*
  store %struct.TypeEnv* %0, %struct.TypeEnv** %new_env, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.TypeEnv*, %struct.TypeEnv** %new_env, align 8
  %cmp = icmp eq %struct.TypeEnv* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.101, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.add_to_env, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.Type*, %struct.Type** %type.addr, align 8
  %4 = load %struct.TypeEnv*, %struct.TypeEnv** %new_env, align 8
  %type2 = getelementptr inbounds %struct.TypeEnv, %struct.TypeEnv* %4, i32 0, i32 0
  store %struct.Type* %3, %struct.Type** %type2, align 8
  %5 = load %struct.TypeEnv**, %struct.TypeEnv*** %env.addr, align 8
  %6 = load %struct.TypeEnv*, %struct.TypeEnv** %5, align 8
  %7 = load %struct.TypeEnv*, %struct.TypeEnv** %new_env, align 8
  %next = getelementptr inbounds %struct.TypeEnv, %struct.TypeEnv* %7, i32 0, i32 1
  store %struct.TypeEnv* %6, %struct.TypeEnv** %next, align 8
  %8 = load %struct.TypeEnv*, %struct.TypeEnv** %new_env, align 8
  %9 = load %struct.TypeEnv**, %struct.TypeEnv*** %env.addr, align 8
  store %struct.TypeEnv* %8, %struct.TypeEnv** %9, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @type_equal(%struct.Type* noundef %a, %struct.Type* noundef %b) #0 {
entry:
  %retval = alloca i1, align 1
  %a.addr = alloca %struct.Type*, align 8
  %b.addr = alloca %struct.Type*, align 8
  %type_eql = alloca i8, align 1
  %return_eql = alloca i8, align 1
  store %struct.Type* %a, %struct.Type** %a.addr, align 8
  store %struct.Type* %b, %struct.Type** %b.addr, align 8
  %0 = load %struct.Type*, %struct.Type** %a.addr, align 8
  %cmp = icmp eq %struct.Type* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.Type*, %struct.Type** %b.addr, align 8
  %cmp1 = icmp eq %struct.Type* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.Type*, %struct.Type** %a.addr, align 8
  %type = getelementptr inbounds %struct.Type, %struct.Type* %2, i32 0, i32 1
  %3 = load i8*, i8** %type, align 8
  %4 = load %struct.Type*, %struct.Type** %b.addr, align 8
  %type2 = getelementptr inbounds %struct.Type, %struct.Type* %4, i32 0, i32 1
  %5 = load i8*, i8** %type2, align 8
  %call = call i32 @strcmp(i8* noundef %3, i8* noundef %5) #11
  %cmp3 = icmp eq i32 %call, 0
  %frombool = zext i1 %cmp3 to i8
  store i8 %frombool, i8* %type_eql, align 1
  store i8 0, i8* %return_eql, align 1
  %6 = load %struct.Type*, %struct.Type** %a.addr, align 8
  %return_type = getelementptr inbounds %struct.Type, %struct.Type* %6, i32 0, i32 2
  %7 = load i8*, i8** %return_type, align 8
  %cmp4 = icmp eq i8* %7, null
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.Type*, %struct.Type** %b.addr, align 8
  %return_type5 = getelementptr inbounds %struct.Type, %struct.Type* %8, i32 0, i32 2
  %9 = load i8*, i8** %return_type5, align 8
  %cmp6 = icmp eq i8* %9, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  store i8 1, i8* %return_eql, align 1
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true, %if.end
  %10 = load %struct.Type*, %struct.Type** %a.addr, align 8
  %return_type8 = getelementptr inbounds %struct.Type, %struct.Type* %10, i32 0, i32 2
  %11 = load i8*, i8** %return_type8, align 8
  %cmp9 = icmp eq i8* %11, null
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.else
  %12 = load %struct.Type*, %struct.Type** %b.addr, align 8
  %return_type11 = getelementptr inbounds %struct.Type, %struct.Type* %12, i32 0, i32 2
  %13 = load i8*, i8** %return_type11, align 8
  %cmp12 = icmp eq i8* %13, null
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %lor.lhs.false10, %if.else
  store i8 0, i8* %return_eql, align 1
  br label %if.end20

if.else14:                                        ; preds = %lor.lhs.false10
  %14 = load %struct.Type*, %struct.Type** %a.addr, align 8
  %return_type15 = getelementptr inbounds %struct.Type, %struct.Type* %14, i32 0, i32 2
  %15 = load i8*, i8** %return_type15, align 8
  %16 = load %struct.Type*, %struct.Type** %b.addr, align 8
  %return_type16 = getelementptr inbounds %struct.Type, %struct.Type* %16, i32 0, i32 2
  %17 = load i8*, i8** %return_type16, align 8
  %call17 = call i32 @strcmp(i8* noundef %15, i8* noundef %17) #11
  %cmp18 = icmp eq i32 %call17, 0
  %frombool19 = zext i1 %cmp18 to i8
  store i8 %frombool19, i8* %return_eql, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %if.then13
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then7
  %18 = load i8, i8* %type_eql, align 1
  %tobool = trunc i8 %18 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end21
  %19 = load i8, i8* %return_eql, align 1
  %tobool22 = trunc i8 %19 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end21
  %20 = phi i1 [ false, %if.end21 ], [ %tobool22, %land.rhs ]
  store i1 %20, i1* %retval, align 1
  br label %return

return:                                           ; preds = %land.end, %if.then
  %21 = load i1, i1* %retval, align 1
  ret i1 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p_print_type(%struct.Type* noundef %t) #0 {
entry:
  %t.addr = alloca %struct.Type*, align 8
  store %struct.Type* %t, %struct.Type** %t.addr, align 8
  %0 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %cmp = icmp eq %struct.Type* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i64 0, i64 0))
  br label %if.end10

if.end:                                           ; preds = %entry
  %1 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %type = getelementptr inbounds %struct.Type, %struct.Type* %1, i32 0, i32 1
  %2 = load i8*, i8** %type, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %3 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %type3 = getelementptr inbounds %struct.Type, %struct.Type* %3, i32 0, i32 1
  %4 = load i8*, i8** %type3, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i64 0, i64 0), i8* noundef %4)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %return_type = getelementptr inbounds %struct.Type, %struct.Type* %5, i32 0, i32 2
  %6 = load i8*, i8** %return_type, align 8
  %cmp6 = icmp ne i8* %6, null
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  %7 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %return_type8 = getelementptr inbounds %struct.Type, %struct.Type* %7, i32 0, i32 2
  %8 = load i8*, i8** %return_type8, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.105, i64 0, i64 0), i8* noundef %8)
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then7, %if.end5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Type* @parse_function_type(i8* noundef %type) #0 {
entry:
  %type.addr = alloca i8*, align 8
  %t = alloca %struct.Type*, align 8
  store i8* %type, i8** %type.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #9
  %0 = bitcast i8* %call to %struct.Type*
  store %struct.Type* %0, %struct.Type** %t, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.Type*, %struct.Type** %t, align 8
  %cmp = icmp eq %struct.Type* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.101, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.parse_function_type, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.Type*, %struct.Type** %t, align 8
  %return_type = getelementptr inbounds %struct.Type, %struct.Type* %3, i32 0, i32 2
  store i8* null, i8** %return_type, align 8
  %4 = load i8*, i8** %type.addr, align 8
  %5 = load %struct.Type*, %struct.Type** %t, align 8
  %type2 = getelementptr inbounds %struct.Type, %struct.Type* %5, i32 0, i32 1
  store i8* %4, i8** %type2, align 8
  %6 = load %struct.Type*, %struct.Type** %t, align 8
  %expr = getelementptr inbounds %struct.Type, %struct.Type* %6, i32 0, i32 0
  store %struct.AstNode* null, %struct.AstNode** %expr, align 8
  %7 = load %struct.Type*, %struct.Type** %t, align 8
  ret %struct.Type* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @expr_type_equal(%struct.Type* noundef %t, %struct.AstNode* noundef %expr) #0 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca %struct.Type*, align 8
  %expr.addr = alloca %struct.AstNode*, align 8
  %type = alloca i8*, align 8
  %parsed_type = alloca %struct.Type*, align 8
  store %struct.Type* %t, %struct.Type** %t.addr, align 8
  store %struct.AstNode* %expr, %struct.AstNode** %expr.addr, align 8
  %0 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %expr1 = getelementptr inbounds %struct.Type, %struct.Type* %0, i32 0, i32 0
  %1 = load %struct.AstNode*, %struct.AstNode** %expr1, align 8
  %2 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %cmp = icmp ne %struct.AstNode* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %call = call i8* @get_type_from_expr(%struct.AstNode* noundef %3)
  store i8* %call, i8** %type, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load i8*, i8** %type, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.101, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.expr_type_equal, i64 0, i64 0))
  call void @abort() #10
  unreachable

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  %6 = load i8*, i8** %type, align 8
  %call6 = call %struct.Type* @parse_function_type(i8* noundef %6)
  store %struct.Type* %call6, %struct.Type** %parsed_type, align 8
  %7 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %type7 = getelementptr inbounds %struct.Type, %struct.Type* %7, i32 0, i32 1
  %8 = load i8*, i8** %type7, align 8
  %9 = load %struct.Type*, %struct.Type** %parsed_type, align 8
  %type8 = getelementptr inbounds %struct.Type, %struct.Type* %9, i32 0, i32 1
  %10 = load i8*, i8** %type8, align 8
  %call9 = call i32 @strcmp(i8* noundef %8, i8* noundef %10) #11
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end12:                                         ; preds = %do.end
  %11 = load %struct.Type*, %struct.Type** %parsed_type, align 8
  %return_type = getelementptr inbounds %struct.Type, %struct.Type* %11, i32 0, i32 2
  %12 = load i8*, i8** %return_type, align 8
  %cmp13 = icmp eq i8* %12, null
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end12
  %13 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %return_type15 = getelementptr inbounds %struct.Type, %struct.Type* %13, i32 0, i32 2
  %14 = load i8*, i8** %return_type15, align 8
  %cmp16 = icmp eq i8* %14, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  store i1 true, i1* %retval, align 1
  br label %return

if.end18:                                         ; preds = %if.then14
  store i1 false, i1* %retval, align 1
  br label %return

if.end19:                                         ; preds = %if.end12
  %15 = load %struct.Type*, %struct.Type** %t.addr, align 8
  %return_type20 = getelementptr inbounds %struct.Type, %struct.Type* %15, i32 0, i32 2
  %16 = load i8*, i8** %return_type20, align 8
  %17 = load %struct.Type*, %struct.Type** %parsed_type, align 8
  %return_type21 = getelementptr inbounds %struct.Type, %struct.Type* %17, i32 0, i32 2
  %18 = load i8*, i8** %return_type21, align 8
  %call22 = call i32 @strcmp(i8* noundef %16, i8* noundef %18) #11
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  store i1 false, i1* %retval, align 1
  br label %return

if.end25:                                         ; preds = %if.end19
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end25, %if.then24, %if.end18, %if.then17, %if.then11, %if.then
  %19 = load i1, i1* %retval, align 1
  ret i1 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Type* @lookup_type(%struct.TypeEnv* noundef %env, %struct.AstNode* noundef %expr) #0 {
entry:
  %retval = alloca %struct.Type*, align 8
  %env.addr = alloca %struct.TypeEnv*, align 8
  %expr.addr = alloca %struct.AstNode*, align 8
  store %struct.TypeEnv* %env, %struct.TypeEnv** %env.addr, align 8
  store %struct.AstNode* %expr, %struct.AstNode** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.TypeEnv*, %struct.TypeEnv** %env.addr, align 8
  %cmp = icmp ne %struct.TypeEnv* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.TypeEnv*, %struct.TypeEnv** %env.addr, align 8
  %type = getelementptr inbounds %struct.TypeEnv, %struct.TypeEnv* %1, i32 0, i32 0
  %2 = load %struct.Type*, %struct.Type** %type, align 8
  %3 = load %struct.AstNode*, %struct.AstNode** %expr.addr, align 8
  %call = call zeroext i1 @expr_type_equal(%struct.Type* noundef %2, %struct.AstNode* noundef %3)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %struct.TypeEnv*, %struct.TypeEnv** %env.addr, align 8
  %type1 = getelementptr inbounds %struct.TypeEnv, %struct.TypeEnv* %4, i32 0, i32 0
  %5 = load %struct.Type*, %struct.Type** %type1, align 8
  store %struct.Type* %5, %struct.Type** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct.TypeEnv*, %struct.TypeEnv** %env.addr, align 8
  %next = getelementptr inbounds %struct.TypeEnv, %struct.TypeEnv* %6, i32 0, i32 1
  %7 = load %struct.TypeEnv*, %struct.TypeEnv** %next, align 8
  store %struct.TypeEnv* %7, %struct.TypeEnv** %env.addr, align 8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  store %struct.Type* null, %struct.Type** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load %struct.Type*, %struct.Type** %retval, align 8
  ret %struct.Type* %8
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
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
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
